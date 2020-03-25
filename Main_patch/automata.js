const maxApi = require("max-api");
const StateMachine = require('javascript-state-machine');
const visualize = require('javascript-state-machine/lib/visualize');
var StateMachineHistory = require('javascript-state-machine/lib/history')

function sign_regexp(msg) {
		
	var separator = new RegExp(":"); 
	return msg.split(separator);
		
}

// function executeFunctionByName(functionName, context /*, args */) {
	// var args = Array.prototype.slice.call(arguments, 2);
	// var namespaces = functionName.split(".");
	// var func = namespaces.pop();
	// for(var i = 0; i < namespaces.length; i++) {
		// context = context[namespaces[i]];
	// }
	// return context[func].apply(context, args);
// }

var fsm = new StateMachine({
    init: 'start: empty request',
    transitions: [
	// neutral
		{ name: 'neutral', from: '*', to: this.state },
	
	// First request
    	{ name: 'who', from: 'start: empty request', to: 'who1' },
    	{ name: 'what', from: 'who1', to: 'what1' },
    	{ name: 'how', from: 'what1', to: 'what1' },
		{ name: 'with', from: 'what1', to: 'with1' },
		{ name: 'who', from: 'what1', to: 'who1' },
		{ name: 'how', from: 'with1', to: 'what1' },
    	{ name: 'what', from: 'with1', to: 'what1' },
    	{ name: 'when', from: 'what1', to: 'execution: empty request' },
		
	// Main loop
	
		// To "who" state
		{ name: 'who', from: [ 'content parameters', 'execution: empty request', 'what (ambiguous: group OR content)', 'content'], to: 'who' },
		{ name: 'group', from: 'what (ambiguous: group OR content)', to: 'who' },
		
		// To ambiguous "what" state
		{ name: 'what', from: ['execution: empty request', 'who'], to: 'what (ambiguous: group OR content)' },
		{ name: 'what (!very ambiguous!)', from:  'content parameters', to: 'what (ambiguous: group OR content)' }, // CHECK THIS ONE
		
		// To unambiguous what state
		{ name: 'what', from: ['with','without','add'], to:  'content' },
		
		// To "how" state
		{ name: 'how', from: ['who', 'execution: empty request', 'what (ambiguous: group OR content)',  'content',  'content parameters'], to:  'content parameters' },
		
		// To empty request
		{ name: 'off', from: ['execution: empty request','who'], to: 'execution: empty request' },
		{ name: 'when', from: [ 'content parameters',  'content', 'what (ambiguous: group OR content)'], to: 'execution: empty request' },
		
		// To sign-specific states
		{ name: 'add', from: ['what (ambiguous: group OR content)',  'content parameters', 'content'], to: 'add' },
		{ name: 'with', from: ['what (ambiguous: group OR content)',  'content parameters', 'content'], to: 'with' },
		{ name: 'without', from: ['what (ambiguous: group OR content)',  'content parameters', 'content'], to: 'without' }
		
    ],
	methods: {
		onInvalidTransition: function(transition, from, to) {
			//throw new Exception("transition not allowed from that state");
			maxApi.post("Transition " + transition + " from " + from + " to " + to + " not allowed in tha state.");
		}
	},	
	plugins: [
      new StateMachineHistory()
    ]
});
  
maxApi.outlet(["/graph", visualize(fsm, { orientation: 'horizontal' }).replace(/\n/g,"")]);
	
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
		var [cat, sign] = sign_regexp(arg1);
		maxApi.post("Cat : " + cat + " Sign : " + sign);
		// jsthis.fsm.who();
		// executeFunctionByName("fsm." + cat, "jsthis");
		// jsthis[cat]();

		fsm[cat](); // trigger the corresponding transition method
		maxApi.post(fsm.history);
		maxApi.outlet(["/state", fsm.history[fsm.history.length - 1]]);
		
	},
	/* "who:wholegroup": () => {
		maxApi.post("Received sign " );
		//cat, sign = sign_regexp(arg1);
		maxApi.post("Received sign of cat : "+cat+" : "+sign);
	}, */
};



maxApi.addHandlers(handlers);

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
