$(function(){
	// 设置抽取个数的显示隐藏
	$('.setBtn').on('click',function(){
		$('.setBox').toggleClass('hidden');
	})
	
	var roundData;
	var person;
	// var awardPerson = [];
	//获取本轮数据
	$.ajax({
		'url': '/getRoundData',
		'type': 'POST',
		'data': {"round": location.href.substr(location.href.lastIndexOf('/')+1)},
		'dataType': 'json',
		success: function(data){
			// alert(JSON.stringify(data));
			roundData = data.data;
			ms.init();
		}
	});

	//搞事对象
	var ms = {
		"data": {},
		"timeOut": null,
		"flag": true,
		"awardArr": [],
		// "endNum": 0,  //已经中奖人数
		init: function(){
			if(roundData.luckyAward == null){
				$(".luckyAwardHidden").addClass('hidden');
				$('#rankAward').html(roundData.rankAward.name);
				$('#rankAwardSet').html(roundData.rankAward.name);
				this.getData('rankAward');
				return;
			}
			// alert(roundData)
			$('#luckyAward').html(roundData.luckyAward.name);
			$('#luckyAwardSet').html(roundData.luckyAward.name);
			$('#rankAward').html(roundData.rankAward.name);
			$('#rankAwardSet').html(roundData.rankAward.name);
			this.getData('luckyAward');
		},
		fillHtml: function(opt){
			var html = "";
			if(opt instanceof Array){
				for(var i=0;i<opt.length;i++){
					html += '<div class="person">'+
								'<img src="img/lotteryPerson/msg/'+ person[opt[i]].msg +'.jpg" />'+
								'<span>'+person[opt[i]].msg+'</span>'+
							'</div>';
				}
			}else if(parseFloat(opt).toString() !== "NaN"){
				for(var i=0;i<opt;i++){
					html += '<div class="person">'+
								'<img class="logo" src="img/logo.png" />'+
								'<span>部门-姓名</span>'+
							'</div>';
				}
			}
			$(".msBox").html(html);
			this.showPersonWidth();
		},
		getData: function(str){
			this.data = roundData[str];
			$(".awardActive").html(this.data.name);
			this.fillHtml(this.data.timesNum)
			$(".awardPic").find('img').attr('src','img/'+this.data.awardPic);
			$(".awardPic").find('.awardPicTil').html(this.data.awardName);
		},
		lottery: function(){
			var that = this;
			//随机取抽取，要抽取的不同的个数
			var arr = [];
			for(var i=0;i < this.data.timesNum;i++){
				var num = Math.floor(person.length*Math.random());
				while(this.checkExist(num,arr)){
					num = Math.floor(person.length*Math.random());
				}
				arr.push(num);
			}
			this.awardArr = arr;
			this.fillHtml(arr);
			this.timeOut = setTimeout(function(){
				that.lottery();
			},0);
		},
		checkExist: function(num,arr){
			for(var i=0;i<arr.length;i++){
				if(arr[i] == num){
					return true;
				}
			}
			return false;
		},
		//获取本次中奖的人
		copyArrEle: function(arr,person,callback){
			var awardPerson = [];
			for(var i=0;i<arr.length;i++){
				awardPerson.push(person[arr[i]]);
			}
			callback(awardPerson);
		},
		// 获取本次抽奖后剩余的人
		removeArrEle: function(arr,person,callback){
			// alert(person.length);
			var round = 0;
			//这是一个坑，一定要正确排序哦
			arr.sort(function(a,b){
				return a - b;
			});
			for(var i=0;i<arr.length;i++){
				person.splice(arr[i]-round,1);
				round++;
			}
			this.personLength = person.length;
			callback(person);
		},
		//获取参与抽奖人信息
		getPerson: function(callback){
			var that = this;
			$.ajax({
				'url': '/getPerson',
				'type': 'POST',
				'dataType': 'json',
				success: function(data){
					// alert(JSON.stringify(data));
					person = data;
					callback();
				}
			})
		},
		//存储中奖人
		addAwardPerson: function(personData,thisRoundData){
			// alert(JSON.stringify(personData));
			// alert(JSON.stringify(thisRoundData));
			$.ajax({
				'url': '/addAwardPerson',
				'type': 'POST',
				'data': {
					"personData": JSON.stringify(personData),
					"thisRoundData": JSON.stringify(thisRoundData)
				},
				'dataType': 'json',
				success: function(data){
					// alert(JSON.stringify(data));
				}
			})
		},
		//更新person
		updatePerson: function(person){
			// alert(JSON.stringify(person));
			$.ajax({
				'url': '/updatePerson',
				'type': 'POST',
				'data': {
					"person": JSON.stringify(person)
				},
				'dataType': 'text',
				success: function(data){
					// alert(JSON.stringify(data));
					ms.getPerson(function(){});
					// alert(data);
				}
			})
		},
		// 更新剩余抽奖次数
		updateTimes: function(data){
			// alert(JSON.stringify(data));
			$.ajax({
				'url': '/updateTimes',
				'type': 'POST',
				'data': data,
				'dataType': 'json',
				success: function(data){
					// alert(JSON.stringify(data));
				}
			})
		},
		//重置person和清空
		resetAll: function(){
			$.ajax({
				'url': '/resetAll',
				'type': 'POST',
				'dataType': 'text',
				success: function(data){
					location.reload();
					alert(data); 
				}
			})
		},
		//设置本轮每次抽取个数和要中奖的总数
		setNums: function(nums){
			$.ajax({
				'url': '/setNums',
				'type': 'POST',
				'data': nums,
				'dataType': 'text',
				success: function(data){
					location.reload();
					// alert(JSON.stringify(data));
					alert(data);

				}
			})
		},
		//获取中奖的人用于呈现
		getAwardPerson: function(AwardDate){
			$.ajax({
				'url': '/getAwardPerson',
				'type': 'POST',
				'data': AwardDate,
				'dataType': 'json',
				success: function(data){
					// alert(JSON.stringify(data));
					ms.fillHtmlToShow(data);
				}
			})
		},
		fillHtmlToShow: function(data){
			if(data.length == 0){
				$(".showAward").html("还没人中奖，快去抽奖吧！");
				return;
			}
			var html = "";
			var thisRound;
			if(data[0].round == "firstRound"){
				thisRound = '第一轮';
			}else if(data[0].round == "secondRound"){
				thisRound = '第二轮';
			}else if(data[0].round == "thirdRound"){
				thisRound = '第三轮';
			}else if(data[0].round == "fourthRound"){
				thisRound = '第四轮';
			}
			$("#showRound").html(thisRound);
			$("#showAwardName").html(data[0].name);
			for(var i=0;i<data.length;i++){
				html += '<div class="person">'+
							'<img src="img/lotteryPerson/msg/'+ data[i].msg +'.jpg" />'+
							'<span>'+data[i].msg+'</span>'+
						'</div>';
			}
			$(".showAward").html(html);
			this.showPersonWidth();
		},
		setPersonWidth: function(num){
			$.ajax({
				'url': '/setPersonWidth',
				'type': 'POST',
				'data': {"num": num},
				'dataType': 'text',
				success: function(data){
					// alert(JSON.stringify(data));
					alert(data);
					location.reload();
				}
			})
		},
		showPersonWidth: function(){
			$(".person").css({'font-size':'14px','line-height':'16px','background-color':'#FFB4AF','width':roundData.personWidth+'px','height':3/2*roundData.personWidth+'px'});
			$('.person').find('img').css({
				'max-width': '100%',
				'max-height': '100%',
				'display': 'block',
				'margin': '0 auto'
			});
			$('.person').find('.logo').css({
				'width': '70%',
				'position': 'absolute',
				'left': '50%',
				'top': '50%',
				'margin-left': '-35%',
				'margin-top': '-20px',
			})
		}
	}
	// 选择抽奖类型
	$('#luckyAward').on('click',function(){
		ms.getData('luckyAward');
	});
	$('#rankAward').on('click',function(){
		ms.getData('rankAward');
	})
	//开始抽奖
	$("#lottery").on('click',function(){
		ms.getPerson(function(){
			if(ms.data.timesNum>person.length){
				alert('剩余人数不足以抽奖！');
				return;
			}else if((ms.data.totalNum-ms.data.endNum)<ms.data.timesNum){
				alert('抽奖剩余人数不足以抽奖！');
				return;
			}
			if(ms.flag){
				ms.flag = false;
				ms.lottery();
				$("#lottery").html("停止抽奖");
			}else{
				ms.flag = true;
				clearTimeout(ms.timeOut);
				$("#lottery").html("开始抽奖");
				ms.data.endNum += ms.data.timesNum;
				ms.updateTimes(ms.data);

				ms.copyArrEle(ms.awardArr,person,function(awardPerson){
					ms.addAwardPerson(awardPerson,ms.data);
				});

				ms.removeArrEle(ms.awardArr,person,function(person){
					ms.updatePerson(person);
				});
				
				// alert(JSON.stringify(awardPerson));
				// alert(JSON.stringify(person));
			}
		});
	})
	//设置rank表中的每次抽奖个数和总共要抽多少个，修改数据库，请谨慎操作。
	$("#luckySetCommit").on('click',function(){
		var confirm = window.confirm("目前每次抽取："+roundData.luckyAward.timesNum+"个,总数："+roundData.luckyAward.totalNum+"个,确定要修改？")
		if(!confirm){
			return;
		}
		var nums = {};
		nums.timesNum = $(".luckyTimesNum").val();
		nums.totalNum = $(".luckyTotalNum").val();
		nums.round = roundData.round;
		nums.typeAward = 'luckyAward';
		// alert(JSON.stringify(nums));
		ms.setNums(nums);
		// alert(roundData.luckyAward.timesNum + "---------" + roundData.luckyAward.totalNum);
	});
	$("#rankSetCommit").on('click',function(){
		var confirm = window.confirm("目前每次抽取："+roundData.rankAward.timesNum+"个,总数："+roundData.rankAward.totalNum+"个,确定要修改？")
		if(!confirm){
			return;
		}
		var nums = {};
		nums.timesNum = $(".rankTimesNum").val();
		nums.totalNum = $(".rankTotalNum").val();
		nums.round = roundData.round;
		nums.typeAward = 'rankAward';
		ms.setNums(nums);
		// alert(roundData.rankAward.timesNum + "---------" + roundData.rankAward.totalNum);
	});
	//重置person,和抽奖次数，清空中奖人，修改数据库，请谨慎操作。
	$("#resetAll").on('click',function(){
		var confirm = window.confirm("重置将会清空中奖人，你是认真的吗？");
		if(confirm){
			ms.resetAll();
		}
	})
	$(".close").on('click',function(){
		$(".showAwardBox").addClass('hidden');
	})
	//获取中奖人信息
	$("#lookAward").on('click',function(){
		ms.getAwardPerson(ms.data);
		$(".showAward").html("");
		$(".showAwardBox").toggleClass('hidden');
	})
	//设置中奖人框的显示宽度
	$("#setPersonWidth").on('click',function(){
		var width = $(".personWidth").val();
		ms.setPersonWidth(width);
	});
});