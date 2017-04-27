<?php
class tehuiModel extends Model
{
    //自动完成
    protected $_auto = array(
        array('add_time', 'time', 1, 'function'),
		array('pass',1),
    );
	
	public function ajax_tb_publish($item) {
		$result['title']			    = $item['title'];
		$result['item_id']			    = $item['item_id'];
		$result['tags']			        = $item['tags'];
		$result['intro']			    = $item['intro'];
		$result['pic_url']			    = $item['pic_url'];
		$result['click_url']			= $item['click_url'];
		$result['price']			    = $item['price'];
		$result['zprice']		        = $item['zprice'];
		$result['uname']			    = $item['uname'];
		$result['desc']			        = $item['desc'];
		$result['cate_id']	            = $item['cate_id'];
		$result['zk']			        = $item['zk'];			
		$robot_setting = F('robot_setting');
        if ($this->where(array('item_id'=>$item['item_id']))->count()) {
		   $result['msg']	= '已经添加!';
           return $result;
        }   
		$item['pass'] = 1;
        $this->create($item);
        $item_id = $this->add();
        if ($item_id) {
            return 1;
        } else {
            return 0;
        }
    }
	public function get_tags_by_title($title, $num=8){
        vendor('pscws4.pscws4', '', '.class.php');
        $pscws = new PSCWS4();
        $pscws->set_dict(FTX_DATA_PATH . 'scws/dict.utf8.xdb');
        $pscws->set_rule(FTX_DATA_PATH . 'scws/rules.utf8.ini');
        $pscws->set_ignore(true);
        $pscws->send_text($title);
        $words = $pscws->get_tops($num);
        $pscws->close();
        $tags = array();
        foreach ($words as $val) {
            $tags[] = $val['word'];
        }
        return $tags;
    }
}