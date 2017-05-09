<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml"><head><title><?php echo ($page_seo["title"]); ?>-<?php echo C('ftx_site_name');?></title><meta content="<?php echo ($page_seo["keywords"]); ?>" name="keywords"><meta content="<?php echo ($page_seo["description"]); ?>" name="description"><meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta name="generator" content="huameitaoke"><meta name="author" content="huameitaoke Team  bbs.138gzs.com"><meta name="copyright" content="2012-2015 bbs.138gzs.com Inc."><meta name="MSSmartTagsPreventParsing" content="True"><meta http-equiv="MSThemeCompatible" content="Yes"><meta content="IE=Edge" http-equiv="X-UA-Compatible"><link rel="shortcut icon" type="image/ico" href="/favicon.ico"><link rel="bookmark" href="/favicon.ico"/><link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/css/global.css" /><link rel="stylesheet" type="text/css" href="__STATIC__/newpi/bao/css/sellers_seller.css" /><link rel="stylesheet" type="text/css" href="__STATIC__/newpi/bao/css/base.css" /><link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/bao/css/global.css" /><link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/bao/css/sellers_seller(1).css" /><link rel="stylesheet" type="text/css"  href="__STATIC__/newpi/bao/css/ui-dialog.css" /><script src="__STATIC__/newpi/bao/js/hm.js"></script><script type="text/javascript" src="__STATIC__/newpi/bao/js/jquery.min.js"></script></head><body><?php echo R('advert/index', array(10), 'Widget');?><div id="toolbar"><div class="bar-con"><ul class="topNav fl"><?php $tag_nav_class = new navTag;$data = $tag_nav_class->lists(array('type'=>'lists','style'=>'top','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li><a <?php if($nav_curr == $val['alias']): ?>class='active'<?php endif; ?>href="<?php echo ($val["link"]); ?>" <?php if($val["target"] == 1): ?>target="_blank"<?php endif; ?>><?php echo ($val["name"]); ?></a><li><?php endforeach; endif; else: echo "" ;endif; ?><li><a href="<?php echo C('ftx_header_html');?>" target="_blank"><em class="icon-normal icon-phone"></em>手机版</a></li></ul><?php if(!empty($visitor)): ?><div class="right-show fr"><div class="logined-show"><a href="<?php echo U('user/index');?>" class="normal-a"><img src="<?php echo avatar($visitor['id'], 20);?>"><span class="user"><?php echo ($visitor["username"]); ?></span><em class="cur"></em></a><div class="normal-box login-box"><ul><li><a href="<?php echo U('user/like');?>"><i class="icon icon-01"></i><span>我的收藏</span></a></li><li><a href="<?php echo U('user/index');?>"><i class="icon icon-03"></i><span>账号设置</span></a></li><li><a href="<?php echo U('user/mingxi');?>"><i class="icon icon-02"></i><span>账户明细</span></a></li><li><a href="<?php echo U('user/logout');?>"><i class="icon icon-04"></i><span>退出</span></a></li></ul></div></div><div class="personal-show"><a href="<?php echo U('user/union');?>"><span>邀请好友</span></a>　|</div><div class="other-show"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=qq&amp;menu=yes" target="_blank" rel="nofollow">在线客服</a><a href="<?php echo U('bao/index');?>" target="_blank">卖家报名</a></div></div><?php else: ?><div class="right-show fr"><div class="union-login"><?php if(is_array($oauth_list)): $i = 0; $__LIST__ = $oauth_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i; if($val["code"] == 'qq'): ?><a href="<?php echo U('oauth/index', array('mod'=>$val['code']));?>" ><span style="background:url(/static/newpi/images/new-alert-total.gif) no-repeat;
		width: 22px;
		height: 25px;
		display: inline-block;
		z-index: 99;
		background-position: 0px -28px;
		vertical-align: middle;
		margin: 0 0px 0 8px;"></span><?php echo ($val["name"]); ?></a><?php endif; if($val["code"] == 'taobao'): ?><a href="<?php echo U('oauth/index', array('mod'=>$val['code']));?>" ><span style="background:url(/static/newpi/images/new-alert-total.gif) no-repeat;
		width: 22px;
		height: 25px;
		display: inline-block;
		z-index: 99;
		background-position:0px -0px;
		vertical-align: middle;
		margin: 0 0px 0 8px;"></span><?php echo ($val["name"]); ?></a><?php endif; if($val["code"] == 'sina'): ?><a href="<?php echo U('oauth/index', array('mod'=>$val['code']));?>" ><span style="background:url(/static/newpi/images/new-alert-total.gif) no-repeat;
		width: 22px;
		height: 25px;
		display: inline-block;
		z-index: 99;
		background-position:0px -55px;
		vertical-align: middle;
		margin: 0 0px 0 8px;"></span><?php echo ($val["name"]); ?></a><?php endif; endforeach; endif; else: echo "" ;endif; ?>&#12288;| </div><div class="login-show"><a href="<?php echo U('user/login');?>">登录</a><a href="<?php echo U('user/register');?>">免费注册</a>&#12288;|</div><div class="other-show"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=qq&amp;menu=yes">在线客服</a><a href="<?php echo U('bao/index');?>">卖家报名</a></div></div><?php endif; ?></div></div><div class="seller-nav"><div class="nav-content sell-col-md-12"><div class="seller-logo left"><a href="<?php echo U('bao/index');?>"><img src="<?php echo C('ftx_user_logo');?>"  height="55px" alt="卖家中心" title="卖家中心"></a></div><ul class="nav_list right"><li class="frist"><a href="<?php echo C('ftx_site_url');?>" target="_blank">首页</a></li><li><a href="<?php echo U('baoming/my');?>" target="_blank">报名查询</a></li><li><a href="<?php echo U('bao/yaoqiu');?>" target="_blank">活动要求</a></li><li><a href="<?php echo U('bao/shenhe');?>" target="_blank">审核说明</a></li><li><a href="<?php echo U('help/index');?>" target="_blank">帮助中心</a></li></ul><div style="clear:both"></div></div></div><div class="sellers-page-seller"><div class="sellers-page-body"><div class="seller-banner sell-col-md-12"><!--报名规则 开始--><div class="seller-banner-left left"><div class="banner-left-title" _hover-ignore="1"><div class="circle"></div><span class="left">卖家早知道</span></div><div class="clear"></div><div class="banner_left_notice"><ul id="leftNoticeSlide" style="margin-top: 0px;"><div class="clear"></div><li><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:;" _hover-ignore="1">黑名单制度</a></li><li><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:;" _hover-ignore="1">处罚规则</a></li><li _hover-ignore="1"><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:red;" _hover-ignore="1">商品审核说明</a></li><li _hover-ignore="1"><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:;" _hover-ignore="1">上线前准备</a></li><li _hover-ignore="1"><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:red;" _hover-ignore="1">商品报名要求</a></li><li><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:red;" _hover-ignore="1">商品质检规则</a></li><li><span>规则</span><a href="<?php echo U('bao/yaoqiu');?>" target="_blank" class="know" style="color:;" _hover-ignore="1">报名规则</a></li></ul></div></div><!--报名规则 结束--><!--公告图片轮播 开始--><div class="seller-banner-part left"><?php echo R('advert/index', array(9), 'Widget');?></div><!--公告图片轮播 结束--><!--图片轮播右侧 开始--><div class="seller-banner-right right"><?php if(!empty($visitor)): ?><div class="seller_right_login"><p class="login_name">Hi！<?php echo ($visitor["username"]); ?><a href="<?php echo U('user/logout');?>" class="login_out">退出</a></p><div class="clear"></div><p></p><div class="btm_wrap"><a href="<?php echo U('user/index');?>" class="member_btm">会员中心</a></div></div><?php else: ?><div class="seller_right_login"><p class="login_name">Hi！你好</p><div class="btm_wrap"><a class="nav_login1 btm" href="<?php echo U('user/login');?>">登录</a><a class="nav_reg1 btm" href="<?php echo U('user/register');?>">注册</a></div></div><?php endif; ?><div class="banner-right-qrcode" style="padding:0"><img src="/static/newpi/bao/images/shengyi.png" alt="公众订阅号" title="公众订阅号"></div><div class="banner-right-qqgroup"><div class="qqgroup"><div class="circle"></div><span class="left">首页首屏展示费用</span><div id="arrow-img" class="arrow-right left"></div><div class="clear"></div></div><div class="sell-qq-group" style="display:none"><ul><li>首屏展位 5天359元</li><li>首屏展位 7天399元</li><li>首屏展位 10天499元</li><li>首屏展位 15天699元</li><li>首屏展位 20天899元</li><li>首屏展位 30天1199元</li></ul></div></div></div><div class="clear"></div><!--图片轮播右侧 结束--><!--最新公告 开始--><div class="notice wrap"><a href="<?php echo U('bao/shenhe');?>" title="最新公告"><h4 class="title">最新公告</h4></a><div class="notice-ul-out" id="demo"><ul><li class="border-box" id="demo1"><?php echo C('ftx_qq_code');?></li><li class="border-box" id="demo2"><?php echo C('ftx_qq_code');?></li></ul></div></div><script type="text/javascript">var speed=40 ;//速度 
var demo = document.getElementById("demo");
var demo1 = document.getElementById("demo1");
var demo2 = document.getElementById("demo2");
demo2.innerHTML=document.getElementById("demo1").innerHTML;
function Marquee(){
if(demo.scrollLeft-demo2.offsetWidth>=0){
 demo.scrollLeft-=demo1.offsetWidth;
}
else{
 demo.scrollLeft++;
}
}
var myvar=setInterval(Marquee,speed);
demo.onmouseout=function (){myvar=setInterval(Marquee,speed);}
demo.onmouseover=function(){clearInterval(myvar);}
</script><div class="part-Columns"><div class="head"><b></b><span>报名审核流程</span></div><div class="flow_path"><div class="box"><img src="__STATIC__/newpi/bao/images/flow_path_1.png" alt=""><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b><?php echo C('ftx_site_name');?>商品报名要求</a><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b><?php echo C('ftx_site_name');?>报名规则</a></div><div class="box"><img src="__STATIC__/newpi/bao/images/flow_path_2.png" alt=""><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b><?php echo C('ftx_site_name');?>审核中注意事项</a><a target="_blank" href="<?php echo U('bao/yaoqiu');?>#tupian"><b>●</b><?php echo C('ftx_site_name');?>报名商品图片要求</a></div><div class="box"><img src="__STATIC__/newpi/bao/images/flow_path_3.png" alt=""><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b><?php echo C('ftx_site_name');?>商品质检规则</a><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b><?php echo C('ftx_site_name');?>处罚规则</a></div><div class="box"><img src="__STATIC__/newpi/bao/images/flow_path_4.png" alt=""><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b>商品上线注意事项</a><a target="_blank" href="<?php echo U('bao/yaoqiu');?>"><b>●</b>关于黑名单制度</a></div></div></div><div class="part-Columns"><div class="head"><b></b><span>报名栏目</span></div><div class="part-activity-col left" style="margin-right:18px;"><div class="special-title">商品报名</div><dl><dt><img src="__STATIC__/newpi/bao/images/baoming.jpg" title="商品报名"></dt><dd title="报名价格需低于市场价格并包邮，少数偏远地区可不包邮。商品市场价值在25元以上，信誉1钻以上，历史销量不限、给力商品优先审核排期！"><b>活动说明：</b>除专场以外的所有商品都在这里报名，信誉1钻及以上,开店时间≥60天；描述4.6及以上，好评96%以上，店铺退货率不能大于行业均值的2%；历史销量10以上、报名链接2个以上评价.报名价格需低于市场价格并包邮，少数偏远地区可不包邮。商品市场价值在25元以上，给力商品优先审核排期！</dd></dl><div class="part-activity-bottom clearfix"><span><a target="_blank" href="<?php echo U('baoming/add');?>" class="bdr3">立即报名</a></span></div></div><div class="part-activity-col left" style="margin-right:18px;"><div class="special-title">9.9包邮专场报名</div><dl><dt><img src="__STATIC__/newpi/bao/images/jiu.png" title="9.9包邮专场"></dt><dd title="报名价格须与商家实际销量价格同等并包邮，少数偏远地区可不包邮。商品市场价值在10元以下，信誉1钻以上，历史销量不！"><b>活动说明：</b>报名价格须与商家实际销量价格同等并包邮，少数偏远地区可不包邮。商品市场价值在10元以下，信誉1钻以上，历史销量不！</dd></dl><div class="part-activity-bottom clearfix"><span><a target="_blank" href="<?php echo U('baojiu/add');?>" class="bdr3">立即报名 </a></span></div><div class="part-activity-date"><p>活动时间：<span>2015.10.01 - 2017.10.01</span></p></div></div><div class="part-activity-col left"><div class="special-title">19.9包邮专场报名</div><dl><dt><img src="__STATIC__/newpi/bao/images/shijiu.jpg" title="19.9包邮专场报名"></dt><dd title="报名价格须与商家实际销量价格同等并包邮，少数偏远地区可不包邮。商品市场价值在10元以上20元以下，信誉1钻以上，历史销量不限、给力商品优先审核排期！"><b>活动说明：</b>报名价格须与商家实际销量价格同等并包邮，少数偏远地区可不包邮。商品市场价值在10元以上20元以下，信誉1钻以上，历史销量不限、给力商品优先审核排期！</dd></dl><div class="part-activity-bottom clearfix"><span><a target="_blank" href="<?php echo U('baoshijiu/add');?>" class="bdr3">立即报名 </a></span></div><div class="part-activity-date"><p>活动时间：<span>2015.10.01 - 2017.10.01</span></p></div></div><div class="part-activity-col left" style="margin-right:18px;"><div class="special-title">其他合作意向</div><dl><dt><img src="__STATIC__/newpi/bao/images/other.jpg" title="其他合作意向"></dt><dd title="如果商家有其他合作意向，请通过以下联系方式与我们取得联系。"><b>活动说明：</b>如果商家有其他合作意向，请通过以下联系方式与我们取得联系。或右侧客服进行联系！</dd></dl><div class="part-activity-bottom clearfix"><span><a target="_blank" href="<?php echo U('help/read',array('id'=>3));?>" class="bdr3">立即报名 </a></span></div><div class="part-activity-date"><p>活动时间：<span></span></p></div><div class="hot_icon"><img src="__STATIC__/newpi/bao/images/hot_icon.png" alt=""></div></div><div style="clear:both"></div></div></div><div class="clear"></div></div><div class="foot"><div class="white_bg"><div class="foot-con"><div class="con-box-n clear"><div class="app-side-box fl"><p class="app-show"><img src="<?php echo C('ftx_site_weixin');?>"></p><p class="app-txt">扫描二维码打开</p></div><div class="con-left-info fl"><dl class="update"><dt>获取更新</dt><dd><a href="<?php echo C('ftx_header_html');?>" target="_blank" rel="nofollow"><i></i>手机访问</a></dd><dd><a href="<?php echo C('ftx_qzone_url');?>" target="_blank" rel="nofollow"><i></i>QQ空间</a></dd><dd><a href="<?php echo C('ftx_sina_url');?>" target="_blank" rel="nofollow"><i></i>新浪微博</a></dd><dd><a href="<?php echo C('ftx_tenxun_url');?>" target="_blank" rel="nofollow"><i></i>腾讯微博</a></dd></dl><dl class="cooperation"><dt>商务合作</dt><dd><a href="<?php echo U('bao/index');?>" target="_blank"><i></i>卖家免费报名</a></dd><dd><a href="<?php echo U('help/read',array('id'=>2));?>" target="_blank" rel="nofollow"><i></i>商务合作</a></dd></dl><dl class="cor-info"><dt>公司信息</dt><dd><a href="<?php echo U('help/read',array('id'=>2));?>" target="_blank" rel="nofollow"><i></i>广告合作</a></dd><dd><a href="<?php echo U('help/read',array('id'=>5));?>" target="_blank" rel="nofollow"><i></i>免责声明</a></dd></dl><dl class="help-info"><dt>帮助中心</dt><dd><a href="<?php echo U('help/read',array('id'=>6));?>" target="_blank" rel="nofollow"><i></i>常见问题</a></dd><dd><a href="<?php echo U('article/index');?>" target="_blank" rel="nofollow"><i></i>积分攻略</a></dd><dd><a href="<?php echo C('ftx_site_url');?>/sitemap.xml" target="_blank"><i></i>网站地图</a></dd></dl></div><div class="con-menu fr"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo C('ftx_qq');?>&amp;site=qq&amp;menu=yes" class="service-add fl" target="_blank"></a><span class="service-time fl"><p>周一至周六 </p><p>9:00-22:00 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></span></div></div><div class="links"><span>友情链接：</span><div class="links_list_box"><ul class="links_list"><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,0,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,10,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li><li><?php $tag_link_class = new linkTag;$data = $tag_link_class->lists(array('type'=>'lists','cache'=>'0','return'=>'data',)); if(is_array($data)): $i = 0; $__LIST__ = array_slice($data,20,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><a href="<?php echo ($val["url"]); ?>" target="_blank"><?php echo ($val["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?></li></ul></div></div><p class="ft-company"><?php echo C('ftx_site_name');?>&nbsp;&nbsp;<a href="http://www.miibeian.gov.cn" target="_blank"><?php echo C('ftx_site_icp');?></a>&#12288;&#12288;Copyright &copy; 2010 - 2016 <?php echo C('ftx_site_url');?> All Rights Reserved  <?php echo C('ftx_statistics_code');?></p></div></div></div><div id="J_sidebar" class="side_right"><div class="side-box"><ul class="side-oper"><li class="normal side-user"><a class="links" id="J_user" target="_blank" href="<?php echo U('user/index');?>"><i class="normal-icon i-user"></i></a><div id="side-login" class="tab-tips tab-login"><div class="user-box"><div class="pic"><img src="<?php echo avatar($visitor['id'], 64);?>"></div><p class="txt"></p></div><i class="close">×</i><div class="arr-icon">◆</div></div></li><li class="normal side-cart"><a class="links links-cart" id="J_cart" href="javascript:;"><i class="normal-icon i-cart"></i><em class="num cartnum"><?php echo getlike($visitor['id']);?></em></a><div class="tab-tips tab-tag"><div class="carttime"></div><div class="arr-icon">◆</div></div></li><li class="normal side-love"><a class="links" id="J_love" target="_blank" href="<?php echo U('user/like');?>"><i class="normal-icon i-love"></i></a><div class="tab-tips">我的收藏<div class="arr-icon">◆</div></div></li><li class="normal side-quan"><a class="links" id="J_quan" target="_blank" href="<?php echo U('user/gift');?>"><i class="normal-icon i-quan"></i></a><div class="tab-tips">我的礼品<div class="arr-icon">◆</div></div></li></ul><ul class="side-oper other"><li class="normal side-ad"><a class="links links_ad" href="#"  target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style-nav.jpg?v=swj423"></a><div class="tab-tips"><a href="#" target="_blank"><img src="http://s.juancdn.com/jpwebapp/images/pc-colour/style.png?v=swj423" width="130" height="248px;"></a></div></li><li class="normal side-complain"><a class="links" id="J_complain" target="_blank" href="<?php echo U('user/msg',array('do'=>'send'));?>"><i class="normal-icon i-complain"></i></a><div class="tab-tips">意见反馈<div class="arr-icon">◆</div></div></li><li class="normal side-code"><a class="links" id="J_code" href="javascript:;"><i class="normal-icon i-code"></i></a><div class="tab-tips"><div class="code-box"><p class="code"><img src="<?php echo C('ftx_site_weixin');?>" width="90px"></p><p class="txt">扫描下载二维码</p></div><div class="arr-icon">◆</div></div></li><li class="normal side-backtop"><a class="links" id="J_backtop" href="javascript:;"><i class="normal-icon i-backtop"></i></a><div class="tab-tips">返回顶部<div class="arr-icon">◆</div></div></li></ul></div></div><script src="/static/newpi/js/init.js" type="text/javascript"></script></if><script type="text/javascript">var FTXIAER = {
    root: "__ROOT__",
	site: "<?php echo C('ftx_site_url');?>",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?></script><?php $tag_load_class = new loadTag;$data = $tag_load_class->js(array('type'=>'js','href'=>'__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js','cache'=>'0','return'=>'data',));?><script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script><script src="__STATIC__/newpi/js/goodlist.js" type="text/javascript"></script><script type="text/javascript">	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script><script type="text/javascript" src="__STATIC__/newpi/js/pg-index.js" ></script><script type="text/javascript">(function(){
    //快捷登录
    if ($('a.nav_login').length) {
        $('a.nav_login').click(function (e) {
            e.preventDefault();
            ajaxLogin();
        });
    }
    //快捷注册
    if ($('a.nav_reg').length) {
        $('a.nav_reg').click(function (e) {
            e.preventDefault();
            ajaxRegister();
        });
    }

    // 轮播左侧公共滚动
    var noticeObj=$('#leftNoticeSlide');
    var noticeTimer;
    if(noticeObj.children('li').length>6){
        noticeTimer=setInterval(function(){
            noticeObj.animate({marginTop:"-35px"},500,function(){
                $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
            });
        },3000);
        noticeObj.on({
            'mouseenter':function(){
                clearInterval(noticeTimer);
            },
            'mouseleave ':function(){
                noticeTimer=setInterval(function(){
                    noticeObj.animate({marginTop:"-35px"},500,function(){
                        $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
                    });
                },3000);
            }
        })
    }
    


    var slideUl = $('#sellerSlide');
    var numLi = $('#sellerSlide li').length;
    var sNext = $('#sellerNext');
    var sPrev = $('#sellerPerv');
    var sPage = $('#sellerPage span');
    var curNum = 0;
    var timeOut;
    slideUl.css('width', numLi * 660);
    runTime();
    function slideRun(index) {
        slideUl.stop().animate({'left': -index * 660 + 'px'}, 500);
        sPage.eq(index).addClass('cur').siblings().removeClass('cur');
        return false;
    }
    function runTime() {
        if (timeOut)
            clearInterval(timeOut);
        timeOut = setInterval(function () {
            curNum++;
            if (curNum > numLi - 1) {
                curNum = 0;
            }
            slideRun(curNum);
        }, 6000);
    }
    $('#sellerPerv,#sellerNext,#sellerPage span,#sellerSlide').hover(function () {
        clearInterval(timeOut);
    }, function () {
        runTime();
    });
    sPage.click(function () {
        curNum = $(this).index();
        slideRun(curNum);
    })
    sNext.click(function () {
        curNum++;
        curNum = curNum < numLi ? curNum : 0;
        slideRun(curNum);
    });
    sPrev.click(function () {
        curNum--;
        curNum = curNum < 0 ? numLi - 1 : curNum;
        slideRun(curNum);
    });

    $('.banner-right-qqgroup').mouseover(function () {
        //arrow-down    arrow-right
        var display = $('.sell-qq-group').css("display");
        if (display == "none") {
            $('.sell-qq-group').show();
            $('#arrow-img').removeClass('arrow-right');
            $('#arrow-img').addClass('arrow-down');
        }
    });
    $('.banner-right-qqgroup').mouseout(function () {
        $('.sell-qq-group').hide();
        $('#arrow-img').removeClass('arrow-down');
        $('#arrow-img').addClass('arrow-right');
    });
    function getData() {
        myObj.jsForLogin();
    }

    // 卖家升级遮罩层JS功能
    var documentHeight = $(window).height();
    $(".seller-page-seller-shadow").height(documentHeight);

    // 关闭遮罩层
    // 调用popShadow函数弹出遮罩层


    function popShadow() {
        $(".part-activity-bottom span a").click(function () {
            $(".seller-page-seller-shadow").show();
            $(".seller-page-seller-content").show();
        })
        $(".seller-page--sc-close").click(function () {
            $(".seller-page-seller-shadow").hide();
            $(".seller-page-seller-content").hide();
        })
        $(window).resize(function () {
            var documentHeight = $(window).height();

            $(".seller-page-seller-shadow").height(documentHeight);

        });
    }


})()
</script><?php echo C('ftx_weibo_code'); echo C('ftx_tencent_code'); echo C('ftx_taojindian_html');?></body></html>