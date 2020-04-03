const maxApi = require("max-api")
const { readdirSync, statSync } = require('fs')
const { join } = require('path')

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
}

function getDirectories(srcpath) {
  return [readdirSync(srcpath).filter(file => statSync(join(srcpath, file)).isDirectory()), readdirSync(srcpath).map(file => join(srcpath, file)).filter(path => statSync(path).isDirectory())];
}

let path = __dirname + "/training_data";

let [dir_names, dir_paths] = getDirectories(path);

for(var i = 0; i<dir_names.length; i++) {
	
	let command = "readfolder " + dir_paths[i].replace(/\\/g, "\/" ) + " @type txt @name " + dir_names[i] + " @buffername filename";
	o(command);
}