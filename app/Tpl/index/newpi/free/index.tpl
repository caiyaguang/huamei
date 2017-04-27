<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel="stylesheet" type="text/css" href="__STATIC__/css/zhe.css"/>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/good.css" />
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
	</div>
<div style="height:980px;height:300px;width:100%;background:#FFF;">
 <div style="margin:0 auto; width:980px">
 <a target="_blank" href="">
   <img src="__STATIC__/image/haibao12.jpg">
   </a>
 </div>
  
</div>
<div class="main {:C('ftx_site_width')} clear">


	
	<div class="clear"></div> 
	

<div style="width: 958px; margin: 9px auto; font-size: 16px; height: 41px; line-height: 48px;">
		<div style="height: 49px; linie-height: 55px; background: url(__STATIC__/image/biao1.png) no-repeat left center; font-family: '微软雅黑', '宋体'; color: #A3370F; font-size: 16px; padding-left: 29px;">
			免费试用</div>
	</div>
	<div class="shiyong">
		<ul>
		<volist name="items_list" id="v">
			<li style="margin-left:9px;">
				<a target="_blank" href="{:U('free/detail',array('id'=>$v['id']))}">
					<img src="{$v.pic_url}" width="293" height="194" style="display:inline;"/>
					<div style="overflow:hidden;width:290px;height:40px;line-height:40px;margin-top:-5px;">
						<span>
							<img src="__STATIC__/tupian/baoyou.jpg"/>
						</span>
						{$v.title}
					</div>
				</a>
				<div class="price">
					<p class="jiage">下单价：<span>￥{$v.price}</span></p>
					<p class="fenshu">剩余份数：<span>{$v.remain}</span>&nbsp;份</p>
					<div class="clear"></div>
				</div>
				<div class="qianggou">
					<p></p>
					<div style="width:170px;float:left;">
						优惠价：<span>{$v.coupon_price}元</span>
					</div>
					<div style="width:75px;float:right;margin-right:10px;">
						<a target="_blank" href="{:U('free/detail',array('id'=>$v['id']))}">
							<img src="__STATIC__/tupian/<if condition="$v.class eq 'wait'">wait.png<elseif condition="$v.class eq 'qiangou'"/>qiangou.jpg<else/>113806.png</if>"/>
						</a>
					</div>
					<p></p>
				</div>
			</li>
		</volist>	
		</ul>
	</div>

</div>
		<div class="page_div {:C('ftx_site_width')}">

			<div class="list_page">
				{$zpage}
			</div>
		</div>
		



<include file="public:footer" />
</body>
</html>