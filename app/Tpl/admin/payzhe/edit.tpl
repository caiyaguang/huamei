<!--添加管理员-->
<div class="dialog_content">
	<form id="info_form" name="info_form" action="{:u('payzhe/subEdit')}" method="post">
	<table width="100%" class="table_form">
		<tr> 
	      <th width="80">{:L('订单编号')} :</th>
	      <td>{$info.shopUrl}</td>
	    </tr>
	    <input type="hidden" name="id" value="{$info.id}">
		<tr>
        	<th>状态 :</th>
            <td>
            	<label>
            		<input type="radio" name="status" value="1" <if condition="$info.status eq 1">checked</if>> 失败
            	</label>&nbsp;&nbsp;
				<label>
					<input type="radio" name="status" value="2" <if condition="$info.status eq 2">checked</if>> 通过
				</label>
				<label>
					<input type="radio" name="status" value="3" <if condition="$info.status eq 3">checked</if>> 拒绝
				</label>
				<label>
					<input type="radio" name="status" value="0" <if condition="$info.status eq 0">checked</if>> 审核中
				</label>
            </td>
        </tr>
	</table>
	</form>
</div>
