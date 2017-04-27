
var lh = 141;
var lw = 123;
var speed = 200;
var num = 7;
var jiepai_pointer = 0;
var now_jiepai_index = "1";


var meifa_pointer = 0;
var now_meifa_index = "1";
$(function () {

    init_jiepai_slider($("#jiepai_slider1"), $("#jiepai_scroll_img"));
    $("#jiepai_sub li").hover(function () {
        var data = $(this).attr("data");
        if (now_jiepai_index == data)
            return;
        now_jiepai_index = data;
        $("#jiepai_sub li.cur .xsj").remove();
        $("#jiepai_sub li.cur").removeClass("cur");
        $("#jiepai_slider1,#jiepai_slider2,#jiepai_slider3,#jiepai_slider4,#jiepai_slider5,#jiepai_slider6,#jiepai_slider7,#jiepai_slider8,#jiepai_slider9,#jiepai_slider10,#jiepai_slider11").hide();
        $("#jiepai_slider" + data).show();
        jiepai_pointer = 0;
        $("#jiepai_scroll_img .scroll_left a").hide();
        $("#jiepai_scroll_img .scroll_right a").show();
        $("#jiepai_slider1,#jiepai_slider2,#jiepai_slider3,#jiepai_slider4,#jiepai_slider5,#jiepai_slider6,#jiepai_slider7,#jiepai_slider8,#jiepai_slider9,#jiepai_slider10,#jiepai_slider11").find("ul").css("margin-left", 0);
        init_jiepai_slider($("#jiepai_slider" + data));
        $(this).addClass("cur").append('<i class="xsj"></i>');
    });

    init_meifa_slider($("#meifa_slider1"), $("#meifa_scroll_img"));
    $("#meifa_sub li").hover(function () {
        var data = $(this).attr("data");
        if (now_meifa_index == data)
            return;
        now_meifa_index = data;
        $("#meifa_sub li.cur .xsj").remove();
        $("#meifa_sub li.cur").removeClass("cur");
        $("#meifa_slider1,#meifa_slider2,#meifa_slider3,#meifa_slider4").hide();
        $("#meifa_slider" + data).show();
        meifa_pointer = 0;
        $("#meifa_scroll_img .scroll_left a").hide();
        $("#meifa_scroll_img .scroll_right a").show();
        $("#meifa_slider1,#meifa_slider2,#meifa_slider3,#meifa_slider4").find("ul").css("margin-left", 0);
        init_jiepai_slider($("#meifa_slider" + data));
        $(this).addClass("cur").append('<i class="xsj"></i>');
    });
});

function init_jiepai_slider(obj, container) {

    var count = $("ul li", obj).length;

    obj.attr("count", count);
    var sp_count = parseInt(count / num);
    if (count % num == 0)
        sp_count -= 1;

    $("ul", obj).stop();
    $("ul", obj).css("width", count * lw + 10 + "px");
    $("ul", obj).css("height", lh + "px");

    if (jiepai_pointer >= sp_count || sp_count == 0) {
        $(".scroll_right a", container).hide();
    }
    if (jiepai_pointer <= 0) {
        $(".scroll_left a", container).hide();
    }

    $(".scroll_left a", container).unbind("click").click(function () {
        jiepai_pointer--;
        $("ul", obj).animate({ marginLeft: -1 * jiepai_pointer * lw * num + "px" }, speed);
        if (jiepai_pointer < sp_count) {
            $(".scroll_right a", container).show();
        }
        if (jiepai_pointer <= 0) {
            $(".scroll_left a", container).hide();
            jiepai_pointer = 0;
        }
    });
    $(".scroll_right a", container).unbind("click").click(function () {
        jiepai_pointer++;
        $("ul", obj).animate({ marginLeft: -1 * jiepai_pointer * lw * num + "px" }, speed);
        if (jiepai_pointer > 0 && sp_count > 0) {
            $(".scroll_left a", container).show();
        }
        if (jiepai_pointer >= sp_count) {
            $(".scroll_right a", container).hide();
            jiepai_pointer = sp_count;
        }
    });
}



function init_meifa_slider(obj, container) {

    var count = $("ul li", obj).length;
    obj.attr("count", count);
    var sp_count = parseInt(count / num);
    if (count % num == 0)
        sp_count -= 1;

    $("ul", obj).stop();
    $("ul", obj).css("width", count * lw + 10 + "px");
    $("ul", obj).css("height", lh + "px");

    if (meifa_pointer >= sp_count || sp_count == 0) {
        $(".scroll_right a", container).hide();
    }
    if (meifa_pointer <= 0) {
        $(".scroll_left a", container).hide();
    }

    $(".scroll_left a", container).unbind("click").click(function () {
        meifa_pointer--;

        $("ul", obj).animate({ marginLeft: -1 * meifa_pointer * lw * num + "px" }, speed);
        if (meifa_pointer < sp_count) {
            $(".scroll_right a", container).show();
        }
        if (meifa_pointer <= 0) {
            $(".scroll_left a", container).hide();
            meifa_pointer = 0;
        }
    });
    $(".scroll_right a", container).unbind("click").click(function () {
        meifa_pointer++;
        $("ul", obj).animate({ marginLeft: -1 * meifa_pointer * lw * num + "px" }, speed);
        if (meifa_pointer > 0 && sp_count > 0) {
            $(".scroll_left a", container).show();
        }
        if (meifa_pointer >= sp_count) {
            $(".scroll_right a", container).hide();
            meifa_pointer = sp_count;
        }
    });
}