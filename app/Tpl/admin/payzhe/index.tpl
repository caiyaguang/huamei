<include file="public:header" />
<!--商品列表-->
<div class="pad_lr_10" >

    <div class="J_tablelist table_list" data-acturi="{:U('items/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="50" align="center">ID</th>
				<th width="50" align="center">用户名</th>
                <th width="50" align="center">活动前付款金额</th>
                <th width="50" align="center">活动前付款帐号</th>
                <th width="50" align="center">商品IID</th>
                <th width="50" align="center">联系方式</th>
                <th width="50" align="center">收款帐号</th>
                <th width="50" align="center">添加时间</th>
                <th width="50" align="center">审核时间</th>
                <th width="50" align="center">状态</th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">{$val.id}</td>
                <td align="center" >{$memberInfo[$val['userid']]}</td> 
                <td align="center" >{$val.fkprice}</td> 
				<td align="center" >{$val.fkphone}</td>
				<td align="center" >
                    <a href="https://detail.tmall.com/item.htm?id={$val.shopUrl}" target="_blank" title="点击可访问商品">{$val.shopUrl}
                </td> 				
				<td align="center" >{$val.phone}</td>
				<td align="center" >{$val.skphone}</td>
				<td align="center" >{$val.add_time|frienddate}</td>
				<td align="center" >{$val.end_time|frienddate}</td>
                <td align="center">{$val.id|statusyanz}</td>
                <td align="center">
                <a href="javascript:;" class="J_showdialog" data-uri="{:u('payzhe/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}" data-title="编辑-{$memberInfo[$val['userid']]}申请状态" data-id="edit" data-width="320" data-height="80">编辑</a> | 
                <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('payzhe/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['shopUrl'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
</body>
</html>