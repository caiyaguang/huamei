<?php
class quanAction extends FrontAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('items');
        $this->_cate_mod = D('items_cate');
    }
    
    public function _empty(){
    	$this->index();
    }

    public function index() {
		$cid	= I('cid','','intval');
		$cinfo = $this->_cate_mod->where(array('id'=>$cid))->find();
		$item_mod = M('items');
		$order = 'ordid asc ';
		$sort = I('sort', 'new', 'trim'); //排序
		$status = I('status', 'all', 'trim'); //排序
		switch ($sort){
			case 'new':
 				$order.= ', add_time DESC';
  				break;
  			case 'price':
				$order.= ', coupon_price ASC';
				break;
			case 'rate':
				$order.= ', coupon_rate ASC';
				break;
			case 'hot':
				$order.= ', hits DESC';
 				break;
			case 'default':
				$order.= ', '.C('ftx_index_sort');
				break;
		}
		if($cid){
        $id_arr = $this->_cate_mod->get_child_ids($cid, true);
    	$where['cate_id'] = array('IN', $id_arr);
		}
		switch ($status){
			case 'all':
				$where['status']="underway";
				break;
			case 'underway':
				$where['status']="underway";
				break;
			case 'sellout':
				$where['status']="sellout";
				break;
		}
		if(C('ftx_wait_time') == '1'){
			$where['coupon_start_time'] = array('egt',time());
		}elseif(C('ftx_wait_time') =='2'){
			$where['coupon_start_time'] = array('elt',time());
		}
		$where['coupon_end_time'] = array('egt',time());
		if(C('ftx_index_ems') == '1'){
			$where['ems'] = '1';
		}

		$where['pass'] = '1';
		$where['isshow'] = '1';		
		$where['isq']="1";
		$index_info['sort']=$sort;
		$index_info['status']=$status;
        
		$page_size = C('ftx_index_page_size');
		$p = I('p',1, 'intval'); //页码
		$index_info['p']=$p;

        $start = $page_size * ($p - 1) ;

		if(false === $cate_list = F('cate_list')) {
			$cate_list = D('items_cate')->cate_cache();
		}
		$this->assign('cate_list', $cate_list); //分类
		
		$ttime = date('m月d日',time());
		$this->assign('ttime', $ttime); //分类
		
		$items_list = $item_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		$items = array();
		$pagecount = 0;
		foreach($items_list as $key=>$val){
			$items[$key]			= $val;
			$items[$key]['class']	= $this->_mod->status($val['status'],$val['coupon_start_time'],$val['coupon_end_time']);
			$items[$key]['zk']		= round(($val['coupon_price']/$val['price'])*10, 1); 
			if(!$val['click_url']){
				$items[$key]['click_url']	=U('jump/index',array('id'=>$val['id']));
			}
			if($val['coupon_start_time']>time()){
				$items[$key]['click_url']	=U('item/index',array('id'=>$val['id']));
				$items[$key]['timeleft'] = $val['coupon_start_time']-time();
			}else{
				$items[$key]['timeleft'] = $val['coupon_end_time']-time();
			}
			$items[$key]['cate_name']		=$cate_list['p'][$val['cate_id']]['name']; 
			$url = C('ftx_site_url').U('item/index',array('id'=>$val['id']));
			$items[$key]['url'] = urlencode($url);
			$items[$key]['urltitle'] = urlencode($val['title']);
			$items[$key]['price'] = number_format($val['price'],1);
			$items[$key]['coupon_price'] = number_format($val['coupon_price'],1);
			$pagecount++;
		}
		$this->assign('pagecount', $pagecount);
		F('items_list', $items);
		$this->assign('cid',$cid);
		$this->assign('items_list', $items);
		$this->assign('index_info',$index_info);
		$count = $item_mod->where($where)->count();
		$pager = $this->_pager($count, $page_size);	
		$this->assign('page', $pager->jshow());
		$this->assign('total_item',$count);
		$this->assign('pager','index');
    	$this->assign('nav_curr', 'quan');
		$this->_config_seo(array(
            'title' => '独家全网内部优惠券汇总-内部券秒杀汇总-' .C('ftx_site_name'),
			'keywords' => '内部券',
			'description' => '来自淘宝天猫精品独家全网内部优惠券汇总-内部券秒杀汇总-。',
			));
		$this->display();
    }
		/**
	 ** 搜索
	 **/
	public function so() {
		$sort	= I('sort', 'new', 'trim'); //排序
		$status = I('status', 'all', 'trim'); //排序
		$cid	= I('cid','','intval');
		$k		= I('k');
		$order	= 'ordid asc ,id desc';
		switch ($sort) {
            case 'new':
                $order.= ', coupon_start_time DESC';
                break;
            case 'price':
                $order.= ', price DESC';
                break;
        }
		switch ($status) {
            case 'all':
                $where['status']="underway";
                break;
            case 'underway':
                $where['status']="underway";
                break;
			case 'sellout':
				$where['status']="sellout";
				break;
        }
		if($k){
			$where['title'] = array('like', '%' . $k . '%');
			$this->assign('k',$k);
		}

		$today_str = mktime(0,0,0,date("m"),date("d"),date("Y"));
		$tomorr_str = mktime(0,0,0,date("m"),date("d")+1,date("Y"));
		$today_wh['add_time'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
		$tomorr_wh['coupon_start_time'] = array(array('egt',$tomorr_str)) ;
		$tomorr_wh['pass'] = '1';
		$tomorr_wh['isshow'] = '1';	
		$today_wh['pass'] = '1';
		$today_wh['isshow'] = '1';	
		
		if(C('ftx_site_cache')){
			if(false === $tomorr_item = S($file)){
				$tomorr_item = $this->_mod->where($tomorr_wh)->count();
				S($file,$tomorr_item);
			}
		}else{
			$tomorr_item = $this->_mod->where($tomorr_wh)->count();
		}
		
		if(C('ftx_site_cache')){
			if(false === $today_item = S($file)){
				$today_item = $this->_mod->where($today_wh)->count();
				S($file,$today_item);
			}
		}else{
			$today_item = $this->_mod->where($today_wh)->count();
		}
		$this->assign('tomorr_item', $tomorr_item);
		$this->assign('today_item', $today_item);
		if ($cid) {
            $id_arr = $this->_cate_mod->get_child_ids($cid, true);
            $map['cate_id'] = array('IN', $id_arr);
			$this->assign('cid',$cid);
        }
		$where['pass'] = '1';
		$where['isq']="1";
		$index_info['sort']=$sort;
		$index_info['status']=$status;
		$page_size = C('ftx_index_page_size');
        $p = I('p',1, 'intval'); //页码
		$index_info['p']=$p;

        $start = $page_size * ($p - 1) ;

		if (false === $cate_list = F('cate_list')) {
            $cate_list = D('items_cate')->cate_cache();
        }
		$this->assign('cate_list', $cate_list); //分类

        $items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		$items = array();
		$pagecount = 0;
		$seller_arr = array();
		$sellers = '';
		foreach($items_list as $key=>$val){
			$items[$key]			= $val;
			$items[$key]['class']	= $this->_mod->status($val['status'],$val['coupon_start_time'],$val['coupon_end_time']);
			$items[$key]['zk']		= round(($val['coupon_price']/$val['price'])*10, 1); 
			if(!$val['click_url']){
				$items[$key]['click_url']	=U('jump/index',array('id'=>$val['id']));
			}
			if($val['coupon_start_time']>time()){
				$items[$key]['click_url']	=U('item/index',array('id'=>$val['id']));
				$items[$key]['timeleft'] = $val['coupon_start_time']-time();
			}else{
				$items[$key]['timeleft'] = $val['coupon_end_time']-time();
			}
			$items[$key]['cate_name']		=$cate_list['p'][$val['cate_id']]['name'];
			$url = C('ftx_site_url').U('item/index',array('id'=>$val['id']));
			$items[$key]['url'] = urlencode($url);
			$items[$key]['urltitle'] = urlencode($val['title']);
			$items[$key]['price'] = number_format($val['price'],1);
			$items[$key]['coupon_price'] = number_format($val['coupon_price'],1);
			$pagecount++;
			if($val['sellerId']){
				$seller_arr[] = $val['sellerId'];
			}
		}
		$this->assign('pagecount', $pagecount);
		$seller_arr = array_unique($seller_arr);
		$sellers = implode(",",$seller_arr);
		$this->assign('sellers', $sellers);
		$this->assign('items_list', $items);
		$this->assign('index_info',$index_info);
		$count = $this->_mod->where($where)->count();
		$pager = $this->_pager($count, $page_size);
		$this->assign('page', $pager->kshow());
		$this->assign('zpage', $pager->zshow());
		$this->assign('total_item',$count);
 
		$this->assign('nav_curr', 'index');
			$page_seo=array(
			'title' => '搜索"'.$k.'"的宝贝结果页 - '.C('ftx_site_name'),
		);
		$this->assign('page_seo', $page_seo);
		$this->assign('pager','so');
		$this->display('index');
    }

 
}