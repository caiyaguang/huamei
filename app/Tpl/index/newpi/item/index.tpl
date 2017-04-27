<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/a_003.js"></script>
<link rel="stylesheet" type="text/css" href="__STATIC__/red/css/view.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/red/css/a.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/red/css/a_002.css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/items/css/itm.css" />
</head>
<body>
<include file="public:header" />
<div class="main w1200">
	<div class="place-explain">
		您的位置：<a target="_blank" href="{:C('ftx_site_url')}">{:C('ftx_site_name')}</a>
		&nbsp;&gt;&nbsp;			
					<a target="_blank" href="{:U('index/cate', array('cid'=>$item['cate_id']))}">{$cate_data[$item['cate_id']]['name']}</a>
		&nbsp;&gt;&nbsp; 
		<a class="bady-xx-seo" href="{:U('item/index',array('id'=>$item['id']))}">{$item.title}</a>
	</div>
	<div class="w1200">
	<div class="container fl">
		<div class="product clear">
			<div class="product-pic fl">
				<a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow"><img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="{$item.title}" /></a>				
			</div>
			<div class="product-info fl">
				<h3><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow"><div data-plugin="keyword">{$item.title}</div></a></h3>
				
				<p class="tips clear">
				<if condition="$item.coupon_price eq $item['price'] "><span class="item-pr fl">已卖出：<em class="ffv">{$item.volume}件</em></span>
					<span class="fl">有 <em class="org_2 ffv">{$item.likes}</em>人喜欢</span><else /><span class="item-pr fl">原价：<em class="old-price ffv">{$item.price}元</em></span>
					<span class="fl">折扣：<em class="org_2 ffv">{$item.zk}折</em></span></if>
				</p>
				<p class="price">
					<span class="title-tips01">折扣价格<em class="tip-b"></em></span>
					<em class="org">￥</em><span class="jd-current">{$item.coupon_price}</span> 
					<if condition="$item.ems eq 1">/包邮</if></span>
				</p>
				<div class="pg"></div>
				<div class="item-btn clear" style="position:relative;">
				<div class="share"><a class="buy_ed report" znid="{$item.id}" title="{$item.title}" href="javascript:;"><i class="report-icon"></i>举报</a></div>
					<span class="btn-tip fl">						
						<if condition="$item.class eq 'start'">
							<a class="btn fl {$item.class}"><span>即将开始</span></a>
						<elseif condition="$item.class eq 'gone'"/>
							<a class="btn fl {$item.class}"><span>已卖光</span></a>
						<elseif condition="$item.class eq 'gone'"/>
							<a class="btn fl {$item.class}"><span>已结束</span></a>
						<elseif condition="$item.class eq 'buy'"/>
							<a class="fl go_btn" href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank">
								<if condition="$item.shop_type eq 'C' "><span>去淘宝购买&gt;&gt;</span></if> <if condition="$item.shop_type eq 'M' ">去美丽说抢购购</if> <if condition="$item.shop_type eq 'B' "><span>去天猫购买&gt;&gt;</span></if>
							</a>
						</if>						
					</span>	
               <if condition="$item.cu eq ''"><else/><span class="my-like fl">{$item.cu}</span>	</if>	
             <if condition="$item.isq eq 1">  <div class="btn_buy" _hover-ignore="1">
						购买流程：<a href="{$item.quanurl}" target="_blank" rel="nofollow"><span _hover-ignore="1">①点我领券</span></a><span>&gt;</span><a href="{:U('jump/index',array('id'=>$item['id']))}" rel="nofollow" target="_blank"><span>②点击下单</span></a>
					</div>			</if>
				</div>
                
				<p class="price bady-time">
				  <if condition="$item.class eq 'start' ">
					<span class="fl">开抢时间：</span>
					<span class="buy_time fl" id="end_date_0" data-time="{$item.coupon_start_time}"></span>
					<span class="common nomind shoot_time"><a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_name')} 关注的【{$item.title}】马上就要开始抢购了哦。&time={$item.coupon_start_time|date='20y-m-d H:i',###}&advance=5&url={$item.txurl}" target="_blank">设置提醒</a></span>
                <else />				  
                <if condition="$item.class eq 'gone' ">
					<span class="fl">结束时间：</span>
					<span class="buy_time fl">{$item.coupon_start_time|date="m月d日 H时i分",###}</span>
					<span class="common nomind shoot_time"><a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_name')} 关注的【{$item.title}】下期活动马上就要开始了哦。&time={$item.coupon_end_time|date='20y-m-d H:i',###}&advance=5&url={$item.txurl}" target="_blank">下期提醒</a></span>	                	
				<else />
                <if condition="$item.class eq 'buy' ">
					<span class="fl">离结束还剩：</span>
					<span class="buy_time fl" id="end_date_0" data-time="{$item.coupon_end_time}"></span>
					<span class="common nomind shoot_time"><a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_url')} 关注的【{$item.title}】优惠活动马上就要结束了哦。&time={$item.coupon_end_time|date='20y-m-d H:i',###}&advance=5&url={$item.txurl}" target="_blank">结束提醒</a></span>	
                </if>	
                </if>		
                </if>
				</p>
				</p>
				<div class="other_info">
					<volist name="tags" id="tag">
							<a href="{:U('search/index',array('k'=>($tag)))}" target="_blank">{$tag}</a>
						</volist>
				</div>
			</div>
		</div>
		<div class="quality mb20">
			<div class="quality_bg"></div>
		</div>
		<div class="product-comment">
			<div class="bady-tab" id="bady-tab">
				<ul>
					<li class="tab1">
						<a class="badyactive" href="#desc">商品详情</a>
						<div class="bady-line-top"></div>
					</li>
					<li class="tab2">
						<a class="" href="#comm">买家评价</a>
						<div class=""></div>
					</li>
					<li class="tab3">
						<a href="#user_comment" class="">消费保障<em></em></a>
						<div class=""></div>
					</li>
					<li class="tab4">
						<a href="#hdsm" class="">活动说明<em></em></a>
						<div class=""></div>
					</li>
				</ul>
				<div class="gobuy fr" style="display: none; ">
					<span class="title-tips01">折扣价格<em class="tip-b"></em></span>
					<p class="price fl">
						<em class="org">￥</em> 
						<span class="jd-current">{$item.coupon_price}</span> <if condition="$item.ems eq 1">/包邮</if>
					</p>
					<a class="btns fr" href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><if condition="$item.shop_type eq 'C' "><span>去淘宝购买&gt;&gt;</span></if><if condition="$item.shop_type eq 'B' "><span>去天猫购买&gt;&gt;</span></if></a>
								
				</div>
			</div>
			<div class="bady-tab bady-tab01" >
				<h3 class="items-tit">
				<div class="it-line"></div>
				<div class="line-txt">商品详情<a name="desc" class="" href="#tab1"></a></div>
				</h3>
			</div>
			
		<div style="display: block;" id="descimg" class="information comment" >	
        	
		
		
		<p>{$item.desc}</p>  <p></p><p>{$desc}	{$descc }</p>	
		</div>

				<h3 class="items-tit">
				<a name="hdsm" class="" href="#tab1" style="position:absolute;top:-150px;left:40%;"></a>
				<div class="it-line"></div>
				<div class="line-txt">活动说明</div>
				</h3>
				<div style="padding:0 20px 15px;text-align:center;">
					此商品原价：{$item.price}元、活动价为：{$item.coupon_price}元， 活动时间：{$item.coupon_start_time|date="m月d日 H:i",###}至{$item.coupon_end_time|date="m月d日 H:i",###}
				</div>
			<div class="bady-tab bady-tab02" >		
				<h3 class="items-tit">
				<div class="it-line"></div>
				<div class="line-txt">买家评价<a name="comm" class="" href="#tab1"></a></div>
				</h3>
			</div>
		<div  style="display: block;"  class="information comment" >		
		<div class="ds-thread" data-thread-key="{$item.id}" data-title="{$item.title}" data-url="{:C('ftx_site_url')}index.php?m=item&a=index&id={$item.id}"></div>  
	     <div class="information" style="padding-top: 0px;">
    <div class="com_box" id="pinlun">
              <div class="pl-box"><p>以下是来自天猫买家的评论</p></div>
      <div class="com-list">
        <ul>
                    <li>
            <div class="rate-user-info">
            <span class="rate-user fl">
                {$info.nicker}               <span class="rate-user-grade">
                    <em class="tm-icon t3"> </em>
                    <em class="tm-icon vip-icon blue_2"></em>
                </span>
            </span>
            <span class="rate-right fr">
                <em class="rate-time"></em>
                <em>  {$info.subInfo1} 
                                    </em>
            </span>
              <div class="rate-leirong clear">{$info.feedback}</div>
            </div>
        </li>
                    <li>
            <div class="rate-user-info">
            <span class="rate-user fl">
                {$info.nicker1}                 <span class="rate-user-grade">
                    <em class="tm-icon t2"> </em>
                    <em class="tm-icon vip-icon blue_3"></em>
                </span>
            </span>
            <span class="rate-right fr">
                <em class="rate-time"></em>
                <em>
                                    </em>
            </span>
              <div class="rate-leirong clear">{$info.feedback1}</div>
            </div>
        </li>
                    <li>
            <div class="rate-user-info">
            <span class="rate-user fl">
                {$info.nicker2}                <span class="rate-user-grade">
                    <em class="tm-icon t3"> </em>
                    <em class="tm-icon vip-icon red_5"></em>
                </span>
            </span>
            <span class="rate-right fr">
                <em class="rate-time"></em>
                <em>
                                    </em>
            </span>
              <div class="rate-leirong clear">{$info.feedback2}</div>
            </div>
        </li>
                    <li>
            <div class="rate-user-info">
            <span class="rate-user fl">
               {$info.nicker3}                <span class="rate-user-grade">
                    <em class="tm-icon t3"> </em>
                    <em class="tm-icon vip-icon blue_1"></em>
                </span>
            </span>
            <span class="rate-right fr">
                <em class="rate-time"></em>
                <em>
                    评论来自 淘宝天猫                </em>
            </span>
              <div class="rate-leirong clear">{$info.feedback3}</div>
            </div>
        </li>
                    <li>
            <div class="rate-user-info">
            <span class="rate-user fl">
                 {$info.nicker4}               <span class="rate-user-grade">
                    <em class="tm-icon t2"> </em>
                    <em class="tm-icon vip-icon blue_1"></em>
                </span>
            </span>
            <span class="rate-right fr">
                <em class="rate-time"></em>
                <em>
                    评论来自 淘宝天猫                </em>
            </span>
              <div class="rate-leirong clear">{$info.feedback4}</div>
            </div>
        </li>
                   
                    <p class="more"><a href="{:U('jump/index',array('id'=>$item['num_iid']))}" target="_blank" rel="nofollow">查看更多评论&gt;&gt;</a></p>
            </ul>
      </div>
            </div>
  </div>
 
		</div> 
		

		
		<!---xiaobao--->


 <div class="show_box fl" style="position:relative;">

	 <a name="user_comment" class="" href="#tab3" style="position:absolute;top:-150px;left:40%;"></a>
<div class="bady-part">


    <div class="con">

 <div style="padding-top: 0px;" class="information">
  <div class="xiaobao">
    <div class="xb_icon">
      <a class="xb_s xb_s1" href="javascript:;">商家审核</a>
      <a class="xb_s xb_s2" href="javascript:;">买手砍价</a>
      <a class="xb_s xb_s3" href="javascript:;">验货质检</a>
      <a class="xb_s xb_s4" href="javascript:;">价格监控</a>
      <a class="xb_s xb_s5" href="javascript:;">全国包邮 </a>
      <a class="xb_s xb_s6" href="javascript:;">七天退换</a>
      <a class="xb_s xb_s7" href="javascript:;">闪电发货</a>
    </div>
  </div>
    <div class="xb_js" style="background:rgb(255, 255, 255);">
      <div class="steup steup_01" style="display: none;"></div>
      <div style="display: none;" class="steup steup_02"></div>
      <div style="display: none;" class="steup steup_03"></div>
      <div style="display: none;" class="steup steup_04"></div>
      <div style="display: none;" class="steup steup_05"></div>
      <div style="display: none;" class="steup steup_06"></div>
      <div style="display: block;" class="steup steup_07"></div>
      <em class="jiao"></em>
    </div>
 </div>
</div>
</div>
    </div>
		<!---xiaobao end--->
	</div>
	</div>
	<include file="public:hotitems" />
	<div class="clear"></div>
</div>
</div>
<div class="lend"></div>

<script type="text/javascript" src="__STATIC__/red/js/a_004.js"></script>

<script type="text/javascript">
function show_date_time(end,style,id){
    today=new Date(); 
	timeold=((end)*1000-today.getTime()); 
	if (timeold < 0) {
        return;
    }
    setTimeout("show_date_time("+end+','+style+','+id+")", 100); 
    sectimeold=timeold/1000;
	secondsold=Math.floor(sectimeold); 
	msPerDay=24*60*60*1000;
	e_daysold=timeold/msPerDay;
	daysold=Math.floor(e_daysold); 
	e_hrsold=(e_daysold-daysold)*24;
	hrsold=Math.floor(e_hrsold); 
	e_minsold=(e_hrsold-hrsold)*60;
	minsold=Math.floor((e_hrsold-hrsold)*60); 
	e_seconds = (e_minsold-minsold)*60;
	seconds=Math.floor((e_minsold-minsold)*60); 
	ms = e_seconds-seconds;
	ms = new String(ms);
	ms1 = ms.substr(2,1);
	ms2 = ms.substr(2,2);
	hrsold1=daysold*24+hrsold;
	if(style == 1){
		$("#end_date_"+id).html((hrsold1<10?'0'+hrsold1:hrsold1)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒");
	}else if(style == 2){
		$("#end_date_"+id).html("<em id='d'>"+daysold+"</em>天<em id='h'>"+(hrsold<10?'0'+hrsold:hrsold)+"</em>时<em id='m'>"+(minsold<10?'0'+minsold:minsold)+"</em>分<em id='s'>"+(seconds<10?'0'+seconds:seconds)+"</em>秒");
	}else if(style == 3){
		$("#end_date_"+id).html((hrsold1<10?'0'+hrsold1:hrsold1)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"."+ms1+"秒");
	}else{
		$("#end_date_"+id).html(daysold+"天"+(hrsold<10?'0'+hrsold:hrsold)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒."+ms2);
	}
}
$(".buy_time").each(function() {
        var reg = /^[0-9]+$/;
        var time = $(this).attr('data-time');
        if (reg.test(time)) {
            show_date_time(time, 2, 0);
        }
	});
</script> 
<script type="text/javascript" src="__STATIC__/red/js/deal.js"></script>
<script type="text/javascript">
    $(".bady-tab:eq(0) li:eq(0)").find("a").addClass("badyactive");
    $(".bady-tab:eq(0) li:eq(0)").find("div").addClass("bady-line-top");
    //评论处js切换效果
    $(".bady-tab:eq(0) li").click(function(){
        $(document).scrollTop($('.bady-part').offset().top-1);
        $(".bady-tab").not( $(".bady-tab:eq(0)")).hide();
        $(this).parents("ul").find("a").removeClass("badyactive");
        $(this).parents("ul").find("div").removeClass("bady-line-top");
        $(this).find("a").addClass("badyactive");
        $(this).find("div").addClass("bady-line-top");
        if($(this).index() == 0){
            $(".bady-tab,.information").show();
            if($(".bady-tab").size() - $(".information").size() == 1){
                $(".bady-tab01").hide();
            }else if($(".bady-tab").size() - $(".information").size() == 2){
                $(".bady-tab01").hide();
                $(".bady-tab02").hide();
            }
        }else{
            $(".information").hide();
            $(".information:eq("+$(this).index()+")").show();
        }
    });

    $(".bady-tab:eq(0) li").each(function(index){
        if(typeof($(this).attr("name"))!="undefined"){
            $("#"+$(this).attr("name")).click();
            $("#"+$(this).attr("name")).parents("ul").find("a").removeClass("badyactive");
            $("#"+$(this).attr("name")).parents("ul").find("div").removeClass("bady-line-top");
            $("#"+$(this).attr("name")).find("a").addClass("badyactive");
            $("#"+$(this).attr("name")).find("div").addClass("bady-line-top");
        }
    });

    var F_zhe800CeleMenuAni = function(){
        var jiuMenuObj = $('#bady-tab');
        var Tab01Obj= $('.tab1').find("a")
        var Tab02Obj= $('.tab1').find("div")
        var Tab03Obj= $('.tab2').find("a")
        var Tab04Obj= $('.tab2').find("div")
        var Tab05Obj= $('.tab3').find("a")
        var Tab06Obj= $('.tab3').find("div")	    
        var menuScrolFunc = function(){
            scrolY = $(window).scrollTop();
            if(scrolY < 580){
                jiuMenuObj.removeClass('fixed');
                $('div.gobuy').hide();
            }else{
                jiuMenuObj.addClass('fixed');
                $('div.gobuy').show();
            }
            if(scrolY >=$('.lend').offset().top && !($(".information:eq(0)").is(":hidden"))){		        
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
				Tab05Obj.addClass("badyactive");
                Tab06Obj.addClass("bady-line-top")
            }else if(scrolY >=$('.bady-tab02').offset().top && !($(".information:eq(0)").is(":hidden"))){	                        
                Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
                Tab03Obj.addClass("badyactive");
                Tab04Obj.addClass("bady-line-top")
            }else if(scrolY >= $('.bady-tab01').offset().top && !($(".information:eq(0)").is(":hidden"))){           
                Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
				Tab01Obj.addClass("badyactive");
                Tab02Obj.addClass("bady-line-top")
            }

        }
        var F_nmenu_scroll = function () {
            if (!window.XMLHttpRequest) {
                return;
            }else{
                //默认执行一次
                menuScrolFunc();
                $(window).bind("scroll", menuScrolFunc);
            }
        }
        F_nmenu_scroll();
    }
    F_zhe800CeleMenuAni();


</script>
<load href="__STATIC__/ftxia/js/report.js" />
<include file="public:footer" />

</body>
</html>
