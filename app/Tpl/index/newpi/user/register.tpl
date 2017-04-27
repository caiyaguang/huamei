<!DOCTYPE html>
<html>
    <head>
        <title>{$page_seo.title}  {:C('ftx_site_name')}</title>
        <meta name="keywords" content="{$page_seo.keywords}" />
        <meta name="description" content="{$page_seo.description}" />
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">        
		<link rel="stylesheet" type="text/css" href="__STATIC__/newpi/css/zhuce.css"/>
        <link rel="stylesheet" type="text/css" href="__STATIC__/newpi/css/login.css"/>        
        <link rel="stylesheet" type="text/css" href="__STATIC__/newpi/css/pg-emailmatch.css" />
		<link rel=stylesheet type=text/css href="__STATIC__/red/css/alert.css" />
        <link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" />
		<script type="text/javascript" src="__STATIC__/red/js/jquery.js"></script>
		<script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>
		<script type="text/javascript" src="__STATIC__/red/js/error.js"></script>
		<script type="text/javascript" src="__STATIC__/red/js/noWordArr.js"></script>

    </head>
    <body>
        <div class="header header-login">
        <div class="area">
                            <div class="logo">
                    <div class="fl">
                        <a href="{:C('ftx_site_url')}" title="{:C('ftx_site_name')}" class="juan-logo fl"><img src="{:C('ftx_site_logo')}"></a></div>
                </div>
                <div class="protection" style="background: url({:C('ftx_site_navlogo')}) no-repeat;">
                    <a href="#" class="update" title="每天10点开抢"></a>
                    <a href="#" class="lowest" title="职业买手砍价"></a>
                    <a href="#" class="check" title="商品验货质检"></a>
                </div>
                    </div>
    </div>
        <!-- 主体 -->
    <div class="main">
        <div class="login-main">
            
    <div class="login-content">
        <div class="title"><span class="hd">新用户注册</span><span class="tips">注册{:C('ftx_site_name')}，得积分换好礼！</span><p class="other">已有账号，<a href="{:U('user/login')}">立即登录</a></p></div>
        <div class="login-center">
            <div class="content-landing fl">
                <form action="{:U('user/register')}" name="register_form" method="post" id="register_form">
                    <ul>
					     <li>
						    <div class="user">
                            <label class="normal">QQ号码：</label>
                            <input name="qq" type="text" id="qq" placeholder="QQ号码" onkeyup="value=value.replace(/[^\d]/g,'')" value="" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" onblur="var qq=$(this).val();if(qq=='') return false;qq=qq+'@qq.com';if($('#emailMatch').val()==''){$('#emailMatch').val(qq)}" maxlength="11" class="normal-input" autocomplete="off">
							</div>
							<div class="error-box tip">
							<span class="tip" id="qq_warn" warn="请填写常用QQ号"></span>
							<span id="check_qq" class="checking">检查中...</span>
							</div>                            
                        </li>
                        <li id="emailMatch_list">
						     <div class="user">
                            <label class="normal">邮箱地址：</label>
                            <input type="text" class="normal-input" id="emailMatch" placeholder="请输入常用邮箱地址" name="email" autocomplete="off">
							</div>
                            <div class="error-box tip">
							<span class="tip" id="email_warn" warn="请填写常用邮箱"></span>
							<span id="check_email" class="checking">检查中...</span>
							</div>							
                        </li>
                        <li>
						<div class="user">
                            <label class="normal">用户名：</label>
                            <input type="text" class="normal-input" placeholder="请输入用户名" name="username" id="username" autocomplete="off">
							</div>
                            <div class="error-box">
								<span class="tip" id="username_warn" warn="用户名长度3-15位字母或数字"></span>
								<span id="check_user" class="checking">检查中...</span>
							</div>
                        </li>
                        <li class="set-password">
						 <div class="user">
                            <label class="normal">创建密码：</label>
                            <input type="password" class="normal-input" placeholder="请输入密码" id="password" name="password" autocomplete="off"></div>
                            <div class="error-box"><span class="tip" id="password_warn" warn="密码6～16位，区分大小写"></span></div>
                        </li>
                        <li>
						<div class="user">
                            <label class="normal">确认密码：</label>
                            <input type="password" class="normal-input" placeholder="请确认密码"  id="repassword" name="repassword" autocomplete="off">
							</div>
                            <div class="error-box" id="repassword_warn"  warn=""></div>
                        </li>
                        <li>
						<div class="user">
                            <label class="normal">验证码：</label>
                            <input  class="normal-input code-input" type="text" placeholder="验证码" name="captcha"  id="captcha" autocomplete="off"></div>
                            <div class="verification-code">
                                <img alt="验证码" title="点击更换" style="cursor:pointer;" onClick="this.src='{:U('captcha/'.time())}&a='+Math.random()" src="{:U('captcha/'.time())}" id="J_captcha_img" class="captcha_img" alt="{:L('captcha')}" data-url="{:U('captcha/js_rand')}"></div>
                           <div class="error-box"><span class="tip" id="repassword_warn" warn="确认密码6～16位，区分大小写"></span></div>
                        </li>
                        <li class="chex-d">
                            <label class="normal"></label>
                            <div class="chex"><span>
                  <label>
                      <input type="checkbox" class="ck" name="agreement" checked="checked">
                     {:L('i_agree')}《<a href="javascript:;" id="J_protocol_btn">{:C('ftx_site_name')}{:L('user_protocol')}</a>》</label>
                  </span></div>                            
                        </li>
                        <li>
                            <label class="normal"></label>
                            <div class="btn">
							    <input type="hidden" name="from" value="{$from}" />
								<input type="hidden" name="action" id="login" value="login" />
                                <input type="hidden" name="login_type" value="{$login_type}" />
								<input type="submit" name="sub" class="sub smt-o" value="提交注册" autocomplete="off"/>                                
                                </div>
                        </li>
                    </ul>
                </form>
            </div>
            <div class="login-l-img fr mr30" style="width:338px;">
			{:R('advert/index', array(5), 'Widget')}
                <div class="line"></div>
                <div class="third-login">
                    <div class="union-login">
                        <p class="union-title"><span>无需注册，快捷登录</span></p>
                        <div class="third-box">
				<volist name="oauth_list" id="val">
				<a href="{:U('oauth/index', array('mod'=>$val['code']))}"  class="{$val.code}"></a>
				</volist>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><p class="foot-tips">{:C('ftx_site_name')} <a href="http://www.miibeian.gov.cn/" rel="nofollow" target="_blank">{:C('ftx_site_icp')}</a>   Copyright © 2010 - 2014 {:C('ftx_site_url')} All Rights Reserved</p>
        </div>
    </div>
<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.validate.js" ></script>
<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/placeholder.js"></script> 
<script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.emailmatch.js"></script>
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
<script>
var FTXIAER = {
    root: "__ROOT__",
    uid: "<?php echo $visitor['id'];?>", 
	chaxunurl: "{:U('ajax/check_item')}",
    url: {}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<script>
$(function(){
    $('#J_protocol_btn').live('click', function(){
                var content = $('#J_protocol').html();
                $.dialog({id:'protocol', title:lang.user_protocol, content:content, padding:'', fixed:true, lock:true});
            });
});
</script>
<ftx:load type="js" href="__STATIC__/js/ftxia.js" />
<div id="J_protocol" class="hide"><pre class="dialog_protocol clr6">{:C('ftx_reg_protocol')}</pre></div>
</body>
</html>