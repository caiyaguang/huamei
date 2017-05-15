<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="/static/jwap/css/md-other.css" />
</head>
<body>
    <div class="main">
        <include file='public:header'/>
        <include file='public:top'/>
        <div class="app">
            <div class="view current" id="seach-page">
                <div id="p-head">
                    <div class="fixtop" style="z-index:1;">
                        <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                        <span id="p-index">关于我们</span>
                        <span id="p-user"></span>
                    </div>
                </div>
            </div>
            <div class="about_us">
                <h1 class="logo"><img width="29%" src="{:C('ftx_wap_logo')}"></h1>
                <ul class="about-box_v04">
                    <li>
                        <span class="juan04_title">上{:C('ftx_site_name')}·购便宜</span>
                        <div class="mid-logo" style="width:100%"><img width="100%" src="/static/jwap/images/about/juan04_md.png"></div>
                        <p class="con">&nbsp;&nbsp;&nbsp;&nbsp;{:C('ftx_site_name')}(<em>{:C('ftx_site_url')}</em>)是一家专注网购省钱的折扣精选特卖平台。每日通过汇聚各大电商平台的独家折扣精品，以更低的价格优惠，严格的样品质检和服务监督，为广大的用户提供最实惠的商品和完整的网购服务,是目前中国成长最快的电子商务企业之一。<br>&nbsp;&nbsp;&nbsp;&nbsp;{:C('ftx_site_name')}（九块邮）旗下的一款9.9元包邮移动购物应用。<br>&nbsp;&nbsp;</p>
                    </li>

                    <li>
                        <h3>精品服务</h3>
                        <div class="box-ab">
                            <img class="fl" alt="" src="/static/jwap/images/about/about1.jpg">
                        </div>

                        <div class="box-ab">
                            <img class="fl" alt="" src="/static/jwap/images/about/about2.jpg">
                        </div>

                        <div class="box-ab">
                            <img class="fl" alt="" src="/static/jwap/images/about/about3.jpg">
                        </div>
                        <div class="box-ab ">
                            <img class="fl" alt="" src="/static/jwap/images/about/about4.jpg">
                        </div>

                        <div class="box-ab">
                            <img class="fl" alt="" src="/static/jwap/images/about/about5.jpg">
                        </div>
                    </li>
					<include file='public:footer'/>
                </ul>
            </div>
			
        </div>
    </div>
   <include file='public:footjs'/>
</body>
</html>