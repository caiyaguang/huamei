<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>

    <div class="main">       
        <div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a class="btn btn-left btn-back" href="{:U('index/index')}" title="返回网站首页"></a></span>
                    <span id="t-index">个人中心</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                </div>
            </header>
            <div class="user-box">
            <ul class="action-list user-show">
            <li><img src="{:avatar($info['id'], 100)}" class="profile" style="width:60px;height:60px;"><span>{$info.username}</span></li>
            </ul>
            <ul class="action-list">
            <li><a href="{:U('user/gift')}"><em class="icon icon-temai"></em><span>我的礼品</span><em class="cur"></em></a></li>
            <li><a href="{:U('user/like')}"><em class="icon icon-bag"></em><span>我的收藏夹</span><em class="cur"></em><span class="rest"></span></a></li>
            <li><a href="{:U('user/mingxi')}"><em class="icon icon-quan"></em><span>我的积分</span><em class="cur"></em></a></li>
            </ul>
            <ul class="action-list">
            <li>
             <a href="javascript:;" onclick='return confirm("为了您的账户安全，请使用电脑修改资料。")' class="icon icon-address" ></a> <a href="javascript:;" onclick='return confirm("为了您的账户安全，请使用电脑修改资料。")' class="free-reg" >修改资料</a>
            </li>
            
            </ul>
            <ul class="action-list">
            <li><a href="{:U('user/logout')}"><em class="icon icon-help"></em><span>退出登录</span><em class="cur"></em></a></li>


            </ul>
            </div>

           <include file='public:footer'/>
</div>
</div>
<include file='public:footjs'/>

</body>
</html>