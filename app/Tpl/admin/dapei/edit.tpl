<include file="public:header" />
<script src="__STATIC__/js/fileuploader.js"></script>
<form id="info_form" action="{:u('dapei/edit')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">{:L('article_basic')}</li>
         	<if condition="$info['itemtag'] eq '' ">
	        <else/>		
			<li>{$info.itemtag}</li></if>
			<if condition="$info['one_itemtag'] eq '' ">
	        <else/>
			<li>{$info.one_itemtag}</li></if>
			<if condition="$info['two_itemtag'] eq '' ">
	        <else/>
			<li>{$info.two_itemtag}</li></if>
			<if condition="$info['three_itemtag'] eq '' ">
	        <else/>
			<li>{$info.three_itemtag}</li></if>
			<if condition="$info['four_itemtag'] eq '' ">
	        <else/>
			<li>{$info.four_itemtag}</li></if>
			<li>{:L('article_seo')}</li>
		</ul>
		<div class="J_panes">
			<div class="content_list pad_10">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('article_cateid')} :</th>
						<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('dapei_cate/ajax_getchilds')}" data-selected="{$selected_ids}"></select>
                			<input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td>
					</tr>
					 <tr>
						<th>搭配ID :</th>
						<td>
		                    <input type="text" name="styleid" class="input-text iColorPicker" size="60" value="{$info.styleid}"		                    
		                </td>
					</tr>
		            <tr>
						<th>主商品标题 :</th>
						<td>
		                    <input type="text" name="title" id="J_title" class="input-text iColorPicker" size="60" value="{$info.title}"		                    
		                </td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td>
		                    <input type="text" name="item_url" class="input-text iColorPicker" size="100" value="{$info.item_url}"		                    
		                </td>
					</tr>
					<tr>
						<th>搭配标签 :</th>
						<td>
							<input type="text" name="tags" id="J_tags" class="input-text" size="50" value="{$info.tags}">
                            <input type="button" value="点击获取" id="J_gettags" name="tags_btn" class="btn">
		                </td>
					</tr>
					 <tr>
				<th>主图 :</th>
				<td><img src="{$info.pic_url}" width="50" ><br />
					<input type="text" name="pic_url" class="input-text" size="100" value="{$info.pic_url}">					
				</td>
 			</tr>
			 <tr>
				<th>搭配商品图一 :</th>
				<td><img src="{$info.onepic}" width="50" ><br />
					<input type="text" name="onepic" class="input-text" size="100" value="{$info.onepic}">					
				</td>
 			</tr>
			 <tr>
				<th>搭配商品图二 :</th>
				<td><img src="{$info.twopic}" width="50" ><br />
					<input type="text" name="twopic" class="input-text" size="100" value="{$info.twopic}">					
				</td>
 			</tr>
			 <tr>
				<th>搭配商品图三 :</th>
				<td><img src="{$info.threepic}" width="50" ><br />
					<input type="text" name="threepic" class="input-text" size="100" value="{$info.threepic}">					
				</td>
 			</tr>
			 <tr>
				<th>搭配商品图四 :</th>
				<td><img src="{$info.fourpic}" width="50" >
				<br />
					<input type="text" name="fourpic" class="input-text" size="100" value="{$info.fourpic}">					
				</td>
 			</tr>
		            
		            <tr>
		                <th>详细内容 :</th>
						<td><textarea name="info" cols="100" rows="5">{$info.info}</textarea></td>
					</tr>
					<tr>
					<tr>
						<th>达人昵称 :</th>
						<td><input type="text" name="author" class="input-text" size="30" value="{$info.author}"></td>
					</tr>
					<tr>
						<th>达人头像 :</th>
						<td><img src="{$info.avatar}" width="30" ><br />
						<input type="text" name="avatar" class="input-text" size="100" value="{$info.avatar}"></td>
					</tr>					
						<th>{:L('publish')} :</th>
		 				<td>
		                	<label><input type="radio" name="status" class="radio_style" value="1" <if condition="$info.status eq '1'">checked="checked"</if>> {:L('yes')}</label>&nbsp;&nbsp;
							<label><input type="radio" name="status" class="radio_style" value="0" <if condition="$info.status eq '0'">checked="checked"</if>> {:L('no')}</label>
						</td>
					</tr>
				</table>
			</div>
			<if condition="$info['itemtag'] eq '' ">
	        <else/>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="title" class="input-text" size="100" value="{$info.title}"></td>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.onepic}" width="50" ><br />
						<input type="text" name="onepic" class="input-text" size="100" value="{$info.onepic}"></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="price" class="input-text" size="10" value="{$info.price}"></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="zprice" class="input-text" size="10" value="{$info.zprice}"></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="click_url" class="input-text" size="150" value="{$info.click_url}"><a href="{$info.click_url}" target="_blank">去看看</a></td>
					</tr>
				</table>
			</div>
			</if>
			<if condition="$info['one_itemtag'] eq '' ">
	        <else/>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="one_title" class="input-text" size="100" value="{$info.one_title}"></td>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.twopic}" width="50" ><br />
						<input type="text" name="twopic" class="input-text" size="100" value="{$info.twopic}"></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="one_price" class="input-text" size="10" value="{$info.one_price}"></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="one_zprice" class="input-text" size="10" value="{$info.one_zprice}"></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="one_click_url" class="input-text" size="150" value="{$info.one_click_url}">     <a href="{$info.one_click_url}" target="_blank">去看看</a></td>
					</tr>
				</table>
			</div>
			</if>
			<if condition="$info['two_itemtag'] eq '' ">
	        <else/>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="two_title" class="input-text" size="100" value="{$info.two_title}"></td>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.threepic}" width="50" ><br />
						<input type="text" name="threepic" class="input-text" size="100" value="{$info.threepic}"></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="two_price" class="input-text" size="10" value="{$info.two_price}"></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="two_zprice" class="input-text" size="10" value="{$info.two_zprice}"></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="two_click_url" class="input-text" size="150" value="{$info.two_click_url}"><a href="{$info.two_click_url}" target="_blank">去看看</a></td>
					</tr>
				</table>
			</div>
			</if>
			<if condition="$info['three_itemtag'] eq '' ">
	        <else/>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="three_title" class="input-text" size="100" value="{$info.three_title}"></td>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.fourpic}" width="50" ><br />
						<input type="text" name="fourpic" class="input-text" size="100" value="{$info.fourpic}"></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="three_price" class="input-text" size="10" value="{$info.three_price}"></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="three_zprice" class="input-text" size="10" value="{$info.three_zprice}"></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="three_click_url" class="input-text" size="150" value="{$info.three_click_url}"><a href="{$info.three_click_url}" target="_blank">去看看</a></td>
					</tr>
				</table>
			</div>
			</if>
			<if condition="$info['four_itemtag'] eq '' ">
	        <else/>
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="four_title" class="input-text" size="100" value="{$info.four_title}"></td>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.fivepic}" width="50" ><br />
						<input type="text" name="fivepic" class="input-text" size="100" value="{$info.fivepic}"></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="four_price" class="input-text" size="10" value="{$info.four_price}"></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="four_zprice" class="input-text" size="10" value="{$info.four_zprice}"></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="four_click_url" class="input-text" size="150" value="{$info.four_click_url}"><a href="{$info.four_click_url}" target="_blank">去看看</a></td>
					</tr>
				</table>
			</div>
			</if>
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
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择'); 
$(function() {	
	$('ul.J_tabs').tabs('div.J_panes > div');
	
	//颜色选择器
	$('.J_color_picker').colorpicker();
	 
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.ftxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("dapei/ajax_gettags")}', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);				
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});
});
</script>
</body>
</html>