<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
<h1 class="title_2 line_x">淘宝逛街采集</h1>
</div>
<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('guang/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
       <tr>
            <th width="150">关键词 :</th>
           <td>
           <input name="q" type="text" class="input-text" size="50" />
           <span class="red ml10">必填，多个关键词用空格隔开。</span>
           </td>
        </tr>
		<tr>
            <th width="150">类别 :</th>
           <td>
           <select name="type">
		   <option value="0">全部</option>
			<option value="1">宝贝</option>
			<option value="2">攻略</option>			
            </select>
           </td>
        </tr>
		<tr>
            <th width="150">排序 :</th>
           <td>
           <select name="sort">		   
			<option value="1">最热</option>
			<option value="2">最新</option>			
            </select>
           </td>
        </tr>
		<tr>
           <th width="150">分类 :</th>
           <td>
           <select name="cat_id">		
		    <option value="0">全部</option>
			<option value="1">女装</option>
			<option value="2">包包</option>		
            <option value="3">鞋子</option>
			<option value="4">配饰</option>	
			<option value="5">男装</option>
			<option value="6">运动户外</option>
			<option value="7">时尚</option>
			<option value="8">数码</option>
			<option value="9">美容</option>
			<option value="10">美发</option>
			<option value="11">家居</option>
			<option value="12">母婴</option>
			<option value="13">婚恋</option>
			<option value="14">美食</option>
			<option value="15">DIY</option>
			<option value="16">宠物</option>
			<option value="17">明星</option>
			<option value="18">搞笑趣味</option>
			<option value="19">摄影旅行</option>
			<option value="20">大杂烩</option>
            </select>
           </td>
        </tr>		
		<tr>
            <th>采集页数：</th>
                <td>
				    <select name="page">
						<?php for($a=1;$a<=1000;$a++){?>
						<option value="<?=$a?>" <if condition="100 eq $a"> selected</if> >采集<?=$a?>页</option>
						<?php 
						}
						?>
                    </select>
                </td>
            </tr>
        <tr>
            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>
       <tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>"/></td>
        </tr>		
        <tr>
            <th></th>
            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />	
    </form>
	<br><br>
	<h2>友情提示：本插件是直接采集淘宝逛街频道的商品［http://guang.taobao.com］。</h2>
	<br><br><br>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('guang/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'guang', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('guang').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('guang').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    $('.J_cate_select').cate_select({field:'J_cate_id'});
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