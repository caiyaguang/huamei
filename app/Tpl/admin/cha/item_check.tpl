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


<link rel="stylesheet" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script src="__STATIC__/js/calendar/calendar.js"></script>
<style>
.add { background: url(/static/css/admin/bgimg/btn_total.gif) no-repeat; color: #FFF; cursor: pointer; display: block; float: right; font-size: 14px; font-weight: bold; height: 30px; line-height: 28px; line-height: 32px \9; padding-bottom: 2px; margin-top: -1px; text-align: center; width: 104px; border: none medium; }
.add:hover { background-position: 0 -34px; text-decoration: none; }
</style>
<!--商品列表-->
<form id="J_info_form" action="{:U('cha/setting')}" method="post">
  <table width="100%" cellspacing="0" class="table_form">
    <tbody>
      <tr>
        <td><div class="explain_col"> &nbsp;&nbsp;时间范围 :
            <input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('last week')); ?>"/>
            -
            <input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $showtime=date("Y-m-d H:i:s",strtotime('next day'));?>"/>
            &nbsp;&nbsp;ID范围 :
            <input type="text" name="fid" size="10" class="input-text" value="1"/>
            -
            <input type="text" name="eid" size="10" class="input-text" value="99999"/>
            &nbsp;&nbsp;店铺类型 :
            <select name="shop_type">
              <option value="C">淘宝</option>
              <option value="B">天猫</option>
            </select>
            &nbsp;&nbsp;分类 :
            <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}">
            </select>
            <input type="hidden" name="cate_id" id="J_cate_id" value="0" />
            <input type="hidden" value="1" name='step' />
            &nbsp;&nbsp;下架商品复查：
            <input type="checkbox" value="0" name='sec' id='sec' class='data'/>
            <input type="submit" value="开始检测" name="dosubmit" class="add fb">
          </div></td>
      </tr>
    </tbody>
  </table>
</form>
<div class="pad_lr_10" >
  <div class="J_tablelist table_list" data-acturi="{:U('items/ajax_edit')}">
    <table width="100%" cellspacing="0">
      <thead>
        <tr>
          <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
          <th><span data-tdtype="order_by" data-field="id">ID</span></th>
          <th width="50" align="center">缩略图</th>
          <th align="left"><span data-tdtype="order_by" data-field="title">商品名称</span></th>
          <th width="60"><span data-tdtype="order_by" data-field="cate_id">分类</span></th>
          <th width="100">掌柜</th>
          <th width="70"><span data-tdtype="order_by" data-field="price">价格(元)</span></th>
          <th width="70"><span data-tdtype="order_by" data-field="coupon_rate">折扣比率</span></th>
          <th width="90"><span data-tdtype="order_by" data-field="volume">已购买人数</span></th>
          <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
          <th width="40"><span data-tdtype="order_by" data-field="pass">{:L('pass')}</span></th>
          <th width="120"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
          <th width="80">{:L('operations_manage')}</th>
        </tr>
      </thead>
      <tbody>
        <volist name="list" id="val" >
          <tr>
            <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
            <td align="center">{$val.id}</td>
            <td align="right"><div class="img_border"><a href="http://item.taobao.com/item.htm?id={$val.num_iid}" target="_blank"><img src="{:attach(get_thumb($val['pic_url'], '_s'), 'item')}" width="32" width="32" class="J_preview" data-bimg="{:attach(get_thumb($val['pic_url '],'_m'), 'item')}"></a></div></td>
            <td align="left"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.title}</span></td>
            <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
            <td align="center">{$val.nick}</td>
            <td align="center" class="red">{$val.price}</td>
            <td align="center" class="red">{$val.coupon_rate}</td>
            <td align="center"><span data-tdtype="edit" data-field="volime" data-id="{$val.id}" class="tdedit">{$val.volume}</span></td>
            <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
            <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="pass" data-value="{$val.pass}" src="__STATIC__/images/admin/toggle_<if condition="$val.pass eq 0">disabled<else/>enabled</if>.gif" /></td>
            <td align="center">{$val.add_time|frienddate}</td>
            <td align="center"><a href="{:u('items/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('items/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
          </tr>
        </volist>
      </tbody>
    </table>
  </div>
  <div class="btn_wrap_fixed">
    <label class="select_all mr10">
      <input type="checkbox" name="checkall" class="J_checkall">
      {:L('select_all')}/{:L('cancel')}</label>
    <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('items/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
    <div id="pages">{$page}</div>
  </div>
</div>
<include file="public:footer" /> 
<script>
$(function(){
    var collect_url = "{:U('cha/item_checks')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'cha', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('cha').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('cha').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    $('.J_cate_select').cate_select({field:'J_cate_id'});
	$('.J_preview').preview(); //查看大图
});
</script> 
<script language="javascript" type="text/javascript">
Calendar.setup({
	inputField     :    "coupon_start_time",
	ifFormat       :    "%Y-%m-%d %H:%M",
	showsTime      :    'true',
	timeFormat     :    "24"
});
</script> 
<script language="javascript" type="text/javascript">
Calendar.setup({
	inputField     :    "coupon_end_time",
	ifFormat       :    "%Y-%m-%d %H:%M",
	showsTime      :    'true',
	timeFormat     :    "24"
});
</script> 
<script>
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
$(function(){
    $('.J_tablelist').listTable();
});
$('#sec').click(function(){
        sec_check    = $(this).attr('value');
        if(sec_check==0){
            $(this).attr('value',1);
        }
        if (sec_check==1) {
            $(this).attr('value',0);
        };
});
</script> 
<script src="__STATIC__/js/jquery/plugins/listTable.js"></script>
</body></html>