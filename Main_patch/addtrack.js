autowatch = 1;

outlets = 2;
inlets = 2;

var input_names = [];
var input_sizes = [];

function inputs()
{
	
	var list = arrayfromargs(arguments);
	
	post(list);
	
	if (inlet==0)
	{		
		input_names = list;
		
		if(input_names.length == input_sizes.length) {
			
			for(var i = 0; i<input_names.length; i++) {
				
				outlet(1, input_sizes[i]);
				outlet(0, input_names[i]);
			}
		}
	}
	
	if (inlet==1) 
	{
		input_sizes = list;	
	}
}