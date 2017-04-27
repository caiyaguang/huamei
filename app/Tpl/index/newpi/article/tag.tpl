<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link href="__STATIC__/cms/css/list.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:#ffffff;">
<include file="public:header" /> 
<div class="wrap_960">
      <ul class="arlist">
	   <li><a href="{:U('article/index')}" target="_blank">全部分类：</a></li>
      <ftx:article type="cate">
	  <volist name="data" id="bcate">	 
	  <li><a <if condition="$bcate['id'] eq $cat['id']">class='on'</if> href="{:U('article/cate',array('id'=>$bcate['id']))}" target="_blank">{$bcate.name}</a></li>
	  </volist>	
      </ftx:article>
      </ul>
	  <div class="video-search">
           <form name="article" action="{:C('ftx_site_url')}" method="get" id="search">
		   <input type="hidden" name="m" value="article">
           <input type="hidden" name="a" value="tag">
            <input type="text" name="k" id="keywords" class="video-input" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="请输入关键词" value="请输入关键词">
            <input type="submit" value="搜 索" onclick="document.getElementById('keywords').value=encodeURI(document.getElementById('keywords').value);getId('search').submit()" class="video-button">
          </form>
    </div>
	<div class="tip">
    您当前所在位置：<a href="{:C('ftx_site_url')}">网站首页</a>&gt; <a href="{:U('article/index')}">文章中心</a>&gt; 搜索到{$count}篇“<strong style="color:red">{$k}</strong>”相关的文章</a>
    </div>
</div>
<div class="wrap_960">
	<div class="fl_lt w648">
    	<div class="list_title"><span><em>{$cat.name}</em></span><cite>{$cpage}</cite></div>
        <div class="list_r">
		<volist name="article_list" id="item">
		 <dl>
