<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">品牌团批量采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('brandcaiji/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">选择采集的分类 :</th>
            <td>
		   <select name="brand_cat">		   
		   <option value="261000">时尚女士</option>
		   <option value="262000">精品男士</option>
		   <option value="264000">鞋包运动</option>
		   <option value="265000">内衣配饰</option>
		   <option value="266000">母婴童装</option>
		   <option value="267000">美妆珠宝</option>
		   <option value="268000">食品百货</option>
		   <option value="269000">数码家电</option>
		   <option value="270000">家装车品</option>		   	  
           </select>
			
			</td>
        </tr>
        <tr>
            <th width="150">选择本站对应分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('brand_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />	
    </form>	
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('brandcaiji/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'brandcaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('brandcaiji').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('brandcaiji').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>