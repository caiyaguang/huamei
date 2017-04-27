<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<!--添加店铺-->
    <div class="subnav">
    <h1 class="title_2 line_x">添加品牌</h1>
    </div>  	
    <script src="/static/js/fileuploader.js"></script>
    <form id="info_form" name="info_form" action="{:u('brand/add')}" method="post" enctype="multipart/form-data">
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
	<th width="120">品牌链接：</th>
    <td><input type="text" id="good_link" name="link" class="input-text" size="50" >
	<input type="button" value="一键采集" id="J_get_info" name="click_url_btn" class="btn">	
	<p id="good_link_error" style="display:none;" class="onError">错误</p>	
	</td>
	</tr>
	<tr>
	<th width="120">品牌团ID :</th>
	<td>
	<input type="text" name="activityId" id="J_activityId" class="input-text" size="20">
	</td>
	</tr>	
    <tr>
	<th width="120">所属分类 :</th>
	<td>
	<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('brand_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select>
	<input type="hidden" name="cate_id" id="J_cate_id" value="" />
	</td>
	</tr>
	<tr>
	<th width="120">品牌活动 :</th>
	<td>
	<input type="text" name="title" id="J_title" class="input-text" size="20">
	</td>
	</tr>
	<tr>
	<th width="120">品牌LOGO :</th>
	<td><img id="J_img_url_logo"  width="100" ><br />
	<input type="text" name="logo" id="J_logo_url" class="input-text" size="100" >
	<div id="J_upload_logo" class="upload_btn"><span>上传</span></div>
	</td>
	</tr>
	<tr>
	<th width="120">通栏长图 :</th>
	<td><img id="J_img_url_banner"  width="100" ><br />
	<input type="text" name="banner" id="J_banner_url" class="input-text" size="100" >
	<div id="J_upload_banner" class="upload_btn"><span>上传</span></div>
	</td>
	</tr>
    <tr>
	<th width="120">推荐图片 :</th>
	<td><img id="J_img_url_pic"  width="100" ><br />
	<input type="text" name="pic" id="J_pic_url" class="input-text" size="100" >
	<div id="J_upload_pic" class="upload_btn"><span>上传</span></div>
	</td>
	</tr>
	<tr>
	<th width="120">新推荐图片 :</th>
	<td><img id="J_img_url_nerpic"  width="100" ><br />
	<input type="text" name="newpic" id="J_newpic_url" class="input-text" size="100" >
	<div id="J_upload_newpic" class="upload_btn"><span>上传</span></div>
	</td>
	</tr>	
	<tr>
	<th width="120">卖家ID数字 :</th>
	<td>
	<input type="text" name="sellerId" id="J_sellerId" class="input-text" size="20">
	</td>
	</tr>	
	<tr>
	<th width="120">是否推荐 :</th>
	<td>
	<select name="hot" class="J_tbcats mr10">
    <option value="0">否</option>
	<option value="1">是</option>    
	</select>
	<span class="gray m110" style="margin-left:10px;">品牌团频道下方的HOT品牌推荐</span>
	</td>
	</tr>
    <tr>
    <th width="120">品牌介绍 :</th>
	<td>
	<textarea name="desc" id="J_desc" cols="80" rows="2"></textarea>
	</td>
	</tr>	
    </table>
	</div>
    <div class="content_list pad_10 hidden">
	<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
    <tr>
    <th width="120">{:L('seo_title')} :</th>
    <td><input type="text" name="seo_title" class="input-text" size="60" value=""></td>
    </tr>
    <tr>
    <th>{:L('seo_keys')} :</th>
    <td><input type="text" name="seo_keys" class="input-text" size="60" value=""></td>
    </tr>
    <tr>
    <th>{:L('seo_desc')} :</th>
    <td><textarea name="seo_desc" cols="80" rows="8"></textarea></td>
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
	$("#good_link").formValidator({onshow:'输入爱淘宝品牌折扣频道任意单个品牌地址：http://ai.taobao.com/sales/brand/index.htm',onfocus:'输入爱淘宝品牌折扣频道任意单个品牌地址：http://ai.taobao.com/sales/brand/index.htm'}).inputValidator({min:1,onerror:'输入爱淘宝品牌折扣频道任意单个品牌地址：http://ai.taobao.com/sales/brand/index.htm'});	
	$("#J_title").formValidator({onshow:'请填写品牌活动或标题',onfocus:'请填写品牌活动或标题'}).inputValidator({min:1,onerror:'请正确填写品牌活动或标题'});	
	$("#J_sellerId").formValidator({onshow:"请填写卖家数字ID",onfocus:"请填写卖家数字ID",oncorrect:"填写正确",onempty:"请填写卖家数字ID"}).inputValidator({min:1,max:11,onerror:"请正确填写卖家数字ID"});	
	$("#J_logo_url").formValidator({onshow:"请上传品牌logo或输入品牌logo地址",onfocus:"请上传品牌logo或输入品牌logo地址",oncorrect:"填写正确",onempty:"请上传品牌logo或输入品牌logo地址"}).inputValidator({min:1,onerror:"请正确上传品牌logo或输入店铺品牌logo"});	
	
	var collect_url = "{:U('brand/ajaxgetid')}";	
	
		$('#J_get_info').live('click', function() {
			var link = $("#good_link").val();
			
			//ajax获取数据
			  $.getJSON('{:U("brand/ajaxGetItem")}',{link:link},function(data){
                if(data.status===1)
                {
                    var info=data.data;	
                    $('#J_cate_id').val(info['cate_id']);                    					
					$('#J_logo_url').val(info['logo']);
					$('#J_img_url_logo').attr('src',info['logo']); 
					$('#J_banner_url').val(info['banner']);
					$('#J_img_url_banner').attr('src',info['banner']); 
					$('#J_pic_url').val(info['pic']);
					$('#J_img_url_pic').attr('src',info['pic']); 
					$('#J_newpic_url').val(info['newpic']);
					$('#J_img_url_nerpic').attr('src',info['newpic']); 
                    $('#J_title').val(info['title']);
					$("#J_sellerId").val(info['sellerId']);
					$("#J_activityId").val(info['activityId']);
					$("#J_desc").val(info['desc'])					
                }else
                {
                    $.ftxia.tip({icon:'alert',content:data.msg});
                }
            });
			
		});


});

</script>

</body>
</html> 