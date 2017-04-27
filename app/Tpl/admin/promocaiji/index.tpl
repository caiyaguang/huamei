<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link href="__STATIC__/css/admin/style.css" rel="stylesheet"/>
	<title>{:L('website_manage')}</title>
	<script>
	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<volist name=":L('js_lang')" id="val">
		lang.{$key} = "{$val}";
	</volist>
	</script>
</head>
<notempty name="big_menu">
{$big_menu.title}　
</notempty>
<body>


<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="__STATIC__/js/fileuploader.js"></script>
<form id="J_info_form" action="{:U('promocaiji/setting')}" method="post">
  <div class="pad_lr_10">
    <div class="col_tab">
      <ul class="J_tabs tab_but cu_li">
        <li class="current">{:L('promo_basic')}</li>
        <li>{:L('promo_seo')}</li>
      </ul>
      <div class="J_panes">
        <div class="content_list pad_10">
          <table width="100%" cellspacing="0" class="table_form">
            <tr>
              <th>活动名称 :</th>
              <td><input type="text" name="title" id="J_title" class="input-text iColorPicker" size="60" /></td>
            </tr>
            <tr>
              <th width="150">入库分类 :</th>
              <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('promo_cate/ajax_getchilds', array('type'=>0))}" ></select>
                <span class="red ml10">必选，请选择采集后要写入的分类。</span></td>
            </tr>
            <tr>
              <th>推广链接 :</th>
              <td><input type="text" name="click_url" id="J_click_url" class="input-text iColorPicker" size="100" /></td>
            </tr>
            <tr> </tr>
            <tr>
              <th>缩略图 :</th>
              <td><notempty name="info['pic_url']"><img src="{$info['pic_url']}" width="100" id="J_pic_url_img"/><br /></notempty>
                <div id="J_upload_img" class="upload_btn"><span>上传</span></div>
                <input type="text" id="J_pic_url" name="pic_url" class="input-text" size="80" value="{$info.pic_url}">
                图片规格（460*307px）</td>
            </tr>
            <tr>
              <th>活动简介1 :</th>
              <td><textarea name="intro" cols="100" rows="5"></textarea></td>
            </tr>
            <tr>
            <tr>
              <th>活动简介2 :</th>
              <td><textarea name="intro1" cols="100" rows="5"></textarea></td>
            </tr>
            <tr>
              <th>活动简介3 :</th>
              <td><textarea name="intro2" cols="100" rows="5"></textarea></td>
            </tr>
            <tr>
              <th>活动简介4 :</th>
              <td><textarea name="intro3" cols="100" rows="5"></textarea></td>
            </tr>
            <tr>
            <tr>
              <th>活动简介5 :</th>
              <td><textarea name="intro4" cols="100" rows="5"></textarea></td>
            </tr>
            <tr>
              <th>活动简介6 :</th>
              <td><textarea name="intro5" cols="100" rows="5"></textarea></td>
            </tr>            
              <th>是否上架 :</th>
              <td><label><input type="radio" name="pass" class="radio_style" value="1" <if condition="$info.pass eq '1'">checked="checked"</if>> {:L('yes')}</label> &nbsp;&nbsp;
                <label><input type="radio" name="pass" class="radio_style" value="0"  <if condition="$info.pass eq '0'">checked="checked"</if> > {:L('no')}</label></td>
            </tr>
          </table>
        </div>
        <div class="content_list pad_10 hidden">
          <table width="100%" cellspacing="0" class="table_form">
            <tr>
              <th width="120">{:L('seo_title')} :</th>
              <td><input type="text" name="seo_title" id="seo_title" class="input-text" size="60" /></td>
            </tr>
            <tr>
              <th>{:L('seo_keys')} :</th>
              <td><input type="text" name="seo_keys" id="seo_keys" class="input-text" size="60" /></td>
            </tr>
            <tr>
              <th>{:L('seo_desc')} :</th>
              <td><textarea name="seo_desc" id="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
            </tr>
          </table>
        </div>
      </div>
      <div class="mt10">
        <input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;">
        <br />
        <br />
        <br />
      </div>
    </div>
  </div>
  <input type="hidden" name="cate_id" id="J_cate_id" value="0" />
</form>
<include file="public:footer" /> 
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script> 
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script> 
<script>
$(function(){
    var collect_url = "{:U('promocaiji/collect')}";
    $('#J_info_form').ajaxForm({success:complete, dataType:'json'});
    var p = 2;
    function complete(result){
        if(result.status == 1){
            $.dialog({id:'promocaiji', title:result.msg, content:result.data, padding:'', lock:true});
            p = 2;
            collect_page();
        } else {
            $.ftxia.tip({content:result.msg, icon:'alert'});
        }
    }
    $('.J_cate_select').cate_select({field:'J_cate_id'});
});
</script> 
<script type="text/javascript">
$(function() {	
  //上传图片
    var img_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "{:U('items/ajax_upload_img')}",
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
                $('#J_pic_url').val("{:C('ftx_site_url')}/data/upload/item/"+result.data);
				$('#J_pic_url_img').attr('src',"{:C('ftx_site_url')}/data/upload/item/"+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_title").formValidator({onshow:'请填写活动名称',onfocus:'请填写活动名称'}).inputValidator({min:1,onerror:'请填写活动名称'}).defaultPassed();
	$("#J_click_url").formValidator({onshow:'请填写推广链接',onfocus:'请填写推广链接'}).inputValidator({min:1,onerror:'请填写推广链接'}).defaultPassed();
});
</script>
</body>
</html>