const maxApi = require("max-api");
const StateMachine = require('javascript-state-machine');
const visualize = require('javascript-state-machine/lib/visualize');
let StateMachineHistory = require('javascript-state-machine/lib/history');

function p(msg) { // convenience function for debug
	maxApi.post(msg);
}

let fsm = new StateMachine({
    init: 'Start',
    transitions: [
	// neutral
		{ name: 'neutral', from: '*', to: this.state },
	
	// First request. TODO: complete it
    	{ name: 'who', from: ['Start', 'Identifiers1', 'Contents_Modifiers1'], to: 'Identifiers1' },
    	{ name: 'what', from: ['Identifiers1', 'Logic1'], to: 'Contents_Modifiers1' },
    	{ name: 'how', from: ['Contents_Modifiers1','Logic1'], to: 'Contents_Modifiers1' },
		{ name: 'with', from: 'Contents_Modifiers1', to: 'Logic1' },
    	{ name: 'when', from: 'Contents_Modifiers1', to: 'Execution' },
		
	// Main loop. TODO: complete it
	
		// To "who" state
		{ name: 'who', from: ['Contents_Modifiers', 'Execution', 'Identifiers'], to: 'Identifiers' },
		{ name: 'group', from: 'Contents_Modifiers', to: 'Identifiers' }, // TODO: implement transition verification
		
		// To "Contents_Modifiers" state
		{ name: 'what', from: ['Execution', 'Identifiers'], to: 'Contents_Modifiers' },
		{ name: 'what', from: ['with','without','add'], to:  'Contents_Modifiers' },
		{ name: 'how', from: ['Identifiers', 'Execution',  'Contents_Modifiers'], to:  'Contents_Modifiers' },
		
		// To empty request
		{ name: 'off', from: ['Execution','Identifiers'], to: 'Execution' },
		{ name: 'when', from: 'Contents_Modifiers', to: 'Execution' },
		
		// To sign-specific (logic etc) states
		{ name: 'add', from: 'Contents_Modifiers', to: 'add' },
		{ name: 'with', from: 'Contents_Modifiers', to: 'with' },
		{ name: 'without', from: 'Contents_Modifiers', to: 'without' }
		
    ],
	data: {
		// some utility arrays for the dynamic of the parsing, that are used as stacks
		what_array: [],
		who_array: [],
		how_array: [], // unused
		previous_who_array: [],
		
		// this group object should store the predefined grouping of the orchestra. The "whole group" can be computed from this list later.
		// the wholegroup sign uses this object to create the list of all instruments BUT signs of the WHO cat that are part of the groups object will still be added as individual elements to the who_array... whether this is intended or not.
		// the best naming for the group elements is <groupname> + <number>
		
		// WARNING: NEVER use circular-groups like group1: group2, group2: group1 or group1: group1 ... This would result in an infinite loop.. and I don't know what would happen; it would probably crash or stop the Execution
		
		// TODO: generate the object from external dict
		groups: { 
			"numerics": ["numerics1", "numerics2"],
			"actors": ["actors1"],
			"dancers": [],
			"percussions": ["percussions1", "percussions2", "percussions3"], // of course we could also name one "drums" but then we loose the identification with group+number
			"group1": ["percussions", "numerics1"], // SP allows for custom groups, that are usually defined at performance time. warning: this will be difficult to parse, so we need some kind of recursivity to parse this.
			// wholegroup is added here after initialization 
		},
		
		defaults: {
			"Start": "",
			"off": "",
			"volume": 0.8,
			"tempo": 120,
			
		},
		
		what_history: [],
		who_history: [],
		
		contents_distribution: {}, // array that stores how the different Contentss are distributed among the who identifiers
		requests: {0: {}}, // array that stores the requests over time and structure them
		requests_counter: 0, // integer that corresponds to the index of the actual request (increased everytime the request is executed)
	},
	methods: {
		onInvalidTransition: function(transition, from, to) {
			maxApi.outlet(["/error", "Transition " + transition + " from state " + from + " not allowed."]);
		},
		
		
		onAfterWho: function(args, sign) {
		
			// Reset what array
			this.what_array = [];
			
			// Create the who entry in the request if neccessary
			if(this.requests[this.requests_counter] == null) {
				this.requests[this.requests_counter] = {}; // We add a new entry for the who identifier
			}
		
			// Store the corresponding who identifiers to the stack after parsing them
			let whos = parse_who(sign);
			
			for(var i = 0; i<whos.length; i++) {
				
				fsm.who_array.push(whos[i]);
			}
			
			fill_request_who(); // fills the request array with the who array
			
			update_outlet();
		},
		
		onAfterWhat: function(args, sign) { // When we receive a WHAT sign
			
			// Store the sign to the stack
			this.what_array.push(sign);
			
			// if who_array is empty, then we fill it with the identifiers of the last request and update the request array accordingly
			if(this.who_array.length == 0) {
				
				this.who_array = this.previous_who_array;
				fill_request_who();
			}
			
			fill_request_what(sign); // fill the request object with the what sign
			
			update_outlet();
		},
			
		onLeaveContentsModifiers1: function() {
			
			this.onLeaveContentsModifiers();
		},
		
		onLeaveContentsModifiers: function() { // Warning, this gets executed AFTER onBefore<nextsign> but BEFORE onAfter...
			
			// we fill the previous_who_array
			this.previous_who_array = this.who_array;
			this.who_array = [];
		},
		
		onAfterHow: function(args, sign) { // When we receive a HOW sign
			
			// if who_array is empty, then we fill it with the identifiers of the last request and update the request array accordingly
			if(this.who_array.length == 0) {
				
				this.who_array = this.previous_who_array;
				fill_request_who();
				
				// then we check if a content has been specified yet
				if(this.what_array.length == 0) {
					
					// if not, then the modifier only relates to last requested contents
					this.what_array = this.previous_what_array;
					for(var i = 0; i<this.what_array.length; i++) { // what_array can be more than one element usign "add" or equivalent
						
						fill_request_what(this.what_array[i]);
					}
				}
				
			} else { // we know an identifier was used but not if a content was specified
				
				// then we check if a content has been specified yet
				if(this.what_array.length == 0) {
					
					// if not, then the modifier relates to everything that the performer is doing
					
					// TODO: find everything that a performer is doing and add it to what_array
				}
			}
			
			
			
			// Store the sign to the stack
			this.how_array.push(sign);
			
			let parameter_values = capture_parameter(sign); // We leave this for the future, when we will want to capture parameters such as volume or tempo values with space mappings
			
			for (var i = 0; i<this.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the Contents parameters are applied to all of them
				
				last_what = this.what_array[this.what_array.length - 1]; // Assuming that the Contents parameter always applies to the last (and unique) content requested
				this.requests[this.requests_counter][this.who_array[i]][last_what][sign] = parameter_values; // we create an entry for the parameter under the Contents entry or the request array
				
				// update the distribution array
				if(this.contents_distribution[last_what][this.who_array[i]] == null) {
					this.contents_distribution[last_what][this.who_array[i]] = [];
				}
				
				this.contents_distribution[last_what][this.who_array[i]][sign] = parameter_values;
			}
			
			update_outlet();
		},
		
		onBeforeWhen: function(args, sign) {
		
			// Update Start values TODO
			
			update_outlet();
		},
		
		onBeforeOff: function() {
			
			for(var i = 0; i<this.who_array.length; i++) {
			
				this.requests[this.requests_counter][this.who_array[i]] = {"off": this.defaults["off"]}; // TODO: check whether off should be obj or other type
			
				// update distribution array
				for(var j = 0; j<Object.keys(this.contents_distribution).length; j++) {
					
					if(this.contents_distribution[Object.keys(this.contents_distribution)[j]][this.who_array[i]] != null) {
						
						delete this.contents_distribution[Object.keys(this.contents_distribution)[j]][this.who_array[i]];
						
						// if the Contents has no more instruments playing it, delete the Contents entry
						if(Object.keys(this.contents_distribution[Object.keys(this.contents_distribution)[j]]).length == 0) {
						
							delete this.contents_distribution[Object.keys(this.contents_distribution)[j]];
						}
						j--; // we need to update j again because we deleted one item to object keys index must decrease by one
					}
				}
			}
			update_outlet();
		},
		
		onEnterExecution: function() {
			
			execute_request(this.requests_counter);
			
			// we increase the #requests counter and add a new entry in the requests object
			this.requests_counter++;
			this.requests[this.requests_counter] = {};
			
			// we store the last requested content
			this.previous_what_array = this.what_array;
			
			// we reset each request stack
			this.who_array = [];
			this.what_array = [];
			this.how_array = [];
			
			update_outlet();
		},
	},	
	
	plugins: [
      new StateMachineHistory()
    ]
});

