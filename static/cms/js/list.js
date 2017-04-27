$(function () {
    if ($(".fix_div").length > 0) {
        var top = $(".fix_parent").offset().top;
        var left = $(".fix_parent").offset().left;

        var ie = ietester();

        $(window).scroll(function () {
            var limit = $(".list").offset().top + $(".list").height() - $(".fix_div").height();
            if ($(window).scrollTop() >= limit) {
                $(".fix_div").css({ position: "absolute", top: limit, left: left });

            } else {
                if (top <= $(window).scrollTop()) {
                    if (ie <= 6) {
                        $(".fix_div").css({ position: "absolute", top: ($(window).scrollTop()), left: left });
                    } else {
                        $(".fix_div").css({ position: "fixed", top: 0, left: left });
                    }
                } else {
                    $(".fix_div").css({ position: "static", top: 0 });
                } 
            }
        });
    }
});
 