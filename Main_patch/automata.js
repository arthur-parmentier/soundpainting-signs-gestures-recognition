/*
Author: Arthur Parmentier (2020)

Soundpainting automata

This code implements a finite state machine that represents the soundpainting regular language

It receives signs from messages in the following form:

"sign <category>:<sign_name>"

and outputs

- the current state
- the request to each instrument/identifier identifier
- several "helper/debug" arrays

*/

const maxApi = require("max-api");
const StateMachine = require('javascript-state-machine');
const visualize = require('javascript-state-machine/lib/visualize');
let StateMachineHistory = require('javascript-state-machine/lib/history');

function p(msg) { // convenience function for debug
	maxApi.post(msg);
}

function o(msg) { // convenience function for outlet
	maxApi.outlet(msg);
}

let fsm = new StateMachine({
    init: 'Start',
    transitions: [
	// neutral
		{ name: 'neutral', from: '*', to: this.state },
	
	// First request. TODO: complete it
    	{ name: 'identifier', from: ['Start', 'Who1', 'What_How1'], to: 'Who1' },
		{ name: 'number', from: ['Who1'], to: 'Who1' },
    	{ name: 'content', from: ['Who1'], to: 'What_How1' },
		// { name: 'continue', from: 'Who1', to: 'What_How1' },
    	{ name: 'modifier', from: ['What_How1'], to: 'What_How1' },
		//{ name: 'with', from: 'What_How1', to: 'Logic1' },
    	{ name: 'timing', from: 'What_How1', to: 'Execution' },
		
	// Main loop. TODO: complete it
	
		// To "identifier" state
		{ name: 'identifier', from: ['What_How', 'Execution', 'Who'], to: 'Who' },
		{ name: 'group', from: 'What_How', to: 'Who' }, // TODO
		{ name: 'number', from: 'Who', to: 'Who' },
		
		// To "What_How" state
		{ name: 'content', from: ['Execution', 'Who'], to: 'What_How' },
		{ name: 'modifier', from: ['Who', 'Execution',  'What_How'], to:  'What_How' },
		// { name: 'continue', from: 'Who', to: 'What_How' },
		
		// To empty request
		{ name: 'off', from: ['Execution','Who'], to: 'Execution' },
		{ name: 'timing', from: 'What_How', to: 'Execution' },
		
		// To sign-specific (logic etc) states
		// name: 'add', from: 'What_How', to: 'Logic' },
		// { name: 'with', from: 'What_How', to: 'Logic' },
		// { name: 'without', from: 'What_How', to: 'Logic' }
		
    ],
	data: {
		// some utility arrays for the dynamic of the parsing, that are used as stacks
		content_array: [],
		identifier_array: [],
		// modifiers_array: [], // unused
		previous_identifier_array: [],
		
		// this group object should store the predefined grouping of the orchestra. The "identifierle group" can be computed from this list later.
		// the identifierlegroup sign uses this object to create the list of all instruments BUT signs of the WHO cat that are part of the groups object will still be added as individual elements to the identifier_array... whether this is intended or not.
		// the best naming for the group elements is <groupname> + <number>
		
		// WARNING: NEVER use circular-groups like group1: group2, group2: group1 or group1: group1 ... This would result in an infinite loop.. and I don't know content would happen; it would probably crash or stop the Execution
		
		// TODO: generate the object from external dict
		groups: { 
			"numerics": ["numerics1", "numerics2", "numerics3","numerics4", "numerics5"],
			"percussions": ["percussions1", "percussions2", "percussions3"], // of course we could also name one "drums" but then we loose the identification with group+number
			"group1": ["percussions", "numerics1","numerics2"], // SP allows for custom groups, that are usually defined at performance time. warning: this will be difficult to parse, so we need some kind of recursivity to parse this.
			// identifierlegroup is added here after initialization 
			"singers": ["singers1", "singers2", "singers3"],
			"strings": ["strings1", "strings2", "strings3"]
		},
		
		defaults: {
			// flags have default values and start with uppercases. They are used to define the "type" of request and ultimately, content keywaord will be sent to the outside world: start a sound, stop a sound or continue...
			"Start": 0,
			"Off": 0,
			"Continue": 0, // the zero here is probably meaningless
			
			// we have other defaults that are not "flags": they don't 
			"volume": 0.8,
			"tempo": 120,
			
		},
		
		content_history: [],
		identifier_history: [],
		
		content_distribution: {}, // array that stores the content that is played by each identifier
		reverse_content_distribution: {}, // array that stores identifier is playing each content type
		
		requests: {0: {}}, // array that stores the requests over time and structure them
		requests_counter: 0, // integer that corresponds to the index of the actual request (increased everytime the request is executed)
	},
	
	methods: {
		onInvalidTransition: function(transition, from, to) {
			maxApi.outlet(["/error", "Transition " + transition + " from state " + from + " not allowed."]);
		},
		
		onAfterIdentifier: function(args, sign) { // Warning: do not use onBeforeWho to because some actions are taking place when leaving the contentmodifier states
		
			let identifiers = parse_identifier(sign);
			
			if(identifiers.includes(null)) {

				// null indicates that we probably have some error with a meaningless "rest of the group". In that case, we want to throw dome error and not enter the identifier state.
				
				maxApi.outlet(["/error", identifiers[1]]); // the second part should be the error description
				p(["/error", identifiers[1]]);
				
				return false; // we cancel the transition and stay at the actual state
			} else {
				
				// TODO: check for duplicates instead of pushing
				this.identifier_array.push(...identifiers);
			}
			
			// Reset content array
			this.content_array = [];
			
			// Create the identifier entry in the request if neccessary
			if(this.requests[this.requests_counter] == null) {
				this.requests[this.requests_counter] = {}; // We add a new entry for the identifier identifier
			}
			
			fill_request_identifier(); // fills the request array with the identifier array
			
			update_outlet();
		},
		
		onAfterNumber: function(args, sign) {
			
			// TODO
		},
		
		onLeaveWho1: function() {
			
			this.onLeaveWho();
		},
		onLeaveWho: function() { // to deal with numbers, we only fill the request on leaving the who state
			
			// fill_request_identifier(); // fills the request array with the identifier array
		},
		
		onAfterContent: function(args, sign) { // When we receive a WHAT sign. WARNING: may be necessary to change it to onBefore (for logic)
			
			let [contents, flag] = parse_content(sign); // we also use a parsing here to handle specific cases like "continue", "this"...
			
			// Store the sign(s) to the stack
			for(var i = 0; i<contents.length; i++) { this.content_array.push(contents[i]); }
			
			// if identifier_array is empty, then we fill it with the identifiers of the last request and update the request array accordingly
			if(this.identifier_array.length == 0) {
				
				this.identifier_array = this.previous_identifier_array;
				fill_request_identifier();
			}
			
			// now we want to have a different behiavior depending on the flag (continue, start...). 
			if(flag != "Continue") {
				
				stop_old_content();
			}
			
			fill_request_content(flag); // fill the request object with the content signs from content_array
			
			update_outlet();
		},
			
		onLeaveWhatHow1: function() {
			
			this.onLeaveWhatHow();
		},
		
		onLeaveWhatHow: function() { // Warning, this gets executed AFTER onBefore<nextsign> but BEFORE onAfter...
			
			// we fill the previous_identifier_array
			this.previous_identifier_array = this.identifier_array;
			this.identifier_array = [];
		},
		
		onAfterModifier: function(args, sign) { // When we receive a HOW sign
			
			// if identifier_array is empty, then we fill it with the identifiers of the last request and update the request array accordingly
			if(this.identifier_array.length == 0) {
				
				this.identifier_array = this.previous_identifier_array;
				fill_request_identifier();
				
				// then we check if a content has been specified yet
				if(this.content_array.length == 0) {
					
					// if not, then the modifier only relates to last requested contents
					this.content_array = this.previous_content_array;
					fill_request_content("Continue"); // is there any case where the "Continue" flag is not the right one?
				}
				
			} else { // we know an identifier was used but not if a content was specified
				
				// then we check if a content has been specified yet
				if(this.content_array.length == 0) {
					
					// if not, then the modifier relates to everything that the designated performers are doing
					
					// Find everything that the designated performers are doing and add it to content_array
					for(var i = 0; i<this.identifier_array.length; i++) {
						
						// we push to the content_array everything that is played by all the designated performers.
						if(Object.keys(this.content_distribution[this.identifier_array[i]]) != null) {
							
							this.content_array.push(Object.keys(this.content_distribution[this.identifier_array[i]]));
						}
					}
					
					fill_request_content("Continue"); // is there any case where the "Continue" flag is not the right one?
				}
			}
			
			// Store the sign to the stack
			this.how_array.push(sign);
			
			let parameter_values = capture_parameter(sign); // We leave this for the future, when we will want to capture parameters such as volume or tempo values with space mappings
			
			// this is content would be the fill_request_how() function, except it has no use elsewhere (yet).
			for (var i = 0; i<this.identifier_array.length; i++) { // in case multiple identifier identifiers were use, we want to make sure that the Contents parameters are applied to all of them
				
				for(var j = 0; j<this.content_array.length; j++) {
				
					let content = this.content_array[j];
					this.requests[this.requests_counter][this.identifier_array[i]][content][sign] = parameter_values; // we create an entry for the parameter under the Contents entry or the request array
					
					// update the distribution array
					if(this.reverse_content_distribution[content][this.identifier_array[i]] == null) {
						this.reverse_content_distribution[content][this.identifier_array[i]] = [];
					}
					
					this.reverse_content_distribution[content][this.identifier_array[i]][sign] = parameter_values;
				}
			}
			
			update_outlet();
		},
		
		onBeforeTiming: function(args, sign) { // in order to execute this prior to onEnterExecution
		
			// Update Start values TODO
			
			update_outlet();
		},
		
		onBeforeOff: function() { // we need a before here as for when, in order to execute this prior to onEnterExecution
			
			// if identifier_array is empty, then we fill it with the identifiers of the last request and update the request array accordingly
			if(this.identifier_array.length == 0) {
				
				this.identifier_array = this.previous_identifier_array;
				fill_request_identifier();
			}
			
			stop_old_content(); // it's enough to stop everything. WARNING: identifier array may not be updated if we are using beforeOff..
			
			if(this.state == "Execution") {
				
				this.onEnterExecution(); // even if we do not enter again the execution state we need to execute the request as if we do
			}
		},
		
		onEnterExecution: function() {
			
			execute_request(this.requests_counter);
			
			// we increase the #requests counter and add a new entry in the requests object
			this.requests_counter++;
			this.requests[this.requests_counter] = {};
			
			// we store the last requested content
			this.previous_content_array = this.content_array;
			
			// we reset each request stack
			this.identifier_array = [];
			this.content_array = [];
			this.how_array = [];
			
			update_outlet();
		},
	},	
	
	plugins: [
      new StateMachineHistory()
    ]
});

