<include file="public:header" />
<!--栏目列表-->
<div class="pad_lr_10">
    <div class="J_tablelist table_list" data-acturi="{:U('payzhe/ajax_edit')}">
    <table width="100%" cellspacing="0" id="J_cate_tree">
        <thead>
            <tr>
                <th align="center"><input type="checkbox" name="checkall" class="J_checkall"></th>
                <th align="center"><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th>{:L('套餐名称')}</th>
                <th align="center"><span data-tdtype="order_by" data-field="price">{:L('套餐价格')}</span></th>
                <th align="center"><span data-tdtype="order_by" data-field="days">{:L('活动时间')}</span></th>
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
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('payzhe/ajax_delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
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