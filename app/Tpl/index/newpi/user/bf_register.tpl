<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />

<link rel="stylesheet" type="text/css" href="__STATIC__/tupian/register/reg.css">
</head>
<body>
<div class="main w1200">
<include file="public/header" />
</div>

	<p class="bt">请选择注册类型</p>

  <div class="login_main  wide">
   <div class="register_type">
    <div class="left">
     <img src="__STATIC__/tupian/register/tuiche.png" alt="我是买家，我要抢购折扣商品">
     <div class="content">
      <div class="c_top">
       <h1>我是买家，我要抢购折扣商品</h1>
       <p>全场最低1折起，优惠不断，精彩不断！</p>
      </div>
      <div class="c_bot">
        <p>请选择:</p><a href="{:U('user/register',array('login_type'=>'1'))}" title="买家注册" target="_self"><span class="button blb">买家注册</span></a>
      </div>
     </div>
    </div>
    <div class="right">
     <img src="__STATIC__/tupian/register/shangjia.png" alt="我是商家，我要快速打造爆款">
     <div class="content">
      <div class="c_top">
       <h1>我是商家，我要快速打造爆款</h1>
       <p>每天上W买家抢购，发布折扣商品快速打造爆款！</p>
      </div>
      <div class="c_bot">
        <p>请选择:</p><a href="{:U('user/register',array('login_type'=>'2'))}" title="商家注册" target="_self"><span class="button brb">商家注册</span></a>
      </div>
     </div>    
    </div>
   </div>
  </div>
</div> 
<include file="public/footer" />
</body>
</html>