# Sign and gesture recognition tool for real-time musical performance and computer-assisted composition

The goal of this project is to build a generic signs and gestures recognition and audio synthesis tool for use in music/art performances such as soundpainting performances.

The project has started with the following references in mind :
* MiMu Gloves https://mimugloves.com/ (extending music instruments with gestual controls)
* GeKiPe http://philippespiesser.com/projet/gekipe-geste-kinect-percussion/ (creating/extending music instruments with mechanical, percussion-like movements)
* Soundpainting as a standard, world-wide language for artistic performance, communication and composition http://www.soundpainting.com/

Each of these is an example of the performativity and potential of gestures and signs for music creativity, composition and instrument expansion.

## Demo and use cases

### What can I do with this?

Well, so far, not much. You can train your own signs and recognize them inside Max/MSP. Cool. But later, you will be able to:
- implement your own regular language
- make it play some sounds, videos.. whatever you can do with Max!
- use it for soundpainting performances
- augment your instrument...

Check out a little preview of the patch: https://www.youtube.com/watch?v=jW6bo6XkhFo

## Required and recommended hardware

* Required: webcam OR low-latency external camera OR kinect input
* Required: 64 bits computer (Tested on Windows 10)
* Recommended with webcam input: Dedicated GPU (Tested on Nvidia 1060 GTX)
* Recommended: 16+ Go RAM, i7 or i9 CPU (Tested on i7-8750H)

## Standalone app

_Standalone apps will be released near june/july. Before that, you need to check the setup procedure (very simple) in order to access the source patch and try it._

## Setup procedure

_For now, this is the only valid procedure. It has some additional requirements, including Max/MSP that is not free, but with which I am building this app._

1. Install Max/MSP (lastest version) https://cycling74.com/
2. _For use with Kinect input_ Install Processing https://processing.org/
3. Download/clone this repository
4. Go to the "Main_patch" folder and load the lastest version of the patch into Max/MSP (.maxpat)
5. _For use with PoseNet - webcam - input (recommended)_ Install the dependencies by clicking on the dedicated button in the patch. Then, make sure that the Maxhelper process (Max Helper.exe on windows) runs on the dedicated GPU and not integrated GPU, by checking your OS or GPU settings.
6. Install the required Max/MSP packages: MuBu (and whatever Max/MSP is telling you that you are missing!)
7. _For use with Kinect input_ Download the drivers for your kinect and launch the processing scripts located in the "Utilities" folder (check out https://github.com/jpbellona/simpleKinect).
8. You can now use the patch! For instance, try to launch the PoseNet model and train your first signs!
9. To build your own standalone, check out the procedure for Max/MSP and Processing.

## Communication with Ableton Live

You can now use the tool to communicate with Ableton Live.

1. Install Ableton Live 10 (it may be compatible with Ableton live 9), for instance the free trial version.
2. Install a compatible version of LiveOSC. It is recommended to use the following: https://github.com/ideoforms/LiveOSC. The LiveOSC folder must be copied to the "MIDI Remote Scripts" folder of Ableton. On windows: "\ProgramData\Ableton\Live 10 Trial\Resources\MIDI Remote Scripts", on Mac it should appear under: "/Applications/Ableton*.app/Contents/App-Resources/" (unverified).
Then in Ableton Live:
* open File>Preferences
* under Link/MIDI, set Control Surface 1 to "LiveOSC"

## References

This project is based on the following tools:
* Posenet Node For Max: https://github.com/tejaswigowda/posenet-node-max
* Posenet for dummies https://github.com/billythemusical/n4m-posenet-for-dummies and original N4M posenet https://github.com/yuichkun/n4m-posenet
* SimpleKinect https://github.com/jpbellona/simpleKinect
* Wekinator http://www.wekinator.org/
* Viz.js https://github.com/mdaines/viz.js
* Javascript state machiine https://github.com/jakesgordon/javascript-state-machine
