<div class="dialog_content">
<form id="info_form" action="{:u('tag/edit')}" method="post">
<div class="common-form">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
        <tr>
			<th width="50">标签 :</th>
			<td><input type="text" name="name" id="name" class="input-text" size="30" value="{$info.name}"></td>
		</tr>
		 <tr>
			<th width="50">拼音 :</th>
			<td><input type="text" name="ename" id="ename" class="input-text" size="30" value="{$info.ename}"></td>
		</tr>
	</table>
</div>
<input type="hidden" name="id" value="{$info.id}" />
</form>
</div>
<script type="text/javascript">
var check_name_url = "{:U('tag/ajax_check_name', array('id'=>$info['id']))}";
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#name").formValidator({onshow:"请填写标签",onfocus:"请填写标签"}).inputValidator({min:1,onerror:"请填写标签"}).ajaxValidator({
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
		buttons: $("#dosubmit"),
		onerror : "标签已经存在",
		onwait : "正在验证"
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
});
</script>