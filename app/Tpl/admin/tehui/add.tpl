<include file="public:header" />
<!--添加文章-->
<form id="info_form" action="{:U('tehui/add')}" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">{:L('tehui_basic')}</li>         		
			<li>关联商品一</li>
			<li>关联商品二</li>
			<li>关联商品三</li>
			<li>关联商品四</li>
			<li>关联商品五</li>
			<li>{:L('tehui_seo')}</li>
		</ul>
		<div class="J_panes">
			<div class="content_list pad_10">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('tehui_cateid')} :</th>
						<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('tehui_cate/ajax_getchilds')}" data-selected="{$selected_ids}"></select>
                			<input type="hidden" name="cate_id" id="J_cate_id" value="" /></td>
					</tr>
					 <tr>
						<th>搭配主题ID :</th>
						<td>
		                    <input type="text" name="styleid" class="input-text iColorPicker" size="10" value="">
		                </td>
					</tr>
					<tr>
						<th>关联商品数量 :</th>
						<td>
		                    <input type="text" name="itemnum" class="input-text iColorPicker" size="10" value="">		                    
		                </td>
					</tr>
		            <tr>
						<th>主商品标题 :</th>
						<td>
		                    <input type="text" name="title" id="J_title" class="input-text iColorPicker" size="60" value="">		                    
		                </td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td>
		                    <input type="text" name="item_url" class="input-text iColorPicker" size="100" value="">		                    
		                </td>
					</tr>
					<tr>
						<th>搭配标签 :</th>
						<td>
							<input type="text" name="tags" id="J_tags" class="input-text" size="50" value="">
                            <input type="button" value="点击获取" id="J_gettags" name="tags_btn" class="btn">
		                </td>
					</tr>
					 <tr>
				<th>展示图一 :</th>
				<td><img src="{$info.pic_url}" width="50" ><br />
					<input type="text" name="pic_url" class="input-text" size="100" value="">					
				</td>
 			</tr>
			 <tr>
				<th>展示图二 :</th>
				<td><img src="{$info.one_pic_url}" width="50" ><br />
					<input type="text" name="one_pic_url" class="input-text" size="100" value="">					
				</td>
 			</tr>
			 <tr>
				<th>展示图三 :</th>
				<td><img src="{$info.two_pic_url}" width="50" ><br />
					<input type="text" name="two_pic_url" class="input-text" size="100" value="">					
				</td>
 			</tr>
			 <tr>
				<th>展示图四 :</th>
				<td><img src="{$info.three_pic_url}" width="50" ><br />
					<input type="text" name="three_pic_url" class="input-text" size="100" value="">					
				</td>
 			</tr>
			 <tr>
				<th>展示图五 :</th>
				<td><img src="{$info.four_pic_url}" width="50" >
				<br />
					<input type="text" name="four_pic_url" class="input-text" size="100" value="">					
				</td>
 			</tr>
		            
		            <tr>
		                <th>详细内容 :</th>
						<td><textarea name="info" cols="100" rows="5"></textarea></td>
					</tr>
					<tr>
					<tr>
						<th>达人昵称 :</th>
						<td><input type="text" name="author" class="input-text" size="30" value=""></td>
					</tr>
					<tr>
						<th>达人头像 :</th>
						<td><img src="{$info.avatar}" width="30" ><br />
						<input type="text" name="avatar" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th>浏览量 :</th>
						<td>
						<input type="text" name="hits" class="input-text" size="20" value=""></td>
					</tr>
						<th>{:L('publish')} :</th>
		 				<td>
		                	<label><input type="radio" name="status" class="radio_style" value="1" checked> {:L('yes')}</label>&nbsp;&nbsp;
							<label><input type="radio" name="status" class="radio_style" value="0" > {:L('no')}</label>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="title" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th width="120">属性标签 :</th>
		 				<td><input type="text" name="itemtag" class="input-text" size="100" value=""></td>
						<span class="gray m110" style="margin-left:2px;">关于属性标签的解释：用于标注关联商品属于上衣、裤子、裙子、鞋子、帽子等等种类。填写一个词即可。</span>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.onepic}" width="50" ><br />
						<input type="text" name="onepic" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="price" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="zprice" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="click_url" class="input-text" size="150" value=""></td>
					</tr>
				</table>
			</div>
			
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="one_title" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th width="120">属性标签 :</th>
		 				<td><input type="text" name="one_itemtag" class="input-text" size="100" value=""></td>
						<span class="gray m110" style="margin-left:2px;">关于属性标签的解释：用于标注关联商品属于上衣、裤子、裙子、鞋子、帽子等等种类。填写一个词即可。</span>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.twopic}" width="50" ><br />
						<input type="text" name="twopic" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="one_price" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="one_zprice" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="one_click_url" class="input-text" size="150" value=""></td>
					</tr>
				</table>
			</div>
			
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="two_title" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th width="120">属性标签 :</th>
		 				<td><input type="text" name="two_itemtag" class="input-text" size="100" value=""></td>
						<span class="gray m110" style="margin-left:2px;">关于属性标签的解释：用于标注关联商品属于上衣、裤子、裙子、鞋子、帽子等等种类。填写一个词即可。</span>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.threepic}" width="50" ><br />
						<input type="text" name="threepic" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="two_price" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="two_zprice" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="two_click_url" class="input-text" size="150" value=""></td>
					</tr>
				</table>
			</div>
			
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="three_title" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th width="120">属性标签 :</th>
		 				<td><input type="text" name="three_itemtag" class="input-text" size="100" value=""></td>
						<span class="gray m110" style="margin-left:2px;">关于属性标签的解释：用于标注关联商品属于上衣、裤子、裙子、鞋子、帽子等等种类。填写一个词即可。</span>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.fourpic}" width="50" ><br />
						<input type="text" name="fourpic" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="three_price" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="three_zprice" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="three_click_url" class="input-text" size="150" value=""></td>
					</tr>
				</table>
			</div>
			
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">商品标题 :</th>
		 				<td><input type="text" name="four_title" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th width="120">属性标签 :</th>
		 				<td><input type="text" name="four_itemtag" class="input-text" size="100" value=""></td>
						<span class="gray m110" style="margin-left:2px;">关于属性标签的解释：用于标注关联商品属于上衣、裤子、裙子、鞋子、帽子等等种类。填写一个词即可。</span>
					</tr>
					<tr>
						<th>商品图片 :</th>
						<td><img src="{$info.fivepic}" width="50" ><br />
						<input type="text" name="fivepic" class="input-text" size="100" value=""></td>
					</tr>
					<tr>
						<th>原价 :</th>
						<td><input type="text" name="four_price" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>折扣价 :</th>
						<td><input type="text" name="four_zprice" class="input-text" size="10" value=""></td>
					</tr>
					<tr>
						<th>推广链接 :</th>
						<td><input type="text" name="four_click_url" class="input-text" size="150" value=""></td>
					</tr>
				</table>
			</div>
			
			<div class="content_list pad_10 hidden">
				<table width="100%" cellspacing="0" class="table_form">
					<tr>
						<th width="120">{:L('seo_title')} :</th>
		 				<td><input type="text" name="seo_title" id="seo_title" class="input-text" size="60" value=""></td>
					</tr>
					<tr>
						<th>{:L('seo_keys')} :</th>
						<td><input type="text" name="seo_keys" id="seo_keys" class="input-text" size="60" value=""></td>
					</tr>
					<tr>
						<th>{:L('seo_desc')} :</th>
						<td><textarea name="seo_desc" id="seo_desc" cols="80" rows="8"></textarea></td>
					</tr>
				</table>
			</div>
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"><br /><br /><br /></div>
	</div>
</div>
</form>
<include file="public:footer" />
<script type="text/javascript">	
$('.J_cate_select').cate_select('请选择'); 
$(function() {
	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签	
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.ftxia.tip({content:lang.tehui_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("tehui/ajax_gettags")}', {title:title}, function(result){
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