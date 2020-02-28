
Screen.fullScreen = true;

//You can set these variables in the scene because they are public 
public var RemoteIP : String = "127.0.0.1";
public var SendToPort : int = 6448;
public var ListenerPort : int = 12000;
public var controller : Transform; 
private var handler : Osc;
private var sig1 : int = 0;
private var sig2 : int = 0;


public function Start ()
{
	//Initializes on start up to listen for messages
	//make sure this game object has both UDPPackIO and OSC script attached
	
	var udp : UDPPacketIO = GetComponent("UDPPacketIO");
	udp.init(RemoteIP, SendToPort, ListenerPort);
	handler = GetComponent("Osc");
	handler.init(udp);
			
	handler.SetAddressHandler("/OSCSynth/params", Example1);
/*	handler.SetAddressHandler("/1/toggle2", Example2);
	handler.SetAddressHandler("/1/toggle3", Example3);
	handler.SetAddressHandler("/1/toggle4", Example4);
	*/
}
Debug.Log("OSC Running");

function Update () {
	
	var go = GameObject.Find("Cube1");
	go.transform.Rotate(0, sig1, 0);
	var so = GameObject.Find("Sphere1");
	so.transform.Rotate(sig2, sig2, 0);
	var cam = GameObject.Find("cam1"); 
	//cam.transform.Rotate(0,sig1/10,0); 
}	

//These functions are called when messages are received
//How to access values: 
	//oscMessage.Values[0], oscMessage.Values[1], etc

//Example 1
public function Example1(oscMessage : OscMessage) : void
{	
	
	Debug.Log("Called Example One > " + Osc.OscMessageToString(oscMessage));
	Debug.Log("Message Values > " + oscMessage.Values[0] + " " + oscMessage.Values[1]);
	sig1 = oscMessage.Values[0];
	sig2 = oscMessage.Values[1];
	
} 

// Example 2
public function Example2(oscMessage : OscMessage) : void 
{
	
	Debug.Log("Called Example Two > " + Osc.OscMessageToString(oscMessage));
	Debug.Log("Message Values > " + oscMessage.Values[0]);
	sig1 = - (oscMessage.Values[0]);
	
} 

//Example 3
public function Example3(oscMessage : OscMessage) : void
{	
	
	Debug.Log("Called Example Three > " + Osc.OscMessageToString(oscMessage));
	Debug.Log("Message Values > " + oscMessage.Values[0]);
	sig2 = oscMessage.Values[0];
} 

// Example 4
public function Example4(oscMessage : OscMessage) : void 
{
	
	Debug.Log("Called Example Four > " + Osc.OscMessageToString(oscMessage));
	Debug.Log("Message Values > " + oscMessage.Values[0]);
	sig2 = - (oscMessage.Values[0]);
	
} 
