<include file="public:header" />
<script src="__STATIC__/js/fileuploader.js"></script>
<form id="info_form" action="{:u('brand/edit')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">{:L('brand_basic')}</li>         	
			<li>{:L('brand_seo')}</li>
		</ul>
		<div class="J_panes">
			<div class="content_list pad_10">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('brand_cateid')} :</th>
						<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('brand_cate/ajax_getchilds')}" data-selected="{$selected_ids}"></select>
                			<input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td>
					</tr>
					 <tr>
						<th>商品ID :</th>
						<td>
		                    <input type="text" name="num_iid" class="input-text iColorPicker" size="60" value="{$info.num_iid}">
		                </td>
					</tr>
		            <tr>
						<th>商品标题 :</th>
						<td>
		                    <input type="text" name="title" id="J_title" class="input-text iColorPicker" size="60" value="{$info.title}">
		                </td>
					</tr>					
					<tr>
						<th>促销活动 :</th>
						<td>
							<input type="text" name="cu" id="J_tags" class="input-text" size="50" value="{$info.cu}">                            
		                </td>
					</tr>
					<tr>
						<th>标签一 :</th>
						<td>
							<input type="text" name="onetag" id="J_tags" class="input-text" size="50" value="{$info.onetag}">                            
		                </td>
					</tr>
					<tr>
						<th>标签二 :</th>
						<td>
							<input type="text" name="twotag" id="J_tags" class="input-text" size="50" value="{$info.twotag}">                            
		                </td>
					</tr>
					<tr>
						<th>标签三 :</th>
						<td>
							<input type="text" name="threetag" id="J_tags" class="input-text" size="50" value="{$info.threetag}">                            
		                </td>
					</tr>
					 <tr>
				<th>图片:</th>
				<td><img src="{$info.pic_url}" width="120" ><br />
					<input type="text" name="pic_url" class="input-text" size="150" value="{$info.pic_url}">					
				</td>
 			    </tr>
				<tr>
                <th>详情描述 :</th>				
				<td><script name="desc" id="desc" type="text/plain" style="width:100%;height:300px">{$info.desc}</script></td>
                </tr>
		            <tr>
		                <th>推荐理由 :</th>
						<td><textarea name="intro" cols="100" rows="5">{$info.intro}</textarea></td>
					</tr>
					<tr>
					<tr>
            <th>所属品牌ID  :</th>
            <td>
			<select class="J_brand_select mr10" name="activityId">	
			<volist name="brandlist" id="val" key="i" mod="3">
			<option value="{$val.activityId}" <if condition="$info['activityId'] eq $val['activityId']">selected="selected"</if>>{$val.title}</option>	
			</volist>	
			</select>
			</td>
            </tr>
					
					<tr>
						<th>卖家数字ID  :</th>
						<td><input type="text" name="sellerId" class="input-text" size="50" value="{$info.sellerId}"></td>
					</tr>					
					<tr>
				<th>销量 :</th>
				<td>
                	<input type="text" name="volume" id="J_volume" class="input-text" size="10" value="{$info.volume}">
                </td>
			</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="price" class="input-text" size="10" value="{$info.price}"> 元</td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="coupon_price" class="input-text" size="10" value="{$info.coupon_price}"> 元</td>
					</tr>
					<tr>
						<th>折扣 :</th>
						<td><input type="text" name="coupon_rate" class="input-text" size="5" value="{$info.coupon_rate}"> 折</td>
					</tr>	
					 <tr>
						<th>是否上架 :</th>
		 				<td>
		                	<label><input type="radio" name="pass" class="radio_style" value="1" <if condition="$info.pass eq '1'">checked="checked"</if>> {:L('yes')}</label>&nbsp;&nbsp;
							<label><input type="radio" name="pass" class="radio_style" value="0" <if condition="$info.pass eq '0'">checked="checked"</if>> {:L('no')}</label>
						</td>
					</tr>
				</table>
			</div>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('seo_title')} :</th>
		 				<td><input type="text" name="seo_title" id="seo_title" class="input-text" size="60" value="{$info.seo_title}"></td>
					</tr>
					<tr>
						<th>{:L('seo_keys')} :</th>
						<td><input type="text" name="seo_keys" id="seo_keys" class="input-text" size="60" value="{$info.seo_keys}"></td>
					</tr>
					<tr>
						<th>{:L('seo_desc')} :</th>
						<td><textarea name="seo_desc" id="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
					</tr>
				</table>
			</div>
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"><br /><br /><br /></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
<input type="hidden" name="id" id="id" value="{$info.id}" />
</form>
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script>
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script>
<include file="public:footer" />
<script>
var ue = UE.getEditor('desc'); 
$('.J_cate_select').cate_select('请选择'); 
$(function() {	
	$('ul.J_tabs').tabs('div.J_panes > div');	
});
</script>
</body>
</html>