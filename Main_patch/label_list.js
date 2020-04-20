const maxApi = require("max-api");

var labels = [];
var dict = {};

function p(msg) {
	
	maxApi.post(msg);
}

function o(msg) {
	
	maxApi.outlet(msg);
}

const handlers = {
  "label": (label) => {
    
	let [cat, sign] = sign_regexp(label);
	
	if(cat == null || sign == null)
		{
			p("Error in sign input. Please follow the format <category>:<sign_name>");
			
		} else {
			
			labels.push(label);
			labels = Array.from(new Set(labels));
			o(["/list", ...labels]);
			
			dict = {};
			for(var i = 0; i<labels.length; i++) {
				
				let [cat, sign] = sign_regexp(labels[i]);

				if(cat == null || sign == null)
				{
					p("Error in sign input. Please follow the format <category>:<sign_name>");
					
				} else {
					
					if(dict[cat] == null) {
						dict[cat] = [];
					}
					dict[cat].push(sign);
				}
				
				o(["/dict", dict]);
			}
		}
	
	
	
	
	
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