/*
  MaxAndP5js (c) 2016-18, Paweł Janicki (https://paweljanicki.jp)
      a simple messaging system between patches created in MaxMSP
      (https://cycling74.com) and sketches written with P5*js
      (https://p5js.org).

  P5js sketch (as any HTML/JavaScript document loaded inside jweb) can
  communicate with Max. Max can call functions from P5js sketches. P5js
  sketch can read/write content of Max dictionaries and send messages to Max.

  However, there is a namespace conflict between Max API binded to the
  "window" object (accessible from within jweb) and P5js API binded by
  default to the same object (in so called "global mode").

  There are several methods to circumvent this problem, and one of the
  simpler ones (requiring editing only the "sketch.js" file) is using P5js in
  so called "instance mode". Look at the code in the "sketch.js" file attached 
  to this example to see how to prevent the namespaces conflict and how to
  effectively interact with P5js sketches inside jweb object.

  For more informations about differences between "global" and "instance"
  modes of the P5js look at the "p5.js overview" document (available at
  https://github.com/processing/p5.js/wiki/p5.js-overview). For more
  information about communication between Max patcher and content loaded jweb
  object check the "Communicating with Max from within jweb" document (part
  of Max documentation).
*/

// *************************************************************************

/*
  This is a basic helper function checking if the P5js sketch is loaded inside
  Max jweb object.
*/
function detectMax() {
  try {
    /*
      For references to all functions attached to window.max object read the
      "Communicating with Max from within jweb" document from Max documentation.
    */
    window.max.outlet('Hello Max!');
    return true;
  }
  catch(e) {
    console.log('Max, where are you?');
  }
  return false;
}

/*
  Here we are creating actual P5js sketch in the instance mode
  (look at https://github.com/processing/p5.js/wiki/p5.js-overview
  for details about P5js instantiation and namespace) to prevent
  binding P5js functions and variables to the "window" object. Thanks
  of that we can avoid namespaces conflict between Max and P5js.
*/
var s = function(p) {

  // let's test and memorize if the sketch is loaded inside Max jweb object
  var maxIsDetected = detectMax();

  // a few variables to store color data (just for this example sketch)
  var background_r = 0; var background_g = 0; var background_b = 0;
  var stroke_r = 255; var stroke_g = 255; var stroke_b = 255;
  // flag to control switching between opaque and transparent background
  var opaqueFlag = true;

  /*
    Use windowResized function to adopt canvas size to the current size of
    the browser. It is particularly important when sketch is loaded inside
    the Max jweb object, which may be dynamically resized by the user.
  */
  p.windowResized = function() {
    p.resizeCanvas(innerWidth, innerHeight);
  }

  p.setup = function() {
    p.createCanvas(innerWidth, innerHeight);
    /*
      If the sketch is loaded inside Max jweb object we will carry out
      the necessary tasks to establish communitation between the patcher
      and the sketch (and to tune the sketch itself to present itself
      correctly when operating inside the jweb.
    */
    if(maxIsDetected) {
      // remove unwanted scroll bar
      document.getElementsByTagName('body')[0].style.overflow = 'hidden';
      /*
        Bind functions, which we want to have available from patcher's
        level. For more information check the "Communicating with Max from
        within jweb" document (part of Max documentation).
      */
      window.max.bindInlet('set_background_color', function (_r, _g, _b) {
        background_r = _r; background_g = _g; background_b = _b;
        if(opaqueFlag) p.background(background_r, background_g, background_b);
      });
      window.max.bindInlet('set_opaque', function (_flag) {
        opaqueFlag = _flag;
        /*
          "clear" is is a method that is generally equivalent to the
          "background" method with the difference that instead of filling the
          entire surface of the canvas with a solid color, it fills them with
          zeros (color(0,0,0,0)) - also the alpha component is filled with
          zeros - that is, the canvas becomes completely transparent.
        */
        if(!opaqueFlag) p.clear();
      });
      window.max.bindInlet('set_stroke_color', function (_r, _g, _b) {
        stroke_r = _r; stroke_g = _g; stroke_b = _b;
      });
      window.max.bindInlet('parse_dict', function (_dict_name) {
        window.max.getDict(_dict_name, function(_dict) {
          window.max.outlet('parse_dict', 'start parsing...');
          for(var _key in _dict) {
            if (_dict.hasOwnProperty(_key)) {
              window.max.outlet('parse_dict', _key + ' ' + _dict[_key]);
            }
          }
          window.max.outlet('parse_dict', '... parsing finished');
        });
      });
    }
  };

  p.draw = function() {
    // let's draw something using P5js buld-in functions
    if(opaqueFlag) {
      if(p.mouseIsPressed)
        p.background(background_r, background_g, background_b);
      else
        p.background(background_r, background_g, background_b, 4);
    }
    p.stroke(stroke_r, stroke_g, stroke_b);
    p.line(
      p.map(Math.sin(p.millis() * 0.0011), -1.0, 1.0, 0, p.width),
      p.map(Math.sin(p.millis() * 0.0012), -1.0, 1.0, 0, p.height),
      p.map(Math.sin(p.millis() * 0.0013), -1.0, 1.0, 0, p.width),
      p.map(Math.sin(p.millis() * 0.0014), -1.0, 1.0, 0, p.height)
    );
    /*
      If the sketch is loaded inside Max jweb object we will send
      some messages and fill the 'status_dict' dictionary with a
      new content. Check the "Communicating with Max from within
      jweb" document (part of Max documentation) for more features
      (messaging whole arrays, etc.).
    */
    if(maxIsDetected) {
      window.max.outlet('status', p.frameCount, p.mouseIsPressed);
      var dict_obj = {
        frame_count: p.frameCount,
        mouse_pressed: p.mouseIsPressed
      };
      window.max.setDict('status_dict', dict_obj);
      window.max.outlet('status_dict_updated');
    }
  };

};

// let's run the sketch in the "instance mode"
var myp5 = new p5(s);