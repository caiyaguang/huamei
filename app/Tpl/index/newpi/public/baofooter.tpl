<div class="foot">
    <div class="white_bg">
    <div class="foot-con">
        <div class="con-box-n clear">
            <div class="app-side-box fl">
                <p class="app-show"><img src="{:C('ftx_site_weixin')}"></p>
                <p class="app-txt">扫描二维码打开</p>
            </div>
            <div class="con-left-info fl">
                <dl class="update">
                   <dt>获取更新</dt>
                    <dd><a href="{:C('ftx_header_html')}" target="_blank" rel="nofollow"><i></i>手机访问</a></dd>
                    <dd><a href="{:C('ftx_qzone_url')}" target="_blank" rel="nofollow"><i></i>QQ空间</a></dd>
                    <dd><a href="{:C('ftx_sina_url')}" target="_blank" rel="nofollow"><i></i>新浪微博</a></dd>
                    <dd><a href="{:C('ftx_tenxun_url')}" target="_blank" rel="nofollow"><i></i>腾讯微博</a></dd>
                </dl>
                <dl class="cooperation">
                    <dt>商务合作</dt>
                    <dd><a href="{:U('bao/index')}" target="_blank"><i></i>卖家免费报名</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>2))}" target="_blank" rel="nofollow"><i></i>商务合作</a></dd>
                </dl>
                <dl class="cor-info">
                    <dt>公司信息</dt>
                    <dd><a href="{:U('help/read',array('id'=>2))}" target="_blank" rel="nofollow"><i></i>广告合作</a></dd>
                    <dd><a href="{:U('help/read',array('id'=>5))}" target="_blank" rel="nofollow"><i></i>免责声明</a></dd>
                </dl>
                <dl class="help-info">
                    <dt>帮助中心</dt>
                    <dd><a href="{:U('help/read',array('id'=>6))}" target="_blank" rel="nofollow"><i></i>常见问题</a></dd>
                    
                    <dd><a href="{:U('article/index')}" target="_blank" rel="nofollow"><i></i>积分攻略</a></dd>
                    <dd><a href="{:C('ftx_site_url')}/sitemap.xml" target="_blank"><i></i>网站地图</a></dd>
                </dl>
                            </div>
            <div class="con-menu fr">
                <a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" class="service-add fl" target="_blank"></a>
            <span class="service-time fl">
                <p>周一至周六 </p>
                <p>9:00-22:00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            </span>
            </div>
        </div>
                    <div class="links">
	<span>友情链接：</span>
