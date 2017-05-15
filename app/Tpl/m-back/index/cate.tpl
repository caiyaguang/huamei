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

    <header class="head" id="head">
        <div class="fixtop">
        <span id="t-find" class="classify"><a href="javascript:void(0);" class="btn btn-left btn-type"></a></span>
        <span id="t-index">{$cinfo.name}折扣 <i><if condition="$index_info['sex'] eq 'man'"> - 男</if> <if condition="$index_info['sex'] eq 'woman'"> - 女</if></i></span>
        <span id="t-user"><a href="javascript:;" class="choice">筛选<em class="cur"></em></a></span>
        </div>
        <dl class="screen-box">
            <dt>筛选方式：</dt>
			<dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'default'))}" title="默认排序" >默认
			<img <if condition="$index_info['sort'] eq 'default'">style="display:block;" </if> src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'new'))}" title="最新" >最新<img  <if condition="$index_info['sort'] eq 'new'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'hot'))}" title="最热">最热<img  <if condition="$index_info['sort'] eq 'hot'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'price'))}" title="价格">价格<img  <if condition="$index_info['sort'] eq 'price'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
             <dd>
            <a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'rate'))}" title="折扣">折扣<img  <if condition="$index_info['sort'] eq 'rate'">style="display:block;" </if>src="__STATIC__/jwap/images/selected.png">
            </a>
            </dd>
			
            
            <dd class="pack_up"><a href="javascript:void(0);"><img src="__STATIC__/jwap/images/pack_up.png"></a></dd>
        </dl>
    </header>
    <notempty name="subnav"> 
        <div class="next-nav">
        <div class="box">
        <ul>		
		<li><a href="{:U('index/cate', array('cid'=>$cinfo['pid']))}" <if condition="$cid eq $cinfo['pid']">class="active"</if>>全部</a></li>
		<volist name="subnav" id="bcate">		
		<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>
		</volist>                            
        </ul>
        </div>
        </div>
		   
</notempty>
        

<div id="goods">
<section class="goods" id="goods">
    <ul class="goods-list clear">
<include file='public:itemlist'/>	
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