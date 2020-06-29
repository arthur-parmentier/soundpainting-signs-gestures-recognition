autowatch = 1;

outlets = 0;
inlets = 1;

var debug = 1;
var setclock = null;

function clock() {
	
	var name = arguments[0];
	
	// Create setclock obj
	if(setclock != null) {
		patcher.remove(setclock);
	}
	setclock = patcher.newdefault(0, 0, "setclock", name, "mul", 1);
}

function tempo(f) {
	
	// sendvalue to clock
	if(setclock != null) {
		setclock.message(f);
	} else {
		p("Setclock null: impossible to set tempo");
	}
}

function clear() {
	
	if(setclock != null) {
		patcher.remove(setclock);
	}
}

function p(msg) {
	
	if(debug) {
		post(msg);
	}
}	

function o(n ,msg) {
	
	outlet(n, msg);
}