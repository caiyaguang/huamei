<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:U('kulist/setting')}" method="post">
	<table width="100%" class="table_form">
	       <tr> 
			<th>分类 :</th>
			<td><select id="J_cate_select" class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds')}"></select>
			<input type="hidden" name="cate_id" id="J_cate_id" value="" />
			</td>
		  </tr>
		   <tr>
			<th></th>
			<td>		
			<input type="hidden" name="eventId" value="{$eventId}" />	
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
    var collect_url = "{:U('kulist/getitem')}";
    $('#info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
		    $.dialog.get('caiji').close();
            $.dialog({id:'collect', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.yangtata.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('collect').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('collect').close();
                $.yangtata.tip({content:result.msg});
            }
        });
    }
});
</script>