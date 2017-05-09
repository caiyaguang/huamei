<?php if (!defined('THINK_PATH')) exit();?><!doctype html><html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"><title><?php echo C('ftx_site_name');?> - <?php echo ($page_seo["title"]); ?> 商家报名中心</title><meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>" /><meta name="description" content="<?php echo ($page_seo["description"]); ?>" /><meta name="generator" content="HuaMeiwangluo" /><meta name="renderer" content="webkit"><meta name="author" content="HuaMeiwangluo Team  bbs.138gzs.com" /><meta name="copyright" content="2010-2014 HuaMeiwangluo Inc." /><meta name="MSSmartTagsPreventParsing" content="True" /><meta http-equiv="MSThemeCompatible" content="Yes" /><link rel="shortcut icon" type="image/ico" href="/favicon.ico"><link rel="bookmark" href="/favicon.ico"/><script type="text/javascript">	SITEURL="<?php echo C('ftx_site_url');?>";
	CURURL="<?php echo C('ftx_site_url');?>";
	WEBNICK="<?php echo C('ftx_site_name');?>";
	URL_COOKIE=0;
</script><link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/md-list.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" /><script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script><script type="text/javascript" src="__STATIC__/red/js/fun.js"></script><script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script><script type="text/javascript" src="__STATIC__/newpi/js/header.js"></script><link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/global.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/kefu.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/baoming.css" /><link href="__STATIC__/red/css/alert.css" rel="stylesheet" type="text/css"><link href="__STATIC__/red/css/global1.0.css" media="screen" rel="stylesheet" type="text/css"/><link href="__STATIC__/red/css/pro1.0.2.css" media="screen" rel="stylesheet" type="text/css"/><link href="__STATIC__/red/css/index1.0.1.css" media="screen" rel="stylesheet" type="text/css"/><script src="__STATIC__/red/js/jquery.1.6.4.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/pp18610_v2.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/tuanpub2.4.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/businesspub2.5.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/businessaccount1.8.1.min.js" type="text/javascript"></script><link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/><script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script></head><body><div id="header"><div class="area"><h1><a href="<?php echo C('ftx_site_url');?>"><img src="<?php echo C('ftx_site_logo');?>" height="45"></a></h1><?php if(!empty($visitor)): ?><span id="bmlogin"><img src="<?php echo avatar($info['id'], 100);?>" width="30" height="30" border="0"/>您好!<i><?php echo ($visitor["username"]); ?></i><b class="control"><a href="<?php echo U('user/index');?>" target="_blank">账号管理</a></b>[<a href="<?php echo U('user/logout');?>">退出</a>]</span><?php else: ?><span id="bmlogin"><a class="log" href="<?php echo U('user/login');?>"></a><a target="_blank" href="<?php echo U('user/register');?>" class="reg"></a></span><?php endif; ?><div class="hidden"></div><div class="hidden"></div><div class="hidden"></div></div></div><div id="nav"><div class="head_nav area"><span><div class="enroll dropdown"><a href="#">全部分类</a><em></em><ul class="dropdown-menu"><?php  $cdi=0; if(is_array($cate_data)): $i = 0; $__LIST__ = $cate_data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$bcate): $mod = ($i % 2 );++$i; if(($bcate['pid'] == 0) AND ($cdi < 100)): $cdi++; ?><li><a href="<?php echo U('index/cate', array('cid'=>$bcate['id']));?>" title="<?php echo ($bcate["name"]); ?>" target="_blank"><?php echo ($bcate["name"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?></ul></div><a <?php if($nav_currr == 'baoming'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('bao/index');?>">活动报名</a><a <?php if($nav_currr == 'my'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('baoming/my');?>">已报名商品</a><a <?php if($nav_currr == 'yaoqiu'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('bao/yaoqiu');?>">活动要求</a><a <?php if($nav_currr == 'shenhe'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('bao/shenhe');?>">审核说明</a><a href="<?php echo U('help/index');?>" target="_blank">帮助中心</a><a href="<?php echo U('article/index');?>" target="_blank">穿衣搭配</a></span></div></div><script type="text/javascript">  function ScrollImgLeft(){
    var speed=30
    var scroll_begin = document.getElementById("scroll_begin");
    var scroll_end = document.getElementById("scroll_end");
    var scroll_div = document.getElementById("scroll_div");		
		
    if(scroll_begin.offsetWidth < scroll_div.offsetWidth){
			
      return false;	
    }else{
      scroll_end.innerHTML=scroll_begin.innerHTML;
      function Marquee(){
        if(scroll_end.offsetWidth-scroll_div.scrollLeft<=0)
          scroll_div.scrollLeft-=scroll_begin.offsetWidth
        else
          scroll_div.scrollLeft++
      }
      var MyMar=setInterval(Marquee,speed)
      scroll_div.onmouseover=function() {clearInterval(MyMar)}
      scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
			
    }
		
  }
</script><div id="contentA"><div class="blockA area"><dl><dt>效果明显</dt><dd>        组织活动按效果付费<br>        流量获取必选渠道<br>        最优质的购物流量<br></dd></dl><dl><dt>多种形式</dt><dd>        暗号团 9块9包邮   <br>        20元封顶 独家折扣  <br>        精彩专题活动  <br>        超强大促 全场9块9包邮
      </dd></dl><dl><dt>多渠道展示</dt><dd><?php echo C('ftx_site_name');?>主站首页推荐 <br><?php echo C('ftx_site_name');?>淘宝/QQ应用推荐 <br><?php echo C('ftx_site_name');?>官方微博推荐 覆盖60多万粉丝 <br><?php echo C('ftx_site_name');?>手机客户端及用户的传播和扩散
      </dd></dl></div><div class="blockB area"><em></em><div class="scroll_div" id="scroll_div"><div id="scroll_begin"><b>最新通知：</b><a><?php echo C('ftx_qq_code');?></a></div><div id="scroll_end"></div></div></div><div class="blockC area"><span>报名流程</span><em>1</em>发布活动<i></i><em>2</em>活动审核<i></i><em>3</em>样品审核<i></i><em>4</em>活动上线
    <em></em><a href="#" class="xiangx" target="_blank">详细流程&gt;&gt;</a></div><dl class="blockE area"><dt>规则协议</dt><dd><span><a href="#" target="_blank">·<?php echo C('ftx_site_name');?>商家平台活动报名服务协议</a></span><span><a href="#" target="_blank">·<?php echo C('ftx_site_name');?>商家保证金协议</a></span><span><a href="#" target="_blank">·<?php echo C('ftx_site_name');?>商家违规处罚条例</a></span></dd></dl></div><div class="main <?php echo C('ftx_site_width');?> mb20"><div class="main-newgood -2" style="text-align:left"><div class="bm-form mt30"><table><tr><th>报名商品网址：</th><td><input type="text" id="url" class="form-int-long" value=""/><input class="smt" type="button" onClick="getTaoItem($('#url').val())" value="抓取商品信息"/><div class="form-tip">						什么是商品网址？<br />						如果您是B店，提供的商品格式为：<span class="org_2">http://detail.tmall.com/item.htm?id=12345678910</span><br />						如果您是C店，提供的商品格式为：<span class="org_2">http://item.taobao.com/item.htm?id=12345678910</span></div></td></tr></table></div><form action="<?php echo U('baoming/add',array('do'=>'submit'));?>" method="post" name="form" id="form" onsubmit="return check_zhe();" enctype="multipart/form-data"><div class="bm-form"><div style="position:relative"><div class="pic"><img class="pic_url" id="J_pic_url" src="__STATIC__/images/no_pic.png" width="340" height="340" alt="图片预览"><span class="tip org_2">（商品图片必须无文字、无水印、300*300像素以上）</span></div></div><table><tr><th>商品名称：</th><td><input name="title" type="text" id="title" class="form-int-long" value="" /><div class="form-tip org_2 f12">标题内不允许出现包邮、折扣信息和新品等字样，要求10-18字。如：日系加厚带帽牛角扣呢子大衣</div></td></tr><tr><th>图片链接：</th><td><input name="pic_url" type="text" id="pic_url" class="form-int-long" value="" /></td></tr><tr><th>所属分类：</th><td><select class="J_cate_select mr10 form-sel" id="J_cate_select" data-pid="0"   data-uri="<?php echo U('item/ajax_getchilds', array('type'=>0));?>" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" /><div class="form-tip org_2 f12">请正确选择您报名的商品对应的分类</div></td></tr><tr><th>包邮范围：</th><td><select name="ems" id="ems"><option value="0">不包邮</option><option value="1">包邮</option></select></td></tr><tr><th>活动周期：</th><td><select name="zhouqi" id="zhouqi" onchange="changetime(this)"><option value="0">--请选择--</option><option lang="5" value="1">五天场活动300元</option><option lang="2" value="2">两天场活动150元</option><option lang="10" value="3">十天场活动500元</option><option lang="7" value="4">七天场活动保证金1000元</option></select><script type="text/javascript">                            function changetime(obj){
                                var v = $(obj).val() ;
                                //天数
                                var day = $(obj).find('option[value='+v+']').attr('lang');
                                //
                                if(!isNaN(day)){
                                }else{
                                    day = 0;
                                }
                                
                                var start_time = $("#coupon_start_time").val();
                                start_time = start_time.replace('-',' ');
                                start_time = start_time.replace('-',' ');
                                var date = new Date(start_time);
                                //设置增加的天数
                                date.setDate(date.getDate()+parseInt(day));
                                //转换成为时间       
                                //年
                                var time_str = date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate()+' '+date.getHours()+':'+date.getMinutes()+':'+date.getSeconds();
                                
                            //document.write("从 1970/01/01 至今已过去 " + d.getTime() + " 毫秒"+d.getDate());
                            //       alert(date.getDate()+'  '+date.getMonth());
                               $("#coupon_end_time").val(time_str);
                                
                            }

                            </script></td></tr><tr><th>库存数量：</th><td><input name="good_inventory" type="text" id="good_inventory" class="form-int-extrashort" value="" /><span class="form-text">件</span>&nbsp;&nbsp;&nbsp;&nbsp;
						</td></tr><tr><th>30天销量：</th><td><input name="volume" type="text" id="volume" class="form-int-extrashort" value="" /><span class="form-text">件</span>&nbsp;&nbsp;&nbsp;&nbsp;
						</td></tr><tr><th>商品原价：</th><td><input name="price" type="text" id="price" class="form-int-extrashort" value="" /><span class="form-text">元</span></td></tr><input type="hidden" name="coupon_rate" id="coupon_rate" size="10" class="input-text" /><tr><th>活动价格：</th><td><input name="coupon_price" type="text" id="coupon_price" class="form-int form-int-extrashort" value="" /><span class="form-text">元</span></td></tr><tr><th>商品来源：</th><td><select name="shop_type" id="shop_type"><?php if(is_array($orig_list)): $i = 0; $__LIST__ = $orig_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><option value="<?php echo ($val["type"]); ?>"><?php echo ($val["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></td></tr><tr><th>开始时间：</th><td><input name="coupon_start_time" type="text" id="coupon_start_time" class="form-int-short date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>" /></td></tr><tr><th>结束时间：</th><td><input name="coupon_end_time" type="text" id="coupon_end_time" class="form-int-short date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>" /></td></tr></table></div><div class="bm-form" style="border:0"><table><tr><th>掌柜旺旺：</th><td><input name="nick" type="text" id="nick" class="form-int-short" value="" /></td></tr><tr><th>店铺ID：</th><td><input name="sellerId" type="text" id="sellerId" class="form-int-short" value="" /></td></tr><tr><th>联系人QQ：</th><td><input name="qq" type="text" id="qq" class="form-int-short" value="<?php echo ($info["qq"]); ?>" /></td></tr><tr><th>联系人手机：</th><td><input name="mobile" type="text" id="mobile" class="form-int-short" value="<?php echo ($info["mobile"]); ?>" /></td></tr><tr><th>联系人姓名：</th><td><input name="realname" type="text" id="realname" class="form-int-short" value="<?php echo ($info["realname"]); ?>" /></td></tr><tr><th>推荐理由：</th><td><textarea id="intro" name="intro" class="form-textarea" cols="10" rows="80">请务必以客观的角度评价您的商品，否则会影响到您商品的审核。</textarea></td></tr><tr><th></th><td><div class="form-btn"><input type="hidden" name="iid" id="iid" value="" /><input type="hidden" name="user_id" id="user_id" value="" /><input type="hidden" name="id" value="" /><input type="button" name="smt" value="提交报名" class="btn" id="smt"></div></td></tr></table></div></form></div></div><script language="javascript" type="text/javascript">	Calendar.setup({
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
	 
	$.getJSON(FTXIAER.root + '/?m=baoming&a=ajaxGetItem', {url:url}, function(result){
	if(typeof result.status=='0'){
			alert('商品不存在或查找有误，请确认地址！');
			return false;
		}else if(result.status == 1){								
								if(result.data.freight_payer == 'buyer'){
									$('#ems').val(0);	
								}else{
									$('#ems').val(1);	
								}
								if(result.data.price > 0 && result.data.coupon_price > 0){
									$('#coupon_rate').val(Math.round((result.data.coupon_price/result.data.price)*100,2)*100);
								}
								if(/taobao\.com/.test(url)){
									$('#shop_type option').get(0).selected = true;
									$('#shop_type option').get(1).selected = false;
								}else{
									$('#shop_type option').get(0).selected = false;
									$('#shop_type option').get(1).selected = true;	
								}
								//alert(result.data.title);
								volume:
								$('#volume').val(result.data.volume);
								$('#pic_url').val(result.data.pic_url);
								$('#title').val(result.data.title);
								$('#J_pic_url').attr('src',result.data.pic_url);				
								$('#sellerId').val(result.data.sellerId);
								$('#price').val(result.data.price);
								$('#iid').val(result.data.num_iid);			
                                $('#nick').val(result.data.nick);
								$('#coupon_price').val(result.data.coupon_price);
							}else if(result.status == 1005){
								 $('#good_link_error').show().html(result.msg);								 
							}
						});;
}
$(function(){      
	$("#intro").focus(function () {
		$(this).css("color", "#5e5e5e");
		if ($("#intro").val() == "请务必以客观的角度评价您的商品，否则会影响到您商品的审核。") {
			$("#intro").val("");
		}
	})
	$("#intro").blur(function () {
		if ($("#intro").val() == "") {
			$("#intro").val("请务必以客观的角度评价您的商品，否则会影响到您商品的审核。");
			$(this).css("color", "#cccccc");
		}
	})
});

function check_zhe(){
	var number = /^\d+$/;
	var reg = /^(([1-9]\d*)|\d)(\.\d{1,2})?$/;
	var url = /http\:\/\/[a-zA-Z0-9.\/]+\.taobaocdn.*\.com\/.*\.(jpg|png|gif)$/;
	var urls = /http\:\/\/[a-zA-Z0-9.\/]+\.alicdn.*\.com\/.*\.(jpg|png|gif)$/;
	var pic_url = $("#pic_url").val();
	var cate_id = $("#J_cate_id").val();
	var sellerId = $("#sellerId").val();	
	var good_link = $("#good_link").val();
	var title = $("#title").val();
	var price = $("#price").val();
	var nick = $("#nick").val();
	var coupon_rate = $("#coupon_rate").val();
	var coupon_price = $("#coupon_price").val();
	var realname = $("#realname").val();
	var qq = $("#qq").val();
	var mobile = $("#mobile").val();
	var intro = $('#intro').val();
	var iid = $('#iid').val();
	var volume = $('#volume').val();
	var good_inventory = $('#good_inventory').val();
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
	else if(titleNum > 40 || titleNum < 10){
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
	else if($('#intro').val() == '请务必以客观的角度评价您的商品，否则会影响到您商品的审核。'){
		alert('请务必以客观的角度评价您的商品，否则会影响到您商品的审核。');
		$('#intro').focus();
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
	var pic_url = $("#pic_url").val();
	var cate_id = $("#J_cate_id").val();
	var good_link = $("#good_link").val();
	var title = $("#title").val();
	var price = $("#price").val();
	var sellerId = $("#sellerId").val();	
	var nick = $("#nick").val();
	var coupon_rate = $("#coupon_rate").val();
	var coupon_price = $("#coupon_price").val();
	var intro = $('#intro').val();
	var good_inventory = $('#good_inventory').val();
	var iid = $('#iid').val();
	var volume = $('#volume').val();
	var realname = $('#realname').val();
	var qq = $('#qq').val();
	var mobile = $('#mobile').val();
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
	else if(titleNum > 40 || titleNum < 10){
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
	else if($('#intro').val() == '请务必以客观的角度评价您的商品，否则会影响到您商品的审核。'){
		alert('请务必以客观的角度评价您的商品，否则会影响到您商品的审核。');
		$('#intro').focus();
		return false;
	}

	$.ajax({
            url: FTXIAER.root + '/index.php?m=baoming&a=ajaxadd',
            type: 'POST',
            data: {
            iid: iid,
            cate_id: cate_id,
			title: title,
			sellerId: sellerId,			
			nick: nick,
			price: price,
			coupon_rate: coupon_rate,
			coupon_price: coupon_price,
			volume:volume,
			good_inventory: good_inventory,
			qq: qq,
			mobile: mobile,
			realname: realname,
			coupon_start_time:coupon_start_time,
			coupon_end_time:coupon_end_time,
			ems:ems,
			pic_url: pic_url,
			shop_type: shop_type,
            intro: intro
                    },
            dataType: 'json',
            success: function(result){
            if(result.status == 1){
			    $.dialog({id:'goods_add_success', title:lang.tips, content:result.data, padding:'', fixed:true, lock:true});
                        }else{
                            $.ftxia.tip({content:result.msg, icon:'error'});
                        }
                    }
                });
				
});
</script><script type="text/javascript">  ScrollImgLeft();
</script><div class="foot"><div class="white_bg"><div class="foot-con"><div class="con-box-n clear"><div class="app-side-box fl"><p class="app-show"><img src="<?php echo C('ftx_site_weixin');?>"></p><p class="app-txt">扫描二维码打开</p></div><div class="con-left-info fl"><dl class="update"><dt>获取更新</dt><dd><a href="<?php echo U('apps/index');?>" target="_blank" rel="nofollow"><i></i>iPhone/Android</a></dd><dd><a href="<?php echo C('ftx_qzone_url');?>" target="_blank" rel="nofollow"><i></i>QQ空间</a></dd><dd><a href="<?php echo C('ftx_sina_url');?>" target="_blank" rel="nofollow"><i></i>新浪微博</a></dd><dd><a href="<?php echo C('ftx_tenxun_url');?>" target="_blank" rel="nofollow"><i></i>腾讯微博</a></dd></dl><dl class="cooperation"><dt>商务合作</dt><dd><a href="<?php echo U('bao/index');?>" target="_blank"><i></i>卖家免费报名</a></dd><dd><a href="<?php echo U('help/read',array('id'=>2));?>" target="_blank" rel="nofollow"><i></i>商务合作</a></dd><dd><a href="<?php echo U('help/read',array('id'=>2));?>" target="_blank" rel="nofollow"><i></i>广告合作</a></dd><dd><a href="<?php echo U('help/read',array('id'=>5));?>" target="_blank" rel="nofollow"><i></i>免责声明</a></dd></dl><dl class="cor-info"><dt>用户帮助</dt><dd><a href="<?php echo U('help/read',array('id'=>6));?>" target="_blank" rel="nofollow"><i></i>常见问题</a></dd><dd><a href="<?php echo U('help/xiaobao');?>" target="_blank" rel="nofollow"><i></i>消费保障</a></dd><dd><a href="<?php echo U('forget/index');?>" target="_blank" rel="nofollow"><i></i>忘记密码</a></dd><dd><a href="<?php echo U('user/register');?>" target="_blank" rel="nofollow"><i></i>免费注册</a></dd></dl><dl class="help-info"><dt>用户中心</dt><dd><a href="<?php echo U('user/like');?>" target="_blank" rel="nofollow"><i></i>我的收藏</a></dd><dd><a href="<?php echo U('help/read',array('id'=>6));?>" target="_blank" rel="nofollow"><i></i>积分攻略</a></dd><dd><a href="<?php echo U('sitemap/index');?>" target="_blank"><i></i>网站地图</a></dd></dl></div><div class="con-menu fr"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=qq&amp;menu=yes" class="service-add fl" target="_blank"></a><span class="service-time fl"><p>周一至周六 </p><p>9:00-22:00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></span></div></div><div class="links"><span>友情链接：</span><div class="links_list_box"><ul class="links_list"><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,0,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,10,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,20,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li></ul></div></div><p class="ft-company"><?php echo C('ftx_site_name');?>&nbsp;&nbsp;<a href="http://www.miibeian.gov.cn" target="_blank"><?php echo C('ftx_site_icp');?></a>&#12288;&#12288;Copyright &copy; 2010 - 2016 <?php echo C('ftx_site_url');?> All Rights Reserved  <?php echo C('ftx_statistics_code');?></p></div></div></div><div id="J_sidebar" class="side_right"><div class="side-box"><ul class="side-oper"><li class="normal side-user"><a class="links" id="J_user" target="_blank" href="<?php echo U('user/index');?>"><i class="normal-icon i-user"></i></a><div id="side-login" class="tab-tips tab-login"><div class="user-box"><div class="pic"><img src="<?php echo avatar($visitor['id'], 64);?>"></div><p class="txt"></p></div><i class="close">×</i><div class="arr-icon">◆</div></div></li><li class="normal side-cart"><a class="links links-cart" id="J_cart" href="javascript:;"><i class="normal-icon i-cart"></i><em class="num cartnum"><?php echo getlike($visitor['id']);?></em></a><div class="tab-tips tab-tag"><div class="carttime"></div><div class="arr-icon">◆</div></div></li><li class="normal side-love"><a class="links" id="J_love" target="_blank" href="<?php echo U('user/like');?>"><i class="normal-icon i-love"></i></a><div class="tab-tips">我的收藏<div class="arr-icon">◆</div></div></li><li class="normal side-quan"><a class="links" id="J_quan" target="_blank" href="<?php echo U('user/gift');?>"><i class="normal-icon i-quan"></i></a><div class="tab-tips">我的礼品<div class="arr-icon">◆</div></div></li></ul><ul class="side-oper other"><li class="normal side-ad"><a class="links links_ad" href="#"  target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style-nav.jpg?v=swj423"></a><div class="tab-tips"><a href="#" target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style.png?v=swj423" width="130" height="248px;"></a></div></li><li class="normal side-complain"><a class="links" id="J_complain" target="_blank" href="<?php echo U('user/msg',array('do'=>'send'));?>"><i class="normal-icon i-complain"></i></a><div class="tab-tips">意见反馈<div class="arr-icon">◆</div></div></li><li class="normal side-code"><a class="links" id="J_code" href="javascript:;"><i class="normal-icon i-code"></i></a><div class="tab-tips"><div class="code-box"><p class="code"><img src="<?php echo C('ftx_site_weixin');?>" width="90px"></p><p class="txt">扫描下载二维码</p></div><div class="arr-icon">◆</div></div></li><li class="normal side-backtop"><a class="links" id="J_backtop" href="javascript:;"><i class="normal-icon i-backtop"></i></a><div class="tab-tips">返回顶部<div class="arr-icon">◆</div></div></li></ul></div></div><script src="/static/newpi/js/init.js" type="text/javascript"></script><script type="text/javascript">var FTXIAER = {
 root: "__ROOT__",
 site: "<?php echo C('ftx_site_url');?>",
 uid: "<?php echo ($visitor['id']); ?>", 
 loginurl:"<?php echo U('user/login');?>",
 userurl:"<?php echo U('user/index');?>",
 username:"<?php echo ($visitor['username']); ?>",
 face:"<?php echo avatar($visitor['id'], 64);?>",
 url:{}
};
var lang = {};
<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script><?php $tag_load_class = new loadTag;$data = $tag_load_class->js(array('type'=>'js','href'=>'__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js','cache'=>'0','return'=>'data',));?><script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script><script src="__STATIC__/newpi/js/goodlist.js" type="text/javascript"></script><script type="text/javascript">	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script><script type="text/javascript" src="__STATIC__/newpi/js/pg-index.js" ></script><?php echo C('ftx_weibo_code'); echo C('ftx_tencent_code'); echo C('ftx_taojindian_html');?><script src="__STATIC__/js/select.js"></script><script type="text/javascript">$("#good_inventory").val(Math.round(Math.random()*9900+99)); 
$('.J_cate_select').cate_select('请选择分类');
</script></body></html>