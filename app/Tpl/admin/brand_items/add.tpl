<include file="public:header" />
<!--添加商品-->
<div class="subnav">
    <h1 class="title_2 line_x">添加商品</h1>
</div>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="/static/js/fileuploader.js"></script>

<form id="info_form" name="info_form" action="{:u('brand_items/add')}" method="post" enctype="multipart/form-data">
	
	<input type="hidden" name="item_url" id="J_item_url" value="" />
	
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本信息</li>
			<li>SEO设置</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">宝贝链接：</th>
                <td><input type="text" id="good_link" name="link" class="input-text" size="100" >
					<input type="button" value="一键采集" id="J_get_info" name="click_url_btn" class="btn">				     
				</td>
			</tr>
			<tr>
				<th width="120">所属分类 :</th>
                <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('brand_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" /></td>
			</tr>
			<tr>
			<th>商品ID :</th>
			<td>
			<input type="text" name="num_iid" id="J_num_iid" class="input-text iColorPicker" size="60" value="">
			</td>
			</tr>
            <tr>
				<th>商品标题 :</th>
				<td><input type="text" name="title" id="J_title" class="input-text" size="60" ></td>
			</tr>
			<tr>
			<th>促销活动 :</th>
			<td>
			<input type="text" name="cu" id="J_cu" class="input-text" size="50" value="">                            
			</td>
			</tr>
			<tr>
			<th>标签一 :</th>
			<td>
			<input type="text" name="onetag" id="J_onetag" class="input-text" size="50" value="">                            
			</td>
			</tr>
			<tr>
			<th>标签二 :</th>
			<td>
			<input type="text" name="twotag" id="J_twotag" class="input-text" size="50" value="">                            
			</td>
			</tr>
			<tr>
			<th>标签三 :</th>
			<td>
			<input type="text" name="threetag" id="J_threetag" class="input-text" size="50" value="">                            
			</td>
			</tr>
			<tr>
				<th>商品图片 :</th>
				<td><img id="J_pic_url_img"  width="100" ><br />
					<input type="text" name="pic_url" id="J_pic_url" class="input-text" size="50" >
					<div id="J_upload_img" class="upload_btn"><span>上传</span></div>
				</td>
 			</tr>
			<tr>
                <th>推荐理由 :</th>
                <td><textarea name="intro" id="J_intro" cols="80" rows="2"></textarea></td>
            </tr>
			<tr>
                <th>详情描述 :</th>
				<td><script name="desc" id="info" type="text/plain" style="width:100%;height:300px"></script></td>
			</tr>
			<tr>
				<th>销量 :</th>
				<td>
                	<input type="text" name="volume" id="J_volume" class="input-text" size="10">
                </td>
			</tr>
			<tr>
				<th width="120">原价 :</th>
				<td><input type="text" name="price" id="J_price"size="10" class="input-text" > 元</td>
				
			</tr>
			<tr>
				<th>折扣价 :</th>
				<td><input type="text" name="coupon_price" id="coupon_price" size="10" class="input-text" > 元</td>
			</tr>
			<tr>
				<th>商品折扣 :</th>
				<td><input type="text" name="coupon_rate" id="coupon_rate" size="10" class="input-text" /></td>
			</tr>	
			
			<tr>
            <th>所属品牌ID  :</th>
            <td><select class="J_brand_select mr10" name="activityId">	
			<volist name="brandlist" id="val" key="i" mod="3">
			<option value="{$val.activityId}">{$val.title}</option>	
			</volist>	
			</select></td>
            </tr>
            <tr>			
             <th>卖家数字ID:</th>
				<td>
                	<input type="text" name="sellerId" id="J_sellerId" class="input-text" size="20" value="">
                </td>
			</tr>				
			 <tr>
			 <th>是否上架 :</th>
			 <td>
			 <label><input type="radio" name="pass" class="radio_style" value="1" checked="checked"> {:L('yes')}</label>&nbsp;&nbsp;
			 <label><input type="radio" name="pass" class="radio_style" value="0" > {:L('no')}</label>
			 </td>
			 </tr>	
			
		</table>
		</div>
 
		<div class="content_list pad_10 hidden">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">{:L('seo_title')} :</th>
 				<td><input type="text" name="seo_title" class="input-text" size="60" value="{$info.seo_title}"></td>
			</tr>
			<tr>
				<th>{:L('seo_keys')} :</th>
				<td><input type="text" name="seo_keys" class="input-text" size="60" value="{$info.seo_keys}"></td>
			</tr>
			<tr>
				<th>{:L('seo_desc')} :</th>
				<td><textarea name="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
			</tr>
		</table>
		</div>
	
        	
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px;"></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
</form>

<include file="public:footer" />
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script>
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
$('.J_cate_select').cate_select('请选择');
var ue = UE.getEditor('info');
$(function() {
  //上传图片
    var img_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "{:U('brand_items/ajax_upload_img')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           // $('#J_pic_url').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_pic_url').val("/data/upload/item/"+result.data);
				$('#J_pic_url_img').attr('src',"/data/upload/item/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	
	    var extimg_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_extimg'),
        multiple: false,
        action: "{:U('brand_items/ajax_upload_img')}",
        inputName: 'extimg',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_extimg').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
            $('#J_upload_extimg').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_extimg').val(result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });
	
	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签
	
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#good_link").formValidator({onshow:'请填写宝贝链接',onfocus:'请填写宝贝链接'}).inputValidator({min:1,onerror:'请填写宝贝链接'});
	$("#J_cate_id").formValidator({onshow:'请选择分类',onfocus:'请选择分类'}).inputValidator({min:1,onerror:'请选择分类'});	
	$("#J_title").formValidator({onshow:'请填写商品名称',onfocus:'请填写商品名称'}).inputValidator({min:1,onerror:'请填写商品名称'});	
	$("#J_price").formValidator({onshow:"请填写原价",onfocus:"请填写价格",oncorrect:"填写正确",onempty:"请填写价格"}).inputValidator({min:1,max:100,onerror:"请正确填写价格"});	
	$("#coupon_price").formValidator({onshow:"请填写秒杀价",onfocus:"请填写秒杀价",oncorrect:"填写正确",onempty:"请填写秒杀价"}).inputValidator({min:1,max:100,onerror:"请填写秒杀价"});	
	$("#J_volume").formValidator({onshow:"请输入宝贝销量",onfocus:"请输入宝贝销量",oncorrect:"填写正确",onempty:"请输入宝贝销量"}).inputValidator({min:1,max:100,onerror:"请输入正确的数字"});	
	var collect_url = "{:U('brand_items/ajaxgetid')}";	
	
		$('#J_get_info').live('click', function() {
			var link = $("#good_link").val();
			
			//ajax获取数据
			  $.getJSON('{:U("brand_items/ajaxGetItem")}',{link:link},function(result){
                if(result.status===1)
                {   
                    var info=result.data;
					$('#J_pic_url').val(info['pic_url']);
                    $('#J_title').val(info['title']);
                    $('#J_pic_url_img').attr('src',info['pic_url']);                   
                    $('#J_volume').val(info['volume']);
					$('#coupon_rate').val(info['coupon_rate']);
                    $('#J_price').val(info['price']);
					$("#coupon_price").val(info['coupon_price']);
					$("#J_sellerId").val(info['sellerId']);					
					ue.setContent(info['desc']);	
					$("#J_intro").val(info['cu'])
					
                }else
                {
                    $.ftxia.tip({icon:'alert',content:data.msg});
                }
            });
			
			
			
			
			
			
		});

});
$(function() {    
	//自动获取标签	
	$('#J_get_info').live('click', function() {
		var url = $.trim($('#good_link').val());
		if(url == ''){
			$.ftxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("brand_items/ajax_getid")}', {url:url}, function(result){
			if(result.status == 1){
				$('#J_num_iid').val(result.data);				
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});	
});
</script>
</body>
</html>