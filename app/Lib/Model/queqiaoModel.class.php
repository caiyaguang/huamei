<?php
class queqiaoModel extends Model
{
    protected $_auto = array(
        array('add_time', 'time', 1, 'function'),
		
    );
    public function ajax_tj_publish($item) {		
		$result['title']			= $item['title'];		
		$result['pic_url']			= $item['pic_url'];		
		$result['coupon_price']		= $item['coupon_price'];
		$result['price']			= $item['price'];		
		$result['volume']			= $item['volume'];		
		$result['coupon_end_time']	= $item['coupon_end_time'];
		$result['coupon_start_time']= $item['coupon_start_time'];
        if ($this->where(array('title'=>$item['title']))->count()) {
           return 0;
        }		
        $this->create($item);
        $item_id = $this->add();
        if ($item_id) {
            return 1;
        } else {
            return 0;
        }
    }
	
	
    public function status($status, $stime ,$etime) {
		
		if($stime>time()){
			return 'start';
		}elseif($etime<time()){
			return 'gone';
		}else{
			return 'buy';
		}
	}
	

	

}