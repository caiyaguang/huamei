<?php

class jumpAction extends FrontAction {

    public function _initialize() {
        parent::_initialize();
		$this->_mod = D('items');
		$this->_commentmod = M('items_comment');
    }

    /**
     * 淘宝跳转
     */
    public function index() {
		$id = I('id','', 'trim');				
		$iid = $this->_mod->where(array('id'=>$id))->getField('num_iid');
		$iids = $this->_commentmod->where(array('iid'=>$id))->getField('iid');
		if(!$iids){$shopUrl = "http://hws.m.taobao.com/cache/wdetail/5.0/?id=".$iid;}else{$shopUrl = "http://hws.m.taobao.com/cache/wdetail/5.0/?id=".$iids;}		
		$ch1 = curl_init(); 
        curl_setopt($ch1, CURLOPT_URL, $shopUrl);
        curl_setopt($ch1, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch1, CURLOPT_FOLLOWLOCATION,true);
        curl_setopt($ch1, CURLOPT_MAXREDIRS,2);
        $contents = curl_exec($ch1);
        curl_close($ch1);	
		if(!$contents){
			$contents = file_get_contents($shopUrl);
		    }				
		$comslist = json_decode($contents,true);	
	    $info = array();
		$info['feedback'] = $comslist['data']['rateInfo']['rateDetailList'][0]['feedback'];
		$info['nicker'] = $comslist['data']['rateInfo']['rateDetailList'][0]['nick'];
		$info['pic_url'] = $comslist['data']['itemInfoModel']['picsPath'][0];
        $info['pic_url'] = str_replace("_320x320.jpg","",$info['pic_url']);
		$feedback = $info['feedback'];
		$nicker = $info['nicker'];
		$pic = $info['pic_url'];
		$tpl = 'index';
		if($id){
			if(strlen($id)>9){
					$item = $this->_mod->where(array('num_iid' => $id))->find();
			}else{
				$item = $this->_mod->where(array('id' => $id))->find();
			}
			if(!$item){
				$item['num_iid'] = $id;	
			}
		}
		if($iid){
			$this->_mod  = M('items');
			$item = $this->_mod ->where(array('num_iid' => $iid))->find();
			if(!$item){
				$item['num_iid'] = $iid;	
			}
		}
		if(C('ftx_click_ai')){
			$tpl = 'taobao';
			if( $item['click_url'] && 0 < strpos( $item['click_url'], "s.click" ) ){
				$this->jump_hidden_referer( $item['click_url'] );
			}else if ( 0 < strpos( $item['click_url'], "redirect.simba.taobao.com" ) ){
				$this->jump_hidden_referer( $item['click_url'] );
			}
		}

		$taodianjin = C('ftx_taojindian_html');
		if(strpos($taodianjin,'text/javascript')){
			$pid = get_word($taodianjin,'pid: "','"');
		}else{
			$pid = $taodianjin;
		}
		$this->assign('pid', $pid);
		$this->assign('item', $item);
		$this->assign('pic', $pic);
		$this->assign('nicker', $nicker);
		$this->assign('feedback', $feedback);
        $this->display($tpl);
    }


	public function jump_hidden_referer( $url, $wait = 0 )
    {
        $s = "<script language=\"javascript\">var iurl=\"".$url."\";document.write(\"<meta http-equiv=\\\"refresh\\\" content=\\\"0;url=\"+iurl+\"\\\" />\");</script>";
        if ( strpos( $_SERVER['HTTP_USER_AGENT'], "AppleWebKit" ) )
        {
            $s = "<script language=\"javascript\">var iurl=\"data:text/html;base64,".base64_encode( $s )."\";document.write(\"<meta http-equiv=\\\"refresh\\\" content=\\\"".$wait.";url=\"+iurl+\"\\\" />\");</script>";
        }
        else
        {
            $s = str_replace( "\"0;", "\"".$wait.";", $s );
        }
        echo $s;
        exit( );
    }
}