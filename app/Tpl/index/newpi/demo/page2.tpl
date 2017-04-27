<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel="stylesheet" type="text/css" href="__STATIC__/css/zhe.css"/>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/good.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/share.css" />
<script type="text/javascript" src="__STATIC__/red/js/jquery.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>

<script>
$(function(){
	$("#img1").hover(function (e){
		$("#imgs").attr("src","__STATIC__/tupian/2014102215215682962700.png");
	});
	$("#img2").hover(function (e){
		$("#imgs").attr("src","__STATIC__/tupian/2014110117372309210700.jpg");
	});
		$("#img3").hover(function (e){
		$("#imgs").attr("src","__STATIC__/tupian/2014102512355241597100.jpg");
	});
	$("#img4").hover(function (e){
		$("#imgs").attr("src","__STATIC__/tupian/2014102317154037296400.jpg");
	});
});

$(function(){
	$("#wena").hover(function (e){
		 $(this).css({"background":"#FFF","color":"#e86077"});
		 $("#wenb").css({"background":"#f1f1f1","color":"#666"});
		 $("#wenc").css({"background":"#f1f1f1","color":"#666"});
		 $("#wen1").show();
		$("#wen2").hide();
		$("#wen3").hide();
	});
   $("#wenb").hover(function (e){
			$("#wena").css({"background":"#f1f1f1","color":"#666"});
			  $(this).css({"background":"#FFF","color":"#e86077"});
				 $("#wenc").css({"background":"#f1f1f1","color":"#666"});
		$("#wen1").hide();
		$("#wen2").show();
		$("#wen3").hide();
	});
	$("#wenc").hover(function (e){
		 $("#wena").css({"background":"#f1f1f1","color":"#666"});
		  $("#wenb").css({"background":"#f1f1f1","color":"#666"});
			 $(this).css({"background":"#FFF","color":"#e86077"});
		  $("#wen1").hide();
		$("#wen2").hide();
		$("#wen3").show();
	});
});
</script>
</head>
<body>
<include file="public:header" />

<!--List Start-->

<script type="text/javascript" src="__STATIC__/red/js/countdown.js"></script>
<script>
	$(function(){
   // 单个倒计时可以如此调用，效率更快。
    $('#countDown').countDown({
      //"startTime":'2014-4-25 17:25:00 ',
        "endTime":'2014-11-15 09:18:00',
     //"startTips":'距离活动开始时间：',
        "endTips":'&nbsp;'
    });
   $('#countDown2').countDown();
   });
</script>

