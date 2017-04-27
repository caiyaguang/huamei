<!--移动栏目-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('brand_items/pass')}" method="post">
	<table width="100%" class="table_form">
		<tr> 
	<th width="90">批量设置状态 :</th>
	<td>
	<select name="pass" class="J_cate_select mr10">
	<option value="0">不显示</option>
	<option value="1">显示</option></td>
	</tr>
	</table>	
	<input type="hidden" name="ids" value="{$ids}" />
	</form>
</div>
<script>
$(function(){
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