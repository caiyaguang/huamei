<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<script type="text/javascript">window.setInterval('$.getJSON("/?m=huameiquancaiji&a=index",{}, function(){});',30000);</script>
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


<style>
/*顶部导航，浮动块*/
/*.top_nav by 华美网络 start*/
.line-cate-nav-location{height: 50px;}
.line-cate-nav-location.hidn {
height: 0;
}
.line-cate-nav-location.hidn .line-cate-nav-wrapper {
display: none;
}
.line-cate-nav-location .line-cate-nav-wrapper{width: 100%;background-color: #fff;padding: 15px 0;}
.line-cate-nav-location.hidden {height: 0;}
.line-cate-nav-location.hidden .line-cate-nav-wrapper{display: none;}
.line-cate-nav-location .line-cate-nav-wrapper.fix-top{position: fixed; top: 0; left: 0; width: 100%; z-index:999; display: inline-block;-webkit-box-shadow:0px 0px 4px #999; -moz-box-shadow: 0px 0px 4px #999; box-shadow: 0px 0px 4px #999;}
.line-cate-nav{width: 1200px;margin: 0 auto;height: 20px;line-height: 20px;}
.line-cate-nav li{float: left;height: 20px; line-height: 20px; padding: 0 15px;}
.line-cate-nav li a {display: block; height: 20px; line-height: 20px; font-size: 14px; color: #333;}
.line-cate-nav li a:hover, .line-cate-nav li a.active{color: #ff464e}
.line-cate-nav li.first{border-right: 1px solid #ccc;padding-left: 0;}
.line-cate-nav li.last a {color: #336600;}
/*THE END*/

.quan_clear {padding: 0px;}
.quan_r {padding-right: 15px;}
.quan_l {padding-left: 15px;}
.pic {display: inline-block;padding-right: 10px;text-align: center;width: 270px;float: left;}
.pic img{width: 260px;height:260px;border-radius: 4px;}
.quanContent {padding-right: 5px;border: solid #E0E0E0 1px;margin-bottom: 26px;background-color: #fff;border-radius: 4px;}
.quanContent:hover {border: 1px solid #f8285c;}
.quan_header {margin-top: 12px;max-height: 52px;overflow: hidden;}
.quan_header a {line-height: 26px;font-size: 16px;color: #616161;}
.quan_title {color: #565656;}
.date {color: #f3659b;font-size: 22px;margin-bottom: 11px;}
.date .glyphicon {color: #f6924c;}
.coupon {font-size: 12px;margin-bottom: 17px;}
.coupon span:nth-child(1) {color: #f3659b;}
.price {font-size: 15px;color: #FFD9EC;margin-top: 0px;background: #f8285c;height: 54px;line-height: 54px;padding-left: 30px;border-radius: 8px;}
.price span:nth-child(1) {font-size: 28px;font-family: Arial, Helvetica, sans-serif;color: #FFFFFF;}
.btn_buy {margin: 5px 5px 5px 5px;color: #999999;}
.btn_buy span:nth-child(1) {display: inline-block;border: 1px dashed #f8285c;padding: 6px;border-radius: 6px;color: #ec3315;}
.btn_buy span:nth-child(2) {display: inline-block;margin: 5px 5px 5px 5px;color: #999999;font-family: '宋体';font-size: 18px;font-weight: bold;}
.btn_buy span:nth-child(3) {display: inline-block;border: dashed 1px #f8285c;padding: 6px;border-radius: 6px;color: #ec3315;}
.btn_buy span:nth-child(1):hover {background-color: #FACB12;}
a{color: #5e5e5e;text-decoration: none;}
a:focus, a:hover {color: #5e5e5e;text-decoration: none;}
.nav .open>a, .nav .open>a:focus, .nav .open>a:hover {background-color: #FFF;border-color: #FFF;}
.quan_nav {color: #777777;margin-right: 14px;}
.quan_nav_on {color: #EF4929;}
ul.navigation.fl li,ul.navigation.fl li a { -webkit-box-sizing: content-box; }
.logo h1{ margin: 0; padding: 0; }
</style>


	<div style=" height:300px; background:#C4E8FF; overflow:hidden; background:url(/static/newpi/images/quan.png) center;"></div>

</div>

<div class="line-cate-nav-location" >
 <div class="line-cate-nav-wrapper">
            <ul class="line-cate-nav">
			<li class="first"><a class="active" href="{:U('quan/index')}">内部券 {$total_item} 件</a></li>
       <volist name="cate_data" id="bcate">		
		    <if condition="$bcate['pid'] eq 34">
			<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('quan/index', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
			</if>
		    </volist> 
             <li class="last"><a target="_blank" href="{:U('yugao/index')}">[明日预告]</a></li>
        <div class="right-search">
        <form name="search" action="/index.php" method="get" id="search">
     <input type="hidden" name="m" value="quan" />
				<input type="hidden" name="a" value="so" />
        <span class="search-area fl">
        <input name="k" id="k" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="输入你要买的商品..." value="输入你要买的商品..." class="txts"></span>
        <input type="submit" value="搜索" class="sobtn fr"></form></div>
     </ul>
	
</div>        
</div>

</div>
</notempty>


<style type="text/css">
.ziti{ font-family:Arial, Helvetica, sans-serif; font-weight:normal;}
.is_on{ color:#FF3333;}
.is_off{ color:#7373FF;}
	
.quan_bt{float:left; padding:6px;border-radius: 7px; border:dotted #F72121 1px; color:#EC3315; text-decoration:none;}
.quan_bt:hover{ background:#FACB12; color:#ea2a60;}

.quan{width:100%; background:#f6f6f6;}
.quan .quan_top{height:143px; display:block; background:url(__STATIC__/images/quan/quan_top.png) top center;}
.quan .quan_main{width:1200px; margin:auto; overflow:hidden;}
.quan .quan_main .nav{margin-top:20px; font-family:'微软雅黑'; font-size:17px; overflow:hidden;}
.quan .quan_main .quan_list{overflow:hidden;}
.quan .quan_main .quan_list .quan_goods{width:583px; border:solid #E0E0E0 1px; margin-top:30px;float:left;}
.quan .quan_main .quan_list .quan_goods.last{width:583px; border:solid #E0E0E0 1px; margin-top:30px;float:right;}
.quan .quan_main .quan_list .quan_goods:hover{ border:solid #e81a62 1px;}
.quan .quan_main .quan_list .quan_goods .img{float:left; width:270px;}
.quan .quan_main .quan_list .quan_goods .img img{width:266px;height:266px;border:0px;}
.quan .quan_main .quan_list .quan_goods .quan_txt{float:right; width:300px; margin-left:5px;margin-right:5px; font-family:微软雅黑;}
.quan .quan_main .quan_list .quan_goods .quan_txt .title{line-height:26px; font-size:16px; color:#616161; margin-top:10px;height: 52px;overflow: hidden;}

.right-search {
	width: 270;
	height: 20px;
	float:right;
	margin-top: -5px;
}
.right-search .search-area {
display: block;
width:180px;
height: 30px;
border-top: 1px solid #ff464e;
border-left: 1px solid #ff464e;
border-bottom: 1px solid #ff464e;
}
.right-search .txts {
border: 0 none;
outline: 0 none;
width:98%;
height: 30px;
line-height: 30px;
margin-left:10px;
  color: #6B6666;
}
.right-search .sobtn {

border: 0 none;
cursor: pointer;
height: 32px;
width:50px;
display: block;
background:#f8285c;
color:#fff;
font-size: 15px;
line-height: 32px;
margin-top: 0px;
text-align: center;
}

</style>

<div class="quan"> 
	
	<div class="quan_main">
		<div class="nav">
			
			<div class="fr">排序：<a href="{:U('quan/index')}" <if condition="$sort eq 'new'">class="is_on"<else />class="is_off"</if>>最新</a> &nbsp; <a href="{:U('quan/index',array('sort'=>'num'))}" <if condition="$sort eq 'num'">class="is_on"<else />class="is_off"</if>>优惠最多</a></div>
		</div>
		<div class="quan_list">
			<volist name="items_list" id="item" key="i" mod="2">
			<div class="quan_goods <eq name="mod" value="1"> last</eq>">
				<a href="{:U('quanitem/index',array('id'=>$item['id']))}"  target="_blank" rel="nofollow" class="img">
					<img src="{$item.pic_url}_310x310.jpg">
				</a>
				<div class="quan_txt">
					<div class="title">{$item.title}</div>
					<div style=" margin-top:10px; clear:both;font-family:'微软雅黑'; overflow:hidden; font-size:14px; color:#FB82A4;">
						<div style="margin-top:2px;float: left;margin-right: 5px;"><img src="__STATIC__/newpi/images/quan/quan_icon.png" width="20"></div>
						<div style="float:left; margin-top:1px;">
							内部券 <b class="ziti" style="font-size:16px; color:#F3658D; font-weight:bold;">{$item.quan} </b>元，过期时间 <b class="ziti" title="1" style="font-size:14px;">{$item.coupon_end_time|date="Y-m-d",###}</b>
						</div>
						<div style="float:right; margin-top:1px; margin-right:3px;text-align:center;"></div>
					</div>
					<div style=" margin-top:10px; clear:both;font-family:'宋体';; overflow:hidden; font-size:12px; color:#797979;">
						<div style="float:left; margin-top:1px;">
						优惠券剩余 <b class="ziti" style="font-size:14px; color:#FB82A4;">{$item.Quan_surplus} </b>张 已领取{$item.Quan_receive}</b>张 销量{$item.volume}件</div>
						<div style="float:right; margin-top:1px; margin-right:3px;text-align:center;"></div>
					</div>
					<div style="margin-top:5px;overflow:hidden;">
						<div style="font-size:15px; color:#FFD9EC; margin-top:7px; background:#ea2a60; width:296px; height:50px; line-height:50px;"> &nbsp;&nbsp; 券后价 <font style="color:#FFFFFF; font-size:18px;">￥</font><span style="font-size:28px; font-family:Arial, Helvetica, sans-serif; color:#FFFFFF;">{$item.coupon_price}</span>  &nbsp;&nbsp; &nbsp;  在售价 ￥<span style="font-size:16px; font-family:Arial;">{$item.price}</span></div>
					</div>
					<div style="margin-top:25px;overflow:hidden; font-size:14px;">
						<div style="float:left; margin-top:6px; color:#999999;">购买流程： &nbsp;</div>
						<a class="quan_bt" href="{$item.quanurl}" target="_blank" title="先领取优惠券" rel="nofollow">①点我领券.</a>
						<div style="float:left; margin-top:6px; color:#999999; font-family:'宋体'; font-size:18px; font-weight:bold;">&nbsp;&gt;&nbsp; </div>
						<a class="quan_bt" href="{:U('quanitem/index',array('id'=>$item['id']))}" target="_blank" title="去淘宝下单" rel="nofollow">②点击下单</a>
					</div>
				</div>
			</div>
			</volist>
		</div>
		<div style="text-align:center; margin-top:20px; font-size:21px; color:#FF3333; clear:both; margin-bottom:20px;">亲，暂时木有了哟~ 全天实时直播更新，记得关注哦！</div>
	</div>
    
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>



<include file="public:footer" />
</body>
</html>