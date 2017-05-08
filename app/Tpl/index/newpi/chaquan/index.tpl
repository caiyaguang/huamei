<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>华美淘宝客卷皮折扣 - 优惠券在线查询系统</title>
<meta name="keywords" content="{$page_seo.keywords}" >
<meta name="description" content="{$page_seo.description}" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"  />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>

<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />




<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/chaquan.css" />
<script type="text/javascript" src=
<script src="__STATIC__/js/device.js"></script>
<script type="text/javascript">
	SITEURL="{:C('ftx_site_url')}";
	CURURL="{:C('ftx_site_url')}";
	WEBNICK="{:C('ftx_site_name')}";
	URL_COOKIE=0;
</script>
<if condition="C('ftx_site_zidong') eq '1'">
<script type="text/javascript">
if(device.mobile()){
    window.location = "{:C('ftx_header_html')}";
}
</script>
</if>
</head>
<body>
<include file="public:top" />

<div class="header">
    <div class="area">
        <div class="logo logo1">
            <div class="fl"><a class="juan-logo fl" href="{:C('ftx_site_url')}" title="{:C('ftx_site_name')}"><img src="{:C('ftx_site_logo')}"></a></div>            
        </div>
        <div class="q-hd">
        <div class="q-search">
      <form action="{:C('ftx_site_url')}" method="get">
        <div class="q-search-box">          
		  <input type="hidden" name="m" value="chaquan">
	      <input type="hidden" name="a" value="index">
          <input type="text" name="k" autocomplete="off" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="复制淘宝或天猫商品地址查询优惠券"  <notempty name="k">value="{$k}"<else/>value="复制淘宝或天猫商品地址查询优惠券"</notempty> />
        </div>
        <button type="submit">搜 索</button>
      </form>
    </div> 
    
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



