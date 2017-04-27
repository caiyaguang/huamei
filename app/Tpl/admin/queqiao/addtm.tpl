<!--移动栏目-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('queqiao/addtm')}" method="post">
	<table width="100%" class="table_form">
		<tr>
            <th>设置开始时间 :</th>
            <td><input type="text" name="coupon_start_time" id="c_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
            </tr>
            <tr>
            <th>设置结束时间 :</th>
            <td><input type="text" name="coupon_end_time" id="c_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>"/></td>
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
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "c_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "c_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>