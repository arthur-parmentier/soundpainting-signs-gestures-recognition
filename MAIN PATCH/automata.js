const maxApi = require("max-api");
const StateMachine = require('javascript-state-machine');
const visualize = require('javascript-state-machine/lib/visualize');

var fsm = new StateMachine({
    init: 'solid',
    transitions: [
      { name: 'melt',     from: 'solid',  to: 'liquid' },
      { name: 'freeze',   from: 'liquid', to: 'solid'  },
      { name: 'vaporize', from: 'liquid', to: 'gas'    },
      { name: 'condense', from: 'gas',    to: 'liquid' }
    ],
    methods: {
      onMelt:     function() { console.log('I melted')    },
      onFreeze:   function() { console.log('I froze')     },
      onVaporize: function() { console.log('I vaporized') },
      onCondense: function() { console.log('I condensed') }
    }
  });
  
maxApi.outlet(visualize(fsm, { orientation: 'horizontal' }).replace(/\n/g,""));