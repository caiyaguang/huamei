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
body{background-color:#ff234b;}
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
<div  style="background:url(&#39;http://img02.taobaocdn.com/imgextra/i2/1074509866/TB2EZ9xbFXXXXarXpXXXXXXXXXX_!!1074509866-0-jianzhan.jpg&#39;) center;height:300px;"></div>

<div class="main w1200">

<include file="public:itemlist" /> 
</div>
<include file="public:footer" />
</body>
</html>