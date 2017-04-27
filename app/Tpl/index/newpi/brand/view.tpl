<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc" xmlns="http://www.w3.org/1999/xhtml">
    <head>
 	<include file="public:head" />
	<link type="text/css" rel="stylesheet"	href="/static/newpi/css/brand.css" />
	<link type="text/css" rel="stylesheet"	href="/static/newpi/css/brand_list.css" />
    </head>
    <body>
   <include file="public:brandheader" />        
            <a href="{:U('brand/view',array('id'=>$brand['id']))}" target="_blank"><div style="background:url({$brand.banner}) no-repeat" class="brand-banner">
            <div class="center">
                <div class="brand-open">
                    <div class="brand-ceng"></div>
                    <div class="brand-bg">
                        <div class="logo"><img src="{$brand.logo}"></div>
                        <div class="line"></div>
                        <div class="txt">{$brand.desc}</div>
                    </div>
                </div>
            </div>
        </div></a>
    
    <div class="main pr mt15 w1200" data-id="brandlist">
    <ul class="goods-list">
	 <volist name="items_list" id="item" key="i" mod="4">
           <li class="<eq name='mod' value='3'> last</eq>" gtype="1" id="{$item.id}">
                <div class="list-good buy">
                    <div class="good-pic">
                        <a href="{:U('brand/item',array('id'=>$item['id']))}" class="pic-img" target="_blank">
                        <img alt="{$item.title}" src="{:C('ftx_site_flogo')}" class="lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" data-bimg="{$item['pic_url']}"/><span class="brand-icon"></span></a>
                     </div>
                    <h3 class="good-title">
                        <a href="{:U('brand/item',array('id'=>$item['id']))}" target="_blank">{$item.title}</a>                        
                    </h3>
                    <div class="good-price">
                        <span class="price-current" ><em>￥</em>{$item.coupon_price}</span>
                    <span class="des-other">
                       <strong><em class="icon-gai">{$item.threetag}</em></strong>
					    <p><span class="price-old"><em>￥</em>{$item.price}</span>
                        <span class="discount">(<em>{$item.coupon_rate}</em>折)</span>
						</p>
                    </span>
                  <div class="btn buy m-buy"><a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_blank"><em class="j-icon"></em><span>品牌</span></a></div>
</div>
</div>
</li> 
</volist>                
</ul>
<div class="page">
<em></em>
<div>{$page}
</div>
</div>
<include file="public:hotbrand" />
<div class="clear"></div>
</div>
<include file="public:footer" />
</body>
</html>