<?php
class quanitemAction extends FrontAction {
    public function _initialize() {
        parent::_initialize();
        $this->_mod = D('items');
        $this->_tagmod = D('tag');
        $this->_cate_mod = D('items_cate');
        $this->assign('nav_curr', 'index');
        if (!$this->visitor->is_login && in_array(ACTION_NAME, array(
            'delete',
            'comment',
            'delcol',
            'mycol'
        ))) {
            IS_AJAX && $this->ajaxReturn(0, L('login_please'));
            $this->redirect('user/login');
        }
        if (C('ftx_site_cache')) {
            $file = 'items_site';
        }
    }
    public function index() {
        $id = I('id', '', 'trim');
        $iid = I('iid', '', 'trim');
        if ($id) {
            $item = $this->_mod->where(array( 'id' => $id ))->find();
        } else {
            $item = $this->_mod->where(array( 'num_iid' => $iid ))->find();
        }
        !$item && $this->_404();
        $item['class'] = $this->_mod->status($item['status'], $item['coupon_start_time'], $item['coupon_end_time']);
        $txurl = C('ftx_site_url') . U('item/index', array('id' => $item['id']));
        $item['txurl'] = urlencode($txurl);
        $item['zk'] = round(($item['coupon_price'] / $item['price']) * 10, 2);
        $item['iurl'] = C('ftx_site_url') . '/item/' . $item['id'] . '.html';
        $item['jurl'] = C('ftx_site_url') . '/jump/' . $item['id'] . '.html';
        $item['ccid'] = $item['cate_id'];
        if (isset($item['cate_id'])) {
            $item['cname'] = D('items_cate')->where(array( 'id' => $item['cate_id'] ))->getField('name');
        }
        $iid = $item['num_iid'];
        $likes = D('items_like')->field('id,uid')->limit(0, 6)->where(array( 'num_iid' => $iid ))->order('id desc')->select();
        $wholike = D('items_like')->where(array( 'num_iid' => $iid ))->count();
        $item_info = array();
        if ($likes) {
            foreach ($likes as $nid) {
                $item_info[] = $nid['uid'];
            }
        }
        $id_arr['id'] = array( 'in', $item_info );
        $user_info = D('user')->field('id,username,email,qq,last_time')->where($id_arr)->select();
        foreach ($user_info as $key => $inval) {
            $whos[$key] = $inval;
        }
        $this->assign('whos', $whos);
        $this->assign('wholike', $wholike);
        if (C('ftx_item_hit')) {
            $hits_data = array( 'hits' => array('exp', 'hits+1' ) );
            $this->_mod->where(array( 'id' => $id ))->setField($hits_data);
        }
        $cate_data = F('cate_list');
        $cid = $item['cate_id'];
        $pid = $cate_data[$cid]['pid'];
        $tag_list = D('items')->get_tags_by_title($item['title']);
        $tags = implode(',', $tag_list);
        $pinyin = new pinyin();
        $tag = $pinyin->getAllPY($tags);
        $ename = explode(',', $tag);
        $name = explode(',', $tags);
        for ($i = 0; $i < 10; $i++) {
            $items['ename'] = $ename[$i];
            $items['ename'] = str_replace(' ', "", $items['ename']);
            $items['name'] = $name[$i];
            if ($this->_tagmod->where(array(
                'ename' => $items['ename']
            ))->count()) {
                $this->_tagmod->where(array( 'ename' => $items['ename'] ))->save($items);
            } else {
                $this->_tagmod->where(array( 'ename' => $items['ename'] ))->add($items);
            }
        }
        $this->_config_seo(C('ftx_seo_config.item') , array(
            'title' => $item['title'],
            'intro' => $item['intro'],
            'price' => $item['price'],
            'coupon_price' => $item['coupon_price'],
            'tags' => $tags,
            'seo_title' => $item['seo_title'],
            'seo_keywords' => $item['seo_keys'],
            'seo_description' => $item['seo_desc'],
        ));
        $item_comment_mod = M('items_comment');
        $pagesize = 8;
        $pager->listRows = 8;
        $map = array(
            'item_id' => $id,
            'status' => '1'
        );
        $count = $item_comment_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
        $pager->path = 'comment_list';
        $page_bar = $pager->fshow();
        $comment_list = $item_comment_mod->where($map)->order('add_time ASC')->limit($pager->firstRow . ',' . $pager->listRows)->select();
        $this->assign('comment_list', $comment_list);
        $this->assign('page_bar', $page_bar);
        foreach ($comment_list as $nkeys) {
            foreach ($tag_list as $k) {
                if (strpos($nkeys['info'], $k)) {
                    $url = U('search/index', array( 'k' => urlencode($k) ));
                    $nkeys['info'] = str_replace($k, '<a href=' . $url . ' target=_blank ><b style=color:red>' . $k . '</b></a>', $nkeys['info']);
                }
            }
            $comm[] = $nkeys;
        }
        $total_item = $this->_mod->where($where)->count();
        $this->assign('total_item', $total_item);
        $this->assign('tags', $tag_list);
        $this->assign('comment_list', $comm);
        if (false === $cate_list = F('cate_list')) {
            $cate_list = D('items_cate')->cate_cache();
        }
        if (C('ftx_site_cache')) {
            $file = 'orlike_' . $cid;
            if (false === $orlike = S($file)) {
                if ($cid) {
                    $orlike = $this->_mod->where(array(
                        'cate_id' => $cid,
                        'isshow' => '1',
                        'pass' => '1'
                    ))->limit('0,12')->order('id desc')->select();
                } else {
                    $orlike = $this->_mod->where(array(
                        'isshow' => '1',
                        'pass' => '1'
                    ))->limit('0,12')->order('id desc')->select();
                }
                S($file, $orlike);
            }
        } else {
            if ($cid) {
                $orlike = $this->_mod->where(array(
                    'cate_id' => $cid,
                    'isshow' => '1',
                    'pass' => '1'
                ))->limit('0,12')->order('id desc')->select();
            } else {
                $orlike = $this->_mod->where(array(
                    'isshow' => '1',
                    'pass' => '1'
                ))->limit('0,12')->order('id desc')->select();
            }
        }
        $items = array();
        $pagecount = 0;
        $seller_arr = array();
        $sellers = '';
        foreach ($orlike as $key => $val) {
            $items[$key] = $val;
            $items[$key]['class'] = $this->_mod->status($val['status'], $val['coupon_start_time'], $val['coupon_end_time']);
            $items[$key]['pics'] = $this->pic = D('items')->where(array('id' => $item['id']))->getField('pic_url');
            $items[$key]['titles'] = $this->title = D('items')->where(array( 'id' => $item['id'] ))->getField('title');
            $items[$key]['zk'] = round(($val['coupon_price'] / $val['price']) * 10, 1);
            $items[$key]['itemurl'] = C('ftx_site_url') . '/item/' . $val['id'] . '.html';
            $items[$key]['jumpurl'] = C('ftx_site_url') . '/jump/' . $val['id'] . '.html';
            if (!$val['click_url']) {
                $items[$key]['click_url'] = U('jump/index', array(  'id' => $val['id'] ));
            }
            if ($val['coupon_start_time'] > time()) {
                $items[$key]['click_url'] = U('item/index', array(  'id' => $val['id']  ));
                $items[$key]['timeleft'] = $val['coupon_start_time'] - time();
            } else {
                $items[$key]['timeleft'] = $val['coupon_end_time'] - time();
            }
            $items[$key]['cate_name'] = $cate_list['p'][$val['cate_id']]['name'];
            $url = C('ftx_site_url') . U('item/index', array( 'id' => $val['id'] ));
            $items[$key]['url'] = urlencode($url);
            $items[$key]['urltitle'] = urlencode($val['title']);
            $items[$key]['price'] = number_format($val['price'], 1);
            $items[$key]['coupon_price'] = number_format($val['coupon_price'], 1);
            $pagecount++;
            if ($val['sellerId']) {
                $seller_arr[] = $val['sellerId'];
            }
        }
        $seller_arr = array_unique($seller_arr);
        $sellers = implode(',', $seller_arr);
        $this->assign('sellers', $sellers);
        $this->assign('items_list', $items);
        $this->assign('cate_list', $cate_list);
        if (!$item['desc']) {
            $descUrl = 'http://hws.m.taobao.com/cache/mtop.wdetail.getItemDescx/4.1/?data=%7B%22item_num_id%22%3A%22' . $item['num_iid'] . '%22%7D';
            $ftxia_https = new ftxia_https();
            $ftxia_https->fetch($descUrl);
            $source = $ftxia_https->results;
            if (!$source) {
                $source = file_get_contents($descUrl);
            }
            $result_data = json_decode($source, true);
            $dinfo = array();
            $num = $result_data['data']['images'];
            for ($i = 0; $i < count($num); $i++) {
                $images = $i + 1;
                $desc[$images] = $num[$i];
                $desc[$images] = '<img class="lazy" src=' . $desc[$images] . '>';
            }
            $desc = $desc[1] . '' . $desc[2] . '' . $desc[3] . '' . $desc[4] . '' . $desc[5] . '' . $desc[6] . '' . $desc[7] . '' . $desc[8] . '' . $desc[9] . '' . $desc[10] . '' . $desc[11] . '' . $desc[12] . '' . $desc[13] . '' . $desc[14] . '' . $desc[15] . '' . $desc[16] . '' . $desc[17] . '' . $desc[18] . '' . $desc[19] . '' . $desc[20] . '' . $desc[21] . '' . $desc[22] . '' . $desc[23] . '' . $desc[24] . '' . $desc[25] . '' . $desc[26] . '' . $desc[27] . '' . $desc[28] . '' . $desc[29] . '' . $desc[30];
            $item['desc'] = $desc;
            $data['desc'] = $desc;
            $this->_mod->where(array('id' => $id))->save($data);
        }
        $shopUrl = 'http://hws.m.taobao.com/cache/wdetail/5.0/?id=' . $item['num_iid'];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $shopUrl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_MAXREDIRS, 2);
        $contents = curl_exec($ch);
        curl_close($ch);
        if (!$contents) {
            $contents = file_get_contents($shopUrl);
        }
        $comslist = json_decode($contents, true);
        $info = array();
        $tmp = json_decode($comslist['data']['apiStack'][0]['value'], true);
        $info['title'] = $comslist['data']['itemInfoModel']['title'];
        $info['volume'] = $tmp['data']['itemInfoModel']['totalSoldQuantity'];
        $info['pai'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['name'];
        $info['pai'] = mb_substr($info['pai'], 0, 2, 'utf-8');
        $info['coupon_price'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['price'];
        if (substr_count($info['coupon_price'], '-')) {
            $tmp1 = explode('-', $info['coupon_price']);
            $info['coupon_price'] = min($tmp1[0], $tmp1[1]);
        }
        $info['price'] = $tmp['data']['itemInfoModel']['priceUnits'][1]['price'];
        if (substr_count($info['price'], '-')) {
            $tmp = explode('-', $info['price']);
            $info['price'] = min($tmp[0], $tmp[1]);
        }
        $info['pic_url'] = $comslist['data']['itemInfoModel']['picsPath'][0];
        $info['pic_url'] = str_replace('_320x320.jpg', "", $info['pic_url']);
        $info['sellerId'] = $comslist['data']['seller']['userNumId'];
        $info['nick'] = $comslist['data']['seller']['nick'];
        $info['feedback'] = $comslist['data']['rateInfo']['rateDetailList'][0]['feedback'];
        $info['nicker'] = '买家【<span style="color:#FF0000">' . $comslist['data']['rateInfo']['rateDetailList'][0]['nick'] . '</span>】评价说：';
        $info['headPic'] = $comslist['data']['rateInfo']['rateDetailList'][0]['headPic'];
        $info['feedback1'] = $comslist['data']['rateInfo']['rateDetailList'][1]['feedback'];
        $info['nicker1'] = '买家【<span style="color:#0000FF">' . $comslist['data']['rateInfo']['rateDetailList'][1]['nick'] . '</span>】评价说：';
        $info['headPic1'] = $comslist['data']['rateInfo']['rateDetailList'][1]['headPic'];
        $info['feedback2'] = $comslist['data']['rateInfo']['rateDetailList'][2]['feedback'];
        $info['nicker2'] = '买家【<span style="color:#800080">' . $comslist['data']['rateInfo']['rateDetailList'][2]['nick'] . '</span>】评价说：';
        $info['headPic2'] = $comslist['data']['rateInfo']['rateDetailList'][2]['headPic'];
        $info['feedback3'] = $comslist['data']['rateInfo']['rateDetailList'][3]['feedback'];
        $info['nicker3'] = '买家【<span style="color:#008000">' . $comslist['data']['rateInfo']['rateDetailList'][3]['nick'] . '</span>】评价说：';
        $info['headPic3'] = $comslist['data']['rateInfo']['rateDetailList'][3]['headPic'];
        $info['feedback4'] = $comslist['data']['rateInfo']['rateDetailList'][4]['feedback'];
        $info['nicker4'] = '买家【<span style="color:#FF8000">' . $comslist['data']['rateInfo']['rateDetailList'][4]['nick'] . '</span>】评价说：';
        $info['headPic4'] = $comslist['data']['rateInfo']['rateDetailList'][4]['headPic'];
        if ($item['shop_type'] == 'B') {
            $cUrl = 'http://detail.tmall.com/item.htm?id=' . $item['num_iid'];
            $ftxia_https = new ftxia_https();
            $ftxia_https->fetch($cUrl);
            $ku = $ftxia_https->results;
            $ku = iconv('GBK', 'UTF-8//IGNORE', $ku);
            $info['ku'] = get_word($ku, '<ul id="J_AttrUL">', '<\/ul>');
        } else {
            $cUrl = 'http://item.taobao.com/item.htm?id=' . $item['num_iid'];
            $ftxia_https = new ftxia_https();
            $ftxia_https->fetch($cUrl);
            $ku = $ftxia_https->results;
            $ku = iconv('GBK', 'UTF-8//IGNORE', $ku);
            $info['ku'] = get_word($ku, '<ul class="attributes-list">', '<\/ul>');
        }
        $this->assign('info', $info);
        $this->assign('item', $item);
        $this->display();
    }
    public function comment_list() {
        $id = I('id', '', 'intval');
        !$id && $this->ajaxReturn(0, L('invalid_item'));
        $item = $this->_mod->where(array( 'id' => $id, 'pass' => '1' ))->count('id');
        !$item && $this->ajaxReturn(0, L('invalid_item'));
        $item_comment_mod = M('items_comment');
        $pagesize = 8;
        $map = array( 'item_id' => $id, 'status' => '1' );
        $count = $item_comment_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
        $pager->listRows = 8;
        $cmt_list = $item_comment_mod->where($map)->order('add_time DESC')->limit($pager->firstRow . ',' . $pager->listRows)->select();
        $this->assign('cmt_list', $cmt_list);
        $data = array();
        $data['list'] = $this->fetch('comment_list');
        $data['page'] = $pager->fshow();
        $this->ajaxReturn(1, '', $data);
    }
    public function comment() {
        foreach ($_POST as $key => $val) {
            $_POST[$key] = Input::deleteHtmlTags($val);
        }
        $data = array();
        $data['item_id'] = I('id', '', 'intval');
        !$data['item_id'] && $this->ajaxReturn(0, L('invalid_item'));
        $data['info'] = I('content', '', 'trim');
        !$data['info'] && $this->ajaxReturn(0, L('please_input') . L('comment_content'));
        $data['status'] = 1;
        $data['uid'] = $this->visitor->info['id'];
        $data['uname'] = $this->visitor->info['username'];
        $item = $this->_mod->field('id,uid,nick')->where(array( 'id' => $data['item_id'],'pass' => '1' ))->find();
        !$item && $this->ajaxReturn(0, L('invalid_item'));
        $item_comment_mod = D('items_comment');
        if (false === $item_comment_mod->create($data)) {
            $this->ajaxReturn(0, $item_comment_mod->getError());
        }
        $comment_id = $item_comment_mod->add();
        if ($comment_id) {
            $this->assign('cmt_list', array(
                array(
                    'uid' => $data['uid'],
                    'uname' => $data['uname'],
                    'info' => $data['info'],
                    'add_time' => time() ,
                )
            ));
            $resp = $this->fetch('comment_list');
            $this->ajaxReturn(1, L('comment_success') , $resp);
        } else {
            $this->ajaxReturn(0, L('comment_failed'));
        }
    }
    public function noshow() {
        $id = I('id');
        $username = $this->visitor->info['username'];
        if ($username != C('ftx_index_admin')) {
            $this->ajaxReturn(0, '越权！');
        }
        $data['isshow'] = 0;
        if (M('items')->where(array(
            'num_iid' => $id
        ))->save($data)) {
            $this->ajaxReturn(1, '取消成功！');
        } else {
            $this->ajaxReturn(0, $this->_mod->getError());
        }
    }
    public function delete() {
        $id = I('id', '', 'intval');
        !$id && $this->ajaxReturn(0, L('invalid_item'));
        $uid = $this->visitor->info['id'];
        $uname = $this->visitor->info['username'];
        $result = D('items')->where(array('id' => $id ))->delete();
        if ($result) {
            $this->ajaxReturn(1, L('del_item_success'));
        } else {
            $this->ajaxReturn(0, L('del_item_failed'));
        }
    }
    public function ajax_getchilds() {
        $id = I('id', '', 'intval');
        $map = array(
            'pid' => $id,
            'status' => '1'
        );
        $return = M('items_cate')->field('id,name')->where($map)->select();
        if ($return) {
            $this->ajaxReturn(1, L('operation_success') , $return);
        } else {
            $this->ajaxReturn(0, L('operation_failure'));
        }
    }
} 
?>
