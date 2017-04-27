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

<div class="subnav">

<h1 class="title_2 line_x">淘宝促销频道采集</h1>

</div>

<div class="pad_lr_10">

    <form id="J_info_form" action="{:U('cu/setting')}" method="post">

    <table width="100%" cellspacing="0" class="table_form">       

		

		<tr>

           <th width="150">分类 :</th>

           <td>

           <select name="cat_id">		

		    <option value="2516103b7a">时尚女装</option>

			<option value="2fa3bd6e32">气质男装</option>

			<option value="756823b4c9">母婴儿童</option>		

            <option value="81b0afd737">箱包配件</option>

			<option value="3136b146b4">创意玩具</option>	

			<option value="d2fe07a1bf">数码配件</option>			

			<option value="57274cfeaa">美容护肤</option>

			<option value="3308b33daa">精品女鞋</option>

			<option value="ccefc601fc">床上用品</option>

			<option value="e1a63d3c76">美食特产</option>

			<option value="2846f894e6">流行饰品</option>			

            </select>

			<span class="red ml10">必选，请选择需要采集的淘宝促销频道分类。</span>

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

           </td>

        </tr>

		<tr>

            <th>采集页数：</th>

                <td>

				<select name="page" id="page">

				<?php for($a=1;$a<=100;$a++){?>

				<option value="<?php echo $a; ?>" <if condition="10 eq $a"> selected</if> >采集<?php echo $a;?>页</option>

				<?php } ?>

				</select>

				</td>

            </tr>

        <tr>

            <th width="150">入库分类 :</th>

            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>

			<span class="red ml10">必选，请选择采集后要写入的分类。</span>

			</td>			

        </tr>

       <tr>

		<tr>
		  <th>设置开始时间 :</th>
		  <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
		  </tr>
		<tr>
		   <th>设置结束时间 :</th>
		   <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>"/></td>
		</tr>
        		

        <tr>

            <th></th>

            <td><input type="submit" value="开始采集" name="dosubmit" class="smt mr10"></td>

        </tr>

    </table>

    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />	

    </form>

	<br><br>

	<h2>友情提示：本插件是直接采集淘宝视频频道的商品［<a href="http://www.taobao.com/market/video/index.php" target="_blank">http://www.taobao.com/market/video/index.php</a>］华美网络提供技术支持。</h2>

	<br><br><br>

</div>

<include file="public:footer" />

<script>

$(function(){

    var collect_url = "{:U('cu/collect')}";

    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});

    var p = 2;

    function complete(result){

        if(result.status == 1){

            $.dialog({id:'cu', title:result.msg, content:result.data, padding:'', lock:true});

            p = 2;

            collect_page();

        } else {

            $.ftxia.tip({content:result.msg, icon:'alert'});

        }

    }

    function collect_page(){

        $.getJSON(collect_url, {p:p}, function(result){

            if(result.status == 1){

                $.dialog.get('cu').content(result.data);

                p++;

                collect_page(p);

            }else{

                $.dialog.get('cu').close();

                $.ftxia.tip({content:result.msg});

            }

        });

    }

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

</html>