$autowatch = 1;

outlets = 1;
inlets = 1;

var input = []

function anything()
{
	
	var list = arrayfromargs(messagename, arguments);
		
	if(list != "empty") {
		
		outlet(0, list);
	}
}