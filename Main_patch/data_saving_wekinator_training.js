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
		
		buffers.push(arg_list[1]);
		labels.push(arg_list[3]); // the label is the fourth element of the return mg from the mubu
		labels_set = Array.from(new Set(labels)).sort();
	},
	
	"numbuffers": (num) => { // the getnumbuffers command is sent externally when the buffer is changed
		
		numbuffers = num;
		getLabels();
	},
	
	"track_names": (...names) => { // the names of tracks is given externally from the list of active tracks.
	// The tracks are NOT extracted from the buffer itself.
		
		
		if(names != "" && names != []) {
			tracks = names;
			o(["to_mubu_play", "trackid", ...tracks]);
		}
	},
	
	"track_sizes": (...sizes) => {
		
		if(sizes != "" && sizes != []) {
			track_sizes = sizes;
			//o(["to_mubu_play", "trackid", ...tracks]);
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
  
  "clearall": () => {
	  
	 p("weki auto trainer clear");
	 numbuffers = 0;
	 tracks = [];
	 track_sizes = [];
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
		for(var i = 0; i<tracks.length; i++) {
			
			// create folder if does not exists
			let dir = data_folder + tracks[i] + "/";
			
			if (!fs.existsSync(dir)){
				fs.mkdirSync(dir);
			}
			  
			for(var j = 0; j<buffers.length; j++) {
				  
				p("Saving buffer " + j + " track " + i);
				o(["to_imubu", "bufferindex", j+1]); // We must change buffer first
				o(["to_imubu", "writetrack", i+1, data_folder + tracks[i] + "/" + labels[j].replace(":","-") + "-" + j + "_" + uuidv1() + ".mubu"]); // Then write the buffer to corresponding location
			}
		}	
		
		/* Second saving method. 
		+ Labels and names are recovered on loading
		- Tracks are saved in the same file so it is not garantueed that the data is homogeneous (one buffer in the dataset can have empty data for one active track if not reloaded properly.
		*/
		
		let tracks_string = "configuration";
				
		for(var i = 0; i<tracks.length; i++) {

			tracks_string = tracks_string + "_#" + tracks[i];
		}
		
		let dir2 = data_folder + tracks_string + "/";
			
			if (!fs.existsSync(dir2)){
				fs.mkdirSync(dir2);
			}
		
		for(var j = 0; j<buffers.length; j++) {
				  
				p("Saving buffer " + j + " for all tracks ");
								
				o(["to_imubu", "writeall", data_folder + tracks_string + "/" + labels[j].replace(":","-") + "-" + j + "_" + uuidv1() + ".mubu", "@buffer", j+1]); // Then write the buffer to corresponding location
			}
	},
	
	[maxApi.MESSAGE_TYPES.ALL]: () => {
		
		// anything that was not handled comes here
		
	}
};

maxApi.addHandlers(handlers);

setup();

function getLabels() {
	
	for(var i = 0; i<numbuffers; i++) {
		
		o(["to_imubu", "buffer", i+1, "getinfo", "label"])
	}
	
	// once we know we have all labels and buffers, why not output them to somewhere is it useful?
	
	o(["labels", labels_set]);
	o(["buffers_names", buffers]);
	
}

function setup() { // first function that is triggered at loading time
	
	let speed = 50;  // you can change the playing speed here. it should be sufficiently large, so that the training process does not take too long. 
					// For several inputs to work at the same time, the record should be timetagged, because of the different rates between each input
	
	o(["to_mubu_play" , "speed", speed]);
	
}

async function train() { // this is the async function that triggers the mubu.play object by iterating other each buffer
	
	o(["wekinator_training_state", 1]);
	
	for(var i = 0; i<numbuffers; i++) {
		
		// Set the right buffer index
		o(["to_mubu_play", "bufferindex", i+1]);
		
		// Then the OSC commands to wekinator
		o(["to_wekinator", "/wekinator/control/startDtwRecording", labels_set.indexOf(labels[i])]);
		
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