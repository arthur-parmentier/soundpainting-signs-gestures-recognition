autowatch = 1;

outlets = 1;
inlets = 1;

var debug = 0;
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
	
	if(list != models_names) { // I do this so that it does not reload at every initialization. TODO: improve the bpatcher loading system so that it does not take so much time to load. Perhaps here we can ask it to only load models that are not already there. 
	
		models_names = list;
		
		clear();
		
		var a = 0;
		var b = 0;
		var c = 855;
		var d = 435;
		
		for(var i=0; i<models_names.length; i++) {
			
			// var obj = patcher.newobject("bpatcher", "@embed", 0, "@name", "buffer_management.maxpat", "@patching_rect", a, b, c, d, "@presentation_rect", a, b, c, d, "@varname", models_names[i] + "_bpatcher", "@hidden", 1);
			
			var obj = patcher.newdefault(a, b, "bpatcher", "@embed", 0, "@name", "buffer_management.maxpat", "@patching_rect", a, b, c, d, "@presentation_rect", a, b, c, d, "@varname", models_names[i] + "_bpatcher", "@hidden", 1, "@args", models_names[i]);
			
			patcher.message('script', 'sendbox', models_names[i] + "_bpatcher", 'presentation', 1);
			
			bpatchers_obj.push(obj);
			
			// o(0,["script", "newobject", "bpatcher", "@name", "buffer_management.maxpat", "@patching_rect", a, b, c, d, "@presentation_rect", a, b, c, d, "@varname", models_names[i] + "_bpatcher"])
			// o(0,["script", "sendbox", models_names[i] + "_bpatcher", "hidden", 1])
		}
		
		update_tab();
	}
}

function clear() { // this clears the current bpatchers
	
	for(var i=bpatchers_obj.length-1; i>-1; i--) {
		
		patcher.remove(bpatchers_obj[i]);
		// o(0,["script", "delete", models_names[i] + "_bpatcher"]) // delete the bpatchers
	}
	
	bpatchers_obj = [];
}

function update_tab() { // this updates which bpatcher is shown
	
	p("active tab : " + active_tab);
	p("number of bpatchers : " + bpatchers_obj.length);
	
	for(var i = 0; i<bpatchers_obj.length; i++) {
		
		bpatchers_obj[i].hidden = 1;
	}
	
	
	bpatchers_obj[active_tab].hidden = 0;
}