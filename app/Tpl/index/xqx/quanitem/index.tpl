<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<include file="public:head" />

<link rel=stylesheet type=text/css href="__STATIC__/newpi/css/item/dtk.css" />

<link rel=stylesheet type=text/css href="__STATIC__/newpi/css/item/detail.css" />
</head>
<body>

<include file="public:header" />

<p>
  <style>
    #navTop {
        width: 100%;

        /*border-bottom: 1px solid #ccc;*/
    }

    body #headNav #header #showList dl {
        margin: 5px 16px;
    }

    body #headNav #header #showList #search button {
        height: 37px;
        overflow: hidden;
        padding: 7px 30px;
    }
    .feedback {
        display:none;
        padding-bottom:30px;
    }
    .feedback .feedback-title{
        color:#ff6600;
        font-size:20px;
    }
    .feedback .line {
        margin:20px 50px 0px 50px;
    }
    .feedback input {
        width:538px;
        padding: 10px;
        font-size:14px;
    }
    .feedback textarea {
        width:538px;
        font-size:14px;
        padding:5px 10px;
    }
    .feedback button {
        /*display: inline-block;*/
        /*font-family: inherit;*/
        background: #ff6600;
        line-height: 40px;
        font-weight: 700;
        font-size: 14px;
        height: 40px;
        color: #fff;
        border: 0;
        width: 120px;
        padding:0 15px;
        border: 0;
        border-radius:10px;
    }
    .layui-layer-setwin .layui-layer-close2{
        background-position: -149px -31px !important;
    }
</style>
</p>

<div id="dtk_mian">
<div class="search-wrap main-container" style="background: url(&#39;http://img.alicdn.com/imgextra/i1/2508158775/TB2rPoSXqi5V1Bjy1zdXXaRkVXa_!!2508158775.jpg&#39;) top center no-repeat;">
</div>
<div class="detail-wrap main-container">
<div class="nav-wrap">
<div class="text">当前位置：<a href="{:C('ftx_site_url')}">首页</a>&gt;<a href="{:U('quan/index')}">领券直播</a>&gt;&nbsp;优惠详情
</div>
</div>
<div class="detail-row clearfix">
<a rel="nofollow" href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank" class="img cnzzCounter" data-cnzz-type="1" data-cnzz="31142"><img src="{$item.pic_url}_400x400.jpg" alt="{$item.title}"></a>
<div class="detail-col">
<a class="title clearfix cnzzCounter " rel="nofollow" href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank" data-cnzz-type="1" data-cnzz="31142">


<if condition="$item.shop_type eq 'C' "><span class="tmall"></span></if><if condition="$item.shop_type eq 'B' "><span class="taobao"></span></if>
<span class="title">{$item.title}</span>
</a>
<div class="desc"> <span>推荐理由：</span>{$item.intro} </div>
<div class="coupon-wrap clearfix">
<span class="now-price"><b>(独享)</b>券后价&nbsp;&nbsp;&nbsp;&nbsp;<b>¥<i>{$item.coupon_price}</i></b></span>
<span class="org-price">在售价&nbsp;&nbsp;¥<i>{$item.price}</i></span>
</div>
<div class="text-wrap">
<span class="text-wrap-span">
已领券<i>{$item.Quan_receive}</i>张，手慢无
</span>
<span>已有<i>{$item.volume}</i>人购买</span>
</div>
<div class="buy-step clearfix">
<div class="buy-step-text">购买流程</div>
<div class="buy-step-first">
<span>
<i>优惠券</i>
<b>¥{$item.quan}</b>
</span>
<a rel="nofollow" class="coupon-btn" href="{$item.quanurl}" target="_blank" title="领券后请点击右边按钮下单">点击领取</a>
</div>
<div class="double-arrow">
<span style="margin-left: -12px;"></span>
</div>
<a class="buy-step-sec buy-btn cnzzCounter" data-cnzz-type="1" data-cnzz="31142" rel="nofollow" href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank">去天猫下单</a>
</div>
<div class="text2">
<span>如果您喜欢此宝贝，记得分享给您的朋友，一起享优惠：</span>
<div class="bdshare">
<div class="bdsharebuttonbox bdshare-button-style0-16" data-bd-bind="1473433486216">
<a href="{:U('quanitem/index',array('id'=>$item['id']))}" class="bds_more" data-cmd="more"></a>
<a href="{:U('quanitem/index',array('id'=>$item['id']))}" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
<a href="{:U('quanitem/index',array('id'=>$item['id']))}" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
<a href="{:U('quanitem/index',array('id'=>$item['id']))}" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
</div>
<script>
                        window._bd_share_config = {
                            "common": {
                                "bdSnsKey": {},
                                "bdText": "最近发现了一个领内部优惠券的网站，都是限时限量抢购，一般人享受不到的！性价比超高哦，分享给大家，保证你会惊喜滴！",
                                "bdMini": "2",
                                "bdMiniList": false,
                                "bdPic": "",
                                "bdStyle": "0",
                                "bdSize": "16"
                            }, "share": {}
                        };
                        with (document)0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
                    </script>
