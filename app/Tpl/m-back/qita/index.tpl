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
    <header class="head" id="head">
        <div class="fixtop">
        <span id="t-find" class="classify"><a href="javascript:void(0);" class="btn btn-left btn-type"></a></span>
        <span id="t-index">{$cinfo.name}</span>        
        </div>        
    </header>
        <div class="next-nav">
        <div class="box">
        <ul>		
		<li><a href="{:U('qita/index')}" <if condition="$cid eq '4'">class="active"</if>>全部</a></li>
		<volist name="cate_data" id="bcate">		
		<if condition="$bcate['pid'] eq 4">	
		<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}" <if condition="($cid eq $bcate['id']) OR ($pid eq $bcate['id'])">class="active"</if>>{$bcate.name}</a></li>
		</if>
		</volist>                            
        </ul>
        </div>
        </div>		    
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