<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<div class="main">    
<include file='public:quanheader'/>
      
<div class="app">
    <header class="head" id="head">
        <div class="fixtop">
        <span id="t-find" class="classify"><a href="javascript:void(0);" class="btn btn-left btn-type"></a></span>
        <span id="t-index">优惠券 <i><if condition="$index_info['sex'] eq '1'"> - 男</if> <if condition="$index_info['sex'] eq '2'"> - 女</if></i></span>
        <span id="t-user"><a href="javascript:;" class="choice">筛选<em class="cur"></em></a></span>
        </div>
        <dl class="screen-box">
            <dt>筛选方式：</dt>
			<dd>
            <a href="{:U('quan/index')}" title="默认排序" >默认
			<img <if condition="$index_info['sort'] eq 'default'">style="display:block;" </if> src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('quan/index',array('sort'=>'num'))}" title="最新" >优惠最多<img  <if condition="$index_info['sort'] eq 'num'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
           
			
            
            <dd class="pack_up"><a href="javascript:void(0);"><img src="__STATIC__/jwap/images/pack_up.png"></a></dd>
        </dl>
    </header>
                   <li class="search">

        <div id="search-box">

           <form id="search-form" action="{:C('ftx_header_html')}" method="get">

                <div class="box-search">

				    <input type="hidden" name="m" value="quan" />
				<input type="hidden" name="a" value="so" />

                    <input type="text" id="k" name="k" x-webkit-speech="" placeholder="搜索内部卷商品..." autocomplete="off" value="">

                    <a href="javascript:;" class="del"><img src="__STATIC__/jwap/images/del.png"></a>

                </div>                

                <button id="search-submit" type="submit" onclick="document.getElementById('keyword').value=encodeURI(document.getElementById('keyword').value);getId('search-form').submit()">

                    <img src="__STATIC__/jwap/images/search.png">

                </button>

            </form>

        </div>
        <div style="width:100%;"><img src="__STATIC__/jwap/images/quanbanner.png" style="width:100%; max-width:640px;"></div>
<div id="goods">
<section class="goods" id="goods">
<ul class="goods-list quan clear">

<volist name='items_list' id='item'> 		
		<li>        
		<a class="goods-a" href="javascript:;" target="_self">            
		<img class="loazd" src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">		
		</a> 
		<div class="col-xs-6 noPadding  ">
		<p class="pHeader"><a href="{$item.quanurl}" target="_self" rel="nofollow">{$item.title}</a><span class="glyphicon"> 优惠券：￥</span><b>{$item.quan}元</b></p> 
        <p class="pHeader"><a href="{$item.quanurl}" target="_self" rel="nofollow"></a>
		
		<if condition="$item.isq eq '1' "><div class="divPrice">券后价￥<span>{$item.coupon_price}</span>在售价￥<span>{$item.price}</span></div></if>
		<div class="divGo"><a href="{$item.quanurl}" target="_self" rel="nofollow"><span>①领券</span></a>
        <span>→</span>
		<a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow"><span>②下单</span></a></div>     
		</li> 				
</volist>	
</ul>
</section>

<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>



<div class="tips"><div><img src="http://s.juancdn.com/webapp/images/images.png" width="100%;"></div></div>
<div class="tips01"><div><img src="http://s.juancdn.com/webapp/images/images01.png" width="100%;"></div></div>

<script type="text/javascript">
    //微信提示
    var browser={
	v: (function(){
            var u = navigator.userAgent, app = navigator.appVersion, p = navigator.platform;
            return {
                trident: u.indexOf('Trident') > -1, //IE内核
                presto: u.indexOf('Presto') > -1, //opera内核
                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                ios: !!u.match(/i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
                iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
                iPad: u.indexOf('iPad') > -1, //是否iPad
                weixin: u.indexOf('MicroMessenger') > -1, //是否微信
                webApp: u.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
                UCB: u.match(/UCBrowser/i) == "UCBrowser",
                QQB: u.match(/MQQBrowser/i) == "MQQBrowser",
                win: p.indexOf('Win') > -1,//判断是否是WIN操作系统
                mac: p.indexOf('Mac') > -1//判断是否是Mac操作系统

            };
        })()
    }

    var F_weixin = function(){
        if (browser.v.weixin ) {

            $("ul.goods-list a").on('click', F_alert_tips);
            $("div.alert_fullbg").on('click',F_alert_hide);

        }else{

        }
    }
    var type = "";
    var F_alert_tips = function(type) {
        if(type == "down"){
            $(".tips").css({
                display:'block'
            });
        } else {
            $(".tips01").css({
                display:'block'
            });
        }
        $(".alert_fullbg").css({
            display:'block'
        })
        return false;
    }
    var F_alert_hide =function() {
        $(".tips").hide();
        $(".tips01").hide();
        $(".alert_fullbg").hide();
    }
    F_weixin();



	//回到顶部图标显示隐藏效果
	document.getElementById("back_top").style.display = "none";
	window.onscroll = function () {
	    if (document.documentElement.scrollTop + document.body.scrollTop > 100) {
		document.getElementById("back_top").style.display = "block";
	    }
	    else {
		document.getElementById("back_top").style.display = "none";
	    }
	}
	var $divWidth = $('.goods-a img').width();
	$('.goods-a img').css({'height':$divWidth});

	</script>
	<style type="text/css">
	.tips{ position: fixed; top: 0;  z-index: 110001; width: 100%; max-width: 640px; display: none;}
.tips01{ position: fixed; top: 0;z-index: 110001; width: 100%; max-width: 640px; display: none;}
.tips02{ position: fixed; top: 0;z-index: 110001; width: 100%; max-width: 640px; display: none;}
	</style>
    
    

<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
</body>
</html>