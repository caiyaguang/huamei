<div id="J_sidebar" class="side_right">
        <div class="side-box">
            <ul class="side-oper">
                <li class="normal side-user">
                    <a class="links" id="J_user" target="_blank" href="{:U('user/index')}">
                        <i class="normal-icon i-user"></i>
                    </a>
                    <div id="side-login" class="tab-tips tab-login">
                        <div class="user-box">     
						    <div class="pic"><img src="{:avatar($visitor['id'], 64)}"></div>
                            <p class="txt"></p>
                        </div>
                        <i class="close">×</i>
                        <div class="arr-icon">◆</div>
                    </div>
                </li>
                <li class="normal side-cart">
                    <a class="links links-cart" id="J_cart" href="javascript:;">
                        <i class="normal-icon i-cart"></i>
                        <em class="num cartnum">{:getlike($visitor['id'])}</em>
                    </a>
                    <div class="tab-tips tab-tag">
                        <div class="carttime"></div><div class="arr-icon">◆</div>
                    </div>
                   
                </li>
                <li class="normal side-love">
                    <a class="links" id="J_love" target="_blank" href="{:U('user/like')}">
                        <i class="normal-icon i-love"></i>
                    </a>
                    <div class="tab-tips">我的收藏<div class="arr-icon">◆</div> </div>
                </li>
                <li class="normal side-quan">
                    <a class="links" id="J_quan" target="_blank" href="{:U('user/gift')}">
                        <i class="normal-icon i-quan"></i>
                    </a>
                    <div class="tab-tips">我的礼品<div class="arr-icon">◆</div> </div>
                </li>
            </ul>
            <ul class="side-oper other">
             
				<li class="normal side-ad">
	                <a class="links links_ad" href="#"  target="_blank">
	                    <img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style-nav.jpg?v=swj423">
	                </a>
	                <div class="tab-tips">
	                    <a href="#" target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style.png?v=swj423" width="130" height="248px;"></a>
	                </div>
	            </li>  
                <li class="normal side-complain">
                    <a class="links" id="J_complain" target="_blank" href="{:U('user/msg',array('do'=>'send'))}">
                        <i class="normal-icon i-complain"></i>
                    </a>
                    <div class="tab-tips">意见反馈<div class="arr-icon">◆</div> </div>
                </li>
                <li class="normal side-code">
                    <a class="links" id="J_code" href="javascript:;">
                        <i class="normal-icon i-code"></i>
                    </a>
                    <div class="tab-tips">
                        <div class="code-box">
                            <p class="code"><img src="{:C('ftx_site_weixin')}" width="90px"></p>
                            <p class="txt">扫描下载二维码</p>
                        </div>
                        <div class="arr-icon">◆</div>
                    </div>
                </li>
                <li class="normal side-backtop">
                    <a class="links" id="J_backtop" href="javascript:;">
                        <i class="normal-icon i-backtop"></i>
                    </a>
                    <div class="tab-tips">返回顶部<div class="arr-icon">◆</div> </div>
                </li>
            </ul>
        </div>
       
    </div>	
    <script src="/static/newpi/js/init.js" type="text/javascript"></script>