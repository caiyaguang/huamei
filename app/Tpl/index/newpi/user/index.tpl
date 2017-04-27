<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style>
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />
		<div class="right">
			<div class="tip-info">
				<script src="__STATIC__/red/js/jcarousellite_1.0.1.pack.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){
	$("#user_notice").jCarouselLite({
		speed: 500,
		visible: 1,
		onMouse:true,
		scroll: 1,
		auto: 5000,
		vertical: true
	}); 	
});
</script>
<div class="sys-info" id="user_notice">系统公告：
	<ul>
		<notempty name="notice">
		<volist name="notice" id="val">
		<li><a class="blue-link" href="{:U('article/read',array('id'=>$val['id']))}" target="_blank">{$val.title}</a></li>
		</volist>
		</notempty>
	</ul>
</div>
				<div class="fr">上次登录时间：{$info.last_time|date="Y-m-d H:i:s",###}</div>
				<div class="clear"></div>
			</div>
			<div class="user-panel">
				<div class="user-quick">
					<div class="quick-info">
						<div class="my-mb-info">
							<div class="icon mb"></div>
							&nbsp;我的积分：<span class="f24 org_3">{$info.score}</span> 个
						</div>
						<div class="my-score">
							<p>QQ号码：<b>{$info.qq}</b></p>
							<p>电子邮箱：<b>{$info.email}</b></p>
												 
						</div>
					</div>
					
				</div>  
				<div class="user-quick user-score">
				
					<div class="my-score">
						<p>真实姓名：<b>{$info.realname}</b></p>
						<p>手机号码：<b>{$info.mobile}</b></p>	
						<p>详细地址：<b>{$info.address}</b></p>
					</div>  
				</div>
				<div class="clear"></div>
			</div>

			<empty name="info.qq">
			<div class="tx_ts">
				<div class="tishitubiao"></div> 
				<p class="fl"><a href="{:U('user/info')}">请完善您的信息：QQ未填写！ 立即去设置</a></p>
				<span class="close" title="暂时关闭" onclick="$(this).parents('div.tx_ts').hide('slow');"></span>
			</div>
			</empty>
			<empty name="info.email">
			<div class="tx_ts">
				<div class="tishitubiao"></div> 
				<p class="fl"><a href="{:U('user/info')}">请完善您的信息：Email未填写！ 立即去设置</a></p>
				<span class="close" title="暂时关闭" onclick="$(this).parents('div.tx_ts').hide('slow');"></span>
			</div>
			</empty>
			<empty name="info.realname">
			<div class="tx_ts">
				<div class="tishitubiao"></div> 
				<p class="fl"><a href="{:U('user/info')}">请完善您的信息：真实姓名未填写！ 立即去设置</a></p>
				<span class="close" title="暂时关闭" onclick="$(this).parents('div.tx_ts').hide('slow');"></span>
			</div>
			</empty>
			<empty name="info.mobile">
			<div class="tx_ts">
				<div class="tishitubiao"></div> 
				<p class="fl"><a href="{:U('user/info')}">请完善您的信息：手机号码未填写！ 立即去设置</a></p>
				<span class="close" title="暂时关闭" onclick="$(this).parents('div.tx_ts').hide('slow');"></span>
			</div>
			</empty>
			<empty name="info.address">
			<div class="tx_ts">
				<div class="tishitubiao"></div> 
				<p class="fl"><a href="{:U('user/info')}">请完善您的信息：详细地址未填写！ 立即去设置</a></p>
				<span class="close" title="暂时关闭" onclick="$(this).parents('div.tx_ts').hide('slow');"></span>
			</div>
			</empty>
 
 
		</div>
	</div>
</div>
 



<!--主部结束-->
<include file="public:footer" />
</body>
</html>