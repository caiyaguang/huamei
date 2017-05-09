<?php if (!defined('THINK_PATH')) exit();?><style>.page404 {
margin-top:60px;
}

  .page404 .f404{
  text-align: center;
  font-size: 150px;
  font-weight: bold;
  line-height: 100px;
  letter-spacing: 5px;
  color: #fff;
  margin-bottom:60px;
}

.page404 .f404 span {
  cursor: pointer;
  text-shadow: 0px 0px 2px #686868,
    0px 1px 1px #ddd,
    0px 2px 1px #d6d6d6,
    0px 3px 1px #ccc,
    0px 4px 1px #c5c5c5,
    0px 5px 1px #c1c1c1,
    0px 6px 1px #bbb,
    0px 7px 1px #777,
    0px 8px 3px rgba(100, 100, 100, 0.4),
    0px 9px 5px rgba(100, 100, 100, 0.1),
    0px 10px 7px rgba(100, 100, 100, 0.15),
    0px 11px 9px rgba(100, 100, 100, 0.2),
    0px 12px 11px rgba(100, 100, 100, 0.25),
    0px 13px 15px rgba(100, 100, 100, 0.3);
  -webkit-transition: all .1s linear;
  transition: all .1s linear;
}

.page404 .f404 span:hover {
  text-shadow: 0px 0px 2px #686868,
    0px 1px 1px #fff,
    0px 2px 1px #fff,
    0px 3px 1px #fff,
    0px 4px 1px #fff,
    0px 5px 1px #fff,
    0px 6px 1px #fff,
    0px 7px 1px #777,
    0px 8px 3px #fff,
    0px 9px 5px #fff,
    0px 10px 7px #fff,
    0px 11px 9px #fff,
    0px 12px 11px #fff,
    0px 13px 15px #fff;
  -webkit-transition: all .1s linear;
  transition: all .1s linear;
}

.page404 .f404-des{
  text-align: center;
  color: #666;
  font-family: cursive;
  font-size: 20px;
  text-shadow: 0 1px 0 #fff;
  letter-spacing: 1px;
  line-height: 2em;
}
.Countdown{ margin:0 auto;padding-top: 30px; font-size:30px; font-family: tahoma,arial,simsun; color: #4A4A4A;}
.Countdown span{ display:inline-block;*display:inline;*zoom:1; width:55px;line-height:55px;text-align:center; background-color:#fff; margin-left:2px;}
.Countdown .bd{ width:16px; background-image:none;}
:root .Countdown span{}
</style><div class="page404"><div class="f404"><span>4</span><span>0</span><span>4</span></div><div class="f404-des">    	抱歉！您要查看的商品已删除了。(´･ω･`)<br/><?php echo C('ftx_site_url');?><div class="Countdown" id="time"><span id="s"></span>秒后系统为您自动跳转到首页。
   </div></div></div><script>var s = 5;//倒计时多少秒
function showtime(){	
	document.getElementById('s').innerHTML = s;
	s = s-1;	
	if(s==0){
		window.location="<?php echo C('ftx_site_url');?>";//倒计时结束跳转到
	}
}
clearInterval(settime); 
var settime = setInterval(function(){
	showtime();
},1000);
</script>