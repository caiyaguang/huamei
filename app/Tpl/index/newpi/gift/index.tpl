<!doctype html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-jd-store.css" />
</head>
<body>
<include file="public:header" />

<div class="jiu-nav-main ">
    <div class="subNav">
        <ul>
            <li><a href="{:U('gift/index')}" <if condition="$cid eq ''">class="active"</if>>热门兑换</a></li>
			<volist name="cate_list" id="cate">
					<li><a href="{:U('gift/cate',array('cid'=>$cate['id']))}" title="{$cate.name}" <if condition="$cid eq $cate['id']">class="active"</if>>{$cate.name}</a></li>
					</volist>
           

        </ul>
    </div>
</div>

<div class="main {:C('ftx_site_width')} clear">
		
	<div class="huan-list clear">
		<ul class="goods-list {:C('ftx_site_wc')} clear">
		<volist name="item_list" id="item" mod="4">
			<li class="hover" style="height:430px">
            <div class="list-good buy">
                <div class="good-pic">
                        <a target="_blank" href="{:U('gift/detail', array('id'=>$item['id']))}">
                            <img width="310px" height="310px" style="display: inline;" class="lazy" src="{:attach(str_replace('_s.'.array_pop(explode('.', $item['img'])), '_b.'.array_pop(explode('.', $item['img'])), $item['img']), 'score_item')}" alt="{$item.title}">
                        </a>

                </div>
                <h5 class="good-title">
                    <a target="_blank" href="{:U('gift/detail', array('id'=>$item['id']))}">{$item.title}</a>
                </h5>
                <div class="title-tips">
                    <span class="fl">价值：<em class="old-price">{$item.price}元</em></span>
                    <span class="fr">份数：<em class=" jd-num01">{$item.stock}</em></span>
                </div>
                <div class="good-price clear">
                    <span class="price-current">{$item.score}<em class="unit">积分</em></span>
                    <div class="btn buy"><a target="_blank" href="{:U('gift/detail', array('id'=>$item['id']))}">
                        <span>我要兑换</span>
                    </a></div>
                </div>
                <div class="pic-des">
                    <div class="des-state">
                        <span class="state-time fl">开始：{$item.start_time|date="Y-m-d",###}</span>
                    </div>
                </div>
                            </div>

        </li>
		</volist>
		</ul>
		<div class="clear"></div>
	</div>
	<div class="page">
		<div class="pageNav">{$page_bar}</div>
	</div>
</div>


 
 
<include file="public:footer" />
</body>
</html>
