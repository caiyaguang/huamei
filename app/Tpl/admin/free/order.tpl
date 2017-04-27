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
			<input type="hidden" name="a" value="order" />
			<input type="hidden" name="menuid" value="{$menuid}" />
			<if condition="$sm neq ''"><input type="hidden" name="sm" value="{$sm}" /></if>
			下单时间 :
			<input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
			-
			<input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
			&nbsp;&nbsp;订单号 :
			<input name="order_id" type="text" class="input-text" size="25" value="{$search.order_id}" />
			<div class="bk8"></div>
			价格区间 :
			<input type="text" name="price_min" class="input-text" size="5" value="{$search.price_min}" />
			-
			<input type="text" name="price_max" class="input-text" size="5" value="{$search.price_max}" />
			&nbsp;&nbsp;关键字 :
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
                <th width="20" align="center">ID</th>
				<th width="80" align="center">用户</th>
                <th align="left">商品</th>
                <th width="150">订单号</th>
                <th width="80">原价(元)</th>
                <th width="70">活动价(元)</th>
                <th width="80">订单状态</th>
                <th width="100">下单时间</th>
                <th width="200">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">
				<if condition="$val.status eq '待审核订单号'">

				<elseif condition="$val.status eq '已返还'"/>
				<else/><input type="checkbox" class="J_checkitem" value="{$val.id}">
				</if></td>
                <td width="20" align="center">{$val.id}</td>
				<td align="center">{$val.uid|getTableValue='id','user','username'}</td>
                <td align="left">{$val.title}</td>
                <td align="center">{$val.order_id}</td>
                <td align="center">{$val.price}</td>
                <td align="center">{$val.coupon_price}</td>
                <td>{$val.status}</td>
                <td align="center">{$val.add_time|date="Y-m-d H:i",###}</td>
                <td align="center">
				<if condition="$val.status eq '待审核订单号'">
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/checkOrder', array('id'=>$val['id'],'check'=>'1'))}" data-acttype="ajax" data-msg="确认通过审核并返款吗？">确认返款</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/checkOrder', array('id'=>$val['id'],'check'=>'2'))}" data-acttype="ajax" data-msg="确认不通过审核吗？">单号有误</a>
				<elseif condition="$val.status eq '已返还'"/>
				已返还
				<else/>
				<a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('free/order_delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a>
				</if>
				
				</td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>





    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('free/order_delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
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