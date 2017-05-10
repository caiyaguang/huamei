<?php if (!defined('THINK_PATH')) exit();?><!--编辑会员--><div class="dialog_content"><form id="info_form" action="<?php echo u('user/edit');?>" method="post"><table width="100%" class="table_form"><tr><th width="100">会员昵称 :</th><td><?php echo ($info["username"]); ?></td></tr><tr><th>会员头像 :</th><td><input type="text" name="img" id="J_img" class="input-text fl mr10" size="30" value="<?php echo ($info["img"]); ?>"><div id="J_upload_img" class="upload_btn"><span><?php echo L('upload');?></span></div><img src="<?php echo avatar($info['id'], 32);?>" /><?php if(!empty($info['img'])): ?><span class="attachment_icon J_attachment_icon" file-type="image" file-rel="<?php echo avatar($info['id'], 32);?>"><img src="__ROOT__/statics/images/filetype/image_s.gif" /></span><?php endif; ?></td></tr><tr><th>会员邮箱 :</th><td><input type="text" name="email" id="email" class="input-text" value="<?php echo ($info["email"]); ?>" size="30"></td></tr><tr><th>出生日期 :</th><td><input type="text" name="birthday" id="birthday" class="date input-text" value="<?php echo ($info["byear"]); ?>-<?php echo ($info["bmonth"]); ?>-<?php echo ($info["bday"]); ?>" size="27"></td></tr><tr><th>支付宝 :</th><td><input type="text" name="alipay" class="input-text" value="<?php echo ($info["alipay"]); ?>" size="30"></td></tr><tr><th>支付宝姓名 :</th><td><input type="text" name="name" class="input-text" value="<?php echo ($info["name"]); ?>" size="30"></td></tr><tr><th>账户余额 :</th><td><input type="text" name="money" class="input-text" value="<?php echo ($info["money"]); ?>" size="30"></td></tr><tr><th>积分 :</th><td><input type="text" name="score" class="input-text" value="<?php echo ($info["score"]); ?>" size="30"></td></tr><tr><th>用户类型 :</th><td><label><input type="radio" name="login_type" value="1" <?php if($info["login_type"] == 1): ?>checked<?php endif; ?>> 普通用户</label>&nbsp;&nbsp;
				<label><input type="radio" name="login_type" value="2" <?php if($info["login_type"] == 2): ?>checked<?php endif; ?>> 商家</label></td></tr><tr><th>性别 :</th><td><label><input type="radio" name="gender" value="1" <?php if($info["gender"] == 1): ?>checked<?php endif; ?>> 男</label>&nbsp;&nbsp;
				<label><input type="radio" name="gender" value="0" <?php if($info["gender"] == 0): ?>checked<?php endif; ?>> 女</label></td></tr><tr><th>新密码 :</th><td><input type="password" name="password" class="input-text" size="30"><label class="gray">&nbsp;&nbsp;不修改则留空</label></td></tr><tr><th>重复密码 :</th><td><input type="password" name="repassword" class="input-text" size="30"></td></tr><tr><th><?php echo L('enabled');?> :</th><td><label><input type="radio" name="status" value="1" <?php if($info["status"] == 1): ?>checked<?php endif; ?>><?php echo L('yes');?></label>&nbsp;&nbsp;
				<label><input type="radio" name="status" value="0" <?php if($info["status"] == 0): ?>checked<?php endif; ?>><?php echo L('no');?></label></td></tr></table><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>" /></form></div><script src="__STATIC__/js/fileuploader.js"></script><script>Calendar.setup({
    inputField : "birthday",
    ifFormat   : "%Y-%m-%d",
    showsTime  : true,
    timeFormat : "24"
});
var check_name_url = "<?php echo U('user/ajax_check_name', array('id'=>$info['id']));?>";
var check_email_url = "<?php echo U('user/ajax_check_email', array('id'=>$info['id']));?>";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#username").formValidator({onshow:'请填写用户名',onfocus:'请填写用户名'}).inputValidator({min:1,onerror:'请填写用户名'}).ajaxValidator({
	    type : "get",
		url : check_name_url,
		datatype : "json",
		async:'false',
		success : function(result){	
            if(result.status == 0){
                return false;
			}else{
                return true;
			}
		},
		onerror : '用户已经存在',
		onwait : '正在检测'
	}).defaultPassed();
	$("#email").formValidator({onshow:"请填写邮箱",onfocus:"请填写邮箱"}).inputValidator({min:1,onerror:"请填写邮箱"}).regexValidator({regexp:"email",datatype:"enum",onerror:"邮箱格式错误"}).ajaxValidator({
	    type : "get",
		url : check_email_url,
		datatype : "json",
		async:'false',
		success : function(result){	
            if(result.status == 0){
                return false;
			}else{
                return true;
			}
		},
		onerror : '邮箱已经存在',
		onwait : '正在检测'
	}).defaultPassed();
	
	$('#info_form').ajaxForm({success:complate,dataType:'json'});
	function complate(result){
		if(result.status == 1){
			$.dialog.get(result.dialog).close();
            $.ftxia.tip({content:result.msg});
            window.location.reload();
		} else {
			$.ftxia.tip({content:result.msg, icon:'alert'});
		}
	}
	
	//上传图片
    var uploader = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "<?php echo U('user/ajax_upload_imgs');?>",
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
        	$('#J_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
        		$('#J_img').val(result.data);
        	} else {
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });
});
</script>