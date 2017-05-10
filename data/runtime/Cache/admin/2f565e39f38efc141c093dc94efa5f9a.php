<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><link href="__STATIC__/css/admin/style.css" rel="stylesheet"/><title><?php echo L('website_manage');?></title><script>	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script></head><body><div id="J_ajax_loading" class="ajax_loading"><?php echo L('ajax_loading');?></div><?php if(($sub_menu != '') OR ($big_menu != '')): ?><div class="subnav"><div class="content_menu ib_a blue line_x"><?php if(!empty($big_menu)): ?><a class="add fb J_showdialog" href="javascript:void(0);" data-uri="<?php echo ($big_menu["iframe"]); ?>" data-title="<?php echo ($big_menu["title"]); ?>" data-id="<?php echo ($big_menu["id"]); ?>" data-width="<?php echo ($big_menu["width"]); ?>" data-height="<?php echo ($big_menu["height"]); ?>"><em><?php echo ($big_menu["title"]); ?></em></a>　<?php endif; if(!empty($sub_menu)): if(is_array($sub_menu)): $key = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($key % 2 );++$key; if($key != 1): ?><span>|</span><?php endif; ?><a href="<?php echo U($val['module_name'].'/'.$val['action_name'],array('menuid'=>$menuid)); echo ($val["data"]); ?>" class="<?php echo ($val["class"]); ?>"><em><?php echo ($val['name']); ?></em></a><?php endforeach; endif; else: echo "" ;endif; endif; ?></div></div><?php endif; ?><link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/><script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script><script src="/static/js/fileuploader.js"></script><form id="info_form" name="info_form" action="<?php echo u('items/edit');?>" method="post" enctype="multipart/form-data"><div class="pad_lr_10"><div class="col_tab"><ul class="J_tabs tab_but cu_li"><li class="current">基本信息</li><li>SEO设置</li></ul><div class="J_panes"><div class="content_list pad_10"><table width="100%" cellpadding="2" cellspacing="1" class="table_form"><tr><th width="120">所属分类 :</th><td><select class="J_cate_select mr10" data-pid="0" data-uri="<?php echo U('items_cate/ajax_getchilds', array('type'=>0));?>" data-selected="<?php echo ($selected_ids); ?>"></select><input type="hidden" name="cate_id" id="J_cate_id" value="<?php echo ($info["cate_id"]); ?>" /></td></tr><tr><th>IID :</th><td><input type="text" name="num_iid" id="J_num_iid" class="input-text" size="20" value="<?php echo ($info["num_iid"]); ?>"></td></tr><tr><th width="150">性别 :</th><td><select name="sex"><option value="0" <?php if($info["sex"] == '0'): ?>selected<?php endif; ?>>无</option><option value="1" <?php if($info["sex"] == '1'): ?>selected<?php endif; ?>>男</option><option value="2" <?php if($info["sex"] == '2'): ?>selected<?php endif; ?>>女</option></select></td></tr><tr><th>商品名称 :</th><td><input type="text" name="title" id="J_title" class="input-text" size="60" value="<?php echo ($info["title"]); ?>"></td></tr><tr><th>促销类型 :</th><td><input type="text" name="cu" id="J_cu" class="input-text" size="60" value="<?php echo ($info["cu"]); ?>"></td></tr><tr><th>商品简介 :</th><td><textarea name="intro" id="J_intro" cols="80" rows="2"><?php echo ($info["intro"]); ?></textarea></td></tr><tr><th>商品详情 :</th><td><script name="desc" id="desc" type="text/plain" style="width:100%;height:300px"><?php echo ($info["desc"]); ?></script></td></tr><tr><th width="120">商品价格 :</th><td><input type="text" name="price" size="10" class="input-text" value="<?php echo ($info["price"]); ?>"> 元</td></tr><tr><th>秒杀价格 :</th><td><input type="text" name="coupon_price" size="10" class="input-text" value="<?php echo ($info["coupon_price"]); ?>"> 元</td></tr><tr><th>折扣比率 :</th><td><input type="text" name="coupon_rate" id="coupon_rate" class="input-text" size="10" value="<?php echo ($info["coupon_rate"]); ?>">1000就是1折
                </td></tr><tr><th>开始时间 :</th><td><input type="text" name="coupon_start_time" id="coupon_start_time" size="20" class="date" value="<?php echo (date('Y-m-d H:i',$info["coupon_start_time"])); ?>"></td></tr><tr><th>结束时间 :</th><td><input type="text" name="coupon_end_time" id="coupon_end_time" size="20" class="date" value="<?php echo (date('Y-m-d H:i',$info["coupon_end_time"])); ?>"></td></tr><tr><th>商品图片 :</th><td><?php if(!empty($info['pic_url'])): ?><img src="<?php echo attach(get_thumb($info['pic_url'], '_b'),'item');?>" width="100" id="J_pic_url_img"/><br /><?php endif; ?><div id="J_upload_img" class="upload_btn"><span>上传</span></div><input type="text" id="J_pic_url" name="pic_url" class="input-text" size="80" value="<?php echo ($info["pic_url"]); ?>"> 大图
				</td></tr><tr><th>商品标签 :</th><td><input type="text" name="tags" id="J_tags" class="input-text" size="50" value="<?php echo ($info["tags"]); ?>"><input type="button" value="<?php echo L('auto_get');?>" id="J_gettags" name="tags_btn" class="btn"></td></tr><tr><th width="120">商品来源 :</th><td><select name="shop_type" id="shop_type"><?php if(is_array($orig_list)): $i = 0; $__LIST__ = $orig_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><option value="<?php echo ($val["type"]); ?>" <?php if($info['shop_type'] == $val['type']): ?>selected="selected"<?php endif; ?>><?php echo ($val["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></td></tr><tr><th>销量 :</th><td><input type="text" name="volume" id="volume" class="input-text" size="10" value="<?php echo ($info["volume"]); ?>"></td></tr><tr><th>点击量 :</th><td><input type="text" name="hits" id="hits" class="input-text" size="10" value="<?php echo ($info["hits"]); ?>"></td></tr><tr><th width="120">是否包邮 :</th><td><input name="ems" value="0" type="radio" <?php if($info['ems'] == '0'): ?>checked<?php endif; ?>>不包邮&nbsp;&nbsp;
					<input name="ems" value="1" type="radio" <?php if($info['ems'] == '1'): ?>checked<?php endif; ?>>包邮
				</td></tr><tr><th>推广链接 :</th><td><input type="text" name="click_url" id="J_click_url" class="input-text" size="100" value="<?php echo ($info["click_url"]); ?>"><input type="button" value="<?php echo L('auto_get');?>" id="J_getclick_url" name="click_url_btn" class="btn"></td></tr><tr><th>美丽说wap推广链接 :</th><td><input type="text" name="item_url" id="J_item_url" class="input-text" size="100" value="<?php echo ($info["item_url"]); ?>"></td></tr><tr><th>掌柜旺旺 :</th><td><input type="text" name="nick" id="nick" class="input-text" size="20" value="<?php echo ($info["nick"]); ?>"></td></tr><tr><th>卖家数字ID :</th><td><input type="text" name="sellerId" id="sellerId" class="input-text" size="20" value="<?php echo ($info["sellerId"]); ?>"></td></tr><tr><th width="120">是否有优惠券 :</th><td><select name="isq" id="isq"><option value="0" <?php if($info['isq'] == 0): ?>selected="selected"<?php endif; ?>>否</option><option value="1" <?php if($info['isq'] == 1): ?>selected="selected"<?php endif; ?>>是</option></select></td></tr><tr><th>优惠券价格:</th><td><input type="text" name="quan" id="quan" class="input-text" size="10" value="<?php echo ($info["quan"]); ?>">                	元
                </td></tr><tr><th>优惠券推广链接:</th><td><input type="text" name="quanurl" id="quanurl" class="input-text" size="100" value="<?php echo ($info["quanurl"]); ?>"></td><tr><th>优惠券剩余数量:</th><td><input type="text" name="Quan_surplus" id="Quan_surplus" class="input-text" size="20" value="<?php echo ($info["Quan_surplus"]); ?>"></td></tr><tr><th>优惠券已领数量:</th><td><input type="text" name="Quan_receive" id="Quan_receive" class="input-text" size="20" value="<?php echo ($info["Quan_receive"]); ?>"></td></tr><tr><th>佣金比率:</th><td><input type="text" name="commission_rate" id="commission_rate" class="input-text" size="20" value="<?php echo ($info["commission_rate"]); ?>"></td></tr><tr><th>发布人 :</th><td><input type="text" name="realname" id="realname" class="input-text" size="20" value="<?php echo ($info["realname"]); ?>"></td></tr><tr><th>发布人手机号 :</th><td><input type="text" name="mobile" id="mobile" class="input-text" size="20" value="<?php echo ($info["mobile"]); ?>"></td></tr><tr><th>发布人QQ号 :</th><td><input type="text" name="qq" id="qq" class="input-text" size="20" value="<?php echo ($info["qq"]); ?>"></td></tr></table></div><div class="content_list pad_10 hidden"><table width="100%" cellpadding="2" cellspacing="1" class="table_form"><tr><th width="120"><?php echo L('seo_title');?> :</th><td><input type="text" name="seo_title" class="input-text" size="60" value="<?php echo ($info["seo_title"]); ?>"></td></tr><tr><th><?php echo L('seo_keys');?> :</th><td><input type="text" name="seo_keys" class="input-text" size="60" value="<?php echo ($info["seo_keys"]); ?>"></td></tr><tr><th><?php echo L('seo_desc');?> :</th><td><textarea name="seo_desc" cols="80" rows="8"><?php echo ($info["seo_desc"]); ?></textarea></td></tr></table></div></div><div class="mt10"><input type="submit" value="<?php echo L('submit');?>" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"></div></div></div><input type="hidden" name="menuid"  value="<?php echo ($menuid); ?>"/><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>" /></form><script src="__STATIC__/js/jquery/jquery.js"></script><script src="__STATIC__/js/jquery/plugins/jquery.tools.min.js"></script><script src="__STATIC__/js/jquery/plugins/formvalidator.js"></script><script src="__STATIC__/js/ftxia.js"></script><script src="__STATIC__/js/admin.js"></script><script src="__STATIC__/js/dialog.js"></script><script>//初始化弹窗
(function (d) {
    d['okValue'] = lang.dialog_ok;
    d['cancelValue'] = lang.dialog_cancel;
    d['title'] = lang.dialog_title;
})($.dialog.defaults);
</script><?php if(isset($list_table)): ?><script src="__STATIC__/js/jquery/plugins/listTable.js"></script><script>$(function(){
	$('.J_tablelist').listTable();
});
</script><?php endif; ?><script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script><script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script><script type="text/javascript">$('.J_cate_select').cate_select('请选择');
var ue = UE.getEditor('desc');  
$(function() {	

  //上传图片
    var img_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "<?php echo U('items/ajax_upload_img');?>",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           // $('#J_pic_url').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_pic_url').val(result.data);
				$('#J_pic_url_img').attr('src','/data/upload/item/'+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	
	    var extimg_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_extimg'),
        multiple: false,
        action: "<?php echo U('items/ajax_upload_img');?>",
        inputName: 'extimg',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_extimg').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
            $('#J_upload_extimg').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_extimg').val(result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.ftxia.tip({content:lang.title_empty, icon:'alert'});
			return false;
		}
		$.getJSON('<?php echo U("items/ajax_gettags");?>', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});

	$('#J_getclick_url').live('click', function() {
		var iid = $.trim($('#J_num_iid').val());
		if(iid == ''){
			$.ftxia.tip({content:lang.iid_empty, icon:'alert'});
			return false;
		}
		$.getJSON('<?php echo U("items/ajax_getclick_url");?>', {iid:iid}, function(result){
			if(result.status == 1){
				$('#J_click_url').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});

	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_title").formValidator({onshow:'请填写商品名称',onfocus:'请填写商品名称'}).inputValidator({min:1,onerror:'请填写商品名称'}).defaultPassed();
});
function get_child_cates(obj,to_id)
{
	var parent_id = $(obj).val();
	if( parent_id ){
		$.get('?m=items&a=get_child_cates&g=admin&parent_id='+parent_id,function(data){
				var obj = eval("("+data+")");
				$('#'+to_id).html( obj.content );
	    });
    }
}
 
 
</script><script language="javascript" type="text/javascript">	                        Calendar.setup({
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script><script language="javascript" type="text/javascript">	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script></body></html>