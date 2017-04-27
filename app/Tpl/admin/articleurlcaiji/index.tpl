<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">穿衣搭配文章链接批量采集</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('articleurlcaiji/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
            <th width="150">关键词 :</th>
            <td><input name="keyword" type="text" class="input-text" size="50" />
			<span class="red ml10">关键词列表：http://www.chong4.com.cn/tag.php</span>
			</td>
        </tr>
		<tr>
            <th>采集页数：</th>
                <td>
				    <select name="page">
						<?php for($a=1;$a<=1000;$a++){?>
						<option value="<?=$a?>" <if condition="1 eq $a"> selected</if> >采集<?=$a?>页</option>
						<?php 
						}
						?>
                    </select>
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
    var collect_url = "{:U('articleurlcaiji/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'articleurlcaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('articleurlcaiji').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('articleurlcaiji').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
  
});
</script>
</body>
</html>