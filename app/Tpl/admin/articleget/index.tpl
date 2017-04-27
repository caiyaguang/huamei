<include file="public:header" />
<div class="subnav">
<h1 class="title_2 line_x">潮流时尚杂志采集-华美网络</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('articleget/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		  <tr>
            <th width="150">选择文章分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('article_cate/ajax_getchilds', array('type'=>0))}"></select>
			<input type="hidden" name="cate_id" id="J_cate_id" value="0" />
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
    var collect_url = "{:U('articleget/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'articleget', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.huamei.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('articleget').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('articleget').close();
                $.huamei.tip({content:result.msg});
            }
        });
    }   
});
 $('.J_cate_select').cate_select({field:'J_cate_id'});	
</script>
</body>
</html>