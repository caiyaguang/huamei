<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>
<div class="app">
	<div class="search_warp">
    <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
    	<div class="search" style="float: none;">
    	<form name="search" action="{:C('search/index')}" method="get" id="search"><input type="hidden" name="m" value="search"><input type="hidden" name="a" value="index"><div class="seek_main"><input type="text" name="k" onclick="if(this.value=='请输入内容'){this.value='';this.className='seek_input seek_input_h'}" onblur="if(this.value==''){this.value='请输入内容';this.className='seek_input seek_input_f'}" class="seek_input seek_input_f" value="请输入内容"><button type="submit" id="k" onclick="document.getElementById('k').value=encodeURI(document.getElementById('k').value);getId('search').submit()" class="seek_btn" value="搜本站"><img src="__STATIC__/jwap/images/search.png"></button></div></form></div>
        
      </div>	
    <header id="head" class="head">
        <div class="fixtop">
        <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
        <span id="t-index">{:C('ftx_site_name')}</span>
        <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
    </div>
    </header>

<include file='public:lunbo'/>
  <div class="index_w">

    <!-- <ul class="category"> -->
    <li 
<?php
if ($val[name]=='更多'){
echo  ' class="all_o" onclick='."'".'$(".classify .btn-type").click()'."'";
}else{
echo  'class="huamei_1" data-url="'.$val[link].'"';
}
?>
>

    <ftx:nav type="lists" style="other">

	<volist name="data" id="val">

      <li class="huamei_1" data-url="{$val.link}">

        <span>

          <img src="{:attach($val['icon'],'m')}" alt="{$val.name}">

        </span>

        <strong>{$val.name}</strong>

      </li>

     

    </volist>

	</ftx:nav>  

    </ul>



        <div class="hot_recommend">
            
            <dl class="today huamei_1" data-url="{:U('xinpin/index')}">
                <dt class="tit t1">今日更新</dt>
                <dd class="txt">每日10:00更新</dd>
                <dd class="img"><img src="\static\jwap\images\waptubiao\todynew.png" width="108" alt=""><span></span></dd>
                <!-- dl-->
            </dl>
            <dl class="rec_item huamei_1" data-url="{:U('yugao/index')}" _hover-ignore="1">
                    <dt class="tit">精选预告</dt>
                    <dd class="txt">好货早收藏</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee257497dd5.png" width="45" alt="好货早收藏"></dd>
                    <!-- dl-->
                </dl><dl class="rec_item huamei_1" data-url="{:U('quan/index')}">
                    <dt class="tit">内部券</dt>
                    <dd class="txt">全网精品总汇</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee25ad427f5.png" width="45" alt="好货不放过"></dd>
                    <!-- dl-->
                </dl><dl class="rec_item huamei_1" data-url="{:U('brand/index')}">
                    <dt class="tit">品牌精选</dt>
                    <dd class="txt">女人的购物天堂</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee25e227b08.png" width="45" alt="女人的购物天堂"></dd>
                    <!-- dl-->
                </dl><dl class="rec_item huamei_1" data-url="{:U('article/index')}">
                    <dt class="tit">时尚美文</dt>
                    <dd class="txt">正品低价、品质保证</dd>
                    <dd class="img"><img src="\static\jwap\images\waptubiao\55ee26066f7d4.png" width="45" alt="正品低价、品质保证"></dd>
                    <!-- dl-->
                </dl>        </div>

        
    </div>



<div id="goods">
<section class="goods" id="goods">
    <ul class="goods-list clear">
<include file='public:itemlist'/>	
	</ul>
</section>
<div class="paging">
<div class="paging-nav next">
{$page}
</div>    
</div>
</div>
<include file='public:footer'/>
</div>
</div>
<script type="text/javascript" src="/static/jwap/js/popup.js"></script>

<script type="text/javascript">
    $(".huamei_1").off("click").on("click",function(){
       window.location.href = $(this).attr("data-url");
    });
</script>
<include file='public:footjs'/>
</body>
</html>