<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
</head>
<body>
<body>       

    <div class="main">
    <include file='public:dapeiheader'/>
    <include file='public:top'/>
        <div class="app">
		
    <header class="head" id="head">
        <div class="fixtop">
                            <span id="t-find"><a class="btn btn-left btn-back" href="javascript:window.history.go(-1)" title="返回上一页"></a></span>
                            <span id="t-index">搭配详情</span>
                            <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                    </div>        
    </header>
        
            <div id="item">
                <div class="item-good">
                    <div class="img_show">
                        <ul id="target" class="clear">
                            <li><img src="{$item['pic_url']}"></li>
                        </ul>                
                    </div>
                    <div class="list-price buy"><span class="price-new ml"><i>{$item.itemnum}</i>件搭配宝贝</span></div>
                    <h1>{$item.title}</h1>
                    <div class="better_change">
                        <h3>精挑细选</h3>
                        <ul class="better_show clear">
                            <li>
                                <div class="better_info">
                                    <i class="xp"></i>
                                    <span>新品特价</span>
                                </div>
                            </li>
                            <li>
                                <div class="better_info">
                                    <i class="xs"></i>
                                    <span>限时特卖</span>
                                </div>
                            </li>
                            <li>
                                <div class="better_info">
                                    <i class="cx"></i>
                                    <span>诚信品牌</span>
                                </div>
                            </li>
                            <li>
                                <div class="better_info">
                                    <i class="tj"></i>
                                    <span>人气推荐</span>
                                </div>
                            </li>
                            <li class="last">
                                <div class="better_info">
                                    <i class="by"></i>
                                    <span>全国包邮</span>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
         
		<a href="{$item.click_url}" target="_self" class="btn-pay buy" rel="nofollow">立即去抢购</a>
                <div class="bady-part">
                    <div id="bady-tab" class="bady-tab clear">
                        <ul>
                            <li><a href="javascript:;">相关搭配</a> </li>
                            <li><a href="javascript:;">达人推荐</a> </li>
                            <li><a href="javascript:;">商品评论</a> </li>
                        </ul>
                    </div>
                <div class="tab1">
				<if condition="$item['pic_url'] eq '' ">
	            <else/>
                <img src="{$item.pic_url}" alt="{$item.title}">
				<br></if>
				<if condition="$item['onepic'] eq '' ">
	            <else/>
                <img src="{$item.onepic}" alt="{$item.title}">
				<br></if>
				<if condition="$item['twopic'] eq '' ">
	            <else/>
                <img src="{$item.twopic}" alt="{$item.title}">
				<br></if>
				<if condition="$item['threepic'] eq '' ">
	            <else/>
                <img src="{$item.threepic}" alt="{$item.title}">
				<br></if>
				<if condition="$item['fourpic'] eq '' ">
	            <else/>
                <img src="{$item.fourpic}" alt="{$item.title}">
				</if>
                    </div>
                    <div class="com-big tab2"  style="display:none;">
                        <div class="com-list">
                               <ul>
							   <li>
                               {$item.info}
							   </li>
							   </ul>
                                                    </div>
                    </div>
                    <div class="com-big tab3" style="display:none">
                        <div class="com-list">
                            <ul>
                            <div class="ds-thread" data-thread-key="{$item.id}" data-title="{$item.title}" data-url="{:C('ftx_site_url')}index.php?m=dapei&a=read&id={$item.id}"></div>
							</ul>
                        </div>
                    </div>
                </div>
            </div>

                 <div class="normal item-recommend clear">
                <h3><span>猜你还喜欢:</span></h3>
                <ul class="goods-list clear">
					<include file="public:dapeihotitems" />
                </ul>
            </div>                
                <div class="buy_btn clear">
                <a href="{:C('ftx_header_html')}" class="go_home"><img src="/static/jwap/images/home.png">返回首页</a>
                <div class="buy_info">
				<a href="{$item.click_url}" target="_self" class="go_tmall" rel="nofollow">立即去抢购<i></i></a>				                    
                </div>
            </div>
			<include file='public:footer'/>
           </div>
		   </div>

    
    <script type="text/javascript">
        $("#bady-tab li").eq(0).addClass("active");        
        $('#bady-tab li').on('click', function(){
        $("#bady-tab li").removeClass("active");
        $(this).addClass("active");
        $(".tab1,.tab2,.tab3").hide();
        $(".tab"+($(this).index()+1)).show();
        });
    </script>
	<script type="text/javascript"> var duoshuoQuery = {short_name:"138gzs"}; (function() { var ds = document.createElement('script'); ds.type = 'text/javascript';ds.async = true; ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js'; ds.charset = 'UTF-8'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds); })(); </script>
	<include file='public:footjs'/>
</body>
</html>