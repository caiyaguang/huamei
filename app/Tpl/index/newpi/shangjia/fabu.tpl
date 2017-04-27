<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel="stylesheet" type="text/css" href="__STATIC__/css/zhe.css"/>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/good.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/shang.css" />
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
</head>
<body>
<include file="public:header" />


<div class="jiu-nav-main">
	<div class="jiu-nav {:C('ftx_site_width')}">
	
		<div class="nav-item fl">
			<div class="item-list">
				<ul>
				<li><a href="{:C('ftx_site_url')}" <empty name="cid"> class="active"</empty>>全部</a></li>
				<?php  $cdi=0; ?>
				<volist name="cate_data" id="bcate">
					<if condition="($bcate['spid'] eq 0) AND ($cdi lt 9)">
					<?php $cdi++; ?>
					<li><a <if condition="$spid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
					</if>
				</volist>
				</ul>
			</div>
		</div>	
		<div class="nav-other fl">
			<ul>
				<li><a href="{:U('xinpin/index')}" ><i class="today"></i><span>今日新品</span></a></li>
				<li><a href="{:U('yugao/index')}" ><i class="tw"></i><span>明日预告</span></a></li>
			</ul>
		</div>
		<div class="n_h">
			<span>排序</span>
			<a href="{:U('index/index')}"  class=" <if condition="$index_info['sort'] eq 'default'"> active </if> ">默认</a>
			<a href="{:U('index/index',array('sort'=>'new'))}" class=" <if condition="$index_info['sort'] eq 'new'"> active </if> ">最新</a>
			<a href="{:U('index/index',array('sort'=>'hot'))}" class=" <if condition="$index_info['sort'] eq 'hot'"> active </if> ">最热</a>
		</div>

	</div>
</div>

<div class="shang_m">
	<div class="shang_ml">
		<div class="shang_mla">
			<p>
				<a href=""><img src="__STATIC__/tupian/seller_logo.jpg"  height="100" width="160"></a>
			</p>
		</div>
		<div style="height: 1px; border: 1px solid #DCDCDC"></div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">活动管理</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('shangjia/fabu')}" style="text-decoration:none;"> 发布商品</a></div>
			<div class="shang_mld"><a href="{:U('shangjia/guanli')}" style="text-decoration:none;"> 管理活动</a></div>
		</div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">客户服务</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('shangjia/shensu2')}" style="text-decoration:none;"> 申诉记录</a></div>
		</div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">我的钱包</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('')}" style="text-decoration:none;"> 余额查询</a></div>
			<div class="shang_mld"><a href="{:U('')}" style="text-decoration:none;">提现账号</a></div>
		</div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">安全中心</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a style="color:#2a9ae9;text-decoration:none;" href="{:U('')}">绑定邮箱</a></div>
			<div class="shang_mld"><a style="color:#2a9ae9;text-decoration:none;" href="{:U('')}">修改密码</a></div>
		</div>
	</div>
	
	<div class="shang_mr">
	
		<div class="shang_shop">
			<div style="float:left">发布商品</div>  
			<div style="clear:both"></div>
		</div>
		
		<div class="shang_shops">
			<form id="myForm" target="_self" name="frmm" action="addshop.php" method="post" enctype="multipart/form-data" onsubmit="return tijiao()">
				<table>
					<tbody>
					<tr>
						<td class="td">商品来源:</td>
						<td>&nbsp;&nbsp;<input name="ismall" value="0" type="radio">：淘宝&nbsp;&nbsp;
						<input name="ismall" value="1" type="radio">：天猫&nbsp;&nbsp; <input name="ismall" value="2" type="radio">：京东&nbsp;&nbsp; <input name="ismall" value="3" type="radio">：其它&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td class="td">商品标题:</td>
						<td><input class="texl" name="title" type="text"></td>
					</tr>
					<tr>
						<td class="td">下单地址:</td>
						<td><input class="texl" name="detail_url" type="text"><span style="color:red;padding-left:10px;">请填写:http://www.taobao.com</span></td>
					</tr>
					<tr>
						<td class="td">产品类型:</td>
						<td>
							<select name="cid">
								<option value="0" selected="selected">请选择</option>
								<option value="1">女装</option>
								<option value="2">男装</option>
								<option value="3">内衣</option>
								<option value="4">鞋包</option>
								<option value="5">数码</option>
								<option value="6">家电</option>
								<option value="7">家纺</option>
								<option value="8">家居</option>
								<option value="9">母婴</option>
								<option value="10">食品</option>
								<option value="11">配饰</option>
								<option value="12">美妆</option>
								<option value="13">其它</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="td">发布份数:</td>
						<td><input class="texls" name="tatol" type="text">&nbsp;&nbsp;份&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td class="td">下单价:</td>
						<td><input name="origin_price" class="texls" type="text">&nbsp;&nbsp;元&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td class="td">优惠价:</td>
						<td><input class="texls" onblur="zhekou()" value="0.00" name="now_price" type="text"></td>
					</tr>
					<tr>
						<td class="td">折扣:</td>
						<td><span id="jia" style="color: red; font-size: 20px;">0.00</span>&nbsp;&nbsp;
						折 <input name="discounts" value="" class="texls" type="hidden"></td>
					</tr>
					<tr>
						<td class="td">商品时间:</td>
						<td><input onblur="zhetian()" onfocus="qutian()" class="texls" name="days" type="text">&nbsp;&nbsp;天 <span id="zhetian" style="color: red">产品最长时间为14天</span></td>
					</tr>
					<tr>
						<td class="td"></td>
						<td><input class="tupian10" value="" name="url" type="submit"></td>
					</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	
	<div style="clear: both;"></div>
</div>

 



<include file="public:footer" />
</body>
</html>