<?php

function p($arr){
    dump($arr);
    exit;
}
 
function objtoarr($obj){
    $ret = array();
    foreach($obj as $key =>$value){
        if(gettype($value) == 'array' || gettype($value) == 'object'){
            $ret[$key] = objtoarr($value);
        }
        else{
            $ret[$key] = $value;
        }
    }
    return $ret;
}

function lefttime($second){
    $times = '';
    $day = floor($second/(3600*24));
    $second = $second%(3600*24);//除去整天之后剩余的时间
    $hour = floor($second/3600);
    $second = $second-$hour*3600;//除去整小时之后剩余的时间
    $minute = floor($second/60);
    $second = fmod(floatval($second),60);//除去整分钟之后剩余的时间
    if($day){
        $times = $day.'天';
    }
    if($hour){
        $times.=$hour.'小时';
    }
    if($minute){
        $times.=$minute.'分';
    }
    if($second){
        $times.=$second.'秒';
    }
    //返回字符串
    return $times;
}

function fftime($time){
    $tomorrow = strtotime(date('Y-m-d',strtotime("+1 day")));
    if($tomorrow > $time){
        return '今日<i>'.date('H时i分',$time).'</i>开始';
    }else{
        $lefttime = $time - $tomorrow;
        if($lefttime < 86400){
            return '明日<i>'.date('H时i分',$time).'</i>开始';
        }else{
            return '<i>'.date('m月d日 H点i分',$time).'</i>开始';
        }
    }
}

//秒数转换时间
function changeTimeType($seconds){
    if ($seconds>3600){
        $hours = intval($seconds/3600);
        $minutes = $seconds600;
        $time = $hours."时".gmstrftime('%M分%S秒', $minutes);
    }else{
        $time = gmstrftime('%H时%M分%S秒', $seconds);
    }
    return $time;
}



function addslashes_deep($value) {
    $value = is_array($value) ? array_map('addslashes_deep', $value) : addslashes($value);
    return $value;
}

function stripslashes_deep($value) {
    if (is_array($value)) {
        $value = array_map('stripslashes_deep', $value);
    } elseif (is_object($value)) {
        $vars = get_object_vars($value);
        foreach ($vars as $key => $data) {
            $value->{$key} = stripslashes_deep($data);
        }
    } else {
        $value = stripslashes($value);
    }

    return $value;
}

function filter_default(&$value){
    $value = htmlspecialchars($value);
}

function Newiconv($_input_charset="GBK",$_output_charset="UTF-8",$input ) {
    $output = "";
    if(!isset($_output_charset) )$_output_charset = $this->parameter['_input_charset '];
    if($_input_charset == $_output_charset || $input ==null) { $output = $input;
    }
    elseif (function_exists("m\x62_\x63\x6fn\x76\145\x72\164_\145\x6e\x63\x6f\x64\x69\x6e\147")){
        $output = mb_convert_encoding($input,$_output_charset,$_input_charset);
    } elseif(function_exists("\x69\x63o\156\x76")) {
        $output = iconv($_input_charset,$_output_charset,$input);
        } 
        else die("对不起，你的服务器系统无法进行字符转码.请联系空间商。");
        return $output; 
}

function newicon($time){
    $date = '';
    if (date('Y-m-d') == date('Y-m-d',$time)){
        $date = '<span class="new-icon">新品</span>';
    }
    return $date;
}

function wapnewicon($time){
    $date = '';
    if (date('Y-m-d') == date('Y-m-d',$time)){
        $date = '<span class="wapnewicon">新品</span>';
    }
    return $date;
}


function todaytime() {
    return mktime(0, 0, 0, date('m'), date('d'), date('Y'));
}

function get_word($html,$star,$end){
    $pat = '/'.$star.'(.*?)'.$end.'/s';
    if(!preg_match_all($pat, $html, $mat)) {                
    }else{
        $wd= $mat[1][0];
    }
    return $wd;
}

function getlike($uid) {
    $itemlike = D('items_like')->where(array('uid' => $uid))->count();
    return $itemlike;
}
/**
 * 友好时间
 */
function frienddate($time) {
    $rtime = date("m-d H:i",$time);
    $htime = date("H:i",$time);
    $timetime = time() - $time;

    if ($timetime < 60) {
       $str = '刚刚';
    }
    else if ($timetime < 60 * 60) {
       $min = floor($timetime/60);
       $str = $min.'分钟前';
    }
    else if ($timetime < 60 * 60 * 24) {
       $h = floor($timetime/(60*60));
       $str = $h.'小时前 ';
    }
    else if ($timetime < 60 * 60 * 24 * 3) {
       $d = floor($timetime/(60*60*24));
       if($d==1)
       $str = '昨天 '.$htime;
    else
       $str = '前天 '.$htime;
    }
    else {
       $str = $rtime;
    }
    return $str;
}


