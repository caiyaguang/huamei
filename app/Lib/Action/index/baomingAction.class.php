<?php
class baomingAction extends FrontAction {
    public function _initialize() {
        parent::_initialize();
        if (!$this->visitor->is_login) {
            IS_AJAX && $this->ajaxReturn(0, L('login_please'));
            $this->redirect('user/login');
        }
		$this->_mod = D('items');
		$this->_paymod = D('paydays');
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
        //付费报名验证
        if (C('ftx_site_haopinzhebao') == 1) {
        	$baotype = explode('|', C('ftx_site_hpzbaptype') ) ; 
        	$yanzbaotype  =  in_array('baoming',$baotype ); //成功返回1 没有返回null
        	if ($yanzbaotype == 1) {
        		if ($info['signup'] <= 0) {
        			$this->error('您的报名机会已经用完啦！',U('baoming/my'));
        		}
        	}
        }

        $paydays_list = M('paydays')->where(array('pass'=>1))->select();
		$this->assign('paydays_list',$paydays_list);
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
	public function ajaxGetItem()
{

	if(!isset($_REQUEST['url']))
	$this->ajaxReturn (0,'未传入商品链接');
	$info = getInfo($_REQUEST['url']);	
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
			$realname			= I('realname','', 'trim');
			$mobile				= I('mobile','', 'trim');
			$bao_type		    = I('bao_type','', 'trim');
			$qq				    = I('qq','', 'trim');
			$cu				    = I('cu','', 'trim');
			$nick				= I('nick','', 'trim');
			!$nick && $this->ajaxReturn(1005, '掌柜名称不能为空');
			$sellerId           = I('sellerId',0,'trim');
			$desc				= I('desc','', 'trim');
			$price				= I('price','', 'trim');
			$ems				= I('ems','', 'trim');
			$volume				= I('volume','', 'trim');
			$coupon_rate		= I('coupon_rate','', 'trim');			
			$coupon_price		= I('coupon_price','', 'trim');
			$inventory			= I('inventory','', 'trim');			
			$pic_url			= I('pic_url','', 'trim');
			$shop_type			= I('shop_type','', 'trim');
			$intro				= I('intro','', 'trim');
            $likes              = rand(99,9999);
			$payor = C('ftx_site_pay');
			if($payor==1){
			$paydays		    = I('paydays','', 'trim');
			$data['payid']		= $paydays;
			}else{
			$coupon_start_time	= I('coupon_start_time','', 'trim');
			$coupon_end_time	= I('coupon_end_time','', 'trim');
			$data['coupon_start_time']	= strtotime($coupon_start_time);
			$data['coupon_end_time']	= strtotime($coupon_end_time);
			}
            $items = $items_mod->where(array('num_iid' => $num_iid))->find();
			$items && $this->ajaxReturn(1005, L('item_exist'));
			
			$data['num_iid']			= $num_iid;
			$data['sex']			    = $sex;
			$data['cu']			        = $cu;
			$data['cate_id']			= $cate_id;
			$data['title']				= $title;
			$data['realname']		    = $realname;
			$data['mobile']			    = $mobile;
			$data['qq']				    = $qq;
			$data['nick']				= $nick;
			$data['price']				= $price;
			$data['baotype']			= $bao_type;	
			$data['coupon_price']		= $coupon_price;			
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
  
			if($payor==1){
			// $pays = $this->_paymod->where(array('id' => $paydays))->find();			
			$items_mod->create($data);
			// 付款
			$urlcs = array(
				'fkid'=>base64_encode($data['num_iid']),
				'typeid'=>base64_encode($data['baotype']),
				'price' => base64_encode($data['price']),
				'sellerId' => base64_encode($data['sellerId']),
				'likes'  => base64_encode($data['likes'])
			);
			$href = U('baoming/payitems',$urlcs);

			$payemail = C('ftx_alipay');
			$payurl = '<div class="pay"><p class="tips_success">恭喜您，报名成功！</p><a class="gopay" target="_blank" href="'.$href.'"><span>去付款</span></a></div>';
			$paydata['purl'] = $payurl;
			if($items_mod->add()){	
				$getyanz = $this->signupyanz(); 
			    $resp = $this->fetch('dialog:goods_add_success');
				$this->ajaxReturn(1, $paydata, $resp);
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
			}else{
			$items_mod->create($data);
			if($items_mod->add()){
				$getyanz = $this->signupyanz(); 
				$resp = $this->fetch('dialog:goods_baoadd_success');
				$this->ajaxReturn(1, '', $resp);
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
			}
		}
	}

	/**
	 * [signupyanz 执行报名次数 -- ]
	 * @author HaoPinzhe.com
	 * private
	 */
	private  function signupyanz(){
		$memberinfo = $this->visitor->get();
		$uid = $memberinfo['id'];
		$signup = $memberinfo['signup'];
		if (!empty($signup)  && $signup >0  ) {
			$data['signup'] = $signup - 1;
			$result = M('user')->where(array('id'=>$uid))->save($data );
			return $result ;
		}
	}
 

	/**
	 * pay 付款页面
	 * @author HaoPinzhe
	 */
	public function payitems() {
		$data['iid'] = base64_decode(I('fkid'));
		$data['type'] = base64_decode(I('typeid'));
		if (empty($data['type']) || empty($data['iid'])) {
			$this->error('参数错误',U('baoming/my'));
		}
		$yanzcs = $this->yanzcsHao($data);
		if ($yanzcs == 1) {
			$result['itemInfo'] = D('items')->where(array('num_iid'=>$data['iid']))->find();
			$result['typeInfo'] = D('payitems')->where(array('id'=>$data['type']))->find();
			$result['typeInfo']['orderId'] = 'uid'.$this->visitor->info['id'].'-iid'.$result['itemInfo']['id'];
			$this->assign('itemInfo',$result['itemInfo']);
			$this->assign('typeInfo',$result['typeInfo']);
			$yanzurl = array(
				'numiid'  => base64_encode($result['itemInfo']['num_iid']),
				'id'      => base64_encode($result['itemInfo']['id']),
				'typeid'  => base64_encode($result['typeInfo']['id']),
				'uid'	  => base64_encode($this->visitor->info['username'])
			);
			$alertUrl = U('baoming/paySubmit',$yanzurl);  //点击提交订单弹出页面请求连接
			$this->assign('ajaxUrl',$alertUrl);
		}
		$this->display();
	}


	/**
	 * @return 验证参数是否存在
	 * @author HaoPinzhe
	 */
	private function yanzcsHao($data) {
		if (empty($data)) {
			$this->error('参数错误',U('baoming/my'));
		}
		//验证商品是否存在
		$result = D('items')->where(array('num_iid'=>$data['iid']))->find();
		if ($result) {
			$yanztype = D('payitems')->where(array('id'=>$data['type']))->find();
			if ($yanztype) {
				return 1;
			} else {
				$this->error('套餐信息错误',U('baoming/my'));
			}
		} else {
			$this->error('商品不存在',U('baoming/my'));
		}
	}

	public function paySubmit(){
		$data['numiid'] = base64_decode(I('numiid'));
		$data['id']     = base64_decode(I('id'));
		$data['typeid'] = base64_decode(I('typeid'));
		$data['uid']    = base64_decode(I('uid'));
		$this->assign('paySubmit',$data);
        $haopinzhe = $this->fetch('dialog:payitems');
        $this->ajaxReturn(1, '', $haopinzhe);
	}
 	/** 
 	 * 数据入库处理
 	 * @author HaoPinzhe
 	 */
 	public function paySubmityanz(){
 		$data['itemurl']	= I('itemurl','', 'trim');
 		$data['alipay']		= I('alipay','','trim');
 		$data['alipaynumber']= I('alipaynumber','','trim');
 		$data['username']  = I('username','','trim');
 		$data['itemsId']  = I('itemsId','','trim');
 		$type  = I('type','','trim');
 		$data['relname']  = I('relname','','trim');
 		$data['add_time'] = date("Y-m-d H:i:s", time()); ;
 		$data['numberid'] = 'uid'.$this->visitor->info['id'].'-iid'.$data['itemsId']; //拼接订单编号
 		$yanzItemsid = D('payaudithpz')->where(array('itemsId'=>$data['itemsId']))->find();
 		$yanzAlipay = D('payaudithpz')->where(array('alipaynumber'=>$data['alipaynumber']))->find();

 		//获取套餐信息
 		$typeInfo = D('payitems')->field('id,name,price')->where(array('id'=>$type))->find();
 		$data['typeprice']  = $typeInfo['price'];
 		$data['typename']   = $typeInfo['name'];
 		//入库处理
 		if ($yanzAlipay) {
 			$this->ajaxReturn(0,'支付流水号已存在,请检查！');
 		} else {
	 		if ($yanzItemsid) {
	 			$this->ajaxReturn(2,'商品不是已经提交了吗？',U('baoming/my'));
	 		} else {
		 		$result = D('payaudithpz')->add($data);
		 		if ($result) {
		 			$this->ajaxReturn(1,'操作成功',U('baoming/my'));
		 		} else {
		 			$this->ajaxReturn(0,'操作失败');
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
		$items = array();
		foreach($goods_list as $key=>$vol){
		$items['item_list'][$key]			= $vol;
		$cateid = $vol['cate_id'];
		$cas = $cate_mod->where(array('id' => $cateid))->find();
		$items['item_list'][$key]['cname'] = $cas['name'];
		$payid = $vol['payid'];
		$pays = $this->_paymod->where(array('id' => $payid))->find();
		$items['item_list'][$key]['ptitle'] = $pays['title'];
		// p(ssellerBao($vol['num_iid']));
		$payurl = ssellerBao($vol['num_iid']);
		// $items['item_list'][$key]['purl'] = 'payurl';
		}
		$this->assign('goods_list', $items['item_list']);
		$count = $item_mod->where($map)->count('id');
		$pager = $this->_pager($count, $page_size);        
        $this->assign('page_btn', $pager->zshow());
		$this->assign('type', $type);
		$this->_config_seo(array(
            'title' => L('my_goods') . '	-	' . C('ftx_site_name'),
        ));
		$this->assign('nav_currr', 'my');
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



	
}
function getInfo($url){
		$u = parse_url($url);
		//解析get参数
		$param = convertUrlQuery($u['query']);
		$test['param']=$param;		
		$shopUrl = "http://hws.m.taobao.com/cache/wdetail/5.0/?id=".$param['id'];
		$ch = curl_init(); 
		curl_setopt($ch, CURLOPT_URL, $shopUrl);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
		curl_setopt($ch, CURLOPT_MAXREDIRS,2);
		$file_contents = curl_exec($ch);		
		curl_close($ch);
		if(!$file_contents){
			$file_contents = file_get_contents($shopUrl);
		}
        $data = getTaobaoShopInfo($file_contents);		
		$data['num_iid'] = $param['id'];
		return $data;
	}
	function getTaobaoShopInfo($content){
		$data = json_decode($content,true);		
		$info = array();
		$tmp = json_decode($data['data']['apiStack'][0]['value'],true);
		$info['title'] = $data['data']['itemInfoModel']['title'];
		$info['volume'] = $tmp['data']['itemInfoModel']['totalSoldQuantity'];
		$info['shop_type'] = $data['data']['seller']['type'];
		$info['emss'] = $tmp['data']['delivery']['deliveryFees'][0];
		$ems = $info['emss'];
		if($ems == '卖家包邮'){
		$info['ems'] = 1;
		}else 
		{$info['ems'] = 0;
		}  
		$info['inventory'] = $tmp['data']['itemInfoModel']['quantity'];
		$info['cu'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['name'];
		if(!$info['cu']){
		$info['cu'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['tips'][0]['txt'];
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
		$info['nick'] = $data['data']['seller']['nick'];
		$info['sellerId'] = $data['data']['seller']['userNumId'];
		$descinfo = $data['data']['descInfo']['briefDescUrl'];
		$ftxia_https = new ftxia_https();
		$ftxia_https->fetch($descinfo);
		$source = $ftxia_https->results;
		if(!$source){
			$source = file_get_contents($descinfo);
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