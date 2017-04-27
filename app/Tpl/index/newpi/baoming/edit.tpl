<!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>{:C('ftx_site_name')} - {$page_seo.title} 商家报名中心</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<meta name="generator" content="HuaMeiwangluo" />
<meta name="renderer" content="webkit">
<meta name="author" content="HuaMeiwangluo Team  bbs.138gzs.com" />
<meta name="copyright" content="2010-2014 HuaMeiwangluo Inc." />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>
<script type="text/javascript">
	SITEURL="{:C('ftx_site_url')}";
	CURURL="{:C('ftx_site_url')}";
	WEBNICK="{:C('ftx_site_name')}";
	URL_COOKIE=0;
</script>
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/md-list.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" />
<script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/sea-debug.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/fun.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/header.js"></script>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/global.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/kefu.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/baoming.css" />
<link href="__STATIC__/red/css/alert.css" rel="stylesheet" type="text/css">
<link href="__STATIC__/red/css/global1.0.css" media="screen" rel="stylesheet" type="text/css"/>
<link href="__STATIC__/red/css/pro1.0.2.css" media="screen" rel="stylesheet" type="text/css"/>  
<link href="__STATIC__/red/css/index1.0.1.css" media="screen" rel="stylesheet" type="text/css"/> 
<script src="__STATIC__/red/js/jquery.1.6.4.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/pp18610_v2.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/tuanpub2.4.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/businesspub2.5.min.js" type="text/javascript"></script>    
<script src="__STATIC__/red/js/businessaccount1.8.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
</head>
<body>
<include file="public:header2" />
<div class="main {:C('ftx_site_width')} mb20">
	<div class="main-newgood -2" style="text-align:left">

 
		<form action="{:U('baoming/edit',array('do'=>'submit'))}" method="post" name="form1" onsubmit="return check_zhe();">
			<div class="bm-form">
				<div style="position:relative">
					<div class="pic">
						<img class="pic_url" src="{$item.pic_url}" width="340" height="340" alt="图片预览">
						<span class="tip org_2">（商品图片必须无文字、无水印、300*300像素以上）</span>
					</div>
				</div>
				<table>
					<tr>
						<th>商品名称：</th>
						<td>
							<input name="title" type="text" id="title" class="form-int-long" value="{$item.title}" />
							<div class="form-tip org_2 f12">标题内不允许出现包邮、折扣信息和新品等字样，要求10-18字。如：日系加厚带帽牛角扣呢子大衣</div>
						</td>
					</tr>
					<tr>
						<th>图片链接：</th>
						<td><input name="pic_url" type="text" id="pic_url" class="form-int-long" value="{$item.pic_url}" /></td>
					</tr>
					<tr>
						<th>所属分类：</th>
						<td>
							
							<select class="J_cate_select mr10 form-sel" id="J_cate_select" data-pid="0"   data-uri="{:U('item/ajax_getchilds', array('type'=>0))}" data-selected="{$item.cate_id}"></select>
							<input type="hidden" name="cate_id" id="J_cate_id" value="{$item.cate_id}" />


							<div class="form-tip org_2 f12">请正确选择您报名的商品对应的分类</div>
						</td>
					</tr>
					<tr>
						<th>包邮范围：</th>
						<td>
							<input name="ems" value="0" id="emss_not" type="radio" class="radio" <if condition="$item['ems'] eq 0">checked</if>>
							<label class="radio_lalel" for="emss_not">不包邮</label>&nbsp;&nbsp;
							<input name="ems" value="1" id="emss" type="radio" class="radio" <if condition="$item['ems'] eq 1">checked</if>>
							<label class="radio_lalel" for="emss">包邮</label>&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<th>库存数量：</th>
						<td>
							<input name="good_inventory" type="text" id="good_inventory" class="form-int-extrashort" value="{$item.inventory}" />
							<span class="form-text">件</span>&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<th>30天销量：</th>
						<td>
							<input name="volume" type="text" id="volume" class="form-int-extrashort bcf" value="{$item.volume}" readOnly="true" />
							<span class="form-text">件</span>&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<th>商品原价：</th>
						<td>
							<input name="price" type="text" id="price" class="form-int-extrashort bcf" value="{$item.price}" readOnly="true" />
							<span class="form-text">元</span>
						</td>
					</tr>
					<tr>
						<th>活动价格：</th>
						<td>
							<input name="coupon_price" type="text" id="coupon_price" class="form-int form-int-extrashort" value="{$item.coupon_price}" />
							<span class="form-text">元</span>
						</td>
					</tr>
					<tr>
					<th>折扣比率：</th>
					<td>
					<input type="text" name="coupon_rate" id="coupon_rate" size="10" class="form-int-extrashort bcf" value="{$item.coupon_rate}"/>
					<div class="form-tip org_2 f12">5折=折扣比率：5000</div>
					</td>
					</tr>
					<tr>
						<th>商品来源：</th>
						<td>
						<select name="shop_type" id="shop_type">
							<volist name="orig_list" id="val">
							<option value="{$val.type}" <if condition="$val['type'] eq $item['shop_type']">selected="selected"</if>>{$val.name}</option>
							</volist>
						</select>

						</td>
					</tr>
					<tr>
						<th>开始时间：</th>
						<td><input name="coupon_start_time" type="text" id="coupon_start_time" class="form-int-short date" value="{$item.coupon_start_time|date='Y-m-d H:i:s',###}" /></td>
					</tr>
					<tr>
						<th>结束时间：</th>
						<td><input name="coupon_end_time" type="text" id="coupon_end_time" class="form-int-short date" value="{$item.coupon_end_time|date='Y-m-d H:i:s',###}" /></td>
					</tr>
				</table>
			</div>
			<div class="bm-form" style="border:0">
				<table>
					<tr>
						<th>店铺主旺旺：</th>
						<td><input name="nick" type="text" id="nick" class="form-int-short bcf" value="{$item.nick}" readOnly="true" /></td>
					</tr>
					<tr>
						<th>店铺ID：</th>
						<td><input name="sellerId" type="text" id="sellerId" class="form-int-short" value="{$item.sellerId}" /></td>
					</tr>
					<tr>
						<th>联系人QQ：</th>
						<td><input name="qq" type="text" id="qq" class="form-int-short" value="{$item.qq}" /></td>
					</tr>
					<tr>
						<th>联系人手机：</th>
						<td><input name="mobile" type="text" id="mobile" class="form-int-short" value="{$item.mobile}" /></td>
					</tr>
					<tr>
						<th>联系人姓名：</th>
						<td><input name="realname" type="text" id="realname" class="form-int-short" value="{$item.realname}" /></td>
					</tr>
					<tr>
						<th>推荐理由：</th>
						<td>
							<textarea id="reason" name="reason" class="form-textarea" cols="30" rows="10">{$item.intro}</textarea>
						</td>
					</tr>
					<tr>
						<th></th>
						<td>
							<div class="form-btn">
								<input type="hidden" name="iid" id="iid" value="{$item.num_iid}" />
								<input type="hidden" name="id" id="id" value="{$item.id}" />
								<input type="button" name="smt" value="提交报名" class="btn" id="smt">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</div>

