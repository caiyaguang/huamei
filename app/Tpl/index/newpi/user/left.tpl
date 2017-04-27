<div class="left">
			<div class="user">
				<div class="user-face">
					<img src="{:avatar($info['id'], 100)}" width="60" height="60" border="0"/>
				</div>
				<div class="user-info">
					<div class="user-nick org_{$info.id}">{$info.username}</div>
					<div><eq name="info.login_type" value="2">商家用户<else/>普通用户</eq></div>
					<div>余额：￥{$info.money}</div>
				</div>
					<div class="user-edit"><a href="{:U('user/cash')}" class="blue-link">提现</a>　<a href="{:U('user/info')}" class="blue-link">帐户资料</a></div>
			</div>
			<div class="user-bind">
				<div style="float:left">绑定：</div> 
				<a href="{:U('user/bind')}">
					<volist name="oauth_list" id="val">
						<if condition="$val.isbind eq 1">
						<div title="绑定后可用{$val.name}{:C('ftx_site_name')}" class="ico {$val.code}_sync"></div>
						<else/>
						<div title="绑定后可用{$val.name}{:C('ftx_site_name')}" class="ico {$val.code}_sync_no"></div>
						</if>
					</volist>
                		</a>
			</div>
	
			<div class="admin-menu">
				<ul class="left-menu-ul">
					<li class="now">
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon index"></div>
								<div class="nav-name"><a href="{:U('user/index')}">我的后台</a></div>
							</div> 
						</div>			 
					</li>
					<li id="nav_profile">
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon profile"></div>
								<a href="{:U('user/info')}"><div class="nav-name">我的帐户</div></a>
							</div>
							<div class="nva-la"></div>
						</div>
						<div class="nav-sub">
							<div class="nav-top-bg"></div>
							<div class="nav-body">	  
								<div class="nav-center">	 
									<ul>
										<li><a href="{:U('user/info')}">帐户资料</a></li>
										<li><a href="{:U('user/alipay')}">支付宝</a></li>
										<li><a href="{:U('user/password')}">修改密码</a></li>
										<li><a href="{:U('user/avatar')}">头像设置</a></li>
										<li><a href="{:U('user/bind')}">帐号绑定</a></li>
									</ul>
								</div>
							</div>
							<div class="nav-foot-bg"></div>
						</div>		  
					</li>
					<li id="nav_profile">
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon dingdan"></div>
								
								<a href="<eq name="info.login_type" value="2">{:U('user/item')}<else/>{:U('user/order')}</eq>"><div class="nav-name">零元购</div></a>
								
							</div>
							<div class="nva-la"></div>
						</div>
						<div class="nav-sub">
							<div class="nav-top-bg"></div>
							<div class="nav-body">	  
								<div class="nav-center">	 
									<ul>
										<eq name="info.login_type" value="2">
										<li><a href="{:U('user/item')}">活动管理</a></li>
										<li><a href="{:U('user/additem')}">发布活动</a></li>
										<else/>
										<li><a href="{:U('user/cash')}">账户提现</a></li>
										</eq>
										<li><a href="{:U('user/orderManage')}">订单管理</a></li>
										<li><a href="{:U('user/complain')}">申诉记录</a></li>
									</ul>
								</div>
							</div>
							<div class="nav-foot-bg"></div>
						</div>		  
					</li>
					<li id="nav_mingxi">
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon mingxi"></div>
								<a href="{:U('user/mingxi',array('do'=>'in'))}"><div class="nav-name">积分明细</div></a>
							</div>
							<div class="nva-la"></div>
						</div>
						<div class="nav-sub">
							<div class="nav-top-bg"></div>
							<div class="nav-body">	  
								<div class="nav-center">	 
									<ul>
										<li><a href="{:U('user/mingxi')}">收入明细</a></li>
										<li class='last'><a href="{:U('user/gift')}">兑换明细</a></li>
									</ul>
								</div>
							</div>
							<div class="nav-foot-bg"></div>
						</div>		  
					</li>
					<li id="nav_pm">
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon pm"></div>
								<a href="{:U('user/msg',array('do'=>'in'))}"> <div class="nav-name">站内短信</div></a>
							</div>
							<div class="nva-la"></div>
						</div>
						<div class="nav-sub">
							<div class="nav-top-bg"></div>
							<div class="nav-body">	  
								<div class="nav-center">	 
									<ul>
										<li><a href="{:U('user/msg',array('do'=>'in'))}">收件箱</a></li>
										<li><a href="{:U('user/msg',array('do'=>'out'))}">发件箱</a></li>
										<li class='last'><a href="{:U('user/msg',array('do'=>'send'))}">联系客服</a></li>
										</ul>
								</div>
							</div>
							<div class="nav-foot-bg"></div>
						</div>
					</li>
					<li id="nav_tuiguang">
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon invite"></div>
								<a href="{:U('user/union')}"><div class="nav-name">邀请好友</div></a>
							</div> 
							<div class="nva-la"></div>
						</div>		 
						<div class="nav-sub">
							<div class="nav-top-bg"></div>
							<div class="nav-body">	  
								<div class="nav-center">	 
									<ul>
										<li><a href="{:U('user/union')}">我要邀请</a></li>
										<li class='last'><a href="{:U('user/unionlist')}">我的邀请</a></li>
						 
									</ul>
								</div>
							</div>
							<div class="nav-foot-bg"></div>
						</div>
					</li>
					<li>
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon cha"></div>
								<div class="nav-name"><a href="{:U('user/kuaidi')}">快递查询</a></div>
							</div> 
						</div>			 
					</li>
					<li>
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon help"></div>
								<div class="nav-name"><a href="{:U('help/index')}" target="_blank">帮助中心</a></div>
							</div> 
						</div>			 
					</li>
					<li>
						<div class="nav-title">
							<div class="nav-mouse">
								<div class="icon exit"></div>
								<div class="nav-name"><a href="{:U('user/logout')}">退出登录</a></div>
							</div> 
						</div>			 
					</li>
				</ul>
			</div>
		</div>
<script type="text/javascript">
$(function(){
	$('.left').css( 'height' , $('.right').css('height') )
	var now    = 0;
	var isShow = false;
	$('.left-menu-ul li').each(function(i){
		if($(this).attr('id') == 'nav_profile' || $(this).attr('id') == 'nav_mingxi' || $(this).attr('id') == 'nav_dingdan' || $(this).attr('id') == 'nav_pm' || $(this).attr('id') == 'nav_tuiguang' ){
			$(this).bind('mouseover' , function(){
				$(this).attr('class' , 'active');
				$(this).children('.nav-sub').show();
			});

			$(this).bind('mouseout' , function(){
				if( !isShow ){
					$(this).children('.nav-sub').hide();		
					$(this).attr('class' , '');
				}
			});
 		} 		 
	 });
});
</script>