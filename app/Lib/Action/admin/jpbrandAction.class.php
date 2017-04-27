<?php
//华美网络2015-2-15最最新开发卷皮品牌团采集/.
?>
<?php
class jpbrandAction extends BackendAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('brand');
    }

	public function index(){
		$this->display();
	}
	public function setting(){
		if(IS_POST){
			$cate_id		= $this->_post('cate_id', 'trim');
			$brandurl	    = $this->_post('brandurl', 'trim');
			if(!$brandurl){
				$this->ajaxReturn(0, '请填写卷皮尺官方U站某品牌具体地址！');
			}
			if(!$cate_id){
				$this->ajaxReturn(0, '入库分类必须选择！');
			}			
			//把采集信息写入缓存
			F('jpbrand_setting', array(
				'cate_id' => $cate_id,
				'brandurl' => $brandurl,				
			));			
			$this->collect();
		}
	}

    public function collect() {
		if (false === $setting = F('jpbrand_setting')) {
            $this->ajaxReturn(0, L('illegal_parameters'));
        }		
		$url = $setting['brandurl'];		
		$ftxia_https = new ftxia_https();
		$ftxia_https->fetch($url);
		$sources = $ftxia_https->results;
		if(!$sources){
			$sources = file_get_contents($url);
			}
		preg_match('/<div class="brand-banner"(.*?)<div class="zhe-main">/s', $sources, $matchitem);
		$item=$matchitem[1];
		$item = rtrim(ltrim(trim($item), '('), ')'); 
		$ad_pic_url= get_word($item,'style="background:url','no-repeat;">');		
		preg_match_all("/(?:\()(.*)(?:\))/i",$ad_pic_url, $arrad);
		$ad_pic_url = $arrad[1][0];
		$pic_url = get_word($item,'<img src="','">');
		$intro =get_word($item,'<div class="txt">','<\/div>');		
		preg_match_all('/<div class="main-good(.*?)<\/div>/s', $sources, $matchitems);
		$items=$matchitems[1][0];
		$itemurl	= get_word($items,'<a target="_blank" href="','">');
		preg_match("/id=(\d*)/", $itemurl ,$num);
		$iid	=isset($num[1]) ? $num[1] : '';	
		$itemapi = "http://hws.m.taobao.com/cache/wdetail/5.0/?id=".$iid;
		$ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $itemapi);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
        curl_setopt($ch, CURLOPT_MAXREDIRS,2);
        $file_contents = curl_exec($ch);
        curl_close($ch);
        if(!$file_contents){
            $file_contents = file_get_contents($itemapi);
        }
		$data = json_decode($file_contents,true);		
        $info = array();       
		$info['sellerId'] = $data['data']['seller']['userNumId'];
        $info['nick']     = $data['data']['seller']['nick'];
		$info['type']     = $data['data']['seller']['type'];
		if($info['type']=='B'){
		$info['xy'] = 'mall';
		}else{
		$info['xy']       = $data['data']['seller']['creditLevel'];
		}	
        if($info['type']=='B'){		
		$info['hpl'] = '商城保证';
		}else{
		$info['hpl']      = $data['data']['seller']['goodRatePercentage'];
		}
		$info['title']    = $data['data']['seller']['shopTitle'];
		$info['dz']       = $data['data']['itemInfoModel']['location'];
		$info['pic']      = $data['data']['seller']['picUrl'];         
		$info['pf1']      = $data['data']['seller']['evaluateInfo'][0]['score'];
		$info['pf2']      = $data['data']['seller']['evaluateInfo'][1]['score'];
		$info['pf3']      = $data['data']['seller']['evaluateInfo'][2]['score'];
		$info['pfs']      = $info['pf3'] + $info['pf3'] + $info['pf3'];
		$info['pf']       = round(($info['pfs']/3)*1, 1); 
		$sellerId = $info['sellerId'];		
        $murl = 'http://store.taobao.com/shop/view_shop.htm?user_number_id='.$sellerId;
        $ftxia_https = new ftxia_https();
		$ftxia_https->fetch($murl);
		$source = $ftxia_https->results;
		$source = iconv('GBK', 'UTF-8//IGNORE', $source);
		if($info['type']=='B'){
		$info['shop_url']	=get_word($source,'<a class="shop-name" href="','"');   
		}else{
		$info['shop_url']	=get_word($source,'<a class="seller-name J_TGoldlog" href="','"');
		}		
		$title = $info['title'];		
		$itemarray['sellerId']=$info['sellerId'];
		$itemarray['nick']=$info['nick'];
		$itemarray['shop_url']=$info['shop_url'];
		$itemarray['xy']=$info['xy'];		
		$itemarray['type']=$info['type'];	
		$itemarray['hpl']=$info['hpl'];
		$itemarray['title']=$info['title'];
		$itemarray['dz']=$info['dz'];		
		$itemarray['pf']=$info['pf'];
		$itemarray['pic_url']=$pic_url;
		$itemarray['intro']=$intro;				
		$itemarray['ad_pic_url']=$ad_pic_url;		
		$itemarray['cate_id']=$setting['cate_id'];
		$p	 = $this->_get('p', 'intval', 1);
		if($p>1){
		
		}
		if($this->_mod->where(array('sellerId'=>$info['sellerId']))->count())
        {
        $map['sellerId']=$info['sellerId'];
		$this->_mod->where($map)->save($itemarray);
		$this->ajaxReturn(0, '店铺更新成功！');
		$coll ='店铺已存在，本次只作更新！';
         }else{
		$this->_mod->add($itemarray);
		$this->ajaxReturn(0, '店铺采集成功！');
		$coll ='您采集的店铺已成功入库！';
		 }
		
		$this->assign('coll', $coll); 
		$resp = $this->fetch('collect');
		$this->ajaxReturn(1, '', $resp);
    }
  
}