<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">采集器修改</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('tb/edit')}" name="searchform" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">{:L('tbk_name')}：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" value="{$info.name}"/>
                    <span class="gray ml10">{:L('tbk_name_desc')}</span>
		    <input type="hidden" name="http_mode"  value="{$info.http_mode}" />
                </td>
            </tr>
 
			<tr>
				<th>采集入库分类：</th>
                <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td></td>
			</tr>
			<tr>
            <th width="150">商品入库性别 :</th>
           <td>
           <select name="sex">
		   <option value="0" <if condition="$info.sex eq '0'"> selected</if>>无</option>
			<option value="1" <if condition="$info.sex eq '1'"> selected</if>>男</option>
			<option value="2" <if condition="$info.sex eq '2'"> selected</if>>女</option>			
            </select>
           </td>
        </tr>
             <tr>
                <th>{:L('keyword')}：</th>
                <td>
                    <input name="q" type="text" class="input-text" size="20" value="{$info.q}" />
                    <span class="gray ml10">填写一个，不可多个</span>
                </td>
            </tr>
			
           <tr>
                <th>淘宝分类（可选）：</th>
                <td>                   
                    <input type="text" class="input-text" size="20" name="cat" value="{$info.cat}">
                     <span class="gray ml10"><a href="http://bbs.138gzs.com/thread-299-1-1.html" target="_blank">分类cat查询方法</a></span>
                </td>
            </tr>
           <tr>
                <th>价格范围（可选）：</th>
                <td>
                    <input type="text" name="start_price" size="10" class="input-text" value="{$info.start_price}"/> - 
                    <input type="text" name="end_price" size="10" class="input-text" value="{$info.end_price}"/> 
                    <span class="gray ml10">可不填，最低价格和最高最高一起设置才有效</span>
                </td>
            </tr>
             <tr>
            <th>{:L('sort_order')}（可选）：</th>
            <td>
            <select name="sort">
			<option value="default" <if condition="$info.sort eq 'default'"> selected</if>>综合排序</option>
			<option value="renqi-desc" <if condition="$info.sort eq 'renqi-desc'"> selected</if>>人气从高到低</option>
			<option value="sale-desc" <if condition="$info.sort eq 'sale-desc'"> selected</if>>销量从高到低</option>
			<option value="credit-desc" <if condition="$info.sort eq 'credit-desc'"> selected</if>>信用从高到低</option>
			<option value="price-desc" <if condition="$info.sort eq 'price-desc'"> selected</if>>价格从高到低</option>
			<option value="price-asc" <if condition="$info.sort eq 'price-asc'"> selected</if>>价格从低到高</option>
			<option value="total-asc" <if condition="$info.sort eq 'total-asc'"> selected</if>>总价从低到高</option>
			<option value="total-desc" <if condition="$info.sort eq 'total-desc'"> selected</if>>总价从高到低</option>
			
                    </select>
                </td>
            </tr>
			<tr>
            <th width="150">是否商城（可选）：</th>
           <td>
           <select name="tmall">		  
			<option value="1" <if condition="$info.tmall eq '1'"> selected</if>>是</option>
			<option value="0" <if condition="$info.tmall eq '0'"> selected</if>>默认</option>			
            </select>
			<span class="gray ml10">选择“是”表示只采集天猫商品，选择“默认”表示不判断。</span>
           </td>
        </tr>
		<tr>
            <th width="150">是否包邮（可选）：</th>
           <td>
           <select name="baoyou">		  
			<option value="1" <if condition="$info.baoyou eq '1'"> selected</if>>是</option>
			<option value="0" <if condition="$info.baoyou eq '0'"> selected</if>>默认</option>			
            </select>
			<span class="gray ml10">选择“是”表示只采集包邮，选择“默认”表示不判断。</span>
           </td>
        </tr>
		<tr>
            <th width="150">是否新品（可选）：</th>
           <td>
           <select name="new">		  
			<option value="1" <if condition="$info.new eq '1'"> selected</if>>是</option>
			<option value="0" <if condition="$info.new eq '0'"> selected</if>>默认</option>			
            </select>
			<span class="gray ml10">选择“是”表示只采集淘宝新规定的新品属性，选择“默认”表示不判断。</span>
           </td>
        </tr>
		<tr>
            <th width="150">是否折扣促销（可选）：</th>
           <td>
           <select name="zk">		  
			<option value="1" <if condition="$info.zk eq '1'"> selected</if>>是</option>
			<option value="0" <if condition="$info.zk eq '0'"> selected</if>>默认</option>			
            </select>
			<span class="gray ml10">选择“是”表示只采集折扣促销的商品，选择“默认”表示不判断。</span>
           </td>
        </tr>
			<tr>
                <th>采集页数：</th>
                <td>

					<select name="page" id="page">
					<?php for($a=1;$a<=100;$a++){?>
						<option value="<?=$a?>" <if condition="$info.page eq $a"> selected</if> >采集<?php echo $a; ?>页</option>
					<?php 
					}
					?>
                    </select>
                </td>
            </tr>            
            <tr>
                <th></th>
                <td>
		    <input type="hidden" name="id"  value="{$info.id}" />
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
