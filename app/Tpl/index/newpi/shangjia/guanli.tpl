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
		<div class="shang_shop">商品管理</div>
		
		<div style="margin:10px 10px 10px 20px;">
			<table class="tupian3" width="750" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	 	 	 	
						<td class="tdg" style="width:170px;margin:10px 0" align="center">商品标题</td>
						<td class="tdg" align="center">状态</td>
						<td class="tdg" align="center">时间 </td>
						<td class="tdg" align="center">下单价</td>
						<td class="tdg" align="center">折扣</td>
						<td class="tdg" align="center">份数</td>
						<td class="tdg" align="center">报名人数</td>
						<td class="tdg" align="center">操作</td>
					</tr>

					<tr>
						<td class="td_border" style="padding:5px;width:170px;" align="center">
							<a target="_blank" href="http://mian.youhuishe.com/mian-14405598.html">
								<div style="width:98px;height:30px;line-height:30px;overflow:hidden">超级domdom</div>
								<img src="__STATIC__/tupian/2014110709544077654600.jpg" height="70" width="70">
							</a>
						</td>
						<td class="td_border" align="center">待付款</td>
						<td class="td_border" style="width:120px" align="center">2014-11-12 22:01:36 </td>
						<td class="td_border" align="center">26.50</td>
						<td class="td_border" align="center">0.0</td>
						<td class="td_border" align="center">999</td>
						<td class="td_border" align="center">0</td>
						<td class="td_borders" style="width:100px;padding:5px" align="center">  
							<span class="tupian4" style="display:block;" onclick="">支付费用</span>						 
							<a class="tupian4" style="text-decoration:none;" href="http://mian.youhuishe.com/shang/editshop.php?id=14405598">编辑活动</a>						
							<span class="tupian4" onclick="delcfm(14405598,1)" style="display:block;" href="?id=14405598">撤销活动</span>
						</td>
					</tr>
 
					<tr>
						<td colspan="8" class="td_bo">
							<div class="page_now" style="background:#FFF;position:relative;width:475px; margin:0px auto;">
								<div>
									<center>
										<a href="http://mian.youhuishe.com/shang/item.php?d_tai=&amp;currentPage=1" target="_self">首页</a>
										<a style="background:#DCDCDC;">&nbsp;1&nbsp;</a>
										<a href="http://mian.youhuishe.com/shang/item.php?d_tai=&amp;currentPage=1" target="_self">尾页</a>
									</center>
								</div>		   
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<div style="clear: both;"></div>
</div>

 



<include file="public:footer" />
</body>
</html>