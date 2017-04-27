<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/youhui.css" />

</head>
<body>
<include file="public:header" />
<div id="wrapper" class="promo_bj">
  <!--分类-->
  <div class="transverse_nav">
    <div class="subNav">
      <ul>
        <li><a href="{:U('huodong/index')}" title="全部" <empty name="cid">class="on"</empty> >全部</a></li>
        <volist name="acats" id="vol">
          <li><a <if condition="$vol.id eq $cid">class="on"</if> href="{:U('huodong/cate',array('cid'=>$vol['id']))}" title="{$vol.name}">{$vol.name}</a></li>
        </volist>
      </ul>
    </div>
  </div>  
  <!--/分类-->
  <div class="main promo_main">
    <!--列表-->
    <div id="item_list">
      <volist name="promo_list" id="item" key="i" mod="3">
      <div class="tl_goods"> 
        <img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="{$item.title}" >
        <div class="status">
          <h3>{$item.title}</h3>
          <ul class="intro">                                                                                        
            <if condition="$item['intro'] eq '' "><else/><li>{$item.intro}</li></if>                                                                                                    
            <if condition="$item['intro1'] eq '' "><else/><li>{$item.intro1}</li></if>                                                                                                 
            <if condition="$item['intro2'] eq '' "><else/><li>{$item.intro2}</li></if> 
            <if condition="$item['intro3'] eq '' "><else/><li>{$item.intro3}</li></if>                                                                                                     
            <if condition="$item['intro4'] eq '' "><else/><li>{$item.intro4}</li></if>                                                                                               
            <if condition="$item['intro5'] eq '' "><else/><li>{$item.intro5}</li></if>     
          </ul>         
          <div class="desc">
           <span class="lead">优惠多多，活动火爆进行中，抓紧抢购！</span>
           <a href="{$item.click_url}" title="立即查看活动" target="_blank" rel="nofollow"><span class="action">立即查看活动</span></a>
          </div>
        </div>
      </div>
      </volist> 
    </div>
    <!--/列表-->
    <!--分页-->
    <div class="pagination">{$page}</div>
    <!--/分页-->  
 </div>     
</div>
<include file="public:footer" />
</body>
</html>