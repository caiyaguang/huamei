<?php
class xinpinAction extends FrontAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('items');
        $this->_cate_mod = D('items_cate');
    }
    
    public function _empty(){
    	$this->index();
    }

    public function index() {
 
		$item_mod = M('items');
		$today_str = mktime(0,0,0,date("m"),date("d"),date("Y"));
		$tomorr_str = mktime(0,0,0,date("m"),date("d")+1,date("Y"));
		$today_wh['add_time'] = array(array('egt',$today_str),array('elt',$tomorr_str));
		$tomorr_wh['coupon_start_time'] = array(array('egt',$tomorr_str)) ;
		$tomorr_wh['pass'] = '1';
		$tomorr_wh['isshow'] = '1';	
		$today_wh['pass'] = '1';
		$today_wh['isshow'] = '1';	
		$md_id = md5(implode("-",$today_wh));
		$file = 'index_today_item_'.$md_id;
		if(C('ftx_site_cache')){
			if(false === $today_item = S($file)){
				$today_item = $this->_mod->where($today_wh)->count();
				S($file,$today_item);
			}
		}else{
			$today_item = $this->_mod->where($today_wh)->count();
		}
		$td_id = md5(implode("-",$tomorr_wh));
		$files = 'index_tomorr_item_'.$td_id;
		if(C('ftx_site_cache')){
			if(false === $tomorr_item = S($files)){
				$tomorr_item = $this->_mod->where($tomorr_wh)->count();
				S($files,$tomorr_item);
			}
		}else{
			$tomorr_item = $this->_mod->where($tomorr_wh)->count();
		}
		
		
		$this->assign('tomorr_item', $tomorr_item);
		$this->assign('today_item', $today_item);

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
				$order.= ', volume DESC';
 				break;
			case 'default':
				$order.= ', '.C('ftx_index_sort');
				break;
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
        $where['coupon_rate'] = array('lt',10000);
 		$where['pass'] = '1';
		$where['isshow'] = '1';
		$where['coupon_start_time'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
		//$where['coupon_start_time'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
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
		$this->assign('items_list', $items);
		$this->assign('index_info',$index_info);
		$count = $item_mod->where($where)->count();
		$pager = $this->_pager($count, $page_size);
		$this->assign('page', $pager->kshow());
		$this->assign('zpage', $pager->zshow());
		$this->assign('total_item',$count);
		$this->assign('pager','index');
    	$this->assign('nav_curr', 'xinpin');
		$this->_config_seo(array('title' => '【今日新品】 —  ',));
		$this->display('index');
    }
 
}