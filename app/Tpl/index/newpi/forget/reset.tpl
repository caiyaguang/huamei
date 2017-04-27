<!doctype html>
<html>
<head>
<include file="public:head" />
<css file="__STATIC__/red/css/forget.css" />
</head>
<body>
<include file="public:header" />
<div class="main {:C('ftx_site_width')} clear">
	<div class="white_top"><div class="white_top_left"></div><div class="white_top_middle"></div><div class="white_top_right"></div></div>
	<div class="white_bg wrap">
		<div class="wrap_left get_password">
			<h1>{:L('resetpwd_title')}</h1>
			<p>您可以在这里重新设置密码，这次可要记牢喽！如果您尚有疑问，请与我们的客服联系！</p>
			<div class="get_password_way set_password">
				<div class="tit set_tit"><p>在此处重新设置密码</p></div>
				<form id="J_resetpwd_form" action="" method="post">
					<ul>
						<li>
							<div>
							<span>输入新密码：</span>
							<input name="password" class="bg" id="J_password" size="30" type="password">
							</div>
							<span class="normal">6～16个字母、数字或者符号，字母区分大小写</span>
						</li>
						<li>
							<div><span>再输入一次：</span>
							<input name="repassword" class="bg" id="J_repassword" size="30" type="password">
							</div>
							<span class="normal">这里要重复输入一下你的密码哦</span>
							</li>
						<li>
							<span>输入验证码：</span>
							<input type="text" name="captcha" class="yz" id="J_captcha">
							<div class="code">&nbsp;
							<img src="{:U('captcha/index', array('t'=>time()))}" id="J_captcha_img" class="captcha_img" alt="{:L('captcha')}" data-url="{:U('captcha/index')}">
                        <a href="javascript:;" id="J_captcha_change">{:L('change_captcha')}</a>
							</div>
						</li>
						<li>
							<input value="修改密码" class="smt" type="submit">
						</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<div class="white_bottom"><div class="white_bottom_left"></div><div class="white_bottom_middle"></div><div class="white_bottom_right"></div></div>
</div>


<include file="public:footer" />
<script>
$(function(){
    $.ftxia.user.resetpwd_form(); //登陆验证
});
</script>
</div>
</body>
</html>