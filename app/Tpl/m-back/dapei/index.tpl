<html>
<head>
<include file='public:head'/>
<script type="text/javascript" src="__STATIC__/dapei/js/jquery.masonry.js"></script>
<script type="text/javascript" src="__STATIC__/dapei/js/jquery.infinitescroll.js"></script>
<link href="__STATIC__/jwap/css/pg-brand.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function item_masonry(){ 
    var aa = $(".goods-list li").innerWidth();
	$('.boxt img').load(function(){ 
		$('.goods-list').masonry({ 
			itemSelector: '.ks-waterfall',
			columnWidth:aa,
			gutterWidth:10								
		});		
	});
	$('.goods-list').masonry({ 
		itemSelector: '.ks-waterfall',
		columnWidth:aa,
		gutterWidth:10								
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
    
	<div class="main">
	<include file='public:dapeiheader'/>
    <include file='public:top'/>
		<div class="app">
            <header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a class="btn btn-left btn-back" href="javascript:window.history.go(-1)" title="返回上一页"></a></span>
                    <span id="t-index">穿衣搭配</span>
                    <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                </div>
            </header>
                   
<div id="goods">
<section class="goods" id="goods">

    <ul class="goods-list clear">
<include file='public:dapeiitemlist'/>	
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