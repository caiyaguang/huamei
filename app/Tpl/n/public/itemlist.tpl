<script>
$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})
</script>



<volist name='items_list' id='item'>        
		<if condition="$item.class eq 'start'">
		<li>        
		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">  
		{$item.add_time|wapnewicon}		
		</a>        
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price start">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">{$item.coupon_start_time|date="n-j H:i",###}</span>            
		</div>        
		</a>    
		</li> 
		</if>
		<if condition="$item.class eq 'buy'">
		<li>        
        <if condition="$item.isq eq 1"><div class="lingquan"><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow"><span>内部券<br><em>{$item.quan}元</em></span><b></b></a></div></if>

		<a class="goods-a" href="{:U('item/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:C('ftx_site_flogo')}" class="<eq name='mod' value='0'>J_lazy</eq><eq name='mod' value='1'>J_lazy</eq><eq name='mod' value='2'>J_lazy</eq><eq name='mod' value='3'>J_lazys</eq> lazy good-pic" d-src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">
		{$item.coupon_start_time|wapnewicon}
		</a> 
		<if condition="$item.shop_type eq 'C' ">
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后价<em class="tip-b"></em></span></if>            
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		             
		<span class="good-btn">淘宝</span>            
		</div>        
		</a>
        </if>
		<if condition="$item.shop_type eq 'B' ">
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>    
        <div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后价<em class="tip-b"></em></span></if>        
		              
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		    
		<span class="good-btn">天猫</span>            
		</div>        
		</a>
		</if>
		<if condition="$item.shop_type eq 'M' ">
		<a href="{:U('jump/index',array('id'=>$item['id']))}" target="_self" rel="nofollow">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy"><if condition="$item.isq eq 1"><span class="title-tips01">券后价<em class="tip-b"></em></span></if>               
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">美丽说</span>            
		</div>        
		</a>
		</if>
		</li> 
		</if>
		<if condition="$item.class eq 'gone'">
		<li>        
		<a class="goods-a" href="{:U('jump/index',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">   
		<span class="buy-over"></span>
		</a>        
		<a target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price end">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">已结束</span>            
		</div>        
		</a>    
		</li> 
		</if>
</volist>
