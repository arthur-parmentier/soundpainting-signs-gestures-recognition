# Soundpainting recognition tool

* Do you want to control your live artistic digital setup with gestures ?
* Are you a soundpainter?

This tool is made for you!

As part of my master thesis at EPFL (Switzerland) at the EM+ lab, I am building an app with Max/MSP that allows the user to control a virtual orchestra with soundpainting or user-created signs.

## Features

Even if you are not familiar with Soundpainting, the following features may interest you:

- **Create and train your own signs.**
For instance, you could create a sign for "launch my program.exe". The program has been built to recognize common Soundpainting signs but you can just build the ones you need!
- **Record your signs, save them to files and build your own dictionary of signs.**
- Recognize signs using **your own hardware**: you can use the built-in motion capture models (PoseNet, HandPose, Hi5, Kinect...) but also connect your own with Max in little time. Once you have defined the number of features of your input, its name and connected the data pipeline to Max (for instance with OSC), you don't need anymore routing or spaguetthi patching! You can start building signs from very simple inputs, such as mouse, keyboards or your favorite midi controller if you want!
- Connect with as many **Wekinator or Mubu machine learning models** as you need for recognizing different types of signs: poses, movements, position in space...
- Create **complex requests with the grammar of Soundpainting**, which is optimized for real-time performance; but also creating your own regular grammar: **your own sign language**.
- Play with the **built-in virtual orchestra or Ableton OSC controller** and create your own set of sounds, triggers. With signs and gestures, you don't have to use hardware anymore to control you favorite DAW or software: your body can communicate with them.

[![Check the demos on my youtube channel](./Images/YT_demo.png)](https://www.youtube.com/playlist?list=PLqINK1QtSzoG-oqaT623-OB2Z7BTE3Z93)

## What is Soundpainting?

Soundpainting is a sign language that is used commonly between human perfomers, to communicate between each other or with a composer during the performance. For instance, using Soundpainting, you can form a request such as: "Guitar 1, improvise, with, jazz, feel, slowly enter" or "Dancer 2, make a loop, in relation with, guitar 1, now".

We all know how cool can computer-assisted music or tools can be and the potential they offer. My experience with Soundpainting is that synthesizers, mixing devices, effects... can be painful to manipulate in real-time performance. With this tool, you can manipulate them directly from Soundpainting signs (or your own!): you can program them to respond to commands that you will be able to send with your body... and this recognition tool.

As for now, only basic parts of the Soundpainting grammar are implemented in this tool. There are plenty of modes in Soundpainting that could be added later in the future, that will allow to create different request structures. But if you are a beginner in Soundpainting and want to explore what you can so with some basic signs and your own sounds, this is the right tool for you. Then if you want to code your own regular language and get deeper in the interfacing possibilities, that's also the right place to start.

# Setup

## Required and recommended hardware

* A webcam is required for HandPose and PoseNet, the two main built-in motion tracking models. An integrated one is ideal but you can also use your phone as a webcam for your computer through USB (https://www.youtube.com/watch?v=JHhZbDXT6sw) or wireless local network (IP webcam).
* A kinect may also be used with lower performances and more painful installation process _(Todo: describe installation process)_
* A 64 bits computer (developped on Windows 10) with Max/MSP (tested with Max 8) is required, although a standalone version should be released in the summer for all OS.
* Recommended with webcam input: dedicated GPU (Tested on Nvidia 1060 GTX). Users without dedicated GPUs may find PoseNet and HandPose either running slow or inaccurate and may have trouble recognizing gestures at a convenient distance from the computer.
* Recommended: 16+ Go RAM, i7 or i9 CPU (Tested on i7-8750H). Make sure that your computer has sufficient ventilation and power to hold the stress of running several models simultaneously. Consider undervolting GPU and power throttling CPU in case you do, like me, reach critical temperature while running the program during a long time.

## Standalone app

_Standalone apps will be released during the summer. The tool can only be used with Max/MSP installed yet._

## In Max/MSP

1. Install Max/MSP (latest version)

### For use with Kinect

1. Install the Kinect (with appropriate drivers on Windows) and plug it in the computer.
2. Install Processing https://processing.org/ and launch the "simpleKinect" scripts in the "Utilities" folder (source: SimpleKinect https://github.com/jpbellona/simpleKinect).
3. Get the motion tracking data in Max via OSC. I will soon implement it directly into the patcher.






3. Download/clone this repository
4. Go to the "Main_patch" folder and load the lastest version of the patcher into Max/MSP (.maxpat)
5. _For use with the built-in HandPose & PoseNet - webcam - inputs (recommended)_ Install the dependencies by clicking on the dedicated button in the patcher. Then, make sure that the Maxhelper process (Max Helper.exe on windows) as well as the electron processes run on the dedicated GPU and not integrated GPU, by checking your OS or GPU settings (if you have a Nvidia GPU, check its control panel).
6. Install the required Max/MSP packages: MuBu, Bach project (and whatever Max/MSP is telling you that you are missing, because I used several handy packages for Max)
7. _For use with Kinect input_ Download the drivers for your kinect and launch the processing scripts located in the "Utilities" folder (check out https://github.com/jpbellona/simpleKinect).
8. Download Wekinator (wekinator.org) and launch as many models as you use in the patcher?
9. You can now use the tool! For instance, try to launch the PoseNet model with the Wekinator DTW model and train your first signs!
10. To build your own standalone, check out the procedure for Max/MSP (and Processing if you use the kinect scripts).

## Communication with Ableton Live

You can use the tool to communicate with Ableton Live.

1. Install Ableton Live 10 (it may be compatible with Ableton live 9), for instance the free trial version.
2. Install a compatible version of LiveOSC. It is recommended to use the following: https://github.com/ideoforms/LiveOSC. The LiveOSC folder must be copied to the "MIDI Remote Scripts" folder of Ableton. On windows: "\ProgramData\Ableton\Live 10 Trial\Resources\MIDI Remote Scripts", on Mac it should appear under: "/Applications/Ableton*.app/Contents/App-Resources/" (unverified).
Then in Ableton Live:
* open File>Preferences
* under Link/MIDI, set Control Surface 1 to "LiveOSC"

# References

This project is based on the following tools:
* Posenet Node For Max: https://github.com/tejaswigowda/posenet-node-max
* Posenet for dummies https://github.com/billythemusical/n4m-posenet-for-dummies and original N4M posenet https://github.com/yuichkun/n4m-posenet
* N4M HandPose https://github.com/lysdexic-audio/n4m-handpose
* SimpleKinect https://github.com/jpbellona/simpleKinect
* Wekinator http://www.wekinator.org/
* Viz.js https://github.com/mdaines/viz.js
* Javascript state machine https://github.com/jakesgordon/javascript-state-machine
* The bach project (bachproject.net)
* and many Max/MSP packages...

The project was also inspired by :
* MiMu Gloves https://mimugloves.com/ (extending music instruments with gestual controls)
* GeKiPe http://philippespiesser.com/projet/gekipe-geste-kinect-percussion/ (creating/extending music instruments with mechanical, percussion-like movements)
* Soundpainting as a standard, world-wide language for artistic performance, communication and composition http://www.soundpainting.com/

Each of these is an example of the performativity and potential of gestures and signs for music creativity, composition and instrument expansion.

The project is licensed under GPLv3, as required by the Bach Project.

