<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
<h1 class="title_2 line_x">鹊桥活动一键采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('queqiaocaiji/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form"> 
	    <tr>
           <th width="150">鹊桥推广url :</th>
           <td>
           <input name="url" type="text" class="input-text" size="100" />
           <span class="red ml10">采集教程h<a href="http://bbs.138gzs.com/thread-6331-1-1.html" target="_blank">ttp://bbs.138gzs.com/thread-6331-1-1.html</a></span></td>
        </tr>
        <tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('3 weeks')); ?>"/></td>
        </tr>		
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>   
    </form>	
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('queqiaocaiji/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'queqiaocaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('queqiaocaiji').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('queqiaocaiji').close();
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

</body>
</html>