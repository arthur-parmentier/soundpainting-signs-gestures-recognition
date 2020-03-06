outlets = 1;

function dictionary()
{
	var dict = new Dict(arguments[0]);
	// post(arguments.length);
	var list = [];
	
	var keys = dict.getkeys();
	
	for(var i = 0; i < keys.length; i++){
		
		for (var j = 0; j < dict.get(keys[i]).length; j++) {
			
			post(typeof dict.get(keys[i])[j]);
			list.push(keys[i] + " : " + dict.get(keys[i])[j]);
		}
		
	}

	outlet(0, list);
}