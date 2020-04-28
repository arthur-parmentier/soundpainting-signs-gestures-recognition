const maxApi = require("max-api");

var label_list = [];
var dict = {};

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
}

const handlers = {
  "label": (...labels) => {
	  
	  label_list = [];
	  dict = {};
    
	for(var i = 0; i<labels.length; i++) {
		
		let [cat, sign] = sign_regexp(labels[i]);

		if(cat == null || sign == null)
		{
			p("Error in sign input " + labels[i] + ". Please follow the format <category>:<sign_name>");
			
		} else {
			
			label_list.push(labels[i]);

			if(dict[cat] == null) {
				dict[cat] = [];
			}
			dict[cat].push(sign);
		}
	}
	
	label_list = Array.from(new Set(label_list)); // we do not allow for repetitions at this stage...
	
	o(["/list", ...label_list]);
	o(["/dict", dict]);
  },
  
  "clearall": () => {
	  
	  labels = [];
	  dict = {};
	  
	  o(["/list", ""]);
	  o(["/dict", dict]);
  }
};

maxApi.addHandlers(handlers);

function sign_regexp(msg) {
		
	let separator = new RegExp(":"); 
	return msg.split(separator);
		
}