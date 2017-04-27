<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<css file="__STATIC__/css/admin/style.css" />
<script src="__STATIC__/js/admin/propeller.min.js"></script>
<!--[if lt IE 9]>
<script src="__STATIC__/js/admin/html5.js"></script>
<script type="text/javascript">
    function resizeIframe(obj) {
        var Iframe = document.getElementById(obj);
            if (Iframe){
                if (Iframe.contentDocument){//ff
                    Iframe.style.height = Iframe.contentDocument.body.scrollHeight +40+'px';
                }
                else if(Iframe.document && Iframe.document.body.scrollHeight){//ie
                Iframe.style.height = iframe.document.body.scrollHeight + 40 + 'px';
            }
        }
    }
</script>
<![endif]-->

<title>华美淘宝客程序管理员登陆</title>
</head>
<style type="text/css">
.tbk {
	color: #FC3;
}
</style>
<body class="login_body">
<div class="login_hd">
  <div class="login_hd_main"> <span class="login_logo"></span> <span class="login_slogan">最安全稳定的高端淘宝客程序</span>
     <div class="login_nav">
 <a href="http://www.138gzs.com/freehost" class="tbk"> 推荐淘宝客云虚拟主机</a>&nbsp;|&nbsp;
  <a href="http://bbs.138gzs.com"> 相关教程</a>&nbsp;|&nbsp;
   加入VIP群:631092573</a>
  </div>
</div>
<div class="login_wrap">
  <div class="login_box">
    <form action="{:U('index/login')}" method="post" >
      <div class="login_funbox">
        <input type="text" name="username" class="login_ipt" value="账号" onfocus="if (value =='账号'){value =''}" onblur="if (value ==''){value='账号'}">
        <input type="password" name="password" class="login_ipt" value="password" onfocus="if (value =='password'){value =''}" onblur="if (value ==''){value='password'}">
     </div>
   <div class="login_funbox">
    <a class="forgotpw" href="http://www.138gzs.com/372.html" target="_blank">忘记密码？</a>
     <a href="http://www.138gzs.com/freehost" class="tbk"> 推荐淘宝客云虚拟主机</a>&nbsp;&nbsp;
    
   </div>
   <div class="login_funbox">
   <button type="submit" class="loginbtn">登陆</button>
   </div>
  </form>
 </div>
  <div id="outside"></div>
  <script type='text/javascript' id='preload-script'>
    var console = console || {log: function(){}, info: function(){} };
    var i = 0;
    var loadedCounter = 0;
    var preloadImgs = [
      '__STATIC__/css/admin/bgimg/boy_phone_500.png',
	  '__STATIC__/css/admin/bgimg/propeller_27.png',
    ];
    for (var i = preloadImgs.length - 1; i >= 0; i--) {
      src = preloadImgs[i];
      img = new Image();
      img.src= src;
      loadedOrError = function(){
        loadedCounter += 1
        if(loadedCounter === preloadImgs.length){
          takeOff()
        }
      }
      img.onload = loadedOrError
      img.onerror = loadedOrError
    };
  </script>
  <script type='text/fir-template' id='cones'>
      <section class="first">
          <div class="boy">
            <img src="__STATIC__/css/admin/bgimg/propeller_27.png" class="propeller">
            <img src="__STATIC__/css/admin/bgimg/boy_phone_500.png">
          </div>
      </section>
  </script>
  <div class="footer">
    <div class="footer_main"> 华美淘宝客V 7.0版权所有&nbsp;©&nbsp;2011-2017 </div>
  </div>
</div>
</body>
</html>