<div class="main {:C('ftx_site_width')} clear">

	<div class="clear"></div> 

	<div class="dshop" style="background:#fff;">
		<div class="dshopt" style="width:960px;height:380px;">
			<div class="dshoptl" style="width:955px;">
				<div class="dshoptll" style="width:370px;">
					<div style="height:57px;line-height:49px;padding-left:20px;">
						您现在的位置是：零元购-首页>家居
					</div>
					<div class="dshoptllimg">
						<span id="miaoimg">
							<img style="cursor:pointer;" id="imgs" src="__STATIC__/tupian/2014102215215682962700.png" height="237" width="343"/>
						</span>
					</div>
					<div class="dshoptllimgx">
						<div class="slimg">
							<img id="img1" src="__STATIC__/tupian/2014102215215682962700.png" height="50" width="70"/>
						</div>
						<div class="slimg">
							<img id="img2" src="__STATIC__/tupian/2014110117372309210700.jpg" height="50" width="70"/>
						</div>
						<div class="slimg">
							<img id="img3" src="__STATIC__/tupian/2014102512355241597100.jpg" height="50" width="70"/>
						</div>
						<div class="slimg">
							<img id="img4" src="__STATIC__/tupian/2014102317154037296400.jpg" height="50" width="70"/>
						</div>
						<div style="clear:both"></div>
					</div>
				</div>
				<div class="dshoptlr" style="float: left; width: 350px; overflow: hidden;">
					<div class="dshoptlrt">
						<a href="http://mian.youhuishe.com/mian-14405077.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">【拍A发B（洗脸仪）】护眼仪 </a>
					</div>
					<div class="dshoptlrfe">
						限量份数：500份&nbsp;&nbsp;剩余份数:<span id="shengyu" style="color: red">&nbsp; 175 &nbsp;</span>份
					</div>
					<div class="dasjian">
						<div class="dasjianl">剩余时间:</div>
						<div class="dasjianr">
							<div style="color: #4cc434" id="countDown" class="time">&nbsp;<span class="m-d">10天</span><span class="m-h">22时</span><span class="m-m">38分</span><span class="m-s">45秒</span></div>
						</div>
						<div style="clear: both"></div>
					</div>
					<div class="dasjian">
						<div class="dasjianl">担保金</div>
						<div class="dasjianr">
							商家已存担保金<span style="color: #e71739"> 99500.00</span>元，请放心购买！
						</div>
						<div style="clear: both"></div>
					</div>
					<style>
						.daad {
							_border: 0px solid blue;
							_margin-left: 150px;
							_margin-top: -10px
						}
					</style>
					<div style="background: #f5f5f5; border: 1px solid #dddddd">
						<div class="dxiao" style="background: 0; border-right: 0; border-left: 0; border-top: 0;">
							<div class="dxiaot">
								<div class="dxiaotl" style="color: #000; padding-left: 20px; _border: 0px solid blue">
									优惠价：<span style="font-size: 36px; color: #e54d4a; font-weight: 900;">0.00</span>
								</div>
								<div class="dxiaotr" style="margin-left: 10px; margin-top: 18px; _border: 1px solid blue">
									<span id="miaosh" class="daad" target="_blank" href="http://www.taobao.com">立即抢购</span>
								</div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div class="ddam" style="width: 395px">
							<div class="ddaman">
								下单价<span class="dpsl">199.00 </span>元
							</div>
							<div class="ddaman">
								返还优惠金<span class="dpsl">199</span>元
							</div>
							<div style="border: 0" class="ddaman">
								折扣<span class="dpsl">0.0 </span>折
							</div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div class="dfen">
						<div class="dfenl">
							<div class="bshare-custom"><div class="bsPromo bsPromo2"></div>
								分享：<a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
							</div>
						</div>
						<div class="dfenr">
							<span id="add_favoriteg"><img src="__STATIC__/tupian/shoucang.png" align="absmiddle">：加入收藏</span>
						</div>
						<div style="clear: both'"></div>
					</div>
				</div>
				<div class="goodsnews" style="margin: 0; border: 1px solid #dcdcdc; height: 297px; margin-left: 6px">
					<div class="zhenxiang" style="height: 41px; padding-top: 20px; border: 0;">
						<center>
							<a style="padding-right:10px;" href="http://mian.youhuishe.com/zhu/login.php?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a"><img src="__STATIC__/tupian/denglu1.png"></a>
							<a href="http://mian.youhuishe.com/zhu/register.php?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a"><img src="__STATIC__/tupian/zhuce11.png"></a>
							
						</center>
					</div>
					<div class="gonggao">
						<div class="gonggao-tit">
							<ul>
								<li id="wena" style="background: #FFF"><a href="http://mian.youhuishe.com/mian-14405077.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">公告</a></li>
								<li id="wenb"><a href="http://mian.youhuishe.com/mian-14405077.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">商家规则</a></li>
								<li id="wenc"><a href="http://mian.youhuishe.com/mian-14405077.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">买家规则</a></li>
								<div class="clear"></div>
							</ul>
						</div>
						<div class="news-con" style="height: 131px">
							<ul id="wen1">
								<li><a href="http://mian.youhuishe.com/article.php?id=56&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社2014年国庆节放假通知</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=46&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">买家规则必看</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=33&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社有奖推荐！</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=31&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社新手买家帮助</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=30&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社每日产品更新公告</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=23&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社返款时间公告</a></li>
							</ul>
							<ul id="wen2" style="display: none">
								<li><a href="http://mian.youhuishe.com/article.php?id=52&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社商家充值规定</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=42&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">商家怎样快速通过优惠社审核</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=32&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">商家如何后台发布商品</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=28&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">如何发布产品</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=24&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社商家友情提醒</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=5&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社商家规则</a></li>
							</ul>
							<ul id="wen3" style="display: none">
								<li><a href="http://mian.youhuishe.com/article.php?id=38&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">关于乱填订单编号处罚公告</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=34&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">新手如何抢购0元购产品？</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=25&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠社买家返款时间</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=12&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">如何领取返现</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=11&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">如何获取订单号</a></li>
								<li><a href="http://mian.youhuishe.com/article.php?id=10&amp;PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">如何购买商品</a></li>
							</ul>
						</div>
						<div>
							<a target="_blank" href="http://mian.youhuishe.com/article.php?id=34"><img src="__STATIC__/tupian/xinshou.png"> </a>
						</div>
					</div>
				</div>
				<div style="clear: both"></div>
			</div>
			<div style="clear: both"></div>
		</div>
		<div class="dm2">
			<a class="dm21"> 抢到购买资格 </a>
			<a class="dm22"> 以活动下单价<span style="color: red;">0.00 </span>到指定商家店铺购买</a> 
			<a class="dm23"> 返回优惠社填写已付款订单号 </a> 
			<a class="dm24"> 返还优惠金<span style="color: red;">199</span>元</a>
			<div style="clear: both;"></div>
		</div>
	</div>
	
	<div class="dx" style="margin-left: -1px;">
		<div class="dxl" style="overflow: hidden">
			<div class="dxlt">
				<div class="dxlxta">
					商品详情<a name="serc"></a>
				</div>
				<div style="clear: both;"></div>
			</div>
			<div class="dxlm">
				<div style="color: #666; font-size: 14px; margin: 10px;">
					<p><img class="decoded" src="__STATIC__/tupian/xiangqing1.jpg"></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; "><span style="color:red;font-size:18px;font-weight:900;"><span style="font-size:22px;">【请一定不要在旺旺上面联系商家客服咨询或者催返款哦</span>】</span><span style="font-size:20px;">。</span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; "><span style="font-size:20px;">我们的客服都是请来的，不知道做了什么推广，您跟旺旺说也没用</span></p><p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">哦。只要您收到货后，尽快确认收货，认真点评分，认真评价。我们</span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">会有审核专员尽快审核您的订单，感谢配合！！</span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">（ 1 ）商品简介</span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">1、<strong>搜索关键字 <span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">“</span></strong><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">菲海&nbsp;3D揉压眼部按摩器”</span><span style="color: rgb(0, 0, 0);"><span style="margin: 0px; padding: 0px; font-family: tahoma,arial,宋体; line-height: 18px;">或者</span></span><strong><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">“</span></strong><span style="color: rgb(255, 0, 0);">眼部按摩器护眼仪眼</span></span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;"><span style="color: rgb(255, 0, 0);">睛按摩仪</span><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">”</span></span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">2、<strong>按“</strong><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">淘宝</span><strong>”搜索 &nbsp; 大概位置 第1页</strong></span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">3、<strong>按住：Ctrl+F &nbsp;键 &nbsp; 在搜索栏输入： &nbsp; &nbsp;“ </strong><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;"><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;"><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">菲海电器旗舰店</span></span></span><strong>”</strong></span></p>
					<p style="margin: 0px 0px 0px 18pt; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px 0px 0px 18pt; padding: 0px; color: rgb(102, 102, 102); font-family: arial,宋体,helvetica,sans-serif; font-size: 14px; line-height: 21px;">
						<span style="font-size:20px;"><strong>温馨提示：搜素价格 <span style="color:#ff0000;">199</span>元 下单价格</strong><span style="margin: 0px; padding: 0px; color: rgb(229, 51, 51); font-family: tahoma,arial,宋体; line-height: 18px;">199</span><strong>元</strong></span></p>
					<p style="margin: 0px 0px 0px 18pt; padding: 0px; color: rgb(102, 102, 102); font-family: arial,宋体,helvetica,sans-serif; font-size: 14px; line-height: 21px;">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;">4、发<span style="color:#ff0000;">韵达</span>快递</span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<span style="font-size:20px;"><strong>2）看图片拍哦，别拍错误了哦！</strong></span></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">
						<img alt="" src="__STATIC__/tupian/xiangqing2.jpg" style="width: 675px; height: 3104px;"></p>
					<p style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, 宋体, helvetica, sans-serif; font-size: 14px; line-height: 21px; ">&nbsp;</p>
				</div>
			</div>
			<div class="dxlt" style="margin-left: -1px;">
				<div class="dxlxtbf" style="width: 130px; float: left; text-align: center; background: #FFF; border-top: 0px solid #cc0001; font-weight: 900; height: 33px; margin-left: -19px;">谁抢到了</div>
				<div style="clear: both;"></div>
			</div>		
				<div class="dxlxtr" style="display: -none">
					<a>
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">陆思羽520</p>
					</a>
					<a>
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">陈统仁1976</p>
					</a>
					<a>
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">逃离天堂</p>
					</a>
					<a>
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">xiaoyun2014</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">Minmin卓卓</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">指尖化雪</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">汤爷</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">晏学明</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">米饭917</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">我是TT的ma</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">薇馨馨</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">297300083</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">bozoo1</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">heminglong</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">185958103@qq.com</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">635824260</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">wine0512</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">messi1992</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">bibaliu</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">小米鱼</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">mayi516</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">passchenwen</p>
					</a>
					<a> 
						<img src="__STATIC__/tupian/noavatar_small.gif" height="45" width="45">
						<p style="padding-top: 5px">leverying</p>
					</a>
					<div style="clear: both;"></div>
				</div>
				
				
				
			</div>
			<div class="dxr">
				<div class="dxrt">您可能感兴趣的商品</div>
				<div class="dxrtm">
									<div class="dxrtmlist">
						<div style="margin: 10px;">
							<a href="http://mian.youhuishe.com/mian-14405479.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a"> <img src="__STATIC__/tupian/2014110317280111582400.png" height="147" width="220">
							</a>
						</div>
						<div style="margin: 0 10px 5px; height: 25px; line-height: 25px; width: 220px; overflow: hidden; padding-left: 5px;">
							<a href="http://mian.youhuishe.com/mian-14405479.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">【拍A发B（煮蛋器）】空气净化器							</a>
						</div>
						<div style="margin: 5px 10px 15px; padding-left: 10px; height: 30px; line-height: 30px;">
							<span style="background: #f44444; padding: 5px 10px;"><a style="color: #FFF" href="http://mian.youhuishe.com/mian-14405479.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠价</a>
							</span><span style="padding-left: 10px; font-size: 14px;">¥0.00							</span>
						</div>
						<div style="height: 2px; border-bottom: 1px dashed #DCDCDC; margin: 0 10px;"></div>
					</div>
										<div class="dxrtmlist">
						<div style="margin: 10px;">
							<a href="http://mian.youhuishe.com/mian-14405477.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a"> <img src="__STATIC__/tupian/2014110317030956908400.jpg" height="147" width="220">
							</a>
						</div>
						<div style="margin: 0 10px 5px; height: 25px; line-height: 25px; width: 220px; overflow: hidden; padding-left: 5px;">
							<a href="http://mian.youhuishe.com/mian-14405477.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">【拍A发B（送5支棒棒糖）iphone6金属边框							</a>
						</div>
						<div style="margin: 5px 10px 15px; padding-left: 10px; height: 30px; line-height: 30px;">
							<span style="background: #f44444; padding: 5px 10px;"><a style="color: #FFF" href="http://mian.youhuishe.com/mian-14405477.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠价</a>
							</span><span style="padding-left: 10px; font-size: 14px;">¥0.00							</span>
						</div>
						<div style="height: 2px; border-bottom: 1px dashed #DCDCDC; margin: 0 10px;"></div>
					</div>
										<div class="dxrtmlist">
						<div style="margin: 10px;">
							<a href="http://mian.youhuishe.com/mian-14405476.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a"> <img src="__STATIC__/tupian/2014110316211804372900.jpg" height="147" width="220">
							</a>
						</div>
						<div style="margin: 0 10px 5px; height: 25px; line-height: 25px; width: 220px; overflow: hidden; padding-left: 5px;">
							<a href="http://mian.youhuishe.com/mian-14405476.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">【拍A发B（口罩+唇膏）】香奈儿香水							</a>
						</div>
						<div style="margin: 5px 10px 15px; padding-left: 10px; height: 30px; line-height: 30px;">
							<span style="background: #f44444; padding: 5px 10px;"><a style="color: #FFF" href="http://mian.youhuishe.com/mian-14405476.html?PHPSESSID=4c7dadcc75c8d083bdf26d2020457d8a">优惠价</a>
							</span><span style="padding-left: 10px; font-size: 14px;">¥0.00							</span>
						</div>
						<div style="height: 2px; border-bottom: 1px dashed #DCDCDC; margin: 0 10px;"></div>
					</div>
									</div>
			</div>
			<div style="clear: both;"></div>
		</div>


</div>

<!--List End-->


<include file="public:footer" />
</body>
</html>