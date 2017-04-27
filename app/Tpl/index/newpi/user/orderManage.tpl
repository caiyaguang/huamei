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
.tiandanhao{width:314px;height:181px;position:fixed;top:200px;left:39%;z-index:1001;background:#FFF;}
.tiandanhaotop{padding:0 28px 0 10px;font-weight:bold;height:35px; line-height:28px;font-weight:bold;
}
.bott {
height: 38px;
line-height: 38px;
text-align: center;
margin-top: 16px;
}
.queding {
border: 0;
width: 65px;
height: 30px;
background: 0;
}
.huishen {
width: 550px;
position: fixed;
top: 100px;
left: 500px;
z-index: 1001;
background: #FFF;
height: 280px;
}
.chanshentop {
text-shadow: 0 1px 0 rgba(255, 255, 255, 0.7);
padding: 0 28px 0 10px;
height: 28px;
line-height: 28px;
font-weight: bold;
}
.chashen {
width: 550px;
position: fixed;
top: 100px;
left: 500px;
z-index: 1001;
background: #FFF;
height: 500px;
overflow-y: auto;
overflow-x: hidden;
}
</style>
<script>
  function tiandanhao(did){  
  
  $("#inputOrderID").attr("value",did);
        $(".tiandanhao").show();
		$(".zhezhao").show()
  }
  function guanbix()
  {
        $(".qudanhao").hide();
		$(".zhezhao").hide();
		$(".chashen").hide();
  }
  function jilu(did){
        $(".chashen").show();
		$(".zhezhao").show()
  }
  function complain(oid){
		$("#order_id").attr("value",oid);
        $(".huishen").show();
		$(".zhezhao").show()
  }

   function guanbijilu()
  {
        $(".caojilu").hide();
		$(".zhezhao").hide()
  }
    function cqueding()
  {
        $(".caojilu").hide();
		$(".zhezhao").hide();
  }
  $("#guanbiaas").click(function (e){
								$("#tiandingdanw").hide();
								$("#bodys").hide();
								$(".zhezhao").hide();
	});
    function quxiadan(lu,qian,did){  
        $(".qudanhao").show();
		$(".zhezhao").show();
		$("#qian").html(qian);
		$("#qu_title_a").html(lu);
		$("#yang_nie").html(qian);
		 $(".didhidden").attr("value",did);
		
		//$("#liu").attr("href","../mian-"+id+".html#serc");
		//$("#liu").attr("href","../mian-"+id+".html#serc");qu_ya_xia
		
  }
  
    function checking(msg) {
        if (!confirm(msg)) {
            window.event.returnValue = false;
        }
    }
 
  function chashen(orid){
		$("#ss_wait").html('获取中，请稍后');
		$("#xingn").hide();
        $(".chashen").show();
		$(".zhezhao").show();
		var ajax_url="{:U('user/chashen')}";
		$.post(ajax_url,
		  {
			orid:orid
		  },
		  function(data){
		 var info = data.data;
		 $("#ss_title").html(info.title);
		 $("#ss_user").html(info.username);
		 $("#ss_time").html(info.add_time);
		 $("#ss_content").html(info.ss_content);
		 $("#ss_pz").attr("src",info.ss_pz);
		 $("#ss_pza").attr("href",info.ss_pz);
		 $("#ss_reply_pz").attr("src",info.reply_pz);
		 $("#ss_reply_pza").attr("href",info.reply_pz);
		 $("#ss_reply_content").html(info.reply_content);
		 $("#ss_phone").html(info.phone);
		 $("#ss_wangwang").html(info.wangwang);
		 $("#ss_qq").html(info.qq);
		 $("#ss_reply_time").html(info.reply_time);
		 $("#ss_status").html(info.status);
		 $("#ss_admin_content").html(info.admin_content);
		 $("#xingn").show();
		 $("#ss_wait").html('');
		  });
	}
	
   function guanbi()
  {
        $(".huishen").hide();
        $(".chashen").hide();
		$(".zhezhao").hide();
		
		$(".tiandanhao").hide();
  }
</script>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<!-------------遮罩层---------------->
<div id="zhe_zhao_a" class="zhezhao" style="display: none"></div>
<!-------------遮罩层结束---------------->
<!-------------填写单号---------------->
<div id="tian_dan_hao" class="tiandanhao"
	style="display: none; background: url(__STATIC__/tupian/mai_tian.png) no-repeat left top">
<div class="tiandanhaotop">
<div style="width: 100px; float: left;">&nbsp;</div>
<div onclick="guanbi()" class="guanbi"
	style="float: right; width: 60px; height: 35px; margin-top: 0px; margin-right: -30px;">&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div style="clear: both"></div>
</div>
<form name="fortdanhao" action="{:U('user/inputOrder')}" method="post">
<div style="height: 72px; line-height: 70px; text-align: center; padding-top: 15px; padding-left: 77px">
	<input style="width: 190px; height: 33px; border:0" type="text" name="order_id" />
	<input class="didhidden" type="hidden" name="id" id="inputOrderID" value="" /></div>
<div class="bott"><input class="queding" type="submit" value="" />

</div>
</form>

</div>
<!-------------填写单号结束---------------->
<!-------------查申诉---------------->
<div class="chashen" style="display: none">
<div class="chanshentop">
<div style="width: 100px; float: left;">查看申诉</div>
<div onclick="guanbi()" class="guanbi" style="float: right; width: 25px; height: 25px; margin-top: 0px; margin-right: -30px;">X</div>
<div style="clear: both"></div>
</div>
<div style="border-radius: 4px; border: 1px solid #BCE3FE; background: #F0F9FF; padding: 10px 5px 5px; margin: 10px;">
<div id="ss_wait">获取中，请稍后</div>
<div id="xingn" style="display: none">
		 <div style="font-size:18px;margin:10px 0;">申诉方</div>
		 <table width="480">
		    <tbody><tr>

			   <td width="20%">商品名称:</td>
			
			  <td id="ss_title"></td>
			</tr>
		    <tr>
			   <td>申诉人:</td>
			
			  <td id="ss_user"></td>
			</tr>
			<tr>
			   <td>申诉时间:</td>
			
			  <td id="ss_time"></td>
			</tr>
			<tr>
			   <td>申诉理由:</td>
			  <td id="ss_content"></td>
			</tr>
			<tr>
			   <td>申诉凭证: </td>
			  <td><a id="ss_pza" target="_blank" href=""> <img id="ss_pz" width="100" height="100" src="">
						 </a>
			  </td>
			</tr>
			<tr>
			   <td>电话:</td>
			
			  <td id="ss_phone"></td>
			</tr>
			<tr>
			   <td>旺旺: </td>
			
			  <td id="ss_wangwang"></td>
			</tr>
		   <tr>
			   <td>Q Q: </td>
			
			  <td id="ss_qq"></td>
			</tr>
		 
		 
		 </tbody></table>
		 <div style="font-size:18px;margin:10px 0;">被申诉方</div>
		  
		  <div class="sdsadsa">
		           <table>
				   
				       <tbody><tr>
					     <td>商家回复</td>
						  <td id="ss_reply_content"></td>
					   </tr>
				        <tr>
						 <td><a id="ss_reply_pza" target="_blank" href=""> <img id="ss_reply_pz" width="100" height="100" src="">
						 </a>
						 </td>
				   </tr>
				   <tr>
					     <td>商家回复时间</td>
						  <td id="ss_reply_time"></td>
					   </tr>
				   
				   </tbody></table>
		  
		  </div>
		 
		  <div style="font-size:18px;margin:10px 0;">网站管理人员处理结果</div>
		  
		  <div class="sdsadsa">
		           <table>
				   
				       <tbody><tr>
					     <td>回复结果</td>
						  <td id="ss_status"></td>
					   </tr>
				       
				   <tr>
					     <td>回复内容:</td>
						  <td id="ss_admin_content"></td>
				   </tr>
				   
		   
				   </tbody></table>
		  
		  </div>
		 
		 
		 </div>
</div>

<div class="bott" style="background: #F6F6F6; border-top: 1px solid #DADEE5">

<button onclick="guanbix()" class="guanbi" type="button">确定</button>
</div>

</div>
<!-------------查申诉---------------->
<div class="huishen" style="display: none">
<div class="chanshentop">
<div style="width: 100px; float: left;">提交申诉</div>
<div onclick="guanbi()" class="guanbi"
	style="float: right; width: 25px; height: 25px; margin-top: 0px; margin-right: -30px;">X</div>
<div style="clear: both"></div>
</div>
<form method="post" action="{:U('user/reply_complain2')}" name="frm"	enctype="multipart/form-data">
<div style="border-radius: 4px; border: 1px solid #BCE3FE; background: #F0F9FF; padding: 10px 5px 5px; margin: 10px;">
<table>
	<tr>
		<td>回复内容：</td>
		<td><textarea style="width: 327px"
			class="ui-form-text ui-form-textRed" onkeyup="SizeClew(this,300,2)"
			name="reply_content"></textarea></td>
	</tr>
	<tr>
		<td align=right>上传凭证文件：</td>
		<td><input type="file" name="reply_pz" /> 
		<input type="hidden" id="order_id" name="id" value="" />
		</td>
	</tr>
</table>

</div>
<div class="bott"><input type="submit" /></div>
</form>
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
			$('.menu-tag ul #order').addClass('active');
			</script>

<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	
				   <td align="center" class="tdg">抢购编号</td> 	
				   <td align="center" class="tdg">下单时间</td> 	 	
			      <td align="center" class="tdg" style="width:100px;">下单用户</td>
				   <td align="center" class="tdg">优惠价/下单价</td>
				    <td align="center" class="tdg">待返款</td>
					 <td align="center" class="tdg" style="width:150px;">填写的订单号</td>
					   <td align="center" class="tdg">抢购状态</td>
						 <td align="center" class="tdg">操作</td>
			  </tr>
			  
			<volist name="orderList" id="val">
			<tr>
					 <td align="center" class="td_border">{$val.id}</td>
					 <td align="center" class="td_border">{$val.add_time|date="Y-m-d H:i",###}</td>
					 <td align="center" class="td_border">{$val.uid|getTableValue='id','user','username'}</td>
					 <td align="center" class="td_border">{$val.coupon_price} </br> {$val.price}</td>
					   <td align="center" class="td_border">{$val.price}</td>
					  <td align="center" class="td_border">{$val.order_id}<br/>
                           <if condition="$val.status eq '待填写订单号'">
							<div class="J_CountDown time" data-config="{
							'startTime':'{$val.stop_time|date="Y-m-d H:i:s",###}',
							'startTips':'<span style=color:#000>距离自动关闭时间：</span><br/>',
							'stopTips':'<span></span>'
							}" style="color: #95e48b;line-height: 30px;"></div>
						   <elseif condition="$val.status eq '待审核订单号'"/>
							<div class="J_CountDown time" data-config="{
							'startTime':'{$val.stop_time|date="Y-m-d H:i:s",###}',
							'startTips':'<span style=color:#000>距离自动返现时间：</span><br/>',
							'stopTips':'<span></span>'
							}" style="color: #95e48b;line-height: 30px;"></div>
							</if>
					
					  </td>
					    <td align="center" class="td_border">{$val.status}</td>
						 <td class="td_borders" align="center" style="width:100px;padding:5px">  
                           <if condition="$val.status eq '待填写订单号'">
						   <a class="utai" href="javascript:void(0)">待填写订单号</a>
						   <elseif condition="$val.status eq '待审核订单号'"/>
						   <a class="utai" href="{:U('user/checkOrder',array('id'=>$val['id'],'check'=>'1'))}" onclick="checking('确认返款订单'+{$val.order_id}+'？')">确认返款</a>
						   <a class="utai" href="{:U('user/checkOrder',array('id'=>$val['id'],'check'=>'2'))}" onclick="checking('确认不通过订单'+{$val.order_id}+'的审核？')">不通过</a>
						   <elseif condition="$val.status eq '订单号有误'"/>
						   <a class="utai" href="javascript:void(0)">订单号有误</a>
						   <elseif condition="$val.status eq '申诉中'"/>
							<a class="utai" href="javascript:void(0)" onclick="complain({$val.id})">回复申诉</a>
						   <a class="utai" href="javascript:void(0)" onclick="chashen({$val.id})">查看申诉</a>
						   <elseif condition="$val.status eq '已返还'"/>
						   <a class="utai" href="javascript:void(0)">已返还</a>
						   </if>
			</td>
			  </tr>
			  </volist>
			  
			</tbody></table>				<div class="page page3">
					<div class="pageNav">{$page}</div>
				</div>
	     </div>

		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/js/countdowns.js"></script>
<script>
    // 多个倒计时需要这样调用
    $('.J_CountDown').each(function () {
    	
        	
        var $this = $(this),
            data = $this.attr('data-config');
        $this.countDown(eval('(' + data + ')'),{$nowtime});
        
    });

    $('#countDown2').countDown();
</script>
</body>
</html>

