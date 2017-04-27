<include file="public:header" />
<style type="text/css">
.subnav .title_2.line_x a {
	color: #F00;
}
.hs {
	color: #3C9;
}
</style>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
<h1 class="title_2 line_x">添加采集器-U站采集器 <a href="http://bbs.138gzs.com/thread-6443-1-1.html" target="_blank">采集器教程点击查看</a> <span class="hs">集成各大U站和官网</span></h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('uzrobots/add')}" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">名称：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" />
                    <span class="gray ml10">给每一个添加的采集器取个名称</span>
                </td>
            </tr>			
		 <tr>
            <th width="150">关键词 :</th>
           <td>
           <input name="keyword" type="text" class="input-text" size="50" />
           <span class="red ml10">不填为全部</span>
           </td>
        </tr>
		<tr>
          <th>采集时间间隔 :</th>
          <td><input type="text" name="start_time" id="start_time"  class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('yesterday')); ?>"/>到<input type="text" name="end_time" id="end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('tomorrow')); ?>"/></td>
        </tr>
		<tr>
            <th width="150">销量下限 :</th>
           <td>
           <input type="text" name="lastvolume" class="input-text" size="35" value="10" />
           <span class="red ml10">必填。由于接口问题部分商品销量是不准确的。</span>
           </td>
        </tr>
         <tr>
            <th width="150">华美分类 :</th>
            <td>
            <select class="mr10" name="hm_cid">
            	<option value="">--请选择--</option>
            	<option value="1">女装</option>
            	<option value="2">男装</option>
            	<option value="22">鞋包</option>
            	<option value="4">母婴</option>
            	<option value="5">居家</option>
            	<option value="6">美妆</option>
            	<option value="7">数码</option>
              <option value="27">家电</option>
            	<option value="8">美食</option>
            	<option value="9">文体</option>
              <option value="32">综合</option>
            </select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>
        <tr>
            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>
		<tr>
               <th></th>
                <td>
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
            
        </tbody>
    </table>
	<input type="hidden" name="cate_id" id="J_cate_id" value="0" />	
    </form>
</div>
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择');
$('.J_ai_select').ai_select({field:'J_ai_cate_id'});
$(function(){ 
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});	
});
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
</body>
</html>
