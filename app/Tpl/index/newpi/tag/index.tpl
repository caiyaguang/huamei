<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/tags.css" />
</head>
<body>
<include file="public:header" />
<div class="main w1200">
<div class="wide-main tags-wide-main clearfix">
<div class="page">
<div class="tags-main">
<div class="pbutton show-tags clearfix">
<volist name="items_list" id="item" key="i">   
<a href="{:U('tag/view',array('k'=>$item['ename']))}" title="{$item.name}" target="_blank">{$item.name}</a>
</volist>
</div>
</div>
</div>
</div>
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>
</div>
<include file="public:footer" />
</body>
</html>