function fill_request_identifier() {
	
	for(var i= 0; i<fsm.identifier_array.length; i++) {
					
		// Store the identifier identifiers into the request	
		if(fsm.requests[fsm.requests_counter][fsm.identifier_array[i]] == null) { // Here we check that the identifier identifier has not been already used in the request, which should be the normal case.
			fsm.requests[fsm.requests_counter][fsm.identifier_array[i]] = {}; // We add a new entry for the identifier identifier
		} else { // if already mentionned, something is weird.. maybe a soundpainting beginner? or in case forget about it did not erase things
			maxApi.post(fsm.identifier_array[i] + " already requested to perform in the same sentence...");
		}
	}
}

function fill_request_content(flag) {
	
	for(var j = 0; j<fsm.content_array.length; j++) {
		
		let sign = fsm.content_array[j];
	
		for (var i = 0; i<fsm.identifier_array.length; i++) { // in case multiple identifier identifiers were use, we want to make sure that the Contents is applied to all of them
				
			// Store the sign into the request
			if(fsm.defaults[flag] == null) {
				maxApi.post("warning: unknown flag; defaults value to 0");
				fsm.defaults[flag] = 0; // we create the flag with 0 as default value
			}
			
			if(fsm.requests[fsm.requests_counter][fsm.identifier_array[i]][sign] != null) { // we check if the content was already in the request // something is probably wrong, so we can send a warning in the console
			
				maxApi.post(sign + " already included in the request for the same performer.");
			} else {
				
				fsm.requests[fsm.requests_counter][fsm.identifier_array[i]][sign] = {};
			}
			fsm.requests[fsm.requests_counter][fsm.identifier_array[i]][sign][flag] = fsm.defaults[flag]; // in fsm case, we create a new entry for the Contents (empty to store parameters if requested) in the request
				
			
			
			if(flag != "continue") { // in the case of "continue" the content arrays do not change
				
				// Update reverse content distribution array
				if(fsm.reverse_content_distribution[sign] == null) {
					fsm.reverse_content_distribution[sign] = {};
				}
				fsm.reverse_content_distribution[sign][fsm.identifier_array[i]] = {};
				
				// Update content distribution array
				if(fsm.content_distribution[fsm.identifier_array[i]] == null) {
					fsm.content_distribution[fsm.identifier_array[i]] = {};
				}
				fsm.content_distribution[fsm.identifier_array[i]][sign] = {};
			}
		}
	}
	
}


