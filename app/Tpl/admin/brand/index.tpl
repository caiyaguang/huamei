<include file="public:header" />
<!--商品列表-->
<div class="pad_lr_10" >
  <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
      <tbody>
        <tr>
          <td><div class="explain_col">
              <input type="hidden" name="g" value="admin" />
              <input type="hidden" name="m" value="brand" />
              <input type="hidden" name="a" value="index" />
              <input type="hidden" name="menuid" value="{$menuid}" />
              <if condition="$sm neq ''">
                <input type="hidden" name="sm" value="{$sm}" />
              </if>
              发布时间 :
              <input type="text" name="time_start" id="J_time_start" class="date" size="12" value="{$search.time_start}">
              -
              <input type="text" name="time_end" id="J_time_end" class="date" size="12" value="{$search.time_end}">
              &nbsp;&nbsp;分类 :
              <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('brand_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$search.selected_ids}">
              </select>
              <input type="hidden" name="cate_id" id="J_cate_id" value="{$search.cate_id}" />
              &nbsp;&nbsp;掌柜数字ID :
              <input name="sellerId" type="text" class="input-text" size="25" value="{$search.sellerId}" />
              <input type="submit" name="search" class="btn" value="搜索" />
            </div></td>
        </tr>
      </tbody>
    </table>
  </form>
  <div class="J_tablelist table_list" data-acturi="{:U('brand/ajax_edit')}">
    <table width="100%" cellspacing="0">
      <thead>
        <tr>
          <th width="25"><input type="checkbox" id="checkall_t" class="J_checkall"></th>
          <th width="30"><span data-tdtype="order_by" data-field="id">ID</span></th>
          <th width="50" align="center">品牌LOGO</th>
          <th width="50">品牌名称</th>
          <th width="100">品牌活动</th>
          <th width="150">品牌介绍</th>
          <th width="60"><span data-tdtype="order_by" data-field="cate_id">分类</span></th>
          <th width="70">卖家ID</th>
          <th width="40">推荐</th>
          <th width="40">状态</th>
          <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
          <th width="120"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
          <th width="80">{:L('operations_manage')}</th>
        </tr>
      </thead>
      <tbody>
        <volist name="list" id="val" >
          <tr>
            <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
            <td align="center">{$val.id}</td>
            <td align="center"><div class="img_border"><img src="{$val['logo']}" width="32" width="32" class="J_preview" data-bimg="{$val['logo']}"></div></td>
            <td align="center"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" >{$val.name}</span></td>
            <td align="center"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" >{$val.title}</span></td>
            <td align="center"><span data-tdtype="edit" data-field="desc" data-id="{$val.id}" class="tdedit" >{$val.desc}</span></td>
            <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
            <td align="center" class="red">{$val.sellerId}</td>
            <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="hot" data-value="{$val.hot}" src="__STATIC__/images/admin/toggle_<if condition="$val.hot eq 0">disabled<else/>enabled</if>.gif" /></td>
            <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="pass" data-value="{$val.pass}" src="__STATIC__/images/admin/toggle_<if condition="$val.pass eq 0">disabled<else/>enabled</if>.gif" /></td>
            <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
            <td align="center">{$val.add_time|frienddate}</td>
            <td align="center"><a href="{:u('brand/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('brand/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
          </tr>
        </volist>
      </tbody>
    </table>
  </div>
  <div class="btn_wrap_fixed">
    <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
    <input type="button" class="btn btn_submit" data-tdtype="batch_action" data-acttype="ajax_form" data-id="move" data-uri="{:U('brand/move')}" data-name="id" data-title="批量移动店铺" value="{:L('move')}" />
    <input type="button" class="btn btn_submit" data-tdtype="batch_action" data-acttype="ajax_form" data-id="pass" data-uri="{:U('brand/pass')}" data-name="id" data-title="批量设置状态" value="状态" />
    <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('brand/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
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
</body></html>