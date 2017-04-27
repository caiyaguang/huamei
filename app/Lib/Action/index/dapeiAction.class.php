<?php
class dapeiAction extends FrontAction {

	public function _initialize() {
        parent::_initialize();
		$this->cats_mod = D('dapei_cate');
		$this->_mod = M('dapei');
		$this->cid = $_SERVER['HTTP_HOST'];
        $this->_cate_mod = D('items_cate');
		$this->assign('nav_curr', 'index');	        
		$this->dapei_mod = M('dapei');
		$this->cats_list = $this->cats_mod->get_cats();
        $this->assign('acats', $this->cats_list);
    }

	public function index(){
        $cid = I('id','', 'trim');		
		$p = I('p',1, 'intval');
		$map['status']="1";
		if($cid){
            $map['cate_id'] = $cid;
			$title = $this->cats_list[$cid]['name'];
        }
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
		$order = 'ordid asc ';
		$order.= ', id DESC';
		$cat = $this->cats_mod->find($cid);
        $dapei_list = $this->dapei_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
		$this->assign('cid',$cid);
		$this->assign('p',$p);
		$this->assign('dapei_list',$dapei_list);
		$count = $this->dapei_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->ssshow());		
		$this->assign('nav_curr', 'dapei');
		$this->_config_seo(C('ftx_seo_config.dapei_index'));
        $this->display('index');
	}

	public function cate(){	
		$cid = I('id','', 'trim');
		$item = $this->cats_mod->where(array('id' => $cid))->find();
        !$item && $this->_404();		
		$p = I('p',1, 'intval');
		$map['status']="1";
		if($cid){
            $map['cate_id'] = $cid;
			$title = $this->cats_list[$cid]['name'];
        }
		$page_size = 20;
		$start = $page_size * ($p - 1) ;
		$order = 'ordid asc ';
		$order.= ', id DESC';
		$cat = $this->cats_mod->find($cid);
        $dapei_list = $this->dapei_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
		$this->assign('cid',$cid);
		$this->assign('dapei_list',$dapei_list);
		$count = $this->dapei_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->ssshow());		
		$this->assign('nav_curr', 'dapei');
		$this->_config_seo(C('ftx_seo_config.dapei_cate'), array(
			'title' => $cat['name'],
			'cate_name' => $cat['name'],
            'seo_title' => $item['seo_title'],
            'seo_keywords' => $item['seo_keys'],
            'seo_description' => $item['seo_desc'],
        ));
        $this->display('cate');
	}

	public function read(){	    	
		$help_mod = M('help');
		$helps = $help_mod->field('id,title,info')->select();		
        $this->assign('helps',$helps);
	    $cid = I('cid','', 'trim');
		$id = I('id','', 'intval');
		$item = $this->_mod->where(array('id' => $id))->find();
		$item['avatar'] = str_replace('width=30', 'width=100', $item['avatar']);
		$item['avatar'] = str_replace('height=30', 'height=100', $item['avatar']);
        !$item && $this->_404();		
		$query ='select * from '.C('DB_PREFIX').'dapei where id=(select max(id) from '.C('DB_PREFIX').'dapei)';
		$result=mysql_query($query); 
		 while($rows=mysql_fetch_array($result)){
		 $maxid=$rows['id'];
		 }		 
		 $nid = $id+1;//下一篇
         $preid=$id-1;//上一篇	
         $lastid = $maxid+1;//最后一篇		 
		D('dapei')->hits($id);
		if($cid){
            $map['cate_id'] = $cid;
			$dapei_cate = M('dapei_cate')->field('id,name')->find($cid);
			$title = $dapei_cate['name'];
        }
		$dapei_cate_mod = M('dapei_cate');
		$dapei_cate_list = $dapei_cate_mod->select();
        $dapei_mod = M('dapei');
		$this->cate_list = D('items_cate')->field('id,name,pid')->select();
        $dapei = $dapei_mod->field('id,cate_id,title,tags,info,hits,author,seo_title,seo_keys,seo_desc,add_time,status')->find($id);
		$dapeip = $dapei_mod->field('id,cate_id,title,tags,info,hits,author,seo_title,seo_keys,seo_desc,add_time,status')->find($preid);
		$dapein = $dapei_mod->field('id,cate_id,title,tags,info,hits,author,seo_title,seo_keys,seo_desc,add_time,status')->find($nid);
        if(isset($dapei['cate_id'])){
            $this->cate_name = M('dapei_cate')->where(array('id'=>$dapei['cate_id']))->getField('name');	
        }
		$dapei_cate_name = $item['name'];
		$tag_list = D('dapei')->get_tags_by_title($item['title']);
		$tags = implode(',', $tag_list);
		$description =$item['info'];		
		$description = preg_replace( "@<script(.*?)</script>@is", "", $description ); 
        $description = preg_replace( "@<iframe(.*?)</iframe>@is", "", $description ); 
        $description = preg_replace( "@<style(.*?)</style>@is", "", $description ); 
        $description = preg_replace( "@<(.*?)>@is", "", $description ); 
		$description = str_replace("&nbsp;", '', $description);
        $description = mb_substr($description,0,250,'utf-8');      
		$this->assign('description',$description);
		$this->_config_seo(C('ftx_seo_config.dapei'), array(
            'title' => $item['title'],
			'seo_title' => $item['seo_title'],
            'seo_keywords' => $item['tags'],
            'seo_description' => $description,
        ));
		$test = $item['info'];
		preg_match ("<img.*src=[\"](.*?)[\"].*?>",$test,$match);
        $picurl= $match[1];
		$taodianjin = C('ftx_taojindian_html');
		if(strpos($taodianjin,'text/javascript')){
			$pid = get_word($taodianjin,'pid: "','"');
		}else{
			$pid = $taodianjin;
		}
		$this->assign('pid', $pid);
		$this->assign('tags', $tag_list);
		$this->assign('picurl',$picurl);
		$this->assign('cid',$cid);
		$this->assign('dapei_cate_name',$dapei_cate_name);		
		$this->assign('dapei_cate_list',$dapei_cate_list);
		$this->assign('nid',$nid); 
		$this->assign('item',$item);
		$this->assign('preid',$preid); 
		$this->assign('lastid',$lastid);
		$this->assign('hits',$hits); 
		$this->assign('nav_curr', 'dapei');
		$this->assign('dapeip',$dapeip);
		$this->assign('dapein',$dapein);		
        $this->assign('dapei',$dapei); //分类选中		
        $this->display();
	}

}