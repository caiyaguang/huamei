<!--移动栏目-->
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('huameiso/setting')}" method="post">
	<table width="100%" class="table_form">
	       <tr> 
			<th>分类 :</th>
			<td><select id="J_cate_select" class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds')}"></select>
			<input type="hidden" name="cate_id" id="J_cate_id" value="" />
			</td>
		  </tr>
		   <tr>
            <th>设置开始时间 :</th>
            <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i");?>"/></td>
            </tr>
            <tr>
            <th>设置结束时间 :</th>
            <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i',strtotime('7 days')); ?>"/></td>
            </tr>
	 </table>	
	     <input type="hidden" name="ids" value="{$ids}" />
		 <input type="hidden" name="menuid" value="{$menuid}" />
		 <input type="hidden" name="p" value="{$p}" />
	</form>
</div>

<script>
$('#J_cate_select').cate_select({field:'J_cate_id'});
$(function(){
    var collect_url = "{:U('huameiso/docaiji')}";
    $('#info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
		    $.dialog.get('allcaiji').close();
            $.dialog({id:'docaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('docaiji').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('docaiji').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
});
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>