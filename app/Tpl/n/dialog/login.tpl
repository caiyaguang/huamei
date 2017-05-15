<div id="alert_landing">
<div class="wap-login">
                <form action="{:U('user/login')}" method="post" id="J_dlogin_form">
                    <div class="login-info mt3">
                        <div class="third-txt">
                            <h5>会员账号登录</h5>
                        </div>
                        <ul class="info-input clear">
                            <li>
                                <div class="clear">
                                    <i><img src="/static/jwap/images/person.png" /></i>
                                    <input type="text" name="username" id="username" placeholder="请输入用户名" class="txt" />
                                </div>       				
                            </li>
                            <li><p class="line-on"></p></li>
                            <li>
                                <div class="clear">
                                    <i><img src="/static/jwap/images/pass.png" /></i>
                                    <input type="password" name="password" id="password" placeholder="请输入密码" class="txt"/>
                                </div>       				
                            </li>
                        </ul>
                        <div style="min-height:22px;margin-top: 3%">
                        <p style="display: none;" class="wap-tips"></p>
                        </div>
						<input type="hidden" name="from" value="{$from}" />
						<input type="hidden" name="action" id="login" value="login" />
						<input id="btn_login" type="submit" name="sub" class="sub" value="登录" autocomplete="off">                        
                        <a href="javascript:;" onclick='return confirm("为了您的账户安全，请使用电脑找回密码。")' class="free-reg" >忘记密码？</a>

                        <div class="wap-app" >
                            <div class="third-txt">
                                <h5>第三方账号快速登录</h5>
                            </div>
                            <div class="third-app clear">
							<volist name="oauth_list" id="val">
				              <a href="{:U('oauth/index', array('mod'=>$val['code']))}"  class="{$val.code}"><img src="/static/jwap/images/wap_{$val.code}.png" /></a>
		                       </volist>
                                
                            </div> 
                        </div>
                    </div> 
                </form> 	
            </div>
</div>