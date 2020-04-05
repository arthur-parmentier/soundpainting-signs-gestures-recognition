const maxApi = require("max-api");

var buffers = [];
var tracks = [];

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
	//maxApi.post(msg);
}

const handlers = {
	"buffers": (...b_list) => {
    
		buffers = b_list;
		//o(buffers);
	},
	
	"tracks": (...t_list) => {
		
		tracks = t_list;
		//o(tracks);
	},
	
	"train": () => {
		
		train();
	},
  
  "clearall": () => {
	  
  }
};

maxApi.addHandlers(handlers);

async function train() {
	
	let track_ids = tracks;
	let speed = 0.05;
	
	for(var i = 0; i<buffers.length; i++) {
		
		// First the settings commands to the mubu.play object
		o(["to_mubu_play" , "speed", speed]);
		o(["to_mubu_play" , "trackid", ...track_ids]);
		o(["to_mubu_play" , "bufferindex", buffers[i]]);
		
		// Then the OSC commands to wekinator
		o(["to_mubu_play" , "play", 1]);
		
		await end_of_play();
		
		
		
	}
	
}

function end_of_play() {
	
	
	
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