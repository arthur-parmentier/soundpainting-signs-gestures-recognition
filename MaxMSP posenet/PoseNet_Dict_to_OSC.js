autowatch = 1;

function dictionary() 
{
    var d = new Dict(arguments[0]); 
	
    var k = d.getkeys(); 
	
    for(i = 0; i < k.length; i++)
	{
		post(k[i] + "\n");
		
	}
	
	var list = [];
	var n = d.get("keypoints").length;
	post(n);
	
	for(i = 0; i < n; i++)
	{
		post(d.getsize("keypoints::14") + "\n");
		//post(d.get("keypoints")[i] + "\n");
	}
}