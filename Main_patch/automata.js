const maxApi = require("max-api");
const StateMachine = require('javascript-state-machine');
const visualize = require('javascript-state-machine/lib/visualize');
let StateMachineHistory = require('javascript-state-machine/lib/history');

function p(msg) { // convenience function for debug
	maxApi.post(msg);
}

let fsm = new StateMachine({
    init: 'start',
    transitions: [
	// neutral
		{ name: 'neutral', from: '*', to: this.state },
	
	// First request. TODO: complete it
    	{ name: 'who', from: ['start', 'who1', 'what1'], to: 'who1' },
    	{ name: 'what', from: ['who1', 'with1'], to: 'what1' },
    	{ name: 'how', from: ['what1','with1'], to: 'what1' },
		{ name: 'with', from: 'what1', to: 'with1' },
    	{ name: 'when', from: 'what1', to: 'execution' },
		
	// Main loop. TODO: complete it
	
		// To "who" state
		{ name: 'who', from: ['what', 'execution', 'who'], to: 'who' },
		{ name: 'group', from: 'what', to: 'who' }, // TODO: implement transition verification
		
		// To "what" state
		{ name: 'what', from: ['execution', 'who'], to: 'what' },
		{ name: 'what', from: ['with','without','add'], to:  'what' },
		{ name: 'how', from: ['who', 'execution',  'what'], to:  'what' },
		
		// To empty request
		{ name: 'off', from: ['execution','who'], to: 'execution' },
		{ name: 'when', from: 'what', to: 'execution' },
		
		// To sign-specific (logic etc) states
		{ name: 'add', from: 'what', to: 'add' },
		{ name: 'with', from: 'what', to: 'with' },
		{ name: 'without', from: 'what', to: 'without' }
		
    ],
	data: {
		// some utility arrays for the dynamic of the parsing, that are used as stacks
		what_array: [],
		who_array: [],
		how_array: [], // unused
		
		// this group object should store the predefined grouping of the orchestra. The "whole group" can be computed from this list later.
		// the wholegroup sign uses this object to create the list of all instruments BUT signs of the WHO cat that are part of the groups object will still be added as individual elements to the who_array... whether this is intended or not.
		// the best naming for the group elements is <groupname> + <number>
		
		// WARNING: NEVER use circular-groups like group1: group2, group2: group1 or group1: group1 ... This would result in an infinite loop.. and I don't know what would happen; it would probably crash or stop the execution
		
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
			"start": 0.0,
			"volume": 0.8,
			
		},
		
		what_history: [],
		who_history: [],
		
		content_distribution: {}, // array that stores how the different contents are distributed among the who identifiers
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
			if(this.requests[this.requests_counter]["who"] == null) {
				this.requests[this.requests_counter]["who"] = {}; // We add a new entry for the who identifier
			}
		
			// Store the corresponding who identifiers to the stack after parsing them
			let whos = parse_who(sign);
			
			for(var i = 0; i<whos.length; i++) {
				
				fsm.who_array.push(whos[i]);
				
				// Store the who identifiers into the request	
				if(this.requests[this.requests_counter]["who"][whos[i]] == null) { // Here we check that the who identifier has not been already used in the request, which should be the normal case.
					this.requests[this.requests_counter]["who"][whos[i]] = {}; // We add a new entry for the who identifier
				} else { // if already mentionned, something is weird.. maybe a soundpainting beginner? or in case forget about it did not erase things
					maxApi.post(whos[i] + " already requested to perform in the same sentence...");
				}
			}
			
			update_outlet();
		},
		
		onAfterWhat: function(args, sign) { // When we receive a WHAT sign
			
			// Store the sign to the stack
			this.what_array.push(sign);
			
			for (var i = 0; i<this.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the content is applied to all of them
			
				// Store the sign into the request
				if(this.requests[this.requests_counter]["who"][this.who_array[i]][sign] == null) { // we make sure that the content was not already there in the request, which is the expected normal case
					this.requests[this.requests_counter]["who"][this.who_array[i]][sign] = {"start": this.defaults["start"]}; // in this case, we create a new entry for the content (empty to store parameters if requested) in the request
				} else { // something is probably wrong, so we can send a warning in the console
					maxApi.post(sign + " already requested to perform in the same sentence...");
				}
				
				// Update content distribution array
				if(this.content_distribution[sign] == null) {
					this.content_distribution[sign] = {};
				}
				this.content_distribution[sign][this.who_array[i]] = {};
			}
			
			update_outlet();
		},
			
		onLeaveWhat1: function() { // Warning, this gets executed AFTER onBefore<nextsign> but BEFORE onAfter...
			
			this.who_array = [];
		},
		
		onLeaveWhat: function() {
			
			this.who_array = [];
		},
		
		onAfterHow: function(args, sign) { // When we receive a HOW sign
			
			// Store the sign to the stack
			this.how_array.push(sign);
			
			let parameter_values = capture_parameter(sign); // We leave this for the future, when we will want to capture parameters such as volume or tempo values with space mappings
			
			for (var i = 0; i<this.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the content parameters are applied to all of them
				
				last_what = this.what_array[this.what_array.length - 1]; // Assuming that the content parameter always applies to the last (and unique) content requested
				this.requests[this.requests_counter]["who"][this.who_array[i]][last_what][sign] = parameter_values; // we create an entry for the parameter under the content entry or the request array
				
				// update the distribution array
				if(this.content_distribution[last_what][this.who_array[i]] == null) {
					this.content_distribution[last_what][this.who_array[i]] = [];
				}
				
				this.content_distribution[last_what][this.who_array[i]][sign] = parameter_values;
			}
			
			update_outlet();
		},
		
		onBeforeWhen: function(args, sign) {
		
			this.requests[this.requests_counter]["when"] = sign;
			
			update_outlet();
		},
		
		onBeforeOff: function() {
			
			for(var i = 0; i<this.who_array.length; i++) {
			
				this.requests[this.requests_counter]["who"][this.who_array[i]] = {"off": {}}; // TODO: check whether off should be obj or other type
			}
			
			// update distribution array
			for(var i = 0; i<this.Object.keys(distribution).length; i++) {
				
				// let exists = Object.values(obj).includes("test1");
			}
			
		},
		
		onEnterExecution: function() {
			
			execute_request(this.requests_counter);
			
			// we increase the #requests counter and add a new entry in the requests object
			this.requests_counter++;
			this.requests[this.requests_counter] = {};
			
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
	}

	return Array.from(new Set(who_list)); // we only keep unique identifiers (in case some where shared among two or more groups)
}