function fdate($time) {
    if (!$time)
        return false;
    $fdate = '';
    $d = time() - intval($time);
    $ld = $time - mktime(0, 0, 0, 0, 0, date('Y')); //年
    $md = $time - mktime(0, 0, 0, date('m'), 0, date('Y')); //月
    $byd = $time - mktime(0, 0, 0, date('m'), date('d') - 2, date('Y')); //前天
    $yd = $time - mktime(0, 0, 0, date('m'), date('d') - 1, date('Y')); //昨天
    $dd = $time - mktime(0, 0, 0, date('m'), date('d'), date('Y')); //今天
    $td = $time - mktime(0, 0, 0, date('m'), date('d') + 1, date('Y')); //明天
    $atd = $time - mktime(0, 0, 0, date('m'), date('d') + 2, date('Y')); //后天
    if ($d == 0) {
        $fdate = '刚刚';
    } else {
        switch ($d) {
            case $d < $atd:
                $fdate = date('Y年m月d日', $time);
                break;
            case $d < $td:
                $fdate = '后天' . date('H:i', $time);
                break;
            case $d < 0:
                $fdate = '明天' . date('H:i', $time);
                break;
            case $d < 60:
                $fdate = $d . '秒前';
                break;
            case $d < 3600:
                $fdate = floor($d / 60) . '分钟前';
                break;
            case $d < $dd:
                $fdate = floor($d / 3600) . '小时前';
                break;
            case $d < $yd:
                $fdate = '昨天' . date('H:i', $time);
                break;
            case $d < $byd:
                $fdate = '前天' . date('H:i', $time);
                break;
            case $d < $md:
                $fdate = date('m月d日 H:i', $time);
                break;
            case $d < $ld:
                $fdate = date('m月d日', $time);
                break;
            default:
                $fdate = date('Y年m月d日', $time);
                break;
        }
    }
    return $fdate;
}

function utf_substr($str, $len) {
    for ($i = 0; $i < $len; $i++) {
        $temp_str = substr($str, 0, 1);
        if (ord($temp_str) > 127) {
            $i++;
            if ($i < $len) {
                $new_str[] = substr($str, 0, 3);
                $str = substr($str, 3);
            }
        } else {
            $new_str[] = substr($str, 0, 1);
            $str = substr($str, 1);
        }
    }
    if(strlen($str) == strlen($new_str)){
    return join($new_str);
    }else{
    return join($new_str).'...';
    }
}
 
/**
 * 获取用户头像
 */
function avatar($uid, $size) {
    $avatar_size = explode(',', C('ftx_avatar_size'));
    $size = in_array($size, $avatar_size) ? $size : '100';
    $avatar_dir = avatar_dir($uid);
    $avatar_file = $avatar_dir . md5($uid) . "_{$size}.jpg";
    if (!is_file(C('ftx_attach_path') . 'avatar/' . $avatar_file)) {
        $avatar_file = "default_{$size}.jpg";
    }
    return __ROOT__ . '/' . C('ftx_attach_path') . 'avatar/' . $avatar_file;
}

function avatar_dir($uid) {
    $uid = abs(intval($uid));
    $suid = sprintf("%09d", $uid);
    $dir1 = substr($suid, 0, 3);
    $dir2 = substr($suid, 3, 2);
    $dir3 = substr($suid, 5, 2);
    return $dir1 . '/' . $dir2 . '/' . $dir3 . '/';
}


function http( $url, $ua = "" ){
    $opts = array(
        "http" => array(
            "header" => "USER-AGENT: ".$ua)
    );
    $context = stream_context_create( $opts );
    $html = @file_get_contents( $url, FALSE, $context );
    if(!$html){
        $html = @file_get_contents( $url, FALSE, $context );
        if(!$html){
            $html = @file_get_contents( $url, FALSE, $context);
        }
    }
    for($i=0; $i < 10; $i++ ){
        if(!($html=== FALSE )){
            break;
        }
        $html = @file_get_contents( $url, FALSE, $context );
    }
    return $html;
}

function utf8( $string, $code = "" ){
    $code = @mb_detect_encoding($string,array("UTF-8", "GBK"));
    return mb_convert_encoding( $string, "UTF-8", $code );
}

