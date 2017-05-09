<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"><meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no"><meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-touch-fullscreen" content="yes"><meta name="full-screen" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"><meta name="format-detection" content="address=no"><link href="__STATIC__/jwap/css/style_v3.css" rel="stylesheet" type="text/css" /><link href="__STATIC__/jwap/css/jp.bag.css" rel="stylesheet" type="text/css" /><title><?php echo ($page_seo["title"]); ?></title><meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>"><meta name="description" content="<?php echo ($page_seo["description"]); ?>"><script src="__STATIC__/jwap/js/jquery-1.8.0.js"></script><script src="__STATIC__/jwap/js/underscore.js"></script><script src="__STATIC__/jwap/js/layer.js"></script><script type="text/javascript">	SITEURL="<?php echo C('ftx_header_html');?>";
	CURURL="<?php echo C('ftx_header_html');?>";
	WEBNICK="<?php echo C('ftx_site_name');?>";
	URL_COOKIE=0;
</script></head><body><div class="main"><div class="app-other"><ul><li class="normal <?php if($nav_curr == index): ?>active<?php endif; ?> "><a href="<?php echo C('ftx_header_html');?>"><em class="home"></em>网站首页</a></li><li class="normal  <?php if($nav_curr == jiu): ?>active<?php endif; ?>"><a href="<?php echo U('jiu/index');?>"><em></em>9.9包邮</a></li><?php if(!empty($tag_list)): if(is_array($tag_list)): $i = 0; $__LIST__ = $tag_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$bcate): $mod = ($i % 2 );++$i;?><li class="normal <?php if($tag == $bcate['id']): ?>active<?php endif; ?>"><a href="<?php echo U('jiu/index',array('tag'=>$bcate['id']));?>" title="<?php echo ($bcate["name"]); ?>"><em></em><?php echo ($bcate["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; endif; ?></ul><p><a href="<?php echo U('user/index');?>"><em  class="icon-user"></em><br>个人中心</a><a href="<?php echo U('about/index');?>"><em class="icon-about"></em><br>关于我们</a></p></div><script type="text/javascript">	if(navigator.userAgent.indexOf("MicroMessenger") > -1 && navigator.userAgent.indexOf("iPhone") > -1 ){
		if(location.href.indexOf("deal") > -1){
			$("#xq_a").find('img').attr("src","/static/jwap/images/goumai_i.png");
			$("#open_t").html("无法正常购买？请在浏览器中打开！");
		}
	}else{
		if(location.href.indexOf("deal") > -1){
			$("#xq_a").find('img').attr("src","/static/jwap/images/goumai_a.png");
			$("#open_t").html("无法正常购买，请在浏览器中打开！");
		}

	}

	$("#open_d").on('click',  function(event) {
		$("#open_d").hide(400);
		$("#xq_a").show(400);
	});

	$("#xq_a").on('click',  function(event) {
		$("#xq_a").hide(400);
		$("#open_d").show(400);
	});
</script><div class="app"><header id="head" class="head"><div class="fixtop"><span id="t-find"><a href="javascript:window.history.go(-1)" class="btn btn-left btn-back" title="返回上一页"></a></span><span id="t-index"><?php echo ($cinfo["name"]); ?></span><span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span></div></header><div id="goods"><section class="goods" id="goods"><ul class="goods-list clear"><script>$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})
</script><?php if(is_array($items_list)): $i = 0; $__LIST__ = $items_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i; if($item["class"] == 'start'): ?><li><a class="goods-a" href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_self"><img src="<?php echo attach(get_thumb($item['pic_url'], '_m'),'item');?>"><?php echo (wapnewicon($item["add_time"])); ?></a><a isconvert="1" data-itemid="<?php echo ($item["num_iid"]); ?>" target="_self"><h3><?php echo ($item["title"]); ?></h3><div class="list-price start"><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><i class="del">￥<?php echo ($item["price"]); ?></i><span class="good-btn"><?php echo (date("n-j H:i",$item["coupon_start_time"])); ?></span></div></a></li><?php endif; if($item["class"] == 'buy'): ?><li><?php if($item["isq"] == 1): ?><div class="lingquan"><a href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_blank" rel="nofollow"><span>内部券<br><em><?php echo ($item["quan"]); ?>元</em></span><b></b></a></div><?php endif; ?><a class="goods-a" href="<?php echo U('item/index',array('id'=>$item['id']));?>" target="_self"><img src="<?php echo C('ftx_site_flogo');?>" class="<?php if(($mod) == "0"): ?>J_lazy<?php endif; if(($mod) == "1"): ?>J_lazy<?php endif; if(($mod) == "2"): ?>J_lazy<?php endif; if(($mod) == "3"): ?>J_lazys<?php endif; ?> lazy good-pic" d-src="<?php echo attach(get_thumb($item['pic_url'], '_m'),'item');?>"><?php echo (wapnewicon($item["coupon_start_time"])); ?></a><?php if($item["shop_type"] == 'C' ): ?><a isconvert="1" data-itemid="<?php echo ($item["num_iid"]); ?>" target="_self"><h3><?php echo ($item["title"]); ?></h3><div class="list-price buy"><?php if($item["isq"] == 1): ?><span class="title-tips01">券后价<em class="tip-b"></em></span><?php endif; ?><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><span class="good-btn">淘宝</span></div></a><?php endif; if($item["shop_type"] == 'B' ): ?><a isconvert="1" data-itemid="<?php echo ($item["num_iid"]); ?>" target="_self"><h3><?php echo ($item["title"]); ?></h3><div class="list-price buy"><?php if($item["isq"] == 1): ?><span class="title-tips01">券后价<em class="tip-b"></em></span><?php endif; ?><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><span class="good-btn">天猫</span></div></a><?php endif; if($item["shop_type"] == 'M' ): ?><a href="<?php echo U('jump/index',array('id'=>$item['id']));?>" target="_self" rel="nofollow"><h3><?php echo ($item["title"]); ?></h3><div class="list-price buy"><?php if($item["isq"] == 1): ?><span class="title-tips01">券后价<em class="tip-b"></em></span><?php endif; ?><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><i class="del">￥<?php echo ($item["price"]); ?></i><span class="good-btn">美丽说</span></div></a><?php endif; ?></li><?php endif; if($item["class"] == 'gone'): ?><li><a class="goods-a" href="<?php echo U('jump/index',array('id'=>$item['id']));?>" target="_self"><img src="<?php echo attach(get_thumb($item['pic_url'], '_m'),'item');?>"><span class="buy-over"></span></a><a target="_self"><h3><?php echo ($item["title"]); ?></h3><div class="list-price end"><span class="price-new"><i>￥</i><?php echo ($item["coupon_price"]); ?></span><i class="del">￥<?php echo ($item["price"]); ?></i><span class="good-btn">已结束</span></div></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?></ul></section><div class="paging"><div class="paging-nav next"><?php echo ($page); ?></div></div></div><div class="nav_box"><nav class="nav" id="nav"><ul class=""><li><a <?php if($nav_curr == index): ?>class="active"<?php endif; ?> href="<?php echo C('ftx_header_html');?>" target="_self"><em class="icon icon-jz"></em><span>首页</span><em class="line"></em></a></li><li><a <?php if($nav_curr == brand): ?>class="active"<?php endif; ?> href="<?php echo U('brand/index');?>" target="_self"><em class="icon icon-bz"></em><span>品牌折扣</span><em class="line"></em></a></li><li><a <?php if($nav_curr == jiu): ?>class="active"<?php endif; ?> href="<?php echo U('jiu/index');?>" target="_self"><em class="icon icon-jk"></em><span>9.9包邮</span><em class="line"></em></a></li><li><a <?php if($nav_curr == shijiu): ?>class="active"<?php endif; ?> href="<?php echo U('shijiu/index');?>" target="_self"><em class="icon icon-sjk"></em><span>19.9包邮</span><em class="line"></em></a></li><li class="_border"><a <?php if($nav_curr == user/login): ?>class="active"<?php endif; ?> href="<?php echo U('user/index');?>" target="_self"><em class="icon icon-yg"></em><span>个人中心</span><em class="line"></em></a></li></ul></nav></div><div  id="back_top"  class="slide-box" style="display:none"><a href="<?php echo U('user/like');?>" class="bag-enter" title="我的收藏"><img src="/static/jwap/images/bag-icon.png" alt="我的收藏"></a><a href="#" class="back-top" title="返回顶部"><img src="/static/jwap/images/back-top.png" alt="返回顶部"></a></div><div id="foot"><div class="foot-nav"><a href="<?php echo C('ftx_site_url');?>"><img src="/static/jwap/images/phone.png">电脑版</a><a href="<?php echo C('ftx_header_html');?>" class="joa_load_app"><img src="/static/jwap/images/client.png">客户端<img src="/static/jwap/images/tip.png" class="icon-tips"></a><a href="<?php echo C('ftx_header_html');?>" class="_border"><img src="/static/jwap/images/home.png">返回首页</a></div><div class="foot-copyright"></div><h2>copyright © <?php echo C('ftx_site_name');?></h2></div><script type="text/javascript">var FTXIAER = {
    root: "__ROOT__",
	site: "<?php echo C('ftx_header_html');?>",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script><?php $tag_load_class = new loadTag;$data = $tag_load_class->js(array('type'=>'js','href'=>'__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js','cache'=>'0','return'=>'data',));?><script type="text/javascript">document.getElementById("back_top").style.display = "none";
window.onscroll = function () {
    if (document.documentElement.scrollTop + document.body.scrollTop > 100) {
        document.getElementById("back_top").style.display = "block";
    }
    else {
        document.getElementById("back_top").style.display = "none";
    }
}
</script></div></div><script type="text/javascript" src="__STATIC__/jwap/js/mjp.min.js"></script><script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script><script type="text/javascript">	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script><script type="text/javascript" src="__STATIC__/jwap/js/swipeSlide.min.js"></script><script type="text/javascript" src="__STATIC__/jwap/js/jp.common.js"></script><script type="text/javascript">            $(function(){
            function hideMenu() {
                setTimeout("window.scrollTo(0, 0)", 1);
            }

            $('.alert_black_bg .close').on('click', function(){
                $('.alert_black_bg').hide();
                $('#foot').height(120);
            });
            });
            $(".go-app .closed").on("click",function(){
                $(".go-app").hide();
                return false;
            })

</script><?php echo C('ftx_taojindian_html');?></body></html>