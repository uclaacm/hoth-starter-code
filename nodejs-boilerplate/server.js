var express = require("express");
var bodyParser = require('body-parser');

var app = express();

app.set('view engine', 'hbs');
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: true })); 

app.listen(3000, (request, response) => {
	console.log("Server is listening on port 3000. Go to http://localhost:3000/");
});

app.get("/", (request, response) => {
	response.render("home", {
		title: "Insert Title Here",
		content: "Hello, World"
	})
});

app.post("/submit", (request, response) => {
	var email = request.body.email;
	var name = request.body.name;
	response.render("profile", {
		email: email,
		name: name
	})
});