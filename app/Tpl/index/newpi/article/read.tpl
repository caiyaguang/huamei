<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible"content="IE=9; IE=8; IE=7; IE=EDGE">
<include file="public:head" />
<link href="__STATIC__/cms/css/articleread.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">    
    var articleid = "{$tron['id']}&u=1";
    var articleUrl = "{$fzurl}";
</script>
</head>
<body>
<include file="public:header" />
<div class="mian">
<div class="mian_left">
  <div class="weizhi"><span><img src="/static/cms/images/homes-icon.gif"></span><i><a href="{:C('ftx_site_url')}">网站首页</a> &gt; <a href="{:U('article/index')}">文章中心</a>&gt; <a href="{:U('article/cate',array('id'=>$item['id']))}" >{$item.name}</a> &gt; <a href="{:U('article/read',array('id'=>$tron['id']))}" target="_blank" >{$tron.title}</a> &gt; 正文</i></div>
  <div class="article_title">
    <h1>{$tron.title}</h1>
    <div style=" clear:both"></div>
    <div id="tit_b">
        <i id="posttime">时间：{$article.add_time|date="Y-m-d H:i:s",###}</i>
        <i>来源：<a href="{:C('ftx_site_url')}" title="点击访问 {:C('ftx_site_name')}" target='_blank'>{:C('ftx_site_name')}</a></i>
        &nbsp;<i>阅读：<em>(<code class="hits">{$tron.hits}</code>)</em></i>
        <i id="sc"><a onclick="AddFavorite(window.location,document.title)" href="javascript:;">收藏</a></i>
        <i id="fz"><a href="javascript:;" id="d_clip_button">复制地址</a></i>
        <div class="relevant_right">
        <i id="zz">转载：</i>
         <div class="speak-share">
            <div class="bdshare_t bds_tools get-codes-bdshare" id="bdshare" data-bd-bind="1410856421488">
			<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
			<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
			<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
			<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
			<a href="#" class="bds_more" data-cmd="more"></a></div>
            <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=11080" src="http://bdimg.share.baidu.com/static/js/bds_s_v2.js?cdnversion=89860593"></script>
			<script type="text/javascript">
			    document.getElementById("bdshare_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
            </script>			
        </div>
      </div>
    </div>
    <div class="tjyd">
        <div class="j-guide"><p>{$tron.seo_desc}</p></div>
        <span class="qute-1"></span>
        <span class="qute-2"></span>
    </div>
  </div> 
  <div class="content">
    <div class="jies">
        <div class="pre"> 
		{$tron.info}
		
     </div>
	 <dl class="tags">
	 <dt>标签：</dt>
	 <dd>
	 <ul>
	<volist name="tags" id="tag">
	<li><a class="active" href="{:U('article/tag',array('k'=>urlencode($tag)))}" target="_blank"><span>{$tag}</span></a></li>  
	</volist>
	</ul>
	</dd>
	</dl>
	<div class="nextatc">
	<span class="nec"><if condition="$preid eq 0"><else /><b>上一篇：</b><a href="{:U('article/read',array('id'=>$preid))}" target="_blank" >{$articlep.title}</a></if></span>
	<span class="prc"><if condition="$nid eq 0"><b>下一篇：</b>没有了<else /><b>下一篇：</b><a href="{:U('article/read',array('id'=>$nid))}" target="_blank">{$articlen.title}</a></if></span>	
	</div>
   <div id="talk">
   <div class="content_txt">
   <script type="text/javascript" src="__STATIC__/cms/js/talk.js"></script>
   </div>   
   </div>
   <div class="content_txts">
   </div>
    </div>
    </div>
    <!--do you want-->
    <div style=" clear:both"></div>
    <div id="want">
        <h2 class="do_want">最新宝贝</h2>
        <ul class="rectit">
		<ftx:item type="lists" num="12" >
        <volist name="data" id="rtem">
		 <li class="img"><a href="{:U('item/index',array('id'=>$rtem['id']))}" class="pic-link"  title="{$rtem.title}"><img src="{:attach(get_thumb($rtem['pic_url'], '_g'),'item')}"></a><a href="{:U('item/index',array('id'=>$rtem['id']))}" class="pic-text"  title="{$rtem.title}">{$rtem.title}</a></li>
		</volist>
        </ftx:item>
        </ul>
    </div>
    
    <div class="recommend_box" id="hot_pic">
      <div class="box-tt">
        <h2 class="hot_picshow">热门图集</h2>
        <span class="cl-a">
		<ftx:dapeicate type="cate">
		<volist name="data" id="vol">
		<a href="{:U('dapei/cate',array('id'=>$vol['id']))}" target="_blank">{$vol.name}</a>
		</volist>
		</ftx:dapeicate> 
		<a href="{:U('dapei/cate')}" target="_blank">更多>></a></span></div>
      <div class="w960 star_txt" id="rmtj">
        <div class="fl_lt w690">
          <ul>
		  <ftx:dapei type="lists" cid="1" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>
           <ftx:dapei type="lists" cid="2" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>
		  <ftx:dapei type="lists" cid="3" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>
		  <ftx:dapei type="lists" cid="4" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>
		  <ftx:dapei type="lists" cid="5" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>
		  <ftx:dapei type="lists" cid="6" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>
		  <ftx:dapei type="lists" cid="7" num="1">
          <volist name="data" id="vol">
		   <li><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" title="{$vol.title}" ><img src="{$vol.pic_url}" /></a><a href="{:U('dapei/read',array('id'=>$vol['id']))}" target="_blank" class="tit" title="{$vol.title}" >{$vol.itemnum}件搭配商品</a></li>
		  </volist>
          </ftx:dapei>		 
          </ul>
        </div>
      </div>
  </div>
</div>
<div class="mian_right">
<div class="video-search inc-search">
 <form name="search" action="{:C('ftx_site_url')}" method="get" id="search">
		   <input type="hidden" name="m" value="article">
           <input type="hidden" name="a" value="tag">
            <input type="text" name="k" id="keywords" class="video-input" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="请输入关键词" value="请输入关键词">
            <input type="submit" value="搜 索" onclick="document.getElementById('keywords').value=encodeURI(document.getElementById('keywords').value);getId('search').submit()" class="video-button">
          </form>
</div>
<!--热点-->


<div class="rank hufu">
<h2>最新推荐</h2>
<ul>
<ftx:article type="articletui" num="1" order="add_time desc">
<volist name="data" id="val">
<li class="cur"><em>1</em><a href="{:U('article/read',array('id'=>$val['id']))}" title="{$val.title}" target="_blank"><if condition="$val.mpic eq ''"><img src="{:C('ftx_site_flogo')}" alt="{$val.title}"/><else /><img src="{$val.mpic}" alt="{$val.title}"/></if></a><a href="{:U('article/read',array('id'=>$val['id']))}" title="{$val.title}" target="_blank" class="tit">{$val.title}</a><span>{$val.seo_desc}</span></li>
</volist>
</ftx:article>
<ftx:article type="articlelists" num="9">
<volist name="data" id="val" mod="9">
<li>
<eq name="mod" value="0"><em class="red">2</em></eq>
<eq name="mod" value="1"><em class="red">3</em></eq>
<eq name="mod" value="2"><em>4</em></eq>
<eq name="mod" value="3"><em>5</em></eq>
<eq name="mod" value="4"><em>6</em></eq>
<eq name="mod" value="5"><em>7</em></eq>
<eq name="mod" value="6"><em>8</em></eq>
<eq name="mod" value="7"><em>9</em></eq>
<eq name="mod" value="8"><em>10</em></eq>
<a href="{:U('article/read',array('id'=>$val['id']))}" title="{$val.title}" target="_blank">{$val.title}</a>
</li>
</volist>
</ftx:article>
</ul>
</div>
<div class="fix_parent"></div>
<div class="fix_div"> 
        <!--热门排行-->
        <div style=" clear:both"></div>
            <div class="rec-tuijian hot-ranking cmd-list" id="rmph">
    <h2>热门排行</h2>
    <div class="tuijian-txt rank-box">
    <div class="rank-sub-nav">
           <ul>
		   <?php  $cdi=0; ?>
		<ftx:articlecate type="cate">
		<volist name="data" id="vol" mod="11">
		<if condition="$cdi lt 4">		
		<?php $cdi++; ?>
		<li><a href="{:U('article/cate',array('id'=>$vol['id']))}" class="cur" index="{$vol['id']-1}" target="_blank" >{$vol.name}</a></li>
		</if>
		</volist>	
        </ftx:articlecate>            
        </ul>
        </div>
		<ftx:articlecate type="cate">
        <volist name="data" id="sitem">				
		<if condition="$sitem['id'] elt 4">
		 <div class="rank_art" <if condition="$sitem['id'] neq 1">style="display:none"</if>>
         <ul>				 
		<ftx:article type="articlehot" num="10" cateid="$sitem['id']">
        <volist name="data" id="val">	
		<li><a href="{:U('article/read',array('id'=>$val['id']))}" target="_blank" title="女性孕期可以同房吗 怀孕期间应如何性生活"><if condition="$val.mpic eq ''"><img src="{:C('ftx_site_flogo')}" alt="{$val.title}"/><else /><img src="{$val.mpic}" alt="{$val.title}"/></if><span><b>{$val.title}</b><p>{$val.seo_desc}</p></span></a></li>		
		</volist>	
        </ftx:article>		
		</ul>
		</div>	
        </if>		
		</volist>	
        </ftx:articlecate>	   
    </div>
</div>
</div>
<script src="__STATIC__/cms/js/auto_run.js"></script>
</div>
</div>
 
<!--猜你喜欢-->
<div class="video_box w960" id="cnxh">
    <div class="box-tt"><h2 class="hot_picshow">猜你喜欢</h2></div>
    <div class="cnxh_nav">
    <div class="left"><b data="1" class="cur">热门标签</b><b data="2">最新品牌折扣</b></div>        
    </div>
<div class="cnxh_wrap current">
<div class="main">
<ul>
<ftx:tag type="lists" num="500">
<volist name="data" id="tag">
<li><a href="{:U('tag/view',array('k'=>$tag['ename']))}" target="_blank">{$tag.name}</a></li>
</volist>
</ftx:tag> 
</ul>
</div>
</div>
<div class="cnxh_wrap"> 
<ul class="hotags">    
<ftx:brand type="newbrand" num="500">	
<volist name="data" id="brand">
<li><a href="{:U('brand/view',array('id'=>$brand['id']))}" target="_blank" title="{$brand.intro}">{$brand.title}</a></li>
</volist>
</ftx:brand>
</ul>
</div>
</div>
<script type="text/javascript" src="__STATIC__/cms/js/ZeroClipboard.js"></script>
<script type="text/javascript" src="__STATIC__/cms/js/copy.js"></script>
<include file="public:footer" /> 
</body>
</html>
