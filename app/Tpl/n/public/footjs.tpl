<script type="text/javascript" src="__STATIC__/jwap/js/mjp.min.js"></script>
<script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script>

<script type="text/javascript">
	$("img.lazy").lazyload({threshold:200,failure_limit:30});	
</script>

<script type="text/javascript" src="__STATIC__/jwap/js/swipeSlide.min.js"></script>
<script type="text/javascript" src="__STATIC__/jwap/js/jp.common.js"></script>
<script type="text/javascript">
            $(function(){
            function hideMenu() {
                setTimeout("window.scrollTo(0, 0)", 1);
            }

            $('.alert_black_bg .close').on('click', function(){
                $('.alert_black_bg').hide();
                $('#foot').height(120);
            });
            });
            $(".go-app .closed").on("click",function(){
                $(".go-app").hide();
                return false;
            })

</script>
{:C('ftx_taojindian_html')}