$autowatch = 1;
outlets = 1;
inlets = 1;

function anything()
{
	var args = arrayfromargs(messagename, arguments);
	var return_list = [];
	
	for(var i = 0; i<args.length; i++) {
		
		if(i%2==1) {
			return_list.push(args[i]);
		}
	}
	
	outlet(0, return_list);
}

