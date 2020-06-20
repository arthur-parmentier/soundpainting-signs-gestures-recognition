autowatch = 1;

outlets = 1;
inlets = 1;

var debug = 1;
var models_names = [];
var active_tab = 0;
var bpatchers_obj = [];

function p(msg) {
	
	if(debug) {
		post(msg);
	}
}	

function o(n ,msg) {
	
	outlet(n, msg);
}

function msg_int(i) { // the integer from the tabs
	
	active_tab = i;
	update_tab();
}

function models() {
	
	var list = arrayfromargs(arguments);
	// p(list);
	models_names = list;
	
	clear();
	
	var a = 0;
	var b = 30;
	var c = 855;
	var d = 435;
	
	for(var i=0; i<models_names.length; i++) {
		
		bpatchers_obj.push(patcher.newobject("bpatcher", "@embed", 0, "@name", "buffer_management.maxpat", "@patching_rect", a, b, c, d, "@presentation_rect", a, b, c, d, "@varname", models_names[i] + "_bpatcher", "@hidden", 1));
		
		
		// o(0,["script", "newobject", "bpatcher", "@name", "buffer_management.maxpat", "@patching_rect", a, b, c, d, "@presentation_rect", a, b, c, d, "@varname", models_names[i] + "_bpatcher"])
		// o(0,["script", "sendbox", models_names[i] + "_bpatcher", "hidden", 1])
	}
	
	update_tab();
}

function clear() {
	
	for(var i=bpatchers_obj.length-1; i>-1; i--) {
		
		patcher.remove(bpatchers_obj[i]);
		// o(0,["script", "delete", models_names[i] + "_bpatcher"]) // delete the bpatchers
	}
	
	bpatchers_obj = [];
}

function update_tab() {
	
	for(var i = 0; i<bpatchers_obj.length; i++) {
		
		bpatchers_obj[i].hidden = 1;
	}
	
	// p("active tab : " + active_tab);
	bpatchers_obj[active_tab].hidden = 0;
}