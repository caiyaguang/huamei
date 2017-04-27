<include file="public:header" />
<div class="subnav">
<h1 class="title_2 line_x">品牌团商品采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('branditem/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">       
		    <tr>
            <th width="150">品牌 :</th>			
            <td>
			<select class="J_brand_select mr10" name="id">	
			<volist name="brandlist" id="val" key="i" mod="3">
			<option value="{$val.id}">{$val.title}</option>	
			</volist>	
			</select>
			<span class="red ml10">必选，请选择需要采集的品牌。</span>
			</td>			
			<span class="red ml10">请先采集品牌。</span>
        </tr>           
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
    var collect_url = "{:U('branditem/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'branditem', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('branditem').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('branditem').close();
                $.ftxia.tip({content:result.msg});
                window.location.reload();//增加的一句代码（这句代码意思是刷新页面）
            }
        });
}

$('#J_info_form').submit();//增加的一句代码（这句代码意思提交表单）
});
</script>
</body>
</html>