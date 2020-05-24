const maxApi = require("max-api");
var fs = require('fs');
var path = require("path");
const { v1: uuidv1 } = require('uuid');

// data from the input manager
var active_tracks = [];
var active_tracks_sizes = [];

// data from the mubu object itself
var mubu_tracks = [];
var mubu_tracks_sizes = [];
var labels = [];
var labels_set = [];
var buffers = [];

// helpers
var playing = false;
var state = "";

// data folder location
var data_folder = "./data/";

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
	//maxApi.post(msg);
}

function not_empty(e) {
	
	return e!="empty";
}

const handlers = {
	
	"read_append": (abs_path) => {
		
		let buffer_name = path.basename(abs_path).split("_")[0];
		p("Buffer name : " + buffer_name);
		
		let label_name = buffer_name.split("#")[0].replace("-",":");
		
		let extension = path.extname(abs_path);
		p("extension : " + extension);
		
		let track_name = path.basename(path.dirname(abs_path))
		p("track : " + track_name);
		
		if(extension == ".txt") {
		}
		
		if(extension == ".mubu") {
			// TODO: revisit later. So far, we can only read from the configuration folder
			
			if(track_name == "whole_buffer") {
				
				o(["to_imubu", "readappend", abs_path]);

			} else {

				o(["to_imubu", "readappend", abs_path, "@buffername", buffer_name]);
				// todo: fix buffer
			}
		}
	},
	
	"buffers": (...arg_list) => { // can be called after getbuffers...
		
		if(state == "updating_buffers") { // update_buffers_and_tracks function with getbuffers
			
			buffers = [];
			labels = [];
			
			for(var i = 0; i<arg_list.length; i++) {
				
				buffers.push(arg_list[i]);
				labels.push(arg_list[i].split(" ")[0]);
				// p("label : " + arg_list[i].split(" ")[0]);
			}
			
			o(["buffers_names", ...buffers]);
			update_labels_set();
			o(["labels_set", ...labels_set]);
			
			state = "buffers_updated";
			
		}
	},
	
	"tracks_sizes": (...sizes) => { // from input manager
		
		if(sizes != "" && sizes != []) {
			active_tracks_sizes = sizes;
		}
	},
	
	"track_names": (...names) => { // the names of active tracks (from the input manager, not gathered from the buffer directly) tht we use when we want to create buffers to train examples
		
		p("Received tracks");
		active_tracks = names.filter(not_empty);
		o(["to_mubu_play", "trackid", ...active_tracks]);
		
		if(active_tracks.length == active_track_sizes.length) { // if they have the same length, then we can add the tracks to the buffer if the buffer does not already have the track
			
			state = "creating_tracks";
			
			for(var i = 0; i<active_tracks.length; i++) {
					o(["to_imubu", "hastrack", active_tracks[i]]);
			}
			
		}
		else {
			
			p("Error: track names length and track sizes length are not equal...");
		}
		
	},
	
	"tracks": (...track_list) => { // this is the response from imubu that tells us what tracks there are already inside mubu
		
		state = "updating_tracks";
		mubu_tracks = [];
		mubu_tracks_sizes = [];
		
		for(var i = 0; i<track_list.length; i++) {
			
			mubu_tracks.push(track_list[i]);
			o(["to_imubu", "track", track_list[i], "getmatrixcols"]); // here we want to also update the tracks sizes
		}
	
	},
	
	"track": (...arg_list) => {
		
		if(arg_list.includes("matrixcols")) { // it is an answer to the track XX getmatrixcols
			
			let id = arg_list.indexOf("matrixcols");
			mubu_tracks_sizes[arg_list[0]-1] = arg_list[id+1];
			
			if(state == "updating_tracks" && arg_list[0] == mubu_tracks.length) { // we know that it is the last track size we are updating
				
				state = "finished"; 
				p("Buffer and track update finished");
				p(buffers.length + " buffers");
				p(mubu_tracks.length + " tracks");
			}
		}
	},
	
	"hastrack": (bool, name) => {
		
		if(active_tracks.includes(name) && state == "creating_tracks") { // when calling for track creation from input manager
		
			let size = active_tracks_sizes[active_tracks.indexOf(name)];
		
			let funct = "modifytrack";
			
			if(bool == 0) {

				funct = "addtrack";
			}
			
			o(["to_imubu", funct, name, "@maxsize", "5s", "@matrixcols", size, "@timetagged", "yes", "@info", "gui", "autobounds minmax, shape envelopebpf, interface multibpf, opacity 1, colormode rainbow, hidenotforemost 1"]);
		}
	},
	

	"train": () => {
		
		train();
	},
	
	"end": () => { // the end msg is triggered by mubu.play when it has finished playing, so that we now we can continue the training with the next buffer
		
		playing = false;
		// p("r end");
	},
	
	"start": () => { // the start command indicates that the mubu.play is active, so we have to wait for it to send "end"
		
		playing = true;
		// p("r start");
	},
  
	"save": () => {
		
		save();
	},
	
	[maxApi.MESSAGE_TYPES.ALL]: () => {
		
		// anything that was not handled comes here
		
	}
};

maxApi.addHandlers(handlers);

setup();