function fill_request_who() {
	
	for(var i= 0; i<fsm.who_array.length; i++) {
					
		// Store the who identifiers into the request	
		if(fsm.requests[fsm.requests_counter][fsm.who_array[i]] == null) { // Here we check that the who identifier has not been already used in the request, which should be the normal case.
			fsm.requests[fsm.requests_counter][fsm.who_array[i]] = {}; // We add a new entry for the who identifier
		} else { // if already mentionned, something is weird.. maybe a soundpainting beginner? or in case forget about it did not erase things
			maxApi.post(fsm.who_array[i] + " already requested to perform in the same sentence...");
		}
	}
}

function fill_request_what(sign) {
	
	for (var i = 0; i<fsm.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the Contents is applied to all of them
			
		// Store the sign into the request
		if(fsm.requests[fsm.requests_counter][fsm.who_array[i]][sign] == null) { // we make sure that the Contents was not already there in the request, which is the expected normal case
			fsm.requests[fsm.requests_counter][fsm.who_array[i]][sign] = {"Start": fsm.defaults["Start"]}; // in fsm case, we create a new entry for the Contents (empty to store parameters if requested) in the request
		} else { // something is probably wrong, so we can send a warning in the console
			maxApi.post(sign + " already requested to perform in the same sentence...");
		}
		
		// Update Contents distribution array
		if(fsm.contents_distribution[sign] == null) {
			fsm.contents_distribution[sign] = {};
		}
		fsm.contents_distribution[sign][fsm.who_array[i]] = {};
	}
}

