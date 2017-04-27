<div id="header">
  <div class="area">
    <h1>
      <a href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_logo')}" height="45"></a>      
    </h1>
	 <notempty name="visitor">
	<span id="bmlogin">
	<img src="{:avatar($info['id'], 100)}" width="30" height="30" border="0"/>您好!<i>{$visitor.username}</i><b class="control"><a href="{:U('user/index')}" target="_blank">账号管理</a></b>[<a href="{:U('user/logout')}">退出</a>]</span>
	<else/> 
    <span id="bmlogin">
	<a class="log" href="{:U('user/login')}"></a>
	<a target="_blank" href="{:U('user/register')}" class="reg"></a></span>
	</notempty> 
	<div class="hidden"></div>
	<div class="hidden"></div>
    <div class="hidden"></div>
  </div>
</div>
<div id="nav">
  <div class="head_nav area">
    <span>    
       <div class="enroll dropdown">
        <a href="#">全部分类</a>
        <em></em>
        <ul class="dropdown-menu">
		<?php  $cdi=0; ?>
<volist name="cate_data" id="bcate">
<if condition="($bcate['pid'] eq 0) AND ($cdi lt 100)">
<?php $cdi++; ?>
<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}" target="_blank">{$bcate.name}</a></li>	
</if>
</volist>          
      </ul>
      </div>	
	  <a <if condition="$nav_currr eq 'baoming'">class="nav-active"</if> href="{:U('bao/index')}">活动报名</a>
	  <a <if condition="$nav_currr eq 'my'">class="nav-active"</if> href="{:U('baoming/my')}">已报名商品</a>
	  <a <if condition="$nav_currr eq 'yaoqiu'">class="nav-active"</if> href="{:U('bao/yaoqiu')}">活动要求</a>
	  <a <if condition="$nav_currr eq 'shenhe'">class="nav-active"</if> href="{:U('bao/shenhe')}">审核说明</a>  
	  <a href="{:U('help/index')}" target="_blank">帮助中心</a>      
      <a href="{:U('article/index')}" target="_blank">穿衣搭配</a>
    </span>
  </div>
</div>

<script type="text/javascript">
  function ScrollImgLeft(){
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
</script>
<div id="contentA">
  <div class="blockA area">
    <dl>
      <dt>效果明显</dt>
      <dd>
        组织活动按效果付费<br>
        流量获取必选渠道<br>
        最优质的购物流量<br>
      </dd>
    </dl>
    <dl>
      <dt>多种形式</dt>
      <dd>
        暗号团 9块9包邮   <br>
        20元封顶 独家折扣  <br>
        精彩专题活动  <br>
        超强大促 全场9块9包邮
      </dd>
    </dl>
    <dl>
      <dt>多渠道展示</dt>
      <dd>
        {:C('ftx_site_name')}主站首页推荐 <br>
       {:C('ftx_site_name')}淘宝/QQ应用推荐 <br>
        {:C('ftx_site_name')}官方微博推荐 覆盖60多万粉丝 <br>
       {:C('ftx_site_name')}手机客户端及用户的传播和扩散
      </dd>
    </dl>
  </div>
  <div class="blockB area">
    <em></em>
    <div class="scroll_div" id="scroll_div">
      <div id="scroll_begin"><b>最新通知：</b><a>{:C('ftx_qq_code')}</a></div>
      <div id="scroll_end"></div>
    </div>
  </div>
  <div class="blockC area">
    <span>报名流程</span>
    <em>1</em>发布活动<i></i>
    <em>2</em>活动审核<i></i>
    <em>3</em>样品审核<i></i>
    <em>4</em>活动上线
    <em></em>
    <a href="#" class="xiangx" target="_blank">详细流程&gt;&gt;</a>
  </div>
  <dl class="blockE area">
    <dt>规则协议</dt>
    <dd>
      <span><a href="#" target="_blank">·{:C('ftx_site_name')}商家平台活动报名服务协议</a></span>
      <span><a href="#" target="_blank">·{:C('ftx_site_name')}商家保证金协议</a></span>
      <span><a href="#" target="_blank">·{:C('ftx_site_name')}商家违规处罚条例</a></span>
    </dd>
  </dl>
</div>