const maxApi = require("max-api");
var fs = require('fs');
var path = require("path");

var numbuffers = 0;
var tracks = [];
var track_sizes = [];
var playing = false;
var labels = [];
var labels_set = [];
var buffers = [];
var state = "";

var data_folder = "./data/";

const { v1: uuidv1 } = require('uuid');

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
	//maxApi.post(msg);
}

const handlers = {
	"add_buffers": (...list) => {
		
		/* o(["to_imubu", "clearall"]); // we must clear the buffers first
		
		labels = [];
		labels_set = [];
		buffers = [];
		
		for(var i = 0; i<list.length; i++) {
			
			o(["to_label", "addbuffer", list[i]]);
			buffers.push(list[i]);
			
		}
		
		for(var i = 0; i<list.length; i++) {
		
			let label = list[i].split(" ")[0];
			o(["to_label", "buffer", list[i], "info", "label", label]);
			labels.push(label);
			update_labels_set();
		}
		
		o(["to_imubu", "removebuffer", 1]); // when the buffer was cleared, a buffer "1" was added automatically
		
		o(["labels", ...labels_set]);
		o(["buffers_names", ...buffers]);
		*/
	},
	
	"read_append": (abs_path) => {
		
		let buffer_name = path.basename(abs_path).split("_")[0];
		p("Buffer name : " + buffer_name);
		
		let label_name = buffer_name.split("#")[0].replace("-",":");
		
		let extension = path.extname(abs_path);
		p("extension : " + extension);
		
		let track_name = path.basename(path.dirname(abs_path))
		p("track : " + track_name);
		
		if(extension == ".txt") {
			
			// ----------------------------------------- NOT FUNCTIONNAL
			
			// o(["to_imubu", "readappend", abs_path, "@name", track_name, "@buffername", buffer_name, "@bufferinfo", label_name]); // nope
			
			// o(["to_imubu", "addtrack", track_name, "@timetagged", "yes"]);
			// o(["to_imubu", "addbuffer", buffer_name]);
			// o(["to_imubu", "read", abs_path, "@name", track_name]);
			// o(["to_imubu", "buffer", buffer_name, "info", "label", label_name]); // not working either
			
			// -----------------------------------------------------------
		}
		
		if(extension == ".mubu") {
			
			// -----------------------------------------------------------
			
			// o(["to_imubu", "readappend", abs_path, "@buffername", buffer_name, "@name", track_name, "@timetagged", "yes", "@bufferinfo", "label", label_name]); // this does not work well
			
			// o(["to_imubu", "readtrackappend", track_name, abs_path,"@bufferid", 2, "@buffername", buffer_name, "@bufferinfo", "label", label_name]); // not ok
			
			// o(["to_imubu", "addtrack", track_name, "@timetagged", "yes"]);
			// o(["to_imubu", "addbuffer", buffer_name]);
			// o(["to_imubu", "bufferindex", 2]);
			// o(["to_imubu", "buffer", buffer_name, "info", "label", label_name]);
			// o(["to_imubu", "read", abs_path, "@buffer", buffer_name]); // nope
			
			// -----------------------------------------------------------
			
			// TODO: revisit later. So far, we can only read from the configuration folder
			
			if(track_name == "whole_buffer") {
				
				o(["to_imubu", "readappend", abs_path]);

			} else {

				o(["to_imubu", "readappend", abs_path, "@buffername", buffer_name]);
				// todo: fix buffer
			}
			
		}
		
		// todo: update buffers
	},
	
	"buffers": (...arg_list) => {
		
		if(state == "updating_buffers") { // update_buffers_and_tracks function with getbuffers
			
			buffers = [];
			labels = [];
			
			for(var i = 0; i<arg_list.length; i++) {
				
				buffers.push(arg_list[i]);
				labels.push(arg_list[i].split(" ")[0];
			}
			
			o(["buffers_names", ...buffers]);
			update_labels_set();
			o(["labels_set", ...labels_set]);
			
			state = "buffers_updated";
			
		}
		
		// buffers.push(arg_list[0]);
		// labels.push(arg_list[3]); // the label is the fourth element of the return mg from the mubu
		// update_labels_set();
		
		// Why not output them to somewhere is it useful?
		// p(labels_set);
		
	
	},
	
	// "numbuffers": (num) => { // the getnumbuffers command is sent externally when the buffer is changed
		
		// p("Loading buffers");
		// numbuffers = num;
		// getLabels();
	// },
	
	"track_names": (...names) => { // the names of active tracks (from user input, not gathered from the buffer directly)
		
		if(names != "" && names != []) {
			
			p("Received tracks");
			tracks = names;
			o(["to_mubu_play", "trackid", ...tracks]);
			
			if(tracks.length == track_sizes.length) { // if they have the same length, then we can add the tracks to the buffer if the buffer does not already have the track
				
				for(var i = 0; i<tracks.length; i++) {
						o(["to_imubu", "hastrack", tracks[i]]);
				}
				
			// o(["to_imubu", "gettracks"]);
			}
			else {
				
				p("Error: track names length and track sizes length are not equal...");
			}
		}
	},
	
	"tracks": (...track_list) => { // this is the response from imubu that tells us what tracks there are already inside mubu
	
		tracks = [];
		track_sizes = [];
		
		for(var i = 0; i<track_list.length; i++) {
			
			tracks.push(track_list[i]);
			o(["to_imubu", "track", track_list[i], "getmatrixcols"]); // here we want to also update the tracks sizes
		}
	
	},
	
	"track": (...arg_list) => {
		
		if(arg_list.includes("matrixcols") { // it is an answer to the track XX getmatrixcols
			
			let id = arg_list.indexOf("matrixcols");
			
			track_sizes[arg_list[1]] = arg_list[id+1];
		}
	},
	
	"hastrack": (bool, name) => {
		
		if(tracks.includes(name)) {
		
			let size = track_sizes[tracks.indexOf(name)];
		
			let funct = "modifytrack";
			
			// p(size);
			
			if(bool == 0) {

				funct = "addtrack";
			}
			
			o(["to_imubu", funct, name, "@maxsize", "5s", "@matrixcols", size, "@timetagged", "yes", "@info", "gui", "autobounds minmax, shape envelopebpf, interface multibpf, opacity 1, colormode rainbow, hidenotforemost 1"]);
			
		}
		
	},
	
	"track_sizes": (...sizes) => {
		
		if(sizes != "" && sizes != []) {
			track_sizes = sizes;
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
  
  "clearbuffers": () => {
	  
	 p("Clearing buffers");
	 numbuffers = 0;
	 playing = false;
	 labels = [];
	 labels_set = [];
	 buffers = [];
  },
  
	"save": () => {
		
		/* First saving method. 
		+ Save each buffer for each track in a separate file
		- When loading in the mubu object, do not recover labels, names... automatically :(
		*/
		
		p("Attempt save (one file per buffer per track)");
		for(var i = 1; i<tracks.length+1; i++) {
			
			// create folder if does not exists
			let dir = data_folder + tracks[i-1] + "/";
			
			if (!fs.existsSync(dir)){
				fs.mkdirSync(dir);
			}
			  
			for(var j = 1; j<buffers.length+1; j++) {
				  
				p("Saving buffer " + j + " track " + i);
				o(["to_imubu", "bufferindex", j]); // We must change buffer first
				
				let filename = data_folder + tracks[i-1] + "/" + labels[j-1].replace(":","-") + "#" + j + "_" + uuidv1();
				
				o(["to_imubu", "writetrack", i, filename + ".mubu"]); // Then write the buffer to corresponding location
				o(["to_imubu", "writetrack", i, filename + ".txt"]); // we save the .txt file for conveniency
			}
		}	
		
		/* Second saving method. 
		+ Labels and names are recovered on loading
		- Tracks are saved in the same file so it is not garantueed that the data is homogeneous (one buffer in the dataset can have empty data for one active track if not reloaded properly.
		*/
		
		// TODO: first we want to check that we are saving the right track configuration. Maybe someone has loaded files externally, updating the tracks in mubu, so the configuratino text may not be right
		
		let tracks_string = "configuration";
				
		for(var i = 0; i<tracks.length; i++) {

			tracks_string = tracks_string + "_#" + tracks[i];
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
	},
	
	[maxApi.MESSAGE_TYPES.ALL]: () => {
		
		// anything that was not handled comes here
		
	}
};

maxApi.addHandlers(handlers);

setup();

function update_buffers_and_tracks() {
	
	state = "updating_buffers";
	
	o(["to_imubu", "getbuffers"]);
	o(["to_imubu", "gettracks"]);
}

function update_labels_set() {
	
	labels_set = Array.from(new Set(labels)).sort();
}

// function getLabels() {
	
	// for(var i = 1; i<numbuffers+1; i++) {
		
		// o(["to_imubu", "buffer", i, "getinfo", "label"])
	// }
	
// }

function setup() { // first function that is triggered at loading time
	
	let speed = 50;  // you can change the playing speed here. it should be sufficiently large, so that the training process does not take too long. 
	// For several inputs to work at the same time, the record should be timetagged, because of the different rates between each input
	
	o(["to_mubu_play" , "speed", speed]);
	
}

async function train() { // this is the async function that triggers the mubu.play object by iterating other each buffer
	
	p("Start wekinator training");
	
	o(["wekinator_training_state", 1]);
	
	for(var i = 1; i<numbuffers+1; i++) {
		
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