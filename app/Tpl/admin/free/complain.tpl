<include file="public:header" />
<!--商品列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
			<input type="hidden" name="g" value="admin" />
			<input type="hidden" name="m" value="free" />
			<input type="hidden" name="a" value="complain" />
			<input type="hidden" name="menuid" value="{$menuid}" />
			<if condition="$sm neq ''"><input type="hidden" name="sm" value="{$sm}" /></if>
			申诉时间 :
			<input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
			-
			<input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
			&nbsp;&nbsp;订单号 :
			<input name="order_id" type="text" class="input-text" size="25" value="{$search.order_id}" />
			<input type="submit" name="search" class="btn" value="搜索" />		
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
 

    <div class="J_tablelist table_list">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="80">申诉编号</th>
                <th width="120">单号</th>
                <th align="center">所属活动</th>
                <th align="center">申诉理由</th>
                <th width="80">申述状态</th>
                <th width="100">申述时间</th>
                <th width="200">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="center">{$val.order_id|getTableValue='id','order','order_id'}</td>
			 <td align="center" class="td_border" style="padding:5px;width:100px;"><a target="_blank" href="{$val.item_id|getTableValue='id','free','click_url'}"><div style="width:98px;height:30px;line-height:30px;overflow:hidden">{$val.item_id|getTableValue='id','free','title'}</div><img width="90" src="{$val.item_id|getTableValue='id','free','pic_url'}"></a></td>
                <td>{$val.ss_content}</td>
                <td align="center">{$val.status}</td>
                <td align="center">{$val.add_time|date="Y-m-d H:i",###}</td>
                <td align="center">
				<if condition="$info['status'] neq '已返款'">
				<a href="{:u('free/complain_admin', array('id'=>$val['id']))}">管理员回复</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<if condition="$info['status'] neq '等待裁决'">
					<a href="{:u('free/complain_reply', array('id'=>$val['id']))}">商家回复</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					</if>
				</if>
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/complain_delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['id'])}">{:L('delete')}</a>
				</td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>





    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('free/complain_delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
Calendar.setup({
	inputField : "J_time_start",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
Calendar.setup({
	inputField : "J_time_end",
	ifFormat   : "%Y-%m-%d",
	showsTime  : false,
	timeFormat : "24"
});
$('.J_preview').preview(); //查看大图
$('.J_cate_select').cate_select({top_option:lang.all}); //分类联动
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
</script>
</body>
</html>