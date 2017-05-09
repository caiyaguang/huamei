<!--添加栏目-->
<div class="dialog_content col_tab">
<form id="info_form" action="{:U('payzhe/addSubmit')}" method="post">
	<ul class="J_tabs tab_but cu_li">
		<li class="current">基础信息</li>
		<li>套餐设置</li>
		<li>图片上传</li>
	</ul>
	<div class="J_panes">
        <div class="content_list pad_10">
	<table width="100%" class="table_form">
		<tr>
			<th>活动名称 :</th>
			<td>
				<input type="text" name="name" id="J_name" class="input-text" size="30">
			</td>
		</tr>
		
		 <tr>
			<th>支付类型 :</th>
			<td>
				<select name="paytype" class="J_tbcats mr10">
				    <option value="1">支付宝付款</option>
				    <option value="2">微信转账</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>收款帐号 :</th>
			<td>
				<input type="text" name="alipay" id="alipay" class="input-text" size="30">
			</td>
		</tr>
		<tr>
			<th width="100">店铺类型 :</th>
			<td>
 
				<volist name="typeList" id="vol">
				    <label>
				    	<input type="checkbox" name="type[]" value="{$vol.type}" checked>{$vol.name}
				    </label>
				</volist>
				<span class="red"> &nbsp;&nbsp;&nbsp;可设置支持店铺报名类型</span>
			</td>
		</tr>
	</table>
	</div>
	
	<div class="content_list pad_10 hidden">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		<tr>
			<th>活动价格:</th>
			<td>
			   <input type="text" name="price" id="price"  class="input-text" size="25"> 
			</td>
		</tr>
		<tr>
			<th>活动周期 :</th>
			<td>
				 <input type="text" name="days"  id="days" class="input-text" size="10">&nbsp;&nbsp;天
			</td>
		</tr>
		<tr>
			<th>展示地址 :</th>
			<td>
				 <input type="text" name="booth"  class="input-text" size="60">
			</td>
		</tr>
		<tr>
            <th>要求 :</th>
            <td><textarea name="requirement" id="requirement" cols="50" rows="4"></textarea></td>
        </tr>
	</table>
	</div>
	<div class="content_list pad_10 hidden">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
		<tr>
			<th>二维码:</th>
			<td>
			<input type="text" name="pic_url" id="J_cate_img" class="input-text fl mr10" style="width:250px" value="">
			<div id="J_cate_upload_img" class="upload_btn"><span>{:L('upload')}</span></div>
			</td>
 
			<td><img src="" id="show_cate_J_img" style="height:35px;"/><span class="attachment_icon J_attachment_icon" file-type="image" ></span>
		</td>
		</tr>
	</table>
	</div>
        </div>
	</form>
</div>

<script>
$(function(){
	$('ul.J_tabs').tabs('div.J_panes > div');
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$('#J_name').formValidator({onshow:"活动名称",onfocus:"活动名称"}).inputValidator({min:1,onerror:"活动名称"});
	
	$('#alipay').formValidator({onshow:"请填写收款帐号",onfocus:"请填写收款帐号"}).inputValidator({min:1,onerror:"请填写收款帐号"});

	$('#price').formValidator({onshow:"支付价格",onfocus:"支付价格"}).inputValidator({min:1,onerror:"支付价格"});

	$('#days').formValidator({onshow:"活动周期",onfocus:"活动周期"}).inputValidator({min:1,onerror:"活动周期"});

	//分类联动
	$('.J_cate_select').cate_select();
});
</script>
<script src="__STATIC__/js/fileuploader.js"></script>
<script type="text/javascript">
$(function(){
    var upload = new qq.FileUploaderBasic({
    	allowedExtensions: ['jpg','gif','png'],
        button: document.getElementById('J_cate_upload_img'),
        multiple: false,
        action: "{:U('payzhe/ajax_upload')}",
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