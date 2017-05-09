<?php
class baoshijiuAction extends FrontAction {
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
    }

	
	public function add(){
		$info = $this->visitor->get();
        $this->assign('info', $info);

        if (C('ftx_site_haopinzhebao') == 1) {
        	$baotype = explode('|', C('ftx_site_hpzbaptype') ) ; 
        	$yanzbaotype  =  in_array('baoshijiu',$baotype ); //成功返回1 没有返回null
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
            'title' => '20元封顶活动报名 — ' ,
        ));
		$this->assign('nav_currr', 'baoshijiu');
		$this->display();
	}

	
	public function ajaxGetItem()
{
	if(!isset($_REQUEST['url']))
	$this->ajaxReturn (0,'未传入商品链接');
	$info = getInfo($_REQUEST['url']);	
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
			$realname			= I('realname','', 'trim');
			$mobile				= I('mobile','', 'trim');
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
			$bao_type		    = I('bao_type','', 'trim');
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
			$data['baotype']			= $bao_type;
			$data['cu']			        = $cu;
			$data['cate_id']			= $cate_id;
			$data['title']				= $title;
			$data['realname']		    = $realname;
			$data['mobile']			    = $mobile;
			$data['qq']				    = $qq;
			$data['nick']				= $nick;
			$data['price']				= $price;
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
			$pays = $this->_paymod->where(array('id' => $paydays))->find();			
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
				$memberinfo = $this->visitor->get();
				$uid = $memberinfo['id'];
				$signup = $memberinfo['signup'];
				if (!empty($signup)  && $signup >0  ) {
					$data['signup'] = $signup - 1;
					$result = M('user')->where(array('id'=>$uid))->save($data );
				}

			    $resp = $this->fetch('dialog:goods_shijiu_success');
				$this->ajaxReturn(1, $paydata, $resp);
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
			}else{
			$items_mod->create($data);
			if($items_mod->add()){
				$memberinfo = $this->visitor->get();
				$uid = $memberinfo['id'];
				$signup = $memberinfo['signup'];
				if (!empty($signup)  && $signup >0  ) {
					$data['signup'] = $signup - 1;
					$result = M('user')->where(array('id'=>$uid))->save($data );
				}
				
				$resp = $this->fetch('dialog:goods_baoshijiu_success');
				$this->ajaxReturn(1, '', $resp);
			}else{
				$this->ajaxReturn(0, '数据错误，请检查！');
			}
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