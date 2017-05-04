<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />

</head>
<body>
{:R('advert/index', array(15), 'Widget')}
<include file="public:header" />

<include file="public:lunbo" />     
 
<div class="main w1200">
<include file="public:bar" /> 

<include file="public:itemlist" /> 



<!--文章系统start-->
<center>
  <div class="bottom1">
    <div class="bottom_tp">
      <span>最新文章</span>
      <a class="kanmore" href="{:U('article/index')}" target="_blank">
        <b class="txt">查看更多</b>
      </a>
    </div>
    <div class="mains2">
      <div class="content_text" style="margin: auto 20px">
        <ul>
        <volist name="article" id="data">
          	<li>
                <a href="{:U('article/read',array('id'=>$data['id']))}" target="_blank">{$data['title']}</a>
                <span>{$data['add_time']|date="Y-m-d",###}</span>
            </li>
        </volist>
        </ul>          
      </div>
      <div class="clr"></div>
    </div>
  </div>
</center>
<!--文章系统end-->

<div class="intBrand w1200">
      <div class="tit"><h2>您可能感兴趣的标签</h2><a href="{:U('tag/index')}" target="_blank">标签购物</a></div>
 
    </div>	
	<div id="ju_tags_search" class="w1200">
    <ul>
<ftx:tag type="lists" num="50">
<volist name="data" id="tag">
<li><a href="{:U('tag/view',array('k'=>$tag['ename']))}" target="_blank">{$tag.name}</a></li>
</volist>
</ftx:tag> 
    </ul>
  </div>
</div>

<div class="nav-main">
	<div class="main e-nav w1200">
		<div class="nav-item fl">
			<div class="item-list">
				<ul>
				<li><a href="{:C('ftx_site_url')}" <empty name="cid"> class="active"</empty>>全部</a></li>				
				<volist name="cate_data" id="bcate">	
				<if condition="$bcate['spid'] eq 0">
				<li><a <if condition="$spid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
				</if>
				</volist>
				</ul>
			</div>
		</div>	
		<div class="nav-other fl">
			<ul>
				<li><a href="{:U('xinpin/index')}" ><i class="today"></i><span>今日新品</span></a></li>
				<li><a href="{:U('yugao/index')}" ><i class="tw"></i><span>明日预告</span></a></li>
			</ul>
		</div>
		<div class="n_h">
			<span>排序：</span>
			<a href="{:U('index/index')}"  class=" <if condition="$index_info['sort'] eq 'default'"> active </if> ">默认</a>
			<a href="{:U('index/index',array('sort'=>'new'))}" class=" <if condition="$index_info['sort'] eq 'new'"> active </if> ">最新</a>
			<a href="{:U('index/index',array('sort'=>'hot'))}" class=" <if condition="$index_info['sort'] eq 'hot'"> active </if> ">销量</a></div>
		</div>
	</div>

<include file="public:footer" />

</body>
</html>