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
		<div class="c_b_menu">
			<ul>
                <li <if condition="$type eq 'all' "> class="cur"</if>><a href="{:U('goods/mygoods')}"><span>全部</span></a></li>
				<li <if condition="$type eq 'pass'"> class="cur"</if>><a href="{:U('goods/mygoods',array('type'=>pass))}"><span>通过审核</span></a></li>
				<li <if condition="$type eq 'wait'"> class="cur"</if>><a href="{:U('goods/mygoods',array('type'=>wait))}"><span>等待审核</span></a></li>
				<li <if condition="$type eq 'fail'"> class="cur"</if>><a href="{:U('goods/mygoods',array('type'=>fail))}"><span>未通过</span></a></li>
			</ul>
		</div>

		<div class="re_content sign_con">
			<div class="userjoin">
				<ul class="userjoin_show">
					<li class="userjoin_t">
						<span class="t_info">已报名宝贝</span>
						<span class="t_pay">原价</span>
						<span class="t_type">分类</span>
						<span class="t_time">时间</span>
						<span class="t_state">状态</span>
					</li>
 

					<notempty name="goods_list">
					<volist name="goods_list" id="val">

					<li re="1" id="d_82060">
						<div class="o_pic">        
						<a target="_blank" href="{:U('goods/view',array('id'=>$val['id']))}">
							<img src="{$val.pic_url}"  height="60" width="60">
						</a></div>
						<div class="o_name">       
						<a href="{:U('goods/view',array('id'=>$val['id']))}" target="_blank">{$val.title}</a>
						<p>库存：{$val.inventory}  报名价：<font style="font-size:12px;">{$val.coupon_price}</font></p></div>
						<div class="o_price"> <span>{$val.price}</span></div>
						<div class="o_type"><span>{$cate_list[$val['cate_id']]}</span></div>
						<div class="o_time">
								报名时间：<br> {$val.add_time|date="y-m-d",###}<br>
							<if condition="$val.pass eq 1">
								上架时间：<br> {$val.coupon_start_time|date="y-m-d",###}
							</if>
							</div>
						<div class="o_state"><if condition="$val.pass eq 1"><span>通过</span>
						<br><span class="opt"><span>修改</span>&nbsp;</span>
								<elseif condition="$val.pass eq 0" />
									<if condition="$val.status eq 'fail'"><span>未通过</span><br><span class="opt"><span><a href="{:U('goods/goods_edit',array('id'=>$val['id']))}">修改</a></span>&nbsp;</span><else/><span>审核中</span><br><span class="opt"><span>修改</span>&nbsp;</span></if>
								</if></div>
								<div class="check_fail">
								<span class="result">
									<if condition="$val.pass eq 1">
										提示：您报名的宝贝已通过审核
									<elseif condition="$val.pass eq 0" />
										<if condition="$val.status eq 'fail'">
											提示：您报名的宝贝未通过审核
										<else/>
											提示：您报名的宝贝正在审核中
										</if>
									</if>
								
												<a target="_blank" href="{:U('goods/view',array('id'=>$val['id']))}">查看详情&gt;&gt;</a>
								</span>
							</div>
					</li>
 
					</volist>
					 <div class="page"><div class="pageNav"> {$page_bar}</div></div> 
					<else/>
					<li class="no_goods"><div class="without_goods">您该状态下暂无任何信息哦，可以先到<a href="{:U('goods/goods_add')}">报名新宝贝</a>去报名~</div></li>
					</notempty>
					

                   </ul>
			</div> <!-- end of userjoin -->
            		</div> <!-- end of re_content -->
	</div> <!-- end of right_con -->
</div> <!-- end of contain -->
</div>
<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/ftxia/js/goods.js"></script>
</body>
</html>