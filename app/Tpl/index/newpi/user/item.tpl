<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
.utai {
background: url(__STATIC__/image/anniu_lv.png) no-repeat left top;
display: block;
height: 30px;
width: 77px;
line-height: 30px;
color: #FFF;
margin: 5px 0;
cursor: pointer;
}
.td_border {
border-left: 1px solid #DCDCDC;
border-bottom: 1px solid #DCDCDC;
}
.td_borders {
border-right: 1px solid #DCDCDC;
border-bottom: 1px solid #DCDCDC;
padding: 5px;
border-left: 1px solid #DCDCDC;
}
.td_bo {
border: 1px solid #DCDCDC;
border-top: 0;
text-align: center;
}
.page_now div {
height: 39px;
padding: 17px 1px 0 1px;
display: inline-block;
margin: auto;
white-space: nowrap;
}
.zhezhao {
position: fixed;
top: 0px;
left: 0px;
background: #000;
opacity: 0.7;
width: 100%;
height: 100%;
z-index: 1000;
}
.zhifub {
position: fixed;
top: 100px;
left: 38%;
z-index: 1001;
background: #FFF;
}
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="item"><a href="{:U('user/item')}">活动管理</a></li>
					<li id="additem"><a href="{:U('user/additem')}">发布活动</a></li>
					<li id="order"><a href="{:U('user/orderManage')}">订单管理</a></li>
					<li id="complain"><a href="{:U('user/complain')}">申诉记录</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #item').addClass('active');
			</script>

<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	 	 	 	
			      <td align="center" class="tdg" style="width:170px;margin:10px 0">商品标题</td>
				   <td align="center" class="tdg">状态</td>
				    <td align="center" class="tdg">时间 </td>
					 <td align="center" class="tdg">下单价</td>
					   <td align="center" class="tdg">份数</td>
					  <td align="center" class="tdg">保证金</td>
					    <td align="center" class="tdg">报名人数</td>
						 <td align="center" class="tdg">操作</td>
			  </tr>
			  
			<volist name="items" id="val">
			<tr>
			 <td align="center" class="td_border" style="padding:5px;width:170px;"><a target="_blank" href="{$val.click_url}"><div style="width:98px;height:30px;line-height:30px;overflow:hidden">{$val.title}</div><img width="70" height="70" src="{$val.pic_url}"></a></td>
				   <td align="center" class="td_border">
<if condition="$val.status eq 1">待支付保证金<br/>￥{$val.deposit}<elseif condition="$val.status eq 4"/>已支付待审核<elseif condition="$val.status eq 2"/>审核通过<elseif condition="$val.status eq 3"/>未通过或已撤销</if></td>
				    <td align="center" class="td_border" style="width:120px">{$val.add_time|date="Y-m-d H:i",###}</td>
					 <td align="center" class="td_border">{$val.price}</td>
					   <td align="center" class="td_border">{$val.num}</td>
					  <td align="center" class="td_border">{$val.num}</td>
					    <td align="center" class="td_border">{$val.baoming}</td>
						 <td class="td_borders" align="center" style="width:100px;padding:5px">  
                           <if condition="$val.status eq 1">
						   <a class="utai" href="javascript:void(0)" onclick="zhifua({$val.id})">支付费用</a>	
						   <a class="utai" href="{:U('user/edititem',array('id'=>$val['id']))}">编辑活动</a>	
						   <a class="utai" href="{:U('user/delitem',array('id'=>$val['id']))}" onclick="return confirm('你确定要撤销该活动吗？')">撤销活动</a>
						   <elseif condition="$val.status eq 2"/>
						   <a class="utai" href="http://wpa.qq.com/msgrd?v=3&uin={:C('ftx_qq')}&site=qq&menu=yes" onclick="return alert('已经通过审核的活动撤销需要通过管理员')" target="_blank">撤销活动</a>
						   <elseif condition="$val.status eq 4"/>
						   <a class="utai" href="javascript:void(0);">审核中</a>
						   <elseif condition="$val.status eq 3"/>
						   </if>
			</td>
			  </tr>
			  </volist>
			</tbody></table>
			<div class="page page3"><div class="pageNav">{$page}</div></div>
	     </div>

		</div>

	</div>
</div>
<!-------------遮罩层----------------> 
  <div class="zhezhao" style="display:none" >
  </div>  
 <!--------- //支付商品弹窗---------------->
<div class="zhifub" style="display:none;width:400px;height:240px;background:#e6e6e6;">
      <div style="background:#ffffff;margin:5px;height:228px;font-weight:0">
	    <div  style="background:#3d9d31;height:45px;line-height:45px;padding-left:20px">
	      <div style="width:300px;float:left;color:#FFF;font-size:16px;">余额：{$info.money}元&nbsp;&nbsp;|&nbsp;&nbsp;<a style="color:#FFF"  href="http://wpa.qq.com/msgrd?v=3&uin={:C('ftx_qq')}&site=qq&menu=yes">充值》》</a></div>
		  <div onclick="guanbi()" class="guanbi" style="float:right;width:25px;height:45px;margin-top:0px;margin-right:0px;font-size:16px;padding-left:20px;color:#FFF">X</div>
		  <div style="clear:both"></div>
	    </div>
	 <div class="trxa" style="margin:20px auto;width:300px">
	    <p style="font-size:16px;margin:20px auto;text-align:center">本次交易需支付担保金</p>
		<center><div style="margin:30px 0;color:red;font-size:18px;font-weight:600"><span id="sdsds" >Loading...</span></div></center>
		<center>
	   <form action="{:U('user/ConfirmPay')}" method="post">
		   <input id="sdsd" type="hidden" name="did" value=""/>
		  <input style="border:0;display:block;width:77px;height:30px;line-height:30px;background:url(__STATIC__/image/anniu_lv.png) no-repeat left top;color:#FFF" value="确认支付" type="submit"/>
	          
	   </form>
	   </center>  
	 </div>
	  </div> 
	</div>
<!----------------------> 
<script language="javascript">	
	function zhifua(did){
		madu(did);
        $(".zhifub").show();
		$(".zhezhao").show();
   }
   function guanbi(){     
        $(".zhifub").hide();		
		$(".zhezhao").hide();
   }
  function madu(did)
  {
	var ajax_url="{:U('user/zhifu')}";
		$.post(ajax_url,
		  {
			did:did
		  },
		  function(data){
			    $("#sdsd").attr("value",did);
			    $("#sdsds").html(data.data+' 元');
		  });		
  }
	
</script>

<!--主部结束-->
<include file="public:footer" />
</body>
</html>

