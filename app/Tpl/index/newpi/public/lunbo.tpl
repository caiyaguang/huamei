{:R('advert/index', array(1), 'Widget')}
<div class="top_wrap">
    <div class="top_box">        
        <div class="banner_l">
        <dl>
		<volist name="cate_data" id="bcate" mod="2">		
		<if condition="$bcate['pid'] eq 0">	
		<dd>
        <a href="{:U('index/cate', array('cid'=>$bcate['id']))}"><i class="ct-icon ct-icon-{$bcate.cateimg}"></i>{$bcate.name}<eq name="mod" value="0"><em class="ct-line"></em></eq></a>
        </dd>
		</if>
		</volist>                
        </dl>
        </div>        
        <div class="banner_r" style="background:#f7f7f7;box-shadow:none">
		<dl>
		{:R('advert/index', array(3), 'Widget')}
        {:R('advert/index', array(11), 'Widget')}
        </dl>
		</div>        
        <div class="round">
        <div class="adType">
        </div>
        </div>
        <div style="display: none;" class="banner_arrow" data-banner="arrow">
            <a href="javascript:;" class="arrow_prev" data-arrow="prev"><i></i></a>
            <a href="javascript:;" class="arrow_next" data-arrow="next"><i></i></a>
        </div>
    </div>
</div>