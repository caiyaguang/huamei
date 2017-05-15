<html>
<head>
<include file='public:head'/>
<link href="__STATIC__/jwap/css/pg-brand.css" rel="stylesheet" type="text/css" />
</head>
<body>
   
    <!-- 主体 -->

 
	<div class="main">
	<include file='public:brandheader'/>
    <include file='public:top'/>
		<div class="app">		
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span>
                    <span id="t-index">{$cinfo.name}</span>
                    <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                </div>
            </header>
                        <section id="goods" class="goods">
                        <div class="brand-list" id="goods_block">
						<volist name="items_list" id="val">
						<if condition="$val.pass eq 1">
						
                                    <div class="item">                
									<div class="title">                    
									<img src="{$val.logo}">                    
									<span>{$val.title}</span>                                    
									</div>                
									<a class="discount" href="{:U('brand/view',array('id'=>$val['id']))}"><em>去看看</em><br>共{$val.counts}款<i class="cur"></i></a>
									<ul class="goods-list clear">   
									<ftx:item type="brand" cid="$val['activityId']" num="2">
									<volist name="data" id="item" key="i" mod="2">
									<li>                        
									<a href="{:U('brand/view',array('id'=>$val['id']))}" class="goods-a">                            
									<img class="lazy" src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}">                            
									<div class="mask-box"></div>                            
									<div class="list-price buy ">                                
									<span class="price-new"><i>￥</i>{$item.coupon_price}</span>                                
									<i class="del">￥{$item.price}</i>                            
									</div>                        
									</a>                    
									</li> 
									</volist>
									</ftx:item>
									</ul>            
									</div> 
									</if>
									</volist>
						</div>
                        </section>
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