<div class="links_list_box">
<ul class="links_list">
<li>
<ftx:link type="lists">	
<volist name="data" id="val" offset="0" length='10'> 
<a href="{$val.url}" target="_blank">{$val.name}</a>
</volist>
</ftx:link>
</li>
<li>
<ftx:link type="lists">	
<volist name="data" id="val" offset="10" length='10'> 
<a href="{$val.url}" target="_blank">{$val.name}</a>
</volist>
</ftx:link>
</li>
<li>
<ftx:link type="lists">	
<volist name="data" id="val" offset="20" length='10'> 
<a href="{$val.url}" target="_blank">{$val.name}</a>
</volist>
</ftx:link>
</li>
</ul>
</div>
</div>
<p class="ft-company">{:C('ftx_site_name')}&nbsp;&nbsp;<a href="http://www.miibeian.gov.cn" target="_blank">{:C('ftx_site_icp')}</a>&#12288;&#12288;Copyright &copy; 2010 - 2016 {:C('ftx_site_url')} All Rights Reserved  {:C('ftx_statistics_code')}</p>                    
</div>
</div>
</div>
<include file="public:rnav" />
</if>
<script type="text/javascript">
var FTXIAER = {
    root: "__ROOT__",
	site: "{:C('ftx_site_url')}",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<ftx:load type="js" href="__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js" />
<script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script>
<script src="__STATIC__/newpi/js/goodlist.js" type="text/javascript"></script>
<script type="text/javascript">
	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script>
<script type="text/javascript" src="__STATIC__/newpi/js/pg-index.js" ></script>
<script type="text/javascript">
(function(){
    //快捷登录
    if ($('a.nav_login').length) {
        $('a.nav_login').click(function (e) {
            e.preventDefault();
            ajaxLogin();
        });
    }
    //快捷注册
    if ($('a.nav_reg').length) {
        $('a.nav_reg').click(function (e) {
            e.preventDefault();
            ajaxRegister();
        });
    }

    // 轮播左侧公共滚动
    var noticeObj=$('#leftNoticeSlide');
    var noticeTimer;
    if(noticeObj.children('li').length>6){
        noticeTimer=setInterval(function(){
            noticeObj.animate({marginTop:"-35px"},500,function(){
                $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
            });
        },3000);
        noticeObj.on({
            'mouseenter':function(){
                clearInterval(noticeTimer);
            },
            'mouseleave ':function(){
                noticeTimer=setInterval(function(){
                    noticeObj.animate({marginTop:"-35px"},500,function(){
                        $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
                    });
                },3000);
            }
        })
    }
    


    var slideUl = $('#sellerSlide');
    var numLi = $('#sellerSlide li').length;
    var sNext = $('#sellerNext');
    var sPrev = $('#sellerPerv');
    var sPage = $('#sellerPage span');
    var curNum = 0;
    var timeOut;
    slideUl.css('width', numLi * 660);
    runTime();
    function slideRun(index) {
        slideUl.stop().animate({'left': -index * 660 + 'px'}, 500);
        sPage.eq(index).addClass('cur').siblings().removeClass('cur');
        return false;
    }
    function runTime() {
        if (timeOut)
            clearInterval(timeOut);
        timeOut = setInterval(function () {
            curNum++;
            if (curNum > numLi - 1) {
                curNum = 0;
            }
            slideRun(curNum);
        }, 6000);
    }
    $('#sellerPerv,#sellerNext,#sellerPage span,#sellerSlide').hover(function () {
        clearInterval(timeOut);
    }, function () {
        runTime();
    });
    sPage.click(function () {
        curNum = $(this).index();
        slideRun(curNum);
    })
    sNext.click(function () {
        curNum++;
        curNum = curNum < numLi ? curNum : 0;
        slideRun(curNum);
    });
    sPrev.click(function () {
        curNum--;
        curNum = curNum < 0 ? numLi - 1 : curNum;
        slideRun(curNum);
    });

    $('.banner-right-qqgroup').mouseover(function () {
        //arrow-down    arrow-right
        var display = $('.sell-qq-group').css("display");
        if (display == "none") {
            $('.sell-qq-group').show();
            $('#arrow-img').removeClass('arrow-right');
            $('#arrow-img').addClass('arrow-down');
        }
    });
    $('.banner-right-qqgroup').mouseout(function () {
        $('.sell-qq-group').hide();
        $('#arrow-img').removeClass('arrow-down');
        $('#arrow-img').addClass('arrow-right');
    });
    function getData() {
        myObj.jsForLogin();
    }

    // 卖家升级遮罩层JS功能
    var documentHeight = $(window).height();
    $(".seller-page-seller-shadow").height(documentHeight);

    // 关闭遮罩层
    // 调用popShadow函数弹出遮罩层


    function popShadow() {
        $(".part-activity-bottom span a").click(function () {
            $(".seller-page-seller-shadow").show();
            $(".seller-page-seller-content").show();
        })
        $(".seller-page--sc-close").click(function () {
            $(".seller-page-seller-shadow").hide();
            $(".seller-page-seller-content").hide();
        })
        $(window).resize(function () {
            var documentHeight = $(window).height();

            $(".seller-page-seller-shadow").height(documentHeight);

        });
    }


})()
</script>
{:C('ftx_weibo_code')}
{:C('ftx_tencent_code')}
{:C('ftx_taojindian_html')}