const maxApi = require("max-api");
var fs = require('fs');

var numbuffers = 0;
var tracks = [];
var track_sizes = [];
var playing = false;
var labels = [];
var labels_set = [];
var buffers = [];

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
	"buffers": (...arg_list) => { // this handle is triggered when after we use getLabels()
		
		buffers.push(arg_list[0]);
		labels.push(arg_list[3]); // the label is the fourth element of the return mg from the mubu
		labels_set = Array.from(new Set(labels)).sort();
		
		// Why not output them to somewhere is it useful?
	
		o(["labels", ...labels_set]);
		// p(labels_set);
		o(["buffers_names", ...buffers]);
		
	},
	
	"numbuffers": (num) => { // the getnumbuffers command is sent externally when the buffer is changed
		
		p("Loading buffers");
		numbuffers = num;
		getLabels();
	},
	
	"track_names": (...names) => { // the names of active tracks (rom user input, not gathered from the buffer directly)
		
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
	
		// 
	
	},
	
	"hastrack": (bool, name) => {
		
		let size = track_sizes[tracks.indexOf(name)];
		
		let funct = "modifytrack";
		
		// p(size);
		
		if(bool == 0) {

			funct = "addtrack";
		}
		
		o(["to_imubu", funct, name, "@maxsize", "5s", "@matrixcols", size, "@timetagged", "yes", "@info", "gui", "autobounds minmax, shape envelopebpf, interface multibpf, opacity 1, colormode rainbow, hidenotforemost 1"]);
		
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
				
				o(["to_imubu", "writetrack", i, data_folder + tracks[i-1] + "/" + labels[j-1].replace(":","-") + "-" + j + "_" + uuidv1() + ".mubu"]); // Then write the buffer to corresponding location
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
								
				o(["to_imubu", "writeall", data_folder + tracks_string + "/" + labels[j-1].replace(":","-") + "-" + j + "_" + uuidv1() + ".mubu", "@buffer", j]); // Then write the buffer to corresponding location
			}
	},
	
	[maxApi.MESSAGE_TYPES.ALL]: () => {
		
		// anything that was not handled comes here
		
	}
};

maxApi.addHandlers(handlers);

setup();

function getLabels() {
	
	for(var i = 1; i<numbuffers+1; i++) {
		
		o(["to_imubu", "buffer", i, "getinfo", "label"])
	}
	
}

function setup() { // first function that is triggered at loading time
	
	let speed = 50;  // you can change the playing speed here. it should be sufficiently large, so that the training process does not take too long. 
					// For several inputs to work at the same time, the record should be timetagged, because of the different rates between each input
	
	o(["to_mubu_play" , "speed", speed]);
	
}

async function train() { // this is the async function that triggers the mubu.play object by iterating other each buffer
	
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