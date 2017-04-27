<include file="public:header" />
<div class="subnav">
<h1 class="title_2 line_x">批量申请定向计划(申请理由必填，申请之前需先在采集设置中设置阿里妈妈cookies和网站ID、推广位ID)<a href="http://bbs.138gzs.com/thread-7590-1-1.html" target="_blank">查看教程。</a></h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('jctata/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
	     <tr>
            <th width="150">填写申请理由 :</th>
            <td><textarea rows="10" cols="100" name="applyreason"></textarea></td>
        </tr>		
        <tr>
            <th width="150">选择商品分类 :</th>
            <td>
			<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>
			 <input type="hidden" name="cate_id" id="J_cate_id" />
			</td>
        </tr>	
		
		<tr>
          <th>商品ID起始范围 :</th>
          <td>
		  <input type="text" name="fid" size="10" class="input-text" value="1"/> - 
          <input type="text" name="eid" size="10" class="input-text" value="1000"/>
		  <span class="red">商品站内ID，即商品管理列表中商品图片前面的数字ID</span>
		  </td>
          </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="开始申请" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
   
    </form>	
</div>
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择');
$(function(){
    var collect_url = "{:U('jctata/jchuamei')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'jctata', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.huamei.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('jctata').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('jctata').close();
                $.huameiip({content:result.msg});
            }
        });
    }
});
</script>
</body>
{$copy_right.title}　
</html>