function attach($attach, $type) {
    if (false === strpos($attach, 'http://')) {
        //本地附件
        return __ROOT__ . '/' . C('ftx_attach_path') . $type . '/' . $attach;
        //远程附件
        //todo...
    } else {
        //URL链接
        return $attach;
    }
}
function get_id($url) {
        $id = 0;
        $parse = parse_url($url);
        if (isset($parse['query'])) {
            parse_str($parse['query'], $params);
            if (isset($params['id'])) {
                $id = $params['id'];
            } elseif (isset($params['item_id'])) {
                $id = $params['item_id'];
            } elseif (isset($params['default_item_id'])) {
                $id = $params['default_item_id'];
            } elseif (isset($params['amp;id'])) {
                $id = $params['amp;id'];
            } elseif (isset($params['amp;item_id'])) {
                $id = $params['amp;item_id'];
            } elseif (isset($params['amp;default_item_id'])) {
                $id = $params['amp;default_item_id'];
            }
        }
        return $id;
    }
/*
 * 获取缩略图
 */
function get_thumb($img, $suffix = '_thumb') {
    if (false === strpos($img, 'http://')) {
        $ext = array_pop(explode('.', $img));
        $thumb = $img;
    } else {
        if (false !== strpos($img, 'taobaocdn.com') || false !== strpos($img, 'taobao.com') || false !== strpos($img, 'alicdn.com')|| false !== strpos($img, 'tbcdn.cn')) {
            //淘宝图片 _s _m _b
            switch ($suffix) {
                case '_s':
                    $thumb = $img . '_100x100.jpg';
                    break;
                case '_g':
                    $thumb = $img . '_150x150.jpg';
                    break;
                case '_m':
                    $thumb = $img . '_240x240.jpg';
                    break;
                case '_b':
                    $thumb = $img . '_310x310.jpg';
                    break;
                case '_a':
                    $thumb = $img . '_320x320.jpg';
                    break;
                case '_t':
                    $thumb = $img . '_350x350.jpg';
                    break;  
                case '_p':
                    $thumb = $img . '_200x200.jpg';
                    break;  
            }
        }else{
            $thumb = $img;
        }
    }
    return $thumb;
}



/**
 * 将数组键名变成大写或小写
 * @param array $arr 数组
 * @param int $type 转换方式 1大写   0小写
 * @return array
 */
function array_change_key_case_d($arr, $type = 0)
{
    $function = $type ? 'strtoupper' : 'strtolower';
    $newArr = array(); //格式化后的数组
    if (!is_array($arr) || empty($arr))
        return $newArr;
    foreach ($arr as $k => $v) {
        $k = $function($k);
        if (is_array($v)) {
            $newArr[$k] = array_change_key_case_d($v, $type);
        } else {
            $newArr[$k] = $v;
        }
    }
    return $newArr;
}
/**
 * 对象转换成数组
 */
function object_to_array($obj) {
    $_arr = is_object($obj) ? get_object_vars($obj) : $obj;
    foreach ($_arr as $key => $val) {
        $val = (is_array($val) || is_object($val)) ? object_to_array($val) : $val;
        $arr[$key] = $val;
    }
    return $arr;
}


function is_email($user_email){
    $chars = "/^([a-z0-9+_]|\\-|\\.)+@(([a-z0-9_]|\\-)+\\.)+[a-z]{2,6}\$/i";
    if (strpos($user_email, '@') !== false && strpos($user_email, '.') !== false){
        if (preg_match($chars, $user_email)){
            return true;
        }else{
            return false;
        }
    }else{
        return false;
    }
}


/**
 * ID 字母 转换
 */
