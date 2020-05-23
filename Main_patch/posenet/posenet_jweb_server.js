const express = require("express");
const app = express();
const Max = require("max-api");

function anypost(str) {
	if (Max) {
		Max.post(str);
	} else {
		console.log(str);
	}
}

app.get("/", function (req, res) {
	res.redirect("posenet_jweb.html");
	return;
	
	if (Max) {
	} else {
		res.send("<p>Hello! This simple server is not running inside of Max.<p>");
	}
});

app.get("/posenetdata", function(req,res){
  var data = JSON.parse(req.query.data);
  Max.outlet(data);
  
  res.end("1");
});

app.listen(3000, function () {
	// anypost("Example app listening on port 3000!");
	if (Max) Max.outlet("ready");
});

app.use(express.static(__dirname));
