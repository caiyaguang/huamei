<?php
class searchAction extends FrontAction {
    public function _initialize() {
        parent::_initialize();
        $this->_mod = D('items');
        $this->_tagmod = D('tag');
        $this->_cate_mod = D('items_cate');
    }
    public function _empty() {
        $this->index();
    }
    public function index() {
        $sort = I('sort', 'new', 'trim');
        $status = I('status', 'all', 'trim');
        $cid = I('cid', '', 'intval');
        $k = I('k');
        $key = I('k');
        $k = urldecode($k);
        if (strpos($k, 'item')) {
            preg_match('/id=(\d*)/', $k, $match);
            $k = isset($match[1]) ? $match[1] : '';
        }
        $url_s = 'http://suggest.taobao.com/sug?code=utf-8&q=' . $key;
        $ftxia_https = new ftxia_https();
        $ftxia_https->fetch($url_s);
        $source_s = $ftxia_https->results;
        $results_info = json_decode($source_s, true);
        $info = array();
        for ($i = 0; $i < 10; $i++) {
            $info['name'] = $results_info['result'][$i][0];
            $pinyin = new pinyin();
            $info['ename'] = $pinyin->getAllPY($info['name']);
            $info['ename'] = str_replace(' ', "", $info['ename']);
            if ($this->_mod->where(array( 'ename' => $info['ename'] ))->count()) {
                $this->_mod->where(array( 'ename' => $info['ename']  ))->save($info);
            } else {
                $this->_mod->where(array( 'ename' => $info['ename'] ))->add($info);
            }
        }
        $title = $results_info['result'][0][0] . ',' . $results_info['result'][1][0] . ',' . $results_info['result'][2][0] . ',' . $results_info['result'][3][0] . ',' . $results_info['result'][4][0] . ',' . $results_info['result'][5][0] . ',' . $results_info['result'][6][0] . ',' . $results_info['result'][7][0] . ',' . $results_info['result'][8][0] . ',' . $results_info['result'][9][0];
        $order = 'ordid asc ,id desc';
        switch ($sort) {
            case 'new':
                $order.= ', coupon_start_time DESC';
                break;

            case 'price':
                $order.= ', coupon_price ASC';
                break;
        }
        switch ($status) {
            case 'all':
                $map['status'] = 'underway';
                break;

            case 'underway':
                $map['status'] = 'underway';
                break;

            case 'sellout':
                $map['status'] = 'sellout';
                break;
        }
        if ($k) {
            if (strpos($k, ' ')) {
                $split = split(' ', $k);
                foreach ($split as $lit) {
                    $where[] = array('like', '%' . $lit . '%' );
                }
                $map['title|tags|num_iid'] = $where;
            } else {
                $map['title|tags|num_iid'] = array( 'like', '%' . $k . '%' );
            }
            $this->assign('k', $k);
        }
        $today_str = mktime(0, 0, 0, date('m') , date('d') , date('Y'));
        $tomorr_str = mktime(0, 0, 0, date('m') , date('d') + 1, date('Y'));
        $tomorr_wh['coupon_start_time'] = array(
            array('egt', $today_str ) ,
            array('elt', $tomorr_str ) );
        $tomorr_wh['pass'] = '1';
        $today_item = $this->_mod->where($tomorr_wh)->count();
        $this->assign('today_item', $today_item);
        if ($cid) {
            $id_arr = $this->_cate_mod->get_child_ids($cid, true);
            $today_wh['cate_id'] = array( 'IN', $id_arr  );
            $spid = $this->_cate_mod->where(array( 'id' => $taojindian9 ))->getField('spid');
            if ($spid == 0) {
                $spid = $cid;
            } else {
                $spid.= $cid;
            }
            $this->assign('cid', $cid);
        }
        $map['pass'] = '1';
        $index_info['sort'] = $sort;
        $index_info['status'] = $status;
        $page_size = C('ftx_index_page_size');
        $p = I('p', 1, 'intval');
        $index_info['p'] = $p;
        $start = $page_size * ($p - 1);
        if (false === $cate_list = F('cate_list')) {
            $cate_list = D('items_cate')->cate_cache();
        }
        $this->assign('cate_list', $cate_list);
        if ($p % 2 == 0) {
            $page = 0;
            $items_cate = 'true';
        } else {
            $page = ($p + 1) / 2;
            $items_cate = 'false';
        }
        $taojindian = C('ftx_taojindian_html');
        if (strpos($taojindian, 'text/javascript')) {
            $pid = get_word($taojindian, 'pid: "', '"');
        } else {
            $pid = $taojindian;
        }
        if (!$pid) {
            $pid = 'mm_29468539_7326617_28046598';
        }
        $url_a = 'http://ai.taobao.com/search/getItem.htm?_tb_token_=4fx6Pb6Bvqn&__ajax__=1&pid=' . $pid . '&unid=199&key=' . $key . '&page=' . $p . '&pageSize=60&ppage=' . $page . '&maxPageSize=200&neednav=1&npx=100&pageNav=' . $items_cate . '&sourceId=search&specialCount=6&target=item';
        $ftxia_https = new ftxia_https();
        $ftxia_https->fetch($url_a);
        $source = $ftxia_https->results;
        if (!$source) {
            $source = file_get_contents($url_a);
        }
        $result_data = json_decode($source, true);
        $data = array();
        if ($source) {
            for ($i = 0; $i < 60; $i++) {
                $data['title'] = $result_data['result']['auction'][$i]['description'];
                $data['title'] = str_replace('&lt;em&gt;', "", $data['title']);
                $data['title'] = str_replace('&lt;/em&gt;', "", $data['title']);
				$data['title'] = str_replace('&lt;span class=H&gt;', "", $data['title']);
				$data['title'] = str_replace('&lt;/span&gt;', "", $data['title']);
                $data['pic_url'] = $result_data['result']['auction'][$i]['originalPicUrl'];
				$data['pic_url'] = str_replace('//','http://', $data['pic_url']);
                $data['num_iid'] = $result_data['result']['auction'][$i]['itemId'];
                $data['intro'] = $result_data['result']['auction'][$i]['comment'];
                $data['cu'] = $result_data['result']['auction'][$i]['itemLocation'];
                $data['coupon_price'] = $result_data['result']['auction'][$i]['realPrice'];
                $data['price'] = $result_data['result']['auction'][$i]['price'];
                $data['volume'] = $result_data['result']['auction'][$i]['saleCount'];
                $data['click_url'] = $result_data['result']['auction'][$i]['clickUrl'];
                $data['type'] = $result_data['result']['auction'][$i]['userType'];
                $data['coupon_start_time'] = time();
                if ($data['type'] == '0') {
                    $data['shop_type'] = C;
                } else {
                    $data['shop_type'] = B;
                }
                $data['zk'] = round(($data['coupon_price'] / $data['price']) * 10, 1);
                $file['item_list'][] = $data;
            }
        }
        $taobaoke_item = $file['item_list'];
        foreach ($taobaoke_item as $key => $inval) {
            $taobaoke_item_list[$key] = $inval;
        }
        $items_mod = M('items');
        $items_list = $items_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
        $items = array();
        $pagecount = 0;
        foreach ($items_list as $key => $val) {
            $items[$key] = $val;
            $items[$key]['class'] = $this->_mod->status($val['status'], $val['coupon_start_time'], $val['coupon_end_time']);
            $items[$key]['zk'] = round(($val['coupon_price'] / $val['price']) * 10, 1);
            if (!$val['click_url']) {
                $items[$key]['click_url'] = U('jump/index', array(
                    'id' => $val['id']
                ));
            }
            if ($val['coupon_start_time'] > time()) {
                $items[$key]['click_url'] = U('item/index', array(
                    'id' => $val['id']
                ));
                $items[$key]['timeleft'] = $val['coupon_start_time'] - time();
            } else {
                $items[$key]['timeleft'] = $val['coupon_end_time'] - time();
            }
            $items[$key]['ccid'] = $val['cate_id'];
            if (isset($val['cate_id'])) {
                $items[$key]['cname'] = D('items_cate')->where(array( 'id' => $val['cate_id']))->getField('name');
            }
            $items[$key]['cate_name'] = $cate_list['p'][$val['cate_id']]['name'];
            $url = C('ftx_site_url') . U('item/index', array( 'id' => $val['id'] ));
            $items[$key]['url'] = urlencode($url);
            $items[$key]['urltitle'] = urlencode($val['title']);
            $items[$key]['price'] = number_format($val['price'], 1);
            $items[$key]['coupon_price'] = number_format($val['coupon_price'], 1);
            $pagecount++;
        }
        $this->assign('pagecount', $pagecount);
        F('items_list', $items);
        $this->assign('items_list', $items);
        $this->assign('taobaoke_item_list', $taobaoke_item_list);
        $this->assign('index_info', $index_info);
        $count = $items_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->jshow());
        $items_comment = M('items_comment');
        $comment_list = $items_comment->order('id DESC')->limit('0,10')->select();
        $this->assign('comment_list', $comment_list);
		$page_seo=array(
			'title' => '搜索"'.$k.'"的宝贝结果页 - 第'.$p.'页 - '.C('ftx_site_name'),
		);
		$this->assign('page_seo', $page_seo);
		$this->assign('pager','so');		
		$this->display();
    }
 
}
