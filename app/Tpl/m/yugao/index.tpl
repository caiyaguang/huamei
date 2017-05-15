<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<div class="main">    
<include file='public:header'/>
<include file='public:top'/>
        <div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="{:C('ftx_header_html')}" class="btn btn-left btn-back" title="返回首页"></a></span>
                    <span id="t-index">{$cinfo.name}</span>
                    <span id="t-user"></span>
                    
                </div>
            </header>
           <div id="goods">
<section class="goods" id="goods">

    <ul class="goods-list clear">
<include file='public:yugaoitemlist'/>	
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