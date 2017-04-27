<!doctype html>
<html>
<head>
<include file="public:head" />
<css file="__STATIC__/ftxia/css/goods.css" />
<css file="__STATIC__/ftxia/css/pg-register.css" />
</head>
<body>
<include file="public:header" />

<div class="mains">
<div class="contain register_con">
	<div class="left_con fl">
	<ul class="left_nav">
			<li><a href="{:U('goods/goods_add')}">报名新宝贝</a></li>
			<li class="cur">
				<a href="{:U('goods/mygoods')}">已报名宝贝</a>
			</li>
			</ul>
</div>	

	<div class="right_con fr">
		<div class="re_content">
			
			<h3 class="title">
			<if condition="$item.pass eq 1">已报名宝贝
								<elseif condition="$item.pass eq 0" />
									<if condition="$item.status eq 'fail'">报名宝贝未通过<else/>报名宝贝审核中</if>
								</if>
			　</h3>
			<ul>
					<li><label>宝贝详情：</label><span class="modify"><a style="font-size:12px;" target="_blank" href="{:U('item/index',array('id'=>$item['id']))}">{$item.title}</a></span>
						<div class="goods-img">
							<a target="_blank" href="http://item.taobao.com/item.htm?id={$item.num_iid}">
								<img src="{$item.pic_url}" >
							</a>
						</div></li>
					<li><label>报名价：</label><span class="modify">{$item.coupon_price}元</span></li>
					<li><label>宝贝库存：</label><span class="modify">{$item.inventory}件</span></li>

					<if condition="$item.pass eq 1">
						<li id="wait" name="wait"><label>待办事件：</label><div class="charge-box"><font color="red">宝贝活动正常结束当天24点后即可恢复正常售价，并且3个月内价格不允许低于此次活动.</font><br /></div></li>
					<elseif condition="$item.pass eq 0" />
						<if condition="$item.status eq 'fail'">
						<li><label>未通过理由：</label><div class="modify"><span class="tips-red">{$item.fail_reason}<br /></span></div></li>
						<else/><li><label>报名审核中：</label><div class="modify"><span class="tips-red">请等待报名结果</span></div></li>	
						</if>
						 
					</if>


					
					<li><label></label><a class="smt submit" href="{:U('goods/mygoods')}" id="smt">返 回</a></li>
			</ul>
         </div> <!-- end of re_content -->
	</div> <!-- end of right_con -->
</div> <!-- end of contain -->
</div>
<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/ftxia/js/goods.js"></script>
</body>
</html>