<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta http-equiv="Cache-Control" content="no-cache">
<meta name="robots" content="noindex,nofollow" />
<title> 正在为您跳转到【{$item.title}】...</title>
<link type="text/css" rel="stylesheet" href="__STATIC__/jump/css/cjump.css" />  
<script type="text/javascript" src="__STATIC__/js/jquery/jquery.js"></script>
<script type="text/javascript" src="__STATIC__/js/jquery/plugins/jquery.cookie.js"></script>
</head>
<body>
<iframe frameborder="0" scrolling="no" marginwidth="0" marginheight="0" width="100%" id="jbiframe"></iframe>
<div class="blockbg"></div>
<div id="tips"><div class="blockbg blockbg2"></div>
<span id="autotip"></span>
<span id="textip"></span>
<a id="closetip" href="javascript:closetip();"></a>
</div>
<div class="jbox-main">
<div class="jbox-cover">
<a class="jbox-close" id="jbox-close" href="{:U('item/index',array('id'=>$item['id']))}">x</a>
<div class="jbox-logo"><a title="{:C('ftx_site_name')}" href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_url')}{:C('ftx_site_logo')}"  /></a></div>
<div class="jbox-time">
<p class="loading item">
<a href="http://item.taobao.com/item.htm?id={$item.num_iid}" data-border="1" data-style="2" data-rd="1" data-tmplid="6" data-tmpl="350x100" biz-itemid="{$item.num_iid}" data-type="0"></a>
</p>
<p class="goitem"><a data-type="0" biz-itemid="{$item.num_iid}" data-tmpl="192x40" data-tmplid="625" data-rd="1" data-style="2" data-border="0" href="http://item.taobao.com/item.htm?id={$item.num_iid}"></a></p>
<p class="tips"><em>温馨提示：</em><br>1、如果长时间"加载中..."，则可能是开启了广告过滤插件，关闭后可正常显示<br>2、点击商品/店铺链接可直接到淘宝网查看商品/店铺的详细介绍！</p>
</div>
</div>
</div>
<script type="text/javascript">    (function(win,doc){
        var s = doc.createElement("script"), h = doc.getElementsByTagName("head")[0];
        if (!win.alimamatk_show) {
            s.charset = "gbk";
            s.async = true;
            s.src = "http://a.alimama.cn/tkapi.js";
            h.insertBefore(s, h.firstChild);
        };
        var o = {
            pid: "{$pid}",
            appkey: "",
            unid: "",
			plugins:[{name:"keyword"}]
        };
        win.alimamatk_onload = win.alimamatk_onload || [];
        win.alimamatk_onload.push(o);
    })(window,document);
</script>
<script type="text/javascript">var hookpro=function (){
	$("a").live('mousedown',function(){
		$(this).attr('target','_top');
	});
}
var closetip=function(){
	$.cookie('showjumptips',1,{path:'/',expires:720});
	$('#tips').hide();
}
var tdjisload=function(){
	if($('.jbox-time iframe').length<1){
		$('.loading').html("哦豁，加载失败了！").attr('style','background:none;');
	}
}
var autochanglink=function(ob){
	var a=ob.document.getElementsByTagName("a");
	if(a.length>0){
		$("#jbox-close").attr('href',a[0].href);
		if($.cookie('close_jump_box')==1 && a[0].href){
			window.location.href=a[0].href;
			return true;
		}
	}
}
setTimeout("tdjisload();",20000);
if($.cookie('showjumptips')==null) $('#tips').show();
$("#jbox-close").click(function(){
	if($.cookie('close_jump_box')==null){
		if(confirm('记住状态，以后直接跳转？')){
			$.cookie('close_jump_box',1,{path:'/',expires:720});
		}else{
			$.cookie('close_jump_box',0,{path:'/',expires:720});
		}
	}
});
//hookpro();
var ifrmlen=0;
var isover=false;
var getHref=function(num){
	if(isover) return true;
	if($('.jbox-time iframe').length>0){
		$('.jbox-time iframe').each(function(){
			var obj=this.contentWindow;
			if(autochanglink(obj)) isover=true;
			if(!obj.jQuery){
				if(autochanglink(obj)) isover=true;
				if(!$('#jbiframe').attr('src')) $('#jbiframe').attr('src', '{:U('item/index',array('id'=>$item['id']))}');
				var script=document.createElement("script");
				script.src="/static/js/jquery/jquery.js";
				obj.document.getElementsByTagName("head")[0].appendChild(script);
				var waitjQueryLoaded=function(){
					if(ifrmlen==num){
						isover=true;
						return true;
					}
					if(typeof obj.jQuery=="undefined"){
						setTimeout(waitjQueryLoaded,100);
					}else{
						obj.eval('('+hookpro.toString()+')();');
						ifrmlen++;
					}
				}
				waitjQueryLoaded();
			}
		});
	}
	setTimeout("getHref("+num+")",200);
}
setTimeout("$('#jbiframe').attr('src', '{:U('item/index',array('id'=>$item['id']))}');",1500);
getHref(2);
(function($) {
    var iheight;
    iheight = $(window).height();
    $('#jbiframe').attr('height', iheight + 'px');
	$('.blockbg').css({height:iheight + 'px'});
    $(window).resize(function() {
        iheight = $(window).height();
        $('#jbiframe').attr('height', iheight + 'px');
    });
})(jQuery);
</script>
</body>
</html>