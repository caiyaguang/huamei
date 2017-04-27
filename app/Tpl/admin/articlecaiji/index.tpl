<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">穿衣搭配采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('articlecaiji/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">		
	   <tr>
            <th width="150">选择文章分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('article_cate/ajax_getchilds', array('type'=>0))}"></select>
			<input type="hidden" name="cate_id" id="J_cate_id" value="0" />
			</td>
        </tr>
	    <tr>
            <th width="150">未采集的链接ID范围 :</th>
            <td>
			<input type="text" name="start" size="10" class="input-text" value="1"/> - 
            <input type="text" name="end" size="10" class="input-text" value="100"/>  
			<span class="red ml10">请填定未采集的文章链接ID起止范围</span>
			</td>
        </tr>
		<tr>
            <th width="150">文章作者 :</th>
            <td>			
            <input type="text" name="author" size="50" class="input-text" value=""/>  
			<span class="red ml10">要显示的文章作者名称</span>
			</td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    	
    </form>	
</div>
<div class="pad_10" >

 <div class="J_tablelist table_list" data-acturi="{:U('items/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width=25><span data-tdtype="order_by" data-field="id">ID</span></th>                
                <th width=100><span data-tdtype="order_by" data-field="title">文章标题</span></th>
                <th width="200">文章链接</th>                
                <th width="120"><span data-tdtype="order_by" data-field="pass">链接状态</span></th>				
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>                
                <td align="center"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit">{$val.title}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="url" data-id="{$val.id}" class="tdedit">{$val.url}</span></td>	
				<td align="center"><span><if condition="$val.pass eq '0' "><span style="color:gary">已采集</span></if><if condition="$val.pass eq '1' "><span style="color:red">未采集</span></if></td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">       
        <div id="pages">{$page}</div>
    </div>

</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('articlecaiji/caiji')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'articlecaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('articlecaiji').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('articlecaiji').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    $('.J_cate_select').cate_select({field:'J_cate_id'});	
});
</script>
</body>
</html>