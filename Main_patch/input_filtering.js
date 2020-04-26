autowatch = 1;

outlets = 1;
inlets = 2;

var input_list = [];

var selection_list = [];
var return_list = [];

function inputs()
{
	
	var list = arrayfromargs(arguments);
	
	if (inlet==1)
	{		
		input_list = list;
	}
	
	if (inlet==0) 
	{
		selection_list = list;		
		return_list = [];
		
		for(var i=0; i<input_list.length; i++) {
			
			if (selection_list[i] == "1") {

				return_list.push(input_list[i]); 
			}
		}
		
		if(return_list.length == 0) { 
		
			return_list = [""]; 
		}
		
		outlet(0,return_list);

	}
}