<div class="dialog_content">
	<form id="info_form" action="{:u('user/add_money')}" method="post">
	<table width="100%" class="table_form">
		<tr>
			<th width="100">会员昵称 :</th>
			<td>{$info.username}</td>
		</tr>
        <tr>
			<th>当前余额 :</th>
			<td>{$info.money}</td>
		</tr>
        <tr>
			<th>充值金额 :</th>
			<td><input type="text" name="addmoney" class="input-text" size="10"></td>
		</tr>
	</table>
	<input type="hidden" name="id" value="{$info.id}" />
	</form>
</div>
<script>
  
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	 
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