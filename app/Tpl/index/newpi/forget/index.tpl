<!doctype html>
<html>
<head>
<include file="public:head" /> 
<css file="__STATIC__/red/css/forget.css" />
</head>
<body>
<div class="main w1200">
<include file="public:header" />
 <div class="main {:C('ftx_site_width')} clear">
	<div class="white_top"><div class="white_top_left"></div><div class="white_top_middle"></div><div class="white_top_right"></div></div>
	<div class="white_bg wrap">
		<div class="wrap_left get_password">
			<h1>{:L('forget_title')}</h1>
			<p>{:L('email_send_pw')}</p>
			<div class="get_password_way find_password">
				<div class="tit"><p><span class="org">点击我：</span>通过邮箱找回密码</p><em class="down"></em></div>
				<form id="J_findpwd_form" action="{:U('forget/index')}" method="post" onsubmit="return chkEmailGet(this)">
					<ul style="display: none; ">
												<li>
							<div><span>输入E-mail：</span><input type="text" name="email" id="J_emails" size="30" class="bg" ></div>
							<span class="normal" style="display: block; ">请在此输入您的注册邮箱！点击“找回密码”之后，您将收到密码重置邮件！</span>
						</li>
						<li>
							<span>输入验证码：</span>
							<input type="text" name="captcha" id="J_captcha1" class="yz">
							<div class="code">&nbsp;
							<img src="{:U('captcha/index', array('t'=>time()))}"  onclick="this.src='{:U('captcha/index', array('t'=>time()))}'+Math.random();" name="checkcode" id="checkcode1" alt="{:L('captcha')}">
                        <a href="javascript:;" class="org"  onclick="document.getElementById('checkcode1').src='{:U('captcha/index', array('t'=>time()))}'+Math.random();" >{:L('change_captcha')}</a>
							</div>
						</li>
						<li style="display: block; ">
							<input value="找回密码" class="smt" type="submit" name="submits">
						</li>
											</ul>
				</form>
			</div>
			<div class="get_password_way find_email">
				<div class="tit"><p><span class="org">点击我：</span>通过用户名找回邮箱</p><em class="up"></em></div>
				<form id="J_findpwd_forms" action="{:U('forget/index')}"  method="post"  onsubmit="return chkUserGet(this)">
					<ul>
						<notempty name="msg">
								<li class="msg">{$msg}</li>
						<else/>
						<li>
							<div>
							<span>输入用户名：</span>
							<input name="username" class="bg" id="J_name" size="30" type="text">
							</div>
							<span class="normal" style="display: block; ">请输入您注册的用户名！点击“查询邮箱”之后，我们会提示您注册时所使用的邮箱！</span>
						</li>
						<li>
							<span>输入验证码：</span>
							<input type="text" name="captcha" id="J_captcha2" class="yz">
							<div class="code">&nbsp;
							<img src="{:U('captcha/index', array('t'=>time()))}"  onclick="this.src='{:U('captcha/index', array('t'=>time()))}'+Math.random();" name="checkcode" id="checkcode2"  alt="{:L('captcha')}">
                        <a href="javascript:;" class="org"  onclick="document.getElementById('checkcode2').src='{:U('captcha/index', array('t'=>time()))}'+Math.random();">{:L('change_captcha')}</a>
							</div>
						</li>
						<li style="display: block; ">
							<input value="查询邮箱" class="smt" type="submit" name="submits">
						</li>
						</notempty>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<div class="white_bottom"><div class="white_bottom_left"></div><div class="white_bottom_middle"></div><div class="white_bottom_right"></div></div>
</div>
<include file="public:footer" />
<script>

	function chkEmailGet(){
	    $.formValidator.initConfig({formid:'J_findpwd_form'.attr('id'),autotip:true});
            form.find('#J_emails').formValidator({onshow:' ', onfocus:lang.please_input+lang.email, oncorrect: ' '}).inputValidator({min:1,onerror:lang.please_input+lang.email});
            $('#J_captcha1').formValidator({onshow:' ',onfocus:lang.captcha_tip, oncorrect: ' '})
            .inputValidator({min:1,onerror:lang.captcha_empty});

	}
	function chkUserGet(){
	    $.formValidator.initConfig({formid:'J_findpwd_forms'.attr('id'),autotip:true});
            form.find('#J_name').formValidator({onshow:' ', onfocus:lang.please_input+lang.username, oncorrect: ' '}).inputValidator({min:1,onerror:lang.please_input+lang.username});
            $('#J_captcha2').formValidator({onshow:' ',onfocus:lang.captcha_tip, oncorrect: ' '})
            .inputValidator({min:1,onerror:lang.captcha_empty});
	}

</script>
</body>
</html>