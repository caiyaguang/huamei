<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel="stylesheet" type="text/css" href="__STATIC__/css/zhe.css"/>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/good.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/share.css" />
<script type="text/javascript" src="__STATIC__/red/js/jquery.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>

<script>
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
<script>
$(function(){
							//未登录
							$("#needlogin").click(function (e){
								$("#bodys").show();
								$("#zhezhao").show();
								$("#zhezhao").css({"z-index":"100000"});;
							});
							$("#guanbi").click(function (e){
								$("#zhezhao").hide();
								$("#bodys").hide();
							});
							//已登录
						$("#buy").click(function (e){
							var d = new Date();
						  $.ajax({
							  type:"get",
							  url:"{:U('free/buy',array('id'=>$detail['id']))}",
							 success:function(data){
								if(data.status == 1){
									$("#bodys").show();
									$("#zhezhaod").show();
									$("#zhezhaod").css({"z-index":"100000"});
									$("#shac").html('<span id="miaoshas" class="daad" target="_blank" style="background:#DCDCDC;" >已购买</span>');
								}else{
									alert(data.msg);
								}
							  }
						  });
						});
							$("#tiandingdan").click(function (e){
								 $("#zhezhaod").hide();
								$("#bodys").hide();
								$("#tiandingdanw").show();
							});
							$("#guanbia").click(function (e){
								$("#zhezhaod").hide();
								$("#bodys").hide();
							});
							$(".guanbia").click(function (e){
								$("#zhezhaod").hide();
								$("#bodys").hide();
							});
							$("#guanbiaas").click(function (e){
								$("#tiandingdanw").hide();
								$("#bodys").hide();
							});
});
</script>

</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<!--List Start-->
					<style>
