<?php
class meilishuoAction extends FrontAction {
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

		$where['pass'] = '1';
		$where['isshow'] = '1';		
		$where['shop_type'] = 'M';
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
		$this->assign('page', $pager->jshow());
		$this->assign('total_item',$count);
		$this->assign('pager','index');
    	$this->assign('nav_curr', 'meilishuo');
		$this->_config_seo(array(
            'title' => '美丽说 -' .C('ftx_site_name'),
			'keywords' => '美丽说,精品女装,内衣,配饰,鞋包等',
			'description' => '来自美丽说官方的精美商品。',
			));
		$this->display();
    }
 
}