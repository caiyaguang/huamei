<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="content-type" content="text/html; charset=utf-8"><title><?php echo C('ftx_site_name');?> - <?php echo ($page_seo["title"]); ?></title><meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>" /><meta name="description" content="<?php echo ($page_seo["description"]); ?>" /><meta name="generator" content="yangtata" /><meta name="renderer" content="webkit"><meta name="author" content="Yangtata Team  bbs.yangtata.com" /><meta name="copyright" content="2010-2014 Yangtata Inc." /><meta name="MSSmartTagsPreventParsing" content="True" /><meta http-equiv="MSThemeCompatible" content="Yes" /><link rel="shortcut icon" type="image/ico" href="/favicon.ico"><link rel="bookmark" href="/favicon.ico"/><script type="text/javascript">	SITEURL="<?php echo C('ftx_site_url');?>";
	CURURL="<?php echo C('ftx_site_url');?>";
	WEBNICK="<?php echo C('ftx_site_name');?>";
	URL_COOKIE=0;
</script><link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/md-list.css" /><link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" /><script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script><script type="text/javascript" src="__STATIC__/newpi/js/sea-debug.js"></script><script type="text/javascript" src="__STATIC__/red/js/fun.js"></script><script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script><script type="text/javascript" src="__STATIC__/newpi/js/header.js"></script><link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/global.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/kefu.css" /><link rel=stylesheet type=text/css href="__STATIC__/red/css/baoming.css" /><link href="__STATIC__/red/css/global1.0.css" media="screen" rel="stylesheet" type="text/css"/><link href="__STATIC__/red/css/pro1.0.2.css" media="screen" rel="stylesheet" type="text/css"/><link href="__STATIC__/red/css/index1.0.1.css" media="screen" rel="stylesheet" type="text/css"/><script src="__STATIC__/red/js/jquery.1.6.4.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/scrolltopcontrol.js?3201408011" type="text/javascript"></script><script src="__STATIC__/red/js/pp18610_v2.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/tuanpub2.4.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/businesspub2.5.min.js" type="text/javascript"></script><script src="__STATIC__/red/js/businessaccount1.8.1.min.js" type="text/javascript"></script></head><body><div id="header"><div class="area"><h1><a href="<?php echo C('ftx_site_url');?>"><img src="<?php echo C('ftx_site_logo');?>" height="45"></a></h1><?php if(!empty($visitor)): ?><span id="bmlogin"><img src="<?php echo avatar($info['id'], 100);?>" width="30" height="30" border="0"/>您好!<i><?php echo ($visitor["username"]); ?></i><b class="control"><a href="<?php echo U('user/index');?>" target="_blank">账号管理</a></b>[<a href="<?php echo U('user/logout');?>">退出</a>]</span><?php else: ?><span id="bmlogin"><a class="log" href="<?php echo U('user/login');?>"></a><a target="_blank" href="<?php echo U('user/register');?>" class="reg"></a></span><?php endif; ?><div class="hidden"></div><div class="hidden"></div><div class="hidden"></div></div></div><div id="nav"><div class="head_nav area"><span><div class="enroll dropdown"><a href="#">全部分类</a><em></em><ul class="dropdown-menu"><?php  $cdi=0; if(is_array($cate_data)): $i = 0; $__LIST__ = $cate_data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$bcate): $mod = ($i % 2 );++$i; if(($bcate['pid'] == 0) AND ($cdi < 100)): $cdi++; ?><li><a href="<?php echo U('index/cate', array('cid'=>$bcate['id']));?>" title="<?php echo ($bcate["name"]); ?>" target="_blank"><?php echo ($bcate["name"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?></ul></div><a <?php if($nav_currr == 'baoming'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('bao/index');?>">活动报名</a><a <?php if($nav_currr == 'my'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('baoming/my');?>">已报名商品</a><a <?php if($nav_currr == 'yaoqiu'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('bao/yaoqiu');?>">活动要求</a><a <?php if($nav_currr == 'shenhe'): ?>class="nav-active"<?php endif; ?> href="<?php echo U('bao/shenhe');?>">审核说明</a><a href="<?php echo U('help/index');?>" target="_blank">帮助中心</a><a href="<?php echo U('article/index');?>" target="_blank">穿衣搭配</a></span></div></div><script type="text/javascript">  function ScrollImgLeft(){
    var speed=30
    var scroll_begin = document.getElementById("scroll_begin");
    var scroll_end = document.getElementById("scroll_end");
    var scroll_div = document.getElementById("scroll_div");		
		
    if(scroll_begin.offsetWidth < scroll_div.offsetWidth){
			
      return false;	
    }else{
      scroll_end.innerHTML=scroll_begin.innerHTML;
      function Marquee(){
        if(scroll_end.offsetWidth-scroll_div.scrollLeft<=0)
          scroll_div.scrollLeft-=scroll_begin.offsetWidth
        else
          scroll_div.scrollLeft++
      }
      var MyMar=setInterval(Marquee,speed)
      scroll_div.onmouseover=function() {clearInterval(MyMar)}
      scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
			
    }
		
  }
