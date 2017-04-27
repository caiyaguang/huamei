<include file="public:header" />
<div class="pad_10" >
<div class="subnav">
<h1 class="title_2 line_x">删除采集的文章链接</h1>
</div>
<div class="fl" >
<form action="{:u('articleurlcaiji/clear')}" method="post" name="searchform" id="info_form">
	<table width="100%" cellspacing="0" class="table_form">
		<tbody>
			<tr>
				<th>确认清空所有链接：</th>
				<td>
					<input name="isok" type="checkbox" class="input-text" value="1" />&nbsp;&nbsp;<font color=red>(注：必须勾选后才能成功清空！)</font> 
				</td>
			</tr>
	                <tr>
				<th width="120">清空所有链接:</th>
				<td>
					<input type="hidden" name="action" value="clear" />
					<input type="submit" name="dosubmit" class="smt mr10" value="清空" id="dosubmit"/>
				</td>
			</tr>
		</tbody>
	</table>           
</form>
</div>
<div class="fl" style="border-left:20px solid #BFBFBF;padding-left:20px;margin-left:20px">
<form action="{:u('articleurlcaiji/clear')}" method="post" name="searchform" id="info_form">
	<table width="100%" cellspacing="0" class="table_form">
		<tbody>
			<tr>
				<th>确认清空未审核宝贝：</th>
				<td>
					<input name="isok" type="checkbox" class="input-text" value="1" />&nbsp;&nbsp;<font color=red>(注：必须勾选后才能成功清空！)</font> 
				</td>
			</tr>
	                <tr>
				<th width="120">清空未审核宝贝:</th>
				<td> 
					<input type="hidden" name="action" value="notpass" />
					<input type="submit" name="dosubmit" class="smt mr10" value="清空" id="dosubmit"/>
				</td>
			</tr>
		</tbody>
	</table>           
</form>
</div>

</div>



<div class="pad_10" >

 <div class="J_tablelist table_list" data-acturi="{:U('items/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width=25><span data-tdtype="order_by" data-field="id">ID</span></th>                
                <th width=100><span data-tdtype="order_by" data-field="title">文章标题</span></th>
                <th width="200">文章链接</th>                
                <th width="120"><span data-tdtype="order_by" data-field="pass">链接状态</span></th>				
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>                
                <td align="center"><span data-tdtype="edit" data-field="title" data-id="{$val.id}" class="tdedit">{$val.title}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="url" data-id="{$val.id}" class="tdedit">{$val.url}</span></td>	
				<td align="center"><span><if condition="$val.pass eq '0' "><span style="color:gary">已采集</span></if><if condition="$val.pass eq '1' "><span style="color:red">未采集</span></if></td>
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
</body>
</html>