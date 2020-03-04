outlets = 1;

function dictionary()
{
	var dict = new Dict(arguments[0]);
	// post(arguments.length);
	var list = [];
	
	var counter = 0;
	
	var keys = dict.getkeys();
	
	for(var i = 0; i < keys.length; i++){
		
		for (var j = 0; j < dict.get(keys[i]).length; j++) {
			list.push(counter+1 + " : " + keys[i] + " : " + dict.get(keys[i])[j]);
			counter++;
		}
		
	}

	outlet(0, list);
}