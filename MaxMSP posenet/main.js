const { app, BrowserWindow } = require("electron");

function createWindow() {
	console.log("Creating camera window");
	// Create the browser window.
	const win = new BrowserWindow({ width: 800, height: 600 });

	// and load the html of the app.
	win.loadFile("./camera.html");
	
	// duplicate did not work
	/* console.log("Creating video window");
	// Create the browser window.
	const win2 = new BrowserWindow({ width: 800, height: 600 });

	// and load the html of the app.
	win.loadFile("./video.html"); */ 
}

app.on("ready", createWindow);
