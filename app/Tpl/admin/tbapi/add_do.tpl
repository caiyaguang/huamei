<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">添加采集器</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('tbapi/add')}" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">{:L('tbk_name')}：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" />
                    <span class="gray ml10">{:L('tbk_name_desc')}</span>
		    <input type="hidden" name="http_mode"  value="0" />
                </td>
            </tr>
			<tr>
				<th width="120">采集入库分类：</th>
                <td>
					<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" />
				</td>
			</tr>
			<tr>
            <th width="150">选择入库性别 :</th>
           <td>
           <select name="sex">
		   <option value="0">无</option>
			<option value="1">男</option>
			<option value="2">女</option>			
            </select>
           </td>
        </tr>
            <tr>
                <th>{:L('keyword')}：</th>
                <td>
                    <input name="q" type="text" class="input-text" size="20" />
                    <span class="gray ml10">填写一个，不可多个</span>
                </td>
            </tr>
			<tr>
                <th>地区（可选）：</th>
                <td>
                    <input name="itemloc" type="text" class="input-text" size="20" />
                    <span class="gray ml10">可选</span>
                </td>
            </tr>
			 <tr>
                <th>（不可选）：</th>
                <td>                   
                    <input type="text" name="cat" class="input-text" size="20" >
                    <span class="gray ml10">不要输入选择</span>
              </td>
            </tr>
			<tr>
                <th>价格范围（可选）：</th>
                <td>
                    <input type="text" name="start_price" size="10" class="input-text" value="1"/> - 
                    <input type="text" name="end_price" size="10" class="input-text" value="99999"/> 
                    <span class="gray ml10">可不填，最低价格和最高最高一起设置才有效</span>
                </td>
            </tr>
			
			<tr>
                <th>{:L('sort_order')}（可选）：</th>
                <td>
            <select name="sort">			
			<option value="tk_rate_des">佣金比率从高到低</option>
			<option value="tk_rate_asc">佣金比率从低到高</option>
			<option value="total_sales_des">销量从高到低</option>
			<option value="total_sales_asc">销量从低到高</option>
			<option value="tk_total_commi_des">总支出佣金从高到低</option>
			<option value="tk_total_commi_asc">总支出佣金从低到高</option>
			<option value="tk_total_sales_des">累积推广量从高到低</option>
			<option value="tk_total_sales_asc">累积推广量从低到高</option>
            </select>
            </td>
            </tr>
			 <tr>
                <th>佣金比率（可选）：</th>
                <td>
                    <input type="text" name="start_tk_rate" size="10" class="input-text" value="10" /> - 
                    <input type="text" name="end_tk_rate" size="10" class="input-text" value="10000"/> 
                    <span class="gray ml10">{:L('tbk_item_coupon_rate_desc')}</span>
                </td>
            </tr>		
			 
			
			<tr>
            <th width="150">是否商城（可选）：</th>
           <td>
           <select name="is_tmall">	
		    <option value="false">默认</option>	
			<option value="true">是</option>
					
            </select>
			<span class="gray ml10">选择“是”表示只采集天猫商品，选择“默认”表示不判断。</span>
           </td>
        </tr>		
		<tr>
            <th width="150">是否海外（可选）：</th>
           <td>
           <select name="is_overseas">	
		    <option value="false">默认</option>	
			<option value="true">是</option>					
            </select>
			<span class="gray ml10">选择“是”表示只采集海外商品，选择“默认”表示不判断。</span>
           </td>
        </tr>
			<tr>
                <th>采集页数：</th>
                <td>
		    <select name="page" id="page">
			<?php for($a=1;$a<=100;$a++){?>
			<option value="<?php echo $a; ?>" <if condition="100 eq $a"> selected</if> >采集<?php echo $a;?>页</option>
			<?php } ?>
		    </select>
            </td>
            </tr>
            <tr>
                <th>每页采集数量：</th>
                <td>
                    <input name="page_size" type="text" class="input-text" size="20" value="40"/>
                    <span class="gray ml10">请填写1-100之间的整数</span>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</div>
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择');
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});
});
</script>
</body>
</html>
