$autowatch = 1;
outlets = 2;
inlets = 2;
var copies = 1;
var return_list = [];
var return_list_no_int = [];

var actual_list = [];

function anything()
{
	var arg = arrayfromargs(messagename, arguments);
	if (inlet==1)
	{		
		copies = arg;
	}
	
	if (inlet==0) 
	{
		actual_list = [];
		
		for (i=0; i < arg.length; i++)
		{
			
			actual_list.push(arg[i]);
		}
	}
	
	return_list = [];
	return_list_no_int = [];
	
	for (i=0; i < actual_list.length; i++)
	{
		if(actual_list[i].length>0) {
			
			var num = 0;
			for (j=0; j < copies; j++)
			{
				post("enter");
				num = j+1;
				return_list.push(actual_list[i] + " " + num);
				return_list_no_int.push(actual_list[i]);
			}
		}
		else {
			
			outlet(0,["null", 0]);
		}
	}
	
	outlet(0, return_list);
	outlet(1, return_list_no_int);
}

function msg_int(n)
{
	anything(n);
}