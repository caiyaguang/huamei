<title>{$page_seo.title}</title>
<meta content="{$page_seo.keywords}" name="keywords">
<meta content="{$page_seo.description}" name="description">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/md-list.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" />
<script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/sea-debug.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/jquerya.min.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/fun.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/header.js"></script>


<script type="text/javascript">
	SITEURL="{:C('ftx_site_url')}";
	CURURL="{:C('ftx_site_url')}";
	WEBNICK="{:C('ftx_site_name')}";
	URL_COOKIE=0;
</script>

<script src="__STATIC__/newpi/js/md-totop.js" type="text/javascript"></script>

<if condition="C('ftx_site_quancaiji') eq '1'">
<script type="text/javascript">window.setInterval('$.getJSON("/?m=huameiquancaiji&a=index",{}, function(){});',30000);</script></if>

<if condition="C('ftx_site_zidong') eq '1'">
<script type="text/javascript">
function is_mobile() {    var regex_match = /(nokia|iphone|android|motorola|^mot-|softbank|foma|docomo|kddi|up.browser|up.link|htc|dopod|blazer|netfront|helio|hosin|huawei|novarra|CoolPad|webos|techfaith|palmsource|blackberry|alcatel|amoi|ktouch|nexian|samsung|^sam-|s[cg]h|^lge|ericsson|philips|sagem|wellcom|bunjalloo|maui|symbian|smartphone|midp|wap|phone|windows ce|iemobile|^spice|^bird|^zte-|longcos|pantech|gionee|^sie-|portalmmm|jigs browser|hiptop|^benq|haier|^lct|operas*mobi|opera*mini|320x320|240x320|176x220)/i;  var u = navigator.userAgent;  if (null == u) {   return true;  }  var result = regex_match.exec(u);  if (null == result) {   return false  } else {   return true  } } if (is_mobile()) {  document.location.href= "{:C('ftx_header_html')}"; }</script></if>
