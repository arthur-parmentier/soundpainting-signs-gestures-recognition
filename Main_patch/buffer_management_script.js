// TODO: see if it's not better in the future to abandon node.js for that script (why did I even chose node.js instead of js?) and re-work it a little so that there aren't any async events anymore. I think it would simplify the code a lot and lower the cpu usage

const maxApi = require("max-api");
var fs = require('fs');
var path = require("path");
const { v1: uuidv1 } = require('uuid');

// data from the input manager
var active_tracks = []; // note: this script was originally designed to handle multiple tracks in the mubu obj. Because of later design changes, it only has one track in practice, but i kept the multi track design for genericity and possible future improvements
var active_tracks_sizes = [];
var model = "";

// data from the mubu object itself
var mubu_tracks = [];
var mubu_tracks_sizes = [];
var mubu_labels = [];
var mubu_labels_set = [];
var mubu_buffers = [];
var mubu_numtracks = 0;

// helpers for async functions
var playing = false;
var state = "updated";

// data folder location
var data_folder = "./data/";

var debug = 1;
const routing_dict = "routing";


// handy functions
function p(msg) {
	if(debug) {
		maxApi.post(msg);
	}
}
function o(msg) {
	maxApi.outlet(msg);
}

function not_empty(e) {
	
	return (e!="empty" && e!=[] && e!="");
}

// message handlers
const handlers = {
	"name": (name) => { // answer from mubu getname
		
		if(name != "" || name != null) {
			model = name;
		}
		else { p("Unknown name of Imubu"); }
	},
	
	"debug": (bool) => {
		
		debug = bool;
	},
	
	"model": (name) => {
		
		change_model(name);
	},
	
	"read_append": (abs_path) => { // Unused
		
		o(["to_imubu", "readappend", abs_path]);
		
	},
	
	"buffers": (...arg_list) => { // can be called after getbuffers...
		
		if(state == "updating_buffers") { // get_mubu_data function with getbuffers
			
			mubu_buffers = [];
			mubu_labels = [];
			
			for(var i = 0; i<arg_list.length; i++) {
				
				if(arg_list[i].toString().split(" ").length>1) {
					mubu_labels.push(arg_list[i].toString().split(" ")[0]);
					mubu_buffers.push(arg_list[i].toString());
				}
				else {
					
					if(arg_list.length>1) {
						p("Removing buffer : " + arg_list[i] + " with unrecognized label (no space in name)");
						let num = i+1;
						o(["to_imubu", "removebuffer", num]);
					} else {
						
						p("Mubu has only one invalid buffer " + arg_list[i] + " left in place (buffer 1 bug when removing)");
					}
				}
			}
			
			update_labels_set();
			
			state = "buffers_updated";
			
		}
	},
	
	"active_tracks_sizes": (...sizes) => { // from input manager
	
		set_active_track_sizes(sizes);

	},
	
	"active_tracks_names": (...names) => { // the names of active tracks (from the input manager, not gathered from the buffer directly) that we use when we want to create buffers to train examples
		
		set_active_track_names(names);
		
	},
	
	"numtracks": (num) => { // this is the answer from "getnumtracks" during update of buffers & tracks
		
		mubu_numtracks = num;
		
		if(state == "updating_numtracks") {
			state = "numtracks_updated";
		}
	},
	
	"tracks": (...track_list) => { // this is the response from imubu that tells us what tracks there are already inside mubu
		
		if(state == "updating_tracks") {
			
			mubu_tracks = [];
			mubu_tracks_sizes = [];
			
			for(var i = 0; i<track_list.length; i++) {
				
				mubu_tracks.push(track_list[i]);
				o(["to_imubu", "track", track_list[i], "getmatrixcols"]); // here we want to also update the tracks sizes
			}
		}
	},
	
	"track": (...arg_list) => {
		
		if(arg_list.includes("matrixcols")) { // it is an answer to the track XX getmatrixcols
			
			let id = arg_list.indexOf("matrixcols");
			mubu_tracks_sizes[arg_list[0]-1] = arg_list[id+1];
			
			if(state == "updating_tracks" && arg_list[0] == mubu_tracks.length) { // we know that it is the last track size we are updating
				
				state = "tracks_updated"; 
				p("Buffer and track update finished");
				p(mubu_buffers.length + " buffers");
				p(mubu_tracks.length + " tracks");
			}
		}
	},
	
	"hastrack": (bool, name) => {
		
		p(["Active tracks : ", active_tracks]);
		p("Includes names : " + active_tracks.includes(name));
		p("State : " + state);
	},
	

	"train": (model) => {
		
		train(model);
	},
	
	"end": () => { // the end msg is triggered by mubu.play when it has finished playing, so that we now we can continue the training with the next buffer
		
		playing = false;
		p("Buffer playback end");
	},
	
	"start": () => { // the start command indicates that the mubu.play is active, so we have to wait for it to send "end"
		
		playing = true;
		p("Buffer playback start");
	},
  
	"save": () => {
		
		save();
	},
	
	"clearbuffers": () => {
		
		clearbuffers();
	},
	
	"clear_add_buffers": (...buffers) => {
		
		add_clear_buffers(buffers);
	},
	
	"cleartracks": () => {
		
		cleartracks();
	},
	
	[maxApi.MESSAGE_TYPES.ALL]: () => {
		
		// anything that was not handled comes here
		
	}
};

