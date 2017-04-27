<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link href="__STATIC__/cms/css/new_body.css" rel="stylesheet" type="text/css">
<link href="__STATIC__/cms/css/moudle.css" rel="stylesheet" type="text/css">
<script src="__STATIC__/cms/js/nav3.js"></script>
<script type="text/javascript" src="__STATIC__/cms/js/tata.scroll_img.js"></script>
</head>
<body>
<include file="public:header" />  
 <div class="main w1200">
<include file="public:one" />
<include file="public:articlelist" />
</div>
</div>
<div class="foot">
    <div class="white_bg">
    <div class="foot-con">
        <div class="con-box-n clear">
            <div class="app-side-box fl">
                <p class="app-show"><img src="{:C('ftx_site_weixin')}"></p>
                <p class="app-txt">扫描二维码打开</p>
            </div>
            <div class="con-left-info fl">
                <dl class="update">
                   <dt>获取更新</dt>
                    <dd><a href="{:U('apps/index')}" target="_blank" rel="nofollow"><i></i>iPhone/Android</a></dd>
                    <dd><a href="{:C('ftx_qzone_url')}" target="_blank" rel="nofollow"><i></i>QQ空间</a></dd>
                    <dd><a href="{:C('ftx_sina_url')}" target="_blank" rel="nofollow"><i></i>新浪微博</a></dd>
                    <dd><a href="{:C('ftx_tenxun_url')}" target="_blank" rel="nofollow"><i></i>腾讯微博</a></dd>
                </dl>
                <dl class="cooperation">
                    <dt>商务合作</dt>
                    <dd><a href="{:U('bao/index')}" target="_blank"><i></i>卖家免费报名</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>2))}" target="_blank" rel="nofollow"><i></i>商务合作</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>2))}" target="_blank" rel="nofollow"><i></i>广告合作</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>5))}" target="_blank" rel="nofollow"><i></i>免责声明</a></dd>
               
                </dl>
                <dl class="cor-info">
                    <dt>用户帮助</dt>
                     <dd><a href="{:U('help/read',array('id'=>6))}" target="_blank" rel="nofollow"><i></i>常见问题</a></dd>
                      <dd><a href="{:U('help/xiaobao')}" target="_blank" rel="nofollow"><i></i>消费保障</a></dd>
                      <dd><a href="{:U('forget/index')}" target="_blank" rel="nofollow"><i></i>忘记密码</a></dd>
                      <dd><a href="{:U('user/register')}" target="_blank" rel="nofollow"><i></i>免费注册</a></dd>
                     </dl>
                <dl class="help-info">
                    <dt>用户中心</dt>
                    <dd><a href="{:U('user/like')}" target="_blank" rel="nofollow"><i></i>我的收藏</a></dd>
                    
                    <dd><a href="{:U('help/read',array('id'=>6))}" target="_blank" rel="nofollow"><i></i>积分攻略</a></dd>
                    <dd><a href="{:U('sitemap/index')}" target="_blank"><i></i>网站地图</a></dd>
                </dl>
                            </div>
            <div class="con-menu fr">
                <a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" class="service-add fl" target="_blank"></a>
            <span class="service-time fl">
                <p>周一至周六 </p>
                <p>9:00-22:00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            </span>
            </div>
        </div>
                    <div class="links">
	<span>友情链接：</span>
<div class="links_list_box">
<ul class="links_list">
<li>
<ftx:link type="lists">	
<volist name="data" id="val" offset="0" length='10'> 
<a href="{$val.url}" target="_blank">{$val.name}</a>
</volist>
</ftx:link>
</li>
<li>
<ftx:link type="lists">	
<volist name="data" id="val" offset="10" length='10'> 
<a href="{$val.url}" target="_blank">{$val.name}</a>
</volist>
</ftx:link>
</li>
<li>
<ftx:link type="lists">	
<volist name="data" id="val" offset="20" length='10'> 
<a href="{$val.url}" target="_blank">{$val.name}</a>
</volist>
</ftx:link>
</li>
</ul>
</div>
</div>
<p class="ft-company">{:C('ftx_site_name')}&nbsp;&nbsp;<a href="http://www.miibeian.gov.cn" target="_blank">{:C('ftx_site_icp')}</a>&#12288;&#12288;Copyright &copy; 2010 - 2015 {:C('ftx_site_url')} All Rights Reserved  {:C('ftx_statistics_code')}</p>                    
</div>
</div>
</div>
<script type="text/javascript">
var FTXIAER = {
 root: "__ROOT__",
 site: "{:C('ftx_site_url')}",
 uid: "{$visitor['id']}", 
 loginurl:"{:U('user/login')}",
 userurl:"{:U('user/index')}",
 username:"{$visitor['username']}",
 face:"{:avatar($visitor['id'], 64)}",
 url:{}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<ftx:load type="js" href="__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js" />
<script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script>
<script src="__STATIC__/newpi/js/goodlist.js" type="text/javascript"></script> 
<script type="text/javascript">
	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script>
<script type="text/javascript" src="__STATIC__/newpi/js/pg-index.js" ></script>
{:C('ftx_weibo_code')}
{:C('ftx_tencent_code')}
{:C('ftx_taojindian_html')}
</body>
</html>
