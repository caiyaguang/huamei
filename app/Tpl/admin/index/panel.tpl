<include file="public:header" />
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/ftxia.js"></script>
<script src="__STATIC__/js/admin.js"></script>
<div class="pad_10">
	<div class="clearfix">

		<div class="col-2 fl mr10" style="width:48%">
			<h6>我的个人信息</h6>
			<div class="content">
				您好，<b style="color:#06C"> {$my_admin.username}</b> &nbsp;[超级管理员] &nbsp;&nbsp;&nbsp;<a class="red" href="{:u('index/logout')}">[{:L('logout')}]</a><br />
				登录IP： {$ip} [ {$time}]<br />
                
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>提示建议</h6>
			<div class="content">
				<div class="bk20 hr"><hr /></div>
					<notempty name="message">
						<volist name="message" id="val">
						<div class="on{$val.type}">&nbsp;{$val.content}</div><br />
						</volist>
					</notempty>
			</div>
		</div>
		<div class="bk10"></div>
		<div class="col-2 fl mr10" style="width:48%">
			<h6>系统信息</h6>
			<div class="content">
				{:L('ftxia_version')}：<font style="color:#090">HUAMEICMS</font>{$system_info.ftxia_version}<br />
				{:L('server_os')}：{$system_info.server_os}<br />
				{:L('web_server')}：{$system_info.web_server}<br />
				{:L('php_version')}：{$system_info.php_version}<br />
				支持函数：<span class="{$system_info.curl}">远程读取</span>
				<span class="onCorrect">编码转换</span>
				<span class="{$system_info.zlib}">页面压缩</span>
				<br />
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>授权信息</h6>
			<div class="content">
				授权类型：<span><font color="green">华美网络终身授权</font></span><br />
				授权域名：<span><font color="green"><a href="{:C('ftx_site_url')}" target="_blank">{$system_info.server_domain}</a></font></span><br />
				<div class="bk20 hr"><hr /></div>
				淘客论坛：<a href="http://bbs.138gzs.com" target="_blank">bbs.138gzs.com</a> <br />
				技术支持：<a href="http://wpa.qq.com/msgrd?v=3&uin=422677261&site=qq&menu=yes" target="_blank"><img border="0" src="http://wpa.qq.com/pa?p=2:422677261:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> 
			</div>
		</div>
        <div class="bk10"></div>
        <div class="col-2 fl mr10" style="width:48%">
			<h6>官方动态</h6>
			<div class="content">
				<script type="text/javascript" src="http://bbs.138gzs.com/api.php?mod=js&bid=3"></script>
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>   
	</div>
</div>
</body>
</html>