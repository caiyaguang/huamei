<include file="public:header" />
<!--添加商品-->
<div class="subnav">
    <h1 class="title_2 line_x">批量URL添加商品</h1>
</div>
<style type="text/css">
	.input-num {width: 60px;}
	.log1 {color: green;}
	.log0 {color: red;}
	.total {margin: 5px 10px; font-size: 13px;}
	.total font {font-weight: bold; font-size: 14px;}
</style>
<input type="hidden" name="menuid" value="{$menuid}"/>
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本信息</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="80">所属分类 :</th>
				<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" /></td>
				<th>30天销量随机范围 :</th>
				<td>
					<input type="text" name="volume" id="volume1" class="input-text input-num" size="10" value="1000" > ~
					<input type="text" name="volume" id="volume2" class="input-text input-num" size="10" value="5000" >
				</td> 
				<th>点击量随机范围 :</th>
				<td>
					<input type="text" name="hits" id="hits1" class="input-text input-num" size="10" value="10000"> ~
					<input type="text" name="hits" id="hits2" class="input-text input-num" size="10" value="30000">
				</td>
			</tr>
			<tr>
				<th width="80">开始时间 :</th>
				<td><input type="text" name="coupon_start_time" id="coupon_start_time" size="20" class="date" value="<?php {echo date("Y-m-d H:i",time());} ?>"></td>
				<th>结束时间 :</th>
				<td><input type="text" name="coupon_end_time" id="coupon_end_time" size="20" class="date" value="<?php {echo date("Y-m-d H:i",time()+560000);} ?>"></td>
			</tr>

			<tr>
				<th width="80">宝贝链接：</th>
				<td colspan="6">
					<textarea rows="5" id="good_link" name="link" class="input-text" style="width: 90%;"></textarea><br/>
					<p id="good_link_error" style="display:none;" class="onError">错误</p>
				</td>
			</tr>
		</table>
		</div>
        </div>
		<div class="mt10">
			<input type="submit" id="J_get_info" value="批量采集导入" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px; float: none;">
			<input type="submit" id="J_set_auth" value="批量采集导入" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px; float: none; display: none;">
		</div>
	</div>
</div>
<div class="total">
	采集任务总数：<font id='nTotal'>0</font>&nbsp;&nbsp;
	处理中：<font id='nProcess' color="blue">0</font>&nbsp;&nbsp;
	成功：<font id='nOk' color="green">0</font>&nbsp;&nbsp;
	已存在：<font id='nExists' color="green">0</font>&nbsp;&nbsp;
	失败：<font id='nFail' color="red">0</font>
</div>
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">采集日志</li>
		</ul>
        <div class="content_list pad_10 log_list">
        </div>
	</div>
</div>
<include file="public:footer" />
<script type="text/javascript">
	var auth = 1;
	var batchUrl = '{:U("collect/batch")}',
		authUrl = '{:U("collect/setAuth")}',
		ajaxUrl = '{:U("collect/ajax_batch")}';
Date.prototype.format =function(format) {
    var o = {
        "M+" : this.getMonth()+1,
        "d+" : this.getDate(),
        "H+" : this.getHours(),
        "m+" : this.getMinutes(),
        "s+" : this.getSeconds(),
        "q+" : Math.floor((this.getMonth()+3)/3),
        "S" : this.getMilliseconds()
    }
    if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
    (this.getFullYear()+"").substr(4- RegExp.$1.length));
    for(var k in o)if(new RegExp("("+ k +")").test(format))
    format = format.replace(RegExp.$1,
    RegExp.$1.length==1? o[k] :
    ("00"+ o[k]).substr((""+ o[k]).length));
    return format;
}
</script>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
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
<script type="text/javascript" src="static/js/batch.js"></script>
{$authScript}
</body>
</html>