function parse_who(sign) {
	
	let who_list = [];
		
	// we first look into the groups if that name exists
	if(Object.keys(fsm.groups).includes(sign)) {
		
		// we parse again each entry of the group
		for(var i = 0; i<fsm.groups[sign].length; i++) {
			
			let parsed = parse_who(fsm.groups[sign][i]);
			
			for(var j = 0; j<parsed.length; j++) {
				
				who_list.push(parsed[j]);
			}
		}
	} else {
		
		// we add it to the who array
		who_list.push(sign);
		
		// if we used a sign that is not part of any group, we need to add it to the "wholegroup" array if not already there
		if(fsm.groups["wholegroup"] != null && !fsm.groups["wholegroup"].includes(sign)) {
			
			fsm.groups["wholegroup"].push(sign);
			// p(sign);
		}
	}

	return Array.from(new Set(who_list)); // we only keep unique identifiers (in case some where shared among two or more groups)
}

function update_outlet() { // this function is used every time we want to see the updates of the arrays/objects in max patch, for instance to debug
	
	maxApi.outlet(["/who", fsm.who_array]);
	maxApi.outlet(["/what", fsm.what_array]);
	maxApi.outlet(["/how", fsm.how_array]);
	maxApi.outlet(["/requests", fsm.requests]);
	maxApi.outlet(["/distrib", fsm.contents_distribution]);
	maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]);
	maxApi.outlet(["/groups", fsm.groups]);
}

function sign_regexp(msg) {
		
	let separator = new RegExp(":"); 
	return msg.split(separator);
		
}

function capture_parameter(param_name) {
	
	// TODO: implement parameter capture. For now, let's use defaults
	let values = {value: fsm.defaults[param_name]};
	
	return values; 
}

