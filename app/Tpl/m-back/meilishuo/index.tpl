<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<div class="main">    
<include file='public:meilishuoheader'/>
<include file='public:top'/>
<div class="app">	
    <header id="head" class="head">
	<div class="fixtop">
        <span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span>
        <span id="t-index">美丽说</span>
        <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
	</div>	
    </header>	

<include file='public:nav'/>


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
<include file='public:footjs'/>
</body>
</html>