maxApi.addHandlers(handlers);

setup();

async function change_model(name) {
	
	p("Model changed to: " + name);
	model = name;
	
	// o(["to_mubu_play", "mubuname", model]); // Mubu has bug and needs to get the name to the mubu.play before the imubu. As a workaround, it is not the nodejs script that manage the names changes, but directly max so that we can know the order precisely
	
	// get model infos from routing dict
	const dict = await maxApi.getDict(routing_dict);
	  
	try {
		let track_name = dict[name]["input_name"];
		let track_size = dict[name]["input_size"];
		p("Model " + model + " with tracks " + track_name + " of size " + track_size); 
		set_active_track_names([track_name]);
		set_active_track_sizes([track_size]);
		
	} catch (err) {
		p("Error in routing dict : " + err);
	}
}

function set_active_track_names(names) { // this should get called before track sizes
	
	p(["Names : ", names]);
	if(not_empty(names)) {
		p("New track names " + names);
		// cleartracks(); // here we assume that track names are received prior to track sizes. TODO: improve this
		active_tracks = names.filter(not_empty);
	} else { p("Received empty track names list"); }
}

async function set_active_track_sizes(sizes) {// this should get called after track names
// here we do not only set the track sizes but also try to update mubu tracks in case it is necessary
	
	if(not_empty(sizes)) {
		p(["New track sizes ", sizes]);
		active_tracks_sizes = sizes.filter(not_empty);
	
		if(active_tracks.length > 0) {
			o(["to_mubu_play", "trackid", ...active_tracks]);
			o(["to_mubu_record_active_tracks", ...active_tracks]);
			
			if(active_tracks.length == active_tracks_sizes.length) { // if they have the same length, then we can add the tracks to the buffer if the buffer does not already have the track
				
				await update_mubu_tracks();
			}
			else {
				
				p("Error: track names length and track sizes length are not equal: " + active_tracks.length+ " vs " + active_tracks_sizes.length);
			}
		}
	} else { p("Received empty track sizes list"); }
}

async function update_mubu_tracks() { // takes active tracks, see if mubu has them with right size and modify them if not
	
	await get_mubu_data();
	
	for(var i = 0; i<active_tracks.length; i++) {
		p("Checking track " + active_tracks[i]);
		
		if(mubu_tracks.includes(active_tracks[i])) { // there is the track, let's check its size
			if(mubu_tracks_sizes[mubu_tracks.indexOf(active_tracks[i])] != active_tracks_sizes[i]) { // if the size do not match
				
				p("Track " + active_tracks[i] + " found in mubu at different size "+ mubu_tracks_sizes[mubu_tracks.indexOf(active_tracks[i])] + " vs " + active_tracks_sizes[i] + ", changing it");
				
				o(["to_imubu", "modifytrack", active_tracks[i], "@maxsize", "5s", "@matrixcols", active_tracks_sizes[i], "@timetagged", "yes", "@info", "gui", "autobounds minmax, shape envelopebpf, interface multibpf, opacity 1, colormode rainbow, hidenotforemost 1"]);
			} else { p("Track " + active_tracks[i] + " found in mubu at same size");}		
		} else { // if the track is not there, we clear previous tracks and add it
		
			cleartracks();
			p("Track " + active_tracks[i] + " not found in mubu : " + mubu_tracks + " vs " + active_tracks + " , adding it");
			o(["to_imubu", "addtrack", active_tracks[i], "@maxsize", "5s", "@matrixcols", active_tracks_sizes[i], "@timetagged", "yes", "@info", "gui", "autobounds minmax, shape envelopebpf, interface multibpf, opacity 1, colormode rainbow, hidenotforemost 1"]);
		}
	}
	
}

