<include file="public:top" />
<div class="header">
    <div class="area">
        <div class="logo logo1">
            <div class="fl"><a class="juan-logo fl" href="{:C('ftx_site_url')}" title="{:C('ftx_site_name')}"><img src="{:C('ftx_site_logo')}"></a></div>
           
        </div>
        <div class="protection" style="background: url({:C('ftx_site_navlogo')}) no-repeat;">
            <a title="每天10点开抢" class="update" href="#" target="_blank"></a>
            <a title="职业买手砍价" class="lowest" href="#consumer03" target="_blank"></a>
            <a title="商品验货质检" class="check" href="#consumer04" target="_blank"></a>
        </div>
         <div class="search">
		<form name="search" action="{:C('ftx_site_url')}" method="get" id="search">
	       <input type="hidden" name="m" value="search">
           <input type="hidden" name="a" value="index">
		   <span class="search-area fl">
		   <input x-webkit-speech name="k" id="k" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="懒得找了，我搜..." value="懒得找了，我搜..." class="txt" />
		    </span><input type="submit" value="" class="smt fr"></form>          
        </div>
    </div>
    <div class="mainNav">
        <div class="nav">
            <ul class="navigation fl">  
            <li <if condition="($nav_curr eq 'index')or($cate neq '')">class="current first"</if>><a href="{:C('ftx_site_url')}">所有分类<if condition="($nav_curr eq 'index')or($cate neq '')"><em class="cur"></em></if></a>
            
           
            </li>             
		    <ftx:nav type="lists" style="main">
			<volist name="data" id="val">
			<li <if condition="$nav_curr eq $val['alias']">class='current'</if>><a href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a></li>
			</volist>
			</ftx:nav> 
             <li>
                    <a href="{:C('ftx_header_html')}" target="_blank" id="show-qcodes">
                        <em class="icon-normal icon-phone" id="new-phone"></em>
                        手机APP
                    </a>
                    <div id="new-qcodes" class="code-tips" style="display: none;">
                        <div class="code-box">
                            <p class="code"><img src="{:C('ftx_site_url')}{:C('ftx_site_browser')}" width="148px" height="148px"></p>
                            <p class="txt" style="text-align:center;font-size: 14px">随时逛 及时抢</p>
                        </div>
                    </div>
               </li>     
                <li class="fanli"><em class="icon-fanli"><img src="/static/newpi/images/hot.gif"></em><a class="fanli" href="{:U('free/index')}" _hover-ignore="1">零元试用</a></li>          
            </ul>
            <div class="state-show fr" > 
			<a class="normal-a <if condition="$nav_curr eq 'gift'">on</if>" href="{:U('gift/index')}" target="_blank">积分商城</a>
           <notempty name="visitor">
           <span id="signinid">
			<a href="#" class="sign_btn signin normal-a"><em class="icon-normal icon-sign"></em><em class="text">签到领积分</em></a>
                <div class="normal-side-box">
                    <div class="box-tips">
                        <p>欢迎您：{$visitor.username}</p>
                        <p>您的积分：{$visitor.score}</p>
		                <p>积分可<a target="_blank" href="{:U('gift/index')}">免费兑换商品</a></p>
		                <p>每日登陆<b>+{:C('ftx_score_rule.login')}</b>积分</p>
		                <p>邀请访问<b>+{:C('ftx_score_rule.union_visit')}</b>积分</p>
		                <p>邀请注册<b>+{:C('ftx_score_rule.union_reg')}</b>积分</p> 
                    </div>
                </span>
             <else/>		
			<span id="signinid">
			<a href="#" class="sign_btn signin normal-a dosign"><em class="icon-normal icon-sign"></em><em class="text">签到领积分</em></a>
                <div class="normal-side-box">
                    <div class="box-tips">
                        <p>登陆后 签到奖励</p>
                        <p>首次签到可得：<span> <b>{:C('ftx_score_rule.sign')}</b> 积分</span></p>
		                <p>连续签到 <span>{:C('ftx_score_rule.sign_day')}</span> 天</p>
		                <p>每日递增 <span>{:C('ftx_score_rule.sign_add')}</span> 积分</p> 
                    </div>
                </span>
				</notempty>	
				</div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$("#show-qcodes , #new-qcodes").hover(function(){
    $("#new-qcodes").css('display','block');
},function(){
    $("#new-qcodes").css('display','none');
})
</script>