</div>
</div>
</div>
<div class="pos-right">
<p><span>大家都在抢</span></p>
<div class="pos-box">
<div class="pos-goods-list bot" style="height: 1305px; top: -435px;">
 <volist name="items_list" id="item" key="i">
 <li>
<a class="pos-goods cnzzCounter" title="{$item.title}小三件套" data-cnzz-type="1" data-cnzz="31049" target="_blank" href="{:U('quanitem/index',array('id'=>$item['id']))}">
<img alt="{$item.title}" src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">
<span>¥{$item.coupon_price}</span>
</a>
 </li>
	</volist>  
</div>
</div>
<div class="pos-act">
<a class="top-btn" href="javascript:;"></a>
<a class="bot-btn" href="javascript:;"></a>
</div>
</div>
</div>
</div>
<div class="jipin-wrap">
优惠精选

</div>




<div class="main-container" style="overflow:hidden;">	
<volist name="items_list" id="item" key="i" mod="3">
<li class="<eq name='mod' value='3'> last</eq>" gtype="1" id="{$item.id}"  style=" margin: 0 8px 10px 0;float: left;">
<div class="live-goods left">
<a class="live-img cnzzCounter" href="{:U('quanitem/index',array('id'=>$item['id']))}" target="_blank" data-cnzz-type="1" data-cnzz="31112">
<img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="heergoos男士裤子2016新款休闲裤男生青年韩版修身男裤纯棉长裤潮">
<span class="mask"></span>
<span class="label">今日<br>新品</span>
</a>
<a class="title cnzzCounter" title="{$item.title}" href="{:U('quanitem/index',array('id'=>$item['id']))}" target="_blank" data-cnzz-type="1" data-cnzz="31112">
<i class="tmall"></i>
<span>{$item.title}</span>
</a>
<p class="quan">
<span class="float-l">优惠券&nbsp;<i>{$item.quan}</i>&nbsp;元</span>
<span class="float-r">已有<i><if condition="$item.volume gt 10000">{$item.volume|vmwan}<else />{$item.volume}</if></i>人购买</span>
</p>
<p class="price">
<span class="n-price float-l">券后价：<b><i class="currency">¥</i>{$item.coupon_price}</b></span>
<span class="float-r">正常售价：<i class="currency">¥</i>{$item.price}</span>
<a class="buy-btn cnzzCounter" href="{:U('quanitem/index',array('id'=>$item['id']))}"  target="_blank" data-cnzz-type="1" data-cnzz="31112">去购买</a>
</p>
</div>

</li>
</volist>
</div>
	</ul>
