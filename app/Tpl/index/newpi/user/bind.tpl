<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style type="text/css">
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
					<li id="info"><a href="{:U('user/info')}">帐户资料</a></li>
					<li id="alipay"><a href="{:U('user/alipay')}">支付宝</a></li>
					<li id="pwd"><a href="{:U('user/password')}">修改密码</a></li>
					<li id="avatar"><a href="{:U('user/avatar')}">头像设置</a></li>
					<li id="apilogin"><a href="{:U('user/bind')}">帐号绑定</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #apilogin').addClass('active');
			</script>
			<div class="u-tip">
				<p class="gray">绑定账号有什么好处？</p>
				<p>绑定您的第三方网站账号，可以使用任意一个账号登录,更快捷更方便。</p>
			</div>


			<div class="log-table">

			<volist name="oauth_list" id="val">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<if condition="$val.isbind eq 1">
				<tr>
				<td width="20%" align="center"><img src="__STATIC__/red/images/user/api_{$val.code}.jpg" /></td>
				<td width="35%">{$val.name}（<font color="009900">已绑定</font>）<br /></td>
				<td width="25%"><img src="__STATIC__/red/images/user/api_p.jpg" /></td>
				<td><a href="{:U('oauth/index', array('type'=>'unbind', 'mod'=>$val['code']))}" onclick='return confirm("确定取消绑定?")'><img src="__STATIC__/red/images/user/api_qxbd.jpg" /></a></td>
				</tr>
			<else/>

				<tr>
				<td width="20%" align="center"><img src="__STATIC__/red/images/user/api_{$val.code}.jpg" /></td>
				<td width="35%">{$val.name}（未绑定）<br /></td>
				<td width="25%"><img src="__STATIC__/red/images/user/api_p.jpg" /></td>
				<td><a href="{:U('oauth/index', array('type'=>'bind', 'mod'=>$val['code']))}"><img src="__STATIC__/red/images/user/api_ljbd.jpg" /></a></td>
				</tr>


			</if>
			</table>

 
			</volist>

 


			</div>

		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
</body>
</html>

