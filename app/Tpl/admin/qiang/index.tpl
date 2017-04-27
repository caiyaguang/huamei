<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">qiang-U站采集</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('qiang/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">选择U站分类 :</th>
            <td><select class="J_qiang_select mr10" data-pid="0" data-uri="{:U('qiang_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th width="150">选择本站对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />
	<input type="hidden" name="qiang_cate_id" id="J_qiang_cate_id" value="0" />
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集U站秒杀专区（http://qiang.uz.taobao.com）的商品。</h2>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('qiang/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'qiang', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('qiang').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('qiang').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
	$('.J_qiang_select').qiang_select({field:'J_qiang_cate_id'});
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>