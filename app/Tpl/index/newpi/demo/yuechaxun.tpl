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
	        
		<div class="yuguan" style=" width:430px;border:1px solid #DCDCDC;border-top:0; margin:20px auto;background:#eef3f9">
		  <div class="yuguan_top" style="height:30px;line-height:30px;color:#FFF;font-size:14px;background:#3d9f32;margin-bottom:10px;text-align:left;padding-left:20px">
			资金详情
		  </div>
		  <div class="yiyuan_a" style="padding:10px 10px 10px 38px;text-align:left"><span class="ti_biao">用户名：</span><span style="color:#e46820;font-size:18px">华美网络</span></div>
		   <div class="yiyuan_a" style="padding:10px 10px 10px 38px;text-align:left"><span class="ti_biao">账户余额：</span><span style="color:#e46820;font-size:18px">0.00</span>元<span style="color:#05746b;padding-left:10px;cursor:pointer;" onclick="chasheni()" class="jixiang">资金详情</span></div>
		   
		
		<div style="padding:10px 10px 10px 38px;text-align:left;font-size:16px;">我的支付宝是: <span style="color:#e46820;" id="zhifuhao">0 ******</span></div>
		<div class="yiyuan_f" style="margin-top:26px;margin-bottom:24px;">
		
		</div>
	   </div>		

	</div>
	
	<div style="clear: both;"></div>
</div>

 



<include file="public:footer" />
</body>
</html>