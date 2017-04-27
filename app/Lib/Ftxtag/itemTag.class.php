<?php
/**
 * 宝贝标签
 */
class itemTag {    

    public function orlike($options) {
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$items_mod = D('items');
		$items_cate_mod = D('items_cate');
		$map = array('pass'=>'1');
		if($options['cid']){
			$id_arr = $items_cate_mod->get_child_ids($options['cid'], true);
            $map['cate_id'] = array('IN', $id_arr);
		}

		if(C('ftx_orlike_shop_type')){$map['shop_type'] = C('ftx_orlike_shop_type');}

		if(C('ftx_orlike_time') == '1'){
			$map['coupon_start_time'] = array('egt',time());
		}elseif(C('ftx_orlike_time') =='2'){
			$map['coupon_start_time'] = array('elt',time());
		}
		if(C('ftx_orlike_end_time') == '1'){$map['coupon_end_time'] = array('egt',time());}



		if(C('ftx_orlike_ems') == '1'){$map['ems'] = '1';}

		if(C('ftx_orlike_mix_price')>0){$map['coupon_price'] = array('egt',C('ftx_orlike_mix_price'));}
		if(C('ftx_orlike_max_price')>0){$map['coupon_price'] = array('elt',C('ftx_orlike_max_price'));}
		if(C('ftx_orlike_mix_price')>0 && C('ftx_orlike_max_price')>0){$map['coupon_price'] =  array(array('egt',C('ftx_orlike_mix_price')),array('elt',C('ftx_orlike_max_price')),'and');}
		if(C('ftx_orlike_mix_volume')>0){$map['volume'] = array('egt',C('ftx_orlike_mix_volume'));}
		if(C('ftx_orlike_max_volume')>0){$map['volume'] = array('elt',C('ftx_orlike_max_volume'));}
		if(C('ftx_orlike_mix_volume')>0 && C('ftx_orlike_max_volume')>0){$map['volume'] = array(array('egt',C('ftx_orlike_mix_volume')),array('elt',C('ftx_orlike_max_volume')),'and');}

		$data = $items_mod->where($map)->limit('0,'.C('ftx_orlike_page_size').'')->order(C('ftx_orlike_sort'))->select();
        return $data;
    }


	public function zhi($options) {
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '1';
		$items_mod = D('items');
		$items_cate_mod = D('items_cate');
		$map = array('pass'=>'1');
		$map = array('shop_type'=>'B');
		if($options['cid']){
			$id_arr = $items_cate_mod->get_child_ids($options['cid'], true);
            $map['cate_id'] = array('IN', $id_arr);
		}
		
		if(C('ftx_zhi_shop_type')){$map['shop_type'] = C('ftx_zhi_shop_type');}

		if(C('ftx_zhi_time') == '1'){
			$map['coupon_start_time'] = array('egt',time());
		}elseif(C('ftx_zhi_time') =='2'){
			$map['coupon_start_time'] = array('elt',time());
		}
		if(C('ftx_zhi_end_time') == '1'){$map['coupon_end_time'] = array('egt',time());}

		if(C('ftx_zhi_ems') == '1'){$map['ems'] = '1';}

		if(C('ftx_zhi_mix_price')>0){$map['coupon_price'] = array('egt',C('ftx_zhi_mix_price'));}
		if(C('ftx_zhi_max_price')>0){$map['coupon_price'] = array('elt',C('ftx_zhi_max_price'));}
		if(C('ftx_zhi_mix_price')>0 && C('ftx_zhi_max_price')>0){$map['coupon_price'] =  array(array('egt',C('ftx_zhi_mix_price')),array('elt',C('ftx_zhi_max_price')),'and');}

		if(C('ftx_zhi_mix_volume')>0){$map['volume'] = array('egt',C('ftx_zhi_mix_volume'));}
		if(C('ftx_zhi_max_volume')>0){$map['volume'] = array('elt',C('ftx_zhi_max_volume'));}
		if(C('ftx_zhi_mix_volume')>0 && C('ftx_zhi_max_volume')>0){$map['volume'] = array(array('egt',C('ftx_zhi_mix_volume')),array('elt',C('ftx_zhi_max_volume')),'and');}

		$data = $items_mod->where($map)->limit('0,'.$options['num'])->order('id desc')->select();
        return $data;
    }

	/**
	 *	status  0：默认 1：不显示结束 2：只显示未开始
	 */

