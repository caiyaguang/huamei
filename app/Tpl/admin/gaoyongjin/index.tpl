<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
  <h1 class="title_2 line_x">阿里妈妈频道采集器-高佣金采集 <font color="red">[新]</font></h1>
</div>
<div class="pad_lr_10" >
  <form id="J_info_form" action="{:U('gaoyongjin/setting')}" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
      <tbody>
      
      	<tr>
          <th width="150">高佣金分类 :</th>
          <td>
             <select name="cat">
                <option value="">--请选择--</option>
                <volist name="cat_list" id="cat_val" >
				<option <if condition="$search['cat'] eq $cat_val['id']">selected="selected"</if> value="{$cat_val.id}">{$cat_val.name}</option>
				</volist>               
              </select>
            <span class="red ml10">必填</span>
          </td>
        </tr>
        
        <tr>
          <th width="150">商品来源 :</th>
          <td>
            <select name="user_type">
              <option value="">全部</option>
              <option id='b2c' value="1">天猫</option>
              <option id='jmpj' value="0">淘宝</option>
            </select>
            <span class="gray ml10">选填</span>
          </td>
        </tr>
        
        <tr>
          <th width="150">排序方式 :</th>
          <td>
            <select name="sort">
              <option value="">综合排序</option>
              <option value="1">佣金比率从高到低</option>
              <option value="3">价格从高往低</option>
              <option value="4">价格从低往高</option>
              <option value="9">销量量从高到低</option>
              <option value="5">月推广量从高到低</option>
              <option value="7">月支出佣金从高到低</option>              
            </select>
            <span class="gray ml10">选填</span>
          </td>
        </tr>
        
        <tr>
          <th width="150">价格范围 :</th>
          <td>
            <input type="text" name="start_price" size="5" class="input-text" value=""/> -
            <input type="text" name="end_price" size="5" class="input-text" value=""/>
            <span class="gray ml10">可不填。最低价格不能为0元</span>
          </td>
        </tr>
       
        <tr>
          <th width="150">月销量 :</th>
          <td>
            <input type="text" name="startBiz30day" class="input-text" size="15" value="" />
            <span class="gray ml10">可不填。如：要限制只采集销量100以上商品填写100即可。</span>
          </td>
        </tr>
        <tr>
          <th>是否包邮：</th>
          <td>
            <select name="ems">
              <option value="">不限</option>
              <option value="1">包邮</option>           
            </select>
            <span class="gray ml10">可不选</span>      
          </td>
        </tr>        
        
        <tr>
          <th width="150">地区 :</th>
          <td>
            <input type="text" name="loc" size="5" class="input-text" value=""/>
            <span class="gray ml10">选填。省例：陕西、山东，市例：西安、济南（多个地区用逗号分隔）</span>
          </td>
        </tr>
        
        <tr>
          <th>采集页数：</th>
          <td>
             <select name="page">
              <?php for($a=1;$a<=100;$a++){?>
              <option value="<?=$a?>" <if condition="5 eq $a"> selected</if>>采集<?=$a?>页</option>
              <?php }?>
            </select>
          </td>
        </tr>
        
        <tr>
          <th width="150">姓别 :</th>
          <td>
            <select name="sex">
              <option value="0">无</option>
              <option value="1">男</option>
              <option value="2">女</option>
            </select>
            <span class="gray ml10">选填</span>
          </td>
        </tr>
        
        <tr>
          <th width="150">入库分类 :</th>
          <td>
            <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>
            <span class="red ml10">必选。请选择采集后要写入的分类。</span>
          </td>
        </tr>
        <tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $start_time = date('Y-m-d H:i:s');?>"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $end_time = date('Y-m-d H:i:s',strtotime('+15 day')); ?>"/></td>
        </tr>
        <tr>
          <th></th>
          <td><input type="submit" name="search" class="smt  mr10" value="开始采集" /></td>
        </tr>
      </tbody>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />
  </form>
</div>
<include file="public:footer" /> 
<script>
$(function(){
    var collect_url = "{:U('gaoyongjin/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'gaoyongjin', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('gaoyongjin').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('gaoyongjin').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动
    $('.J_cate_select').cate_select({field:'J_cate_id'});
	
});
</script>


<script language="javascript" type="text/javascript">
Calendar.setup({
	inputField     :    "coupon_start_time",
	ifFormat       :    "%Y-%m-%d %H:%M:%S",
	showsTime      :    'true',
	timeFormat     :    "24"
});
</script> 
<script language="javascript" type="text/javascript">
Calendar.setup({
	inputField     :    "coupon_end_time",
	ifFormat       :    "%Y-%m-%d %H:%M:%S",
	showsTime      :    'true',
	timeFormat     :    "24"
});
</script>
</body>
<notempty name="copy_right">
{$copy_right.title}　
</notempty>
</html>