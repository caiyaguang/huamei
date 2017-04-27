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
  function guanbix()
  {
        $(".qudanhao").hide();
		$(".zhezhao").hide();
		$(".chashen").hide();
  }
    function cqueding()
  {
        $(".caojilu").hide();
		$(".zhezhao").hide();
  }
  function complain(id){
		$("#complain_id").attr("value",id);
        $(".huishen").show();
		$(".zhezhao").show()
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

<div class="huishen" style="display: none">
<div class="chanshentop">
<div style="width: 100px; float: left;">提交申诉</div>
<div onclick="guanbi()" class="guanbi"
	style="float: right; width: 25px; height: 25px; margin-top: 0px; margin-right: -30px;">X</div>
<div style="clear: both"></div>
</div>
<form method="post" action="{:U('user/reply_complain')}" name="frm"	enctype="multipart/form-data">
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
		<input type="hidden" id="complain_id" name="id" value="" />
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
					<eq name="info.login_type" value="2">
					<li id="item"><a href="{:U('user/item')}">活动管理</a></li>
					<li id="additem"><a href="{:U('user/additem')}">发布活动</a></li>
					<else/>
					<li id="cash"><a href="{:U('user/cash')}">账户提现</a></li>
					</eq>
					<li id="order"><a href="{:U('user/orderManage')}">订单管理</a></li>
					<li id="complain"><a href="{:U('user/complain')}">申诉记录</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #complain').addClass('active');
			</script>

<div style="margin:10px 10px 10px 0px;">
			<table width="765" border="0" cellpadding="0" cellspacing="0" style="background:url(__STATIC__/image/shang_bgw.png) repeat-x left top">
			  <tbody>
			  
			  
			  <tr style="height:35px;line-height:35px;background:#-E0E0E0"> 	 		 	
				   <td align="center" class="tdg">申诉编号</td>
			      <td align="center" class="tdg" style="width:100px;margin:10px 0">所属活动</td>
				   <td align="center" class="tdg">申诉理由</td>
				    <td align="center" class="tdg">申述时间</td>
					 <td align="center" class="tdg" style="width:150px;">申述状态</td>
						 <td align="center" class="tdg">操作</td>
			  </tr>
			  
			<volist name="complain" id="val">
			<tr>
					 <td align="center" class="td_border">{$val.id}</td>
			 <td align="center" class="td_border" style="padding:5px;width:100px;"><a target="_blank" href="{$val.item_id|getTableValue='id','free','click_url'}"><div style="width:98px;height:30px;line-height:30px;overflow:hidden">{$val.item_id|getTableValue='id','free','title'}</div><img width="90" src="{$val.item_id|getTableValue='id','free','pic_url'}"></a></td>
					    <td align="center" class="td_border">{$val.ss_content}</td>
					 <td align="center" class="td_border">{$val.add_time|date="Y-m-d H:i",###}</td>
					    <td align="center" class="td_border">{$val.status}</td>
						 <td class="td_borders" align="center" style="width:100px;padding:5px">
						<empty name="val.reply_time">
						   <a class="utai" href="javascript:void(0)" onclick="complain({$val.id})">回复申诉</a>
						</empty>
						   <a class="utai" href="javascript:void(0)" onclick="chashen({$val.order_id})">查看申诉</a>
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

