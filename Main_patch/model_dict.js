autowatch = 1;

outlets = 2;
inlets = 1;

var debug = 1;

var models_list = [];
var models_corresponding_input_index = [];
var input_list = [];
var input_sizes_ = [];

var dict = new Dict("routing");

function p(msg) {
	
	if(debug) {
		post(msg);
	}
}	

function o(n ,msg) {
	
	outlet(n, msg);
}

function list(x, y, state) {
	
	if(state == 1) {
		
		// name
		dict.replace(models_list[x] + "::input_name", input_list[y]); // Placing value in routing dict
		o(1,["send", models_list[x]+"_input_name"]); // setting the forward obj
		o(1, input_list[y]);
		
		// size
		dict.replace(models_list[x] + "::input_size", input_sizes_[y]); 
		models_corresponding_input_index[x] = y;
		o(1,["send", models_list[x]+"_input_size"]); // setting the forward obj
		o(1, input_sizes_[y]);
	}
	
	if(state == 0) {
		
		dict.replace(models_list[x] + "::input_name", "");
		o(1,["send", models_list[x]+"_input_name"]); // setting the forward obj
		o(1, "");
		dict.replace(models_list[x] + "::input_size", 0); 
		models_corresponding_input_index[x] = -1;
		o(1,["send", models_list[x]+"_input_size"]); // setting the forward obj
		o(1, 0);
	}
	
}

function models() {
	
	dict.clear();
	
	models_list = arguments;
	
	for(var i = 0; i<models_list.length; i++) {
		
		dict[models_list[i]] = {"input_name": "", "input_size": 0};
	}
	
	o(0, "clear");
	
}

function inputs() {
	
	input_list = arguments;
	
	o(0, "clear");
	
}

function input_sizes() {
	
	input_sizes_ = arguments;
	
	for(var i = 0; i<models_list.length; i++) {
		
		var size = 0;
		if(models_corresponding_input_index[i] != -1) {
			
			size = input_sizes_[models_corresponding_input_index[i]];
		}
		
		dict.replace(models_list[i] + "::input_size", size); // dict update
		o(1,["send", models_list[i]+"_input_size"]); // setting the forward obj
		o(1, size);
	}
	// o(0, "clear");
	
	
}