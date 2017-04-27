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
	<div class="shang_mr">
		<div class="user_d" style="padding: 5px 10px; height: 35px; line-height: 35px; background: #EEEEEE; border-top: 2px solid red">
			<h3>我的订单</h3>
		</div>
		<div>
			<div class="shen_shutable">
				<form method="post" action="" name="frm" enctype="multipart/form-data">
					<table width="460" style="font-size:12px;">
						<tbody>
						<tr>
							<td width="100" align="right">申诉类型：</td>
							<td>
								<select class="feileia" name="shenid">
									<option selected="selected" value="0">选择申诉类型</option>
									<option value="1">申请修改单号</option>
									<option value="2">申请取消资格</option>
									<option value="3">申请延长返款时间</option>
									<option value="4">下单价有误</option>
									<option value="6">单号被审核有误</option>
									<option value="7">其他</option>
								</select>
							</td>
						</tr>
						<tr>
							<td align="right">申诉理由：</td>
							<td><textarea style="width: 327px" class="ui-form-text ui-form-textRed" onkeyup="SizeClew(this,300,2)" name="mcontent"></textarea></td>
						</tr>
					<tr>
						<td align="right">手机：</td>
						<td><input name="meshouji" type="text"></td>
					</tr>
					<tr>
						<td align="right">QQ：</td>
						<td><input name="mqq" type="text"></td>
					</tr>
					<tr>
						<td align="right">旺旺：</td>
						<td><input name="mwang" type="text"></td>
					</tr>
					<tr>
						<td align="right">上传凭证文件1:</td>
						<td><input name="shenpic1" type="file"></td>
					</tr>
					<tr>
						<td align="right">上传凭证文件2:</td>
						<td><input name="shenpic2" type="file"></td>
					</tr>
					<tr>
						<td align="right">
							<input style="background: #F1273A; color: #FFFFFF; border-radius: 3px; border: 0;padding:0 3px;;" value="提交" type="submit"></td>
						<td></td>
					</tr>
					</tbody></table>
				</form>
			</div>
			
			<div class="shen_shuitem">
				<div style="margin: 8px">商品信息</div>
				<ul>
					<li style="height: 80px;">
						<div style="float: left">
							<a href="http://www.taobao.com/">
								<img src="__STATIC__/tupian/2014110611101222860900.jpg" height="60" width="60">
							</a>
						</div>
						
						<div style="float: left; width: 150px; margin-left: 10px;">
							<a href="">【拍A发B（护眼小书灯）】荣耀6钢化膜</a>
						</div>
						
						<div style="clear: both"></div>
					</li>
					
					<li>优惠价：0.00元</li>
					<li>下单价：15.90元</li>
					<li>应返款：15.9元</li>
					<li>抢购编号：204615</li>
					<li>填写的订单号：837941577913774</li>
				</ul>
		</div>
		
		<div style="clear: both;"></div>
	</div>
</div>

	<div style="clear: both;"></div>


<include file="public:footer" />
<!--List End-->