async function add_clear_buffers(buffers) { // it is async because we need to wait for the "clear" part before we can add the buffers
	
	await clearbuffers();
	
	addbuffers(buffers);
	
	o(["to_imubu", "removebuffer", 1]); // Because the buffer 1 could not be removed when clearing the buffers, we do it here
		
}

function addbuffers(buffers) {
	
	for(var i = 0; i<buffers.length; i++) {
		
		let label = "";
		if(buffers[i].length>1) {
			if(buffers[i].split(" ").length == 2) {
				label = buffers[i].split(" ")[0];
				o(["to_imubu", "addbuffer", buffers[i]]);
			o(["to_imubu", "buffer", buffers[i], "info", "label", label]);
			} else { p("Wrong buffer name format: " + buffers[i]); }
		} else { p("Wrong buffer name format: " + buffers[i]); }
	}
}

async function clearbuffers() {
	
	await get_mubu_data();
	
	p("Clearing buffers");
	
	for(var i = mubu_buffers.length; i>1; i--) { // here we decrease
		
		p("Removing buffer " + i);
		o(["to_imubu", "removebuffer", i]);
	}
	
	// handling buffer 1...
	if(mubu_buffers[0]==1 || mubu_buffers[0]=="1" || mubu_buffers[0]==null) {
		
		p("Handling buffer 1 case");
	} else {
		// That 1 buffer is really a pain. In order to delete the first buffer without messing up with the tracks, I have this workaround:
		o(["to_imubu", "addbuffer", 1]);
		o(["to_imubu", "removebuffer", 1]);
	}
}

function cleartracks() {
	
	p("Clearing tracks");
	o(["to_imubu", "clear"]);
}

async function save() {
	
	await get_mubu_data();
		
	p("Saving buffers : " + mubu_buffers);
	p("Saving tracks : " + mubu_tracks);
	p("Saving labels : " + mubu_labels);
	
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
		  
		for(var j = 1; j<mubu_buffers.length+1; j++) {
			  
			p("Saving buffer " + j + " track " + i);
			o(["to_imubu", "bufferindex", j]); // We must change buffer first
			
			let filename = data_folder + mubu_tracks[i-1] + "/" + mubu_labels[j-1].replace(":","-") + "#" + j + "_" + uuidv1();
			
			o(["to_imubu", "writetrack", i, filename + ".json"]); // Then write the buffer to corresponding location
			o(["to_imubu", "writetrack", i, filename + ".txt"]); // we save the .txt file for conveniency
			o(["to_imubu", "writetrack", i, filename + ".mubu"]);
		}
	}	
	
	/* Second saving method. 
	+ Labels and names are recovered on loading
	- tracks are saved in the same file so it is not garantueed that the data is homogeneous (one buffer in the dataset can have empty data for one active track if not reloaded properly.
	*/
	
	// TODO: first we want to check that we are saving the right track configuration. Maybe someone has loaded files externally, updating the tracks in mubu, so the configuration text may not be right
	
	let tracks_string = "configuration";
			
	for(var i = 0; i<mubu_tracks.length; i++) {

		tracks_string = tracks_string + "_#" + mubu_tracks[i];
	}
	
	let dir2 = data_folder + tracks_string + "/";
		
		if (!fs.existsSync(dir2)){
			fs.mkdirSync(dir2);
		}
	
	for(var j = 1; j<mubu_buffers.length+1; j++) {
			  
		p("Saving buffer " + j + " for all tracks ");
		
		let filename = data_folder + tracks_string + "/" + mubu_labels[j-1].replace(":","-") + "#" + j + "_" + uuidv1();
						
		o(["to_imubu", "writeall", filename + ".json", "@buffer", j]); // Then write the buffer to corresponding location
		o(["to_imubu", "writeall", filename + ".mubu", "@buffer", j]); // not working
		
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
	
	let filename = dir3 + year + "-" + month + "-" + date + "_" + hours + "-" + minutes + "-" + seconds + "_" + uuidv1();
	
	o(["to_imubu", "writeall", filename + ".json"]);
	o(["to_imubu", "writeall", filename + ".mubu"]);
	// TODO later: check that buffer tracks are == to the active tracks. 
}

