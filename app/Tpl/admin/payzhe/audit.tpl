<include file="public:header" />
<!--栏目列表-->
<div class="pad_lr_10">
    <div class="J_tablelist table_list" data-acturi="{:U('payzhe/ajaxEditpay')}">
    <table width="100%" cellspacing="0" id="J_cate_tree">
        <thead>
            <tr>
                <th align="center"><input type="checkbox" name="checkall" class="J_checkall"></th>
                <th align="center"><span data-tdtype="order_by" data-field="id">序列号</span></th>
                <th>{:L('商品IID')}</th>
                <th align="center">{:L('真实姓名')}</th>
                <th align="center">{:L('网站用户名')}</th>
                <th align="center">{:L('套餐类型')}</th>
                <th align="center">{:L('套餐价格')}</th>
                <th align="center">{:L('支付宝帐号')}</th>
                <th align="center">{:L('支付流水号')}</th>
                <th align="center">{:L('订单编号')}</th>
                <th align="center">{:L('审核状态')}</th>
                <th align="center">{:L('添加时间')}</th>
                <th align="center">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
        {$list}
        </tbody>
    </table>
    </div>
    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('payzhe/ajaxDeletepay')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
    </div>
</div>
<include file="public:footer" />
<script src="__STATIC__/js/jquery/plugins/jquery.treetable.js"></script>
<script>
$(function(){
    //initialState:'expanded'
    $("#J_cate_tree").treeTable({indent:20,treeColumn:2});
    $(".J_preview").preview();
});        
</script> 
</body>
</html>