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
        <span id="t-index">{$cinfo.name} <i><if condition="$index_info['sex'] eq '1'"> - 男</if> <if condition="$index_info['sex'] eq '2'"> - 女</if></i></span>
        <span id="t-user"><a href="javascript:;" class="choice">筛选<em class="cur"></em></a></span>
        </div>
        <dl class="screen-box">
            <dt>性别：</dt>
			<empty name="cid">
            <dd>
            <a href="{:U('index/cate',array('sex'=>'0'))}" >全部
			<img <if condition="$index_info['sex'] eq '0'">style="display:block;" </if> src="http://s.juancdn.com/jpwebapp/images/icon/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('fushi/index',array('sex'=>'1'))}" >男<img  <if condition="$index_info['sex'] eq '1'">style="display:block;" </if>src="http://s.juancdn.com/jpwebapp/images/icon/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('fushi/index',array('sex'=>'2'))}" >女<img  <if condition="$index_info['sex'] eq '2'">style="display:block;" </if>src="http://s.juancdn.com/jpwebapp/images/icon/selected.png">
            </a>
            </dd>
			<else />
			<dd>
            <a href="{:U('fushi/index',array('cid'=>$cid,'sex'=>'0'))}" >全部
			<img <if condition="$index_info['sex'] eq '0'">style="display:block;" </if> src="http://s.juancdn.com/jpwebapp/images/icon/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('fushi/index',array('cid'=>$cid,'sex'=>'1'))}" >男<img  <if condition="$index_info['sex'] eq '1'">style="display:block;" </if>src="http://s.juancdn.com/jpwebapp/images/icon/selected.png">
            </a>
            </dd>
            <dd>
            <a href="{:U('fushi/index',array('cid'=>$cid,'sex'=>'2'))}" >女<img  <if condition="$index_info['sex'] eq '2'">style="display:block;" </if>src="http://s.juancdn.com/jpwebapp/images/icon/selected.png">
            </a>
            </dd>
			</empty>
            
            <dd class="pack_up"><a href="javascript:void(0);"><img src="http://s.juancdn.com/jpwebapp/images/icon/pack_up.png"></a></dd>
        </dl>
    </header>
        <div class="next-nav">
        <div class="box">
        <ul>		
		<li><a href="{:U('fushi/index')}" <if condition="$cid eq '1'">class="active"</if>>全部</a></li>
		<volist name="cate_data" id="bcate">		
		<if condition="$bcate['pid'] eq 1">	
		<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}" <if condition="($cid eq $bcate['id']) OR ($pid eq $bcate['id'])">class="active"</if>>{$bcate.name}</a></li>
		</if>
		</volist>                            
        </ul>
        </div>
        </div>
		    <if condition="($pid eq 9) OR ($cid eq 9)">
	        <div class="small-nav">
			<volist name="cate_data" id="item">		
		    <if condition="$item['pid'] eq 9">
			<a href="{:U('index/cate', array('cid'=>$item['id']))}" <if condition="$cid eq $item['id']">class="active"</if>>{$item.name}</a>
			</if>
		    </volist>                   
            </div>
            </if>
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