<body>    
<div class="q-wrap">    
 
  <notempty name="item['quan']">
  <div class="q-result q-result-exist">
    <div class="q-ret-img">
      <a href="{$item.quan_url}" title="{$item.title}" target="_blank"><img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" width="220" height="220"></a>
    </div>             
    <dl class="q-ret-meta">
      <dt><a href="{$item.quan_url}" title="{$item.title}" target="_blank">{$item.title}</a></dt>
      <dd class="q-meta-1"><del>¥{$item.price}</del></dd>
              <dd class="q-meta-2">券后价 <strong>¥      {$item['coupon_price']}      </strong></dd>
      <dd class="q-meta-3">
               <span class="q-m3-1"></span>截止：{$item['endtime']}
        <span class="q-m3-2"></span> 已售{$item.volume}件
        <span class="q-m3-3"></span> {$item.nick}      </dd>
    </dl>
       <ul class="q-ret-ticket q-ticket-1">
        <li>
        <a href="{$item.quan_url}" title="" target="_blank" class="q-item-btn">
          <strong><sup>¥</sup>{$item.quan}</strong>
          <p>满{$item.mprice}减{$item.quan}</p>
        </a>
      </li>
      </ul>
    <!-- 20161103 @add -->
    <div class="q-qrcode">
	  <img src="{:C('ftx_site_weixin')}" width="146" height="146"/>      
      <p>打开手机扫一扫<br>手机抢券更方便</p>
    </div>
  </div>
  <else/>
    <notempty name="k">
	<div class="q-result q-result-empty">
    <img src="__STATIC__/newpi/images/e.png" alt="">
    <p>抱歉，该商品没有找到相关优惠券</p>
    <p>可以直接点击下方链接购买或者换个宝贝再试试吧。</p>
    </div>
	<div class="q-result q-result-exist">
    <div class="q-ret-img">
	<notempty name="item['click_url']">
	<a href="{:U('jump/index',array('id'=>$item['num_iid']))}" title="{$item.title}" target="_blank">
	<else/>
	<a isconvert="1" biz-itemid="{$item.num_iid}" title="{$item.title}" target="_blank">
	</notempty>
    <img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" width="220" height="220"></a>
    </div>             
    <dl class="q-ret-meta">
      <dt><notempty name="item['click_url']">
	<a href="{:U('jump/index',array('id'=>$item['num_iid']))}" title="{$item.title}" target="_blank">
	<else/>
	<a isconvert="1" biz-itemid="{$item.num_iid}" title="{$item.title}" target="_blank">
	</notempty>{$item.title}</a></dt>
      <dd class="q-meta-1">原价 <del>¥{$item.price}</del></dd>
              <dd class="q-meta-2">折扣价 <strong>¥      {$item['coupon_price']}      </strong></dd>
      <dd class="q-meta-3">     
        <span class="q-m3-1"></span>库存{$item['quantity']}件	  
        <span class="q-m3-2"></span> 已售{$item.volume}件
        <span class="q-m3-3"></span> {$item.nick}      </dd>
    </dl>
    <ul class="q-ret-ticket q-ticket-1">
    <li>
    <notempty name="item['click_url']">
	<a href="{:U('jump/index',array('id'=>$item['num_iid']))}" title="{$item.title}" target="_blank" class="go_btn fl buy">
	<else/>
	<a isconvert="1" biz-itemid="{$item.num_iid}" title="{$item.title}" target="_blank" class="go_btn fl buy">
	</notempty>去{$item.type}抢购>></a>
    </li>
    </ul>    
    <div class="q-qrcode">
	  <img src="{:C('ftx_site_weixin')}" width="146" height="146"/>      
      <p>打开手机扫一扫<br>手机抢券更方便</p>
    </div>
  </div>    
	<else/>
	<div class="q-result q-result-empty">
    <img src="__STATIC__/newpi/images/e.png" alt="">
    <p>在上方搜索框中输入淘宝或天猫产品链接</p>
    <p>然后点击搜索按钮即可查询该产品全部优惠券</p>
    </div>
    </notempty>
   </notempty>
  <notempty name="item_list[0]['title']">
  <div class="q-ticket-more">
    <ul class="clearfix">
	 <volist name="item_list" id="val">
	 <notempty name="val['quan']">
           <li>
          <a href="{$val.quan_url}" title="" target="_blank" class="q-item-btn">
          <strong><sup>¥</sup>{$val.quan}</strong>
          <p>满{$val.mprice}减{$val.quan}</p>
        </a>
      </li>
	  </notempty>
	  </volist>             
      </ul>
  </div>  
  </notempty>

    <div class="q-ct clearfix" id="q-cter">
      <div class="q-ct-left">
	  <volist name="cate_list" id="bcate">	  	  
	  <dl <if condition="$bcate['ids']%2== '0'">class="fr"</if>>	  
      <dt>{$bcate.name} ({$bcate.id|itemcount})</dt>
      <dd>
      <ul class="clearfix len-8">
	  <ftx:item type="qlists" num="9" cid="$bcate['id']">
      <volist name="data" id="val">	  
        <li>
          <a href="{:U('quan/jump',array('id'=>$val['num_iid']))}" title="{$val.title}" target="_blank">
            <img src="{:attach(get_thumb($val['pic_url'], '_b'),'item')}" width="150" height="150">
          </a>
          <span class="q-ct-tri">{$val.quan}元券</span>
          <a class="q-ct-btn" href="{:U('quan/jump',array('id'=>$val['num_iid']))}" title="满{$val.mprice}元减{$val.quan}元" target="_blank">
            <strong><sup>¥</sup>{$val.quan}</strong>
            <p>满{$val.mprice}元减{$val.quan}元</p>
          </a>
        </li>
		
  </volist>  
  </ftx:item>
  </ul>
  </dd>
  </dl>  
  </volist>
  </div>      
    </div> 
  </div>
</div>
<include file="public:footer" />
</body>
</html>