<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">首页参数 - 设置</h1>
</div>
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form contentWrap">

			<tr width="150">
            <th>{:L('index_page_size')} :</th>
            <td><input type="text" name="setting[index_page_size]" size="5" class="input-text" value="{:C('ftx_index_page_size')}" /></td>
        </tr>

		<tr width="150">
            <th>屏蔽关键字 :</th>
            <td><input type="text" name="setting[index_not_text]" size="30" class="input-text" value="{:C('ftx_index_not_text')}" />以,分隔</td>
        </tr>

		<tr width="150">
            <th>显示分类 :</th>
            <td>
			
			<volist name="cate_data" id="cat">
			<label class="mr10">
				<input type="checkbox" class="J_checkitem" name="setting[index_cids][]"  <range name="cat['id']" value="$index_cids" type="in" >checked</range>  value="{$cat.id}"> {$cat.name} </label>
			</volist>

			</td>
        </tr>
 
       


		 <tr>
            <th width="150">排序方式 :</th>
            <td>
                    <select name="setting[index_sort]" class="J_tbcats mr10">
                        <option value="volume desc"  <if condition="C('ftx_index_sort') eq 'volume desc'">selected</if> >销量从高到低</option>
			<option value="volume asc"   <if condition="C('ftx_index_sort') eq 'volume asc'">selected</if>>销量从低到高</option>
			<optgroup label="──────"></optgroup>
			<option value="coupon_price desc" <if condition="C('ftx_index_sort') eq 'coupon_price desc'">selected</if> >价格从高到低</option>
			<option value="coupon_price asc"  <if condition="C('ftx_index_sort') eq 'coupon_price asc'">selected</if> >价格从低到高</option>
			<optgroup label="──────"></optgroup>
			<option value="coupon_rate  desc" <if condition="C('ftx_index_sort') eq 'coupon_rate  desc'">selected</if> >折扣从高到低</option>
			<option value="coupon_rate  asc"  <if condition="C('ftx_index_sort') eq 'coupon_rate  asc'">selected</if> >折扣从低到高</option>
			<optgroup label="──────"></optgroup>
			<option value="id  desc"  <if condition="C('ftx_index_sort') eq 'id  desc'">selected</if> >按添加时间排前</option>
			<option value="id  asc"   <if condition="C('ftx_index_sort') eq 'id  asc'">selected</if> >按添加时间排后</option>
			<optgroup label="──────"></optgroup>
			<option value="coupon_start_time  desc"  <if condition="C('ftx_index_sort') eq 'coupon_start_time  desc'">selected</if> >按活动开始时间排前</option>
			<option value="coupon_start_time  asc"   <if condition="C('ftx_index_sort') eq 'coupon_start_time  asc'">selected</if> >按活动开始时间排后</option>
            <optgroup label="──────"></optgroup><option value="rand()"   <if condition="C('ftx_index_sort') eq 'rand()'">selected</if> >随机排序</option>
                    </select>
              </td>

        </tr>
        
               <tr>
            <th>是否显示优惠券商品 :</th>
            <td>
                    <select name="setting[index_item_type]" class="J_tbcats mr10">
                        <option value="1"  <if condition="C('ftx_index_item_type')  eq '1'">selected</if> >显示</option>
						<option value="2"   <if condition="C('ftx_index_item_type')  eq '2'">selected</if>>不显示</option>
											
                    </select>
              </td>
        </tr>


		<tr>
            <th>店铺类型 :</th>
            <td>
                    <select name="setting[index_shop_type]" class="J_tbcats mr10">
                        <option value=""  <if condition="C('ftx_index_shop_type')  eq ''">selected</if> >所有</option>
						<option value="B"   <if condition="C('ftx_index_shop_type')  eq 'B'">selected</if>>天猫商城</option>
						<option value="C" <if condition="C('ftx_index_shop_type') eq 'C'">selected</if> >淘宝集市</option>
                    </select>
              </td>
        </tr>


		<tr>
            <th width="150">价格 :</th>
            <td>
				最低：<input type="text" name="setting[index_mix_price]" size="5" class="input-text" value="{:C('ftx_index_mix_price')}" />&nbsp; 
				最高：<input type="text" name="setting[index_max_price]" size="5" class="input-text" value="{:C('ftx_index_max_price')}" />
			</td>
        </tr>

		<tr>
            <th width="150">销量 :</th>
            <td>
				最低：<input type="text" name="setting[index_mix_volume]" size="5" class="input-text" value="{:C('ftx_index_mix_volume')}" />&nbsp; 
				最高：<input type="text" name="setting[index_max_volume]" size="5" class="input-text" value="{:C('ftx_index_max_volume')}" />
			</td>
        </tr>



		<tr>
            <th width="150">商品预告 :</th>
            <td>
                <label><input type="radio" <if condition="C('ftx_wait_time') eq '0'">checked="checked"</if> value="0" name="setting[wait_time]"> 默认</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('ftx_wait_time') eq '1'">checked="checked"</if> value="1" name="setting[wait_time]"> 只显示未开始</label>
				<label><input type="radio" <if condition="C('ftx_wait_time') eq '2'">checked="checked"</if> value="2" name="setting[wait_time]"> 不显示未开始</label>
            </td>
        </tr>

		<tr>
            <th width="150">已结束商品 :</th>
            <td>
                <label><input type="radio" <if condition="C('ftx_end_time') eq '0'">checked="checked"</if> value="0" name="setting[end_time]"> 默认</label> &nbsp;&nbsp;
				<label><input type="radio" <if condition="C('ftx_end_time') eq '1'">checked="checked"</if> value="1" name="setting[end_time]"> 不显示已结束商品</label>
            </td>
        </tr>
	</table>

	<table width="100%" class="table_form contentWrap">
    	<tr class="y-bg">
        	<th width="150">是否包邮 :</th>
        	<td>
            	<input type="radio" <if condition="C('ftx_index_ems') eq '0'">checked="checked"</if> value="0" name="setting[index_ems]"> 默认 &nbsp;&nbsp;
            	<input type="radio" <if condition="C('ftx_index_ems') eq '1'">checked="checked"</if> value="1" name="setting[index_ems]"> 包邮 &nbsp;&nbsp;<span class="gray">API采集不到包邮，如果一定要包邮，请选择淘宝网采集模式</span>
            </td>
    	</tr>	
		<tr>
        	<th width="150">报名页面滚动公告 :</th>
        	<td>
            	<textarea rows="5" cols="50" name="setting[qq_code]">{:C('ftx_qq_code')}</textarea>
            	<span class="gray">前台商家报名页面上方滚动的文字公告</span>
            </td>
    	</tr>
    	
    	<tr>
        	<th width="150">悬浮式分享代码 :</th>
        	<td>
            	<textarea rows="5" cols="50" name="setting[weibo_code]">{:C('ftx_weibo_code')}</textarea>
            	<span class="gray">第三方网站提供的分享代码，例如http://share.baidu.com/、http://www.bshare.cn/、http://www.jiathis.com/getcode/、http://www.zuidaima.com/</span>
            </td>
    	</tr> 
    	<tr>
        	<th width="150">悬浮式广告代码 :</th>
        	<td>
            	<textarea rows="5" cols="50" name="setting[tencent_code]">{:C('ftx_tencent_code')}</textarea>
            	<span class="gray">申请第三方悬浮式广告代码可以填到这里。</span>
            </td>
    	</tr>
    	
   
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
</body>
</html>