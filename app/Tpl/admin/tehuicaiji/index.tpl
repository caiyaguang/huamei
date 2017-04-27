<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
<h1 class="title_2 line_x">爱淘宝特惠商品采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('tehuicaiji/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
           <th width="150">分类 :</th>
           <td>
           <select name="cat_id">		
		    <option value="4001">女装</option>
			<option value="4002">鞋包(女)</option>
			<option value="4003">内衣(女)</option>		
            <option value="4004">配饰(女)</option>
			<option value="4005">运动(女)</option>	
			<option value="5001">男装</option>
			<option value="5002">鞋包(男)</option>
			<option value="5003">内衣(男)</option>
			<option value="5004">配饰(男)</option>
			<option value="5005">运动(男)</option>
			<option value="8001">百货</option>
			<option value="8002">居家</option>
			<option value="8003">食品</option>
			<option value="1001">童装</option>
			<option value="1002">玩具</option>
			<option value="1003">营养</option>
			<option value="1004">用品</option>
			<option value="1005">孕装</option>
			<option value="3001">数码</option>
			<option value="3002">电器</option>			
            </select>
           </td>
        </tr>
        <tr>
            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('tehui_cate/ajax_getchilds', array('type'=>0))}"></select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>      		
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />	
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集爱淘宝特惠频道的商品［http://ai.taobao.com/sales/index.htm］。</h2>
	<br><br><br>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('tehuicaiji/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'tehuicaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('tehuicaiji').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('tehuicaiji').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>