function parse_content(sign) {
	
	let output = [];
	
	if(sign == "continue") { // with continue, we want to make a request with the same content that designated performers were playing, but without start and stop, but that allows anyay for parameters to be changed, such as volume... Or we could also output "continue" as a command? not sure it's relevant.
		
		let contents = [];
		
		// we get the contents from the content distribution array for each identified performer
		for(var i = 0; i<fsm.identifier_array.length; i++) {
			
			// we must first check that the performer was indeed doing something...
			if(fsm.content_distribution[fsm.identifier_array[i]] != null) {
			
				for(var j = 0; j<Object.keys(fsm.content_distribution[fsm.identifier_array[i]]).length; j++) {
					
					contents.push(Object.keys(fsm.content_distribution[fsm.identifier_array[i]])[j]);
					
					//fsm.content_array.push(content);
				}
			} else { o(["/error","Warning: continue requested while performer " + fsm.identifier_array[i] + " is not playing anything."]); }
		}
			
		output = [contents, "Continue"];
			
	} else { output = [[sign], "Start"];}
	
	return output;
}

function parse_identifier(sign) {
	
	let identifier_list = [];
	
	// let's first catch the "rest of the group" special case ---------------------------------------------------------
	if(sign == "restofthegroup") {
		
		identifier_list = parse_restofthegroup();
		return Array.from(new Set(identifier_list));
	}
	
	// ---------------------------------------------------------------------------------------------------------------------------
	
	// we first look into the groups if that name exists
	if(Object.keys(fsm.groups).includes(sign)) {
		
		// we parse again each entry of the group
		for(var i = 0; i<fsm.groups[sign].length; i++) {
			
			let parsed = parse_identifier(fsm.groups[sign][i]);
			
			for(var j = 0; j<parsed.length; j++) {
				
				identifier_list.push(parsed[j]);
			}
		}
	} else {
		
		// we add it to the identifier array
		identifier_list.push(sign);
		
		// if we used a sign that is not part of any group, we need to add it to the "wholegroup" array if not already there
		if(fsm.groups["wholegroup"] != null && !fsm.groups["wholegroup"].includes(sign)) {
			
			fsm.groups["wholegroup"].push(sign);
			// p(sign);
		}
	}

	return Array.from(new Set(identifier_list)); // we only keep unique identifiers (in case some where shared among two or more groups)
}