.dzhezhao{position:fixed; left:40%;top:150px;z-index:1000;width:361px;display:none;_position:absolute;_top: expression_r(documentElement.scrollTop + documentElement.clientHeight-this.offsetHeight);}
.dzhezhaot{height:49px;line-height:28px;padding-left:15px;color:#000;}
.dzhezhaotin{width:200px;height:25px;line-height:25px;margin:5px 0;border:0;background:0}
.dzhezhaotino{border:0;text-align:center;width:262px;height:35px;line-height:28px;background:0;}
					</style>
<script type="text/javascript" src="__STATIC__/red/js/countdown.js"></script>
<script>
	$(function(){
   // 单个倒计时可以如此调用，效率更快。
    $('#countDown').countDown({
      //"startTime":'2014-4-25 17:25:00 ',
        "endTime":"{$detail.end_time|date="Y-m-d H:i:s",###}",
     //"startTips":'距离活动开始时间：',
        "endTips":'&nbsp;'
    });
   $('#countDown2').countDown();
   });
</script>
	<div id="bodys"
		style="background: #000; opacity: 0.6; width: 100%; height: 100%; display: none; position:fixed; left: 0; top: 0; z-index: 10000;_position:absolute;_top: expression_r(documentElement.scrollTop + documentElement.clientHeight-this.offsetHeight);">
	</div>
	<empty name="user">
		<div id="zhezhao" class="dzhezhao"
		style="background: url(__STATIC__/tupian/deng_lu.png) no-repeat left top">
		<div class="dzhezhaot" style="">
			<span id="guanbi"
				style="float: right; padding-right: 10px; padding-top: 10px; cursor: pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div style="padding: 15px; height: 200px">
			<form target="_self" action="{:U('user/login')}"
				method="post">
				<div style="width: 210px; margin: 16px 0 10px 69px;">
				<input class="dzhezhaotin" type="text" placeholder="用户名/邮箱" name="username">
				</div>
				<div style="width: 210px; margin: -6px 0 0 69px;">
				<input class="dzhezhaotin" type="password" placeholder="请输入密码" name="password">
				</div>
				<div style="width: 200px; margin: 33px 0 15px 33px;">
					<input class="dzhezhaotino" style="" value="" type="submit" />
					<input type="hidden" name="from" value="{:U('free/detail',array('id'=>$detail['id']))}"/>
					<div style="width: 210px; margin: 20px auto;">
						<a target="_blank"
							style="float: right; padding-right: 10px; font-size: 14px;"
							href="{:U('user/register')}">立即注册</a>&nbsp;&nbsp;
						<a target="_blank"
							style="float: right; padding-right: 10px; font-size: 14px;"
							href="{:U('forget/index')}">忘记密码</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<else/>
	<div id="zhezhaod" class="dzhezhao"
		style="width: 496px; height: 278px; background: url(__STATIC__/tupian/qianggouchengong.png) no-repeat left top; left: 33%;position:fixed;_position:absolute;_top: expression_r(documentElement.scrollTop + documentElement.clientHeight-this.offsetHeight);">
		<div class="dzhezhaot" style="width: 474px;">
			<span id="guanbia"
				style="float: right; padding-right: 10px; cursor: pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
		<div style="padding: 15px 0 0 28px; width: 450px; margin-top: 26px">
			<p style="margin: 10px 0;">请注意以下事项：</p>
			<p style="margin: 10px 0;">
				1、下单价：<span style="color: red">{$detail.price}</span>元，请在下单页面核对下单价是否一致。
			</p>
			<p style="margin: 10px 0;">
				2、优惠价：<span style="color: red">{$detail.coupon_price}</span>元，本次交易为您省下<span
					style="color: red">{$detail.fan}</span>元。
			</p>
			<p style="margin: 18px 0 10px 0;">
				注意：报名抢购后<span style="color: red; padding: 0 3px;">30分钟</span>内不下单付款和返回填写<span
					style="color: redp;">订单号</span>，本次记录将自动取消。
			</p>
		</div>
		<div
			style="height: 40px; text-align: center; line-height: 40px; margin-top: 19px">
			<div style="float: left; margin-left: 167px">
				<a onclick="tiandingdan()" id="tiandingdan"
					href="{$detail.click_url}" target="_blank"
					style="display: block; width: 165px; height: 34px; border: 0px solid red">
				</a>
			</div>
			<div style="clear: both"></div>
		</div>
	</div>
	<div id="tiandingdanw" class="dzhezhao"
		style="position:fixed;_position:absolute;_top: expression_r(documentElement.scrollTop + documentElement.clientHeight-this.offsetHeight);; top: 180px; z-index: 10000; width: 352px; height: 237px; border: 0px solid red; left: 37%; padding: 8px 18px 11px 8px; background: none repeat scroll 0% 0% rgb(125, 130, 133); display: none;">
		<div
			style="background: url(__STATIC__/tupian/tian_new.png) no-repeat left top; width: 361px; height: 240px;">
			<div style="height: 30px; line-height: 30px; padding-left: 10px">
				<span id="guanbiaas"
					style="float: right; padding: 5px 5px 5px 10px; cursor: pointer;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			</div>
			<form target="_self" action="{:U('user/inputOrderID')}" method="post">
				<div
					style="height: 24px; line-height: 20px; overflow: hidden; width: 280px; padding-left: 30px; margin-top: 20px">
					商品名称：<span style="color: #0099ff">{$detail.title}</span>
				</div>
				<div
					style="height: 24px; line-height: 20px; overflow: hidden; width: 280px; padding-left: 30px; margin: 8px 0;">
					下单价格：<span style="color: #e71739; font-size: 14px">￥{$detail.price}					</span>
				</div>
				<div style="padding-left: 30px;">
					订单编号： <input name="order_id" style="height: 24px; line-height: 24px; width: 237px" type="text" />
				</div>
				<div style="padding-left: 15px; margin: 10px 0;">
					<div
						style="float: left; width: 70px; line-height: 40px; line-height: 35px;">温馨提示：</div>
					<div style="float: left; width: 270px">
						若单号未付款或填写不正确，将无法获得返款！<br /> <a target="_blank"
							style="color: #0099ff; cursor: pointer;"
							href="{:U('article/read',array('id'=>'4'))}">如何获取订单编号？</a>
					</div>
					<div style="clear: both"></div>
				</div>
				<div style="height: 35px; line-height: 35px;">
					<input type="hidden" name="items_id" value="{$detail['id']}">
					<input style="margin-left: 142px; margin-top: 5px; height: 38px; width: 73px; display: block; background: 0; border: 0" type="submit" />
				</div>
			</form>
		</div>
	</div>
</empty>
<div class="main {:C('ftx_site_width')} clear">

	<div class="clear"></div> 

	<div class="dshop" style="background:#fff;">
		<div class="dshopt" style="width:960px;">
			<div class="dshoptl" style="width:955px;">
				<div class="dshoptll" style="width:370px;">
					<div style="height:57px;line-height:49px;padding-left:20px;">
						您现在的位置是：零元购-首页>{$detail.title}
					</div>
					<div class="dshoptllimg">
						<span id="miaoimg">
							<img style="cursor:pointer;" id="imgs" src="{$detail.pic_url}" height="237" width="343"/>
						</span>
					</div>
				</div>
				<div class="dshoptlr" style="float: left; width: 350px; overflow: hidden;">
					<div class="dshoptlrt">
						<a href="{:U('free/detail',array('id'=>$detail['id']))}" target="_blank">{$detail.title}</a>
					</div>
					<div class="dshoptlrfe">
						限量份数：{$detail.num}份&nbsp;&nbsp;剩余份数：<span id="shengyu" style="color: red">&nbsp; {$detail.remain} &nbsp;</span>份
					</div>
					<div class="dasjian">
						<div class="dasjianl">剩余时间</div>
						<div class="dasjianr">
							<div style="color: #4cc434" id="countDown" class="time"></div>
						</div>
						<div style="clear: both"></div>
					</div>
					<div class="dasjian">
						<div class="dasjianl">担保金</div>
						<div class="dasjianr">
							商家已存担保金<span style="color: #e71739">{$detail.deposit}</span>元，请放心购买！
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
								<div class="dxiaotl" style="color:#000; padding-left: 20px; _border: 0px solid blue">
									优惠价：<span style="font-size:36px;color:#e54d4a;font-weight:900;">{$detail.coupon_price}</span>
								</div>
								<div class="dxiaotr" style="margin-left: 10px; margin-top: 18px; _border: 1px solid blue">
							<span id="shac">
							<if condition="$detail.class eq 0">
								<empty name="user">
								<span id="needlogin" class="daad" target="_blank" href="{$detail.click_url}">立即抢购</span>
								<else/>
									<notempty name="hadbuy">
									<span id="miaoshas" class="daad" target="_blank" style="background:#DCDCDC;" >已购买</span>
									<else/>
										<eq name="user.login_type" value="1">
										<span id="buy" class="daad" target="_blank" href="{$detail.click_url}">立即抢购</span>
										<else/>
									<span id="miaoshas" class="daad" target="_blank" style="background:#DCDCDC;" >仅限买家</span>
										</eq>
									</notempty>
								</empty>
							<elseif condition="$detail.class eq 1"/>
								<span id="miaoshas" class="daad" target="_blank" style="background:#DCDCDC;" >已结束</span>
							<elseif condition="$detail.class eq 2"/>
								<span id="buy" class="daad" target="_blank" href="{$detail.click_url}">未开始</span>
							<elseif condition="$detail.class eq 3"/>
								<span id="buy" class="daad" target="_blank" href="{$detail.click_url}">未上线</span>
							<elseif condition="$detail.class eq 4"/>
								<span id="miaoshas" class="daad" target="_blank" style="background:#DCDCDC;" >已抢完</span>
							<elseif condition="$detail.class eq 5"/>
								<span id="miaoshas" class="daad" target="_blank" style="background: #94FFD4;">还有机会</span>
							</if>
							</span>
									
									
								</div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div class="ddam" style="width: 395px">
							<div class="ddaman">
								下单价<span class="dpsl">{$detail.price}</span>元
							</div>
							<div class="ddaman">
								返还优惠金<span class="dpsl">{$detail.fan}</span>元
							</div>
							<div style="border: 0" class="ddaman">
								折扣<span class="dpsl">{$detail.zk}</span>折
							</div>
							<div style="clear: both;"></div>
						</div>
					</div>
				</div>
				<div class="goodsnews" style="margin: 0; border: 1px solid #dcdcdc; height: 297px; margin-left: 6px">
					<div class="zhenxiang" style="height: 41px; padding-top: 20px; border: 0;">
						<center>
							<empty name="user">
							<a style="padding-right:10px;" href="{:U('user/login')}"><img src="__STATIC__/tupian/denglu1.png"></a>
							<a href="{:U('user/register')}"><img src="__STATIC__/tupian/zhuce11.png"></a>
							<else/>
								<a style="padding-right: 10px;" href="{:U('user/index')}"><img src="__STATIC__/tupian/zhuan_ids_q.gif"> </a> 
								<a href="{:U('user/logout')}"><img src="__STATIC__/tupian/zhuan_ids_qq.gif"> </a>
								</eq>
							</empty>
						</center>
					</div>
					<div class="gonggao">
						<div class="gonggao-tit">
							<ul>
								<li id="wena" style="background: #FFF"><a href="{:U('article/cate',array('id'=>'1'))}" target="_blank">公告</a></li>
								<li id="wenb"><a href="{:U('article/cate',array('id'=>'3'))}" target="_blank">商家规则</a></li>
								<li id="wenc"><a href="{:U('article/cate',array('id'=>'4'))}" target="_blank">买家规则</a></li>
								<div class="clear"></div>
							</ul>
						</div>
						<div class="news-con" style="height: 131px">
							<ul id="wen1">
								<volist name="article_gg" id="v">
								<li><a href="{:U('article/read',array('id'=>$v['id']))}" target="_blank">{$v.title|utf_substr="30"}</a></li>
								</volist>
							</ul>
							<ul id="wen2" style="display: none">
								<volist name="article_sj" id="v">
								<li><a href="{:U('article/read',array('id'=>$v['id']))}" target="_blank">{$v.title|utf_substr="30"}</a></li>
								</volist>
							</ul>
							<ul id="wen3" style="display: none">
								<volist name="article_mj" id="v">
								<li><a href="{:U('article/read',array('id'=>$v['id']))}" target="_blank">{$v.title|utf_substr="30"}</a></li>
								</volist>
							</ul>
						</div>
						<div>
							<a target="_blank" href="{:U('article/read',array('id'=>'5'))}"><img src="__STATIC__/tupian/xinshou.png"> </a>
						</div>
					</div>
				</div>
				<div style="clear: both"></div>
			</div>
			<div style="clear: both"></div>
		</div>
		<div class="dm2">
			<a class="dm21"> 抢到购买资格 </a>
			<a class="dm22"> 以活动下单价<span style="color: red;">{$detail.price}</span>元到指定商家店铺购买</a> 
			<a class="dm23"> 返回{:C('ftx_site_name')}填写已付款订单号 </a> 
			<a class="dm24"> 返还现金<span style="color: red;">{$detail.fan}</span>元</a>
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
					{$detail.content|htmlspecialchars_decode}
				</div>
			</div>
			<div class="dxlt" style="margin-left: -1px;">
				<div class="dxlxtbf" style="width: 130px; float: left; text-align: center; background: #FFF; border-top: 0px solid #cc0001; font-weight: 900; height: 33px; margin-left: -19px;">谁抢到了</div>
				<div style="clear: both;"></div>
			</div>
			
				<div class="dxlxtr" style="display: -none">
				<volist name="FreeOrderList" id="v">
					<a>
						<img src="{:avatar($v['id'], 100)}" height="45" width="45">
						<p style="padding-top: 5px">{$v.username}</p>
					</a>
				</volist>
					<div style="clear: both;"></div>
				</div>
				
				
				
			</div>
			<div class="dxr">
				<div class="dxrt">您可能感兴趣的商品</div>
				<div class="dxrtm">
				<volist name="like" id="val">
									<div class="dxrtmlist">
						<div style="margin: 10px;">
							<a href="{:U('free/detail',array('id'=>$val['id']))}"> <img src="{$val.pic_url}" height="147" width="220">
							</a>
						</div>
						<div style="margin: 0 10px 5px; height: 25px; line-height: 25px; width: 220px; overflow: hidden; padding-left: 5px;">
							<a href="{:U('free/detail',array('id'=>$val['id']))}">{$val.title}								</a>
						</div>
						<div style="margin: 5px 10px 15px; padding-left: 10px; height: 30px; line-height: 30px;">
							<span style="background: #f44444; padding: 5px 10px;"><a style="color: #FFF" href="{:U('free/detail',array('id'=>$val['id']))}">优惠价</a>
							</span><span style="padding-left: 10px; font-size: 14px;">￥{$val.coupon_price}							</span>
						</div>
						<div style="height: 2px; border-bottom: 1px dashed #DCDCDC; margin: 0 10px;"></div>
					</div>
				</volist>
									</div>
			</div>
			<div style="clear: both;"></div>
		</div>


</div>

<!--List End-->
<include file="public:footer" />
</body>
</html>