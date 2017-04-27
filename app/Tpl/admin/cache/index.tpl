<include file="public:header" />
<!--清理缓存-->
<div class="subnav">
	<div class="content_menu ib_a blue line_x">
		<a class="on"><em>{:L('clear_cache')}</em></a>
	</div>
</div>
<div class="common-form pad_lr_10">
	<form id="info_form" action="{:u('cache/clear')}" method="post">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">

			<thead>
				<tr>
					<th width="3%" align="left"> </th>
					<th width="40%" align="left">缓存目录</th>
					<th width="20%" align="left">描述</th> 
					<th width="37%" align="left">说明</th> 
				</tr>
			</thead>

			<tr>
				<td width="10"><label><input type="checkbox" checked value="field" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'field'))}"> </label></td>
				<td width="120"><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/Data/_fields </td>
				<td>{:L('field_cache')}</td>
				<td><span class="gray mr10">{:L('field_cache_desc')}</span><span id="field_ifm"></span></td>
			</tr>
			<tr>
				<td><label><input type="checkbox" checked value="tpl" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'tpl'))}"></label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/Cache </td>
				<td> {:L('tpl_cache')}</td>
				<td><span class="gray mr10">{:L('tpl_cache_desc')}</span><span id="tpl_ifm"></span></td>
			</tr>
			<tr>
				<td><label><input type="checkbox" checked value="data" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'data'))}"></label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/Data </td>
				<td> {:L('data_cache')}</td>
				<td><span class="gray mr10">{:L('data_cache_desc')}</span><span id="data_ifm"></span></td>
			</tr>
			<tr>
				<td><label><input type="checkbox" checked value="runtime" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'runtime'))}"> </label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/~runtime.php </td>
				<td>{:L('runtime_cache')}</td>
				<td><span class="gray mr10">{:L('runtime_cache_desc')}</span><span id="runtime_ifm"></span></td>
			</tr>
			<tr>
				<td><label><input type="checkbox" checked value="logs" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'logs'))}"></label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/Logs</td>
				<td> {:L('logs_cache')}</td>
				<td><span class="gray mr10">{:L('logs_cache_desc')}</span><span id="logs_ifm"></span></td>
			</tr>
			<tr>
				<td><label><input type="checkbox" checked value="js" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'js'))}"> </label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/static</td>
				<td>JS缓存文件</td>
				<td><span class="gray mr10">修改过JS文件需要更新才会生效</span><span id="js_ifm"></span></td>
			</tr>

			<tr>
				<td><label><input type="checkbox" checked value="api" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'api'))}"> </label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/FtxiaAPI</td>
				<td>华美API缓存</td>
				<td><span class="gray mr10">清空华美网络开放平台API缓存文件</span><span id="api_ifm"></span></td>
			</tr>

			<tr>
				<td><label><input type="checkbox" checked value="taobao" name="type" class="mr5" data-uri="{:U('cache/clear', array('type'=>'taobao'))}"> </label></td>
				<td><img src="/static/images/admin/folde.gif" width="16" height="14"> data/runtime/TaobaoAPI</td>
				<td>淘宝API缓存</td>
				<td><span class="gray mr10">清空阿里妈妈API缓存文件</span><span id="taobao_ifm"></span></td>
			</tr>
            <tr>
            	<th></th>
                <td><input type="button" id="J_clear_cache" class="smt mr10" value="{:L('clear')}"/></td>
                <td></td>
            </tr>
		</table>
	</form>
</div>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('#J_clear_cache').live('click', function(){
        $('input[name="type"]:checked').each(function(){
            var type = $(this).val();
                uri = $(this).attr('data-uri');
            $('#'+type+'_ifm').html(lang.clear_wait);
            $.getJSON(uri, {type:type}, function(result){
                $('#'+type+'_ifm').addClass('onCorrect').html(lang.clear_success);
            });
        });
    });
});
</script>
</body>
</html>