async function get_mubu_data() {
	
	if(state == "updated") { // here we check that we are not already inside an update loop, which would probably mess up with the state updates and create infinite loops
		
		p('Updating model name');
		o(["to_imubu" , "getname"]);
	
		p("Updating buffers and tracks");
		state = "updating_buffers";
		o(["to_imubu", "getbuffers"]);
		await buffers_updated();
		state = "updating_numtracks";
		o(["to_imubu", "getnumtracks"]);
		await numtracks_updated();
		
		if(mubu_numtracks>0) {
			state = "updating_tracks";
			o(["to_imubu", "gettracks"]);
		} else {
			mubu_tracks = [];
			mubu_tracks_sizes = [];
			state = "tracks_updated";
		}
		await tracks_updated();
		state = "updated";
		p(["Update completed with tracks ", mubu_tracks, " and sizes ", mubu_tracks_sizes, " buffers ", mubu_buffers]);
		
		// send the useful stuff
		o(["buffers_names", ...mubu_buffers]);
		o(["labels_set", ...mubu_labels_set]);
		
		// var buffer_dict = maxApi.updateDict("buffers", model + "." .... // To continue if useful to link to Max dict
	} else { setTimeout(get_mubu_data, 50) }
}

function update_labels_set() {
	
	mubu_labels_set = Array.from(new Set(mubu_labels)); // used to be .sort but we cannot sort anymore if user is loading files
}

function setup() { // first function that is triggered at loading time
	
	let speed = 50;  // you can change the playing speed here. it should be sufficiently large, so that the training process does not take too long. 
	// For several inputs to work at the same time, the record should be timetagged, because of the different rates between each input
	
	o(["to_mubu_play" , "speed", speed]);
	
}

async function train() { // this is the async function that triggers the mubu.play object by iterating other each buffer

	await get_mubu_data();
	
	if(model == "" || model == null) { // here we are checking that we did say which model we are using, so we can send the right commands
		
		p("Model not defined, cannot train");
		return 0;
	}

	p("Start training " + model);

	// Warning (todo): check if buffer 1 is here and remove it
	p(["Labels set : ", ...mubu_labels_set]);
	
	p(["Training " + mubu_tracks.length + " tracks : ", ...mubu_tracks]); // TODO: check that mubu tracks are indeed the ones we want to train... there can be residues?
	
	o(["to_mubu_play", "trackid", ...mubu_tracks]); // we are playing only active tracks. But what if they are not in the mubu obj?
	
	o(["training_state", 1]);
	
	for(var i = 1; i<mubu_buffers.length+1; i++) {
		
		let index = mubu_labels_set.indexOf(mubu_labels[i-1]) + 1;
		
		if(index == 0) {
			
			p("Error with index for buffer " + mubu_buffers[i-1] + " with label " + mubu_labels[i-1] + " (label not found in label set?)");
		}
		
		p("Training buffer " + i + " label set index : " + index);
		
		// Set the right buffer index
		o(["to_mubu_play", "bufferindex", i]);
		
		if(model.includes("full_body")) { // TODO: handle this in a better way
			// Then the OSC commands to wekinator
			o(["model_commands", "/wekinator/control/startDtwRecording", index]);
		} else {
			
			o(["model_commands", "/wekinator/control/outputs", index+0.00000000001, index+0.00000000001, index+0.00000000001, index+0.00000000001, index+0.00000000001]); // there is a problem with JS having only floats and Max ints and floats... so in order for weki to understand it as a float, we must do this little trick
			o(["model_commands", "/wekinator/control/startRecording"]);
		}
		
		// play
		o(["to_mubu_play", "play", 1]);
		
		playing = true;
		
		await waitforplaytostop(); // we wait for the "end" message to arrive with async code
		
		if(model.includes("full_body")) {
			// stop wekinator recording
			o(["model_commands", "/wekinator/control/stopDtwRecording"]);
		} else {
			o(["model_commands", "/wekinator/control/stopRecording"]);
		}
	}
	o(["training_state", 0]);
}

function waitforplaytostop() {
		
	return new Promise(function (resolve, reject) {
		(function check_playing(){
			if (playing == false) return resolve();
			setTimeout(check_playing, 10);
		})();
	});
}

function tracks_updated() {
		
	return new Promise(function (resolve, reject) {
		(function check_update(){
			if (state == "tracks_updated") return resolve();
			setTimeout(check_update, 10);
			p("Waiting for track update with state " + state);
		})();
	});
}

function buffers_updated() {
		
	return new Promise(function (resolve, reject) {
		(function check_update(){
			if (state == "buffers_updated") return resolve();
			setTimeout(check_update, 10);
			p("Waiting for buffer update with state " + state);
		})();
	});
}

function numtracks_updated() {
		
	return new Promise(function (resolve, reject) {
		(function check_update(){
			if (state == "numtracks_updated") return resolve();
			setTimeout(check_update, 10);
			p("Waiting for numtracks update with state " + state);
		})();
	});
}