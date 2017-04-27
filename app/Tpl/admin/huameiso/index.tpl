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

<style>
.add{background: url(/static/css/admin/bgimg/btn_total.gif) no-repeat;color: #FFF;cursor: pointer;display: block;float:right;font-size: 14px;font-weight: bold;height: 30px;line-height: 28px;line-height: 32px \9;padding-bottom: 2px;margin-top:-1px;text-align: center;width: 104px;border: none medium;}
.add:hover{background-position: 0 -34px;text-decoration: none;}
</style>
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
          <tr>
          <td>
          <div class="explain_col"> 	
		  <input type="hidden" name="g" value="admin" />
		  <input type="hidden" name="m" value="huameiso" />
		  <input type="hidden" name="a" value="index" />
		  <input type="hidden" name="menuid" value="{$menuid}" />
		  &nbsp;&nbsp;关键词或宝贝地址:
		  <input name="q" type="text" class="input-text" size="20" />	  
		  &nbsp;&nbsp;发货地:
		  <input name="loc" type="text" class="input-text" size="10" />
		  &nbsp;&nbsp;分类ID:
          <input type="text" name="leimu" class="input-text" size="10" >
		  &nbsp;&nbsp;库存:
          <input type="text" name="kucun" class="input-text" size="10" >
		  &nbsp;&nbsp;月付:
          <input type="text" name="yuefu" class="input-text" size="10" >
		  &nbsp;&nbsp;让利:
          <input type="text" name="rangli" class="input-text" size="10" >
		  &nbsp;&nbsp;月销量:
		  <input type="text" name="yxl" class="input-text" size="10" >
		  
		  <div class="bk8"></div>
		  店铺好评率:
		  <label class="mr10"> 是 <input type="checkbox" name="hpl" value="1"></label>
		  &nbsp;&nbsp;聚划算:
		  <label class="mr10"> 是 <input type="checkbox" name="jhs" value="1"></label>
		  &nbsp;&nbsp;消保:
		  <label class="mr10"> 是 <input type="checkbox" name="xfzbz" value="1"></label>
		  &nbsp;&nbsp;7天退:
		  <label class="mr10"> 是 <input type="checkbox" name="qtth" value="1"></label>
		  &nbsp;&nbsp;退款率:
		  <label class="mr10"> 是 <input type="checkbox" name="tkl" value="1"></label>
		  &nbsp;&nbsp;行业好评率:
		  <label class="mr10"> 是 <input type="checkbox" name="hyhpl" value="1"></label>
		  &nbsp;&nbsp;转化率:
		  <label class="mr10"> 是 <input type="checkbox" name="cjzhl" value="1"></label>
		  &nbsp;&nbsp;金牌卖家:
		  <label class="mr10"> 是 <input type="checkbox" name="jpmj" value="1"></label>
		  &nbsp;&nbsp;店铺优惠券:
		  <label class="mr10"> 是 <input type="checkbox" name="yhq" value="1"></label>
		  &nbsp;&nbsp;包邮:
		  <label class="mr10"> 是 <input type="checkbox" name="ems" value="1"></label>
		  &nbsp;&nbsp;定向计划:
		  <label class="mr10"> 是 <input type="checkbox" name="dxjh" value="1"></label>
		  &nbsp;&nbsp;转化率:
		  <label class="mr10"> 是 <input type="checkbox" name="itemzhl" value="1"></label>
		  &nbsp;&nbsp;天猫:
		  <label class="mr10"> 是 <input type="checkbox" name="tmall" value="1"></label>
		  <div class="bk8"></div>
		  &nbsp;&nbsp;信用:
		  <select name="credit">
		  <option value="">不限</option>
		  <option value="1">{:L('n1')}{:L('heart')}</option>
		  <option value="2">{:L('n2')}{:L('heart')}</option>
		  <option value="3">{:L('n3')}{:L('heart')}</option>
		  <option value="4">{:L('n4')}{:L('heart')}</option>
		  <option value="5">{:L('n5')}{:L('heart')}</option>
		  <option value="6">{:L('n1')}{:L('diamond')}</option>
		  <option value="7">{:L('n2')}{:L('diamond')}</option>
		  <option value="8">{:L('n3')}{:L('diamond')}</option>
		  <option value="9">{:L('n4')}{:L('diamond')}</option>
		  <option value="10">{:L('n5')}{:L('diamond')}</option>
		  <option value="11">{:L('n1')}{:L('crown')}</option>
		  <option value="12">{:L('n2')}{:L('crown')}</option>
		  <option value="13">{:L('n3')}{:L('crown')}</option>
		  <option value="14">{:L('n4')}{:L('crown')}</option>
		  <option value="15">{:L('n5')}{:L('crown')}</option>
		  <option value="16">{:L('n1')}{:L('goldencrown')}</option>
		  <option value="17">{:L('n2')}{:L('goldencrown')}</option>
		  <option value="18">{:L('n3')}{:L('goldencrown')}</option>
		  <option value="19">{:L('n4')}{:L('goldencrown')}</option>
		  <option value="20">{:L('n5')}{:L('goldencrown')}</option>
		  </select> 
		  &nbsp;&nbsp;评分:
		  <select name="dsr">
		  <option value="">不限</option>
		  <option value="4.5">4.5</option>
		  <option value="4.6">4.6</option>
		  <option value="4.7">4.7</option>
		  <option value="4.8">4.8</option>
		  <option value="4.9">4.9</option>
		  <option value="5.0">5.0</option>                        
		  </select>
		  &nbsp;&nbsp;图片牛皮癣:
		  <select name="imgone">			
		  <option value="">不限</option>
		  <option value="1">无</option>
		  <option value="2">轻微</option>			
		  </select>
		  &nbsp;&nbsp;图片综合质量:
		  <select name="imgtwo">			
		  <option value="">不限</option>
		  <option value="1">中</option>
		  <option value="2">高</option>			
		  </select>
		  &nbsp;&nbsp;排序:
		  <select name="sort">			
		  <option value="">默认</option>
		  <option value="2">人气</option>
		  <option value="3">价格从高到低</option>
		  <option value="4">价格从低到高</option>
		  <option value="1">收入比率从高到低</option>
		  <option value="5">月推广量从高到低</option>
		  <option value="7">月支出佣金从高到低</option>			
		  </select>
		  &nbsp;&nbsp;产品月销量:
		  <input type="text" name="itemxl" class="input-text" size="10" >
		  &nbsp;&nbsp;收入比率:
		  <input type="text" name="start_rate" size="5" class="input-text" value="" /> - 
		  <input type="text" name="end_rate" size="5" class="input-text" value=""/> 
		  &nbsp;&nbsp;价格范围:
		  <input type="text" name="start_price" size="5" class="input-text" value="" /> - 
		  <input type="text" name="end_price" size="5" class="input-text" value=""/> 
		  <input type="submit" value="确认搜索" class="add fb">	
          </div>				 
          </td>		  
          </tr>	
          		  
        </tbody>
    </table>
    </form>
<div class="pad_lr_10" >
        <div class="J_tablelist table_list">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width="25"><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="20">ID</th>
                <th width="50" align="center">缩略图</th>
                <th width="200">商品名称</span></th>    
				<th width="70">商品IID</span></th>
                <th width="70">旺旺</th>
				<th width="70">卖家ID</th>
                <th width="70">原价</th>
				<th width="70">折扣价</th>
                <th width="70">折扣比率</th>
				<th width="70">佣金</th>
				<th width="70">佣金比率</th>
				<th width="70">类型</th>
                <th width="90">销量</th>	
				<th width="90">是否存在</th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
        <tbody>
         <volist name="list" id="val" key="i" mod="4"> 
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.num_iid}"></td>
                <td align="center">{$val.id}</td>
                <td align="center">
                <div class="img_border"><a href="http://item.taobao.com/item.htm?id={$val.num_iid}" target="_blank"><img src="{:attach(get_thumb($val['pic_url'], '_s'), 'item')}" width="32" width="32" class="J_preview" data-bimg="{:attach(get_thumb($val['pic_url'],'_m'), 'item')}"></a></div>
                </td>
                <td align="left">{$val.title}</td>
                <td align="center">{$val.num_iid}</td>
                <td align="center">{$val.nick}</td>    
				<td align="center">{$val.sellerId}</td> 
                <td align="center" class="red">{$val.price}</td> 
				<td align="center" class="red">{$val.coupon_price}</td> 
                <td align="center" class="red">{$val.coupon_rate}</td> 
				<td align="center" class="red">{$val.commission}</td> 
				<td align="center" class="red">{$val.commission_rate}</td>                 
                <td align="center"><if condition="$val.shop_type eq 'C' ">淘宝</if><if condition="$val.shop_type eq 'B' ">天猫</if></td>
				<td align="center">{$val.volume}</td> 
				<td align="center"><img src='__STATIC__/images/admin/toggle_<if condition="$val.yes eq 1">enabled<else/>disabled</if>.gif' /></td></td>
                <td align="center"><a class="showdialog" href="javascript:getck({$val.num_iid});" data-uri="{:U('huameiso/caiji',array('id'=>$val['num_iid']))}" data-title="采集" data-id="caiji" data-width="500" data-height="180">采集</a></td>
				
            </tr>
            </volist>
        </tbody>
    </table>
    </div>

    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>		
		<input type="button" class="btn btn_submit" data-tdtype="batch_action" data-acttype="ajax_form" data-id="allcaiji" data-uri="{:U('huameiso/allcaiji',array('menuid'=>$menuid,'p'=>$p))}" data-name="num_iid" data-title="批量采集入库" value="批量采集入库" />
        <div id="pages">{$page}</div>
    </div>
</div>

<include file="public:footer" />
<script>
var get_url = "{:U('huameiso/caiji')}";
$('.J_preview').preview(); //查看大图
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
function getck(id){
		$.getJSON(get_url, {id:id}, function(result){
            if(result.status == 1){
                $.dialog({id:'caiji', title:result.msg, content:result.data, padding:'', lock:true});
            }else{
                $.ftxia.tip({content:result.msg, icon:'alert'});
            }
        });
    }
</script>
<script src="__STATIC__/js/jquery/plugins/listTable.js"></script>
<script>
$(function(){
	$('.J_tablelist').listTable();
});
</script>
</body>
</html>