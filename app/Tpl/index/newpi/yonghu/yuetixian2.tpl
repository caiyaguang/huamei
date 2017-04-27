<link rel=stylesheet type=text/css href="__STATIC__/red/css/shang.css" />
<!--List Start-->
<include file="public:head" />
<include file="public:header" />
<style>
.right{float:right;width:217px;overflow:hidden;margin:10px 0;background:#fff;padding:20px 5px;}
#demoTop {background: #FFF;overflow:hidden;height: 350px;width: 200px;margin:0 auto;}
#demoTop .indemo {float: left;width: 200px;}
#demo3 {float: left;}
#demo4 {float: left;}
.zjyh{height:21px;margin:8px 0px 3px 6px;*height:31px;}
.zjyh_l{float:left}
.zjyh_r{float:left;width:90px;background:url(i/zjyd.jpg) repeat-x left top;height:21px;}
.reda{height:30px;line-height:30px; width:200px;overflow:hidden;}
.redaa{background:#f9b8d1;height:30px;line-height:30px; width:200px;overflow:hidden;}
</style>
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
			<div class="shang_mld"><a href="{:U('yonghu/dingdan')}"> 我的订单</a></div>
		</div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">客户服务</div>
		
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('yonghu/shensu1')}"> 申诉记录</a></div>
		</div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">我的钱包</div>
		
		<div class="shang_mlcs">
			<div class="shang_mld"><a href="{:U('yonghu/yuetixian1')}"> 余额提现</a></div>
			<div class="shang_mld"><a href="{:U('yonghu/tixianzhanghao')}">提现账号</a></div>
		</div>
		
		<div class="shang_mlb"><img src="__STATIC__/tupian/bangding_jian.png" align="absmiddle">安全中心</div>
		
		<div class="shang_mlcs">
		
			<div class="shang_mld"><a style="color: #2a9ae9" href="{:U('yonghu/youxiang')}">绑定邮箱</a></div>
			
			<div class="shang_mld"><a style="color: #2a9ae9" href="{:U('yonghu/mima')}">修改密码</a></div>

		</div>
		
	</div>



	<div class="shang_mr" style="border:1px solid #DCDCDC;background:#FFF">

		<div class="shang_621_top" style="height:90px;border-bottom:1px solid #dcdcdc;padding-top:22px;padding-left:63px">
			<div class="shang_621_top1 tupian6" >
				<h1 style="font-size:16px;color:#999;padding:5px 0;">我的优惠社提现:</h1>
				<font style="color:#999">由于每天提现用户超过2万，因此平台限制每天提现两次，三个工作日到账。</font>
			</div>
		  
		</div>

		<div style="padding:19px 0;">

			<div style="float:left;width:420px;">
			<div style="padding:0px 15px 13px 70px;">用户余额:<span style="color:#fb7804;padding:0 27px;font-size:18px">0.00元</span>
			</div>
	   
			<form action="" name="frm" method="post">
				<table width="400" style="font-size:12px;">
					<tbody>
					<tr>
						<td width="30%" align="right"><span class="ti_biao" style="font-size:12px;">提现金额:</span></td>
						<td style="padding-left: 20px;"><input name="jine" style="height: 30px; width: 110px;" type="text"> <span class="ti_biao">元 </span><img src="__STATIC__/tupian/xiaoxingxing.png" align="absmiddle"><span style="color: red"></span></td>
					</tr>
					<tr>
						<td align="right"></td>
						<td style="padding-left: 20px; height: 40px;">单次提现金最高为5000</td>
					</tr>

					<tr>
						<td align="right"><span class="ti_biao" style="font-size:12px;">输入密码:</span></td>
						<td style="padding-left: 20px;"><input name="yanzheng" style="height: 30px; width: 100px;" type="password"> <span class="mayan"></span>优惠社密码</td>
					</tr>
					<tr>
						<td align="right"></td>
						<td style="padding-left: 20px; height: 52px;">您绑定的支付宝号是：
						<br><span id="zhifuhao">369******1@qq.com</span></td>
					</tr>
					<tr>
						<td align="right"></td>
						<td style="padding-left: 20px;"><input value="立即提现" class="xian_sub tupian7" type="submit"></td>
					</tr>
				</tbody>
				</table>
			</form>
		</div>
			
			<div style="width:230px;float:right;border:1px solid #DCDCDC;margin-right:20px;">
		   
				<h1 style="background:#FFF;margin-bottom:10px">
			   
					<center>
						<div class="zjyh_l" style="width:135px;display:block;margin-left:46px;padding-top:5px">
							<h2 style="font-size:17px;padding:0 5px;">时时返现列表</h2>
						</div>
					</center>

					<div style="clear:both;"></div>
				</h1>
				
				<div id="demoTop">
					<div class="indemo">
						<div id="demo3">
					
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**la**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
							
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**ug**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
							
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**的小**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;108.00</span>
								<div style="clear:both;"></div>
							</div>
							
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**an**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;2.00</span>
								<div style="clear:both;"></div>
							</div>
							
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**64**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**的小**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**le**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;108.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**3号**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;39.90</span>
								<div style="clear:both;"></div>
							</div>
											
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**hu**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;108.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**风荷**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;138.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**85**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**nq**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;1.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**rr**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**nt**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**ng**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;39.90</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**时代**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
							
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**hu**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;39.90</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**人的**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**yi**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;108.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**eh**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**40**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**le**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;138.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**棚**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;108.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**iy**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;138.00</span>
								<div style="clear:both;"></div>
							</div>
												
							<div class="reda">
								<span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">**渐落**</span>
								<span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;10.00</span>
								<div style="clear:both;"></div>
							</div>
											
						</div>
					</div>
				</div>	
			</div>
		   <div style="clear:both;"></div>

		</div>

	</div>
	
	
	
	
	<div style="clear: both;"></div>

</div>
	<include file="public:footer" />
<!--List End-->
