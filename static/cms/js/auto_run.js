                   $(function () {
                       
                       var now_index2 = 0;
                       var inv_auto_run2 = null;
                       var timeout2 = 5000;
                       var total_index2 = $(".cmd-list .rank-sub-nav a").length;
                       $(".cmd-list .rank-sub-nav a").hover(function () {
                           var index = $(this).attr("index");
                           $(".cmd-list .rank_art:eq(" + now_index2 + ")").hide();
                           $(".cmd-list .rank_art:eq(" + index + ")").show();
                           $(".cmd-list .rank-sub-nav a").removeClass("cur");
                           $(this).addClass("cur");
                           now_index2 = index;
                           clearInterval(inv_auto_run2);
                       }, function () {
                           auto_run2();
                       });
                       function auto_run2() {
                           setTimeout(function () {
                               auto_run_func2();
                           }, timeout2);
                       }
                       function auto_run_func2() {
                           clearInterval(inv_auto_run2);
                           inv_auto_run2 = setInterval(function () {
                               $(".cmd-list .rank_art:eq(" + now_index2 + ")").hide();
                               $(".cmd-list .rank-sub-nav a:eq(" + now_index2 + ")").removeClass("cur");
                               now_index2++;
                               if (now_index2 >= total_index2)
                                   now_index2 = 0;
                               $(".cmd-list .rank-sub-nav a:eq(" + now_index2 + ")").addClass("cur");
                               $(".cmd-list .rank_art:eq(" + now_index2 + ")").show();

                              
                           }, timeout2);
                       }
                       auto_run2();
                   });