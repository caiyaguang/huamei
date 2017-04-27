<?php
//网站地图生成器
class sitemapAction extends FrontAction {
/*
统一参数设置
*/
// html 页面参数
//每个分类下显示的条数  默认是70
   protected $items_html_show        = 70;
//每个文章分类下显示的条数 默认是100
   protected $article_html_show      = 100;
//热门标签显示的数量 默认是20
   protected $hottag_html_show       = 20;
//网站标题
   protected $title                  = '华美飞天侠bbs.138gzs.com';
//网站关键词
   protected $keywords               = '华美飞天侠';
//网站描述
   protected $description            = '华美飞天侠全网最新的淘宝客程序bbs.138gzs.com';
//xml页面参数设置
//商品详情页面优先权 0.0--1.0之间
   protected $priority_xml_items     = '1.0';
//文章详情页面优先权 0.0--1.0之间
   protected $priority_xml_article   = '1.0';
//每个分类商品显示数量 
//商品数量+文章数量总和<=5000
   protected $items_xml_show         = 100;
//每个分类文章显示数量
   protected $article_xml_show       = 20;
//商品详情页更新频率设置 有效值为：always、hourly、daily、weekly、monthly、yearly、never
   protected $items_xml_change       = 'daily';
//文章详情页更新频率设置 有效值为：always、hourly、daily、weekly、monthly、yearly、never
   protected $article_xml_change     = 'daily';



    public function _initialize() {
    parent::_initialize();
    $this->_mod = new sitemapModel();
    }
    public function index()
    {
       $this->sitemap = $this->_mod->getcate($this->items_html_show);
       $this->tag = $this->_mod->hottag($this->hottag_html_show);
       $this->article = $this->_mod->article($this->hottag_html_show);
	    $this->assign('nav_curr', 'sitemap');
        $this->page_seo = array(
          'title' => $this->title,
          'keywords' => $this->keywords,
          'description' => $this->description,
        );
       $this->display();
    }
    public function xml()
    {
       $site_url = C('ftx_site_url');
       $items_list = $this->_mod->getcate($this->items_xml_show);
       $article_list = $this->_mod->article($this->article_xml_show);
       $items_list   =  $this->_mod->deal($items_list,$site_url,$this->priority_xml_items,$this->items_xml_change);
       $article_list =  $this->_mod->deal($article_list,$site_url,$this->priority_xml_article,$this->article_xml_change,'article');
       $list = array_merge($items_list,$article_list);
       header('content-type: text/xml');
       echo ($this->_mod->arr2xml($list));
    }
}
?>