function id_num($in,$to_num = false,$pad_up = false,$passKey = null)  {
    if(!function_exists('bcpow')) {
            return $in;
    }
        $index = 'abcdefghijklmnopqrstuvwxyz0123456789';
        if ($passKey !== null) {
            for ($n = 0;$n<strlen($index);$n++) {
                $i[] = substr( $index,$n ,1);
            }
            $passhash = hash('sha256',$passKey);
            $passhash = (strlen($passhash) <strlen($index))?hash('sha512',$passKey) : $passhash;
            for ($n=0;$n <strlen($index);$n++) {
                $p[] =  substr($passhash,$n ,1);
            }
            array_multisort($p,SORT_DESC,$i);
            $index = implode($i);
        }
        $base  = strlen($index);
        if ($to_num) {
            $in  = strrev($in);
            $out = 0;
            $len = strlen($in) -1;
            for ($t = 0;$t <= $len;$t++) {
                $bcpow = bcpow($base,$len -$t);
                $out   = $out +strpos($index,substr($in,$t,1)) * $bcpow;
            }
            if (is_numeric($pad_up)) {
                $pad_up--;
                if ($pad_up >0) {
                    $out -= pow($base,$pad_up);
                }
            }
            $out = sprintf('%F',$out);
            $out = substr($out,0,strpos($out,'.'));
        }else {
            if (is_numeric($pad_up)) {
                $pad_up--;
                if ($pad_up >0) {
                    $in += pow($base,$pad_up);
                }
            }
            $out = '';
            for ($t = floor(log($in,$base));$t >= 0;$t--) {
                $bcp = bcpow($base,$t);
                $a   = floor($in / $bcp) %$base;
                $out = $out .substr($index,$a,1);
                $in  = $in -($a * $bcp);
            }
            $out = strrev($out);
        }
        return $out;
}
function getTableValue($id,$wherename,$Table,$Field){
    $result = M($Table)->where("$wherename=$id")->getField($Field);
    if($result){
    return $result;
    }else{
    return '-';
    }
}
function execcurl($url,$ispost=false,$data='',$in='utf8',$out='utf8',$cookie='')
{
    $fn = curl_init();
    curl_setopt($fn, CURLOPT_URL, $url);
    curl_setopt($fn, CURLOPT_TIMEOUT, 30);
    curl_setopt($fn, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($fn, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
    curl_setopt($fn, CURLOPT_REFERER, $url);
    curl_setopt($fn, CURLOPT_HEADER, 0);
    if($cookie)
       curl_setopt($fn,CURLOPT_COOKIE,$cookie);
    if($ispost){
      curl_setopt($fn, CURLOPT_POST, TRUE);
      curl_setopt($fn, CURLOPT_POSTFIELDS, $data);   
    }
    $fm = curl_exec($fn);
    curl_close($fn);
    if($in!=$out){
       $fm = Newiconv($in,$out,$fm);
    }
    return $fm;
}


function is_json($string){
    try{
        $data = json_decode($string,true);
    }catch(Exception $e){
        return  $string;
    }
    return $data;
}


function gets_info($iid, $flag = false) {
    $shopUrl = "http://hws.m.taobao.com/cache/wdetail/5.0/?id=" . $iid;
    $content = execcurl($shopUrl);
    $data = is_json($content);

        $tmp = is_json($data['data']['apiStack'][0]['value'],true);
        $info['title'] = $data['data']['itemInfoModel']['title'];
        $info['volume'] = $tmp['data']['itemInfoModel']['totalSoldQuantity'];
        $info['emss'] = $tmp['data']['delivery']['deliveryFees'][0];
        if($info['emss']=='卖家包邮'){
        $info['ems'] = 1;
        }else{
        $info['ems'] = 0;
        }
        
        $info['coupon_price'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['price'];
        if(substr_count($info['coupon_price'],'-')){
            $tmp1 = explode('-',$info['coupon_price']);
            $info['coupon_price'] = min($tmp1[0],$tmp1[1]);
        }
        $info['price'] = $tmp['data']['itemInfoModel']['priceUnits'][1]['price'];
        if(substr_count($info['price'],'-')){
            $tmp = explode("-",$info['price']);
            $info['price'] = min($tmp[0],$tmp[1]);
        }       
        $info['pic_url'] = $data['data']['itemInfoModel']['picsPath'][0];
        $info['pic_url'] = str_replace("_320x320.jpg","",$info['pic_url']);
        $info['sellerId'] = $data['data']['seller']['userNumId'];
        $info['nick'] = $data['data']['seller']['nick'];
        $info['shop_type'] = $data['data']['seller']['type'];
        $info['cu'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['name'];
        if(!$info['cu']){
        $info['cu'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['tips'][0]['txt'];
        }
        $info['feedback'] = $data['data']['rateInfo']['rateDetailList'][0]['feedback'];
        $info['nicker'] = $data['data']['rateInfo']['rateDetailList'][0]['nick'];
        $info['headPic'] = $data['data']['rateInfo']['rateDetailList'][0]['headPic'];
        $info['feedback1'] = $data['data']['rateInfo']['rateDetailList'][1]['feedback'];
        $info['nicker1'] = $data['data']['rateInfo']['rateDetailList'][1]['nick'];
        $info['headPic1'] = $data['data']['rateInfo']['rateDetailList'][1]['headPic'];
        $info['feedback2'] = $data['data']['rateInfo']['rateDetailList'][2]['feedback'];
        $info['nicker2'] = $data['data']['rateInfo']['rateDetailList'][2]['nick'];
        $info['headPic2'] = $data['data']['rateInfo']['rateDetailList'][2]['headPic'];
        $info['feedback3'] = $data['data']['rateInfo']['rateDetailList'][3]['feedback'];
        $info['nicker3'] = $data['data']['rateInfo']['rateDetailList'][3]['nick'];
        $info['headPic3'] = $data['data']['rateInfo']['rateDetailList'][3]['headPic'];
        $info['feedback4'] = $data['data']['rateInfo']['rateDetailList'][4]['feedback'];
        $info['nicker4'] = $data['data']['rateInfo']['rateDetailList'][4]['nick'];
        $info['headPic4'] = $data['data']['rateInfo']['rateDetailList'][4]['headPic'];
        $info['descInfo'] = $data['data']['descInfo']['briefDescUrl'];
        $ftxia_https = new ftxia_https();
        $ftxia_https->fetch($info['descInfo']);
        $source = $ftxia_https->results;
        if(!$source){
            $source = file_get_contents($info['descInfo']);
            }                       
        $comlist = json_decode($source,true);
        $tm   = $comlist['data']['images'];
        $onepic = '<img class="lazy" src='.$tm[0].'>';
        $zcitem['desc'] = implode('',$tm);
        foreach($tm as $sms){
               if(strpos($zcitem['desc'],$sms) ){                    
                     $imgurl = '<img class="lazy" src='.$sms.'>';                    
                     $zcitem['desc'] =str_replace($sms, $imgurl, $zcitem['desc']);  
                     $zcitem['desc'] =str_replace($tm[0], '', $zcitem['desc']);
               } 
            } 
        $info['desc'] = $onepic.''.$zcitem['desc'];
        $info['num_iid'] = $iid;
        $zkou = round(($info['coupon_price']/$info['price'])*10,1);
        $info['coupon_rate'] =  $zkou*1000;
    return $info;
}

function vmwan($volume)
{
    $wan = $volume / 10000;
    $wan = number_format($wan, 1);
    return $wan . '万';
}


function strsub($str='',$len=0){
   $_k = array(128,224,240,248,252,254);
   $_r = array(0,192,224,240,248,252);
   $res = '';
   $offset=0;
   $substr=0;
   $lenth = strlen($str);
   if($lenth<=$len) return $str;
   while(($offset<$lenth)&&($substr<$len)){
      $head = ord(substr($str,$offset,1));
    if(($head&$_k[0])==$_r[0]){
    $cont=1;
    }elseif(($head&$_k[1])==$_r[1]){
    $cont=2;
    }elseif(($head&$_k[2])==$_r[2]){
    $cont=3;
    }elseif(($head&$_k[3])==$_r[3]){
      $cont=4;
    }elseif(($head&$_k[4])==$_r[4]){
      $cont=5;
    }elseif(($head&$_k[5])==$_r[5]){
    $cont =6;
    }
    $res.=substr($str,$offset,$cont);
    $substr++;
    $offset+=$cont;
   }
   return $res;
}

    /**
     * [sellerBao 处理商品报名状态]
     * @author   HUAMEI < http://bbs.138gzs.com >
     */
      function ssellerBao($itemsiid) {
        $result = D('payaudithpz')->where(array('itemurl'=>$itemsiid))->find();
        $itemsInfo = D('items')->where(array('num_iid'=>$itemsiid))->find();
        if ($result) {
            switch ($result['status']) {
                case 1:
                    $msg = '<font color="red">审核通过<font color="red">';
                    break;
                
                default:
                    $msg = '<font color="green">审核中<font color="red">';
                    break;
            }
        } else {
            //付款信息处理
            $urlcs = array(
                'fkid'=>base64_encode($itemsInfo['num_iid']),
                'typeid'=>base64_encode($itemsInfo['baotype']),
                'price' => base64_encode($itemsInfo['price']),
                'sellerId' => base64_encode($itemsInfo['sellerId']),
                'likes'  => base64_encode($itemsInfo['likes'])
            );
            $href = U('baoming/payitems',$urlcs);

            $msg  = "<div class='orderdbutton'><a class='btn-blue' href='".$href."'>去付款</a></div>";
        }
        return $msg;

    }


