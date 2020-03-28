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
		how_array: [], // unused yet
		
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
		
		onAfterHow: function(args, sign) { // When we receive a HOW sign
			
			// Store the sign to the stack
			this.how_array.push(sign);
			
			let parameter_values = capture_parameter(sign); // We leave this for the future, when we will want to capture parameters such as volume or tempo values with space mappings
			
			for (var i = 0; i<this.who_array.length; i++) { // in case multiple who identifiers were use, we want to make sure that the content parameters are applied to all of them
				
				last_what = this.what_array[this.what_array.length - 1]; // Assuming that the content parameter always applies to the last (and unique) content requested
				this.requests[this.requests_counter][this.who_array[i]][last_what][sign] = parameter_values; // we create an entry for the parameter under the content entry or the request array
				
				// update the distribution array
				if(this.content_distribution[last_what][this.who_array[i]] == null) {
					this.content_distribution[last_what][this.who_array[i]] = {};
				}
				
				this.content_distribution[last_what][this.who_array[i]][sign] = parameter_values;
			}
			
			update_outlet();
			
		},
		
		onAfterWhat: function(args, sign) { // When we receive a WHAT sign
			
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
		
		onAfterWho: function(args, sign) {
		
			// Reset what array
			this.what_array = [];
		
			// Store the sign to the stack
			this.who_array.push(sign);
			
			// Store the sign into the request	
			if(this.requests[this.requests_counter][sign] == null) { // Here we check that the who identifier has not been already used in the request, which should be the normal case.
				this.requests[this.requests_counter][sign] = {}; // We add a new entry for the who identifier
			} else { // if already mentionned, something is weird.. maybe a soundpainting beginner? or in case forget about it did not erase things
				maxApi.post(sign + " already requested to perform in the same sentence...");
			}
			
			update_outlet();
		},
		
		onLeaveStart: function() {
			maxApi.post("Start");
		},
		
		onEnterExecution: function() {
			
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

function update_outlet() {
	
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

	update_outlet();
	
	// the graph is not handled by the update_outlet function
	maxApi.outlet(["/graph", visualize(fsm, { orientation: 'horizontal' }).replace(/\n/g,"")]);
	
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
