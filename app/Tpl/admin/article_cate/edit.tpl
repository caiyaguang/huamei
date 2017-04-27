<!--编辑栏目-->
<div class="dialog_content">
	<form id="info_form" action="{:u('article_cate/edit')}" method="post">
	<table width="100%" class="table_form">
		<tr>
			<th width="120">{:L('article_cate_parent')} :</th>
			<td>
				<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('article_cate/ajax_getchilds')}" data-selected="{$info.spid}"></select>
				<input type="hidden" name="pid" id="J_cate_id" />
			</td>
		</tr>
		<tr>
			<th>{:L('article_cate_name')} :</th>
			<td><input type="text" name="name" id="name" class="input-text" value="{$info.name}" size="30"></td>
		</tr>
        <tr><th>图标:</th>	
			<td><input type="text" name="cateimg" id="J_cate_img" class="input-text fl mr10" style="width:250px" value="{$info.cateimg}"></td>
            <td><div id="J_cate_upload_img" class="upload_btn"><span>{:L('upload')}</span></div></td>
			<td><img src="{$info.cateimg}" id="show_cate_J_img" style="height:35px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
		</tr>
	    <tr>
			<th>{:L('enabled')} :</th>
			<td>
				<label><input type="radio" name="status" value="1" <if condition="$info.status eq 1">checked</if> > {:L('yes')}</label>&nbsp;&nbsp;
				<label><input type="radio" name="status" value="0" <if condition="$info.status eq 0">checked</if> > {:L('no')}</label>
			</td>
		</tr>
		<tr>
			<th>{:L('seo_title')} :</th>
			<td><input type="text" name="seo_title" id="seo_title" class="input-text" value="{$info.seo_title}" size="50"></td>
		</tr>
		<tr>
			<th>{:L('seo_keys')} :</th>
			<td><input type="text" name="seo_keys" id="seo_keys" class="input-text" value="{$info.seo_keys}" size="50"></td>
		</tr>
		<tr>
			<th>{:L('seo_desc')} :</th>
			<td><textarea name="seo_desc" style="width:300px; height:50px;">{$info.seo_desc}</textarea></td>
		</tr>
	</table>
	<input type="hidden" name="id" value="{$info.id}" />
	</form>
</div>
<script src="__STATIC__/js/fileuploader.js"></script>
<script>
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#name").formValidator({onshow:lang.please_input+lang.article_cate_name,onfocus:lang.please_input+lang.article_cate_name}).inputValidator({min:1,onerror:lang.please_input+lang.article_cate_name}).defaultPassed();
	
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
	$('.J_cate_select').cate_select();
	
	//上传图片
    var upload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_cate_upload_img'),
        multiple: false,
        action: "{:U('article_cate/ajax_upload')}",
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
        	$('#J_cate_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_cate_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_cate_J_img').attr('src','/'+result.data);
        		$('#J_cate_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });
});
</script>