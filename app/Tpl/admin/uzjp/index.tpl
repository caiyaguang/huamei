<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">卷皮-U站采集</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('uzjp/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">选择卷皮尺U站分类 :</th>
            <td>
            	<select name="uzjp_cate_id">
                <option value="">--请选择--</option>
				<option value="女装">女装</option>
				<option value="男装">男装</option>
                <option value="鞋包配饰">鞋包配饰</option>		
            	<option value="母婴">母婴</option>
				<option value="居家">居家</option>
				<option value="美食">美食</option>			
				<option value="美妆">美妆</option>	
				<option value="数码家电">数码家电</option>
				<option value="文体">文体</option>
                </select>
             </td>
        </tr>
        <tr>
            <th width="150">选择本站对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
		<tr>
            <th width="150">姓别 :</th>
           <td>
           <select name="sex">
		   <option value="0">无</option>
			<option value="1">男</option>
			<option value="2">女</option>			
            </select>
           </td>
        </tr>
		
		<tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $start_time = date('Y-m-d H:i:s');?>"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $end_time = date('Y-m-d H:i:s',strtotime('+15 day')); ?>"/></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集卷皮尺官方U站的商品，同步获取卖家旺旺和卖家数字ID。采集过程中会自动过虑已存在的商品和信息不完整的商品，所以运行过程时间会长一点，视个人网站服务器配置情况而定，如果响应时间过长，请刷新后重新采集，或重启服务器重新采集，建议选择网络不繁忙的时段进行采集。华美网络提供技术支持、</h2>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('uzjp/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'uzjp', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('uzjp').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('uzjp').close();
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
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M:%S",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M:%S",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
</body>
</html>