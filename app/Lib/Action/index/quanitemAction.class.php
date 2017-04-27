<?php
class quanitemAction extends FrontAction {
    public function _initialize() {
        parent::_initialize();
        $this->_mod = D('items');
        $this->_tagmod = D('tag');
        $this->_cate_mod = D('items_cate');
        $this->assign('nav_curr', 'index');
        if (!$this->visitor->is_login && in_array(ACTION_NAME, array( 'delete', 'comment', 'delcol', 'mycol' ))) {
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
        $txurl = C('ftx_site_url') . U('item/index', array('id' => $item['id'] ));
        $item['txurl'] = urlencode($txurl);
        $item['zk'] = round(($item['coupon_price'] / $item['price']) * 10, 2);
        $item['iurl'] = C('ftx_site_url') . '/item/' . $item['id'] . '.html';
        $item['jurl'] = C('ftx_site_url') . '/jump/' . $item['id'] . '.html';
        $item['ccid'] = $item['cate_id'];
        if (isset($item['cate_id'])) {
            $item['cname'] = D('items_cate')->where(array( 'id' => $item['cate_id']))->getField('name');
        }
        $iid = $item['num_iid'];
        $likes = D('items_like')->field('id,uid')->limit(0, 6)->where(array('num_iid' => $iid ))->order('id desc')->select();
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
            $hits_data = array( 'hits' => array( 'exp', 'hits+1' ) );
            $this->_mod->where(array('id' => $id ))->setField($hits_data);
        }
        $cate_data = F('cate_list');
        $cid = $item['cate_id'];
        $pid = $cate_data[$cid]['pid'];
		
		//}
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
        $map = array( 'item_id' => $id, 'status' => '1' );
        $count = $item_comment_mod->where($map)->count('id');
        $pager = $this->_pager($count, $pagesize);
        $pager->path = 'comment_list';
        $page_bar = $pager->fshow();
        $comment_list = $item_comment_mod->where($map)->order('add_time ASC')->limit($pager->firstRow . ',' . $pager->listRows)->select();
        $this->assign('comment_list', $comment_list);
        $this->assign('page_bar', $page_bar);
       


        $total_item = $this->_mod->where($where)->count();
        $this->assign('total_item', $total_item);
        $this->assign('tags', $tag_list);
		$this->assign('nav_curr', $id);
        $this->assign('comment_list', $comm);
        if (false === $cate_list = F('cate_list')) {
            $cate_list = D('items_cate')->cate_cache();
        }
        if (C('ftx_site_cache')) {
            $file = 'orlike_' . $cid;
            if (false === $orlike = S($file)) {
                if ($cid) {
                    $orlike = $this->_mod->where(array( 'cate_id' => $cid, 'isshow' => '1', 'pass' => '1' ))->limit('0,8')->order('id desc')->select();
                } else {
                    $orlike = $this->_mod->where(array( 'isshow' => '1','pass' => '1' ))->limit('0,8')->order('id desc')->select();
                }
                S($file, $orlike);
            }
        } else {
            if ($cid) {
                $orlike = $this->_mod->where(array( 'cate_id' => $cid, 'isshow' => '1', 'pass' => '1' ))->limit('0,8')->order('id desc')->select();
            } else {
                $orlike = $this->_mod->where(array( 'isshow' => '1', 'pass' => '1' ))->limit('0,8')->order('id desc')->select();
            }
        }
        $items = array();
        $pagecount = 0;
        $seller_arr = array();
        $sellers = '';
        foreach ($orlike as $key => $val) {
            $items[$key] = $val;
            $items[$key]['class'] = $this->_mod->status($val['status'], $val['coupon_start_time'], $val['coupon_end_time']);
            $items[$key]['pics'] = $this->pic = D('items')->where(array('id' => $item['id'] ))->getField('pic_url');
            $items[$key]['titles'] = $this->title = D('items')->where(array( 'id' => $item['id'] ))->getField('title');
            $items[$key]['zk'] = round(($val['coupon_price'] / $val['price']) * 10, 1);
            $items[$key]['itemurl'] = C('ftx_site_url') . '/item/' . $val['id'] . '.html';
            $items[$key]['jumpurl'] = C('ftx_site_url') . '/jump/' . $val['id'] . '.html';
            if (!$val['click_url']) {
                $items[$key]['click_url'] = U('jump/index', array( 'id' => $val['id'] ));
            }
            if ($val['coupon_start_time'] > time()) {
                $items[$key]['click_url'] = U('item/index', array( 'id' => $val['id'] ));
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
      
        $this->assign('info', $info);
        $this->assign('item', $item);
        $this->display();
    }

}
?>