function parse_restofthegroup() {
	
	let identifier_list = [];
	let rest = [];
	/*
	In general, "rest of the group" is ambiguous, because it is not always obvious identifier is part of the rest.
	
	For intance:
	
	Trumpet 1 longtone play
	Trumpet 2 minimalism play
	Rest of the group pointillism play
	
	Should Trumpet 1 also play the pointillism?
	
	One way of disambiguation is to say "trumpet 1 2 continue rest of the group pointillism play".
	By default, we will assume that the soundpainter uses continue, otherwise the rest of the group is "identifierle group except those identifier were identified during the actual request OR those mentionned during the previous request if the actual one is empty".
	
	*/
	
	// if identifier array is not empty, it's a problem
	if(fsm.identifier_array.length != 0) {
		
		return [null, "Rest of the group can not be used with other identifiers"];
	}
	
	// check IF anyone was identified in the actual request
	if(Object.keys(fsm.requests[fsm.requests_counter]).length == 0) { // we must take the identifiers of the previous request
		
		// check if there is a previous request...
		if(fsm.requests_counter<1) {
			
			// throw some error here...
			return [null, "Rest of the group cannot be used without first identifying performers"];
			//return [];
		} else { // it's ok, there is a previous request
			
			identifier_list = Object.keys(fsm.requests[fsm.requests_counter-1]);
		}
		
	} else { // we must update the identifier_array with everyone that was mentionned at some point during the actual request
		
		identifier_list = Object.keys(fsm.requests[fsm.requests_counter]);
	}
	
	// at this point, the identifier_array is set
	
	for(var i = 0; i<fsm.groups["wholegroup"].length; i++) {
		
		if(!identifier_list.includes(fsm.groups["wholegroup"][i]))
		{
		
			rest.push(fsm.groups["wholegroup"][i]);
		}
	}
	
	return rest;
}

