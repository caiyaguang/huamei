<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
<div class="main w1200">
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
            }
        },
        messages : {
            old_password : {
                required : '您必须填写旧密码',
                byteRange: '密码必须在6-30个字符之间',
				remote   : '密码错误'
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
					<li id="alipay"><a href="{:U('user/alipay')}">支付宝</a></li>
					<li id="pwd"><a href="{:U('user/password')}">修改密码</a></li>
					<li id="avatar"><a href="{:U('user/avatar')}">头像设置</a></li>
					<li id="apilogin"><a href="{:U('user/bind')}">帐号绑定</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #alipay').addClass('active');
			</script>
			<div class="u-tip">
				<p>请务必填写正确</p>
			</div>


			<form id="infoset" name="form1" action="{:U('user/alipay',array('do'=>'myalipay'))}" method="post" class="ml30 mt30">
				<div class="address">
					<ul>
						<li>
							<div class="user">
								<label>原 密 码：</label>
								<input name="oldpassword" type="password" style="width:150px;" id="oldpassword" class="ddinput" value="{$info.password}" readonly/>
							</div>
							<div class="error-box">
								<label class="warn">
																填写网站登录密码								</label>
								<label id="checking_oldpass" class="checking">检查中...</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>收款人姓名：</label>
								<input name="name" type="text" id="name" value="{$info.name}" style="width:100px;" class="ddinput"/>
							</div>
							<div class="error-box">
								<label class="warn">请务必填写正确</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>支付宝账号：</label>
								<input name="alipay" type="text" id="alipay" value="{$info.alipay}" style="width:250px;" class="ddinput"/>
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

