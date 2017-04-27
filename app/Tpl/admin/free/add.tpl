<include file="public:header" />
<!--添加商品-->
<div class="subnav">
    <h1 class="title_2 line_x">添加活动</h1>
</div>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>

<script src="__STATIC__/js/kindeditor/kindeditor.js"></script>
<script>
	KindEditor.ready(function(K) {
		var root = "{:C('ftx_site_url')}";
		var editor = K.editor({
			allowFileManager : true
		});
		K('#image3').click(function() {
			editor.loadPlugin('image', function() {
				editor.plugin.imageDialog({
					showRemote : false,
					imageUrl : K('#J_pic_url').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#J_pic_url').val(root + url);
						editor.hideDialog();
					}
				});
			});
		});
	});
</script>
<form id="info_form" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本信息</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">

			<tr>
				<th width="80">跳转链接：</th>
				<td colspan="6">
					<input type="text" id="good_link" name="info[click_url]" class="input-text" size="50" value="{$info['click_url']}">
				</td>
			</tr>
			<tr>
				<th>名称 :</th>
				<td colspan="6"><input type="text" name="info[title]" id="J_title" class="input-text" size="50" value="{$info['title']}"></td>
			</tr>
			<tr>
				<th>审核状态 :</th>
				<td>
				<select name="info[status]">
				<option value="1" <if condition="$info['status'] eq 1">selected="selected"</if>>未审核</option>
				<option value="2" <if condition="$info['status'] eq 2">selected="selected"</if>>审核通过</option>
				<option value="3" <if condition="$info['status'] eq 3">selected="selected"</if>>审核未通过</option>
				<option value="3" <if condition="$info['status'] eq 4">selected="selected"</if>>已支付待审核</option>
				</select></td>
				<th>排序 :</th>
				<td><input type="text" name="info[ordid]" class="input-text" size="20" value="100" value="{$info['ordid']}"></td>
			</tr>
			<tr>
				<th width="80">拍下价格 :</th>
				<td width="30%"><input type="text" name="info[price]" id="J_price"size="10" class="input-text" value="{$info['price']}"> 元</td>
				<th>优惠价格 :</th>
				<td><input type="text" name="info[coupon_price]" id="coupon_price" size="10" class="input-text" value="{$info['coupon_price']}"> 元</td>
			</tr>
			<tr>
				<th>限量份数 :</th>
				<td><input type="text" name="info[num]" id="num" class="input-text" size="10" value="{$info['num']}"></td> 
				<th>剩余份数 :</th>
				<td colspan="4"><input type="text" name="info[remain]" id="remain" class="input-text" size="10" value="{$info['remain']}"></td>
			</tr>
			<tr>
				<th>开始时间 :</th>
				<td><input type="text" name="info[start_time]" id="coupon_start_time" size="20" class="date" value="<notempty name="info['start_time']">{$info['start_time']|date="Y-m-d H:i",###}</notempty>"></td>
			 
				<th>结束时间 :</th>
				<td><input type="text" name="info[end_time]" id="coupon_end_time" size="20" class="date" value="<notempty name="info['start_time']">{$info['end_time']|date="Y-m-d H:i",###}</notempty>"></td>
			</tr>
			<tr>
				<th>关联商家ID :</th>
				<td>
				<input type="text" name="info[seller]" class="input-text" size="10" value="{$info['seller']}"><span style="color:red">&nbsp;&nbsp;&nbsp;*后台管理员直接添加则留空即可</span></td>
				<th>缴纳保证金 :</th>
				<td>
				<input type="text" name="info[deposit]" class="input-text" size="10" value="{$info['deposit']}"></td>
			</tr>
			<tr>
				<th>商品图片 :</th>
				<td colspan="6"><notempty name="info['pic_url']"><img src="{:attach(get_thumb($info['pic_url'], '_m'), 'item')}" width="100" height="100"/><br /></notempty>
				<input type="text" name="info[pic_url]" class="input-text"  id="J_pic_url" size="50" value="{$info['pic_url']}">
					<input type="button" id="image3" value="上传图片" /></td>
			</tr>
			<tr>
				<th>详细内容 :</th>
                <td colspan="6"><textarea name="info[content]" id="info" style="width:100%;height:400px;visibility:hidden;resize:none;">{$info['content']}</textarea></td>
			</tr>
		</table>
		</div>
        
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px;"></div>
	</div>
</div>
<input type="hidden" name="info[id]" value="{$info.id}" />
<input type="hidden" name="menuid"  value="{$menuid}"/>
</form>

<include file="public:footer" />
	
<script type="text/javascript">
$(function() {
	window.editor = KindEditor.create('#info', {
		uploadJson : '{:U("attachment/editer_upload")}',
		fileManagerJson : '{:U("attachment/editer_manager")}',
		allowFileManager : true
	});
});
	
$('.J_cate_select').cate_select('请选择');
$(function() { 		   
	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.ftxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("items/ajax_gettags")}', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});

	$('#J_getclick_url').live('click', function() {
		var iid = $.trim($('#J_num_iid').val());
		if(iid == ''){
			$.ftxia.tip({content:lang.iid_empty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("items/ajax_getclick_url")}', {iid:iid}, function(result){
			if(result.status == 1){
				$('#J_click_url').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#good_link").formValidator({onshow:'请填写跳转链接',onfocus:'请填写跳转链接'}).inputValidator({min:1,onerror:'请填写跳转链接'});
	$("#J_title").formValidator({onshow:'请填写商品名称',onfocus:'请填写商品名称'}).inputValidator({min:1,onerror:'请填写商品名称'});
	$("#J_price").formValidator({onshow:"请填写原价",onfocus:"请填写价格",oncorrect:"填写正确",onempty:"请填写价格"}).inputValidator({min:1,max:100,onerror:"请正确填写价格"});
	$("#coupon_price").formValidator({onshow:"请填写优惠价",onfocus:"请填写优惠价",oncorrect:"填写正确",onempty:"请填写优惠价"}).inputValidator({min:1,max:100,onerror:"请填写优惠价"});
	$("#coupon_start_time").formValidator({onshow:"请选择优惠开始时间",onfocus:"请选择优惠开始时间",oncorrect:"填写正确",onempty:"请填写优惠开始时间"}).inputValidator({min:15,max:30,onerror:"请正确选择优惠开始时间"});
	$("#coupon_end_time").formValidator({onshow:"请选择优惠结束时间",onfocus:"请选择优惠开结束时间",oncorrect:"填写正确",onempty:"请填写优惠开结束时间"}).inputValidator({min:15,max:30,onerror:"请正确选择优惠开结束时间"});

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
</body>
</html> 