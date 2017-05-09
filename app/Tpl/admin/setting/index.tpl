<include file="public:header" />
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post" enctype="multipart/form-data">
	<table width="100%" class="table_form">
		<tr>
            <th width="150">{:L('site_url')} :</th>
            <td><input type="text" name="setting[site_url]" class="input-text" size="30" value="{:C('ftx_site_url')}">
	    <span class="gray ml10">网站地址必须以http:// 开头 / 斜杠结尾</span>
	    </td>
        </tr>
        <tr>
        <tr>
            <th width="150">{:L('site_name')} :</th>
            <td><input type="text" name="setting[site_name]" class="input-text" size="30" value="{:C('ftx_site_name')}"><span class="red ml10">尽量简短</span></td>
        </tr>
        
        <tr>
            <th width="150">授权码:</th>
            <td><input type="text" name="setting[site_secret]" class="input-text" size="40" value="{:C('ftx_site_secret')}">
              <span class="gray ml10">请联系华美网络授权QQ422677261 旺旺ningshuli66 论坛<a href="http:\/\/bbs.138gzs.com" target="_blank">bbs.138gzs.com</a></span></td>
        </tr>
            </tr>

		<tr>
            <th width="150">网站SEO标题 :</th>
            <td><input type="text" name="setting[site_title]" class="input-text" size="80" value="{:C('ftx_site_title')}">
              关键字请进去<a href="/index.php?g=admin&amp;m=seo&amp;a=page&amp;menuid=282">SEO设置</a>里设置</td>
        </tr>
		<tr>
            <th width="150">网站SEO描述 :</th>
            <td>
			<textarea rows="4" cols="80" name="setting[site_description]">{:C('ftx_site_description')}</textarea>			
			</td>
        </tr>
        <tr>
            <th>{:L('site_icp')} :</th>
            <td><input type="text" name="setting[site_icp]" class="input-text" size="30" value="{:C('ftx_site_icp')}"></td>
        </tr>
		<tr>
            <th>QQ :</th>
            <td><input type="text" name="setting[qq]" class="input-text" size="30" value="{:C('ftx_qq')}"></td>
        </tr>
        <tr>
            <th>{:L('statistics_code')} :</th>
            <td><textarea rows="4" cols="80" name="setting[statistics_code]">{:C('ftx_statistics_code')}</textarea><span class="gray ml10">放网站统计代码,以及QQ新浪百度等header验证代码,验证后请删除验证代码</span></td>
        </tr>
		 <tr>
            <th width="150">{:L('ipban_switch')} :</th>
            <td>
                <label><input type="radio" <if condition="C('ftx_ipban_switch') eq '1'">checked="checked"</if> value="1" name="setting[ipban_switch]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('ftx_ipban_switch') eq '0'">checked="checked"</if> value="0" name="setting[ipban_switch]"> {:L('close')}</label>
                <span class="gray ml10">如果本站没有添加禁止IP地址库，建议关闭改功能提升性能</span>
            </td>
        </tr>

		 <tr>
            <th width="150">旺旺昵称:</th>
            <td>
                <input type="text" name="setting[kefu_html]" class="input-text" size="80" value="{:C('ftx_kefu_html')}">
                
            </td>
                    <tr>
            <th width="150">数据推送token :</th>
            <td><input type="text" name="setting[site_token]" class="input-text" size="80" value="{:C('ftx_site_token')}">
			<span class="gray ml10">百度站长工具链接主动推送授权token，请登陆百度站长工具获取</span>
			<a href="http://bbs.138gzs.com/thread-5608-1-1.html">申请教程</a></td>
        </tr>
            <th width="150">采集器秘钥 :</th>
            <td>
                <input type="text" name="setting[robots_key]" class="input-text" size="50" value="{:C('ftx_robots_key')}" /><br>
	            <span class="gray ml10">采集器密匙只要是华美网络论坛vip免费联系QQ<a href="tencent://message/?uin=422677261&amp;Site=http://bbs.138gzs.com&amp;Menu=yes" target="_blank">422677261</a>索要</span></td>
        </tr>
            <th>QQ登陆回调地址 :</th>
            <td><input type="text" name="setting[site_uri]" class="input-text" size="100" value="{:C('ftx_site_uri')}">
			<span class="red ml10">必须与申请QQ登陆时填写的回调地址保持一致 教程<a href="http://bbs.138gzs.com/thread-3665-1-1.html" target="_blank">http://bbs.138gzs.com/thread-3665-1-1.html</a></span></td>
        </tr>

		<tr>
            <th width="150">手机wap版地址 :</th>
            <td>
                <textarea rows="1" cols="80" name="setting[header_html]">{:C('ftx_header_html')}</textarea>
                <span class="gray ml10"><br>填写后用手机访问pc网站将自动跳转到手机wap网站</span>
            <a href="http://bbs.138gzs.com/thread-243-1-1.html" target="_blank">http://bbs.138gzs.com/thread-243-1-1.html</a></td>
        </tr>

        	<th>是否开启自动跳转 :</th>
        	<td>
            	<label><input type="radio" class="J_change_zidong" <if condition="C('ftx_site_zidong') eq '1'">checked="checked"</if> value="1" name="setting[site_zidong]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_zidong" <if condition="C('ftx_site_zidong') eq '0'">checked="checked"</if> value="0" name="setting[site_zidong]"> {:L('close')}</label>
				<span class="gray ml10">更换状态后需清理缓存</span>
            </td>
    	</tr>
                		 <tr>
            <th width="150">是否开启付费报名 :</th>
            <td>
                <label><input type="radio" <if condition="C('ftx_site_pay') eq '1'">checked="checked"</if> value="1" name="setting[site_pay]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('ftx_site_pay') eq '0'">checked="checked"</if> value="0" name="setting[site_pay]"> {:L('close')}</label>                
            </td>
        </tr>

		<tr>
            <th width="150">淘点金代码 :</th>
            <td>
                <textarea rows="6" cols="80" name="setting[taojindian_html]">{:C('ftx_taojindian_html')}</textarea>
                <span class="gray ml10"><br>请填写从阿里妈妈申请的与域名对应的完整的淘点金代码，否则将无法跳转。淘点金申请教程<a href="http://bbs.138gzs.com/thread-298-1-1.html" target="_blank">http://bbs.138gzs.com/thread-298-1-1.html</a></span>
            </td>
        </tr>

    	<tr>
        	<th>{:L('site_status')} :</th>
        	<td>
            	<label><input type="radio" class="J_change_status" <if condition="C('ftx_site_status') eq '1'">checked="checked"</if> value="1" name="setting[site_status]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_status" <if condition="C('ftx_site_status') eq '0'">checked="checked"</if> value="0" name="setting[site_status]"> {:L('close')}</label>
            </td>
    	</tr>
        <tr id="J_closed_reason" <if condition="C('ftx_site_status') eq 1">class="hidden"</if>>
        	<th>{:L('closed_reason')} :</th>
        	<td><textarea rows="4" cols="50" name="setting[closed_reason]" id="closed_reason">{:C('ftx_closed_reason')}</textarea></td>
    	</tr>
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('.J_change_status').live('click', function(){
        if($(this).val() == '0'){
            $('#J_closed_reason').fadeIn();
        }else{
            $('#J_closed_reason').fadeOut();
        }
    });
});
</script>
</body>
</html>