<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet"	href="/static/newpi/css/brand.css" />
</head>
<body>
<include file="public:header" /> 
<div class="main w1200">
<div class="dsearchtag w1200 _info">
  <div class="dsearchtag1 w1200">
    <h1>{$item.name}</h1>
  </div>
    <div class="dsearchtag2 w1200">
      <p>{$item.name}优惠专场，实时更新高性价比{$item.name}单品、淘宝网{$item.name}打折特卖信息，全场低至1折起包邮，敬请关注！这些{$item.name}都是由专业编辑为您精挑细选的，时下最好、最流行的，欢迎进入页面了解{$item.name}价格、{$item.name}图片等相关信息！{:C('ftx_site_name')}致力于帮您节省浏览海量商品信息时间，让您以更优惠的折扣价格购买到自己喜欢的{$item.name}！</p>
    </div>
</div>
 <div class="main pr mt25 clear">
 <ul class="goods-list clear">
<volist name="taobaoke_item_list" id="item" key="i" mod="4"> 
            <li class="<eq name='mod' value='3'> last</eq>">
                <div class="list-good buy">
                    <div class="good-pic">
					<a target="_blank" isconvert="1" data-itemid="{$item.num_iid}" class="pic-img" title="{$item.intro}"><img class="lazy" src="{$item.pic_url}_310x310.jpg" alt="{$item.title}" /><span class="new-icon">新品</span></a>                       
                     </div>
                    <h3 class="good-title">
                        <a isconvert="1" data-itemid="{$item.num_iid}" target="_blank">{$item.title}</a>
                        <div class="icon-all" style="display:none;">
                        </div>                        
                    </h3>
                    <div class="good-price">
                        <span class="price-current" ><em>￥</em>{$item.coupon_price}</span>
                    <span class="des-other">
                     <strong><em class="icon-gai">已售{$item.volume}件</em></strong></a>
					    <p><span class="price-old"><em>￥</em>{$item.price}</span>
                        <span class="discount">(<em>{$item.zk}</em>折)</span>
						</p>
                    </span>	
                   <div class="btn buy m-buy">
                   <if condition="$item.shop_type eq 'C' "><a isconvert="1" data-itemid="{$item.num_iid}" target="_blank"><em class="t-icon"></em><span>淘宝</span></a></if><if condition="$item.shop_type eq 'B' "><a isconvert="1" data-itemid="{$item.num_iid}" target="_blank"><em class="m-icon"></em><span>天猫</span></a></if>
                   </div>
                    </div>
					<a class="y-like my-like" data-pid="{$item.num_iid}" href="javascript:;" title="加入收藏"><i class="like-ico"><span class="heart_left"></span><span class="heart_right"></span></i></a>                 
                    </div>
              </li> 
</volist>      
</ul>
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>
</div>
<div class="intBrand w1200">
          </volist>
          </ftx:brand>
      </div>
    </div>
	
	<div id="ju_tags_search" class="w1200">
    <ul>
<ftx:tag type="lists" num="200" keys="$tagid">
<volist name="data" id="tag">
<li><a href="{:U('tag/view',array('k'=>$tag['ename']))}" target="_blank">{$tag.name}</a></li>
</volist>
</ftx:tag> 
    </ul>
  </div>
</div>
<include file="public:footer" />
</body>
</html>