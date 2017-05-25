var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var mysql = require('mysql');
 
app.use(express.static('assets'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
 
app.get('/', function (req, res) {
   res.sendFile( __dirname + "/assets/" + "lottery.html" );
})

//get
app.get('/firstRound',function(req,res){
	res.sendFile( __dirname + "/assets/" + "award.html" );
})
app.get('/secondRound',function(req,res){
	res.sendFile( __dirname + "/assets/" + "award.html" );
})
app.get('/thirdRound',function(req,res){
	res.sendFile( __dirname + "/assets/" + "award.html" );
})
app.get('/fourthRound',function(req,res){
	res.sendFile( __dirname + "/assets/" + "award.html" );
})

//post
app.post('/getRoundData',function(req,res){
	mysqlObj.query('select * from rank where round="' + req.body.round + '"',function(result){
		var data = {};
		for(var i=0;i<result.length;i++){
			data[result[i].typeAward] = result[i];
		}
		data.round = result[0].round;
		data.personWidth = result[0].personWidth;
		var response = {
			"author": "jabin",
			"date": "2017-5-18",
			"getParse": req.body.round,
			"data": data
		}
		res.end(JSON.stringify(response));
	});
})
// 获取用户
app.post('/getPerson',function(req,res){
	mysqlObj.query('select * from person',function(result){
		res.end(JSON.stringify(result));
	})
})
//添加中奖人
app.post('/addAwardPerson',function(req,res){
	var personData = JSON.parse(req.body.personData);
	var thisRoundData = JSON.parse(req.body.thisRoundData);

	var round = thisRoundData.round;
	var typeAward = thisRoundData.typeAward;
	var name = thisRoundData.name;
	var awardName = thisRoundData.awardName;
	var price = thisRoundData.price;

	for(var i=0;i<personData.length;i++){
		mysqlObj.query('insert into awardperson(eMsg,msg,round,typeAward,name,awardName,price) values("'+personData[i].eMsg+'","'+personData[i].msg+'","'+round+'","'+typeAward+'","'+name+'","'+awardName+'","'+price+'")',function(result){
			res.end(JSON.stringify(result));
		})
	}
})
//更新person
app.post('/updatePerson',function(req,res){
	var person = JSON.parse(req.body.person);
	mysqlObj.query('truncate table person',function(result){
		for(var i=0;i<person.length;i++){
			var eMsg = person[i].eMsg;
			var msg = person[i].msg;
			mysqlObj.query('insert into person(eMsg,msg) values("'+eMsg+'","'+msg+'")',function(result){
				// res.end(JSON.stringify(result));
				if(typeof(result) == 'string'){
					res.end(result);
					return;
				}
				res.end("抽奖成功！");
			})
		}
	})
	// res.end(JSON.stringify(person));
})
//更新已抽奖数
app.post('/updateTimes',function(req,res){
	var data = req.body;
	mysqlObj.query('update rank set endNum ="'+data.endNum+'" where round="'+data.round+'" and typeAward="'+data.typeAward+'"',function(result){
		res.end(JSON.stringify(result))
	})
})
//重置person，清空awardPerson,清空已抽奖个数
app.post('/resetAll',function(req,res){
	mysqlObj.query('truncate table awardperson',function(result){});
	mysqlObj.query('truncate table person',function(result){
		mysqlObj.query('insert into person select * from originPerson',function(result){});
	});
	mysqlObj.query('update rank set endNum = 0',function(result){
		if(typeof(result) == 'string'){
			res.end(result);
			return;
		}
		res.end("重置成功！");
	});
	// res.end(JSON.stringify(result));
})
//设置每次抽取个数和要中奖的总数
app.post('/setNums',function(req,res){
	var data = req.body;
	mysqlObj.query('update rank set timesNum="'+data.timesNum+'",totalNum="'+data.totalNum+'" where round="'+data.round+'" and typeAward="'+data.typeAward+'"',function(result){
		// res.end(JSON.stringify(result));
		if(typeof(result) == 'string'){
			res.end(result);
			return;
		}
		res.end("设置成功！");
	})
})
//获取中奖的人
app.post('/getAwardPerson',function(req,res){
	var data = req.body;
	mysqlObj.query('select * from awardperson where round="'+data.round+'" and typeAward="'+data.typeAward+'"',function(result){
		res.end(JSON.stringify(result))
	})
})
//获取所有中奖人
app.post('/getAwardPersonAll',function(req,res){
	mysqlObj.query('select * from awardperson',function(result){
		res.end(JSON.stringify(result));
	})
})
//设置中奖人框显示的宽度样式
app.post('/setPersonWidth',function(req,res){
	mysqlObj.query('update rank set personWidth="'+req.body.num+'"',function(result){
		if(typeof(result) == 'string'){
			res.end(result);
			return;
		}
		res.end("设置成功！");
	})
})
//mysql
var mysqlObj = {
	"connection": null,
	startCon: function(){
		this.connection = mysql.createConnection({
			host: 'localhost',
			user: 'root',
			password: '368532',
			database: 'lottery'
		})
		this.connection.connect();
	},
	query: function(sql,callback){
		var that = this;
		this.connection.query(sql,function(err,result){
			if(err){
				console.log('[select error] - ',err.message);
				callback("失败！");
				return;
			}
			callback(result);
			// that.data = result;
		})
	},
	endCon: function(){
		this.connection.end();
	}
}
mysqlObj.startCon();

var server = app.listen(8081,'127.0.0.1',function () {
  var host = server.address().address
  var port = server.address().port
  console.log("应用实例，访问地址为 http://"+host+":"+port)
 
})