	public function lists($options) {
		$items_mod = D('items');
		$map['pass'] = '1';
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '6';
		$options['status'] = isset($options['status']) ? trim($options['status']) : '1';
		$options['min_price'] = isset($options['min_price']) ? trim($options['min_price']) : '';
		$options['max_price'] = isset($options['max_price']) ? trim($options['max_price']) : '';
		$options['min_volume'] = isset($options['min_volume']) ? trim($options['min_volume']) : '';
		$options['max_volume'] = isset($options['max_volume']) ? trim($options['max_volume']) : '';

		if($options['min_price']>0){$map['coupon_price'] = array('egt',$options['min_price']);}
		if($options['max_price']>0){$map['coupon_price'] = array('elt',$options['max_price']);}
		if($options['min_price']>0 && $options['max_price']>0){$map['coupon_price'] = array(array('egt',$options['min_price']),array('elt',$options['max_price']),'and');}

		if($options['min_volume']>0){$map['volume'] = array('egt',$options['min_volume']);}
		if($options['max_volume']>0){$map['volume'] = array('elt',$options['max_volume']);}
		if($options['max_volume']>0 && $options['min_volume']>0){$map['volume'] = array(array('egt',$options['min_volume']),array('elt',$options['max_volume']),'and');}

		if($options['status'] == 1){
			$map['coupon_end_time'] = array('egt',time());
		}else if($options['status'] == 2){
			$map['coupon_start_time'] = array('egt',time());
		}
		if($options['cid']){
			$id_arr = D('items_cate')->get_child_ids($options['cid'], true);
			$map['cate_id'] = array('IN', $id_arr);
		}

        $data = $items_mod->where($map)->limit('0 ,' . $options['num'])->order(C('ftx_index_sort'))->select();
		return $data;
	}
	
	/**
	 *	status  0：默认 1：不显示结束 2：只显示未开始
	 */

	public function brand($options) {
		$branditems_mod = D('brand_items');
		$map['pass'] = '1';		
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '8';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';			
		
		$map['activityId'] = $options['cid'];
			
        $data = $branditems_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;		
	}	
	
