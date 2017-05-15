<include file='public:nav'/>
<div  id="back_top"  class="slide-box" style="display:none">
<a href="{:U('user/like')}" class="bag-enter" title="我的收藏">
<img src="/static/jwap/images/bag-icon.png" alt="我的收藏"></a>
<a href="#" class="back-top" title="返回顶部">
<img src="/static/jwap/images/back-top.png" alt="返回顶部"></a>
</div>
<div id="foot">
    <div class="foot-nav">
        <a href="{:C('ftx_site_url')}"><img src="/static/jwap/images/phone.png">电脑版</a>
        <a href="{:C('ftx_header_html')}" class="joa_load_app"><img src="/static/jwap/images/client.png">客户端<img src="/static/jwap/images/tip.png" class="icon-tips"></a>
        <a href="{:C('ftx_header_html')}" class="_border"><img src="/static/jwap/images/home.png">返回首页</a>
    </div>
    <div class="foot-copyright"></div>
    <h2>copyright © {:C('ftx_site_name')}</h2>
</div>
<script type="text/javascript">
var FTXIAER = {
    root: "__ROOT__",
	site: "{:C('ftx_header_html')}",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<ftx:load type="js" href="__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/red/js/comment.js,__STATIC__/red/js/comm.js" />
<script type="text/javascript">
document.getElementById("back_top").style.display = "none";
window.onscroll = function () {
    if (document.documentElement.scrollTop + document.body.scrollTop > 100) {
        document.getElementById("back_top").style.display = "block";
    }
    else {
        document.getElementById("back_top").style.display = "none";
    }
}
</script>
