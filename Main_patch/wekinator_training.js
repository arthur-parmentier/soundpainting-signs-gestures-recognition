const maxApi = require("max-api");

var numbuffers = 0;
var tracks = [];
var playing = false;
var labels = [];
var labels_set = [];

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
	//maxApi.post(msg);
}

const handlers = {
	"buffers": (...arg_list) => { // this handle is triggered when after we use getLabels()
		
		labels.push(arg_list[3]);
		labels_set = Array.from(new Set(labels)).sort();
	},
	
	"numbuffers": (num) => {
		
		numbuffers = num;
		getLabels();
	},
	
	"tracks": (...t_list) => {
		
		tracks = t_list;
		o(["to_mubu_play", "trackid", ...tracks]);
		//o(tracks);
	},
	
	"train": () => {
		
		train();
	},
	
	"end": () => {
		
		playing = false;
		// p("r end");
	},
	
	"start": () => {
		
		playing = true;
		// p("r start");
	},
  
  "clearall": () => {
	  
	 numbuffers = 0;
	 tracks = [];
	 playing = false;
	 labels = [];
	 labels_set = [];
  },
};

maxApi.addHandlers(handlers);

setup();

function getLabels() {
	
	for(var i = 0; i<numbuffers; i++) {
		
		o(["to_imubu", "buffer", i+1, "getinfo", "label"])
	}
}

function setup() {
	
	let speed = 1;
	
	o(["to_mubu_play" , "speed", speed]);
	
}

async function train() {
	
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

function sleep(ms) {
	return new Promise((resolve) => {
		setTimeout(resolve, ms);
	});
}   

function sign_regexp(msg) {
		
	let separator = new RegExp(":"); 
	return msg.split(separator);
		
}