<!--移动栏目-->
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('huameiso/caiji')}" method="post">
	<table width="100%" class="table_form">
		<tr> 
			<th>分类 :</th>
			<td><select id="J_cate_select" class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds')}"></select>
			<input type="hidden" name="cate_id" id="J_cate_id" value="" />
			</td>
		</tr>
		<tr>
		<th width="120">设置开抢时间:</th>
		<td> 
		<input type="text" name="starttime" id="starttime"  class="date" value="<?php echo $showtime=date('Y-m-d 10:00',strtotime('next day'));?>"/>						
		</td>
		</tr>
		<tr>
		<th width="120">设置结束时间:</th>
		<td> 
		<input type="text" name="endtime" id="endtime"  class="date" value="<?php echo $now = date('Y-m-d 10:00',strtotime('7 days')); ?>"/>						
		</td>
		</tr>
		<tr>
			<th></th>
			<td>		
			<input type="hidden"  name="num_iid" value="{$id}">			
			<input type="submit"  class="smt"   value="采集">
			</td>
			<td></td>
		</tr>
	</table>	
	</form>
</div>
<script>
$('#J_cate_select').cate_select({field:'J_cate_id'});
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
	                            inputField     :    "starttime",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
 <script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "endtime",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>