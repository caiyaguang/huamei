<include file="public:header" />
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post" enctype="multipart/form-data">
	<table width="100%" class="table_form">
		<tr>

        </tr> 
		<tr>
		<th width="150">关于我们LOGO :</th>
        <td>
            <input type="text" name="setting[wap_logo]" id="J_waplogo_img" class="input-text fl mr10" size="50" value="{:C('ftx_wap_logo')}">
            <div id="J_waplogo_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			<img src="{:C('ftx_wap_logo')}" id="show_waplogo_J_img" style="height:45px;"/>
			<span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
    	</tr>
		<tr>
            <th width="150">手机版SEO标题 :</th>
            <td><input type="text" name="setting[wap_title]" class="input-text" size="80" value="{:C('ftx_wap_title')}">			
			</td>
        </tr>
		<tr>
            <th width="150">手机版SEO关键词 :</th>
            <td><input type="text" name="setting[wap_keywords]" class="input-text" size="80" value="{:C('ftx_wap_keywords')}"></td>
        </tr>
		<tr>
            <th width="150">手机版SEO描述 :</th>
            <td>
			<textarea rows="4" cols="80" name="setting[wap_description]">{:C('ftx_wap_description')}</textarea>			
			</td>
        </tr> 

       
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
<script src="__STATIC__/js/fileuploader.js"></script>
<script type="text/javascript">
$(function(){
    var upload = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_pchpz_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
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
            $('#J_pchpz_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
            $('#J_pchpz_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
        if(result.status == '1'){
                    $('#show_pchpz_J_img').attr('src','/'+result.data);
                $('#J_pchpz_img').val('/'+result.data);
            }else{
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

    var upload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_waplogo_upload_img'),
        multiple: false,
        action: "{:U('setting/ajax_upload')}",
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
        	$('#J_waplogo_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
        	$('#J_waplogo_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);
		if(result.status == '1'){
            		$('#show_waplogo_J_img').attr('src','/'+result.data);
        		$('#J_waplogo_img').val('/'+result.data);
        	}else{
        		$.ftxia.tip({content:result.msg, icon:'error'});
        	}
        }
    });

});
</script>
</body>
</html>