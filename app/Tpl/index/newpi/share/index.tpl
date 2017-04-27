<!doctype html>
<html>
<head>
<include file="public:head" />
<load href="__STATIC__/ftxia/new/css/md-pagination.css" />
<load href="__STATIC__/ftxia/new/css/md-goodslist.css" />
<load href="__STATIC__/ftxia/new/css/md-public.css" />
<load href="__STATIC__/ftxia/new/css/pg-zone.css" />
</head>
<body>
<include file="public:header" />
<div class="main">
	<div class="piece jiu_goods">
		<div class="piece_box">
			<div class="jiu_info">
				<div class="jiu_bd jiu_top content_body fl">
					<div class="nav_con">
						<div class="top_nav">
							<ul>
								<li class="other_normal other_active"><a href="{:U('share/index')}">动态</a></li>
								<li class="other_normal "><a href="{:U('user/gift')}">我的礼品</a></li>
								<li class="other_normal "><a href="{:U('user/like')}">我的喜欢</a></li>
								<li class="other_normal "><a href="{:U('user/index')}">账号设置</a></li>
							</ul>
						</div>
					</div>
					<div class="content_left">
						<ul id="zone_tab" class="zone_tab clear">
							<li class="zt_f c"><a href="{:U('share/index')}">我发布的</a></li>
						</ul>

						<div id="talk_list_box" newshow="do">
							<ul class="t_l">
								<notempty name="list">
								<volist name="list" id="vol">
								<li class="t_f">
									<div class="time">
										<span class="t">{$vol.add_time|frienddate}</span>
									</div>
									<div class="hd">
										<a href="#" target="_blank">
										<img alt="{$visitor['username']}" src="{:avatar($visitor['id'], 48)}" class="uinfo avt"></a>
									</div>
									<div class="tk">
										<div class="inf">
											<a target="_blank" class="username uinfo" href="#">{$visitor['username']}</a>            </div>
										<p class="text">
										{$vol.info}
										</p>
										<div class="pic">
											<div class="pic_s">
												<a target="_blank" href="{:U('jump/index',array('iid'=>$vol['num_iid']))}"><img height="100px" class="p_s_img" src="{$vol.pic_url}"></a>
												<p class="nowrap"><a class="blu" target="_blank" href="{:U('jump/index',array('iid'=>$vol['num_iid']))}">{$vol.title}</a></p>
												<p>现价：<span>{$vol.coupon_price}元</span>　<span>原价：<del>{$vol.price}</del> 元</span></p>
												<a target="_blank" href="{:U('jump/index',array('iid'=>$vol['num_iid']))}" class="go_buy">购买链接</a>
											</div>
										</div>
									</div>
								</li>
								</volist>
								</notempty>
							</ul>
							<div class="page"><div class="pageNav">{$page}</div></div>
						</div>
						


					</div>
				</div>
				<div class="jiu_right fr">
					<include file="public:exchange_info" />
				</div>
			</div>
		</div>
	</div>
</div>

<!--主部结束-->
<include file="public:footer" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script src="__STATIC__/js/setting.js"></script>
<script src="__STATIC__/js/minicity.js"></script>
<script>
$(function(){
    $.minicity( "#J_province", "#J_city", "<?php echo $info['province'];?>", "<?php echo $info['city'];?>");
});
</script>
</body>
</html>