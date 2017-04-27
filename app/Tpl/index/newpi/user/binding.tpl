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
<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.validate.js" ></script>
<script>
$(function(){

	 $('#infoset').validate({
        errorPlacement: function(error, element){
            var error_td = element.parent('div').next('div');
            error_td.find('.warn').hide();
            error_td.append(error);
        },
        success       : function(label){
            label.addClass('ok').text('OK!');
        },
        onkeyup: false,
        rules : {
            old_password : {
                required : true,
                byteRange: [6,20],
				remote   : {
                    url :'{:U('ajax/check_oldpwd')}',
                    type:'post',
                    data:{
                        oldpass : function(){ return $('#old_password').val();},uid:{$info.id}                   },
                    beforeSend:function(){
                        var _checking = $('#checking_oldpass');
                        _checking.prev('.warn').hide();
                        _checking.next('label').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#checking_oldpass').hide();
                    }
                }
            },
            email : {
                required : true,
                email    : true
            },
            qq : {
                required : true,
                range:[1000,999999999999]
            },
	    realname: {
		required : true
	    },
	    address: {
		required : true
	    },
            mobile: {
		required : true,
		mobile   : true
	    }
        },
        messages : {
            old_password : {
                required : '您必须填写旧密码',
                byteRange: '密码必须在6-30个字符之间',
				remote   : '密码错误'
            },
            email : {
                required : '您必须提供您的电子邮箱',
                email    : '这不是一个有效的电子邮箱',
				remote   : '邮箱已存在'
            },
	    qq : {
                required : '您必须提供您的QQ号码',
                range:'QQ号码位数错误'
            },
	    realname : {
		required : '真实姓名必须填写'
	    },
	    address : {
		required : '详细地址必须填写'
	    },
	    mobile : {
	       required : '手机号码必须填写',
	       mobile   : '手机号码格式错误'
	    }
        },
		submitHandler: function(form) {   
            var query=$(form).serialize();
	        var url=$(form).attr('action');
	        ajaxPost(url,query);
        } 
    });


});
</script>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="info"><a href="{:U('user/info')}">帐户资料</a></li>
					<li id="pwd"><a href="{:U('user/password')}">修改密码</a></li>
					<li id="avatar"><a href="{:U('user/avatar')}">头像设置</a></li>
					<li id="apilogin"><a href="{:U('user/bind')}">帐号绑定</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #info').addClass('active');
			</script>
			<div class="u-tip">
				<p>保障您的账号安全！建议您养成定期修改密码的好习惯！</p>
			</div>


			<form id="infoset" name="form1" action="{:U('user/info',array('do'=>'myinfo'))}" method="post" class="ml30 mt30">
				<div class="address">
					<ul>
						<li>
							<div class="user">
								<label>登录密码：</label>
								<input name="old_password" type="password" style="width:150px;" id="old_password" class="ddinput" />
							</div>
							<div class="error-box">
								<label class="warn">
																填写网站登录密码								</label>
								<label id="checking_oldpass" class="checking">检查中...</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>QQ号码：</label>
								<input name="qq" type="text" id="qq" value="{$info.qq}"  onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" size="20" maxlength="50" style="width:150px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">以便客服及时联系您</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>电子邮箱：</label>
								<input name="email" type="text" id="email" value="{$info.email}" style="width:150px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">请务必填写正确，取回密码用</label>
								<label id="checking_my_email" class="checking">检查中...</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>真实姓名：</label>
								<input name="realname" type="text" id="realname" value="{$info.realname}" style="width:150px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">请务必填写正确</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>手机号码：</label>
								<input name="mobile" type="text" id="mobile" value="{$info.mobile}" style="width:150px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">请务必填写正确</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>详细地址：</label>
								<input name="address" type="text" id="address" value="{$info.address}" style="width:250px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">请务必填写正确</label>
							</div>
						</li>
						<li>
							<input type="hidden" name="sub" value="1" />
							<input type="submit" class="smt smt1" value="保存信息">
						</li>
					</ul>
				</div>
			</form>


		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
</body>
</html>

