<?php
    vendor('Taobaotop.TopClient');
    vendor('Taobaotop.RequestCheckUtil');
    vendor('Taobaotop.ResultSet');
    vendor('Taobaotop.request.TbkItemInfoGetRequest');
class baomingAction extends FrontAction {
    public function _initialize() {
        parent::_initialize();
        if (!$this->visitor->is_login) {
            IS_AJAX && $this->ajaxReturn(0, L('login_please'));
            $this->redirect('user/login');
        }
		$this->_mod = D('items');
		$this->cid = $_SERVER['HTTP_HOST'];
        $this->_cate_mod = D('items_cate');
		$this->assign('nav_curr', 'index');		
    }

	public function index(){

		$this->_config_seo(array(
            'title' => '卖家报名中心 — ' ,
        ));
		$this->assign('nav_currr', 'index');
		$this->display();
	}

	public function add(){
		$info = $this->visitor->get();
        $this->assign('info', $info);

		$orig_list = M('items_orig')->where(array('pass'=>1))->select();
		$this->assign('orig_list',$orig_list);
		$this->_config_seo(array(
            'title' => '活动报名 — ' ,
        ));
		$this->assign('nav_currr', 'index');
		$this->display();
	}

	public function edit(){
		if(IS_POST){
		}else{

			$id = I('id','', 'trim');
			!$id && $this->_404();
			$item = $this->_mod->where(array('id' => $id))->find();
			!$item && $this->_404();

			$orig_list = M('items_orig')->where(array('pass'=>1))->select();
			$this->assign('orig_list',$orig_list);
			$this->assign('item',$item);
			$this->_config_seo(array(
				'title' => '宝贝修改 — ' ,
			));
			$this->display();
		}

	}
	public function ajaxGetItem() {

	if(!isset($_REQUEST['url']))
	$this->ajaxReturn (0,'未传入商品链接');
	$info = getInfo($_REQUEST['url']);
	$info['shop_type']='B';
	$info['orig_id']='';
	$info['coupon_rate'] = intval(($info['price'] / $info['coupon_price'])) * 1000;
    $this->ajaxReturn(1,'',$info);
    }
	/**
     * AJAX提交
     */
	public function ajaxadd(){
		if(IS_POST){
			$items_mod			= M('items');
			$num_iid			= I('iid','', 'trim');
			if($num_iid == ''){
				$this->ajaxReturn(1005, '商品IID不能为空，请输入宝贝地址获取');
			}
			$cate_id			= I('cate_id','', 'trim');
			$title				= I('title','', 'trim');	
			$sex				= I('sex','', 'trim');
			!$title && $this->ajaxReturn(1005, '商品名称不能为空');
			$realname				= I('realname','', 'trim');
			$mobile				= I('mobile','', 'trim');
			$qq				    = I('qq','', 'trim');
			$nick				= I('nick','', 'trim');
			$commission				    = I('commission','', 'trim');
			$commission_rate				= I('commission_rate','', 'trim');
			!$nick && $this->ajaxReturn(1005, '掌柜名称不能为空');
			$sellerId             = I('sellerId',0,'trim');
			$desc				= I('desc','', 'trim');
			$price				= I('price','', 'trim');
			$ems				= I('ems','', 'trim');
			$volume				= I('volume','', 'trim');
			$coupon_rate		= I('coupon_rate','', 'trim');			
			$coupon_price		= I('coupon_price','', 'trim');
			$inventory			= I('good_inventory','', 'trim');
			$coupon_start_time	= I('coupon_start_time','', 'trim');
			$coupon_end_time	= I('coupon_end_time','', 'trim');
			$pic_url			= I('pic_url','', 'trim');
			$shop_type			= I('shop_type','', 'trim');
			$intro				= I('intro','', 'trim');
            $likes            = rand(99,9999);
			

			$data['num_iid']			= $num_iid;
			$data['sex']			    = $sex;
			$data['cate_id']			= $cate_id;
			$data['title']				= $title;
			$data['realname']		    = $realname;
			$data['mobile']			    = $mobile;
			$data['commission']				    = $commission;
			$data['commission_rate']				    = $commission_rate;
			$data['qq']				    = $qq;
			$data['nick']				= $nick;
			$data['price']				= $price;
			$data['coupon_price']		= $coupon_price;
			$data['coupon_start_time']	= strtotime($coupon_start_time);
			$data['coupon_end_time']	= strtotime($coupon_end_time);
			$data['inventory']			= $inventory;
			$data['ems']				= $ems;;
			$data['likes']              = $likes;
			$data['coupon_rate']        = $coupon_rate;
			$data['sellerId']           = $sellerId;
			$data['desc']               = $desc;
			$data['volume']				= $volume;
			$data['pic_url']			= $pic_url;
			$data['intro']				= $intro;
			$data['shop_type']			= $shop_type;
			$data['add_time']			= time();
			$data['pass']				= 0;
			$data['uid']				= $this->visitor->info['id'];
			$data['uname']				= $this->visitor->info['username'];
            $data['coupon_start_time']			= strtotime($coupon_start_time);
		    $data['coupon_end_time']			= strtotime($coupon_end_time);
			$items_mod->create($data);
			if($this->_mod->where(array('num_iid'=>$data['num_iid']))->count()){
			if($items_mod->where(array('num_iid'=>$data['num_iid']))->save()){
			$resp = $this->fetch('dialog:goods_save_success');
			$this->ajaxReturn(1, '', $resp);
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
			}else{
			if($items_mod->add()){
			$resp = $this->fetch('dialog:goods_add_success');
			$this->ajaxReturn(1, '', $resp);
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
			}
		}
	}

	public function my() {
		$item_mod = M('items');
		$cate_mod = M('items_cate');
		$page_size = 20;
        $p = I('p',1, 'intval'); //页码
        $start = $page_size * ($p - 1) ;

        $res = $cate_mod->field('id,name')->select();
        $cate_list = array();
        foreach ($res as $val) {
            $cate_list[$val['id']] = $val['name'];
        }
        $this->assign('cate_list', $cate_list);
		$type = I('type', 'all', 'trim'); //排序
		$order = 'ordid asc ';
		$map['uid'] = $this->visitor->info['id'];
		switch ($type) {
            case 'all':
                break;
            case 'pass':
                $map['pass'] = 1;   
                break;
			case 'wait':
				$map['pass'] = 0;
				$map['status'] = 'underway';
                break;
			case 'fail':
                $map['pass'] = 0; 
				$map['status'] = 'fail';
                break;
        }
		$goods_list = $item_mod->where($map)->order('add_time desc')->limit($start . ',' . $page_size)->select();
		$this->assign('goods_list', $goods_list);
		$count = $item_mod->where($map)->count('id');
		$pager = $this->_pager($count, $page_size);
        $this->assign('page_bar', $pager->kshow());
        $this->assign('page_btn', $pager->zshow());
		$this->assign('type', $type);
		$this->_config_seo(array(
            'title' => L('my_goods') . '	-	' . C('ftx_site_name'),
        ));
		$this->assign('nav_currr', 'my');
		$this->display();
	}

	public function yaoqiu(){
		$this->_config_seo(array(
            'title' => '活动要求 — ' ,
        ));
		$this->assign('nav_currr', 'yaoqiu');
		$this->display();
	}

	public function shenhe(){
		$this->_config_seo(array(
            'title' => '审核说明 — ' ,
        ));
		$this->assign('nav_currr', 'shenhe');
		$this->display();
	}

	public function recharge()
	{
		$this->_config_seo(array(
            'title' => '充值 — ' ,
        ));
		$this->assign('nav_currr', 'recharge');
		$this->display();
	}


	public function view(){
		$id = I('id','','trim');
        !$id && $this->_404();
		$item = $this->_mod->where(array('id' => $id))->find();
		!$item && $this->_404();
		if($item['uname'] != $this->visitor->info['username']){
			 $this->redirect('baoming/my');
		}

		$this->assign('item', $item);
		$this->_config_seo(array(
            'title' => '报名管理	-	' . C('ftx_site_name'),
        ));
		$this->display();
	}

	/**
     * AJAX提交
     */
	public function ajaxedit(){
		if(IS_POST){
			$items_mod			= M('items');
			$num_iid			= I('iid','', 'trim');
			if($num_iid == ''){
				$this->ajaxReturn(1005, '商品IID不能为空，请输入宝贝地址获取');
			}
			$id					= I('id','', 'trim');
			if($id == ''){
				$this->ajaxReturn(1005, 'ID不能为空，请返回正常渠道提交！');
			}
			$cate_id			= I('cate_id','', 'trim');
			$sex			    = I('sex','', 'trim');
			$likes            = rand(99,9999);
			$sellerId             = I('sellerId',0,'trim');
			$title				= I('title','', 'trim');
			!$title && $this->ajaxReturn(1005, '商品名称不能为空');
			$realname				= I('realname','', 'trim');
			$mobile				= I('mobile','', 'trim');
			$qq				       = I('qq','', 'trim');
			$nick				= I('nick','', 'trim');
			!$nick && $this->ajaxReturn(1005, '掌柜名称不能为空');
			$price				= I('price','', 'trim');
			$coupon_price		= I('good_price','', 'trim');
			$inventory			= I('good_inventory','', 'trim');
			$ems				= I('ems','', 'trim');
			$volume				= I('volume','', 'trim');
			$coupon_rate		= I('coupon_rate','', 'trim');			
			$pic_url			= I('pic_url','', 'trim');
			$shop_type			= I('shop_type','', 'trim');
			$coupon_start_time	= I('coupon_start_time','', 'trim');
			$coupon_end_time	= I('coupon_end_time','', 'trim');
			$intro				= I('intro','', 'trim');
			$desc				= I('desc','', 'trim');
			$map['num_iid']		= $num_iid;
			$map['id']			= $id;
			$map['uname']		= $this->visitor->info['username'];

			$items = $items_mod->where($map)->find();
			!$items && $this->ajaxReturn(1005, L('item_not_exist'));


			$data['cate_id']		= $cate_id;
			$data['title']			= $title;
			$data['sex']			= $sex;
			$data['price']			= $price;
			$data['realname']		= $realname;
			$data['mobile']			= $mobile;
			$data['qq']				    = $qq;			
			$data['sellerId']       = $sellerId;
			$data['coupon_rate']    = $coupon_rate;
			$data['coupon_price']	= $coupon_price;
			$data['inventory']		= $inventory;
			$data['pic_url']		= $pic_url;
			$data['ems']			= $ems;
			$data['likes']          = $likes;
			$data['volume']			= $volume;
			$data['intro']			= $intro;
			$data['desc']			= $desc;
			$data['coupon_start_time']			= strtotime($coupon_start_time);
			$data['coupon_end_time']			= strtotime($coupon_end_time);
			$data['shop_type']		= $shop_type;
			$data['add_time']		= time();
			$data['pass']			= 0;
			$data['status']			= 'underway';
			 if (false == $this->_mod->create($data)) {
                $this->error($this->_mod->getError());
            }
			if($this->_mod->where(array('id'=>$id))->save($data)){
				$resp = $this->fetch('dialog:goods_edit_success');
				$this->ajaxReturn(1, $resp);	
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
		}
	}

	public function get_id( $url ) {
	  $id = 0;
	  $parse = parse_url( $url );
	  if ( isset( $parse['query'] ) ) {
	  parse_str( $parse['query'],$params );
	  if ( isset( $params['id'] ) ) {
	  $id = $params['id'];
	  return $id;
	  }
	  if ( isset( $params['item_id'] ) ) {
	  $id = $params['item_id'];
	  return $id;
	  }
	  if ( isset( $params['default_item_id'] ) ) {
	  $id = $params['default_item_id'];
	  }
	  }
	  return $id;
	}
   }
   function getInfo($url){
		$u = parse_url($url);
        $param = convertUrlQuery($u['query']);        
        $itemurl = "http://item.taobao.com/item.htm?id=".$param['id'];
		$itemurl = urlencode($itemurl);
        $data = getitemInfo($itemurl);
        $data['num_iid'] = $param['id'];
		$api_config = M('items_site')->where(array('code' => 'taobao'))->getField('config');
        $config = unserialize($api_config);
		$c = new TopClient;		
        $c->appkey = $config['app_key'];
        $c->secretKey = $config['app_secret'];
		$req = new TbkItemInfoGetRequest;
		$req->setFields("small_images");
		$req->setPlatform("1");
		$req->setNumIids($param['id']);
		$resp = $c->execute($req);
        $otheritem = objtoarr($resp);
		$citem = $otheritem['results']['n_tbk_item'][0]['small_images'];
		foreach($citem[string] as $val){
		$img .= '<img class="lazy" src=" '. $val . '" alt="商品详情图片">';		
		}
		$data['desc'] = $img;
		return $data;
	}
	function getitemInfo($url){
		$sourl = "http://pub.alimama.com/items/search.json?q=" . $url . "&_t=1453007295246&auctionTag=&perPageSize=50&shopTag=&pvid=10_10.181.136.131_407_1453007270445&_tb_token_=test";
		$ftxia_https = new ftxia_https();
		$ftxia_https->fetch($sourl);
		$content = $ftxia_https->results;
		if(!$content){
		$content = file_get_contents($sourl);
		}
		$dapi = json_decode($content,true);        
		$info = array();
		$info['title'] = $dapi['data']['pageList'][0]['title'];
		$tag_list = D('items')->get_tags_by_title($info['title']);
		$tags = implode(',', $tag_list);	
		$info['tags'] = $tags;
		$info['ems'] = $ems;
		$info['num_iid'] = $dapi['data']['pageList'][0]['auctionId'];
		$info['pic_url'] = $dapi['data']['pageList'][0]['pictUrl'];
		$info['price'] = $dapi['data']['pageList'][0]['reservePrice'];
		$info['coupon_price'] = $dapi['data']['pageList'][0]['zkPrice'];				
		$info['nick'] = $dapi['data']['pageList'][0]['nick'];
		$info['sellerId'] = $dapi['data']['pageList'][0]['sellerId'];
		$info['commission'] = $dapi['data']['pageList'][0]['tkCommFee'];
		$info['commission_rate'] = $dapi['data']['pageList'][0]['tkRate']*100;
		$info['volume'] = $dapi['data']['pageList'][0]['biz30day'];
		$type = $dapi['data']['pageList'][0]['userType'];
		if($type==1){$info['type'] = "B";}else{$info['type'] = "C"; }
        return $info;	
	}
	function convertUrlQuery($query)
	{
			$queryParts = explode('&', $query);
			$params = array();
			foreach ($queryParts as $param)
			{
				$item = explode('=', $param);
				$params[$item[0]] = $item[1];
			}
			return $params;
	}
	?>