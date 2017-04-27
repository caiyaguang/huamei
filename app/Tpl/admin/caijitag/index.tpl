<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
<h1 class="title_2 line_x">标签采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('caijitag/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
	   <tr>
           <th width="150">搜索词 :</th>
           <td>
           <input name="q" type="text" class="input-text" size="50" />
           <span class="red ml10">请填写要采集的搜索词</span>
           </td>
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
    var collect_url = "{:U('caijitag/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'caijitag', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('caijitag').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('caijitag').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }    
});
</script>
</body>
</html>