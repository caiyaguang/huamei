<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{$page_seo.title}-{:C('ftx_site_name')}</title>
<meta content="{$page_seo.keywords}" name="keywords">
<meta content="{$page_seo.description}" name="description">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="generator" content="huameitaoke">
<meta name="author" content="huameitaoke Team  bbs.138gzs.com">
<meta name="copyright" content="2012-2015 bbs.138gzs.com Inc.">
<meta name="MSSmartTagsPreventParsing" content="True">
<meta http-equiv="MSThemeCompatible" content="Yes">
<meta content="IE=Edge" http-equiv="X-UA-Compatible">
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>
<link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/css/global.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/newpi/bao/css/sellers_seller.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/newpi/bao/css/base.css" />
<link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/bao/css/global.css" />
<link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/bao/css/sellers_seller(1).css" />
<link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/bao/css/ui-dialog.css" />
<script src="__STATIC__/newpi/bao/js/hm.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/bao/js/jquery.min.js"></script>
</head>
<body>
<include file="public:top" />
<div class="seller-nav"><div class="nav-content sell-col-md-12">
<div class="seller-logo left">
	<a href="{:U('bao/index')}"><img src="{:C('ftx_user_logo')}"  height="55px" alt="卖家中心" title="卖家中心"></a>
</div>
<ul class="nav_list right">
                <li class="frist"><a href="{:C('ftx_site_url')}" target="_blank">首页</a></li>
                <li><a href="{:U('baoming/my')}" target="_blank">报名查询</a></li>
                <li><a href="{:U('bao/yaoqiu')}" target="_blank">活动要求</a></li>
                <li><a href="{:U('bao/shenhe')}" target="_blank">审核说明</a></li>
                <li><a href="{:U('help/index')}" target="_blank">帮助中心</a></li>
 </ul>
<div style="clear:both"></div>
        </div>
    </div>
<div class="sellers-page-seller">
    <div class="sellers-page-body">
        <div class="seller-banner sell-col-md-12">
        	<!--报名规则 开始-->
<div class="seller-banner-left left">
                <div class="banner-left-title" _hover-ignore="1">
                    <div class="circle"></div>
                    <span class="left">卖家早知道</span> </div>
                <div class="clear"></div>
                <div class="banner_left_notice">
                    <ul id="leftNoticeSlide" style="margin-top: 0px;">
                    	<div class="clear"></div>
                         
                                                
                    <li><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:;" _hover-ignore="1">黑名单制度</a></li><li><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:;" _hover-ignore="1">处罚规则</a></li><li _hover-ignore="1"><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:red;" _hover-ignore="1">商品审核说明</a></li><li _hover-ignore="1"><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:;" _hover-ignore="1">上线前准备</a></li><li _hover-ignore="1"><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:red;" _hover-ignore="1">商品报名要求</a></li><li><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:red;" _hover-ignore="1">商品质检规则</a></li><li><span>规则</span><a href="{:U('bao/yaoqiu')}" target="_blank" class="know" style="color:;" _hover-ignore="1">报名规则</a></li></ul>
                </div>
                
            </div>
         	<!--报名规则 结束-->
            
            <!--公告图片轮播 开始-->
            <div class="seller-banner-part left">
              {:R('advert/index', array(9), 'Widget')}                                 
            </div>
            <!--公告图片轮播 结束-->
            
            <!--图片轮播右侧 开始-->
            <div class="seller-banner-right right">
            	<notempty name="visitor">
                <div class="seller_right_login">
                	<p class="login_name">Hi！{$visitor.username}<a href="{:U('user/logout')}" class="login_out">退出</a></p>
                	<div class="clear"></div>
                	<p></p>
                	<div class="btm_wrap">
                		<a href="{:U('user/index')}" class="member_btm">会员中心</a>
                	</div>
                </div>
                <else/>
                <div class="seller_right_login">
                                     <p class="login_name">Hi！你好</p>
                    <div class="btm_wrap">
                         <a class="nav_login1 btm" href="{:U('user/login')}">登录</a>
                        <a class="nav_reg1 btm" href="{:U('user/register')}">注册</a>
                    </div>
                 </div>
                 </notempty>
                <div class="banner-right-qrcode" style="padding:0">
                    <img src="/static/newpi/bao/images/shengyi.png" alt="公众订阅号" title="公众订阅号">
                </div>
                <div class="banner-right-qqgroup">
                    <div class="qqgroup">
                        <div class="circle"></div>
                                                <span class="left">首页首屏展示费用</span> 
                        <div id="arrow-img" class="arrow-right left"></div>
                        <div class="clear"></div>
                    </div>
                    <div class="sell-qq-group" style="display:none">
                        <ul>
                            <li>首屏展位 5天359元</li>
                            <li>首屏展位 7天399元</li>
                            <li>首屏展位 10天499元</li>
                            <li>首屏展位 15天699元</li>
                            <li>首屏展位 20天899元</li>
                            <li>首屏展位 30天1199元</li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <!--图片轮播右侧 结束-->
            
            <!--最新公告 开始-->
            <div class="notice wrap">
	    <a href="{:U('bao/shenhe')}" title="最新公告">
		<h4 class="title">最新公告</h4>
		</a>
		<div class="notice-ul-out" id="demo">
			<ul>
			<li class="border-box" id="demo1">{:C('ftx_qq_code')}</li>		
			<li class="border-box" id="demo2">{:C('ftx_qq_code')}</li>	
			</ul>
		</div>
	</div>
    <script type="text/javascript">
var speed=40 ;//速度 
var demo = document.getElementById("demo");
var demo1 = document.getElementById("demo1");
var demo2 = document.getElementById("demo2");
demo2.innerHTML=document.getElementById("demo1").innerHTML;
function Marquee(){
if(demo.scrollLeft-demo2.offsetWidth>=0){
 demo.scrollLeft-=demo1.offsetWidth;
}
else{
 demo.scrollLeft++;
}
}
var myvar=setInterval(Marquee,speed);
demo.onmouseout=function (){myvar=setInterval(Marquee,speed);}
demo.onmouseover=function(){clearInterval(myvar);}
</script>
            