async function save() {
	
	await update_buffers_and_tracks();
		
	p("Saving buffers : " + buffers);
	p("Saving tracks : " + tracks);
	p("Saving labels : " + labels);
	
	/* First saving method. 
	+ Save each buffer for each track in a separate file
	- When loading in the mubu object, do not recover labels, names... automatically :(
	*/
	
	p("Attempt save (one file per buffer per track)");
	for(var i = 1; i<mubu_tracks.length+1; i++) {
		
		// create folder if does not exists
		let dir = data_folder + mubu_tracks[i-1] + "/";
		
		if (!fs.existsSync(dir)){
			fs.mkdirSync(dir);
		}
		  
		for(var j = 1; j<buffers.length+1; j++) {
			  
			p("Saving buffer " + j + " track " + i);
			o(["to_imubu", "bufferindex", j]); // We must change buffer first
			
			let filename = data_folder + mubu_tracks[i-1] + "/" + labels[j-1].replace(":","-") + "#" + j + "_" + uuidv1();
			
			o(["to_imubu", "writetrack", i, filename + ".mubu"]); // Then write the buffer to corresponding location
			o(["to_imubu", "writetrack", i, filename + ".txt"]); // we save the .txt file for conveniency
		}
	}	
	
	/* Second saving method. 
	+ Labels and names are recovered on loading
	- tracks are saved in the same file so it is not garantueed that the data is homogeneous (one buffer in the dataset can have empty data for one active track if not reloaded properly.
	*/
	
	// TODO: first we want to check that we are saving the right track configuration. Maybe someone has loaded files externally, updating the tracks in mubu, so the configuratino text may not be right
	
	let tracks_string = "configuration";
			
	for(var i = 0; i<mubu_tracks.length; i++) {

		tracks_string = tracks_string + "_#" + mubu_tracks[i];
	}
	
	let dir2 = data_folder + tracks_string + "/";
		
		if (!fs.existsSync(dir2)){
			fs.mkdirSync(dir2);
		}
	
	for(var j = 1; j<buffers.length+1; j++) {
			  
		p("Saving buffer " + j + " for all tracks ");
		
		let filename = data_folder + tracks_string + "/" + labels[j-1].replace(":","-") + "#" + j + "_" + uuidv1();
						
		o(["to_imubu", "writeall", filename + ".mubu", "@buffer", j]); // Then write the buffer to corresponding location
		// o(["to_imubu", "writeall", filename + ".txt", "@buffer", j]); // not working
		
		// warning: as of v1.9.13, buffer name and labels are incorrects
	}
		
	p("Saving whole mubu object");
	
	let dir3 = data_folder + tracks_string + "/whole_buffer/";
		
	if (!fs.existsSync(dir3)){
		fs.mkdirSync(dir3);
	}
	
	let date_ob = new Date();
	let date = ("0" + date_ob.getDate()).slice(-2);
	let month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
	let year = date_ob.getFullYear();
	let hours = date_ob.getHours();
	let minutes = date_ob.getMinutes();
	let seconds = date_ob.getSeconds();
	
	let filename = dir3 + year + "-" + month + "-" + date + "_" + hours + "-" + minutes + "-" + seconds + "_" + uuidv1() + ".mubu";
	
	o(["to_imubu", "writeall", filename]);
	
	// TODO later: check that buffer tracks are == to the active tracks. 
}

async function update_buffers_and_tracks() {
	
	p("Updating buffers and tracks");
	state = "updating_buffers";
	
	o(["to_imubu", "getbuffers"]);
	o(["to_imubu", "gettracks"]);
	
	await waitforupdate();
}

function update_labels_set() {
	
	labels_set = Array.from(new Set(labels)).sort();
}

function setup() { // first function that is triggered at loading time
	
	let speed = 50;  // you can change the playing speed here. it should be sufficiently large, so that the training process does not take too long. 
	// For several inputs to work at the same time, the record should be timetagged, because of the different rates between each input
	
	o(["to_mubu_play" , "speed", speed]);
	
}

async function train() { // this is the async function that triggers the mubu.play object by iterating other each buffer

	p("Start wekinator training");
	update_buffers_and_tracks();
	o(["to_mubu_play", "trackid", ...active_tracks]); // we are playing only active tracks. But what if they are not in the mubu obj?
	o(["wekinator_training_state", 1]);
	
	for(var i = 1; i<buffers.length+1; i++) {
		
		// Set the right buffer index
		o(["to_mubu_play", "bufferindex", i]);
		
		// Then the OSC commands to wekinator
		o(["to_wekinator", "/wekinator/control/startDtwRecording", labels_set.indexOf(labels[i-1])]);
		
		// play
		o(["to_mubu_play", "play", 1]);
		
		playing = true;
		
		await waitforplaytostop(); // we wait for the "end" message to arrive with async code
		
		// stop wekinator recording
		o(["to_wekinator", "/wekinator/control/stopDtwRecording"]);
	}
	
	o(["wekinator_training_state", 0]);
}

function waitforplaytostop() {
		
	return new Promise(function (resolve, reject) {
		(function check_playing(){
			if (playing == false) return resolve();
			setTimeout(check_playing, 10);
		})();
	});
}

function waitforupdate() {
		
	return new Promise(function (resolve, reject) {
		(function check_update(){
			if (state == "finished") return resolve();
			setTimeout(check_update, 10);
			p("Waiting for buffer or track update");
		})();
	});
}