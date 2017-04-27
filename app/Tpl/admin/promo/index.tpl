<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link href="__STATIC__/css/admin/style.css" rel="stylesheet"/>
	<title>{:L('website_manage')}</title>
	<script>
	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<volist name=":L('js_lang')" id="val">
		lang.{$key} = "{$val}";
	</volist>
	</script>
</head>
<notempty name="big_menu">
{$big_menu.title}　
</notempty>
<body>

<!--文章列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
        <tr>
            <td>
            <div class="explain_col">
                <input type="hidden" name="g" value="admin" />
                <input type="hidden" name="m" value="promo" />
                <input type="hidden" name="a" value="index" />
                <input type="hidden" name="menuid" value="{$menuid}" />
                {:L('publish_time')}：
                <input type="text" name="time_start" id="time_start" class="date" size="12" value="{$search.time_start}">
                -
                <input type="text" name="time_end" id="time_end" class="date" size="12" value="{$search.time_end}">
                &nbsp;&nbsp;{:L('promo_cateid')}：
                <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('promo_cate/ajax_getchilds')}" data-selected="{$search.selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$search.cate_id}" />
                &nbsp;&nbsp;{:L('status')}:
                <select name="pass">
                <option value="">-{:L('all')}-</option>
                <option value="1" <if condition="$search.pass eq '1'">selected="selected"</if>>已审核</option>
                <option value="0" <if condition="$search.pass eq '0'">selected="selected"</if>>未审核</option>
                </select>
                &nbsp;&nbsp;{:L('keyword')} :
                <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                <input type="submit" name="search" class="btn" value="{:L('search')}" />
            </div>
            </td>
        </tr>
        </tbody>
    </table>
    </form>

    <div class="J_tablelist table_list" data-acturi="{:U('promo/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width=25><span data-tdtype="order_by" data-field="id">ID</span></th>
				<th width="50" align="center">缩略图</th>
                <th width=150><span data-tdtype="order_by" data-field="title">活动名称</span></th>				
                <th width=100><span data-tdtype="order_by" data-field="cate_id">{:L('promo_cateid')}</span></th>                				
				<th width="130">活动简介1</th>
				<th width="130">活动简介2</th>
                <th width="130">活动简介3</th>
				<th width="130">活动简介4</th>
				<th width="130">活动简介5</th>
                <th width="130">活动简介6</th>                
				<th width=80><span data-tdtype="order_by" data-field="add_time">{:L('publish_time')}</span></th>
                <th width=60><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="pass">{:L('status')}</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
				<td align="center">
                    <div class="img_border"><a href="{$val.click_url}" target="_blank"><img src="{$val['pic_url']}" width="50" width="50" class="J_preview" data-bimg="{$val['pic_url']}"></a></div>
                </td>
                <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.title}</span></td>				
                <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
				<td align="center"><span data-tdtype="edit" data-field="intro" data-id="{$val.id}" class="tdedit">{$val['intro']}</span></td>
				<td align="center"><span data-tdtype="edit" data-field="intro1" data-id="{$val.id}" class="tdedit">{$val['intro1']}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="intro2" data-id="{$val.id}" class="tdedit">{$val['intro2']}</span></td>
				<td align="center"><span data-tdtype="edit" data-field="intro3" data-id="{$val.id}" class="tdedit">{$val['intro3']}</span></td>
				<td align="center"><span data-tdtype="edit" data-field="intro4" data-id="{$val.id}" class="tdedit">{$val['intro4']}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="intro5" data-id="{$val.id}" class="tdedit">{$val['intro5']}</span></td>                
                <td align="center">{$val.add_time|frienddate}</td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="pass" data-value="{$val.pass}" src="__STATIC__/images/admin/toggle_<if condition="$val.pass eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center"><a href="{:u('promo/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-acttype="ajax" data-uri="{:u('promo/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
        </tbody>
    </table>

    <div class="btn_wrap_fixed">
        <label class="select_all"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('promo/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>

    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<script>
$('.J_preview').preview();
$('.J_cate_select').cate_select({top_option:lang.all});
Calendar.setup({
    inputField : "time_start",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
Calendar.setup({
    inputField : "time_end",
    ifFormat   : "%Y-%m-%d",
    showsTime  : false,
    timeFormat : "24"
});
</script>
</body>
</html>
