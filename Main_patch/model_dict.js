autowatch = 1;

outlets = 1;
inlets = 1;

var debug = 1;

var models_list = [];
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
		
		dict.replace(models_list[x] + "::input_name", input_list[y]); // [models_list[x]]["input_name"] = input_list[y];
		dict.replace(models_list[x] + "::input_size", input_sizes_[y]); // dict[models_list[x]]["input_size"] = input_sizes[y];
	}
	
	if(state == 0) {
		
		dict.replace(models_list[x] + "::input_name", ""); // [models_list[x]]["input_name"] = input_list[y];
		dict.replace(models_list[x] + "::input_size", ""); // dict[models_list[x]]["input_size"] = input_sizes[y];
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
	
	p(input_list)
	
	o(0, "clear");
	
}

function input_sizes() {
	
	input_sizes_ = arguments;
	
	o(0, "clear");
	
}