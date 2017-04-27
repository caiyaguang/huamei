<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/tehui/css/tehui.css"/>
<link rel="stylesheet" type="text/css" href="__STATIC__/newpi/css/que.css"/>
<script type="text/javascript" src="__STATIC__/newpi/js/que.js"></script>
</head>
<body>
<include file="public:header" />
<div id="fnav">
<div class="nav-s">
<div class="inner clearfix">
<div class="nav-left">
<span><a href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_logo')}" height="35px" alt="{:C('ftx_site_name')}"></a></span>
<a <if condition="$qiao['sort'] eq 'all'">class='active'</if> href="{:U('tehui/index',array('sort'=>'all'))}" >全部热卖</a>
<a <if condition="$qiao['sort'] eq 'new'">class='active'</if> href="{:U('tehui/index',array('sort'=>'new'))}" >最新开抢</a>
<a <if condition="$qiao['sort'] eq 'hot'">class='active'</if> href="{:U('tehui/index',array('sort'=>'hot'))}" >最受欢迎</a>
<a <if condition="$qiao['sort'] eq 'price'">class='active'</if> href="{:U('tehui/index',array('sort'=>'price'))}" >最低价格</a>
<a <if condition="$qiao['sort'] eq '50'">class='active'</if> href="{:U('tehui/index',array('sort'=>'50'))}" >50以下</a>
</div>
<div class="right-search">
<form name="search" action="{:C('ftx_site_url')}" method="get" id="search">
<input type="hidden" name="m" value="tehui">
<input type="hidden" name="a" value="index">
<span class="search-area fl">
<input name="k" id="k" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="输入关键词搜索你要买的商品..." value="输入关键词搜索你要买的商品..." class="txts" />
</span>
<input type="submit" value="搜索" class="sobtn fr">
</form>            
</div>
</div>
</div>
</div>
<div class="main w1200">      
 <div class="main pr mt25 clear">
 <div class="easybuy-list clearfix">
        <div class="easybuy-list-inner clearfix">
		 <volist name="hot_list" id="item" key="i" mod="4">
                    <li>
					<a target="_blank" href="{:U('tehui/view',array('id'=>$item['id']))}" title="{$item.title}">
					<div class="cpnt_center_img">
					<img src="{$item.pic_url}_290x290.jpg" alt="全城特卖">
					</div>
					<div class="title_line">
					<span>{$item.title}</span>
					<if condition="$item.type eq 1"><i class="tmall_true"></i></if>
					<if condition="$item.ems eq 1"><i class="postfree_true">包邮</i></if>
					</div>
					<div class="price_line">
					<div class="dis_price"><span>¥</span><em>{$item.oneprice}</em>.{$item.twoprice}</div>
					<div class="ori_price show_true"><span>¥</span>{$item.price}</div><div class="sold">
					<span></span>月销量{$item.volume}</div>
					</div>
					</a>
					</li>
				</volist> 
        </div>
       
    </div>
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>
</div>
</div>
<include file="public:footer" />
</body>
</html>