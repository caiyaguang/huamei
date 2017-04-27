<div class="side_right" style="display: one;">
        <div class="con">
		<span class="waptag">
		    <a href="{:U('user/like')}" class="trigger tag">
                <p><i class="icon icon-07"></i></p>
                <span><i class="icon icon-06"></i></span>
                <em class="num cartnum" style="display: none;"></em>
                <em class="time carttime" style="display: none;"></em>
            </a>
			<notempty name="visitor">
            <div class="normal-side-box tag-side-box empty">
                <div class="bag-tool bag-tool-empty"><div id="loadingimg" style="display:none;"></div><p><span class="icon-normal icon-bag-empty"></span>亲！去<a href="{:U('user/like')}">收藏夹</a>看看吧~</p></div>
                <em class="cur-img"></em>
            </div>
			<else/>
			    <div class="normal-side-box tag-side-box empty">
                <div class="bag-tool bag-tool-empty"><div id="loadingimg" style="display:none;"></div><p><span class="icon-normal icon-bag-empty"></span>好像还没有<a href="{:U('user/login')}">登录</a>哦~</p></div>
                <em class="cur-img"></em>
            </div>
			</notempty>	
			</span>
		<span class="wap">
            <a  class="trigger" href="{:C('ftx_header_html')}">
                <p>浏览<br>手机版</p>
                <span><i class="icon icon-05"></i></span> </a>
            <div  class="normal-side-box app-side-box">
                <p class="app-show"><img src="{:C('ftx_site_browser')}"></p>
                <p class="app-txt">扫描二维码打开</p>
                <em class="cur-img"></em>
            </div>
			</span>
			<span class="sign-btn">
            <a href="javascript:;" class="sign_btn signin trigger dosign" id="sign-point">
            <p>点击<br>
                签到</p>
            <span><i class="icon icon-01"></i></span></a>
			<notempty name="visitor">
			<div class="normal-side-box">
                <div class="box-tips">
                    <p class="text">欢迎您：{$visitor.username}<br>
                        <a target="_blank" href="{:U('gift/index')}">积分商城</a></p>
                    <p class="other">您的积分：{$visitor.score}<br>
					邀请访问<b>+{:C('ftx_score_rule.union_visit')}</b>积分<br>
                    邀请注册<b>+{:C('ftx_score_rule.union_reg')}</b>积分
                         </p>
                </div>
            <em class="cur-img"></em> 
			</div>
			 <else/>
            <div class="normal-side-box">
                <div class="box-tips">
                    <p class="text">登陆后 签到奖励<br>
                        <a target="_blank" href="{:U('gift/index')}">积分商城</a></p>
                    <p class="other"> 首次签到可得：<span> <b>{:C('ftx_score_rule.sign')}</b> 积分</span><br>
					连续签到 <span>{:C('ftx_score_rule.sign_day')}</span> 天<br>
                    每日递增 <span>{:C('ftx_score_rule.sign_add')}</span> 积分
                         </p>
                </div>
            <em class="cur-img"></em> 
			</div>
			</notempty>	
			</span>
            <a href="{:U('help/xiaobao')}" style="" class="trigger " target="_blank">
                <p>消费<br>
                    保障</p>
                <span><i class="icon icon-02"></i></span> </a>
            <a href="#top" target="_self" class="trigger go-top">
                <p>回到<br>
                    顶部</p>
                <span><i class="icon icon-03"></i></span> </a>
        </div>
    </div>
 