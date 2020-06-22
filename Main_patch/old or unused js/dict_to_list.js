outlets = 1;

function p(msg) {
	
	post(msg);
}

function o(msg) {
	
	outlet(1, msg);
}

function dictionary()
{
	var dict = {arguments[0]};

	/* // post(arguments.length);
	var list = [];
	
	var keys = dict.getkeys();
	//p(keys); */
	
	p(dict["who"]);
	
	for(var i = 0; i < keys.length; i++){
		
		for (var j = 0; j < dict.get(keys[i]).length; j++) {
			
			// post(typeof dict.get(keys[i])[j]);
			list.push(keys[i] + ":" + dict.get(keys[i])[j]);
		}
		
	}

	outlet(0, list);
}

