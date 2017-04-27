<?php
class tagAction extends FrontAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('tag');        
    }

	
 
	public function index() {
	    $p		= I('p',1 ,'intval'); //页码		
		$order	= 'id desc';
		$where['pass'] = '1';		
		$page_size = 510;
        $p = I('p',1, 'intval'); //页码
		$index_info['p']=$p;
        $start = $page_size * ($p - 1) ;
        $item_mod = M('tag');
        $items_list = $item_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		$items = array();		
		foreach($items_list as $key=>$val){
			$items[$key]			= $val;			
		}		
		$this->assign('items_list', $items);
		$this->assign('index_info',$index_info);
		$count = $item_mod->where($where)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->jshow());
		$this->assign('total_item',$count);
        $this->assign('nav_curr', 'tag');    
		$this->_config_seo(C('ftx_seo_config.tag_index'));			
		$this->assign('pager','index');
        $this->display('index');
    }
	
	public function view() {
	$id = I('k', '','trim');
	$item_mod = M('tag');
	$item = $item_mod->where(array('ename' => $id))->find();	
	$k = $item['name'];
	$tagid = $item['id'];
	$k = urlencode($k);	
	if(C('ftx_tag_auto')==1){
	$autonum = C('ftx_tag_auto_num');	
    $tagurl = "http://suggest.taobao.com/sug?code=utf-8&q=".$k;
	$ftxia_https = new ftxia_https(); 
	$ftxia_https->fetch($tagurl);		       	
	$sources = $ftxia_https->results;
	$tdata = json_decode($sources,true);
	$tinfo = array();
	for($i=0;$i<$autonum;$i++){
	$tinfo['name'] =  $tdata['result'][$i][0];
	$pinyin = new pinyin();  
	$tinfo['ename'] = $pinyin -> getAllPY($tinfo['name']);	
	$tinfo['ename'] = str_replace(" ","",$tinfo['ename']);
	if (!$this->_mod->where(array('ename'=>$tinfo['ename']))->count()) {    
	$this->_mod->add($tinfo);
	} 
	}
	$title = $tdata['result'][0][0].','.$tdata['result'][1][0].','.$tdata['result'][2][0].','.$tdata['result'][3][0].','.$tdata['result'][4][0].','.$tdata['result'][5][0].','.$tdata['result'][6][0].','.$tdata['result'][7][0].','.$tdata['result'][8][0].','.$tdata['result'][9][0];
	}
	
	$page_size = 60;
       $p = $this->_get('p', 'intval', 1);
		if($p%2 == 0){
		$ppage=0;
		$pageNav='true';
		}else{
		$ppage = ($p+1)/2;
		$pageNav='false';
		}
		$taodianjin = C('ftx_taojindian_html');
		if(strpos($taodianjin,'text/javascript')){
			$pid = get_word($taodianjin,'pid: "','"');
		}else{
			$pid = $taodianjin;
		}
				
        $sourl = "http://ai.taobao.com/search/getItem.htm?_tb_token_=4fx6Pb6Bvqn&__ajax__=1&pid=".$pid."&unid=199&key=".$k."&page=".$p."&pageSize=60&ppage=".$ppage."&maxPageSize=200&neednav=1&npx=100&pageNav=".$pageNav."&sourceId=search&specialCount=6&target=item";
        $ftxia_https = new ftxia_https(); 
        $ftxia_https->fetch($sourl);		       	
		$source = $ftxia_https->results;
		if(!$source){
			$source = file_get_contents($sourl);
			}			
        $data = json_decode($source,true);
		$info = array();
		if($source){
		for($i=0;$i<60;$i++){			
		$info['title'] = strip_tags(htmlspecialchars_decode($data['result']['auction'][$i]['description']));
		
		$info['title']  = str_replace("&lt;em&gt;", "", $info['title']);
		$info['title']  = str_replace("&lt;/em&gt;", "", $info['title']);
		$info['pic_url'] =$data['result']['auction'][$i]['originalPicUrl'];
        $info['num_iid']= $data['result']['auction'][$i]['itemId'];
		$info['intro'] = $data['result']['auction'][$i]['comment'];	
		$info['cu'] = $data['result']['auction'][$i]['itemLocation'];	
		$info['coupon_price']= $data['result']['auction'][$i]['realPrice'];
		$info['price']= $data['result']['auction'][$i]['price'];
		$info['volume'] = $data['result']['auction'][$i]['saleCount'];	
		$info['click_url']= $data['result']['auction'][$i]['clickUrl'];
		$info['type']= $data['result']['auction'][$i]['userType'];
		$info['coupon_start_time']= time();		
		if($info['type']=='0'){
		$info['shop_type'] = C;
		}else{
		$info['shop_type'] = B;
		}
		$info['zk'] = round(($info['coupon_price']/$info['price'])*10, 1); 
		
		$result['item_list'][]=$info;		
		}
		}
		$taobaoke_item_list = $result['item_list'];
		foreach ($taobaoke_item_list as $key => $vol) {
		$taokeitem[$key] = $vol;		
		}
	   $this->assign('taobaoke_item_list', $taokeitem);
	   $this->assign('index_info',$index_info);	   
	   $this->assign('tinfo',$tinfo);
	   $this->assign('title',$title);
	   $this->assign('item',$item);
	   $this->assign('tagid',$tagid);
	   $count = 1000;		
	   $pager = $this->_pager($count, $page_size);
	   $this->assign('page', $pager->jshow());	
	   $this->_config_seo(C('ftx_seo_config.tag'), array(
	        'tagname' => $title,
			'title' => $item['name'],
			'keywords'=>$item['name'].','.$title,
			'description'=>"为您提供淘宝".$item['name']."相关品牌信息，".$item['name']."哪个牌子好，价格怎么样，以及".$item['name']."十大品牌排行榜资讯信息。",
        ));	   
	   $this->display('view');
	}
}