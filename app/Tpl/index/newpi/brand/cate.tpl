<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
    <head>		 
	<include file="public:head" />
	<link type="text/css" rel="stylesheet"	href="/static/newpi/css/brand.css" />
	<link type="text/css" rel="stylesheet"	href="/static/newpi/css/brand_list.css" />
    </head>
    <body>
   <include file="public:brandheader" />
    <div class="main pr mt25 clear w1200">
    <div class="slide-logos clear">
    <span class="prev-btn" style="display: inline;"></span>
    <span class="next-btn" style="display: inline;"></span>
    <div class="logos-box">
        <ul>
        <li>
<ftx:item type="rebrand" id="$cid">	
<volist name="data" id="item" offset="0" length="20">
		<a href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank">
        <img alt="{$item.title}" src="{$item.logo}">
        <div class="masking"></div>
		<span>{$item.title}</span>
        </a>						
</volist>
</ftx:item>
        </li>
		<li>
<ftx:item type="rebrand" id="$cid">
<volist name="data" id="item" offset="20" length="20">
		<a href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank">
        <img alt="{$item.title}" src="{$item.logo}">
        <div class="masking"></div>
		<span>{$item.title}</span>
        </a>						
</volist>
</ftx:item>
        </li>
		<li>
<ftx:item type="rebrand" id="$cid">
<volist name="data" id="item" offset="40" length="20">
		<a href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank">
        <img alt="{$item.title}" src="{$item.logo}">
        <div class="masking"></div>
		<span>{$item.title}</span>
        </a>						
</volist>
</ftx:item>
<li>
<ftx:item type="rebrand" id="$cid">
<volist name="data" id="item" offset="60" length="20">
		<a href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank">
        <img alt="{$item.title}" src="{$item.logo}">
        <div class="masking"></div>
		<span>{$item.title}</span>
        </a>						
</volist>
</ftx:item>
        </li>
        </li>
        </ul>
    </div>
</div>
<div class="brand-box">
<volist name="items_list" id="val">
<if condition="$val.pass eq 1">
   <div class="bd">
   <div class="normal-title clear">
   <a href="{:U('brand/view',array('id'=>$val['id']))}" target="_blank">
   <div class="title">
   <img src="{$val.logo}" height="60px" ></img>
   </div>
   <div class="desc">{$val.desc}</div>
   <span class="txt fr">{$val.title}</span>
   </a>
   </div>
   </div>
<div class="bd">
<ul class="goods-list">
<ftx:item type="brand" cid="$val['activityId']" num="8">
<volist name="data" id="item" key="i" mod="8">
<li class="<eq name='mod' value='3'> last</eq><eq name='mod' value='7'> last</eq>" gtype="1" id="{$item.id}">
    <div class="list-good buy">
        <div class="good-pic">
		<a href="{:U('brand/item',array('id'=>$item['id']))}"  target="_blank" class="pic-img"><img src="{:C('ftx_site_flogo')}" class="lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="{$item.title}"><span class="brand-icon"></span></a>
		</div>
        <h3 class="good-title">		
		<a href="{:U('brand/item',array('id'=>$item['id']))}" target="_blank">{$item['intro']}</a>        
        </h3>
        <div class="good-price"> 
		<span class="price-current"><em>￥</em>{$item.coupon_price}</span> 
		<span class="des-other">
        <strong><em class="icon-gai">{$item.threetag}</em></strong>
		<p>
		<span class="price-old"><em>￥</em>{$item.price}</span>
        <span class="discount">(<em>{$item.coupon_rate}</em>折)</span>
		</p>
        </span>		       
        <div class="btn buy m-buy">
        <a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_blank"><em class="j-icon"></em><span>品牌</span></a>
        </div>                  
        </div>
		<eq name="mod" value="7">
        <div class="brand-more">
            <div class="brand-bd"></div>
            <a href="{:U('brand/view',array('id'=>$val['id']))}" target="_blank"><span class="txt">共<b>{$val.counts}</b>款</span></a>
        </div>	
      </eq>		
    </div>
</li>
</volist>
</ftx:item>
</ul>
</div>
</if>
</volist>
</div>
<div class="page">
<em></em>
<div>{$page}
</div>
</div>
<include file="public:hotbrand" />
</div>   
<include file="public:footer" />
    <script>
        //初始化
        $(".slide-logos .next-btn").click(function(){
            $(".logos-box ul").stop(true,true).animate({marginLeft:-1*$(".logos-box li:eq(0)").width()},100,function(){
                $(".logos-box ul").append($(".logos-box li:eq(0)").clone());
                $(".logos-box li:eq(0)").remove();
                $(".logos-box ul").css("margin-left",0);
            })
        });
        $(".slide-logos .prev-btn").click(function(){
            $(".logos-box ul").prepend($(".logos-box li:last").clone());
            $(".logos-box li:last").remove();
            $(".logos-box ul").css("margin-left",-1*$(".logos-box li:eq(0)").width());
            $(".logos-box ul").stop(true,true).animate({marginLeft:0},100)
        });

        var F_selected = function(){
            var brand_id = location.href.split("#")[1];
            $("#" + brand_id).addClass("selected-active");
            $("li.selected-active").on("mouseover",function(){
                $(this).removeClass("selected-active")
            })
        }
        F_selected();
    </script>
       
</body>
</html>