<script language="javascript" type="text/javascript">

	Calendar.setup({
		inputField     :    "coupon_start_time",
		ifFormat       :    "%Y-%m-%d %H:%M",
		showsTime      :    'true',
		timeFormat     :    "24"
	});
	Calendar.setup({
		inputField     :    "coupon_end_time",
		ifFormat       :    "%Y-%m-%d %H:%M",
		showsTime      :    'true',
		timeFormat     :    "24"
	});


regTaobaoUrl = /(.*\.?taobao.com(\/|$))|(.*\.?tmall.com(\/|$))/i; 
function getTaoItem(url){
    if(url==''){
		alert('网址不能为空！');
		return false;
	}
	if (!url.match(regTaobaoUrl)){
		alert('这不是一个淘宝网址！');
		return false;
	}
	 
	$.getJSON(FTXIAER.root + '/index.php?m=goods&a=ajaxgetid', {url:url},function(result){
		if(typeof result.status=='0'){
			alert('商品不存在或查找有误，请确认地址！');
			return false;
		}
		
		taobaokeItem=result.data.item;
		$('#title').val(taobaokeItem.title);
		$('#pic_url').val(taobaokeItem.pic_url);
		$('.pic_url').attr('src',taobaokeItem.pic_url);
		$('#iid').val(taobaokeItem.num_iid);
		$('#price').val(taobaokeItem.price);
		$('#nick').val(taobaokeItem.nick);
		$('#sellerId').val(taobaokeItem.sellerId);
		$('#qq').val(taobaokeItem.qq);
		$('#mobile').val(taobaokeItem.mobile);
		$('#realname').val(taobaokeItem.realname);
		$('#user_id').val(taobaokeItem.user_id);
		$('#shop_type').val(taobaokeItem.tmall);
		$('#volume').val(taobaokeItem.volume);
		$('#good_inventory').val(taobaokeItem.good_inventory);
		$('#coupon_price').val(taobaokeItem.coupon_price);
		$('#coupon_start_time').val(taobaokeItem.coupon_start_time);
		$('#coupon_end_time').val(taobaokeItem.coupon_end_time);
		$("#coupon_rate").val(Math.round((taobaokeItem.price/rtaobaokeItem.coupon_price)*100,2)*100); 
	});
}
 