const handlers = { // this is where we define what input messages we can catch, and what it does
	
	"sign": (arg1) => {

		let [cat, sign] = sign_regexp(arg1);
		fsm[cat](sign); // trigger the corresponding transition method
		
		maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]); // we output the current state after the transition method has been handled, in cas it has changed
		
	},
};

function initialize() { // this function is triggered only once at script Startup 

	maxApi.addHandlers(handlers); // add the handlers for the input messages

	update_outlet(); // initialize the debug arrays
	
	maxApi.outlet(["/graph", visualize(fsm, { orientation: 'horizontal' }).replace(/\n/g,"")]); // the graph is not handled by the update_outlet function
	
	// add the wholegroup entry in the list of group if it doesnt exist already (we can overide this by creating a custom one manually)
	if(!Object.keys(fsm.groups).includes("wholegroup")) {
		
		let arr = [];
		
		for(var i = 0; i<Object.keys(fsm.groups).length; i++) {
			
			let parsed = parse_who(Object.keys(fsm.groups)[i]);
			
			for(var j = 0; j<parsed.length; j++) {
				
				arr.push(parsed[j]);
			}
		}
		
		fsm.groups["wholegroup"] = Array.from(new Set(arr));
	}
	
	maxApi.outlet(["/groups", fsm.groups]);
	maxApi.outlet(["/error", ""]);
	
}

function execute_request(index) { // this function is triggered at each Execution. It parses the request and ouputs in the outlet all the commands for each instrument
	
	// ------------------------ output form: /<who> /<what> @Start 0s @<param1> @<param2> ...
	
	/* request = fsm.requests[index];
	for(var i = 0; i<Object.keys(request).length; i++) {
		let string = ["/"+Object.keys(request)[i]];
		let who_obj = request[Object.keys(request)[i]];
		for(var j = 0; j<Object.keys(who_obj).length; j++) {
			string.push("/"+Object.keys(who_obj)[j]);
			let what_obj = who_obj[Object.keys(who_obj)[j]];
			for(var k = 0; k<Object.keys(what_obj).length; k++) {
				let how_obj = what_obj[Object.keys(what_obj)[k]];
				string.push("@" + Object.keys(what_obj)[k]);
				// the parameters themselves are objects
				for(var l = 0; l<Object.keys(how_obj).length; l++) {
					string.push(how_obj[Object.keys(how_obj)[l]]);
				}
			}
		}
		if(request["when"] == "now") {
			string.push("@Start");
			string.push("0s"); 
		} else {
			// Implement later other Execution scenarios
		}
			
	}*/
		
	// ---------------------- output form: /<who> /<what>/Start 0 /<what>/<param1> /<what>/<param2> ...
	
	request = fsm.requests[index];
	
	for(var i = 0; i<Object.keys(request).length; i++) {

		const OSC_structure = [...format(request[Object.keys(request)[i]])]; // Weird call, see related generator "format" below. It does all the job of parsing the nested structure of the request object.
		let flat_command = ["/commands_flat", "/"+Object.keys(request)[i]];
		
		for(var j = 0; j<Object.keys(OSC_structure).length; j++) {
			
			flat_command.push(OSC_structure[Object.keys(OSC_structure)[j]]["addr"]);
			flat_command.push(OSC_structure[Object.keys(OSC_structure)[j]]["args"]);
			
			let commands = ["/commands", "/"+Object.keys(request)[i]];
			commands.push(OSC_structure[Object.keys(OSC_structure)[j]]["addr"]);
			commands.push(OSC_structure[Object.keys(OSC_structure)[j]]["args"]);
			
			// Output commands one after another
			maxApi.outlet(commands);
		}
		
		// Output one flat command, the combination of all commands for one request
		maxApi.outlet(flat_command);
	}
}

// This weird generator function (from the web) allows us to parse the request object and create the OSC message from it (almost directly)
function* format(obj, previous = "") {
	for(const [key, value] of Object.entries(obj)) {
		if(typeof value !== "object" || Array.isArray(value)) {
			yield { addr: previous + "/" + key, args: value };
		} else {
			yield* format(value, previous + "/" + key);
		}
	}
}

// Code Execution Starts here

initialize(); // The handlers are added here, so that the script responds to input messages