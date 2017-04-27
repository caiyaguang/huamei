<?php
class article_urlModel extends Model
{
    protected $_auto = array(        
		array('pass',1),
    );
    
      
/**
     * ajax发布店铺
     */
    public function ajax_aurl_publish($item) {		
		$result['title']			= $item['title'];
		$result['url']			    = $item['url'];
		$result['onlyid']			= $item['onlyid'];
        //已经存在？
        if ($this->where(array('onlyid'=>$item['onlyid']))->count()) {
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
    

}