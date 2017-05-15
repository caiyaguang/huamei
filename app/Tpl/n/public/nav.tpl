<div class="nav_box">
        <nav class="nav" id="nav">
            <ul class="">            
			<li><a <if condition='$nav_curr eq index'>class="active"</if> href="{:C('ftx_header_html')}" target="_self"><em class="icon icon-jz"></em><span>首页</span><em class="line"></em></a></li>
			<li><a <if condition='$nav_curr eq brand'>class="active"</if> href="{:U('brand/index')}" target="_self"><em class="icon icon-bz"></em><span>品牌折扣</span><em class="line"></em></a></li>
	        <li><a <if condition='$nav_curr eq jiu'>class="active"</if> href="{:U('jiu/index')}" target="_self"><em class="icon icon-jk"></em><span>9.9包邮</span><em class="line"></em></a></li>
			<li><a <if condition='$nav_curr eq shijiu'>class="active"</if> href="{:U('shijiu/index')}" target="_self"><em class="icon icon-sjk"></em><span>19.9包邮</span><em class="line"></em></a></li>
            <li class="_border"><a <if condition='$nav_curr eq user/login'>class="active"</if> href="{:U('user/index')}" target="_self"><em class="icon icon-yg"></em><span>个人中心</span><em class="line"></em></a></li></ul>
        </nav>
</div>