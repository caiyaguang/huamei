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
<div id="J_ajax_loading" class="ajax_loading">{:L('ajax_loading')}</div>
<!--商品列表-->
<div class="subnav">
	<div class="content_menu ib_a blue line_x">
    	<a class="add fb " href="{:U('robots/add_do')}" ><em>添加采集器</em></a>
	<a class="add fb " href="javascript:auto_collect()" ><em>一键自动采集</em></a>
	<a class="add fb " href="javascript:jx_collect({$robots_collect_data.rid},{$robots_collect_data.p})" ><em>继续采集</em></a>
	</div>

</div>
<div class="pad_lr_10" >
    


    <div class="J_tablelist table_list" data-acturi="{:U('robots/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th align="left"><span data-tdtype="order_by" data-field="name">商品名称</span></th>
                <th width="80"><span data-tdtype="order_by" data-field="cate_id">分类</span></th>
				<th width="70"><span data-tdtype="order_by" data-field="page">采集页数</span></th>
				<th width="100"><span data-tdtype="order_by" data-field="last_page">上次采集页数</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
				<th width="40"><span data-tdtype="order_by" data-field="status">状态</span></th>
                <th width="120"><span data-tdtype="order_by" data-field="last_time">最近时间</span></th>
                <th width="200">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center">{$val.id}</td>
                <td align="left"><span data-tdtype="edit" data-field="name" data-id="{$val.id}" class="tdedit"  >{$val.name}</span></td>
                <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
				<td align="center" class="red"><span data-tdtype="edit" data-field="page" data-id="{$val.id}" class="tdedit">{$val.page}</span></td> 
				<td align="center" class="red">{$val.last_page}</td> 
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
				<td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="status" data-value="{$val.status}" src="__STATIC__/images/admin/toggle_<if condition="$val.status eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center">{$val.last_time|frienddate}</td>
                <td align="center"><a href="javascript:collect({$val.id},{$val.last_page});">继续上次采集</a> |<a href="javascript:collect({$val.id},1);">开始采集</a> |<a href="{:u('robots/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('robots/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['name'])}">{:L('delete')}</a></td>
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
<script>
    var collect_url = "{:U('robots/collect')}";
    var id = 0;
	var p = 1;
	function collect(id,p){
        $.getJSON(collect_url, {id:id,p:p}, function(result){
            if(result.status == 1){
				$.dialog({id:'cmt_taobao', title:result.msg, content:result.data, padding:'', lock:true});
                p++;
				setTimeout("collect_page("+ id +","+ p+")",1000);
            }else{
                $.ftxia.tip({content:result.msg});
            }
        });
    }
	function collect_page(id,p){
        $.getJSON(collect_url, {id:id,p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('cmt_taobao').content(result.data);
                p++;
				setTimeout("collect_page("+ id +","+ p+")",1000);
            }else{
                $.dialog.get('cmt_taobao').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }




    function auto_collect(){

        $.getJSON(collect_url, {auto:1}, function(result){
            if(result.status == 1){
                $.dialog({id:'cmt_ftxia', title:result.msg.title, content:result.data, padding:'', lock:true});
                rid = result.msg.rid;
                p = result.msg.np;
                
                setTimeout("auto_collect_page("+ rid +","+ p+")",1000);
            }else{
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    function auto_collect_page(rid,p){
        $.getJSON(collect_url, {rid:rid,p:p,auto:1}, function(result){
            if(result.status == 1){
                $.dialog.get('cmt_ftxia').content(result.data);
                rid = result.msg.rid;
                p = result.msg.np;
                setTimeout("auto_collect_page("+ rid +","+ p+")",1000);
            }else{
                $.dialog.get('cmt_ftxia').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }

    function jx_collect(rid,p){
        $.getJSON(collect_url, {rid:rid,p:p,auto:1}, function(result){
            if(result.status == 1){
                 $.dialog({id:'cmt_ftxia', title:result.msg.title, content:result.data, padding:'', lock:true});
                rid = result.msg.rid;
                p = result.msg.np;
                setTimeout("auto_collect_page("+ rid +","+ p+")",1000);
            }else{
                $.dialog.get('cmt_ftxia').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
</script>
</body>
</html>