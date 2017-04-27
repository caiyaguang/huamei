<?php
class queqiaoAction extends BackendAction {
	public function _initialize() {
        parent::_initialize();   
		$this->_mod = D('queqiao');
    }

	   public function _before_index() {
            $this->sort = 'ordid ASC,';
            $this->order ='add_time DESC';
        }
		protected function _search() {
            $map = array();
            ($time_start = $this->_request('time_start', 'trim')) && $map['add_time'][] = array('egt', strtotime($time_start));
            ($time_end = $this->_request('time_end', 'trim')) && $map['add_time'][] = array('elt', strtotime($time_end)+(24*60*60-1));
            ($price_min = $this->_request('price_min', 'trim')) && $map['coupon_price'][] = array('egt', $price_min);
            ($price_max = $this->_request('price_max', 'trim')) && $map['coupon_price'][] = array('elt', $price_max);
            ($keyword = $this->_request('keyword', 'trim')) && $map['title'] = array('like', '%'.$keyword.'%');
            $this->assign('search', array(
            'time_start' => $time_start,
            'time_end' => $time_end,
            'price_min' => $price_min,
            'price_max' => $price_max,            
            'keyword' => $keyword,
            ));
            return $map;
        }
		public function clear(){
            if(IS_POST){
                if ($_REQUEST['isok'] == "1") {
                    $action	= $this->_post('action', 'trim');
                    $where = '1=1';
                    if('outtime' == $action){
                        $where.=" AND pass=1  AND coupon_end_time <".time();
                    }elseif('clear' == $action){
                        $db_file = CONF_PATH . 'db.php';
                        $db = require $db_file;
                        $sql = 'TRUNCATE TABLE '.$db['DB_PREFIX'].'queqiao ';
                        $mes = M()->execute($sql);
                        $this->success(L('clear_success'));
                    }

                    $this->_mod->where($where)->delete();
                    $this->success(L('clear_success'));
                }else{
                    $this->success('确认是否要删除？', U('queqiao/clear'));
                }
            }else{
                $this->display();
            }
        }
       public function edit() {
            if (IS_POST) {
                
                if (false === $data = $this->_mod->create()) {
                    $this->error($this->_mod->getError());
                }                
                $item_id = $data['id'];
                $data['coupon_start_time'] = strtotime($data['coupon_start_time']);
                $data['coupon_end_time'] = strtotime($data['coupon_end_time']);
                
                $this->_mod->where(array('id'=>$item_id))->save($data);
                $this->success(L('operation_success'));
            } else {
                $id = $this->_get('id','intval');
                $item = $this->_mod->where(array('id'=>$id))->find();
                
                $this->assign('info', $item);
                
                $this->display();
            }
        }

        public function delete_search() {
            if (isset($_REQUEST['dosubmit'])) {
                if ($_REQUEST['isok'] == "1") {
                    //搜索
                    $where = '1=1';
                    $keyword = trim($_POST['keyword']);                   
                    $time_start = trim($_POST['time_start']);
                    $time_end = trim($_POST['time_end']);                    
                    $min_price = trim($_POST['min_price']);
                    $max_price = trim($_POST['max_price']);

                    if ($keyword != '') {
                        $where .= " AND title LIKE '%" . $keyword . "%'";
                    }
                    
                    if ($time_start != '') {
                        $time_start_int = strtotime($time_start);
                        $where .= " AND coupon_end_time>='" . $time_start_int . "'";
                    }
                    if ($time_end != '') {
                        $time_end_int = strtotime($time_end);
                        $where .= " AND coupon_end_time<='" . $time_end_int . "'";
                    }
                    
                    if ($min_price != '') {
                        $where .= " AND coupon_price>=" . $min_price;
                    }
                    if ($max_price != '') {
                        $where .= " AND coupon_price<=" . $max_price;
                    }
                    
                    $this->_mod->where($where)->delete();
                    $this->success('删除成功', U('queqiao/clear'));
                } else {
                    $this->success('确认是否要删除？', U('queqiao/clear'));
                }
            } else {
                $this->display();
            }
        }
		public function addtm() {
        if (IS_POST) {
		    $coupon_start_time	= strtotime($_POST['coupon_start_time']);
            $coupon_end_time	= strtotime($_POST['coupon_end_time']);
            $datas['coupon_start_time'] = $coupon_start_time;
			$datas['coupon_end_time'] = $coupon_end_time;
            $ids = $this->_post('ids');                        
            $ids_arr = explode(',', $ids);
            $this->_mod->where(array('id' => array('in', $ids)))->save($datas);
            $this->ajaxReturn(1, L('operation_success'), '', 'addtm');
        } else {
            $ids = trim($this->_request('id'), ',');
            $this->assign('ids', $ids);
            $resp = $this->fetch();
            $this->ajaxReturn(1, '', $resp);
        }
    }
	
   
    
  
}