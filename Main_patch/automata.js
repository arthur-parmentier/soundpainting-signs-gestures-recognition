const maxApi = require("max-api");
const StateMachine = require('javascript-state-machine');
const visualize = require('javascript-state-machine/lib/visualize');
let StateMachineHistory = require('javascript-state-machine/lib/history');

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
		{ name: 'who', from: ['content parameters', 'execution', 'what (ambiguous: group OR content)', 'content', 'who'], to: 'who' },
		{ name: 'group', from: 'what (ambiguous: group OR content)', to: 'who' },
		
		// To ambiguous "what" state
		{ name: 'what', from: ['execution', 'who'], to: 'what (ambiguous: group OR content)' },
		{ name: 'what (!very ambiguous!)', from:  'content parameters', to: 'what (ambiguous: group OR content)' }, // update this one with a "with group only" state
		
		// To unambiguous what state
		{ name: 'what', from: ['with','without','add'], to:  'content' },
		
		// To "how" state
		{ name: 'how', from: ['who', 'execution', 'what (ambiguous: group OR content)',  'content',  'content parameters'], to:  'content parameters' },
		
		// To empty request
		{ name: 'off', from: ['execution','who'], to: 'execution' },
		{ name: 'when', from: [ 'content parameters',  'content', 'what (ambiguous: group OR content)'], to: 'execution' },
		
		// To sign-specific (logic etc) states
		{ name: 'add', from: ['what (ambiguous: group OR content)',  'content parameters', 'content'], to: 'add' },
		{ name: 'with', from: ['what (ambiguous: group OR content)',  'content parameters', 'content'], to: 'with' },
		{ name: 'without', from: ['what (ambiguous: group OR content)',  'content parameters', 'content'], to: 'without' }
		
    ],
	data: {
		// some utility arrays for the dynamic of the parsing, that are used as stacks
		what_array: [],
		who_array: [],
		how_array: [],
		
		content_distribution: {}, // array that stores how the different contents are distributed among the who identifiers
		requests: {0: {}}, // array that stores the requests over time and structure them
		requests_counter: 0, // integer that corresponds to the index of the actual request (increased everytime the request is executed)
	},
	methods: {
		onInvalidTransition: function(transition, from, to) {
			maxApi.outlet(["/error", "Transition " + transition + " from state " + from + " not allowed."]);
		},
		
		onBeforeHow: function(args, sign) { // When we receive a HOW sign
			
			// Store the sign to the stack
			this.how_array.push(sign);
			
			let parameter_values = capture_parameter(sign); // We leave this for the future, when we will want to capture parameters such as volume or tempo values with space mappings
			
			for (var i = 0; i<this.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the content parameters are applied to all of them
				
				last_what = this.what_array[this.what_array.length - 1]; // Assuming that the content parameter always applies to the last (and unique) content requested
				this.requests[this.requests_counter][this.who_array[i]][last_what][sign] = parameter_values; // we create an entry for the parameter under the content entry or the request array
				
				// update the distribution array
				this.content_distribution[last_what][this.who_array[i]][sign] = parameter_values;
			}
			
			
			
		},
		
		onBeforeWhat: function(args, sign) { // When we receive a WHAT sign
			
			// Store the sign to the stack
			this.what_array.push(sign);
			
			for (var i = 0; i<this.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the content is applied to all of them
			
				// Store the sign into the request
				if(this.requests[this.requests_counter][this.who_array[i]][sign] == null) { // we make sure that the content was not already there in the request, which is the expected normal case
					this.requests[this.requests_counter][this.who_array[i]][sign] = {}; // in this case, we create a new entry for the content (empty to store parameters if requested) in the request
				} else { // something is probably wrong, so we can send a warning in the console
					maxApi.post(sign + " already requested to perform in the same sentence...");
				}
				
				// Update content distribution array
				if(this.content_distribution[sign] == null) {
					this.content_distribution[sign] = [];
				}
				this.content_distribution[sign].push(this.who_array[i]);
			}
		},
		
		onBeforeWho: function(args, sign) { // onWho gets fired twice for some reason, so let's use onBeforeWho and onAfterWho instead...
		
			// Reset what array
			this.what_array = [];
		
			// Store the sign to the stack
			this.who_array.push(sign);
			
			// Store the sign into the request
			// this.requests[this.requests_counter]["who"] = {};
			
			if(this.requests[this.requests_counter][sign] == null) { // Here we check that the who identifier has not been already used in the request, which should be the normal case.
				this.requests[this.requests_counter][sign] = {}; // We add a new entry for the who identifier
			} else { // if already mentionned, something is weird.. maybe a soundpainting beginner? or in case forget about it did not erase things
				maxApi.post(sign + " already requested to perform in the same sentence...");
			}
			
			
		},
		
		onAfterTransition: function() {
			
			// update_outlets(); // Creating an external function triggers an error because fsm is not initialized so we leave it here...
			maxApi.outlet(["/who", this.who_array]);
			maxApi.outlet(["/what", this.what_array]);
			maxApi.outlet(["/how", this.how_array]);
			maxApi.outlet(["/requests", this.requests]);
			maxApi.outlet(["/distrib", this.content_distribution]);
			
			
		},
		onLeaveStart: function() {
			maxApi.post("leave start");
			// this.requests[requests_counter] = {};
		},
		onLeaveWho1: function() {
			
			maxApi.post("leave who1");
		},
		onEnterExecution: function() {
			// maxApi.post("inc");
			this.requests_counter++;
			this.requests[this.requests_counter] = {};
			
			this.who_array = []; // reset who array
			
		},
	},	
	plugins: [
      new StateMachineHistory()
    ]
});

