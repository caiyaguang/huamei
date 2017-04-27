<?php
class articleAction extends FrontAction {
    public function _initialize() {
        parent::_initialize();
        $this->cats_mod = D('article_cate');
        $this->_mod = M('article');;
        $this->cid = $_SERVER['HTTP_HOST'];
        $this->_cate_mod = D('items_cate');
        $this->assign('nav_curr', 'index');
        $this->article_mod = M('article');
        $this->cats_list = $this->cats_mod->get_cats();
        $this->assign('acats', $this->cats_list);
    }
    public function index() {
        $cid = I('id', '', 'trim');
        $p = I('p', 1, 'intval');
        $map['status'] = '1';
        if ($cid) {
            $map['cate_id'] = $cid;
            $title = $this->cats_list[$cid]['name'];
        }
        $page_size = 40;
        $start = $page_size * ($p - 1);
        $order = 'ordid asc ';
        $order.= ', id DESC';
        $cat = $this->cats_mod->find($cid);
        $article_list = $this->article_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
        foreach ($article_list as $key => $val) {
            $article_list[$key] = $val;
            $data = $val['info'];
            $data = preg_replace('@<script(.*?)</script>@is', "", $data);
            $data = preg_replace('@<iframe(.*?)</iframe>@is', "", $data);
            $data = preg_replace('@<style(.*?)</style>@is', "", $data);
            $data = preg_replace('@<(.*?)>@is', "", $data);
            $data = str_replace('&nbsp;', '', $data);
            $data = mb_substr($data, 0, 380, 'utf-8');
            $article_list[$key]['info'] = $data;
            $img = $val['info'];
            preg_match('<img.*src=["](.*?)["].*?>', $img, $match);
            //$mpic = $match[1];
            //$article_list[$key]['mpic'] = $mpic;
        }
        $this->assign('cid', $cid);
        $this->assign('article_list', $article_list);
        $count = $this->article_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->jshow());
        $this->assign('nav_curr', 'article');
        $this->_config_seo(C('ftx_seo_config.article_index'));
        $this->display('index');
    }
    public function cate() {
        $cid = I('id', '', 'trim');
        $helps = $this->cats_mod->where(array('id' => $cid))->find();
        !$helps && $this->_404();
        $p = I('p', 1, 'intval');
        $map['status'] = '1';
        if ($cid) {
            $map['cate_id'] = $cid;
            $title = $this->cats_list[$cid]['name'];
        }
        $page_size = 20;
        $start = $page_size * ($p - 1);
        $order = 'ordid asc ';
        $order.= ', id DESC';
        $cat = $this->cats_mod->find($cid);
        $article_list = $this->article_mod->where($map)->order($order)->limit($start . ',' . $page_size)->select();
		foreach ($article_list as $key => $val) {
            $article_list[$key] = $val;
            $data = $val['info'];
            $data = preg_replace('@<script(.*?)</script>@is', "", $data);
            $data = preg_replace('@<iframe(.*?)</iframe>@is', "", $data);
            $data = preg_replace('@<style(.*?)</style>@is', "", $data);
            $data = preg_replace('@<(.*?)>@is', "", $data);
            $data = str_replace('&nbsp;', '', $data);
            $data = mb_substr($data, 0, 380, 'utf-8');
            $article_list[$key]['info'] = $data;
            $img = $val['info'];
            preg_match('<img.*src=["](.*?)["].*?>', $img, $match);
            //$mpic = $match[1];
            //$article_list[$key]['mpic'] = $mpic;
        }
        $this->assign('cid', $cid);
        $this->assign('article_list', $article_list);
        $count = $this->article_mod->where($map)->count();
        $pager = $this->_pager($count, $page_size);
        $this->assign('page', $pager->jshow());
        $this->assign('nav_curr', 'article');
        $this->_config_seo(C('ftx_seo_config.article_cate') , array(
            'title' => $cat['name'],
            'cate_name' => $cat['name'],
            'seo_title' => $cat['seo_title'],
            'seo_keywords' => $cat['seo_keys'],
            'seo_description' => $cat['seo_desc'],
        ));
        $this->display('index');
    }
    public function read() {
        $help_mod = M('help');
        $help = $help_mod->field('id,title,info')->select();
        $this->assign('helps', $help);
        $cid = I('cid', '', 'trim');
        $id = I('id', '', 'intval');
        $helps = $this->_mod->where(array('id' => $id))->find();
        !$helps && $this->_404();
        $sql_preid = 'SELECT title,id FROM ' . C('DB_PREFIX') . 'article WHERE id < ' . $id . ' and status = \'1\' ORDER BY id DESC LIMIT 0,1';
        $result_preid = mysql_query($sql_preid);
        while ($print_preid = mysql_fetch_array($result_preid)) {
            $preid = $print_preid['id'];
        }
        $sql_nid = 'SELECT title,id FROM ' . C('DB_PREFIX') . 'article WHERE id > ' . $id . ' and status = \'1\' ORDER BY id asc LIMIT 0,1';
        $result_nid = mysql_query($sql_nid);
        while ($print_nid = mysql_fetch_array($result_nid)) {
            $nid = $print_nid['id'];
        }
        D('article')->hits($id);
        if ($cid) {
            $map['cate_id'] = $cid;
            $article_mod = M('article_cate')->field('id,name')->find($cid);
            $title = $article_mod['name'];
        }
        $article_cate = M('article_cate');
        $article_cate_list = $article_cate->select();
        $items_cate = M('article');
        $this->cate_list = D('items_cate')->field('id,name,pid')->select();
        $article = $items_cate->field('id,cate_id,title,tags,mpic,info,hits,author,seo_title,seo_keys,seo_desc,add_time,status')->find($id);
        $articlep = $items_cate->field('id,cate_id,title,tags,mpic,info,hits,author,seo_title,seo_keys,seo_desc,add_time,status')->find($preid);
        $articlen = $items_cate->field('id,cate_id,title,tags,mpic,info,hits,author,seo_title,seo_keys,seo_desc,add_time,status')->find($nid);
        if (isset($article['cate_id'])) {
            $this->cate_name = M('article_cate')->where(array('id' => $article['cate_id']))->getField('name');
        }
        $article_cate_name = $article['name'];
        $tags = D('article')->get_tags_by_title($article['title']);
        $arr = implode(',', $tags);
        foreach ($tags as $view) {
            if (strpos($article['info'], $view)) {
                $k = $view;
                $url = U('search/index', array('k' => $k));
                $article['info'] = preg_replace('/' . $view . '/', '<a href=' . $url . ' target=_blank ><b style=color:red>' . $view . '</b></a>', $article['info'], 1);
            }
        }
        $this->assign('tags', $tags);
        $data = $article['info'];
        $data = preg_replace('@<script(.*?)</script>@is', "", $data);
        $data = preg_replace('@<iframe(.*?)</iframe>@is', "", $data);
        $data = preg_replace('@<style(.*?)</style>@is', "", $data);
        $data = preg_replace('@<(.*?)>@is', "", $data);
        $data = str_replace('&nbsp;', '', $data);
        $data = mb_substr($data, 0, 150, 'utf-8');
        $this->assign('description', $data);
        $this->_config_seo(C('ftx_seo_config.article') , array(
            'title' => $article['title'],
            'seo_title' => $article['seo_title'],
            'seo_keywords' => $article['tags'],
            'seo_description' => $data,
        ));
        $img = $article['info'];
        preg_match('<img.*src=["](.*?)["].*?>', $img, $match);
        $picurls = $match[1];
        $this->assign('tags', $tags);
        $this->assign('picurls', $picurls);
        $this->assign('cid', $cid);
        $this->assign('article_cate_name', $article_cate_name);
        $this->assign('article_cate_list', $article_cate_list);
        $this->assign('nid', $nid);
        $this->assign('preid', $preid);
        $this->assign('lastid', $lastid);
        $this->assign('hits', $hits);
        $this->assign('nav_curr', 'article');
        $this->assign('articlep', $articlep);
        $this->assign('articlen', $articlen);
        $this->assign('article', $article);
        $this->display();
    }
} 
?>
