 <div class="main pr mt25 clear">
 <ul class="goods-list clear">
 <volist name="items_list" id="item" key="i" mod="4">
            <li class="<eq name='mod' value='3'> last</eq>" gtype="1" id="{$item.id}">
                <div class="list-good {$item.class}">
                    <div class="good-pic">
                        <a href="{:U('item/index',array('id'=>$item['id']))}" class="pic-img" target="_blank">
                        <img alt="{$item.title}" src="{:C('ftx_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" data-bimg="{$item['pic_url']}"/>{$item.coupon_start_time|newicon}</a>
                     </div>
                    <h3 class="good-title">
                        <if condition="$item.ems eq 1">[包邮]</if><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a>
                        <div class="icon-all" style="display:none;">
                        </div>
                        <span class="sold">已售<em>{$item.volume}</em></span>
                    </h3>
                    <div class="good-price">
                        <span class="price-current" ><em>￥</em>{$item.coupon_price}</span>
                    <span class="des-other">
                       <if condition="$item.cu eq ''"><strong></strong><else/><strong><em class="icon-gai">{$item.cu}</em></strong></if>
					    <p><span class="price-old"><em>￥</em>{$item.price}</span>
                        <span class="discount">(<em>{$item.zk}</em>折)</span>
						</p>
                    </span>
					<if condition="$item.class eq 'start'">
					<div class="btn start_1 ">
                    <a href="" target="_blank"><span>明日</span><b>10:00</b> </a>
					</div>
					</if>
					<if condition="$item.class eq 'buy'">
                   <div class="btn buy m-buy">
                   <if condition="$item.shop_type eq 'C' "><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><em class="t-icon"></em><span>淘宝</span></a></if><if condition="$item.shop_type eq 'B' "><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><em class="m-icon"></em><span>天猫</span></a></if><if condition="$item.shop_type eq 'M' "><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><em class="j-icon"></em><span>美丽说</span></a></if>
                   </div>
				   </if>
				   <if condition="$item.class eq 'gone'">
				   <div class="btn gone m-buy">
                                <a href="javascript:;"><if condition="$item.shop_type eq 'C' "><em class="t-icon"></em><span>淘宝</span></if><if condition="$item.shop_type eq 'B' "><em class="m-icon"></em><span>天猫</span></if></a>
                            </div>
							</if>
                    </div>
					<a class="y-like my-like" data-pid="{$item.num_iid}" href="javascript:;" title="加入收藏"><i class="like-ico"><span class="heart_left"></span><span class="heart_right"></span></i></a>
<if condition="$item.class eq 'gone'">
<div class="box-hd" style="display:block">
<div class="mask-bg"></div>
<em class="buy-over">抢光了</em>
</div>
</if>
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