function sign_regexp(msg) {
		
	let separator = new RegExp(":"); 
	return msg.split(separator);
		
}

function capture_parameter(parameter) {
	
	// TODO: implement parameter capture
	let values = {};
	
	return values; 
}
	
// TODO: add here the automata logic and mechanic

// First let's add some message handlers

const handlers = {
	[maxApi.MESSAGE_TYPES.BANG]: () => {
		maxApi.post("got a bang");
	},
	[maxApi.MESSAGE_TYPES.NUMBER]: (num) => {
	},
	[maxApi.MESSAGE_TYPES.list]: () => {
		maxApi.post("got my_message");
	},
	/* [maxApi.MESSAGE_TYPES.ALL]: (handled, ...args) => {
		maxApi.post("This will be called for ALL messages");
		maxApi.post(`The following inlet event was ${!handled ? "not " : "" }handled`);
		maxApi.post(args);
	}, */
	"sign": (arg1) => {
		// maxApi.post("Sign " + arg1);
		let [cat, sign] = sign_regexp(arg1);
		// maxApi.post("Cat : " + cat + " Sign : " + sign);
		// jsthis.fsm.who();
		// executeFunctionByName("fsm." + cat, "jsthis");
		// jsthis[cat]();

		fsm[cat](sign); // trigger the corresponding transition method
		// maxApi.post(fsm.history);
		maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]);
		
	},
	/* "who:wholegroup": () => {
		maxApi.post("Received sign " );
		//cat, sign = sign_regexp(arg1);
		maxApi.post("Received sign of cat : "+cat+" : "+sign);
	}, */
};

function initialize()
{
	maxApi.addHandlers(handlers);

	maxApi.outlet(["/who", fsm.who_array]);
	maxApi.outlet(["/what", fsm.what_array]);
	maxApi.outlet(["/requests", fsm.requests]);
	maxApi.outlet(["/graph", visualize(fsm, { orientation: 'horizontal' }).replace(/\n/g,"")]);
	maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]);
	
	// This should be the requests object structure
	/* fsm.requests[0] =
	{
		"who": {
			"WG": {
				"what": {
					"LG" : {
						"param": {
							"volume": 20,
							"tempo": 15
						}
					}
				}
			}
		}
	}; */
}

initialize();

// Data structure?

// Dynamic here? 

/* maxApi.post(fsm.history);
fsm.who();
maxApi.post(fsm.history);
fsm.when(); // BUG
fsm.what();
maxApi.post(fsm.history);
fsm.who();
maxApi.post(fsm.history);
fsm.what();
maxApi.post(fsm.history);
fsm.how();
maxApi.post(fsm.history); */