function stop_old_content() {
	
	// Send stop commands for content that was being played before
	for(var i = 0; i<fsm.identifier_array.length;i++) {
		
		if(fsm.content_distribution[fsm.identifier_array[i]] != null) {
			
			for(var j = 0; j<Object.keys(fsm.content_distribution[fsm.identifier_array[i]]).length; j++) {
				
				let content = Object.keys(fsm.content_distribution[fsm.identifier_array[i]])[j];
				
				// let's add the stop command to the request
				fsm.requests[fsm.requests_counter][fsm.identifier_array[i]][content] = {"Off": fsm.defaults["Off"]};
				
				// let's remove the content from the reverse content distribution
				delete fsm.reverse_content_distribution[content][fsm.identifier_array[i]];
				if(Object.keys(fsm.reverse_content_distribution[content]).length == 0) {
				
					delete fsm.reverse_content_distribution[content];
				}
			}
		}
		
		delete fsm.content_distribution[fsm.identifier_array[i]]; // we delete the entry in the content distribution, it's going to get updated during the fill_request_content again with new content
	}
}

function update_outlet() { // this function is used every time we want to see the updates of the arrays/objects in max patch, for instance to debug
	
	maxApi.outlet(["/identifier", fsm.identifier_array]);
	maxApi.outlet(["/content", fsm.content_array]);
	maxApi.outlet(["/how", fsm.how_array]);
	maxApi.outlet(["/requests", fsm.requests]);
	maxApi.outlet(["/distrib", fsm.content_distribution]);
	maxApi.outlet(["/reverse_distrib", fsm.reverse_content_distribution]);
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

const handlers = { // this is where we define content input messages we can catch, and content it does
	
	"sign": (arg1) => {

		let [cat, sign] = sign_regexp(arg1);
		if (typeof fsm[cat] == "function") {
			
			fsm[cat](sign); // trigger the corresponding transition method
		
			maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]); // we output the current state after the transition method has been handled, in cas it has changed
		}
		else {
			
			o(["/error", "Transition " + cat + " does not exist"]);
		}
		
		
	},
};

function initialize() { // this function is triggered only once at script Startup 

	maxApi.addHandlers(handlers); // add the handlers for the input messages

	update_outlet(); // initialize the debug arrays
	
	maxApi.outlet(["/graph", visualize(fsm, { orientation: 'horizontal' }).replace(/\n/g,"")]); // the graph is not handled by the update_outlet function
	
	// add the identifierlegroup entry in the list of group if it doesnt exist already (we can overide this by creating a custom one manually)
	if(!Object.keys(fsm.groups).includes("wholegroup")) {
		
		let arr = [];
		
		for(var i = 0; i<Object.keys(fsm.groups).length; i++) {
			
			let parsed = parse_identifier(Object.keys(fsm.groups)[i]);
			
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
	
	/* output form: 
	
	/<identifier> /<content>/Start <float>
	/<identifier> /<content>/<param>
	/<identifier> /<content>/Stop <float>
	...
	
	*/
	
	let request = fsm.requests[index];
	
	for(var i = 0; i<Object.keys(request).length; i++) {

		const OSC_structure = [...format(request[Object.keys(request)[i]])]; // Weird call, see related generator "format" below. It does all the job of parsing the nested structure of the request object.
		let flat_command = ["/commands_flat", "/"+Object.keys(request)[i]];
		
		for(var j = 0; j<Object.keys(OSC_structure).length; j++) {
			
			flat_command.push(OSC_structure[Object.keys(OSC_structure)[j]]["addr"]);
			flat_command.push(OSC_structure[Object.keys(OSC_structure)[j]]["args"]);
			
			let commands = ["/commands", "/"+Object.keys(request)[i]+OSC_structure[Object.keys(OSC_structure)[j]]["addr"]];
			commands.push(OSC_structure[Object.keys(OSC_structure)[j]]["args"]);
			
			// Output commands one after another
			maxApi.outlet(commands);
		}
		
		// Output one flat command, the combination of all commands for one request
		maxApi.outlet(flat_command);
	}
}

// This weird generator function allows us to parse the request object and create the OSC message from it (almost directly)
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