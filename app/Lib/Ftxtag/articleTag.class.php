<?php
/**
 * 文章模板标签解析
 *
 * @author andery
 */
class articleTag {

	public function dapei($options) {
        $options['field'] = isset($options['field']) ? trim($options['field']) : '*';
        $options['cateid'] = isset($options['cateid']) ? intval($options['cateid']) : 0;
        $options['num'] = isset($options['num']) ? intval($options['num']) : 6;
        $options['order'] = isset($options['order']) ? trim($options['order']) : 'id DESC';
        $dapei_mod = M('dapei');
        $map = array('status'=>'1');
        $select = $dapei_mod->field($options['field']); //字段
        $options['cateid'] && $map['cate_id'] = $options['cateid'];
        $select->where($map); //条件
        $options['num'] && $select->limit($options['num']); //个数
        $select->order($options['order']); //排序
        $data = $select->select();
        return $data;
    }
    
	public function articletui($options) {
        $options['field'] = isset($options['field']) ? trim($options['field']) : '*';
        $options['cateid'] = isset($options['cateid']) ? intval($options['cateid']) : 0;
        $options['num'] = isset($options['num']) ? intval($options['num']) : 10;
        $options['order'] = isset($options['order']) ? trim($options['order']) : 'id DESC';
        $article_mod = M('article');
        $map = array('status'=>'1');
		$map = array('tui'=>'1');
        $select = $article_mod->field($options['field']); //字段
        if($options['cateid']){
			$id_arr = D('article_cate')->get_child_ids($options['cateid'], true);
			$map['cate_id'] = array('IN', $id_arr);
		}
        $select->where($map); //条件
        $options['num'] && $select->limit($options['num']); //个数
        $select->order($options['order']); //排序
        $data = $select->select();
        return $data;        
    }
	
	public function articlelists($options) {
        $options['field'] = isset($options['field']) ? trim($options['field']) : '*';
        $options['cateid'] = isset($options['cateid']) ? intval($options['cateid']) : 0;
        $options['num'] = isset($options['num']) ? intval($options['num']) : 10;
        $options['order'] = isset($options['order']) ? trim($options['order']) : 'add_time DESC';
        $article_mod = M('article');
        $map = array('status'=>'1');		
        $select = $article_mod->field($options['field']); //字段
       
		if($options['cateid']){
			$id_arr = D('article_cate')->get_child_ids($options['cateid'], true);
			$map['cate_id'] = array('IN', $id_arr);
		}
        $select->where($map); //条件
        $options['num'] && $select->limit($options['num']); //个数
        $select->order($options['order']); //排序
        $data = $select->select();
        return $data;
    }
     
	 public function articlehot($options) {
        $options['field'] = isset($options['field']) ? trim($options['field']) : '*';
        $options['cateid'] = isset($options['cateid']) ? intval($options['cateid']) : 0;
        $options['num'] = isset($options['num']) ? intval($options['num']) : 10;
        $options['order'] = isset($options['order']) ? trim($options['order']) : 'hits DESC';
        $article_mod = M('article');
        $map = array('status'=>'1');
        $select = $article_mod->field($options['field']); //字段
        $options['cateid'] && $map['cate_id'] = $options['cateid'];
        $select->where($map); //条件
        $options['num'] && $select->limit($options['num']); //个数
        $select->order($options['order']); //排序
        $data = $select->select();
        return $data;
    }

    /**
     * 报名套餐获取
     * @param array $options 
     */
    public function baotype() {
        $options['status']  = 1;
        $data = M('payitems')->where($options)->order('days desc')->select();
        return $data;
    }

    public function cate($options) {
        $options['field'] = isset($options['field']) ? trim($options['field']) : '*';
        $options['cateid'] = isset($options['cateid']) ? intval($options['cateid']) : 0;
        $options['where'] = isset($options['where']) ? trim($options['where']) : '';
        $options['num'] = isset($options['num']) ? intval($options['num']) : 0;
        $options['order'] = isset($options['order']) ? trim($options['order']) : 'id asc';
        if ($options['field'] != '*' || $options['where'] || $options['order'] != 'ordid') {
            $article_cate_mod = M('article_cate');
            $map = array('status'=>'1');
            $select = $article_cate_mod->field($options['field']); //字段
            $options['cateid'] && $map['pid'] = $options['cateid'];
            $options['where'] && $map['_string'] = $options['where'];
            $select->where($map); //条件
            $options['num'] && $select->limit($options['num']); //个数
            $select->order($options['order']); //排序
            $data = $select->select();
        } else {
            //分类缓存
            if (false === $cate_list = F('artcate_list')) {
                $cate_list = D('article_cate')->cate_cache();
            }
            if ($options['cateid'] == 0) {
                $cate_list = $cate_list['p'];
            } else {
                $cate_list = $cate_list['s'][$options['cateid']];
            }
            $options['num'] && $cate_list = array_slice($cate_list, 0, $options['num']);
            $data = $cate_list;
        }
        return $data;
    }
}