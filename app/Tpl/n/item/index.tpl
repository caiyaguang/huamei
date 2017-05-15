<!DOCTYPE html>

<html>

<head>

<include file='public:head'/>

<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />

<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />

</head>

<body>

<body>       

<div class="main">

<include file='public:header'/>

<include file='public:top'/>

        <div class="app">

		

    <header class="head" id="head">

        <div class="fixtop">

                        <span id="t-find"><a class="btn btn-left btn-back" href="javascript:window.history.go(-1)" title="返回上一页"></a></span>

                        <span id="t-index">商品详情</span>

                        <span id="t-user"><a class="btn btn-left btn-back-home" href="{:C('ftx_header_html')}" title="返回首页"></a></span>

                    </div>        

    </header>

        

            <div id="item">

                <div class="item-good">

                    <div class="img_show">

                        <ul id="target" class="clear">

                            <li><img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}"></li>

                        </ul>                

                    </div>

                    <div class="list-price buy"><span class="price-new ml"><i>￥</i>{$item.coupon_price}</span><i class="del f14 ml2">￥{$item.price}</i><if condition="$item.cu neq ''"><em class="icon-gai ml2">{$item.cu}</em></if> </div>

                    <h1>{$item.title}</h1>

                     <div class="bdfx"><div class="bdsharebuttonbox dropdown bdshare-button-style0-16" data-bd-bind="1471884812405" _hover-ignore="1"><div class="dropdown"><span class="fl">分享到：</span><a href="#" class="qzone" data-cmd="qzone" title="分享到QQ空间" _hover-ignore="1"></a><a href="#" class="sina" data-cmd="tsina" title="分享到新浪微博" _hover-ignore="1"></a><a href="#" class="weixin" data-cmd="weixin" title="分享到微信" _hover-ignore="1"></a><a href="#" class="sqq" data-cmd="sqq" title="分享到QQ好友" _hover-ignore="1"></a><a href="#" class="renren" data-cmd="renren" title="分享到人人网" _hover-ignore="1"></a></div></div><script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","weixin","sqq","renren"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script></div>

                    <div class="better_change">

                        <h3>精挑细选</h3>

                        <ul class="better_show clear">

                            <li>

                                <div class="better_info">

                                    <i class="xp"></i>

                                    <span>新品特价</span>

                                </div>

                            </li>

                            <li>

                                <div class="better_info">

                                    <i class="xs"></i>

                                    <span>限时特卖</span>

                                </div>

                            </li>

                            <li>

                                <div class="better_info">

                                    <i class="cx"></i>

                                    <span>诚信品牌</span>

                                </div>

                            </li>

                            <li>

                                <div class="better_info">

                                    <i class="tj"></i>

                                    <span>人气推荐</span>

                                </div>

                            </li>

                            <li class="last">

                                <div class="better_info">

                                    <i class="by"></i>

                                    <span>全国包邮</span>

                                </div>

                            </li>

                        </ul>

                    </div>



                </div>
				<if condition="$item.isq eq 1"><a id="J_weixin" href="{$item.quanurl}" target="_self" class="btn-pay buy" rel="nofollow">领券{$item.quan}元后直接购买</a>
				<elseif condition="$item.class eq 'buy'"/>

        <if condition="$item.shop_type eq 'B' "><a id="J_weixin" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" class="btn-pay buy" rel="nofollow">去天猫抢购</a></if>

		<if condition="$item.shop_type eq 'C' "><a id="J_weixin" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" class="btn-pay buy" rel="nofollow">去淘宝抢购</a></if>

		<if condition="$item.shop_type eq 'M' "><a isconvert="1" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" class="btn-pay buy" rel="nofollow">去美丽说抢购</a></if>                
