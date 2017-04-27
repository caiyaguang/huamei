<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/shang.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<script src="__STATIC__/red/js/jquery.min.js"></script>
<style>
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
.right{float:right;width:217px;overflow:hidden;margin:10px 0;background:#fff;padding:20px 5px;}
#demoTop {background: #FFF;overflow:hidden;height: 350px;width: 200px;margin:0 auto;}
#demoTop .indemo {float: left;width: 200px;}
#demo3 {float: left;}
#demo4 {float: left;}
.zjyh{height:21px;margin:8px 0px 3px 6px;*height:31px;}
.zjyh_l{float:left}
.zjyh_r{float:left;width:90px;background:url(__STATIC__/tupian/zjyd.jpg) repeat-x left top;height:21px;}
.reda{height:30px;line-height:30px; width:200px;overflow:hidden;}
.redaa{background:#f9b8d1;height:30px;line-height:30px; width:200px;overflow:hidden;}
</style>
<div class="main w1200">
<include file="public:header" />
</div>
<script>
	$(function() {
		$(".jinhe").click(function(e) {
			$(this).hide();
			$(".jinhec").show();

		});
		$(".jinhech").click(function(e) {
			$(".jinhec").hide();
			$(".jinhe").show();
		});

		$(".danbaox").click(function(e) {
			$(this).hide();
			$(".danbaoy").show();

		});
		$(".danbaoyy").click(function(e) {
			$(".danbaoy").hide();
			$(".danbaox").show();
		});
	});

	function chasheni()

	{

		// $(".didhidden").attr("value",did);
		$(".chashen").show();
		$(".zhezhao").show();
	}
	function guanbi() {
		$(".chashen").hide();

		$(".zhezhao").hide();
	}
</script>

<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="order"><a href="{:U('user/order')}">订单管理</a></li>
					<li id="cash"><a href="{:U('user/cash')}">账户提现</a></li>
					<li id="complain"><a href="{:U('user/complain')}">申诉记录</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #cash').addClass('active');
			</script>

	
	
	<div class="shang_mr" style="border:1px solid #DCDCDC;background:#FFF">

		<div class="shang_621_top" style="height:90px;border-bottom:1px solid #dcdcdc;padding-top:22px;padding-left:63px">
			<div class="shang_621_top1 tupian6" >
				<h1 style="font-size:16px;color:#999;padding:5px 0;">我的提现:</h1>
				<font style="color:#999">由于每天提现用户超过2万，因此平台限制每天提现两次，三个工作日到账。</font>
			</div>
		  
		</div>

		<div style="padding:19px 0;">

			<div style="width:400px;float:left;padding-left:47px;padding-top:30px">
			 
				<div class="yiyuan_a" style="padding: 10px 10px 10px 38px; text-align: left"><span class="ti_biao">用户名：</span><span style="color: #e46820; font-size: 18px">{$info.username}</span></div>
				<div class="yiyuan_a" style="padding: 10px 10px 10px 38px; text-align: left"><span class="ti_biao">账户余额：</span><span style="color: #e46820; font-size: 18px">{$info.money}</span>&nbsp;元<span style="color: #05746b; padding-left: 10px; cursor: pointer;" onclick="chasheni()" class="jixiang">资金详情</span></div>

				<div class="yiyuan_a" style="padding: 0px 10px 10px 38px; text-align: left">提现中金额： {$tixianzhong}&nbsp;元 （三个工作日内到账支付宝）</div>
				<notempty name="info.alipay">
					<notempty name="info.name">
					<div style="padding: 10px 10px 10px 38px; text-align: left; font-size: 16px;">我的支付宝是:<span style="color: #e46820;" id="zhifuhao">{$info.alipay}</span></div>
					<else/>
					<div style="padding: 10px 10px 10px 38px; text-align: left; font-size: 16px;"><span style="color: #e46820;"><a href="{:U('user/alipay')}">尚未设置支付宝信息，点击前往设置</a></span></div>
					</notempty>
				</notempty>
				<notempty name="info.alipay">
					<notempty name="info.name">
					<div class="yiyuan_f" style="margin-top: 26px; margin-bottom: 24px;padding-left:40px;">
					  <a href="{:U('user/apply_cash')}"><img src="__STATIC__/tupian/626_051.jpg"></a>
					</div>
					</notempty>
				</notempty>
		   
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
				<volist name="cashlist" id="val">
<div class="reda" ><span style="padding:0 4px 0 7px;display:block;float:left;width:85px;overflow:hidden">{$val.username}</span><span style="padding-right:8px;display:block;float:left;">返现&nbsp;&nbsp;&nbsp;&nbsp;{$val.money}</span><div style="clear:both;"></div></div>
				</volist>				
                </div>
                <div id="demo4"></div>
              </div>
             </div>	
   
   
   
   </div>

		   <div style="clear:both;"></div>

		</div>

	</div>
	
		</div>
</div>

<!-------------遮罩层---------------->
<div class="zhezhao" style="display: none"></div>
<!-------------查申诉---------------->
<div class="chashen" style="display: none">
<div class="chanshentop">
<div style="width: 100px; float: left; cursor: pointer;">资金详情</div>
<div onclick="guanbi()" class="guanbi"
	style="float: right; width: 25px; height: 25px; margin-top: 0px; margin-right: -30px;">X</div>
<div style="clear: both"></div>
</div>
<div class="trxa">
<table width=600>
	<tr>
		<th width=30%>时间</th>
		<th width=30%>详情</th>
		<th width=40%>金额</th>
	</tr>
	<volist name="financeList" id="val">
	<tr>
		<th width=30%>{$val.add_time|date="Y-m-d H:i",###}</th>
		<th width=30%>{$val.memo}</th>
		<th width=40%>￥{$val.money}</th>
	</tr>
	</volist>
</table>
</div>
</div>

<script>
	var ad = $("#zhifuhao").html();
	var af = ad.substring(0, 3) + '******' + ad.substring(8, 30);
	$("#zhifuhao").html(af);
</script>


<script language="JavaScript">

var speed=22;

var tabTop=document.getElementById("demoTop");
var tab3=document.getElementById("demo3");
var tab4=document.getElementById("demo4");
tab4.innerHTML=tab3.innerHTML;
function Marquee2(){
if(tabTop.scrollTop>=tab4.offsetHeight)
tabTop.scrollTop-=tab3.offsetHeight
else{
tabTop.scrollTop++;
}
}

var MyMar2=setInterval(Marquee2,speed);

tabTop.onmouseover=function() {clearInterval(MyMar2)};
tabTop.onmouseout=function() {MyMar2=setInterval(Marquee2,speed)};

</script>

<include file="public:footer" />
<!--List End-->
