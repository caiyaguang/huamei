<!--菜单添加-->

<div class="dialog_content">

	<form id="info_form" name="info_form" action="{:U('nav/add')}" method="post">

    <table width="100%" class="table_form">

        <tr>

            <th width="100">{:L('nav_name')} :</th>

            <td><input type="text" name="name" id="J_name" class="input-text"></td>

        </tr>

        <tr>

            <th>{:L('alias')}</th>

            <td><input type="text" name="alias" class="input-text"></td>

        </tr>

       

        <tr>

            <th>{:L('nav_link')} :</th>

            <td><input type="text" name="link" id="J_link" class="input-text" size="30"></td>

        </tr>

       

        <tr>

            <th>{:L('nav_type')} :</th>

            <td>

                <label><input type="radio" name="type" class="radio_style" value="main" checked="checked">&nbsp;{:L('nav_type_main')}&nbsp;&nbsp;&nbsp;</label>

                <label><input type="radio" name="type" class="radio_style" value="top">&nbsp;{:L('nav_type_top')}&nbsp;&nbsp;&nbsp;</label>

               <label><input type="radio" name="type" class="radio_style" value="wap">&nbsp;手机左侧导航</label>

                <label><input type="radio" name="type" class="radio_style" value="other">&nbsp;手机首页图标&nbsp;&nbsp;&nbsp;</label>

             

                

            </td>

        </tr>

         <tr>

			<th>分类图标:</th>

			<td><input type="text" name="icon" id="J_cate_img" class="input-text fl mr10" style="width:230px" value="">

            <div id="J_cate_upload_img" class="upload_btn"><span>{:L('upload')}</span>&nbsp;<span class="red">手机首页图标</span></div>

            </td>

            

			<!--<td><img src="" id="show_cate_J_img" style="height:35px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span></td>-->

		</tr>

        <tr>


            


		</tr>

        <tr>


        <tr>

            <th>{:L('nav_target')} :</th>

            <td>

                <label><input type="radio" name="target" class="radio_style" value="1">&nbsp;{:L('yes')}&nbsp;&nbsp;&nbsp;</label>

                <label><input type="radio" name="target" class="radio_style" value="0" checked="checked">&nbsp;{:L('no')}</label>

            </td>

        </tr>

        <tr>

            <th>{:L('enabled')} :</th>

            <td>

                <label><input type="radio" name="status" class="radio_style" value="1" checked="checked">&nbsp;{:L('open')}&nbsp;&nbsp;&nbsp;</label>

                <label><input type="radio" name="status" class="radio_style" value="0">&nbsp;{:L('close')}</label>

            </td>

        </tr>

    </table>

    </form>

</div>



<script>

$(function(){

	$.formValidator.initConfig({formid:"info_form",autotip:true});

	$("#J_name").formValidator({ onshow:lang.please_input+lang.nav_name, onfocus:lang.please_input+lang.nav_name, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.nav_name});

	$("#J_link").formValidator({ onshow:lang.please_input+lang.nav_link, onfocus:lang.please_input+lang.nav_link, oncorrect:lang.input_right}).inputValidator({ min:1, onerror:lang.please_input+lang.nav_link});

		

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

})

</script>

<script src="__STATIC__/js/fileuploader.js"></script>

<script type="text/javascript">

$(function(){

    var upload = new qq.FileUploaderBasic({

    	allowedExtensions: ['jpg','gif','png'],

        button: document.getElementById('J_cate_upload_img'),

        multiple: false,

        action: "{:U('nav/ajax_upload')}",

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

	

	var upload = new qq.FileUploaderBasic({

    	allowedExtensions: ['jpg','gif','png'],

        button: document.getElementById('J_icon_upload_img'),

        multiple: false,

        action: "{:U('nav/ajax_upload')}",

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

        	$('#J_icon_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);

        },

        onComplete: function(id, fileName, result){

        	$('#J_icon_upload_img').removeClass('btn_disabled').find('span').text(lang.upload);

		if(result.status == '1'){

            		$('#show_icon_J_img').attr('src','/'+result.data);

        		$('#J_icon_img').val('/'+result.data);

        	}else{

        		$.ftxia.tip({content:result.msg, icon:'error'});

        	}

        }

    });

    

});

</script>