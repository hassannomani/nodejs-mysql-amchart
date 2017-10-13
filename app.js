var express = require('express');
var mysql = require('mysql');
var port = 80;
var app=express();

var connection = mysql.createConnection({
	host : 'localhost',
	user : 'root',
	password : '',
	database : 'assignment' 
}) 
connection.connect(function(err) {
	if(err)
		console.log(err)
	else
		console.log('connected')
});

app.listen(port)
console.log('app staretd on port '+port)