function update_outlet() { // this function is used every time we want to see the updates of the arrays/objects in max patch, for instance to debug
	
	maxApi.outlet(["/who", fsm.who_array]);
	maxApi.outlet(["/what", fsm.what_array]);
	maxApi.outlet(["/how", fsm.how_array]);
	maxApi.outlet(["/requests", fsm.requests]);
	maxApi.outlet(["/distrib", fsm.content_distribution]);
	maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]);
}

function sign_regexp(msg) {
		
	let separator = new RegExp(":"); 
	return msg.split(separator);
		
}

function capture_parameter(parameter) {
	
	// TODO: implement parameter capture
	let values = {value: "(captured value)"};
	
	return values; 
}

const handlers = { // this is where we define what input messages we can catch, and what it does
	
	"sign": (arg1) => {

		let [cat, sign] = sign_regexp(arg1);
		fsm[cat](sign); // trigger the corresponding transition method
		
		maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]); // we output the current state after the transition method has been handled, in cas it has changed
		
	},
};

function initialize() { // this function is triggered only once at script startup 

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
	
}

function execute_request(index) { // this function is triggered at each execution. It parses the request and ouputs in the outlet all the commands for each instrument
	
	// output form: /<who> /<what> @start 0s @<param1> @<param2> ...
	
	/* request = fsm.requests[index];
	
	for(var i = 0; i<Object.keys(request["who"]).length; i++) {
		
		let string = ["/"+Object.keys(request["who"])[i]];
		let who_obj = request["who"][Object.keys(request["who"])[i]];
		
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
			string.push("@start");
			string.push("0s"); 
		} else {
			// Implement later other execution scenarios
		}
			
	}*/
		
	// output form: /<who> /<what>/start 0 /<what>/<param1> /<what>/<param2> ...
	
	request = fsm.requests[index];
	
	
	
	for(var i = 0; i<Object.keys(request["who"]).length; i++) {

		const result = [...format(request["who"])];
		maxApi.outlet(["/debug", result]);
		// p(result);
	
	}
	 
	 // ---------------------------------
		
	// maxApi.outlet(string);
}

function* format(obj, previous = "") {
       for(const [key, value] of Object.entries(obj)) {
         if(typeof value !== "object" || Array.isArray(value)) {
           yield { addr: previous + "/" + key, args: value };
         } else {
           yield* format(value, previous + "/" + key);
        }
      }
    }



// Code execution starts here

initialize(); // The handlers are added here, so that the script responds to input messages