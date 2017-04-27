<?php
//采集器类
class importAction extends FrontAction {
	public function index(){
		$itemDb = M('Items');
		$key = I("key",'0','trim');
		$timeBegin = I("timeBegin",'0','trim');
		$timeEnd = I("timeEnd",'0','trim');
		$items = htmlspecialchars_decode($_POST["items"]);
		$goodsArr = json_decode($items,true);
		$robots_key = C("ftx_robots_key");
		$data = array();
		$i = 0;
		if($key == $robots_key && $key != 0){
			foreach($goodsArr as $item){
  	
				if(!$itemDb->where(array('num_iid'=>$item['num_iid']))->count()){
										
					$data['ordid'] = $item['tui_sort'];
					$data['cate_id'] = $item['cid'];
					$data['num_iid'] = $item['num_iid'];
					$data['title'] = $item['title'];
					$data['nick'] = $item['nick'];
					$data['uname'] = "robots";
					$data['pic_url'] = $item['pic_url'];
					$data['price'] = $item['price'];
					$data['coupon_price'] = $item['coupon_price'];
					$data['item_url'] = $item['detail_url'];//链接
					$data['volume'] = $item['volume'];//数量
					$data['commission'] = $item['commission'];//佣金
					$data['coupon_start_time'] = $timeBegin;
					$data['coupon_end_time'] = $timeEnd;
					$data['inventory'] = $item['num'];
					$data['pass'] = 1;
					$data['status'] = "underway";
					$data['click_url'] = "";
					$data['add_time'] = time();
					$data['content'] = base64_decode($item['content']);
					//包邮
					if($item['freight_payer'] == 'seller'){
						$data['ems'] = 1;
					}else{
						$data['ems'] = 0;
					}
					//店铺类型
					if($item['tmall'] == 1){
						$data['shop_type'] = "B";
					}else{
						$data['shop_type'] = "C";
					}

					$count = $itemDb->add($data);
					if($count){
						$i++;
					}
					
				}
					
			}
			
			echo "共采集".$i."条";
		}else{
			echo "秘钥设置不正确,请 联系QQ 422677261 解决";
		}

	}

}