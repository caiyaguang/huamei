<!doctype html>
<html>
<head>
<title>联系人列表发私信</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<include file="public:head" />
<css file="__STATIC__/css/ftxia/user.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="in" class="active"><a href="{:U('user/msg',array('do'=>'in'))}">收件箱</a></li>
					<li id="out"><a href="{:U('user/msg',array('do'=>'out'))}">发件箱</a></li>
					<li id="send"><a href="{:U('user/msg',array('do'=>'send'))}">联系客服</a></li>
					<li id="write" class="active"><a href="{:U('user/msg',array('do'=>'write'))}">发私信</a></li>
				</ul>
			</div>
			<div class="log-table">
				
				<div class="mess_box fl">           
            
            <div class="mes_friendly">
                <h4>查找联系人</h4>
                <div class="search_n">
                    <input type="text" id="J_search_uname" class="fl r5">
                    <a href="javascript:;" id="J_search_target" class="btn fl ml5">{:L('search')}</a>
                </div>
                <div id="J_search_list"></div>
            </div>
        </div>
			</div>
		</div>

	</div>
</div>
<include file="public:footer" />
<script src="__STATIC__/js/setting.js"></script>
</body>
</html>