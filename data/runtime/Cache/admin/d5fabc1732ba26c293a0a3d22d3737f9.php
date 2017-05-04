<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><link href="__STATIC__/css/admin/style.css" rel="stylesheet"/><title><?php echo L('website_manage');?></title><script>	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script></head><body><div id="J_ajax_loading" class="ajax_loading"><?php echo L('ajax_loading');?></div><?php if(($sub_menu != '') OR ($big_menu != '')): ?><div class="subnav"><div class="content_menu ib_a blue line_x"><?php if(!empty($big_menu)): ?><a class="add fb J_showdialog" href="javascript:void(0);" data-uri="<?php echo ($big_menu["iframe"]); ?>" data-title="<?php echo ($big_menu["title"]); ?>" data-id="<?php echo ($big_menu["id"]); ?>" data-width="<?php echo ($big_menu["width"]); ?>" data-height="<?php echo ($big_menu["height"]); ?>"><em><?php echo ($big_menu["title"]); ?></em></a>　<?php endif; if(!empty($sub_menu)): if(is_array($sub_menu)): $key = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($key % 2 );++$key; if($key != 1): ?><span>|</span><?php endif; ?><a href="<?php echo U($val['module_name'].'/'.$val['action_name'],array('menuid'=>$menuid)); echo ($val["data"]); ?>" class="<?php echo ($val["class"]); ?>"><em><?php echo ($val['name']); ?></em></a><?php endforeach; endif; else: echo "" ;endif; endif; ?></div></div><?php endif; ?><!--其他设置--><div class="pad_lr_10"><form id="info_form" action="<?php echo u('setting/edit');?>" method="post"><table width="100%" class="table_form contentWrap"><tr></tr><th width="150">标签生成 :</th><td><label><input type="radio" <?php if(C('ftx_tag_auto') == '1'): ?>checked="checked"<?php endif; ?> value="1" name="setting[tag_auto]"> 是</label> &nbsp;&nbsp;
                <label><input type="radio" <?php if(C('ftx_tag_auto') == '0'): ?>checked="checked"<?php endif; ?> value="0" name="setting[tag_auto]"> 否</label><span class="gray ml10">当用户搜索或点击标签时是否自动生成相关标签,会加重服务器负担。建议不要长时间开启</span></td><tr><th width="150">一键延时增加时间 :</th><td><input type="text" name="setting[item_add_time]" size="10" class="input-text" value="<?php echo C('ftx_item_add_time');?>" />&nbsp;&nbsp;小时&nbsp;&nbsp;<span class="gray">一般72小时，三天过期</span></td></tr><tr><th width="150">新浪微博地址 :</th><td><input type="text" name="setting[sina_url]" size="50" class="input-text" value="<?php echo C('ftx_sina_url');?>" />&nbsp;&nbsp;<span class="gray">新浪微博地址</span></td></tr><tr><th width="150">QQ空间地址 :</th><td><input type="text" name="setting[qzone_url]" size="50" class="input-text" value="<?php echo C('ftx_qzone_url');?>" />&nbsp;&nbsp;<span class="gray">QQ空间地址</span></td></tr><tr><th width="150">腾讯微博地址 :</th><td><input type="text" name="setting[tenxun_url]" size="50" class="input-text" value="<?php echo C('ftx_tenxun_url');?>" />&nbsp;&nbsp;<span class="gray">腾讯微博地址</span></td></tr><tr><th>网站主Logo :</th><td><input type="text" name="setting[site_logo]" id="J_logo_img" class="input-text fl mr10" size="50" value="<?php echo C('ftx_site_logo');?>"><div id="J_logo_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo C('ftx_site_logo');?>" id="show_logo_J_img" style="height:45px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td></tr><tr><th>顶部搜索框左则长图 :</th><td><input type="text" name="setting[site_navlogo]" id="J_navlogo_img" class="input-text fl mr10" size="50" value="<?php echo C('ftx_site_navlogo');?>"><div id="J_navlogo_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo C('ftx_site_navlogo');?>" id="show_navlogo_J_img" style="width:335px;height:25px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td></tr><tr><th>商品背景图片 :</th><td><input type="text" name="setting[site_flogo]" id="J_flogo_img" class="input-text fl mr10" size="50" value="<?php echo C('ftx_site_flogo');?>"><div id="J_flogo_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo C('ftx_site_flogo');?>" id="show_flogo_J_img" style="width:100px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td></tr><tr><th>右侧浮动导航手机二维码:</th><td><input type="text" name="setting[site_browser]" id="J_browser_img" class="input-text fl mr10" size="50" value="<?php echo C('ftx_site_browser');?>"><div id="J_browser_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo C('ftx_site_browser');?>" id="show_browser_J_img" style="width:128px;height:128px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td></tr><tr><th>报名中心LOGO :</th><td><input type="text" name="setting[user_logo]" id="J_user_img" class="input-text fl mr10" size="50" value="<?php echo C('ftx_user_logo');?>"><div id="J_user_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo C('ftx_user_logo');?>" id="show_user_J_img" style="width:260px;height:50px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td></tr><tr><th>网站底部二维码 :</th><td><input type="text" name="setting[site_weixin]" id="J_weixin_img" class="input-text fl mr10" size="50" value="<?php echo C('ftx_site_weixin');?>"><div id="J_weixin_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo C('ftx_site_weixin');?>" id="show_weixin_J_img" style="width:90px;height:90px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td></tr><tr><th></th><td><input type="hidden" name="menuid"  value="<?php echo ($menuid); ?>"/><input type="submit" class="smt mr10" name="do" value="<?php echo L('submit');?>"/></td></tr></table></form></div><script src="__STATIC__/js/jquery/jquery.js"></script><script src="__STATIC__/js/jquery/plugins/jquery.tools.min.js"></script><script src="__STATIC__/js/jquery/plugins/formvalidator.js"></script><script src="__STATIC__/js/ftxia.js"></script><script src="__STATIC__/js/admin.js"></script><script src="__STATIC__/js/dialog.js"></script><script>//初始化弹窗
