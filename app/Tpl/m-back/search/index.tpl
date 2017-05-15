<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>
<div class="app">
    <header id="head" class="head">
        <div class="fixtop">
        <span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span>
        <span id="t-index">搜索"{$k}"相关的商品</span>		
        <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
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
<volist name='items_list' id='item'>        
		<if condition="$item.class eq 'start'">
		<li>        
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">  
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
        <if condition="$item.isq eq 1"><div class="lingquan"><a href="{$item.quanurl}" target="_blank" rel="nofollow"><span>内部券<br><em>{$item.quan}元</em></span><b></b></a></div></if>

		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:C('ftx_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">
		{$item.coupon_start_time|wapnewicon}
		</a> 
		<if condition="$item.shop_type eq 'C' ">
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后价<em class="tip-b"></em></span></if>            
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		              
		<span class="good-btn">淘宝</span>            
		</div>        
		</a>
        </if>
		<if condition="$item.shop_type eq 'B' ">
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>    
        <div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后价<em class="tip-b"></em></span></if>        
		              
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		                
		<span class="good-btn">天猫</span>            
		</div>        
		</a>
		</if>
		<if condition="$item.shop_type eq 'M' ">
		<a href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" rel="nofollow">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后价<em class="tip-b"></em></span></if>               
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
		<a class="goods-a" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">   
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
<volist name="taobaoke_item_list" id="item" key="i" mod="4"> 
		<li>        
		<a class="goods-a" isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}">            
		<img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">
		
		</a> 
		<if condition="$item.shop_type eq 'C' ">
		<a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		           
		<span class="good-btn">淘宝</span>            
		</div>        
		</a>
        </if>
		<if condition="$item.shop_type eq 'B' ">
		<a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		        
		<span class="good-btn">天猫</span>            
		</div>        
		</a>
		</if>		
		</li> 
				
</volist>
	</ul>
</section>
<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>
</div>
<include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>
</body>
</html>