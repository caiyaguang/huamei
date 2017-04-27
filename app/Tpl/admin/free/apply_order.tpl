<include file="public:header" />
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
			<input type="hidden" name="g" value="admin" />
			<input type="hidden" name="m" value="free" />
			<input type="hidden" name="a" value="apply_order" />
			<input type="hidden" name="menuid" value="{$menuid}" />
			<if condition="$sm neq ''"><input type="hidden" name="sm" value="{$sm}" /></if>
			提交时间 :
			<input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
			-
			<input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
			<div class="bk8"></div>
			支付宝 :
			<input name="alipay" type="text" class="input-text" size="25" value="{$search.alipay}" />
			&nbsp;&nbsp;姓名 :
			<input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
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
                <th width="60">ID</th>
				<th width="150" align="center">用户</th>
                <th align="center">支付宝账号</th>
                <th width="150">支付宝姓名</th>
                <th width="80">提现金额</th>
                <th width="80">状态</th>
                <th width="100">申请时间</th>
                <th width="250">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td width="60" align="center">{$val.id}</td>
				<td align="center">{$val.uid|getTableValue="id","user","username"}</td>
                <td align="center">{$val.alipay}</td>
                <td align="center">{$val.name}</td>
                <td align="center">{$val.money}</td>
                <td align="center">{$val.status}</td>
                <td align="center">{$val.add_time|date="Y-m-d H:i",###}</td>
                <td align="center">
				<if condition="$val.status eq '申请中'">
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/apply_order_confirm', array('id'=>$val['id'],'pass'=>'1'))}" data-acttype="ajax" data-msg="是否确认已经成功提款？">确认提款</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/apply_order_confirm', array('id'=>$val['id'],'pass'=>'2'))}" data-acttype="ajax" data-msg="是否审核不通过？款项会返还给用户">审核不通过</a>
				&nbsp;&nbsp;|&nbsp;&nbsp;
				</if>
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/apply_order_delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>





    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('free/apply_order_delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
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