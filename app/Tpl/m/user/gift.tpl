<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link rel=stylesheet type=text/css href="__STATIC__/jwap/css/user.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>

<div class="main">
<include file="public:header" />
<include file='public:top'/>
<div class="app">
<header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="{:C('ftx_header_html')}" class="btn btn-left btn-back" title="返回首页"></a></span>
                    <span id="t-index">我兑换的商品</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>                    
                </div>
            </header>
	<div class="user_main">		
		<div class="right">
			<div class="menu-tag">
				<ul>
					<li ><a href="{:U('user/mingxi')}">收入明细
					<li class="active"><a href="{:U('user/gift')}">兑换明细</a></li>
				</ul>
			</div>
			 
			<div class="log-table">
			<notempty name="order_list">
				<table border="0" cellspacing="0">
					<tr class="thead">
						<th>ID</th>
						<th class="title">{:L('order_item')}</th>
						<th class="foursize">{:L('order_score')}</th>
						<th class="foursize">{:L('order_time')}</th>
						<th class="foursize">物流公司</th>
						<th class="foursize">运单号码</th>
						<th class="last">{:L('order_status')}</th>
					</tr>
					
					<volist name="order_list" id="val" mod="2">
					<tr  <eq name="mod" value="0">class="tr"</eq> <eq name="mod" value="1">class="tr-one"</eq>>
						<td>{$val.id}</td>
						<td><a href="{:U('gift/detail', array('id'=>$val['item_id']))}" target="_self">{$val.item_name}</a></td>
						<td><if condition="$val['order_score'] gt 0">{$val.order_score}<else/>{$val.order_score}</if></td>
						<td>{$val.add_time|frienddate}</td>
						<td>{$val.ems_name}</td>
						<td>{$val.ems_id}</td>
						<td class="last"><if condition="$val['status'] eq 2">订单异常<elseif condition="$val['status'] eq 1" />已发货<else/>订单审核中</if></td>
					</tr>
					</volist>
					
				</table>
				  <else/>
					
							<div class="find_gift">
								<p>您还没有<a href="{:U('gift/index')}" target="_self">兑换礼品</a>哦，赶快兑取你喜欢的礼品吧~</p>
							</div>
						
					</notempty>
				<div class="page page3">
					<div class="pageNav">{$page}</div>
				</div>
			</div>

		</div>

	</div>
	<include file="public:footer" />
</div>
</div>

<include file='public:footjs'/>

</body>
</html>