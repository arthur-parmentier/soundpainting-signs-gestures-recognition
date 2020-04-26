$autowatch = 1;

outlets = 1;
inlets = 1;

var input = []

function anything()
{
	
	var list = arrayfromargs(messagename, arguments);
		
	if(list != "" && list != []) {
		
		outlet(0, list);
	}
}