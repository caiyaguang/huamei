<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="/static/js/fileuploader.js"></script>
	<form id="info_form" action="{:u('brand/edit')}" method="post" enctype="multipart/form-data">
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
	<th width="120">所属分类 :</th>
	<td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('brand_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$selected_ids}"></select>
	<input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td>
	</tr>
	<tr>
	<th width="120">品牌ID :</th>
	<td>
	<input type="text" name="activityId" id="J_activityId" class="input-text" size="20" value="{$info.activityId}">
	</td>
	</tr>
	<tr>
	<th width="120">品牌活动 :</th>
	<td>
	<input type="text" name="title" id="J_title" class="input-text" size="20" value="{$info.title}">
	</td>
	</tr>
	<tr>
	<th width="120">品牌LOGO :</th>
	<td>
	<notempty name="info['logo']"><img src="{$info['logo']}" width="100" id="J_img_url_logo"/><br /></notempty>
	<div id="J_upload_logo" class="upload_btn"><span>上传</span></div>					
	<input type="text" id="J_logo_url" name="logo" class="input-text" size="80" value="{$info.logo}"> 
	</td>
	</tr>
	<tr>
	<th width="120">通栏长图 :</th>
	<td>
	<notempty name="info['banner']"><img src="{$info['banner']}" width="100" id="J_img_url_banner"/><br /></notempty>
	<div id="J_upload_banner" class="upload_btn"><span>上传</span></div>					
	<input type="text" id="J_banner_url" name="banner" class="input-text" size="80" value="{$info.banner}"> 
	</td>
	</tr>
	<tr>
	<th width="120">推荐图片 :</th>
	<td><notempty name="info['pic']"><img src="{$info['pic']}" width="100" id="J_img_url_pic"/><br /></notempty>	
	<div id="J_upload_pic" class="upload_btn"><span>上传</span></div>
	<input type="text" name="pic" id="J_pic_url" class="input-text" size="100"value="{$info.pic}">
	</td>
	</tr>	
	<tr>
	<th width="120">新推荐图片 :</th>
	<td><notempty name="info['newpic']"><img src="{$info['newpic']}" width="100" id="J_img_url_newpic"/><br /></notempty>	
	<div id="J_upload_newpic" class="upload_btn"><span>上传</span></div>
	<input type="text" name="newpic" id="J_newpic_url" class="input-text" size="100"value="{$info.newpic}">
	</td>
	</tr>	
	<tr>
	<th width="120">卖家ID数字 :</th>
	<td>
	<input type="text" name="sellerId" id="J_sellerId" class="input-text" size="20" value="{$info.sellerId}">
	</td>
	</tr>	
	<tr>
	<th width="120">是否推荐 :</th>
	<td>
	<select name="hot" class="J_tbcats mr10">
    <option value="0" <if condition="$info['hot'] eq 0">selected="selected"</if>>否</option>
	<option value="1" <if condition="$info['hot'] eq 1">selected="selected"</if>>是</option>    
	</select>
	<span class="gray m110" style="margin-left:10px;">品牌团频道下方的HOT品牌推荐</span>
	</td>
	</tr>   
	<tr>
    <th width="120">品牌介绍 :</th>
	<td>
	<textarea name="desc" id="J_desc" cols="80" rows="2">{$info.desc}</textarea>
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
    <div class="mt10">
	<input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;">	
	</div>
	</div>
    </div>
    <input type="hidden" name="menuid"  value="{$menuid}"/>
    <input type="hidden" name="id" value="{$info.id}" />
    </form>	
    <include file="public:footer" />
	<script>
$(function(){
    var collect_url = "{:U('brand/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'brand', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    function collect_page(){
        $.getJSON(collect_url, {p:p}, function(result){
            if(result.status == 1){
                $.dialog.get('brand').content(result.data);
                p++;
                collect_page(p);
            }else{
                $.dialog.get('brand').close();
                $.ftxia.tip({content:result.msg});
            }
        });
    }    
});
</script>
<script type="text/javascript">
$('.J_cate_select').cate_select('请选择');
$(function() {	
	//上传图片
    var logo_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_logo'),
        multiple: false,
        action: "{:U('brand/ajax_upload_img')}",
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
            $('#J_upload_logo').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
            $('#J_upload_logo').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_logo_url').val("/"+result.data);
				$('#J_img_url_logo').attr('src',"/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	var banner_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_banner'),
        multiple: false,
        action: "{:U('brand/ajax_upload_img')}",
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
            $('#J_upload_banner').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           $('#J_upload_banner').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_banner_url').val("/"+result.data);
				$('#J_img_url_banner').attr('src',"/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });	
	
	var pic_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_pic'),
        multiple: false,
        action: "{:U('brand/ajax_upload_img')}",
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
            $('#J_upload_pic').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           $('#J_upload_pic').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_pic_url').val("/"+result.data);
				$('#J_img_url_pic').attr('src',"/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });
    
	var newpic_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_newpic'),
        multiple: false,
        action: "{:U('brand/ajax_upload_img')}",
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
            $('#J_upload_newpic').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           $('#J_upload_newpic').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_newpic_url').val("/"+result.data);
				$('#J_img_url_nerpic').attr('src',"/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	$('ul.J_tabs').tabs('div.J_panes > div');
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_title").formValidator({onshow:'请填写品牌名称',onfocus:'请填写品牌名称'}).inputValidator({min:1,onerror:'请填写品牌名称'}).defaultPassed();
});
function get_child_cates(obj,to_id)
{
	var parent_id = $(obj).val();
	if( parent_id ){
		$.get('?m=brand&a=get_child_cates&g=admin&parent_id='+parent_id,function(data){
				var obj = eval("("+data+")");
				$('#'+to_id).html( obj.content );
	    });
    }
}
 
</script>

</body>
</html>