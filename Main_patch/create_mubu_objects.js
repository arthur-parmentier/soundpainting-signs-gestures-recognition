autowatch = 1;

outlets = 0;
inlets = 1;

var debug = 1;

var models_list = [];
var obj_list = [];

function models() {
	
	models_list = arrayfromargs(arguments);
	
	for(var i = 0; i<models_list.length; i++) {
			
		var obj = patcher.newdefault(0, 0, "mubu", "@embed", 0, "@name", models_list[i]);
		obj_list.push(obj);
	}
}

function clear() {
	
	for(var i=obj_list.length-1; i>-1; i--) {
		
		patcher.remove(obj_list[i]);
	}
	
	obj_list = [];
}

function p(msg) {
	
	if(debug) {
		post(msg);
	}
}	

function o(n ,msg) {
	
	outlet(n, msg);
}