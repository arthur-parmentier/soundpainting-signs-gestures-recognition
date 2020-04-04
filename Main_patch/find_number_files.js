const maxApi = require("max-api");
const fs = require('fs');

let type_ = ".mubu";
let dir = "./data/";

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
}

const handlers = {
	"type": (type) => {
    
		type_ = type;
	},
  
	"folder": (name) => {
	  
		const dir = name;
	},
	
	"save": () => {
		
		fs.readdir(dir, (err, files) => {
			o(["writeall", dir + "training_data" + files.length + type_]);
		});
		
	}
	
}

maxApi.addHandlers(handlers);