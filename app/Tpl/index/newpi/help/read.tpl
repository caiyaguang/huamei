<!doctype html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<load href="__STATIC__/red/css/help.css" />
<load href="__STATIC__/red/js/help.js" />
</head>
<body>
<include file="public:header" />

	
	<div class="main mb20  clear">
	<div class="jiu_help ">
		<div style="position: absolute;">
			<div id="lr_float" style="position: static; top: -205px;">
				<div class="left_bg"></div>
				<div class="help_title fl">
					<dl>
						<dt>帮助中心</dt>
						<volist name="helps" id="vol">
							<dd <if condition="$vol.id eq $id"> class="cur" </if>><a href="{:U('help/read',array('id'=>$vol['id']))}">{$vol.title}</a></dd>
						</volist>
					</dl>
				</div>
			</div>
		</div>
		<div class="help_content fr">
						<div class="help_txt">
				<div class="help_list">
					<h3 class="mb10">{$help.title}</h3>
					 {$help.info}
				</div>
			</div>
					</div>
	</div>
</div>
	
<include file="public:footer" />
</body>
</html>