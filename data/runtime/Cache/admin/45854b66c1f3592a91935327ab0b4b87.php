<?php if (!defined('THINK_PATH')) exit();?><!--移动栏目--><div class="dialog_content"><form id="J_check_form" name="info_form" action="<?php echo U('items/getcheck');?>" method="post"><table width="100%" cellpadding="3" cellspacing="1" class="table_form"><tr><th width="80">推荐理由 :</th><td><input type="text" name="intro" id="intro" class="input-text" size="50" value="<?php echo ($item["intro"]); ?>"></td><td width="90"></td></tr><tr><th width="80">审核选项 :</th><td><input type="radio" value="1" name="pass" class="radio" id="passed"><label for="passed" class="radio_lalel">审核通过</label>&nbsp;&nbsp;&nbsp;
					<input type="radio" value="2" name="pass" class="radio" id="fpass"><label for="fpass" class="radio_lalel">初审通过</label>&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="0" name="pass" id="fail" class="radio" checked><label for="fail" class="radio_lalel">退回</label></td><td></td></tr><tr class="failed"><th width="80">退回原因 :</th><td><textarea name="fail_reason" cols="48" rows="5"></textarea></td></tr><tr class="fpassd"><th width="80">初审通知 :</th><td><textarea name="fpass_reason" cols="48" rows="5"><?php echo ($item["fail_reason"]); ?></textarea></td></tr><tr class="check_pass"><th width="80">标题 :</th><td><input type="text" name="title" id="title" value="<?php echo ($item["title"]); ?>" class="input-text" size="50"></td><td></td></tr><tr class="check_pass"><th width="80">活动开始 :</th><td><input type="text" name="coupon_start_time" id="coupon_start_time" class="date" size="20"  value="<?php echo (date('Y-m-d H:i',$item["coupon_start_time"])); ?>"></td><td></td></tr><tr class="check_pass"><th width="80">活动结束 :</th><td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" size="20"  value="<?php echo (date('Y-m-d H:i',$item["coupon_end_time"])); ?>"></td><td></td></tr><tr><th width="80"></th><td><input type="hidden"  name="num_iid" id="J_num_iid"value="<?php echo ($item["num_iid"]); ?>"><input type="hidden"  name="id" value="<?php echo ($item["id"]); ?>" /><input type="submit"  class="smt"   value="审核"></td><td></td></tr></table></form></div><script>$(function(){


	Calendar.setup({
	     inputField     :    "coupon_start_time",
	     ifFormat       :    "%Y-%m-%d %H:%M",
	     showsTime      :    'true',
	     timeFormat     :    "24"
	});

	Calendar.setup({
	     inputField     :    "coupon_end_time",
	     ifFormat       :    "%Y-%m-%d %H:%M",
	     showsTime      :    'true',
	     timeFormat     :    "24"
	});


 

	$('#J_check_form').ajaxForm({success:complate,dataType:'json'});
	function complate(result){
		if(result.status == 1){
			//$.dialog.get(result.dialog).close();
			$.ftxia.tip({content:result.msg});
			window.location.reload();
		} else {
			$.ftxia.tip({content:result.msg, icon:'alert'});
		}
	}

	
	$('#J_getclick_url').live('click', function() {
		var iid = $.trim($('#J_num_iid').val());
		if(iid == ''){
			$.ftxia.tip({content:lang.iid_empty, icon:'alert'});
			return false;
		}
		$.getJSON('<?php echo U("items/ajax_getclick_url");?>', {iid:iid}, function(result){
			if(result.status == 1){
				$('#J_click_url').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});
	$(".check_pass").hide();
	$(".fpassd").hide();
	$('#passed').live('click', function() {
		$(".check_pass").show();
		$(".failed").hide();
		$(".fpassd").hide();	
	});
   $('#fpass').live('click', function() {
        $(".fpassd").show();		
		$(".check_pass").hide();
		$(".failed").hide();
	});
	$('#fail').live('click', function() {
		$(".check_pass").hide();
		$(".fpassd").hide();
		$(".failed").show();
	});


});
</script>