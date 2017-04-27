<!doctype html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<load href="__STATIC__/red/css/article.css" />
<load href="__STATIC__/red/css/help.css" />
</head>
<body>
<include file="public:header" />
<div class="main clear mb20 w1200">
<div class="jiu_help w1200">
<div style="position: absolute;">
			<div id="lr_float" style="position: static; top: -205px;">
				<div class="left_bg"></div>
				<div class="help_title fl">
					<dl><dt>帮助中心</dt>
					<dd><a href="{:U('help/read',array('id'=>1))}" target="_blank" rel="nofollow">关于我们</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>3))}" target="_blank">联系我们</a></dd>
					<dd><a href="{:U('bao/index')}" target="_blank">商家报名</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>5))}" target="_blank">免责声明</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>2))}" target="_blank">广告合作</a></dd>
					<dd><a href="{:U('help/read',array('id'=>6))}" target="_blank">常见问题</a></dd>
					<dd><a href="{:U('help/xiaobao')}" target="_blank">消费者保障</a></dd>
                    <dd><a href="{:U('help/qianggou')}" target="_blank">抢购小技巧</a></dd>
                    <dd><a href="{:U('article/index')}" target="_blank">文章中心</a></dd> 
					<dd class="cur"><a href="{:U('help/links')}" target="_blank" >友情链接</a></dd> 
					</dl>
				</div>
			</div>
		</div>
	<div class="about w1200">
		<div class="help_content fr">
						<div class="help_txt">
				<div class="help_list">
					<h3 class="mb10" style="border-left:#6DB110 solid 6px;padding:10px">友情链接:(联系QQ：{:C('ftx_qq')})</h3>
					 <dl style="line-height:50px;">
					 <ftx:link type="lists" status="1">
                     <volist name="data" id="val">
                    <a href="{$val.url}" target="_blank" style="padding:10px">{$val.name}</a>
                    </volist>
                    </ftx:link>
					<dl>
				</div>
			</div>
			</div>
		
	</div>
	</div>
</div>
<include file="public:footer" />
</body>
</html>