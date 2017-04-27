<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
</head>
<body>
<include file="public:header" />
<empty name="items_list">
<div class="advance-nav">
        <ul class="fl">
		<notempty name="tag_list"> 
            <volist name="tag_list" id="bcate">	
					<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('yugao/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i>
				</volist>
				</notempty>
        </ul>
        <div class="tips fr">
                            <em class="icon-tips"></em>每天 <em class="time">16:00</em> 准时上新哦!
                    </div>
    </div>
<div class="main pr mt25 clear">
                                    <div class="content">
                    <div class="main_notice">
                        <a class="go-zk" href="{:U('index/index')}"></a>
                        <a class="go-brand" href="{:U('brand/index')}"></a>
                    </div>
                </div>
                       </div>

<else />
<div class="advance-nav">
        <ul class="fl">
		<notempty name="tag_list"> 
            <volist name="tag_list" id="bcate">	
					<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('yugao/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i>
				</volist>
				</notempty>
        </ul>
        <div class="tips fr">
                            <em class="icon-tips"></em>每天 <em class="time">16:00</em> 准时上新哦!
                    </div>
    </div>
<div class="main w1200">
<include file="public:itemlist" /> 
</div>
</empty>
<include file="public:footer" />
</body>
</html>