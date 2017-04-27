<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li ><a href="{:U('user/mingxi')}">收入明细
					<li class="active"><a href="{:U('user/gift')}">兑换明细</li></a>
				</ul>
			</div>
			 
			<div class="log-table">
				<table border="0" cellspacing="0">
					<tr class="thead">
						<th>ID</th>
						<th>{:L('order_item')}</th>
						<th>{:L('order_score')}</th>
						<th>{:L('order_time')}</th>
						<th>物流公司</th>
						<th>运单号码</th>
						<th class="last">{:L('order_status')}</th>
					</tr>
					<notempty name="order_list">
					<volist name="order_list" id="val" mod="2">
					<tr  <eq name="mod" value="0">class="tr"</eq> <eq name="mod" value="1">class="tr-one"</eq>>
						<td>{$val.id}</td>
						<td><a href="{:U('gift/detail', array('id'=>$val['item_id']))}" target="_blank">{$val.item_name}</a></td>
						<td><if condition="$val['order_score'] gt 0">{$val.order_score}<else/>{$val.order_score}</if></td>
						<td>{$val.add_time|frienddate}</td>
						<td>{$val.ems_name}</td>
						<td>{$val.ems_id}</td>
						<td><if condition="$val['status'] eq 2"><a href="{:U('user/msg',array('do'=>'send'))}" title="请联系客服">订单异常</a><elseif condition="$val['status'] eq 1" />已发货<else/>订单审核中</if></td>
					</tr>
					</volist>
					<else/>
					<tr>
						<td colspan="5">
							<div class="find_gift">
								<p>您还没有<a href="{:U('gift/index')}" target="_blank">兑换礼品</a>哦，赶快兑取你喜欢的礼品吧~</p>
							</div>
						</td>
					</tr>
					</notempty>
				</table>
				<div class="page page3">
					<div class="pageNav">{$page}</div>
				</div>
			</div>

		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
</body>
</html>