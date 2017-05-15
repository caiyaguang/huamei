<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>
<div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="{:C('ftx_header_html')}" class="btn btn-left btn-back" title="返回首页"></a></span>
                    <span id="t-index">我的收藏夹</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                    
                </div>
            </header>
<div id="goods">
<section class="goods" id="goods">
<ul class="goods-list clear">
<script>
$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})
</script>
<volist name="items" id="item" key="i" mod="4">        
		<if condition="$item.class eq 'start'">
		<li>        
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">  
		{$item.add_time|wapnewicon}		
		</a>        
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price start">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">{$item.coupon_start_time|date="n-j H:i",###}</span>            
		</div>        
		</a>    
		</li> 
		</if>
		<if condition="$item.class eq 'buy'">
		<li>        
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">
		{$item.coupon_start_time|wapnewicon}
		</a> 
		<if condition="$item.shop_type eq 'C' ">
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">淘宝</span>            
		</div>        
		</a>
        </if>
		<if condition="$item.shop_type eq 'B' ">
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">天猫</span>            
		</div>        
		</a>
		</if>
		<if condition="$item.shop_type eq 'M' ">
		<a href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" rel="nofollow">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">美丽说</span>            
		</div>        
		</a>
		</if>
		</li> 
		</if>
		<if condition="$item.class eq 'gone'">
		<li>        
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">   
		<span class="buy-over"></span>
		</a>        
		<a target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price end">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">已结束</span>            
		</div>        
		</a>    
		</li> 
		</if>
</volist>    
</ul>  
</section>
</div>
<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>
<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
</body>
</html>