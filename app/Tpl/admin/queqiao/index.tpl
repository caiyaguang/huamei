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

<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="queqiao" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
					
                    发布时间 :
                    <input type="text" name="time_start" id="J_time_start" class="date" size="16" value="{$search.time_start}">
                    -
                    <input type="text" name="time_end" id="J_time_end" class="date" size="16" value="{$search.time_end}"> 

                    &nbsp;&nbsp;原价格区间 :
                    <input type="text" name="price_min" class="input-text" size="5" value="{$search.price_min}" />
                    -
                    <input type="text" name="price_max" class="input-text" size="5" value="{$search.price_max}" />

                    &nbsp;&nbsp;标题 :
                    <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
					
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
 



    <div class="J_tablelist table_list" data-acturi="{:U('queqiao/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>
				<th width="50" align="center">缩略图</th>
                <th width="100"><span data-tdtype="order_by" data-field="title">商品名称</span></th>               
				<th width="40"><span data-tdtype="order_by" data-field="price">原价</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="coupon_price">折价</span></th>				
				<th width="40"><span data-tdtype="order_by" data-field="volume">销量</span></th>				
                <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
				 <th width="60"><span data-tdtype="order_by" data-field="coupon_start_time">开始时间</span></th>
				  <th width="60"><span data-tdtype="order_by" data-field="coupon_end_time">结束时间</span></th>
                
                <th width="60"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="right"><div class="img_border"><a href="{$val.click_url}" target="_blank"><img src="{$val['pic_url']}" width="50" width="50" class="J_preview" data-bimg="{$val['pic_url']}"></a></div></td>
                <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit">{$val.title}</span></td>
                <td align="center" class="red">{$val.price}</td> 
                <td align="center" class="red">{$val.coupon_price}</td> 
				<td align="center" class="red">{$val.volume}</td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center">{$val.coupon_start_time|date="m月d日H时i分",###}</td>
				<td align="center">{$val.coupon_end_time|date="m月d日H时i分",###}</td>
				<td align="center">{$val.add_time|frienddate}</td>
                <td align="center"><a href="{:u('queqiao/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('queqiao/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>





    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
		<input type="button" class="btn btn_submit" data-tdtype="batch_action" data-acttype="ajax_form" data-id="addtm" data-uri="{:U('queqiao/addtm')}" data-name="id" data-title="批量设置时间" value="批量设置时间" />
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('queqiao/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<script>
Calendar.setup({
	inputField : "J_time_start",
	ifFormat       :    "%Y-%m-%d %H:%M",
	showsTime      :    'true',
	timeFormat     :    "24"
});
Calendar.setup({
	inputField : "J_time_end",
	ifFormat       :    "%Y-%m-%d %H:%M",
	showsTime      :    'true',
	timeFormat     :    "24"
});
$('.J_preview').preview(); //查看大图
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
</script>
</body>
</html>