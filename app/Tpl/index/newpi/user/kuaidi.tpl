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
			<div class="menu-tag">
				<ul>
					<li id="kuaidi" class="active"><a href="{:U('user/kuaidi')}">快递查询</a></li>
				</ul>
			</div>
			<div class="mt15 tc">
			<iframe name="kuaidi100" src="http://www.kuaidi100.com/frame/815px.html" width="815" height="770" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
			</div>
		</div>
	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
</body>
</html>