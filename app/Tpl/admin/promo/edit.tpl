<include file="public:header" />
<script src="__STATIC__/js/fileuploader.js"></script>

<form id="info_form" action="{:u('promo/edit')}" method="post" enctype="multipart/form-data">
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
              <td><input type="text" name="title" id="J_title" class="input-text iColorPicker" size="60" value="{$info.title}"></td>
            </tr>
            <tr>
              <th width="120">{:L('promo_cateid')} :</th>
              <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('promo_cate/ajax_getchilds')}" data-selected="{$selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td>
            </tr>
            <tr>
              <th>推广链接 :</th>
              <td><input type="text" name="click_url" id="J_click_url" class="input-text iColorPicker" size="100" value="{$info.click_url}"></td>
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
              <td><textarea name="intro" cols="100" rows="5">{$info.intro}</textarea></td>
            </tr>
            <tr>
            <tr>
              <th>活动简介2 :</th>
              <td><textarea name="intro1" cols="100" rows="5">{$info.intro1}</textarea></td>
            </tr>
            <tr>
              <th>活动简介3 :</th>
              <td><textarea name="intro2" cols="100" rows="5">{$info.intro2}</textarea></td>
            </tr>
            <tr>
              <th>活动简介4 :</th>
              <td><textarea name="intro3" cols="100" rows="5">{$info.intro3}</textarea></td>
            </tr>
            <tr>
            <tr>
              <th>活动简介5 :</th>
              <td><textarea name="intro4" cols="100" rows="5">{$info.intro4}</textarea></td>
            </tr>
            <tr>
              <th>活动简介6 :</th>
              <td><textarea name="intro5" cols="100" rows="5">{$info.intro5}</textarea></td>
            </tr>            
              <th>是否上架 :</th>
              <td><label><input type="radio" name="pass" class="radio_style" value="1" <if condition="$info.pass eq '1'">checked="checked"</if>> {:L('yes')}</label> &nbsp;&nbsp;
                <label><input type="radio" name="pass" class="radio_style" value="0" <if condition="$info.pass eq '0'">checked="checked"</if> > {:L('no')}</label></td>
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
      <div class="mt10">
        <input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="btn btn_submit" style="margin:0 0 10px 100px;"> <br /> <br /><br />
      </div>
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