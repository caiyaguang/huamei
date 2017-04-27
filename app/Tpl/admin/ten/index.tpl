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

<div class="subnav">
     <h1 class="title_2 line_x">天天特价频道天天10元采集</h1>
</div>

<div class="pad_lr_10">
    <form id="J_info_form" action="{:U('ten/setting')}" method="post">
    <table width="100%" cellspacing="0" class="table_form">
		<tr>
           <th width="150">天天10元分类 :</th>
           <td>
           <select name="cid">		
		    <option value="1010112">居家百货</option>
			<option value="1010113">服装服饰</option>
			<option value="1010114">美容化妆</option>		
            <option value="1010115">母婴儿童</option>
			<option value="1010121">箱包配饰</option>	
			<option value="1010116">食品特产</option>
			<option value="1010118">数码配件</option>
			<option value="1010119">园艺绿植</option>
			<option value="1010120">车品户外</option>
			<option value="1010122">文体用品</option>
			<option value="1020001">宠物用品</option>			
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
           </td>
        </tr>
        <tr>
            <th width="150">本网站分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="采集" name="dosubmit" class="smt mr10"></td>
        </tr>
    </table>
    <input type="hidden" name="cate_id" id="J_cate_id" value="0" />	
    </form>
</div>
<include file="public:footer" />
<script>
$(function(){
    var collect_url = "{:U('ten/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'ten', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('ten').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('ten').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }
    //分类联动	
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script>
</body>
</html>