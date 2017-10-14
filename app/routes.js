module.exports = function(app){
	var express = require('express')
	,mysql = require('mysql')
	,port = 80
	,app=express()
	,connection = mysql.createConnection({
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
	app.get('/', function(req, res) {
		console.log('hi')
    	res.render('/public/index.html'); // load our public/index.html file
	})

	app.get('/graphPlot',function(req, res) {
		//console.log(req.body)

		res.send('jii')		// body...
	})
}



