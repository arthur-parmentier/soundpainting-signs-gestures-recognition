const maxApi = require("max-api");
var lineReader = require('line-reader');

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
}



const handlers = {
  [maxApi.MESSAGE_TYPES.ALL]: (handled, file_path) => {
    
	recover_labels(file_path)
	
  }
};

maxApi.addHandlers(handlers);

function recover_labels(path) {
	
	lineReader.eachLine(path, function(line) {
		if (line.includes('label')) {
			
			o(line);
		}
	});
}