(function (d) {
    d['okValue'] = lang.dialog_ok;
    d['cancelValue'] = lang.dialog_cancel;
    d['title'] = lang.dialog_title;
})($.dialog.defaults);
</script><?php if(isset($list_table)): ?><script src="__STATIC__/js/jquery/plugins/listTable.js"></script><script>$(function(){
	$('.J_tablelist').listTable();
});
</script><?php endif; ?><script src="__STATIC__/js/fileuploader.js"></script><script type="text/javascript">$(function(){
    var upload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_logo_upload_img'),
        multiple: false,
        action: "<?php echo U('setting/ajax_upload');?>",
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
        	$('#J_logo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_logo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_logo_J_img').attr('src','/'+result.data);
        		$('#J_logo_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });


    var navupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_navlogo_upload_img'),
        multiple: false,
        action: "<?php echo U('setting/ajax_upload');?>",
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
        	$('#J_navlogo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_navlogo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_navlogo_J_img').attr('src','/'+result.data);
        		$('#J_navlogo_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

    var fupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_flogo_upload_img'),
        multiple: false,
        action: "<?php echo U('setting/ajax_upload');?>",
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
        	$('#J_flogo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_flogo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_flogo_J_img').attr('src','/'+result.data);
        		$('#J_flogo_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

	
	 var userupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_user_upload_img'),
        multiple: false,
        action: "<?php echo U('setting/ajax_upload');?>",
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
        	$('#J_user_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_user_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_user_J_img').attr('src','/'+result.data);
        		$('#J_user_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });
	


    var weixinupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_weixin_upload_img'),
        multiple: false,
        action: "<?php echo U('setting/ajax_upload');?>",
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
        	$('#J_weixin_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_weixin_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_weixin_J_img').attr('src','/'+result.data);
        		$('#J_weixin_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

    var browserupload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_browser_upload_img'),
        multiple: false,
        action: "<?php echo U('setting/ajax_upload');?>",
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
        	$('#J_browser_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_browser_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_browser_J_img').attr('src','/'+result.data);
        		$('#J_browser_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

});
</script></body></html>