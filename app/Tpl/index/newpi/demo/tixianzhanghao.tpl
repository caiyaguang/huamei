<link rel=stylesheet type=text/css href="__STATIC__/red/css/shang.css" />
<!--List Start-->
<include file="public:head" />
<include file="public:header" />

<div class="shang_m">

	<div class="shang_ml">
	
		<div class="shang_mla">
			<p>
				<a href="http://mian.youhuishe.com/user/index.php?PHPSESSID=e895eb95590730bfaf4a6702052996b7"><img src="__STATIC__/tupian/avatar.gif" style="margin-left: 20px;"  height="120" width="120"></a>
			</p>
		</div>
		
		<div style="height: 1px; border: 1px solid #DCDCDC"></div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">订单管理</div>
		
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('demo/dingdan')}"> 我的订单</a></div>
		</div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">客户服务</div>
		
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('demo/shensu1')}"> 申诉记录</a></div>
		</div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">我的钱包</div>
		
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('demo/yuetixian1')}"> 余额提现</a></div>
			<div class="shang_mld"><a href="{:U('demo/tixianzhanghao')}">提现账号</a></div>
		</div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">安全中心</div>
		
		<div class="shang_mlcs">
		
			<div class="shang_mld"><a style="color: #2a9ae9" href="{:U('demo/yonghuyouxiang')}">绑定邮箱</a></div>
			
			<div class="shang_mld"><a style="color: #2a9ae9" href="{:U('demo/yonghumima')}">修改密码</a></div>

		</div>
		
	</div>

	<div class="shang_mr" style="border:1px solid #DCDCDC;background:#FFF">

		<div class="shang_621_top" style="height:90px;border-bottom:1px solid #dcdcdc;padding-top:22px;padding-left:63px">
			<div class="shang_621_top1 tupian6">
				<h1 style="font-size:16px;color:#999;padding:5px 0;">我的提现账号设置:</h1>
				<font style="color:#999">请绑定您的提现账户，用于提取您的优惠社资金！</font>
			</div>
		</div>

		<div class="yuguan" style="margin-top: 70px;border:0;height:333px;">
		
			<div style="float: left; width: 300px;  margin: 20px 10px; padding: 10px; ">
				<div style="padding:0px 15px 13px 11px;">账户类型：<img src="__STATIC__/tupian/zhu_626.jpg" align="absmiddle">
				</div>
				
				<div>
					<p style="height: 40px; line-height: 30px; font-size: 12px">收款人姓名：<span style="color: #e46820;" id="uidhui">张******</span></p>
					<p style="height: 30px; line-height: 30px; font-size: 12px">支付宝帐号：<span style="color: #e46820;" id="uidhuif">369******1@qq.com</span></p>

					<p style="text-align: right; height: 30px; line-height: 30px; margin-top: 50px;"><a href="http://mian.youhuishe.com/user/alipay_modify.php?id=40389">修改支付宝帐号&gt;&gt;</a></p>
			
					<div id="uidhuio" style="display: none">张海铭</div>
				</div>

			</div>

			<div class="yuguan" style="background: #eef3f9; padding: 10px; float: right; margin: 20px 0; display: none">

				<div id="ssss" style="height: 30px; line-height: 30px; font-size: 14px;">账户余额：0.00元</div>
				
				<div>
					<form action="" name="frm" method="post">
						<table width="400">
							<tbody>
								<tr>
									<td width="50%" align="right">提现金额</td>
									<td><input name="jine" style="height: 30px; width: 100px;" type="text"><span style="color: red"></span></td>
								</tr>
								<tr>
									<td align="right"></td>
									<td>单次提现金最高为5000</td>
								</tr>

								<tr>
									<td align="right">输入密码</td>
									<td><input name="yanzheng" style="height: 30px; width: 100px;" type="password"> <span class="mayan"></span></td>
								</tr>
								<tr>
									<td align="right"></td>
									<td>您绑定的支付宝号是：<span id="zhifuhao">369******1@qq.com</span></td>
								</tr>
								<tr>
									<td align="right"></td>
									<td><input type="submit"></td>
								</tr>
							</tbody>
						</table>
					</form>

					<div>Tips:您成功提交后，钱会三天内到达您的支付宝账户提现款统一由支付宝；125888qq.com打款。请注意查收！</div>

				</div>
				
			</div>
			
			<div style="clear: both"></div>
			
		</div>
	</div>

	<div style="clear: both;"></div>

</div>
	<include file="public:footer" />
<!--List End-->
