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
			<div class="shang_mld"><a href="{:U('demo/fabu')}" style="text-decoration:none;"> 发布商品</a></div>
			<div class="shang_mld"><a href="{:U('demo/guanli')}" style="text-decoration:none;"> 管理活动</a></div>
		</div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">客户服务</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('demo/shensu2')}" style="text-decoration:none;"> 申诉记录</a></div>
		</div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">我的钱包</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('demo/yuechaxun')}" style="text-decoration:none;"> 余额查询</a></div>
			<div class="shang_mld"><a href="{:U('demo/tixianzhanghu')}" style="text-decoration:none;">提现账号</a></div>
		</div>
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">安全中心</div>
		<div class="shang_mlcs">
			<div class="shang_mld"><a style="color:#2a9ae9;text-decoration:none;" href="{:U('demo/shangjiayouxiang')}">绑定邮箱</a></div>
			<div class="shang_mld"><a style="color:#2a9ae9;text-decoration:none;" href="{:U('demo/shangjiamima')}">修改密码</a></div>
		</div>
	</div>
	
	<div class="shang_mr">
	        			 			 
			<div class="yuguan" style="background:#eef3f9;width:739px;margin-top:70px">
			
				<div>
					<img src="__STATIC__/tupian/tixian_ad.png">
				</div>
				
				<div style="float:left;width:350px;padding:20px;">
					<form method="post" action="tixian.php" style="border-right:1px dashed #dcdcdc">
						<input name="PHPSESSID" value="c43a49959e781c918e1a88bf50e111c0" type="hidden">
						<table>
							<tbody>
								<tr style="height:60px;">
									<td height="30px">
										<span class="ti_biao">
										收款人姓名：
										</span>
									</td>
									<td>
										<input name="ming" style="height:30px;width:100px;" type="text">
										<img src="__STATIC__/tupian/xiaoxingxing.png" align="absmiddle">
										<br>
										<span class="tian_biaox">
										为您的支付宝姓名：
										</span>
									</td>
								</tr>
								<tr style="height:60px;">
									<td>
										<span class="ti_biao">
										支付宝账号：
										</span>
									</td>
									<td>
										<input name="z_f" style="height:30px;width:171px;" type="text"><img src="__STATIC__/tupian/xiaoxingxing.png" align="absmiddle">
										<br>
										<span class="tian_biaox">
										请输入支付宝的邮箱，
										</span>
									</td>
								</tr>
								<tr style="height:50px;">
									<td align="right"><span class="ti_biao">输入密码：</span></td>
									<td>
										<input name="yanzheng" style="height:30px;width:120px;" type="password"><img src="__STATIC__/tupian/xiaoxingxing.png" align="absmiddle"> 优惠社密码  <span style="color:red"></span>
										<br>
									</td>
								</tr>
								<tr style="height:60px;">
								<td align="right"></td>
								<td><input value="立即绑定" class="tupian12" type="submit"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
				<div style="float:left;">
					<div style="color:red;width:300px;margin:94px 0  10px 45px;font-size:20px;color:#e46820;">
					开通中，敬请期待......
					</div>
				</div>
				<div style="clear:both"></div>			   
			</div>
		</div>

	
	<div style="clear: both;"></div>
</div>

 



<include file="public:footer" />
</body>
</html>