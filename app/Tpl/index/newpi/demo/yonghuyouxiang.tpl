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

	<div class="shang_mr" style="border: 1px solid #DCDCDC; background: #FFF">
	
		<div class="shang_621_top" style="height: 90px; border-bottom: 1px solid #dcdcdc; padding-top: 22px; padding-left: 63px">
			<div class="shang_621_top1 tupian6">
				<h1 style="font-size: 16px; color: #999; padding: 5px 0;">邮箱绑定设置:</h1>
				<font style="color: #999">请绑定您的邮箱，以便忘记密码时寻回密码！</font>
			</div>
		</div>
		
		<div style="width: 560px; background: #FFF; margin: 11px 0 131px 93px;">
			<div class="chanshentop" style="height: 48px; line-height: 48px; border: 0">
				<div onclick="guanbi()" class="guanbi" style="float: right; width: 60px; height: 44px; margin-top: 0px; margin-right: -30px;">&nbsp;</div>
				<div style="clear: both"></div>
			</div>
			
			<div class="trxa" style="margin: 0 auto; width: 560px;">
				<p style="font-size: 12px; margin: 20px 20px 20px; color: #666">重要提示：请您绑定您的真实邮箱号，以获得我们的更多增值服势</p>

				<form action="" method="post" name="frm">
					<table border="0">
						<tbody>
						<tr>
							<td align="right"><span style="font-size: 20px; text-align: right">您的邮箱</span>
							</td>
							<td align="left"><input onblur="yanzhong()" style="height: 30px; width: 220px; margin-left: 0px; display: block; float: left;" id="eddf" name="fuqiand" type="text"> <span id="youzhengque" style="color: red; float: left; float: left; height: 30px; line-height: 30px; padding-left: 10px"></span>
							</td>
						</tr>
						<tr>
							<td align="right"><span style="font-size: 20px; text-align: right">&nbsp;&nbsp;验证码：</span></td>
							<td align="left"><input style="height: 30px; width: 80px; margin-left: 0px; display: block; float: left;" id="sdsd" name="fuqiid" type="text"> <span onclick="cahshe(2)" id="xing" style="background: #f39b1e; height: 30px; width: 90px; display: block; float: left; line-height: 30px; color: #FFF; margin-left: 5px">发送</span>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
							<div style="float: left">
								<input class="tupian8" value="" type="submit">
								<input class="tupian9" value="" type="reset">
							</div>
							</td>
							<td></td>
						</tr>
						</tbody>
					</table>
				</form>
				
				<div style="height: 10px;"></div>
				
			</div>
			
		</div>
	
	</div>
	
	
	<div style="clear: both;"></div>

</div>
<include file="public:footer" />

<script>
	function guanbi() {
		// alert('sd');
		$(".zhifub").hide();

		$(".zhezhao").hide();
	}
	function yanzhong() {

		var zhe = $('#eddf').attr("value");

		checkEmail(zhe);
	}
</script>
<script>
	function cahshe(did) {

		var zhe = $('#eddf').attr("value");

		$("#xing").html("发送中");
		$("#xing").css({
			"background" : "#dcdcdc"
		});

		$("#xing").attr("onclick", "cahsheff(2)");
		cahshed(zhe);

	}
	function cahshed(did) {
		var obj = this;

		var ajax_url = "http://mian.youhuishe.com/user/mail.php?didju=" + did;

		$.ajax({
			type : 'get',
			url : ajax_url,
			dataType : "html",
			success : function(data) {
				if (data == "ok") {
					$("#xingn").html(data);				
					test()
				} else {
					$("#xingn").html(data);
					$("#xing").html("发送失败");
					$("#xing").css({
						"background" : "#f46507"
					});
					$("#xing").attr("onclick", "cahshe(2)");
				}

			}
		})
	}

	function test() {
		var num = 30;
		var showtime = $("<em style='font-size:12px;margin-right:8px;color:#f46507'>"+num+"</em>");
		var showtimeNum = showtime.html("30<font style='font-size：12px;color:#FFF'>&nbsp;秒自动返回</font>");
		
		$("#xing").html(showtime);
		num -= 1;
		var countDown = setInterval(function() {
			if (num) {
				showtimeNum.html(num+"<font style='font-size:12px;color:#FFF'>&nbsp;秒自动返回</font>");
				num -= 1;
			} else {
				  countDown && clearInterval(countDown);
				$("#xing").html("发送成功");
				$("#xing").attr("onclick", "cahshe(2)");
			}
		}, 1000);
	}
</script>

 
<script>
	var ad = $("#zhifuhao").html();
	var af = ad.substring(0, 3) + '******' + ad.substring(8, 30);
	$("#zhifuhao").html(af);
</script>
<script>
	function checkEmail(el)//用正则表达式判断
	{
		var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z-]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]|net|NET|asia|ASIA|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT|cn|CN|cc|CC)$"
		var re = new RegExp(regu);
		if (el.search(re) == -1) {
			$("#youzhengque").html("邮箱格式错误");
			$("#youzhengque").css({
				"color" : "red"
			});
		} else {
			$("#youzhengque").html("邮箱格式正确");
			$("#youzhengque").css({
				"color" : "green"
			});
		}

	}
</script>

<!--List End-->
