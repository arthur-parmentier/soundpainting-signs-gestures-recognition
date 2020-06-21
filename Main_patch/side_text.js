mgraphics.init();
p("Vertical text init");
mgraphics.relative_coords = 1;
mgraphics.autofill = 0;

inlets = 1;

var fontSize = 12;
var fontName = "Arial";
var text = "";

var red = 0;
var green = 0;
var blue = 0;
var alpha = 1;

var debug = 0;

function p(msg) {
	
	if(debug) {
		post(msg);
	}
}	

function o(n ,msg) {
	
	outlet(n, msg);
}

function bang()
{
	mgraphics.redraw();
}

function color(c)
{
	if(arguments.length) 
	{		
		red = arguments[0];
		green = arguments[1];
		blue = arguments[2];
		alpha = arguments[3];
	    mgraphics.redraw();	
	}
}

function setfont(t)
{
	fontName = t;
	mgraphics.redraw();

}
	
function setSize(s)
{
	fontSize = s;
	mgraphics.redraw();
}
function set(t)
{
	p("Setting vertical text " + t);
	text = t;
	mgraphics.redraw();
}

function paint()
{

	with (mgraphics) {

			select_font_face(fontName);
			set_font_size(fontSize);
			set_source_rgba(red,green,blue,alpha);
			move_to(-1,-1);
			rotate(-1);
			text_path(text);
			fill();
		
	}
}