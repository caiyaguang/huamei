<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />

</head>
<body>
<include file="public:header" />
<notempty name="tag_list"> 
<style  type="text/css">
body{background-color:#F1E0E8;}
</style>
<div class="jiu-nav-main ">
    <div class="subNav">
        <ul>            
			<volist name="tag_list" id="bcate">	
					<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('jiu/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i>
				</volist>
        </ul>
    </div>
</div>
</notempty>
<div  style="background:url(&#39;http://d03.res.meilishuo.net/img/_o/95/60/8ad181d37f5cd1736f9e5342445c_2000_340.ch.jpg&#39;) center;height:300px;"></div>

<div class="main w1200">

<include file="public:meilishuolist" /> 
</div>
<include file="public:footer" />
</body>
</html>