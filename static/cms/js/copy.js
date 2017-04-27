$(function () {
    $("#cnxh .cnxh_nav .left b").hover(function () {
        var data = $(this).attr("data");
        if (data == "1") {
            $("#cnxh .cnxh_nav .left b").eq(0).addClass("cur");
            $("#cnxh .cnxh_nav .left b").eq(1).removeClass("cur");
            $("#cnxh .cnxh_wrap").eq(0).addClass("current");
            $("#cnxh .cnxh_wrap").eq(1).removeClass("current");
        } else {
            $("#cnxh .cnxh_nav .left b").eq(1).addClass("cur");
            $("#cnxh .cnxh_nav .left b").eq(0).removeClass("cur");
            $("#cnxh .cnxh_wrap").eq(1).addClass("current");
            $("#cnxh .cnxh_wrap").eq(0).removeClass("current");
        }
    });

    var clip = null;
    clip = new ZeroClipboard.Client();
    clip.setHandCursor(true);
    clip.addEventListener('complete', function () {
        alert("复制成功");
    });
    clip.glue('d_clip_button');
    clip.setText(articleUrl);
});