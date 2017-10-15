var express        = require('express');
var app            = express();
var bodyParser     = require('body-parser');
var methodOverride = require('method-override');
var mysql 		   = require('mysql')
var route          = express.Router();   
var connection     = mysql.createConnection({
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

var port = process.env.PORT || 8000; 


app.use(express.static(__dirname + '/public')); 

app.use(bodyParser.json()); 

app.use(bodyParser.json({ type: 'application/vnd.api+json' })); 

app.use(bodyParser.urlencoded({ extended: true })); 

app.use(methodOverride('X-HTTP-Method-Override')); 

//app.use('/graphPlot', controller);
app.get('/',function (req,res) {
	res.sendFile(__dirname+'/public/home.html'); // load our public/index.html file
	console.log('hi')
});
app.post('/graphPlot',function(req,res){
	//res.send('hi')
	var id=parseInt(req.body.machine_id)
	connection.query("SELECT country, sum(price) as price from tbl_machine_data where machine_id="+id +" group by country",
		function(err,rows){
			if(err){
				console.log(err)
				res.send(err)
			}
			else{
				var temp={}
				console.log(rows.length)
				var len= rows.length;
				for (var i = 0; i < len; i++){
 
        			for (var j = 0; j <len-1; j++){
            			if (rows[j].price <rows[j + 1].price){

				           	temp=rows[j+1];
				           	rows[j+1]=rows[j];
				           	rows[j]=temp

				        }
					}
				}
				console.log(rows)		
				res.send(rows)
			}
		})
})

//(app); // configure our routes


app.listen(port);               

console.log('server started on port ' + port);

exports = module.exports = app;   