	public function hotbrand($options) {
		$brand_mod = D('brand');
		$map['pass'] = '1';
		$map['hot'] = '1';
		$options['id'] = isset($options['id']) ? trim($options['id']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '8';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';		
		if($options['id']){			
		$id_arr = D('brand_cate')->get_child_ids($options['id'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}		
        $data = $brand_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;		
	}	
	public function rebrand($options) {
		$brand_mod = D('brand');
		$map['pass'] = '1';		
		$options['id'] = isset($options['id']) ? trim($options['id']) : '';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';	
		if($options['id']){			
		$id_arr = D('brand_cate')->get_child_ids($options['id'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}		
        $data = $brand_mod->where($map)->order($options['order'])->select();
		return $data;		
	}
	public function morebrand($options) {
		$brand_mod = D('brand');
		$map['pass'] = '1';		
		$options['id'] = isset($options['id']) ? trim($options['id']) : '';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';	
		$options['num'] = isset($options['num']) ? trim($options['num']) : '8';
		if($options['id']){			
		$id_arr = D('brand_cate')->get_child_ids($options['id'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}		
        $data = $brand_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;		
	}
	public function fushibrand($options) {
		$brand_mod = D('brand');
		$map['pass'] = '1';		
		$options['id'] = isset($options['id']) ? trim($options['id']) : '1';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';	
		$options['num'] = isset($options['num']) ? trim($options['num']) : '10';
		if($options['id']){			
		$id_arr = D('brand_cate')->get_child_ids($options['id'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}		
        $data = $brand_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;		
	}
	public function muyingbrand($options) {
		$brand_mod = D('brand');
		$map['pass'] = '1';		
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '5';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';	
		$options['num'] = isset($options['num']) ? trim($options['num']) : '15';
		if($options['cid']){			
		$id_arr = D('brand_cate')->get_child_ids($options['cid'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}		
        $data = $brand_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;		
	}
	public function muying($options) {
		$brand_mod = D('brand_items');
		$map['pass'] = '1';		
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '5';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'ordid asc';	
		$options['num'] = isset($options['num']) ? trim($options['num']) : '8';
		if($options['cid']){			
		$id_arr = D('brand_cate')->get_child_ids($options['cid'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}		
        $data = $brand_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;		
	}
   public function tehui($options) {
        $tehui_mod = M('tehui');
        $options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '4';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'add_time desc';	
		if($options['cid']){			
		$id_arr = D('tehui_cate')->get_child_ids($options['cid'], true);
		$map['cate_id'] = array('IN', $id_arr);
		}
		$map['pass'] = '1';
        $data = $tehui_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
        return $data;
    }
	public function items($options) {
        $items_mod = D('items');
        $options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '3';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'add_time desc';	
		$options['status'] = isset($options['status']) ? trim($options['status']) : '1';
		if($options['status'] == 1){
			$map['coupon_end_time'] = array('egt',time());
		}else if($options['status'] == 2){
			$map['coupon_start_time'] = array('egt',time());
		}
		if($options['cid']){
			$id_arr = D('items_cate')->get_child_ids($options['cid'], true);
			$map['cate_id'] = array('IN', $id_arr);
		}
		$map['pass'] = '1';
        $data = $items_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
        return $data;
    }	
	public function dian($options) {
		$items_mod = D('dian');
		$map['pass'] = '1';
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '12';
		$options['order'] = isset($options['order']) ? trim($options['order']) : '';
		if($options['cid']){
			$id_arr = D('items_cate')->get_child_ids($options['cid'], true);
			$map['cate_id'] = array('IN', $id_arr);
		}

        $data = $items_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;
	}
      public function dapei($options) {
		$dapei_mod = D('dapei');
		$map['status'] = '1';
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '5';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'add_time desc';
		$options['cid'] && $map['cate_id'] = $options['cid'];
        $data = $dapei_mod->where($map)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;
		
	}		
	public function newitem($options) {
	    $today_str = mktime(0,0,0,date("m"),date("d"),date("Y"));
		$tomorr_str = mktime(0,0,0,date("m"),date("d")+1,date("Y"));
		$where['coupon_start_time'] = array(array('egt',$today_str),array('elt',$tomorr_str)) ;
		$options['cid'] = isset($options['cid']) ? trim($options['cid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '6';
		$items_mod = D('items');
		$items_cate_mod = D('items_cate');
		$map = array('pass'=>'1');
		$map['coupon_end_time'] = array('egt',time());
		if($options['cid']){
			$id_arr = $items_cate_mod->get_child_ids($options['cid'], true);
            $map['cate_id'] = array('IN', $id_arr);
		}		
		if(C('ftx_zhi_shop_type')){$map['shop_type'] = C('ftx_zhi_shop_type');}
		
		if(C('ftx_zhi_ems') == '1'){$map['ems'] = '1';}
		if(C('ftx_zhi_mix_price')>0){$map['coupon_price'] = array('egt',C('ftx_zhi_mix_price'));}
		if(C('ftx_zhi_max_price')>0){$map['coupon_price'] = array('elt',C('ftx_zhi_max_price'));}
		if(C('ftx_zhi_mix_price')>0 && C('ftx_zhi_max_price')>0){$map['coupon_price'] =  array(array('egt',C('ftx_zhi_mix_price')),array('elt',C('ftx_zhi_max_price')),'and');}
		if(C('ftx_zhi_mix_volume')>0){$map['volume'] = array('egt',C('ftx_zhi_mix_volume'));}
		if(C('ftx_zhi_max_volume')>0){$map['volume'] = array('elt',C('ftx_zhi_max_volume'));}
		if(C('ftx_zhi_mix_volume')>0 && C('ftx_zhi_max_volume')>0){$map['volume'] = array(array('egt',C('ftx_zhi_mix_volume')),array('elt',C('ftx_zhi_max_volume')),'and');}
		$data = $items_mod->where($map)->limit('0,'.C('ftx_zhi_page_size').'')->order(C('ftx_zhi_sort'))->select();
        return $data;
    }
	public function mylike($options) {
		$like_mod = D('items_like');
		$options['uid'] = isset($options['uid']) ? trim($options['uid']) : '';
		$options['num'] = isset($options['num']) ? trim($options['num']) : '';
		$options['order'] = isset($options['order']) ? trim($options['order']) : 'id desc';
		$ids_list = $like_mod->field('id,num_iid')->where(array('uid'=>$options['uid']))->order($options['order'])->select();
		$ids=array(); 
		if($ids_list){
			foreach($ids_list as $val){
				$ids[] = $val['num_iid'];				
			}
		}
		$where['num_iid'] = array('in',$ids);
		$where['pass'] = '1';
        $data = D('items')->where($where)->limit('0 ,' . $options['num'])->order($options['order'])->select();
		return $data;
	}
}