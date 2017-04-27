<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">淘牛品-U站采集</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('niup/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">选择U站分类 :</th>
            <td><select class="J_niup_select mr10" data-pid="0" data-uri="{:U('niup_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th width="150">选择本站对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
		<tr>
            <th width="150">分批采集范围 :</th>
           <td>           
            <input type="text" name="start" size="5" class="input-text" value="0"/> - 
            <input type="text" name="end" size="5" class="input-text" value="40"/> 
            <span class="red ml10">分批采集起止范围，最高40</span>                      
           </td>
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
	<input type="hidden" name="niup_cate_id" id="J_niup_cate_id" value="0" />
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集淘牛品U站（http://tealife.uz.taobao.com）的商品。华美网络独立开发。</h2>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('niup/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'niup', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('niup').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('niup').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
	$('.J_niup_select').niup_select({field:'J_niup_cate_id'});
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