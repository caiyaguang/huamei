<!DOCTYPE html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
</head>
<body>
<include file="public:header" />
<div class="main w1200">
    <div class="area" style="margin-top:15px">
  <div class="dealbox">
    <div class="content1">
      <div class="map-web">
      <h1 style='text-align:center;font-size:25px;'>网站地图</h1>
       <h2>商品分类</h2>
      <volist name='sitemap' id='val'>
        <div class="clear">
        <h3><a href="{:U('index/cate',array('cid'=>$val['cate']['id']))}" hidefocus="true">{$val.cate.name}</a></h3>
          <volist name='val.items' id='v'>
           <a title="{$v.title}" href="{:U('item/index',array('id'=>$v['id']))}" hidefocus="true">{$v.title|strsub='6'}</a>
          </volist>
        </div>
      </volist>
      <h2>站点文章</h2>
        <volist name='article' id='val'>
          <div class="clear">
          <h3><a href="{:U('article/cate',array('id'=>$val['cate']['id']))}" hidefocus="true">{$val.cate.name}</a></h3>
            <volist name='val.art' id='v'>
             <a title="{$v.title}" href="{:U('article/read',array('id'=>$v['id']))}" hidefocus="true">{$v.title|strsub='10'}</a>
            </volist>
          </div>
        </volist>
        </div>
    </div>
  </div>
</div>
<!--商品展示结束-->
<div class="clr"></div>
<!--分页开始-->
<div class="page_div page_bottom" style="text-align:center;">
  <div class="list_page" style="text-align:center;">{$zpage}</div>
</div>
<!--分页结束-->
<script type="text/javascript">
  if ($('.page_div .next a').attr('href')) 
  {
  $('.page_div').append("<a class='picnext' href='" + $('.page_div .next a').attr('href') + "'></a>")
  }
</script>
<!--尾部开始-->
<include file='public:footer'/>
<!--尾部结束-->
</body>
</html>