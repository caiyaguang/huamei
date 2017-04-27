<include file="public:header" />
<script src="__STATIC__/js/kindeditor/kindeditor.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">申诉管理员回复</h1>
</div>
<form id="info_form" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">申述详情</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="80">申诉用户：</th>
				<td colspan="6">
						{$info.uid|getTableValue='id','user','username'}
				</td>
			</tr>
			<tr>
				<th width="80">联系方式：</th>
				<td colspan="6">
						<noempty name="info.qq">QQ：{$info.qq} ； </noempty>
						<noempty name="info.wangwang">旺旺：{$info.wangwang} ；</noempty>
						<noempty name="info.phone"> 联系电话：{$info.phone} ； </noempty>
				</td>
			</tr>
			<tr>
				<th width="80">被申诉商家：</th>
				<td colspan="6">
						{$info.sid|getTableValue='id','user','username'}
				</td>
			</tr>
			<tr>
				<th width="80">申述编号：</th>
				<td colspan="6">
						{$info.id}
				</td>
			</tr>
			<tr>
				<th width="80">申述时间：</th>
				<td colspan="6">
						{$info.add_time|date="Y-m-d H:i",###}
				</td>
			</tr>
			<tr>
				<th width="80">单号：</th>
				<td colspan="6">
						{$info.order_id|getTableValue='id','order','order_id'}
				</td>
			</tr>
			<tr>
				<th width="80">所属活动：</th>
				<td colspan="6">
						<a href="{$info.item_id|getTableValue='id','free','click_url'}" target="_blank">{$info.item_id|getTableValue='id','free','title'}</a><br/>
						<a href="{$info.item_id|getTableValue='id','free','pic_url'}" target="_blank"><img src="{$info.item_id|getTableValue='id','free','pic_url'}" width="150"/></a>
				</td>
			</tr>
			<tr>
				<th width="80">申诉理由：</th>
				<td colspan="6">
						{$info.ss_content|htmlspecialchars}
				</td>
			</tr>
			<notempty name="info.ss_pz">
			<tr>
				<th width="80">申诉凭证：</th>
				<td colspan="6">
				<a href="{$info.ss_pz}" target="_blank"><img src="{$info.ss_pz}" width="150"/></a>
				</td>
			</tr>
			</notempty>
			<notempty name="info.ss_pz2">
			<tr>
				<th width="80">申诉凭证2：</th>
				<td colspan="6">
				<a href="{$info.ss_pz2}" target="_blank"><img src="{$info.ss_pz2}" width="150"/></a>
				</td>
			</tr>
			</notempty>
			<notempty name="info.reply_content">
			<tr>
				<th width="80">商家回复内容：</th>
				<td colspan="6">
				{$info.reply_content|htmlspecialchars}
				</td>
			</tr>
			</notempty>
			<notempty name="info.reply_pz">
			<tr>
				<th width="80">商家凭证：</th>
				<td colspan="6">
				<a href="{$info.reply_pz}" target="_blank"><img src="{$info.reply_pz}" width="150"/></a>
				</td>
			</tr>
			</notempty>
			<notempty name="info.reply_time">
			<tr>
				<th width="80">商家回复时间：</th>
				<td colspan="6">
				{$info.reply_time|date="Y-m-d H:i",###}
				</td>
			</tr>
			</notempty>
			<tr>
				<th>申诉审核结果 :</th>
                <td colspan="6">
				<select name="info[status]">
				<option value="等待回复" <if condition="$info['status'] eq '等待回复'">selected="selected"</if>>等待回复</option>
				<option value="关闭" <if condition="$info['status'] eq '关闭'">selected="selected"</if>>关闭</option>
				<option value="已返款" <if condition="$info['status'] eq '已返款'">selected="selected"</if>>已返款</option>
				</select>&nbsp;&nbsp;&nbsp;&nbsp;
				<if condition="$info['status'] neq '已返款'"><input type="checkbox" name="fankuan" value="1"/>是否返款给用户（返款金额￥{$info.item_id|getTableValue='id','free','price'}）</if>
				</td>
			</tr>
			<tr>
				<th>管理员回复 :</th>
                <td colspan="6"><textarea name="info[admin_content]" id="info" style="width:100%;height:400px;visibility:hidden;resize:none;">{$info['admin_content']}</textarea></td>
			</tr>
		</table>
		</div>
        
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px;"></div>
	</div>
</div>
<input type="hidden" name="info[id]" value="{$info.id}" />
<input type="hidden" name="oid" value="{$info.order_id}" />
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
</script>
</body>
</html> 