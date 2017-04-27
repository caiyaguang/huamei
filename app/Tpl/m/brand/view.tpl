<html>
<head>
<include file='public:head'/>
<link href="__STATIC__/jwap/css/pg-brand.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
	<div class="main">
	<include file='public:brandheader'/>
    <include file='public:top'/>
		<div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a class="btn btn-left btn-back" href="javascript:window.history.go(-1)" title="返回上一页"></a></span>
                    <span id="t-index">{$brand.title}</span>
                    <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                </div>
            </header>
            <div class="brand-banner"><img src="{$brand.newpic}" alt="{$brand.desc}"></div>
                         



<div id="goods">
<section class="goods" id="goods">

    <ul class="goods-list clear">
<include file='public:branditemlist'/>	
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