$(function(){
	$("#reason").focus(function () {
		$(this).css("color", "#5e5e5e");
		if ($("#reason").val() == "请务必以客观的角度评价您的商品，否则会影响到您商品的审核。") {
			$("#reason").val("");
		}
	})
	$("#reason").blur(function () {
		if ($("#reason").val() == "") {
			$("#reason").val("请务必以客观的角度评价您的商品，否则会影响到您商品的审核。");
			$(this).css("color", "#cccccc");
		}
	})
});

function check_zhe(){

	var number = /^\d+$/;
	var reg = /^(([1-9]\d*)|\d)(\.\d{1,2})?$/;
	var url = /http\:\/\/[a-zA-Z0-9.\/]+\.taobaocdn.*\.com\/.*\.(jpg|png|gif)$/;
	var urls = /http\:\/\/[a-zA-Z0-9.\/]+\.alicdn.*\.com\/.*\.(jpg|png|gif)$/;
	var img_link = $("#pic_url").val();
	var id = $('#id').val();
	var cate_id = $("#J_cate_id").val();
	var good_link = $("#good_link").val();
	var title = $("#title").val();
	var coupon_rate = $("#coupon_rate").val();
	var price = $("#price").val();
	var nick = $("#nick").val();
	var sellerId = $("#sellerId").val();
	var qq = $("#qq").val();
	var mobile = $("#mobile").val();
	var realname = $("#realname").val();
	var good_price = $("#coupon_price").val();
	var good_inventory = $('#good_inventory').val();
	var intro = $('#reason').val();
	var iid = $('#iid').val();
	var volume = $('#volume').val();
	var ems = $('input:radio[name=ems]:checked').val();
	var shop_type = $('#shop_type').val();
	var coupon_start_time = $("#coupon_start_time").val();
	var coupon_end_time = $("#coupon_end_time").val();

	var titleNum=$('#title').val().length;

	if(titleNum == ''){
		alert('请输入商品名称');
		$('#title').focus();
		return false;
	}
	else if(titleNum > 40 || titleNum < 5){
		alert('商品名称必须在10至40个字之间'+titleNum);
		$('#title').focus();
		return false;
	}
	else if($('#pic_url').val() == ''){
		alert('请输入图片链接');
		$('#pic_url').focus();
		return false;
	}
	else if($('#J_cate_id').val() == '-1'){
		alert('请选择商品所属分类');
		$('#J_cate_select').focus();
		return false;
	}
	else if($('#ems').val() == ''){
		alert('请选择包邮范围');
		$('#ems').focus();
		return false;
	}
	else if($('#volume').val() == ''){
		alert('请输入30天销量');
		$('#volume').focus();
		return false;
	}
	else if($('#price').val() == ''){
		alert('请输入原价');
		$('#price').focus();
		return false;
	}
	else if($('#coupon_price').val() == ''){
		alert('请输入活动价格');
		$('#coupon_price').focus();
		return false;
	} 
	else if($('#sdate').val() == ''){
		alert('请选择开始时间');
		$('#sdate').focus();
		return false;
	}
	else if($('#edate').val() == ''){
		alert('请选择结束时间');
		$('#edate').focus();
		return false;
	}
	else if($('#reason').val() == '请务必以客观的角度评价您的商品，否则会影响到您商品的审核。'){
		alert('请务必以客观的角度评价您的商品，否则会影响到您商品的审核。');
		$('#reason').focus();
		return false;
	}else{
		return true;
	}
}