<dd><a href="{:U('article/read',array('id'=>$item['id']))}" title="{$item.title}" target="_blank"><if condition="$item.mpic eq ''"><img src="{:C('ftx_site_flogo')}" alt="{$item.title}" width="160" /><else /><img src="{$item.mpic}" alt="{$item.title}" width="160" /></if></a></dd>
<dt><span><a href="{:U('article/read',array('id'=>$item['id']))}" title="{$item.title}" target="_blank">{$item.title}</a></span><cite>{$item.seo_desc}<a href="{:U('article/read',array('id'=>$item['id']))}" target="_blank">查看全文&gt;&gt;</a></cite><code><em>分类：</em><a href="{:U('article/cate',array('id'=>$acats[$item['cate_id']]['id']))}" target="_blank" hidefocus="hidefocus">{$acats[$item['cate_id']]['name']}</a><em>作者：</em>{$item.author}<em>&nbsp;&nbsp;点击：</em>{$item.hits}<em>&nbsp;&nbsp;日期：</em>{$item.add_time|date="Y-m-d",###}</code></dt>
</dl>
		</volist>
         
        <div id="PagerHolder" class="pages">
		{$page}
		</div>
      </div>
    </div>
    <div class="fl_rt w300">
    	
        <div class="rec-tuijian">
        	<div class="tuijian-tl">
            	<ul>
                	<li class="cur" index="0"><a href="javascript:;">最新推荐</a><i class="xia-icon"></i></li>
                    <li index="1"><a href="javascript:;">最热排行</a></li>
                </ul>
            </div> 
            <div class="tuijian-txt">
			    <ul class="r-tops">
			    <ftx:article type="articletui" num="10" order="add_time desc" cateid="$cat['id']">
                <volist name="data" id="val" mod="10">
				<eq name="mod" value="0">
				<div class="top-ranks">
				<a title="{$val.title}" href="{:U('article/read',array('id'=>$val['id']))}" target="_blank"><if condition="$val.mpic eq ''"><img src="{:C('ftx_site_flogo')}" alt="{$item.title}" width="160" /><else /><img src="{$val.mpic}" /></if><span class="rank-cons"><b>{$val.title}</b><p>{$val.seo_desc}</p></span></a>
				</div>
				<else/>
				
				<li><a title="{$val.title}" href="{:U('article/read',array('id'=>$val['id']))}" target="_blank">{$val.title}</a></li>
				</eq>
				</volist>
                </ftx:article>            	
				</ul>
            </div>

            <div class="tuijian-txt" style="display:none">
			 <ul class="r-tops">
            	<ftx:article type="articlehot" cateid="$cat['id']">
                <volist name="data" id="vol" mod="10">
				<eq name="mod" value="0">
				<div class="top-ranks">
				<a title="{$vol.title}" href="{:U('article/read',array('id'=>$vol['id']))}" target="_blank"><if condition="$vol.mpic eq ''"><img src="{:C('ftx_site_flogo')}" alt="{$item.title}" width="160" /><else /><img src="{$vol.mpic}" /></if><span class="rank-cons"><b>{$vol.title}</b><p>{$vol.seo_desc}</p></span></a>
				</div>
				<else/>				
				<li><a title="{$vol.title}" href="{:U('article/read',array('id'=>$vol['id']))}" target="_blank">{$vol.title}</a></li>
				</eq>
				</volist>
                </ftx:article> 
				</ul>
            </div>
        </div>
		
        <div class="meinv">
			<div class="meinv_title">
		<ftx:tehui type="cate">
		<volist name="data" id="vol"> 
	    <span><a href="{:U('tehui/cate',array('id'=>$vol['id']))}" 
		<if condition="$vol.id eq 1">index="0"</if>
		<if condition="$vol.id eq 7">index="1"</if> 
		<if condition="$vol.id eq 13">index="2"</if>
		<if condition="$vol.id eq 14">index="3"</if>
		<if condition="$vol.id eq 15">index="4"</if>
		<if condition="$vol.id eq 16">index="5"</if>
		<if condition="$vol.id eq 17">index="6"</if>
		<if condition="$vol.id eq 18">index="7"</if>
		<if condition="$vol.id eq 19">index="8"</if>
		<if condition="$vol.id eq 20">index="9"</if>
		<if condition="$vol.id eq 21">index="10"</if>
		<if condition="$vol.id eq 22">index="11"</if>		
		<if condition="$vol.id eq 1">class="current"</if> target="_blank">{$vol.name}</a></span>
	    </volist>	
        </ftx:tehui>	              
            </div>
			<div class="meinv_txt">
                <ul style="display: block;">
				<ftx:tehui type="lists" cid="1" num="8">
                <volist name="data" id="vol" mod="8">
				 <li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130" /><div class="txt">{$vol.title}</div></a></li>
				</volist>
				</ftx:tehui>                  
				</ul>
                <ul style="display: none;">
                <ftx:tehui type="lists" cid="7" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
                 <ul style="display: none;">
                <ftx:tehui type="lists" cid="13" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="14" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="15" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="16" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="17" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="18" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="19" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="20" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="21" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
				<ul style="display: none;">
                <ftx:tehui type="lists" cid="22" num="8">
                <volist name="data" id="vol" mod="8">
				<li><a href="{:U('tehui/view',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" width="130"  />{$vol.title}</a></li>
				</volist>
				</ftx:tehui>
				</ul>
			</div>
		</div>
    </div>
</div>

<div class="hot-special">
	<div class="hot-special-tl">
    	<span class="tlls">[热门品牌] <i>NewBrand</i></span><span class="fl_rt"><a href="{:U('brand/index')}" target="_blank">更多>></a></span>
    </div>
    <div class="hot-special-txt">
	<div class="fl_lt arrow_lt"><a href="javascript:;" class="disable"></a></div>
    <div class="fl_lt pro_ct">
    	<ul class="imgad">
		<ftx:brand type="lists" num="16" order="id desc">
        <volist name="data" id="item">
		 <li><a href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank"><img src="{$item.pic}"> <span class="names">{$item.title}</span><p>{$item.desc}</p></a></li>
		</volist>
        </ftx:brand>       
        </ul>
    </div>
    <div class="fl_rt arrow_rt"><a href="javascript:;"></a></div>
    </div>
</div>

<div class="hot-special">
	<div class="hot-special-tl">
    	<span class="tlls">[穿衣搭配] <i>NewGoods</i></span>
		<span class="fl_rt">
		<?php  $cdi=0; ?>
		<ftx:dapeicate type="cate">
		<volist name="data" id="vol" mod="11">
		<if condition="$cdi lt 6">
		<?php $cdi++; ?>
		<a href="{:U('dapei/cate', array('id'=>$vol['id']))}" title="{$vol.name}" target="_blank">{$vol.name}</a>	
		</if>
		</volist>	
        </ftx:dapeicate>		
		<a href="{:U('dapei/index')}" target="_blank">更多>></a>
		</span>
		</div> 
   <div class="hot-special-txt">
   <ftx:dapei type="lists" cid="1" num="1">
   <volist name="data" id="vol">
   <div class="w243">
    	<a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><cite>{$vol.title}</cite></a>
    </div>
   </volist>	
   </ftx:dapei>  
    <div class="w445">
    	<ul>
   <ftx:dapei type="lists" cid="2" num="1">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="3" num="2">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="4" num="1">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="5" num="2">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="6" num="1">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="7" num="2">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="8" num="1">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="9" num="1">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
   <ftx:dapei type="lists" cid="10" num="1">
   <volist name="data" id="vol">
   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" title="{$vol.title}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><span>{$vol.title}</span></a></li>   
   </volist>	
   </ftx:dapei>
        </ul>
    </div>
	<ftx:dapei type="lists" cid="11" num="1">
   <volist name="data" id="vol">
    <div class="w243">
    <a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank"><img src="{$vol.pic_url}" alt="{$vol.title}"><cite>{$vol.title}</cite></a>
    </div>
	</volist>	
   </ftx:dapei>
   </div>
</div> 
 <script> 
     var zhuanti_move_index = 0;
     $(function () {
         //推荐/排行切换
         $(".rec-tuijian .tuijian-tl ul li").hover(function () {
             var index = parseInt($(this).attr("index"));
             $(".rec-tuijian .tuijian-tl ul li.cur").find("i.xia-icon").remove();
             $(".rec-tuijian .tuijian-tl ul li.cur").removeClass("cur");
             $(this).addClass("cur").append('<i class="xia-icon"></i>');
             $(".rec-tuijian .tuijian-txt").hide();
             $(".rec-tuijian .tuijian-txt").eq(index).show();
         });
         //推荐文章切换
         var now_index2 = 0;
         var inv_auto_run2 = null;
         var timeout2 = 30000000;
         var total_index2 = $(".meinv .meinv_title a").length;
         $(".meinv .meinv_title a").hover(function () {
             var index = $(this).attr("index");
             $(".meinv .meinv_txt ul:eq(" + now_index2 + ")").hide();
             $(".meinv .meinv_txt ul:eq(" + index + ")").show();
             $(".meinv .meinv_title a").removeClass("current");
             $(this).addClass("current");
             now_index2 = index;
             clearInterval(inv_auto_run2);
         }, function () {
             auto_run2();
         });
         function auto_run2() {
             setTimeout(function () {
                 auto_run_func2();
             }, timeout2);
         }
         function auto_run_func2() {
             clearInterval(inv_auto_run2);
             inv_auto_run2 = setInterval(function () {
                 $(".meinv .meinv_txt ul:eq(" + now_index2 + ")").hide();
                 $(".meinv .meinv_title a:eq(" + now_index2 + ")").removeClass("current");
                 now_index2++;
                 if (now_index2 >= total_index2)
                     now_index2 = 0;
                 $(".meinv .meinv_title a:eq(" + now_index2 + ")").addClass("current");
                 $(".meinv .meinv_txt ul:eq(" + now_index2 + ")").show();


             }, timeout2);
         }
         auto_run2();

         //专题

         $(".imgad").width(287 * $(".imgad li").length);
         $(".arrow_lt").click(function () {
             if ($(".arrow_lt a").hasClass("disable")) {
                 return;
             }
             zhuanti_move_index--;
             zhuanti_btn_disable();

             $(".imgad").stop().animate({ marginLeft: -1104 * zhuanti_move_index }, 300);
         });
         $(".arrow_rt").click(function () {
             if ($(".arrow_rt a").hasClass("disable")) {
                 return;
             }
             zhuanti_move_index++;
             zhuanti_btn_disable();

             $(".imgad").stop().animate({ marginLeft: -1104 * zhuanti_move_index }, 300);
         });
     });
     function zhuanti_btn_disable() {
         if (zhuanti_move_index == 0) {
             $(".arrow_lt a").addClass("disable");
         } else {
             $(".arrow_lt a").removeClass("disable");
         }
         var ck_next = false;
         var size = $(".imgad li").length / 4;
         if (zhuanti_move_index >= size - 1) {
             $(".arrow_rt a").addClass("disable");
         } else {
             $(".arrow_rt a").removeClass("disable");
         }

     }
     
</script>
<script type="text/javascript" src="__STATIC__/cms/js/list.js"></script>
<include file="public:footer" /> 
</body>
</html>
