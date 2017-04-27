<!doctype html>
<html>
<head>
<include file="public:head" />
<load href="__STATIC__/ftxia/new/css/md-pagination.css" />
<load href="__STATIC__/ftxia/new/css/md-goodslist.css" />
<load href="__STATIC__/ftxia/new/css/pg-zone.css" />
</head>
<body>
<include file="public:header" />

<div class="main">
	<div class="piece jiu_goods">
		<div class="piece_box">
			<div class="jiu_info">
				<div class="jiu_bd content_body fl">
					
                    <div class="jiu_visited">
						<h3>邀请好友得{:L('exchange')}</h3>
						<ul>
							<li><h4>邀请访问</h4>
							<p>通过您的专属邀请链接邀请好友访问{:C('ftx_site_name')}，您将获得{$union.per_visit}{:L('exchange')}，每天最多可以获得{$union.count_visit}{:L('exchange')}！</p>
							</li>
							<li><h4>邀请注册</h4>
							<p>如果邀请的好友成功注册{:C('ftx_site_name')}账号，您将获得{$union.per_reg}{:L('exchange')}，您每个月最多可以获得{$union.count_reg}个{:L('exchange')}！</p>
							</li>
							<li><h4>建议以下方式邀请好友</h4>
							<div class="txt_title">分享到站外</div>
							<div class="share_to">
								<dl>
								<dd>
								<textarea rows="2">我爱上了{:C('ftx_site_name')}每天9块9的小幸福，包邮哦亲~注册还能免费得{:L('exchange')}，换礼品，更有超值商品专享！快来看看吧！</textarea>
								</dd>
								<dd><span class="share_txt">分享到：</span><div class="baidushare"><!-- Baidu Button BEGIN -->
								<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare" data="{$share_url}">
								<a class="bds_qzone" title="分享到QQ空间" href="#"></a>
								<a class="bds_tsina" title="分享到新浪微博" href="#"></a>
								<a class="bds_tqq" title="分享到腾讯微博" href="#"></a>
								<a class="bds_renren" title="分享到人人网" href="#"></a>
								<a class="bds_t163" title="分享到网易微博" href="#"></a>
								<span class="bds_more">更多</span>
								</div>
								<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0" src="http://bdimg.share.baidu.com/static/js/bds_s_v2.js?cdnversion=384944"></script>
								
								<script type="text/javascript">
								var bds_config = {};
								bds_config.bdText = $('div.share_to textarea').val();
								document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
								</script>
								<!-- Baidu Button END --></div></dd>
								<dd><b>小贴士：</b>您可以将专用邀请发送给您的QQ好友，或者贴到QQ	签名、论坛签名等位置让更多的好友看到</dd>
								</dl>
							</div>
							</li>
							<li>
							<dl>
							<dt>贴到Blog或BBS</dt>
							<dd><span class="links_txt">推广地址：</span>
							<input class="links_in" type="text" value="{$union_url}">
							<a class="links_btn" href="javascript:;">复制</a></dd>
							<dd><span class="links_txt">UBB代码：</span>
							<input class="links_in" type="text" value="[url={$union_url}]{:C('ftx_site_name')}{$union_url}[/url]">
							<a class="links_btn" href="javascript:;">复制</a></dd>
							<dd><span class="links_txt">html代码：</span>
							<input class="links_in" type="text" value="&lt;a href = &quot;{$union_url}&quot;&gt;{:C('ftx_site_name')}&lt;/a&gt;">
							<a class="links_btn" href="javascript:;">复制</a></dd>
							</dl>
							</li>
						</ul>
                    </div>
				</div>
				<div class="jiu_right normal_right fr">
	                <include file="public:exchange_info" />
				</div>
			</div>
		</div>
	</div>
</div>
 
<include file="public:footer" />
<script src="__STATIC__/js/setting.js"></script>
</body>
</html>
