<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<script>
$(function() {
    var $navFun = function() {
        var st = $(document).scrollTop(), 
            headh = $(".line-cate-nav-location").offset().top;           
            $nav_classify = $(".line-cate-nav-wrapper");
        if(st > headh){
            $nav_classify.addClass("fix-top");			
        } else {
            $nav_classify.removeClass("fix-top");			
        }
    };

    var F_nav_scroll = function () {
        if(navigator.userAgent.indexOf('iPad') > -1){
            return false;
        }      
        if (!window.XMLHttpRequest) {
           return;          
        }else{
            //默认执行一次
            $navFun();
            $(window).bind("scroll", $navFun);
        }
    }
    F_nav_scroll();
	
});
</script>



</head>
<body>
<include file="public:header" />
<notempty name="tag_list"> 
<div class="line-cate-nav-location">
        <div class="line-cate-nav-wrapper">
            <ul class="line-cate-nav">
			<li class="first"><a class="active" href="{:U('shijiu/index')}">19.9包邮</a></li>
			<volist name="tag_list" id="bcate">
			<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('shijiu/index', array('tag'=>$bcate['id']))}">{$bcate.name}</a></li>
			</volist>
            <li class="last"><a target="_blank" href="{:U('yugao/index')}">[明日预告]</a></li>
            </ul>
        </div>
    </div>
</notempty>
<div class="main w1200">
<include file="public:itemlist" /> 
</div>
<include file="public:footer" />
</body>
</html>