</script><div id="contentA"><div class="blockA area"><dl><dt>效果明显</dt><dd>        组织活动按效果付费<br>        流量获取必选渠道<br>        最优质的购物流量<br></dd></dl><dl><dt>多种形式</dt><dd>        暗号团 9块9包邮   <br>        20元封顶 独家折扣  <br>        精彩专题活动  <br>        超强大促 全场9块9包邮
      </dd></dl><dl><dt>多渠道展示</dt><dd><?php echo C('ftx_site_name');?>主站首页推荐 <br><?php echo C('ftx_site_name');?>淘宝/QQ应用推荐 <br><?php echo C('ftx_site_name');?>官方微博推荐 覆盖60多万粉丝 <br><?php echo C('ftx_site_name');?>手机客户端及用户的传播和扩散
      </dd></dl></div><div class="blockB area"><em></em><div class="scroll_div" id="scroll_div"><div id="scroll_begin"><b>最新通知：</b><a><?php echo C('ftx_qq_code');?></a></div><div id="scroll_end"></div></div></div><div class="blockC area"><span>报名流程</span><em>1</em>发布活动<i></i><em>2</em>活动审核<i></i><em>3</em>样品审核<i></i><em>4</em>活动上线
    <em></em><a href="#" class="xiangx" target="_blank">详细流程&gt;&gt;</a></div><dl class="blockE area"><dt>规则协议</dt><dd><span><a href="#" target="_blank">·<?php echo C('ftx_site_name');?>商家平台活动报名服务协议</a></span><span><a href="#" target="_blank">·<?php echo C('ftx_site_name');?>商家保证金协议</a></span><span><a href="#" target="_blank">·<?php echo C('ftx_site_name');?>商家违规处罚条例</a></span></dd></dl></div><style>	.main-newgood {
		background: #fff;
		border: 1px solid #ddd;
	}
	.main {
		margin: 20px auto 0;
		overflow: hidden;

	}
	.w980 {
		width: 980px;
	}
	.form-result {
		border-bottom: solid 1px #e6e6e6;
		border-collapse: collapsed;
		font-family: "microsoft yahei";
	}
	.bm-form {
		border-bottom: dashed 1px #ddd;
		background-color: #fff;
		padding: 30px 0;
	}
	.bm-form table tr {
		height: 20px;
		font-size: 18px;
		line-height: 20px;
	}
	.form-result th, .form-result td {
		border-right: solid 1px #e6e6e6;
		border-top: solid 1px #e6e6e6;
		padding: 18px 8px;
		vertical-align: top;
		font-size: 14px;
		text-align: center;
	}
	.form-result th {
		border-bottom: solid 1px #e6e6e6;
		font-weight: bold;
		background: #F9F9F9;
		background: -webkit-gradient(linear,left top,left bottom,from(#FEFEFE),to(#F5F5F5));
		background: -moz-linear-gradient(top,#FEFEFE,#F5F5F5);
		background: -o-linear-gradient(top,#FEFEFE,#F5F5F5);
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FEFEFE',endColorstr='#F5F5F5');
		zoom: 1;
	}
	.bm-form th {
		padding-right: 5px;
		width: 178px;
		text-align: right;
		line-height: 34px;
		font-weight: normal;
	}
	.bm-form .form-tip, .form-tip-hasborder {
		margin-top: 10px;
		font-size: 12px;
		line-height: 1.8em;
	}
	.org_2 {
		color: #FF6600;
	}
	.bm-form .form-btn {
		padding: 20px 0;
	}
	.bm-form .form-btn .btn {
		width: 145px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		display: block;
		color: #fff;
		font-size: 18px;
		background: url(http://www.zhe4000.com/static/jky/images/good/tag_state.gif) no-repeat 0 -160px;
		text-shadow: 1px 1px #ff4700;
		border: none;
		cursor: pointer;
	}
</style><div class="main w980 mb20 main-newgood" style="height:auto;min-height:0;"><div class="form-result"><div id="foot"><div align="center"><form name="alipayment" action="" method="post" target="_blank"><div class="bm-form"><table><tr><th>                                    扫码支付：
                                </th><td><img src="<?php echo ($typeInfo['pic_url']); ?>" width="300"></td></tr><tr><th colspan="2" style="text-align:center; font-size:16px; color:#900; font-weight:bold;">                                    不会手机支付 也可试试下面的 电脑支付
                                </th></tr><tr><th>                                    收款账户：
                                </th><td><input size="100" name="WIDseller_email" value="meipinzhevip@163.com" class="form-int-long" readonly="" type="hidden"><div class="form-tip org_2 f12" style="font-size:18px;"><?php echo C('ftx_site_name');?>收款支付宝：<?php echo ($typeInfo['alipay']); ?></div></td></tr><tr  onclick="copyToClipBoard()"><th>                                    订单编号：
                                </th><td><div class="form-tip  f12" style="font-size:18px;"><span class="org_2" id="fkdxhpz"><?php echo ($typeInfo['orderId']); ?></span><span style="color: #333;font-size: 14px">                                        	[支付宝转账备]  
                                        </span></div></td></tr><tr><th>                                    活动天数：
                                </th><td><div class="form-tip org_2 f12" style="font-size:18px;"><?php echo ($typeInfo['name']); ?>	： 	 <?php echo ($typeInfo['days']); ?>天				
                                    </div></td></tr><tr><th>                                    付款金额：
                                </th><td><div class="form-tip org_2 f12" style="font-size:18px;">										￥ <?php echo ($typeInfo['price']); ?></div></td></tr><tr><th>                                    订单内容：
                                </th><td><div class="form-tip org_2 f12" style="font-size:18px;"><?php echo ($itemInfo['title']); ?></div></td></tr><tr><th>                                    展示地址：
                                </th><td><div class="form-tip org_2 f12" style="font-size:18px;"><a href="<?php echo ($typeInfo['booth']); ?>"><?php echo ($typeInfo['booth']); ?></a></div></td></tr><tr><th>                                   付款要求：
                                </th><td><span><?php echo ($typeInfo['requirement']); ?><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=<?php echo C('ftx_site_name');?>&amp;menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('ftx_qq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"></a></span></td></tr><tr><th>                                    确认付款：
                                </th><td><div class="f12" style="font-bold;font-size:23px;"><a>已成功转账？</a>                                    	&nbsp;&nbsp;|&nbsp;&nbsp;
                                    	<a class="clickhaopinzhe"><img border="0" src="http://img.vpbjz.cn/haolituan/ljzf.jpg" alt="点击提交订单" title="点击提交订单"></a>                                    	&nbsp;|
                                    	<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=<?php echo C('ftx_site_name');?>&amp;menu=yes">或&nbsp;联系客服</a></div></td></tr></tbody></table></div></form></div></div></div></div><script type="text/javascript">  ScrollImgLeft();
</script><script type="text/javascript">var haopinzhe = "<?php echo ($ajaxUrl); ?>";
	$('.clickhaopinzhe').live('click', function(){		
		$.getJSON(haopinzhe, function(result){
			if(result.status == 1){
				$.dialog({
                    id:'paySubmit',
                    title:"提交付款确认页 - <?php echo C('ftx_site_name');?> ", 
                    content:result.data, 
                    padding:'', 
                    fixed:true, 
                    lock:true
                });
				check_form($('#J_dlogin_form'));
			}else{
				$.ftxia.tip({content:result.msg, icon:'error'});
			}
		});
	});

   var check_form =  function(form){
			form.find('#smt_resetphone_one').die('click').live('click', function(){
                var itemurl = $('input[name=itemurl]').val();
                var alipay = $('input[name=alipay]').val();
                var alipaynumber = $('input[name=alipaynumber]').val();
                var numiid = $('input[name=numiid]').val();
                var relname = $('input[name=relname]').val();
                var type = $('input[name=typeid]').val();
                var itemsId = $('input[name=itemsId]').val();//items表id
                var username  = $('input[name=username]').val();
                if (alipaynumber == '') {
                	$.ftxia.tip({content:"转账流水号不能为空", icon:'alert'});
                }else if (alipay == '') {
                	$.ftxia.tip({content:"支付宝不能为空", icon:'alert'});
                }else if (itemurl == '') {
                	$.ftxia.tip({content:"商品连接不能为空", icon:'alert'});
                }else if(relname == ''){
                	$.ftxia.tip({content:"请填写真实姓名方便我们核对！", icon:'alert'});
                }else if (itemurl != numiid ) {
                	$.ftxia.tip({content:"和报名商品ID不一致", icon:'alert'});
                }else {
                	$('#smt_resetphone_one').val('数据请求中..');
	                $.getJSON(FTXIAER.root + '/?m=baoming&a=paySubmityanz', {
	                	itemurl:itemurl,
	                	alipay:alipay,
	                	alipaynumber:alipaynumber,
	                	username : username,
	                	itemsId : itemsId,
	                	type: type,
	                	relname: relname
	                }, function(result){
	                	$('#smt_resetphone_one').val(result.msg);
	                    if(result.status == 1){
	                    	$.ftxia.tip({content:result.msg, icon:'success'});
	                    	setTimeout(function(){window.location.href= result.data},2000); 
	                    }else if (result.status == 2) {
	                    	$.ftxia.tip({content:result.msg, icon:'alert'});
	                    	setTimeout(function(){window.location.href= result.data},2000); 
	                    }else{
	                    	$.ftxia.tip({content:result.msg, icon:'alert'});
	                    }

	                });

                }
            });

		}
</script><div class="foot"><div class="white_bg"><div class="foot-con"><div class="con-box-n clear"><div class="app-side-box fl"><p class="app-show"><img src="<?php echo C('ftx_site_weixin');?>"></p><p class="app-txt">扫描二维码打开</p></div><div class="con-left-info fl"><dl class="update"><dt>获取更新</dt><dd><a href="<?php echo U('apps/index');?>" target="_blank" rel="nofollow"><i></i>iPhone/Android</a></dd><dd><a href="<?php echo C('ftx_qzone_url');?>" target="_blank" rel="nofollow"><i></i>QQ空间</a></dd><dd><a href="<?php echo C('ftx_sina_url');?>" target="_blank" rel="nofollow"><i></i>新浪微博</a></dd><dd><a href="<?php echo C('ftx_tenxun_url');?>" target="_blank" rel="nofollow"><i></i>腾讯微博</a></dd></dl><dl class="cooperation"><dt>商务合作</dt><dd><a href="<?php echo U('bao/index');?>" target="_blank"><i></i>卖家免费报名</a></dd><dd><a href="<?php echo U('help/read',array('id'=>2));?>" target="_blank" rel="nofollow"><i></i>商务合作</a></dd><dd><a href="<?php echo U('help/read',array('id'=>2));?>" target="_blank" rel="nofollow"><i></i>广告合作</a></dd><dd><a href="<?php echo U('help/read',array('id'=>5));?>" target="_blank" rel="nofollow"><i></i>免责声明</a></dd></dl><dl class="cor-info"><dt>用户帮助</dt><dd><a href="<?php echo U('help/read',array('id'=>6));?>" target="_blank" rel="nofollow"><i></i>常见问题</a></dd><dd><a href="<?php echo U('help/xiaobao');?>" target="_blank" rel="nofollow"><i></i>消费保障</a></dd><dd><a href="<?php echo U('forget/index');?>" target="_blank" rel="nofollow"><i></i>忘记密码</a></dd><dd><a href="<?php echo U('user/register');?>" target="_blank" rel="nofollow"><i></i>免费注册</a></dd></dl><dl class="help-info"><dt>用户中心</dt><dd><a href="<?php echo U('user/like');?>" target="_blank" rel="nofollow"><i></i>我的收藏</a></dd><dd><a href="<?php echo U('help/read',array('id'=>6));?>" target="_blank" rel="nofollow"><i></i>积分攻略</a></dd><dd><a href="<?php echo U('sitemap/index');?>" target="_blank"><i></i>网站地图</a></dd></dl></div><div class="con-menu fr"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=qq&amp;menu=yes" class="service-add fl" target="_blank"></a><span class="service-time fl"><p>周一至周六 </p><p>9:00-22:00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></span></div></div><div class="links"><span>友情链接：</span><div class="links_list_box"><ul class="links_list"><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,0,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,10,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,20,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li></ul></div></div><p class="ft-company"><?php echo C('ftx_site_name');?>&nbsp;&nbsp;<a href="http://www.miibeian.gov.cn" target="_blank"><?php echo C('ftx_site_icp');?></a>&#12288;&#12288;Copyright &copy; 2010 - 2016 <?php echo C('ftx_site_url');?> All Rights Reserved  <?php echo C('ftx_statistics_code');?></p></div></div></div><div id="J_sidebar" class="side_right"><div class="side-box"><ul class="side-oper"><li class="normal side-user"><a class="links" id="J_user" target="_blank" href="<?php echo U('user/index');?>"><i class="normal-icon i-user"></i></a><div id="side-login" class="tab-tips tab-login"><div class="user-box"><div class="pic"><img src="<?php echo avatar($visitor['id'], 64);?>"></div><p class="txt"></p></div><i class="close">×</i><div class="arr-icon">◆</div></div></li><li class="normal side-cart"><a class="links links-cart" id="J_cart" href="javascript:;"><i class="normal-icon i-cart"></i><em class="num cartnum"><?php echo getlike($visitor['id']);?></em></a><div class="tab-tips tab-tag"><div class="carttime"></div><div class="arr-icon">◆</div></div></li><li class="normal side-love"><a class="links" id="J_love" target="_blank" href="<?php echo U('user/like');?>"><i class="normal-icon i-love"></i></a><div class="tab-tips">我的收藏<div class="arr-icon">◆</div></div></li><li class="normal side-quan"><a class="links" id="J_quan" target="_blank" href="<?php echo U('user/gift');?>"><i class="normal-icon i-quan"></i></a><div class="tab-tips">我的礼品<div class="arr-icon">◆</div></div></li></ul><ul class="side-oper other"><li class="normal side-ad"><a class="links links_ad" href="#"  target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style-nav.jpg?v=swj423"></a><div class="tab-tips"><a href="#" target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style.png?v=swj423" width="130" height="248px;"></a></div></li><li class="normal side-complain"><a class="links" id="J_complain" target="_blank" href="<?php echo U('user/msg',array('do'=>'send'));?>"><i class="normal-icon i-complain"></i></a><div class="tab-tips">意见反馈<div class="arr-icon">◆</div></div></li><li class="normal side-code"><a class="links" id="J_code" href="javascript:;"><i class="normal-icon i-code"></i></a><div class="tab-tips"><div class="code-box"><p class="code"><img src="<?php echo C('ftx_site_weixin');?>" width="90px"></p><p class="txt">扫描下载二维码</p></div><div class="arr-icon">◆</div></div></li><li class="normal side-backtop"><a class="links" id="J_backtop" href="javascript:;"><i class="normal-icon i-backtop"></i></a><div class="tab-tips">返回顶部<div class="arr-icon">◆</div></div></li></ul></div></div><script src="/static/newpi/js/init.js" type="text/javascript"></script><script type="text/javascript">var FTXIAER = {
 root: "__ROOT__",
 site: "<?php echo C('ftx_site_url');?>",
 uid: "<?php echo ($visitor['id']); ?>", 
 loginurl:"<?php echo U('user/login');?>",
 userurl:"<?php echo U('user/index');?>",
 username:"<?php echo ($visitor['username']); ?>",
 face:"<?php echo avatar($visitor['id'], 64);?>",
 url:{}
};
var lang = {};
<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script><?php $tag_load_class = new loadTag;$data = $tag_load_class->js(array('type'=>'js','href'=>'__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js','cache'=>'0','return'=>'data',));?><script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script><script src="__STATIC__/newpi/js/goodlist.js" type="text/javascript"></script><script type="text/javascript">	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script><script type="text/javascript" src="__STATIC__/newpi/js/pg-index.js" ></script><?php echo C('ftx_weibo_code'); echo C('ftx_tencent_code'); echo C('ftx_taojindian_html');?><script type="text/javascript" src="__STATIC__/newpi/js/ZeroClipboard.js"></script><script src="__STATIC__/ftxia/js/goods.js"></script></body></html>