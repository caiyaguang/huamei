<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
	<h1 class="title_2 line_x">惠品折官方采集-华美网络提供技术</h1>
</div>
<div class="pad_lr_10">
	<form id="J_info_form" action="{:U('hpz/setting')}" method="post">
	<table width="100%" cellspacing="0" class="table_form">
		<tr>
			<th width="150">采集源 :</th>
			<td>
			<select name="fors">
			<option value="1" selected="selected">惠品折官网</option>
			</select>
			</td>
		</tr>
		<tr>
			<th width="150">选择惠品折分类 :</th>
			<td>
            <select name="hpz_cate_id">
            <?php foreach ($hpzcate as $key => $value): ?>
            <option value="<?=$key?>"><?=$value?></option>
            <?php endforeach; ?>
            </select>
			</td>
		</tr>
		<tr>
			<th width="150">选择本站对应分类 :</th>
			<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
		</tr>
		<tr>
		  <th>设置开始时间 :</th>
		  <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
		  </tr>
		<tr>
		   <th>设置结束时间 :</th>
		   <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>"/></td>
		</tr>
		<tr>
			<th></th>
			<td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
		</tr>
	</table>
	<input type="hidden" name="cate_id" id="J_cate_id" value="0" />
	</form>
	<br><br>
	<h2>友情提示：本插件是直接采集惠品折官方商品［<a href="http://bbs.138gzs.com/" target="_blank">由华美网络官方提供技术支持</a>］</h2>
</div>
<include file="public:footer" />
<script>
$(function(){
	var collect_url = "{:U('hpz/collect')}";
	$('#J_info_form').ajaxForm({success:complete, dataType:'json'});
	var p = 2;
	function complete(result){
		if(result.status == 1){
			$.dialog({id:'hpz', title:result.msg, content:result.data, padding:'', lock:true});
			p = 2;
			collect_page();
		} else {
			$.ftxia.tip({content:result.msg, icon:'alert'});
		}
	}
	function collect_page(){
		$.getJSON(collect_url, {p:p}, function(result){
			if(result.status == 1){
				$.dialog.get('hpz').content(result.data);
				p++;
				collect_page(p);
			}else{
				$.dialog.get('hpz').close();
				$.ftxia.tip({content:result.msg});
			}
		});
	}
	//分类联动
	$('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
<script language="javascript" type="text/javascript">
							Calendar.setup({
								inputField	 :	"coupon_start_time",
								ifFormat	   :	"%Y-%m-%d %H:%M:%S",
								showsTime	  :	'true',
								timeFormat	 :	"24"
							});
</script>
<script language="javascript" type="text/javascript">
							Calendar.setup({
								inputField	 :	"coupon_end_time",
								ifFormat	   :	"%Y-%m-%d %H:%M:%S",
								showsTime	  :	'true',
								timeFormat	 :	"24"
							});
</script>
</body>
</html>