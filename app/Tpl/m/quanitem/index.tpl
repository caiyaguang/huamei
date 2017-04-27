
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<style type="text/css">
        #qitkHost{
            background-color: bisque;
            position: absolute;
            top: 65%;
            left: 5%;
            font-size: 14px;
            width: 60px;
            height: 30px;
            height: 20px;
            padding: 10px 10px;
            background-color: #d4006f;
            color: white;
        }

        #qitGOUrl{
            background-color: bisque;
            position: absolute;

            top: 65%;
            font-size: 14px;
            left: 58%;
        }
        a{
            text-decoration: none;
        }

    </style>
  <script src="__STATIC__/jwap/js/quan.min.js"></script>


<script>

        $(function(){
            var tmpHeight=$(window).height();
            var tmpWidth=$(window).width();
            $("#mainFrame").height(tmpHeight);
            var tmpH=tmpHeight/2+'px';
            var tmpW=tmpWidth/2;
            $("#qitGOUrl").css('top',tmpH);
            $("#qitGOUrl").css("left",(tmpW+50)+'px');
            $("#qitkHost").css('top',tmpH);
            $("#qitkHost").css("left",(tmpW-150)+'px');
        });
    </script>
</head>
<body style="margin: 0;padding: 0">
<div id="qitkHost" onclick="history.go(-1);return false;"><span>返回列表</span></div>
<iframe id="mainFrame" name="mainFrame" scrolling="no" src="{$item.quanurl}" frameborder="0" style="padding: 0px; width: 100%; height: auto;"></iframe>
</iframe>
<div id="qitGOUrl"><a href="{:U('jump/index',array('id'=>$item['id']))}"  style="display: inline-block;padding: 10px;background-color: #d4006f;color: white;">去购买</a></div>
</html>