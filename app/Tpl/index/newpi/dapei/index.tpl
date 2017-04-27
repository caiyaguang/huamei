<!doctype html>
<html class="jp-pc w1200">
<head>
<meta charset="utf-8" />
<title>{$page_seo.title}</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>
<script type="text/javascript">
	SITEURL="{:C('ftx_site_url')}";
	CURURL="{:C('ftx_site_url')}";
	WEBNICK="{:C('ftx_site_name')}";
	URL_COOKIE=0;
</script>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/alert.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/dapei/css/index-min.css">
<link rel="stylesheet" type="text/css" href="__STATIC__/dapei/css/common.css">
<link rel="stylesheet" href="__STATIC__/dapei/css/pwater.css">
<script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/dapei/js/jquery.masonry.js"></script>
<script type="text/javascript" src="__STATIC__/dapei/js/jquery.infinitescroll.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/fun.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script>
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" />
<script type="text/javascript">
var isWidescreen=screen.width>=1280; 
if(isWidescreen){document.write("<style type='text/css'>.con-wrap{width:1194px;}</style>");}
</script>
<script type="text/javascript">
function item_masonry(){ 
	$('.mate-box img').load(function(){ 
		$('.ks-waterfall-col').masonry({ 
			itemSelector: '.ks-waterfall',
			columnWidth:224,
			gutterWidth:15								
		});		
	});
		
	$('.ks-waterfall-col').masonry({ 
		itemSelector: '.ks-waterfall',
		columnWidth:224,
		gutterWidth:15								
	});	
}
$(function(){
	function item_callback(){ 		
		$('.mate-box').mouseover(function(){			
			$('.thumb-goods',this).show();
			$('.itemnum',this).hide();
		}).mouseout(function(){			
			$('.thumb-goods',this).hide();	
			$('.itemnum',this).show();
		});		
		item_masonry();	
	}
	item_callback(); 
	$('.mate-box').fadeIn();
	var sp = 1;	
	$(".ks-waterfall-col").infinitescroll({
		navSelector  	: "#more",
		nextSelector 	: "#more a",
		itemSelector 	: ".mate-box",		
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
		$('.ks-waterfall-col').masonry('appended', $newElems, false);
		$newElems.fadeIn();
		item_callback();
		return;
	});
});
</script>
<style>
#infscr-loading{bottom:10px;left:45%;position:absolute;text-align:center;height:20px;line-height:20px;z-index:100;width:120px;margin:0 auto}
</style>
</head>
<body>
<include file="public:header" />
<div class="con-wrap page-content lis-page">
<div style="margin:10px 0;overflow:hidden;height:280px;">
  {:R('advert/index', array(6), 'Widget')}
  {:R('advert/index', array(7), 'Widget')}
</div>

<div class="list-main">
  <div class="list-title clearfix">  
   <div class="dapei-listnav">
	<div class="nav-tags clearfix">
	<a href="{:U('dapei/index')}" <empty name="cid">class="current"</empty>><em>全部</em></a>
    <volist name="acats" id="vol">
    <a href="{:U('dapei/cate',array('id'=>$vol['id']))}" <if condition="$vol.id eq $cid"> class="current" </if>>{$vol.name}</a>
	</volist> 
	</div>
</div>
  </div>
</div>
<div class="ucenter-list-wrap clearfix style-listpage" id="J_dataContent">
<div class="list-con-inner clearfix style-waterfall inline-waterfall">
<div class="ks-waterfall-col">
<volist name="dapei_list" id="dapei" key="i" mod="5">
<div class="mate-box ks-waterfall">
              <div class="info-wrap">
                  <div class="info-img">
                    <a href="{:U('dapei/read',array('id'=>$dapei['id']))}" target="_blank">
                      <img src="{$dapei.pic_url}_240x10000Q90.jpg" alt="{$dapei.title}" width="224" >
                    </a>
                    <div class="info-detail">
                      <span class="itemnum">{$dapei.itemnum}件搭配宝贝</span>
                      <div class="thumb-goods" style="display: none;">					  
                        <div class="thumb-mL10 clearfix">
						<if condition="$dapei['onepic'] eq '' ">
	                    <else/>
                          <a href="{$dapei.click_url}" target="_blank" rel="nofollow">
                              <img src="{$dapei.onepic}_72x72xz.jpg" alt="{$dapei.title}">
                          </a>
						</if>
						<if condition="$dapei['twopic'] eq '' ">
	                    <else/>
                          <a href="{$dapei.click_url}" target="_blank" rel="nofollow">
                              <img src="{$dapei.twopic}_72x72xz.jpg" alt="{$dapei.title}">
                          </a>
						</if>
						<if condition="$dapei['threepic'] eq '' ">
	                    <else/>
                          <a href="{$dapei.click_url}" target="_blank" rel="nofollow">
                              <img src="{$dapei.threepic}_72x72xz.jpg" alt="{$dapei.title}">
                          </a>
						</if>  
						<if condition="$dapei['fourpic'] eq '' ">
	                    <else/>
                          <a href="{$dapei.click_url}" target="_blank" rel="nofollow">
                              <img src="{$dapei.fourpic}_72x72xz.jpg" alt="{$dapei.title}">
                          </a>
						</if>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="goods-txt">{$dapei.info}</p>
                  <p class="share-action clearfix">
                      <a href="{$dapei.click_url}" class="favorite J_favorite" target="_blank" rel="nofollow">去看看</a>
                  </p>
              </div>
              <div class="share-user">
                  <p class="user-line">
                      <a href="{$dapei.click_url}" target="_blank" class="user-img" rel="nofollow">
                          <img src="{$dapei.avatar}" alt="{$dapei.author}">
                      </a>
                      <em class="uname"><a href="{$dapei.click_url}" rel="nofollow" target="_blank">{$dapei.author}</a></em>
                      <span class="daren-icon"></span>
                  </p>
              </div>
          </div>
		  </volist>
		 </div>
		 </div>
         <div id="infscr-loading"></div>
         </div>
  <div id="more"></div>
  <div id="J_pagination" class="pagination content-pager red-pagination">
  <div class="pagination-pages">
  <div class="pagination-page">
  {$page}
 </div>
 </div>
 </div>
 <script type="text/javascript">
      if ($('.pagination-page a.page-next').attr('href')) {
        $('#more').append("<a href='" + $('.pagination-page a.page-next').attr('href') + "'></a>");		
      }
</script>
 </div>
<include file="public:footer" /> 
</body>
</html>