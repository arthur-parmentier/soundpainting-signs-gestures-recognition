autowatch = 1;

outlets = 2;
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
	
	//p(dict);
	o(1, "bang");
	
}

function models(list) {
	
	models_list = list;
	
	for(var i = 0; i<models_list.length; i++) {
		
		dict[models_list[i]] = {"input_name": "", "input_size": 0};
	}
	
	o(0, "clear");
	
}

function inputs(list) {
	
	input_list = list;
	
	p(input_list)
	
	o(0, "clear");
	
}

function input_sizes(list) {
	
	input_sizes_ = list;
	
	o(0, "clear");
	
}