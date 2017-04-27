<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">采集器修改</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('uzrobots/edit')}" name="searchform" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
               <th width="150">名称：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" value="{$info.name}"/>
                    <span class="gray ml10">采集器名称</span>
                </td>
            </tr>
			
			 <tr>
            <th width="150">关键词 :</th>
           <td>
           <input name="keyword" type="text" class="input-text" size="50" value="{$info.keyword}"/>
           <span class="red ml10">必填，多个关键词用空格隔开。</span>
           </td>
        </tr>
		
		<tr>
          <th>采集时间间隔 :</th>
          <td><input type="text" name="start_time" id="start_time"  class="date" value="<?php echo $now = date('Y-m-d H:i:s',$info['start_time']); ?>"/>到<input type="text" name="end_time" id="end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',$info['end_time']); ?>"/></td>
        </tr>
		<tr>
            <th width="150">销量下限 :</th>
           <td>
           <input type="text" name="lastvolume" class="input-text" size="35" value="{$info.lastvolume}" />
           <span class="red ml10">必填。如：要限制只采集销量100以上商品填写100即可。</span>
           </td>
        </tr>
         <tr>
            <th width="150">华美分类 :</th>
            <td>
            <select class="mr10" name="hm_cid">
            	<option value="">--请选择--</option>
            	<option value="1" <if condition="$info['hm_cid'] eq 1">selected</if>>女装</option>
            	<option value="2" <if condition="$info['hm_cid'] eq 2">selected</if>>男装</option>
            	<option value="3" <if condition="$info['hm_cid'] eq 3">selected</if>>鞋包</option>
            	<option value="4" <if condition="$info['hm_cid'] eq 4">selected</if>>母婴</option>
            	<option value="5" <if condition="$info['hm_cid'] eq 5">selected</if>>居家</option>
            	<option value="6" <if condition="$info['hm_cid'] eq 6">selected</if>>美妆</option>
            	<option value="7" <if condition="$info['hm_cid'] eq 7">selected</if>>数码</option>
                <option value="27" <if condition="$info['hm_cid'] eq 27">selected</if>>家电</option>
            	<option value="8" <if condition="$info['hm_cid'] eq 8">selected</if>>美食</option>
            	<option value="9" <if condition="$info['hm_cid'] eq 9">selected</if>>文体</option>
                <option value="32" <if condition="$info['hm_cid'] eq 32">selected</if>>综合</option>
            </select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>
        <tr>
				<th>入库分类：</th>
                <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td></td>
			</tr>		
		

            <tr>
                <th></th>
                <td>
					<input type="hidden" name="id"  value="{$info.id}" />
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
        </tbody>
    </table>
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
