<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<script type="text/javascript">    
    var articleid = "{$tron['id']}&u=1";
    var articleUrl = "{$fzurl}";
</script>
<script type="text/javascript" src="__STATIC__/dapei/js/jquery.masonry.js"></script>
<script type="text/javascript" src="__STATIC__/dapei/js/jquery.infinitescroll.js"></script>
<script type="text/javascript">
function item_masonry(){ 
    var aa = $(".goods-list li").innerWidth();
	$('.boxt img').load(function(){ 
		$('.goods-list').masonry({ 
			itemSelector: '.ks-waterfall',
			columnWidth:aa,
			gutterWidth:16								
		});		
	});
	$('.goods-list').masonry({ 
		itemSelector: '.ks-waterfall',
		columnWidth:aa,
		gutterWidth:16								
	});	
}
$(function(){
	function item_callback(){ 		
		
		item_masonry();	
	}
	item_callback(); 
	$('.boxt').fadeIn();
	var sp = 1;	
	$(".goods-list").infinitescroll({
		navSelector  	: "#more",
		nextSelector 	: "#more a",
		itemSelector 	: ".boxt",		
		loading:{
			img: "/static/dapei/images/masonry_loading_1.gif",
			msgText: ' ',
			finishedMsg: '',           		
			finished: function(){
				sp++;
				if(sp>=10){ //到第10页结束事件
					$("#more").remove();
					$("#infscr-loading").hide();
					$("#J_pagination").show();
					$(window).unbind('.infscr');
				}
			}	
		},errorCallback:function(){ 
			$("#J_pagination").show();
		}		
	},function(newElements){
		var $newElems = $(newElements);
		$('.goods-list').masonry('appended', $newElems, false);
		$newElems.fadeIn();
		item_callback();
		return;
	});
});
</script>
</head>
<body>
<body>       

    <div class="main">
    <include file='public:articleheader'/>
    <include file='public:top'/>
        <div class="app">		
    <header class="head" id="head">
        <div class="fixtop">
                            <span id="t-find"><a class="btn btn-left btn-back" href="javascript:window.history.go(-1)" title="返回上一页"></a></span>
                            <span id="t-index">文章详细内容</span>
                            <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                    </div>        
    </header>
        
            <div id="item">	
<div class="item-good">                  
                    
                    <h1>{$article.title}</h1>
					<div class="list-price buy" style="font-size:13px"><span class="price-new fl" style="font-size:13px"><i style="font-size:13px">来源：</i><a href="{:C('ftx_site_url')}" title="点击访问 {:C('ftx_site_name')}" target='_self'>{:C('ftx_site_name')}</a></span><i class="fr" style="font-size:13px">阅读：<em style="font-size:13px;padding:0;vertical-align:0;">(<code class="hits">{$tron.hits}</code>)</em></i>
					</div>
                    <div class="better_change">
                       
   
	
                        </ul>
                    </div>

                </div>
			
                <div class="bady-part">
                    <div id="bady-tab" class="bady-tab clear">
                        <ul>
                            <li><a href="javascript:;">文章内容</a> </li>                            
                            <li><a href="javascript:;">网友评论</a> </li>
							<li><a href="{:U('article/index')}">文章中心</a> </li>
                        </ul>
                    </div>
                <div class="tabs1">
				<li>
				{$article.info}
				</li>
                </div>                    
                    <div class="com-big tabs2" style="display:none">
                        <div class="com-list">
                            <ul>
                            <script type="text/javascript" src="__STATIC__/jwap/js/talk.js"></script>
							</ul>
                        </div>
                    </div>
					 <div class="com-big tabs3" style="display:none">
					 <include file="public:articlehotitems" />
					 </div>
                </div>
	<div class="btn-pays buy">
	<span class="nec"><if condition="$preid eq 0"><else />上一篇：<a href="{:U('article/read',array('id'=>$preid))}" target="_self" >{$articlep.title}</a></if></span>	<br>
	<span class="prc"><if condition="$nid eq 0">没有了<else />下一篇：<a href="{:U('article/read',array('id'=>$nid))}" target="_self">{$articlen.title}</a></if></span>	
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
        $(".tabs1,.tabs2,.tabs3").hide();
        $(".tabs"+($(this).index()+1)).show();
        });
    </script>
	<script type="text/javascript"> var duoshuoQuery = {short_name:"138gzs"}; (function() { var ds = document.createElement('script'); ds.type = 'text/javascript';ds.async = true; ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js'; ds.charset = 'UTF-8'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds); })(); </script>
	<include file='public:footjs'/>
</body>
</html>