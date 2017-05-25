var scene = document.getElementsByClassName('awardShow')[0];
var boxWidth = 150;
var boxHeight = 150;
scene.style.cssText = 'width:'+boxWidth+'px;height:'+boxHeight+'px;margin-left:'+-boxWidth/2+'px;bottom:27%;position:absolute;left:50%;'

var boxs = [];
var num = 10;
for(var i=0;i<num;i++){
	var box = document.createElement('div');
	box.style.cssText = 'width:100%;height:'+100/num+'%;position:relative;transform-style:preserve-3d;transform-origin:center center '+boxHeight/2+'px;transition:transform 1s ease '+i/num+'s;'
	for(var j=0;j<6;j++){
		var pennal = document.createElement('div');
		pennal.style.cssText = 'position:absolute;left:0;top:0;'
		var span = document.createElement('span');
		span.style.cssText = 'position:absolute;bottom:0;left:0;width:100%;text-align: center;color:#fff;font-size:.8em;background:rgba(0,0,0,.5);line-height:1.5em;'
		if(j == 0){
			pennal.style.width = boxWidth + 'px';
			pennal.style.height = boxHeight/num + 'px';
			pennal.style['transform-origin'] = 'top';
			pennal.style.transform = 'rotateX(90deg)';
			pennal.style.background = 'red';
		}else if(j == 1){
			pennal.style.width = boxWidth + 'px';
			pennal.style.height = boxHeight/num + 'px';
			pennal.style['transform-origin'] = 'bottom';
			pennal.style.transform = 'rotateX(-90deg)';
			pennal.style.background = 'black';
		}else if(j == 2){
			pennal.style.width = boxWidth + 'px';
			pennal.style.height = boxHeight/num + 'px';
			pennal.style['transform-origin'] = 'left';
			pennal.style.transform = 'rotateY(-90deg)';
			// pennal.style.background = 'blue';
			pennal.style.background = 'url(img/specialAward.jpg) no-repeat 0 '+i*(-boxHeight/num)+'px';
			span.innerHTML = '特等奖：京东购物卡';
			if(i == num-1){
				pennal.appendChild(span);
			}
		}else if(j == 3){
			pennal.style.width = boxWidth + 'px';
			pennal.style.height = boxHeight/num + 'px';
			pennal.style['transform-origin'] = 'right';
			pennal.style.transform = 'rotateY(90deg)';
			// pennal.style.background = 'yellow';
			pennal.style.background = 'url(img/firstAward.jpg) no-repeat 0 '+i*(-boxHeight/num)+'px';
			span.innerHTML = '一等奖：空气净化器';
			if(i == num-1){
				pennal.appendChild(span);
			}
		}else if(j == 4){
			pennal.style.width = boxWidth + 'px';
			pennal.style.height = boxHeight/num + 'px';
			pennal.style['transform-origin'] = 'center center';
			pennal.style.transform = 'rotateY(180deg)';
			// pennal.style.background = 'gray';
			pennal.style.background = 'url(img/secondAward.jpg) no-repeat 0 '+i*(-boxHeight/num)+'px';
			span.innerHTML = '二等奖：无叶风扇';
			if(i == num-1){
				pennal.appendChild(span);
			}
		}else if(j == 5){
			pennal.style.width = boxWidth + 'px';
			pennal.style.height = boxHeight/num + 'px';
			pennal.style['transform-origin'] = 'center center';
			pennal.style.transform = 'translateZ('+boxWidth+'px)';
			// pennal.style.background = 'green';
			pennal.style.background = 'url(img/thirdAward.jpg) no-repeat 0 '+i*(-boxHeight/num)+'px';
			span.innerHTML = '三等奖：小米飞利浦台灯';
			if(i == num-1){
				pennal.appendChild(span);
			}
		}
		box.appendChild(pennal);
		scene.appendChild(box);
	}
	boxs.push(box);
}
var t;
var angle = 0;
function run(){
	t = setInterval(function(){
		angle += 90;
		for(var i=0;i<boxs.length;i++){
			boxs[i].style.transform = 'rotateY('+(-angle)+'deg)';
		}
	},2000)
};
run();
window.onblur = function(){
	clearInterval(t);
}
window.onfocus = function(){
	run();
}