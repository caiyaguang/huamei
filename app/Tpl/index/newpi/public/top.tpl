{:R('advert/index', array(10), 'Widget')}
<div id="toolbar">
<div class="bar-con">
<ul class="topNav fl">
<ftx:nav type="lists" style="top">
<volist name="data" id="val">
<li><a <if condition="$nav_curr eq $val['alias']">class='active'</if>href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a><li>
</volist>
</ftx:nav>
<li><a href="{:C('ftx_header_html')}" target="_blank"><em class="icon-normal icon-phone"></em>手机版</a></li>
</ul>
<notempty name="visitor">
<div class="right-show fr">
 <div class="logined-show">
 <a href="{:U('user/index')}" class="normal-a"><img src="{:avatar($visitor['id'], 20)}"><span class="user">{$visitor.username}</span><em class="cur"></em></a>
 <div class="normal-box login-box">
 <ul>
 <li><a href="{:U('user/like')}"><i class="icon icon-01"></i><span>我的收藏</span></a></li>
 <li><a href="{:U('user/index')}"><i class="icon icon-03"></i><span>账号设置</span></a></li>
 <li><a href="{:U('user/mingxi')}"><i class="icon icon-02"></i><span>账户明细</span></a></li>
 <li><a href="{:U('user/logout')}"><i class="icon icon-04"></i><span>退出</span></a></li>
 </ul>
 </div>
 </div>
 <div class="personal-show">
 <a href="{:U('user/union')}"><span>邀请好友</span></a>　|</div>
 <div class="other-show">
 <a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" target="_blank" rel="nofollow">在线客服</a>
 <a href="{:U('bao/index')}" target="_blank">卖家报名</a>
 </div>
 </div>
 <else/>  
<div class="right-show fr">
<div class="union-login"> 
<volist name="oauth_list" id="val">
	<if condition="$val.code eq 'qq'">
		<a href="{:U('oauth/index', array('mod'=>$val['code']))}" >		
		<span style="background:url(/static/newpi/images/new-alert-total.gif) no-repeat;
		width: 22px;
		height: 25px;
		display: inline-block;
		z-index: 99;
		background-position: 0px -28px;
		vertical-align: middle;
		margin: 0 0px 0 8px;"></span>{$val.name}</a>
	</if>	
	<if condition="$val.code eq 'taobao'">
		<a href="{:U('oauth/index', array('mod'=>$val['code']))}" >		
		<span style="background:url(/static/newpi/images/new-alert-total.gif) no-repeat;
		width: 22px;
		height: 25px;
		display: inline-block;
		z-index: 99;
		background-position:0px -0px;
		vertical-align: middle;
		margin: 0 0px 0 8px;"></span>{$val.name}</a>
	</if>	
	<if condition="$val.code eq 'sina'">
		<a href="{:U('oauth/index', array('mod'=>$val['code']))}" >		
		<span style="background:url(/static/newpi/images/new-alert-total.gif) no-repeat;
		width: 22px;
		height: 25px;
		display: inline-block;
		z-index: 99;
		background-position:0px -55px;
		vertical-align: middle;
		margin: 0 0px 0 8px;"></span>{$val.name}</a>
	</if>
</volist>
&#12288;| </div>
<div class="login-show">
<a href="{:U('user/login')}">登录</a>
<a href="{:U('user/register')}">免费注册</a>&#12288;|</div>
<div class="other-show">
<a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes">在线客服</a>
<a href="{:U('bao/index')}">卖家报名</a></div>
</div>
</notempty>
</div>
</div>