</if>
                <div class="bady-part">

                    <div id="bady-tab" class="bady-tab clear">

                        <ul>

                            <li><a href="javascript:;">图文详情</a> </li>

                            <li><a href="javascript:;">产品参数</a> </li>

                            <li><a href="javascript:;">商品评论</a> </li>

                        </ul>

                    </div>

                    <div class="tab1">

					{$item.desc}

                    </div>

                    <div class="com-big tab2"  style="display:none;">

                        <div class="com-list">

                               <ul>

							   <if condition="$item.shop_type eq 'M' ">

							   <volist name='ku_list' id='val'> 

							   {$val.ku}

							   </volist>

							   <else />

                               {$info.ku}

							   </if>

							   </ul>

                                                    </div>

                    </div>

                    <div class="com-big tab3" style="display:none">

                        <div class="com-list">

                            <ul>

                            <div class="ds-thread" data-thread-key="{$item.id}" data-title="{$item.title}" data-url="{:C('ftx_site_url')}index.php?m=item&a=index&id={$item.id}"></div>

							</ul>

                        </div>

                    </div>

                </div>

            </div>



                 <div class="normal item-recommend clear">

                <h3><span>猜你还喜欢:</span></h3>

                <ul class="goods-list clear" id="goods_block">

				<include file="public:hotitems" />

                </ul>

            </div>

                 <div class="normal user-like clear">

                    <h3>已有{$wholike}人收藏</h3>

                    <p>

					<volist name="whos" id="val">

               <a href="{:U('user/like')}" target="_self"><img src="{:avatar($val['id'], 32)}" width="32px" height="32px" alt="{$val.username}" title="{$val.username}"></a>

			   </volist>					

					</p>                    

                </div>

                <div class="buy_btn clear">

                <a href="{:C('ftx_header_html')}" class="go_home"><img src="/static/jwap/images/home.png">返回首页</a>

                <div class="buy_info">
 <if condition="$item.isq eq 1"><a id="J_go_weixin" href="{$item.quanurl}" target="_self" class="go_tmall" rel="nofollow">立即领券下单<i></i></a>	<elseif condition="$item.class eq 'buy'"/>
				<if condition="$item.shop_type eq 'B' "><a id="J_go_weixin" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" class="go_tmall" rel="nofollow">去天猫抢购<i></i></a></if>

				<if condition="$item.shop_type eq 'C' "><a id="J_go_weixin" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" class="go_tmall" rel="nofollow">去淘宝抢购<i></i></a></if>

				<if condition="$item.shop_type eq 'M' "><a isconvert="1" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" class="go_tmall" rel="nofollow">去美丽说抢购<i></i></a></if>
				<if condition="$item.isq eq 1"><a href="{$item.quanurl}" target="_self" class="go_tmall" rel="nofollow">立即领券下单<i></i></a></if>
				 </if>            

				<a class="app_load joa_load_app" data-pid="{$item.num_iid}" title="{$item.title}" href="javascript:;">点这里<br>放入收藏夹</a></div>

            </div>

			

			<include file='item:footer'/>

           </div>

		   </div>



    

    <script type="text/javascript">

        $("#bady-tab li").eq(0).addClass("active");        

        $('#bady-tab li').on('click', function(){

        $("#bady-tab li").removeClass("active");

        $(this).addClass("active");

        $(".tab1,.tab2,.tab3").hide();

        $(".tab"+($(this).index()+1)).show();

        });		

    </script>

	<script type="text/javascript" src="__STATIC__/jwap/js/like.js"></script>


    

    

</script><style type="text/css">*{margin:0; padding:0;}

a{text-decoration: none;}

img{max-width: 100%; height: auto;}

#weixin-tip{display: none; position: fixed; left:0; top:0; bottom:0; background: rgba(0,0,0,0.8); filter:alpha(opacity=80);  height: 100%; width: 100%; z-index: 10000000;}

#weixin-tip p{text-align: center; margin-top: 10%; padding:0 5%;}

#weixin-tip .close{color:#fff;padding:5px;font:bold 20px/24px simsun;text-shadow:0 1px 0 #ddd;position:absolute;top:0;left:5%;}

.item-good .bdfx{margin:0 auto}

.dropdown .dropdown a{

display: inline-block;

height: 16px;

background: url(/static/jwap/images/fx.png);

vertical-align: middle;

margin: 6px 5px 6px 0px;

width: 16px;

padding-left: 0px;}

.dropdown .dropdown span{padding-top: 5px;

}

.dropdown .dropdown a.qzong{display: none;}

.dropdown .dropdown a.sina{background-position: -18px 0px;}

.dropdown .dropdown a.weixin{background-position: -36px 0px;}

.dropdown .dropdown a.sqq{background-position: -54px 0px;}

.dropdown .dropdown a.renren{background-position: -72px 0px;}



.placeholder { color:#999999; }

</style><div id="weixin-tip"><p><img src="/static/jwap/images/live_weixin.png" alt="微信打开"/><span id="close" title="关闭" class="close">×</span></p></div><script type="text/javascript">var is_weixin = (function(){return navigator.userAgent.toLowerCase().indexOf('micromessenger') !== -1})();

window.onload = function() {

	var winHeight = typeof window.innerHeight != 'undefined' ? window.innerHeight : document.documentElement.clientHeight; //兼容IOS，不需要的可以去掉

	var btn = document.getElementById('J_weixin');

	var q_btn = document.getElementById('J_q_weixin');

	var go_btn = document.getElementById('J_go_weixin');

	var c_btn = document.getElementById('J_c_weixin');

	var tip = document.getElementById('weixin-tip');

	var close = document.getElementById('close');

	if (is_weixin) {

	    if(btn){

		btn.onclick = function(e) {

			tip.style.height = winHeight + 'px'; //兼容IOS弹窗整屏

			tip.style.display = 'block';

			return false;

		}}

		if(q_btn){

		q_btn.onclick = function(e) {

			tip.style.height = winHeight + 'px'; //兼容IOS弹窗整屏

			tip.style.display = 'block';

			return false;

		}}

		if(go_btn){

		go_btn.onclick = function(e) {

			tip.style.height = winHeight + 'px'; //兼容IOS弹窗整屏

			tip.style.display = 'block';

			return false;

		}}

		if(c_btn){

		go_btn.onclick = function(e) {

			tip.style.height = winHeight + 'px'; //兼容IOS弹窗整屏

			tip.style.display = 'block';

			return false;

		}}

		close.onclick = function() {

			tip.style.display = 'none';

		}

	}

}

</script>	<include file='public:footjs'/>

</body>

</html>