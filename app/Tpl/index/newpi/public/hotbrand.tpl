<div class="hot-brand">
    <div class="zhe-line clear">
        <div class="line"></div>
        <div class="title"><h3><em>HOT</em>品牌推荐</h3></div>
    </div>
    <ul class="brand-list clear">
<ftx:item type="hotbrand" num="8" id="$cid" order="id desc">
<volist name="data" id="item">
<li>
 <div class="list">
  <div class="pic">
    <a target="_blank" href="{:U('brand/view',array('id'=>$item['id']))}" title="{$item.intro}">
     <img src="{$item.pic}" alt="{$item.intro}">
    </a>
  </div>
  <div class="right-show fl">
   <a target="_blank" href="{:U('brand/view',array('id'=>$item['id']))}">
    <img  src="{$item.logo}" width="80" height="40" alt="{$item.title}">
   </a>
  </div>
  <div class="left-show fr">
   <h5 class="discount">{$item.title}</h5>
  </div>
 </div>
</li>
</volist>
</ftx:item>
</ul>
</div>