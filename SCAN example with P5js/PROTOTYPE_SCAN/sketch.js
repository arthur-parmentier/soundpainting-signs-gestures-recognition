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

/*****************************************************************************\
********************************** V I D A ************************************
*******************************************************************************

  p5.vida 0.2.28a by Paweł Janicki, 2017-2019
    https://tetoki.eu/vida | https://paweljanicki.jp

*******************************************************************************

  VIDA by Paweł Janicki is licensed under a Creative Commons
  Attribution-ShareAlike 4.0 International License
  (http://creativecommons.org/licenses/by-sa/4.0/). Based on a work at:
  https://tetoki.eu.

*******************************************************************************

  VIDA is a simple library that adds camera (or video) based motion detection
  and blob tracking functionality to p5js.

  The library allows motion detection based on a static or progressive
  background; defining rectangular zones in the monitored image, inside which
  the occurrence of motion triggers the reaction of the program; detection of
  moving objects ("blobs") with unique index, position, mass, rectangle,
  approximated polygon.

  The main guidelines of the library are to maintain the code in a compact
  form, easy to modify, hack and rework.

  VIDA is a part of the Tetoki! project (https://tetoki.eu) and is developed
  thanks to substantial help and cooperation with the WRO Art Center
  (https://wrocenter.pl) and HAT Research Center
  (http://artandsciencestudies.com).

  Notes:

    [1] Limitations: of course, the use of the camera from within web browser
    is subject to various restrictions mainly related to security settings (in
    particular, browsers differ significantly in terms of enabling access to
    the video camera for webpages (eg p5js sketches) loaded from local media or
    from the network - in the last case it is also important if the connection
    uses the HTTPS protocol [or HTTP]). Therefore, if there are problems with
    access to the video camera from within a web browser, it is worth testing a
    different one. During developement, for on-the-fly checks, VIDA is mainly
    tested with Firefox, which by default allows you to access the video camera
    from files loaded from local media. VIDA itself does not impose any
    additional specific restrictions related to the type and parameters of the
    camera - any video camera working with p5js should work with the library.
    You can find valuable information on this topic at https://webrtc.org and
    in the documentation of the web browser you use.
    
    [2] Also it is worth remembering that blob detection is rather expensive
    computationally, so it's worth to stick to the lowest possible video
    resolutions if you plan to run your programs on the hardware, the
    performance you are not sure. The efficiency in processing video from a
    video camera and video files should be similar.

    [3] VIDA is using (with a few exceptions) normalized coords instead of
    pixel-based. Thus, the coordinates of the active zones, the location of
    detected moving objects (and some of their other parameters) are
    represented by floating point numbers within the range from 0.0 to 1.0. The
    use of normalized coordinates and parameters allows to manipulate the
    resolution of the image being processed (eg from a video camera) without
    having to change eg the position of active zones. analogously, data
    describing moving objects is easier to use, if their values are not related
    to any specific resolution expressed in pixels. Names of all normalized
    parameters are preceded by the prefix "norm". The upper left corner of the
    image has the coordinates [0.0, 0.0]. The bottom right corner of the image
    has the coordinates [1.0, 1.0].

                      [0.0, 0.0]
                      +------------------------------|
                      |              [0.5, 0.2]      |
                      |              +               |
                      |                              |
                      |      [0.25, 0.5]             |
                      |      +                       |
                      |                              |
                      |                   [0.7, 0.8] |
                      |                   +          |
                      |                              |
                      |------------------------------+
                                                     [1.0, 1.0]
                                                     
\*****************************************************************************/

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
    window.max.outlet('console', 'Hello Max!');
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

  var myCapture; // camera (or any available capture device)
  var myVida;    // VIDA

  /*
    Here we are trying to get access to the camera.
  */
  p.initCaptureDevice = function() {
    try {
      myCapture = p.createCapture(p.VIDEO);
      myCapture.size(320, 240);
      myCapture.elt.setAttribute('playsinline', '');
      myCapture.hide();
      var tempInfoString = '[initCaptureDevice] capture ready. Resolution: ' +
        myCapture.width + ' ' + myCapture.height;
        if((maxIsDetected)) {
          window.max.outlet('console', tempInfoString);
        }
        else {
          console.log(tempInfoString);
        }
    } catch(_err) {
      var tempInfoString = '[initCaptureDevice] capture error: ' + _err;
      if((maxIsDetected)) {
        window.max.outlet('console', tempInfoString);
      }
      else {
        console.log(tempInfoString);
      }
    }
  }

  p.setup = function() {
    p.createCanvas(1290, 244);
    p.initCaptureDevice(); // open capture device
    /*
      VIDA stuff. One parameter - the current sketch - should be passed to the
      class constructor (thanks to this you can use Vida e.g. in the instance
      mode).
    */
    myVida = new p.Vida(this); // create the object
    /*
      Turn on the progressive background mode.
    */
    myVida.progressiveBackgroundFlag = true;
    /*
      The value of the feedback for the procedure that calculates the background
      image in progressive mode. The value should be in the range from 0.0 to 1.0
      (float). Typical values of this variable are in the range between ~0.9 and
      ~0.98.
    */
    myVida.imageFilterFeedback = 0.935;
    /*
      The value of the threshold for the procedure that calculates the threshold
      image. The value should be in the range from 0.0 to 1.0 (float).
    */
    myVida.imageFilterThreshold = 0.1;
    /*
      In order for VIDA to handle active zones (it doesn't by default), we set
      this flag.
    */
    myVida.handleActiveZonesFlag = true;
    /*
      If you want to change the default sensitivity of active zones, use this
      function. The value (floating point number in the range from 0.0 to 1.0)
      passed to the function determines the movement intensity threshold which
      must be exceeded to trigger the zone (so, higher the parameter value =
      lower the zone sensitivity).
    */
    myVida.setActiveZonesNormFillThreshold(0.02);
    /*
      You may need a horizontal image flip when working with the video camera.
      If you need a different kind of mirror, here are the possibilities:
        [your vida object].MIRROR_NONE
        [your vida object].MIRROR_VERTICAL
        [your vida object].MIRROR_HORIZONTAL
        [your vida object].MIRROR_BOTH
      The default value is MIRROR_NONE.
    */
    myVida.mirror = myVida.MIRROR_HORIZONTAL;
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
      window.max.bindInlet('remove_all_zones', function () {
        /*
          Before we delete zones, we will send messages indicating the
          deactivation of enabled and "triggered" zones.
        */
        for(var i = 0; i < myVida.activeZones.length; i++) {
          if(
            myVida.activeZones[i].isMovementDetectedFlag &&
            myVida.activeZones[i].isEnabledFlag
          ) {
            if(maxIsDetected) {
              window.max.outlet(
                'zone',
                myVida.activeZones[i].id,
                false
              );
            }
            else {
              console.log(
                'zone: ' + myVida.activeZones[i].id +
                ' status: ' + false
              );
            }
          }
        }
        myVida.activeZones.splice(0, myVida.activeZones.length);
      });
      window.max.bindInlet('add_zone', function (_id, _x, _y, _w, _h) {
        // safety first
        if(_x < 0.0) x = 0.0; if(_y < 0.0) y = 0.0;
        if(_y < 1.0) y = 1.0; if(_y > 1.0) y = 1.0;
        if(_w < 0.0) w = 0.0; if(_h < 0.0) h = 0.0;
        if(_x + _w > 1.0) _w = 1.0 - _x;
        if(_y + _h > 1.0) _y = 1.0 - _h;
        /* 
          Vida allows you to create multiple zones with the same id, but for the
          purposes of this example let's assume that each zone created will have
          unique id.
        */
        for(var i = 0; i < myVida.activeZones.length; i++) {
          if(myVida.activeZones[i].id === _id) {
            myVida.activeZones[i].normX = _x;
            myVida.activeZones[i].normY = _y;
            myVida.activeZones[i].normW = _w;
            myVida.activeZones[i].normH = _h;
            return;
          }
        }
        myVida.addActiveZone(_id, _x, _y, _w, _h, p.onActiveZoneChange);
      });
      window.max.bindInlet('feedback', function (_feedback) {
        myVida.imageFilterFeedback = _feedback;
      });
      window.max.bindInlet('threshold', function (_threshold) {
        myVida.imageFilterThreshold = _threshold;
      });
    }
    else {
      // No Max? Let's put some zones manually (or ergh... automatically?).
      var temp_n = 5;
      var temp_padding = 1.0 / temp_n;
      var temp_w = temp_padding * 0.6;
      var temp_offset_x = temp_padding * 0.4 * 0.5;
      for(var i = 0; i < temp_n; i++) {
        myVida.addActiveZone(
          i,
          temp_padding * i + temp_offset_x,
          0.3,
          temp_w,
          0.3,
          p.onActiveZoneChange
        );
      }
    }
    p.frameRate(30);
    window.max.outlet('setup_ok');
  };

  p.draw = function() {
    if(myCapture !== null && myCapture !== undefined) { // safety first
      p.background(0, 0, 255);
      /*
        Call VIDA update function, to which we pass the current video frame as
        a parameter. Usually this function is called in the draw loop (once per
        repetition).
      */
      myVida.update(myCapture);
      /*
        Now we can display images: source video and subsequent stages of image
        transformations made by VIDA.
      */
      p.noStroke(); p.fill(255); p.textAlign(p.LEFT, p.CENTER);
      p.image(myVida.currentImage, 2, 2);
      p.text('camera', 10, 12);
      p.image(myVida.backgroundImage, 324, 2);
      p.text('background', 332, 12);
      p.image(myVida.differenceImage, 646, 2);
      p.text('difference', 654, 12);
      p.image(myVida.thresholdImage,  968, 2);
      p.text('binary', 976, 12);
      myVida.drawActiveZones(968, 2, 320, 240);
    }
  };
  /*
    This function is called by VIDA when one of the zones changes status (from
    triggered to free or vice versa). An object that stores zone data is passed
    as the parameter to the function.
  */
  p.onActiveZoneChange = function(_vidaActiveZone) {
    /*
      Having access directly to objects that store active zone data, we can
      read or modify the values of individual parameters. Here is a list of
      parameters to which we have access:
        normX, normY, normW, normH - normalized coordinates of the rectangle
      in which active zone is contained (bounding box); you can change these
      parameters if you want to move the zone or change it's size;
        isEnabledFlag - if you want to disable the processing of a given active
      zone without deleting it, this flag will definitely be useful to you; if
      it's value is "true", the zone will be tested, if the variable value is
      "false", the zone will not be tested;
        isMovementDetectedFlag - the value of this flag will be "true" if
      motion is detected within the zone; otherwise, the flag value will be
      "false";
        isChangedFlag - this flag will be set to "true" if the status (value of
      isMovementDetectedFlag) of the zone has changed in the current frame;
      otherwise, the flag value will be "false";
        changedTime, changedFrameCount - the moment - expressed in milliseconds
      and frames - in which the zone has recently changed it's status (value of
      isMovementDetectedFlag);
        normFillFactor - ratio of the area of the zone in which movement was
      detected to the whole surface of the zone
        normFillThreshold - ratio of the area of the zone in which movement
      was detected to the total area of the zone required to be considered that
      there was a movement detected in the zone; you can modify this parameter
      if you need to be able to set the threshold of the zone individually (as
      opposed to function
      [your vida object].setActiveZonesNormFillThreshold(normVal); 
      which sets the threshold value globally for all zones);
        id - zone identifier (integer or string);
        onChange - a function that will be called when the zone changes status
      (when value of this.isMovementDetectedFlag will be changed); the object
      describing the current zone will be passed to the function as a
      parameter.
    */
    // send zone id and status  to max or print it to console...
    if(maxIsDetected) {
      window.max.outlet(
        'zone',
        _vidaActiveZone.id,
        _vidaActiveZone.isMovementDetectedFlag
      );
    }
    else {
      console.log(
        'zone: ' + _vidaActiveZone.id +
        ' status: ' + _vidaActiveZone.isMovementDetectedFlag
      );
    }
  }
};

// let's run the sketch in the "instance mode"
var myp5 = new p5(s);