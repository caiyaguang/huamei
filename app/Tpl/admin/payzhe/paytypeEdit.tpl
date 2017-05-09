<!--添加栏目-->
<div class="dialog_content col_tab">
<form id="info_form" action="{:U('payzhe/paytypeEditSubmit')}" method="post">
	<div class="J_panes">
        <div class="content_list pad_10">
	<table width="100%" class="table_form">		
		<tr>
			<th>审核状态 :</th>
			<td>
				<label>
					<input type="radio" name="status" value="0" > 拒绝
				</label>&nbsp;&nbsp;
				<label>
					<input type="radio" name="status" value="1" checked> 通过
				</label>
			</td>
		</tr>
		 <tr>
			<th>商品状态 :</th>
			<td>
				<select name="paytype" class="J_tbcats mr10">
					<option value="2">不处理商品状态</option>
					<option value="1">商品同步通过</option>
				    <option value="0">商品不通过</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100">商品状态说明 :</th>
			<td>
				<span class="red">
				审核该订单可以同步处理商品，
				如果您选择审核通过  - 可以选择 - 【商品同步通过】 ，
				【或者不通过】，【或者不处理】</span>
			</td>
		</tr>
	</table>
	</div>

        </div>
        <input type="hidden" name="id" value="{$id}">
	</form>
</div>

<script>
$(function(){
	$('ul.J_tabs').tabs('div.J_panes > div');
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$('#J_name').formValidator({onshow:lang.please_input+lang.items_cate_name,onfocus:lang.please_input+lang.items_cate_name}).inputValidator({min:1,onerror:lang.please_input+lang.items_cate_name});
	
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