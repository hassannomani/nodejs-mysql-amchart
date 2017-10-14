var express        = require('express');

var app            = express();
var bodyParser     = require('body-parser');
var methodOverride = require('method-override');
var route = express.Router();   //define our app using express

var port = process.env.PORT || 80; 


app.use(express.static(__dirname + '/public')); 

// routes ==================================================
app.use(bodyParser.json()); 

// parse application/vnd.api+json as json
app.use(bodyParser.json({ type: 'application/vnd.api+json' })); 

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true })); 

// override with the X-HTTP-Method-Override header in the request. simulate DELETE/PUT
app.use(methodOverride('X-HTTP-Method-Override')); 

var controller=require('./app/routes')(app);
app.use('/', require('./app/routes')(app));
app.use('/graphPlot', controller);

//(app); // configure our routes


app.listen(port);               

console.log('server started on port ' + port);

exports = module.exports = app;   