$("#smt").click(function() {
	
	var number = /^\d+$/;
	var reg = /^(([1-9]\d*)|\d)(\.\d{1,2})?$/;
	var url = /http\:\/\/[a-zA-Z0-9.\/]+\.taobaocdn.*\.com\/.*\.(jpg|png|gif)$/;
	var urls = /http\:\/\/[a-zA-Z0-9.\/]+\.alicdn.*\.com\/.*\.(jpg|png|gif)$/;
	var img_link = $("#pic_url").val();
	var cate_id = $("#J_cate_id").val();
	var good_link = $("#good_link").val();
	var title = $("#title").val();
	var price = $("#price").val();
	var coupon_rate = $("#coupon_rate").val();
	var nick = $("#nick").val();
	var sellerId = $("#sellerId").val();
	var qq = $("#qq").val();
	var mobile = $("#mobile").val();
	var realname = $("#realname").val();
	var good_price = $("#coupon_price").val();
	var good_inventory = $('#good_inventory').val();
	var intro = $('#reason').val();
	var iid = $('#iid').val();
	var id = $('#id').val();
	var volume = $('#volume').val();
	var ems = $('input:radio[name=ems]:checked').val();
	var shop_type = $('#shop_type').val();
	var coupon_start_time = $("#coupon_start_time").val();
	var coupon_end_time = $("#coupon_end_time").val();

	var titleNum=$('#title').val().length;

	if(titleNum == ''){
		alert('请输入商品名称');
		$('#title').focus();
		return false;
	}
	else if(titleNum > 40 || titleNum < 5){
		alert('商品名称必须在10至40个字之间'+titleNum);
		$('#title').focus();
		return false;
	}
	else if($('#pic_url').val() == ''){
		alert('请输入图片链接');
		$('#pic_url').focus();
		return false;
	}
	else if($('#J_cate_id').val() == '-1'){
		alert('请选择商品所属分类');
		$('#J_cate_select').focus();
		return false;
	}
	else if($('#ems').val() == ''){
		alert('请选择包邮范围');
		$('#ems').focus();
		return false;
	}
	else if($('#volume').val() == ''){
		alert('请输入30天销量');
		$('#volume').focus();
		return false;
	}
	else if($('#price').val() == ''){
		alert('请输入原价');
		$('#price').focus();
		return false;
	}
	else if($('#coupon_price').val() == ''){
		alert('请输入活动价格');
		$('#coupon_price').focus();
		return false;
	} 
	else if($('#sdate').val() == ''){
		alert('请选择开始时间');
		$('#sdate').focus();
		return false;
	}
	else if($('#edate').val() == ''){
		alert('请选择结束时间');
		$('#edate').focus();
		return false;
	}
	else if($('#reason').val() == '请务必以客观的角度评价您的商品，否则会影响到您商品的审核。'){
		alert('请务必以客观的角度评价您的商品，否则会影响到您商品的审核。');
		$('#reason').focus();
		return false;
	}

	$.ajax({
                    url: FTXIAER.root + '/?m=baoming&a=ajaxedit',
                    type: 'POST',
                    data: {
                        iid: iid,
			id: id,
                        cate_id: cate_id,
			title: title,
			nick: nick,
			sellerId: sellerId,
			qq: qq,
			mobile: mobile,
			realname: realname,
			price: price,
			coupon_rate: coupon_rate,
			good_price: good_price,
			good_inventory: good_inventory,
			volume:volume,
			coupon_start_time:coupon_start_time,
			coupon_end_time:coupon_end_time,
			ems:ems,
			pic_url: img_link,
			shop_type: shop_type,
                        intro: intro
                    },
                    dataType: 'json',
                    success: function(result){
                        if(result.status == 1){
			    $.ftxia.tip({content:result.msg});
			    document.location.href = "{:U('baoming/my')}";
                        }else{
                            $.ftxia.tip({content:result.msg, icon:'error'});
                        }
                    }
                });
});
</script>
<script type="text/javascript">
  ScrollImgLeft();
</script>
<include file="public:footer" />
<script src="__STATIC__/js/select.js"></script>
<script type="text/javascript">
$('.J_cate_select').cate_select('请选择分类');
</script>
</body>
</html>