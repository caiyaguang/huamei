<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/jwap/css/pg-emailmatch.css" />
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>  
        <div class="app">
            <div id="head">

                <div class="fixtop">
                    <span id="t-find"><a href="{:U('index/index')}" class="btn btn-left btn-back02" title="返回网站首页"></a></span>
                    <span id="t-index">新用户注册</span>
                    <span id="t-user"><a href="{:U('user/login')}" class="free-reg" rel="nofollow">登陆</a></span>
                </div>
            </div>

            <div class="wap-login">                
                <form action="{:U('user/register')}" name="register_form" method="post" id="register_form">
                    <div class="login-info">
					<div class="third-txt">
                            <h5>注册账号</h5>
                  </div>
                        <ul class="info-input reg-phone ">
                           <li>
						    <div class="clear user">
                            <label class="normal">QQ号码：</label>
                            <input name="qq" type="text" id="qq" placeholder="QQ号码" onkeyup="value=value.replace(/[^\d]/g,'')" value="" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" onblur="var qq=$(this).val();if(qq=='') return false;qq=qq+'@qq.com';if($('#emailMatch').val()==''){$('#emailMatch').val(qq)}" maxlength="11" class="normal-input txt" autocomplete="off">
							</div>
							<div class="error-box tip">
							<span class="tip" id="qq_warn" warn="请填写常用QQ号"></span>							
							</div>                            
                        </li>
                        <li id="emailMatch_list">
						    <div class="clear user">
                            <label class="normal">邮箱地址：</label>
                            <input type="text" class="normal-input txt" id="emailMatch" placeholder="请输入常用邮箱地址" name="email" autocomplete="off">
							</div>
                            <div class="error-box tip">
							<span class="tip" id="email_warn" warn="请填写常用邮箱"></span>							
							</div>							
                        </li>
                        <li>
						<div class="clear user">
                            <label class="normal">用户名：</label>
                            <input type="text" class="normal-input txt" placeholder="请输入用户名" name="username" id="username" autocomplete="off">
						  </div>
                            <div class="error-box">
								<span class="tip" id="username_warn" warn="用户名长度3-15位字母或数字"></span>								
							</div>
                        </li>
                        <li class="set-password">
						 <div class="clear user">
                            <label class="normal">创建密码：</label>
                            <input type="password" class="normal-input txt" placeholder="请输入密码" id="password" name="password" autocomplete="off"></div>
                            <div class="error-box"><span class="tip" id="password_warn" warn="密码6～16位，区分大小写"></span></div>
                        </li>
                        <li>
						<div class="clear user">
                            <label class="normal">确认密码：</label>
                            <input type="password" class="normal-input txt" placeholder="请确认密码"  id="repassword" name="repassword" autocomplete="off">
						  </div>
                            <div class="error-box" id="repassword_warn"  warn=""></div>
                            
                        </li> 
                        

                            
						        <div class="chex"><span>
                  <label>
                      <input type="checkbox" class="ck" name="agreement" checked="checked">
                  
                  </span></div>   
                        </ul>
 						 <input type="hidden" name="from" value="{$from}" />
                         <input type="hidden" name="action" id="reg" value="reg" />
						 <input type="submit" name="sub" class="sub" value="提交注册" autocomplete="off"/>                         
                    </div> 
                </form> 	
                
            </div>
			<include file='public:footer'/>
        </div>
		</div>
		<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.validate.js" ></script>
		<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/placeholder.js"></script> 
		<script charset="utf-8" type="text/javascript" src="__STATIC__/jwap/js/jquery.emailmatch.js"></script>
		<script type="text/javascript">
$(function(){
	//获取焦点事件
	$(':input').focus(function(){
    	//高亮边框
    	$('#register_form li.active').removeClass('active');
    	$(this).parents('li').addClass('active');
		var name=$(this).attr('name');
    	$('#'+name+'_warn').attr('warn')==undefined || $('#'+name+'_warn').html('<p class="msg_error msg_error_gray">'+$('#'+name+'_warn').attr('warn')+'</p>');//清除之前验证信息
	});
	//默认获取焦点
	$('input[name=qq]').focus();
});
$(function(){
    $('#register_form').validate({
        errorPlacement: function(error, element){
           var error_td = element.parent('div').next('div');
           error_td.find('.tip').hide();
           error_td.append(error);
        },
        success       : function(label){
            label.addClass('tip').html('<strong class="ok"></strong>');
        },
        onkeyup: false,
        rules : {
            username : {
                required : true,
                byteRange: [3,15,'utf-8'],
				remote   : {
                    url :'index.php?m=ajax&a=check_user',
                    type:'post',
                    data:{
                        username : function(){
                            return $('#username').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#check_user');
                        _checking.prev('.tip').hide();
                        _checking.next('.error-box').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#check_user').hide();
                    }
                }
            },
			qq : {
                required : true,
                range:[1000,999999999999],
				remote   : {
                    url :'index.php?m=ajax&a=check_qq',
                    type:'post',
                    data:{
                        qq : function(){
                            return $('#qq').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#check_qq');
                        _checking.prev('.tip').hide();
                        _checking.next('.error-box').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#check_qq').hide();
                    }
                }
            },
            password : {
                required : true,
                minlength: 6
            },
	    repassword : {
                required : true,
                minlength: 6,
				equalTo:'#password'	
            },
            email : {
                required : true,
                email    : true,
				remote   : {
                    url :'index.php?m=ajax&a=check_email',
                    type:'post',
                    data:{
                        email : function(){
                            return $('#emailMatch').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#check_email');
                        _checking.prev('.tip').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#check_email').hide();
                    }
                }
            },					
			captcha : {
                required : true,
                rangelength:[4,4]
            },
            agree : {
                required : true
            }
        },
        messages : {
            username : {
                required : '<strong class="error"></strong><p class="msg_error">用户名不能为空</p>',
                byteRange: '<strong class="error"></strong><p class="msg_error">用户名必须在3-15个字符之间</p>',
				remote   : '<strong class="error"></strong><p class="msg_error">用户名已存在</p>'
            },
            password  : {
                required : '<strong class="error"></strong><p class="msg_error">密码不能为空</p>',
                minlength: '<strong class="error"></strong><p class="msg_error">密码长度应在6-20个字符之间</p>'
            },
	    repassword  : {
                required : '<strong class="error"></strong><p class="msg_error">密码不能为空</p>',
                minlength: '<strong class="error"></strong><p class="msg_error">密码长度应在6-20个字符之间</p>',
				equalTo:'<strong class="error"></strong><p class="msg_error">两次输入的密码不同</p>'
            },
            email : {
                required : '<strong class="error"></strong><p class="msg_error">邮箱不能为空</p>',
                email    : '<strong class="error"></strong><p class="msg_error">邮箱格式错误</p>',
				remote   : '<strong class="error"></strong><p class="msg_error">邮箱已存在</p>'
            },
			qq : {
                required : '<strong class="error"></strong><p class="msg_error">您必须填写您的QQ号码</p>',
                range:'<strong class="error"></strong><p class="msg_error">QQ号码位数错误</p>',
				remote:'<strong class="error"></strong><p class="msg_error">QQ号码已经注册</p>'
                				
           },
            captcha : {
                required : '<strong class="error"></strong><p class="msg_error">验证码不能为空</p>',
				rangelength    : '<strong class="error"></strong><p class="msg_error">位数错误</p>'
            },
            agree : {
                required : '<strong class="error"></strong><p class="msg_error">您必须阅读并同意该协议</p>'
            }
        }
    });
	});

</script>
<include file='public:footjs'/>
</body>
</html>