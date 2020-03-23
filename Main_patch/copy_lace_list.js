$autowatch = 1;
outlets = 1;
inlets = 2;
var copies = 1;
var return_list = [];
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
	for (i=0; i < actual_list.length; i++)
	{
		var num = 0;
		for (j=0; j < copies; j++)
		{
			num = j+1;
			return_list.push(actual_list[i] + " " + num);
		}
	}
	
	outlet(0, return_list);
}

function msg_int(n)
{
	anything(n);
}