<a class="more-btn" href="{:C('ftx_site_url')}"">查看更多</a>
<script>
(function(){
    // 领券箭头移动
    var direction='right';
    $(".buy-step").hover(function(){
        var css={
            'margin-left':'-12px'
        };
        if(direction==='right'){
            direction='left';
            css['margin-left']='-5px';
        }else{
            direction='right';
        }
        $('.double-arrow span').animate(css,arguments.callee);
    },function(){
        $('.double-arrow span').stop().css("margin-left","-12px");
    })
    // 右侧广告位
    var list = $(".pos-goods-list"),
        goods = $(".pos-goods"),
        hg = goods.outerHeight(true),
        len = goods.length,
        time = 500,
        timer = null;
    list.height(hg * len);
    $(".top-btn").on("click",function(){
        var _this = $(this),
            _top = parseInt(list.css("top"));
        if(_this.hasClass("disabled") || list.is(":animated")){
            return;
        }
        list.animate({
            "top" : _top + hg * 3
        },time,function(){
            if(parseInt(list.css("top")) == 0){
                _this.addClass("disabled");
                list.removeClass("top").addClass("bot");
            }else{
                list.removeClass("bot").addClass("top");
            }
            $(".bot-btn").removeClass("disabled");
        });
    });
    $(".bot-btn").on("click",function(){
        var _this = $(this),
            _top = parseInt(list.css("top"));
        if(_this.hasClass("disabled") || list.is(":animated")){
            return;
        }
        list.animate({
            "top" : _top - hg * 3
        },time,function(){
            if(Math.abs(parseInt(list.css("top"))) == hg * (len - 3)){
                _this.addClass("disabled");
                list.removeClass("bot").addClass("top");
            }else{
                list.removeClass("top").addClass("bot");
            }
            $(".top-btn").removeClass("disabled");
        });
    });
    timer = setInterval(function(){
        if(list.hasClass("bot")){
            $(".bot-btn").trigger("click");
        }else if(list.hasClass("top")){
            $(".top-btn").trigger("click");
        }
    },time * 10);
    $(".pos-right").hover(function(){
        clearInterval(timer);
    },function(){
        timer = setInterval(function(){
            if(list.hasClass("bot")){
                $(".bot-btn").trigger("click");
            }else if(list.hasClass("top")){
                $(".top-btn").trigger("click");
            }
        },time * 10);
    })
})();
</script>
</div>
<div id="footer" style="background-color: #373737;height: 190px;width: 100%;border-top: 3px solid #FF6C00;">
<div class="footer-wrapper " style="width: 1200px;margin: 0 auto;position: relative;text-align: center">
<img src="http://cms8.qingtaoke.com/images/bottom_text.png" alt="" style="border: 0;margin-top: 50px;">
<div class="author" style="    position: absolute;
    top: 67px;
    left: 990px;
    color: #FFFFFF;
    font-size: 18px;">by
&nbsp;&nbsp;{:C('ftx_site_name')}</div>
<div class="text" style="color: #a2a2a2;
    font-size: 16px;
    margin-top: 33px;">© CopyRight&nbsp;2016 &nbsp;<a href="{:C('ftx_site_url')}" target="_blank" rel="nofollow" style="color:#a2a2a2;">{:C('ftx_site_name')}</a>
&nbsp;{:C('ftx_site_url')}&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow" style="color:#a2a2a2;">{:C('ftx_site_icp')}</a>
&nbsp;&nbsp; <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" style="color: #8da7cb" title="联系我帮你解答">^_^亲遇到问题，联系我帮你处理哈</a>
</div>
</div>
</div>



<iframe frameborder="0" id="bdSharePopup_1473433510919bg" class="bdshare_popup_bg" style="height: 326px; width: 228px; top: 477px; left: 935.5px; display: none;" src="./index_files/saved_resource.html"></iframe><div class="bdshare_popup_box" id="bdSharePopup_1473433510919box" style="width: 226px; top: 477px; left: 935.5px; display: none;"><div class="bdshare_popup_top">分享到</div><ul class="bdshare_popup_list"><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_mshare" data-cmd="mshare">一键分享</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_qzone" data-cmd="qzone">QQ空间</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_tsina" data-cmd="tsina">新浪微博</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_bdysc" data-cmd="bdysc">百度云收藏</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_weixin" data-cmd="weixin">微信</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_renren" data-cmd="renren">人人网</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_tqq" data-cmd="tqq">腾讯微博</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_bdxc" data-cmd="bdxc">百度相册</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_kaixin001" data-cmd="kaixin001">开心网</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_tqf" data-cmd="tqf">腾讯朋友</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_tieba" data-cmd="tieba">百度贴吧</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_douban" data-cmd="douban">豆瓣网</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_bdhome" data-cmd="bdhome">百度新首页</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_sqq" data-cmd="sqq">QQ好友</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_thx" data-cmd="thx">和讯微博</a></li><li><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_ibaidu" data-cmd="ibaidu">百度中心</a></li></ul><div class="bdshare_popup_bottom"><a href="{:U('quanitem/index',array('id'=>$item['id']))}" onclick="return false;" class="popup_more" data-cmd="more" target="_blank;">更多...</a></div></div></body></html>