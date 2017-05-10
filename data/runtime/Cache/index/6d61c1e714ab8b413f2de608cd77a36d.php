<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html><head><title><?php echo ($page_seo["title"]); echo C('ftx_site_name');?></title><meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>" /><meta name="description" content="<?php echo ($page_seo["description"]); ?>" /><meta content="text/html; charset=utf-8" http-equiv="Content-Type"><link rel="stylesheet" type="text/css" href="__STATIC__/newpi/css/zhuce.css"/><link rel="stylesheet" type="text/css" href="__STATIC__/newpi/css/login.css"/><link rel=stylesheet type=text/css href="__STATIC__/red/css/alert.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" /><script type="text/javascript" src="__STATIC__/red/js/jquery.js"></script><script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script><script type="text/javascript" src="__STATIC__/red/js/funs.js"></script><script type="text/javascript" src="__STATIC__/red/js/error.js"></script><script type="text/javascript" src="__STATIC__/red/js/noWordArr.js"></script></head><body><div class="header header-login"><div class="area"><div class="logo"><div class="fl"><a href="<?php echo C('ftx_site_url');?>" title="<?php echo C('ftx_site_name');?>" class="juan-logo fl"><img src="<?php echo C('ftx_site_logo');?>"></a></div></div><div class="protection" style="background: url(<?php echo C('ftx_site_navlogo');?>) no-repeat;"><a href="#" class="update" title="每天10点开抢"></a><a href="#" class="lowest" title="职业买手砍价"></a><a href="#" class="check" title="商品验货质检"></a></div></div></div><!-- 主体 --><div class="main"><div class="login-main"><div class="login-content"><div class="title"><span class="hd">老用户登录</span><span class="tips">尊敬的用户，欢迎您回来！</span><p class="other">还没有账号，<a target="_blank" href="<?php echo U('user/register');?>">立即去注册</a></p></div><div class="login-center"><div class="content-landing fl"><form action="<?php echo U('user/login');?>" name="login_form" method="post" id="login_form"><ul><li><div class="user"><label class="normal">账号：</label><input type="text" class="normal-input" placeholder="用户名/邮箱" name="username"></div><div class="error-box" id="ckusername"></div></li><li><div class="user"><label class="normal">密码：</label><input type="password" class="normal-input"  placeholder="请输入密码" name="password" autocomplete="off"></div><div class="error-box" id="password"></div></li><li class="chex-d"><label class="normal"></label><div class="chex"><span><label><input type="checkbox" class="ck" name="remember" checked="checked" value="1">两周内免登录</label></span><a class="forget " href="<?php echo U('forget/index');?>">忘记密码？</a></div></li><li><label class="normal"></label><div class="btn"><input type="hidden" name="from" value="<?php echo ($from); ?>" /><input type="hidden" name="action" id="login" value="login" /><input type="submit" name="sub" class="sub smt-o" value="登录" autocomplete="off"></div></li><li class="third-login"><label class="normal"></label><div class="union-login"><p class="union-title"><span>合作网站账号登陆</span><em class="line"></em></p><div class="third-box"><?php if(is_array($oauth_list)): $i = 0; $__LIST__ = $oauth_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo U('oauth/index', array('mod'=>$val['code']));?>"  class="<?php echo ($val["code"]); ?>"></a><?php endforeach; endif; else: echo "" ;endif; ?></div></div></li></ul></form></div><?php echo R('advert/index', array(4), 'Widget');?></div></div><p class="foot-tips"><?php echo C('ftx_site_name');?><a href="http://www.miibeian.gov.cn/" rel="nofollow" target="_blank"><?php echo C('ftx_site_icp');?></a>   Copyright © 2010 - 2014 <?php echo C('ftx_site_url');?> All Rights Reserved</p></div></div><script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.validate.js" ></script><script type="text/javascript" src="__STATIC__/red/js/placeholder.js"></script><script type="text/javascript">$(function(){
	//获取焦点事件
	$(':input').focus(function(){
		//高亮边框
		$('#login_form li.active').removeClass('active');
		$(this).parents('li').addClass('active');
	});
	//默认获取焦点
	$('input[name=username]').focus();
});
$(function(){
    $('#login_form').validate({
        errorPlacement: function(error, element){
            var error_td = element.parents('div').next('div');
			error_td.append(error);
        },
        success: function(label){
            label.addClass('tip').html('<strong class="ok"></strong>');
        },
        onkeyup: false,
        rules : {
            username : {
                required : true,
                byteRange: [3,30,'utf-8']
            },
            password : {
                required : true,
                minlength: 6
            }
	},
        messages : {
            username : {
                required : '<strong class="error"></strong><p class="msg_error">帐号不能为空</p>',
                byteRange: '<strong class="error"></strong><p class="msg_error">账号长度错误</p>'
            },
            password  : {
                required : '<strong class="error"></strong><p class="msg_error">密码不能为空</p>',
                minlength: '<strong class="error"></strong><p class="msg_error">密码长度错误</p>'
            }
	}
		 
    });
});
</script></body></html>