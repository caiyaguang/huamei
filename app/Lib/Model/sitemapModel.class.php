<?php
  /**
  * 站点地图model
  * @author 华美网络  2014年7月24日, PM 01:31:05
  */

class sitemapModel extends Model {
    //关联关系
    /**
    * 查询最新的10000条数据
    * @author 华美网络  2014年7月24日, PM 01:47:51
    */
    public function get_last_data(){        
        $sql = "SELECT id,title,add_time FROM ".C('DB_PREFIX')."items WHERE pass=1 ORDER BY id DESC limit 10000";
        $result = $this->query($sql);
        return $result;
    }    
    
	public function get_items(){        
        $sql = "SELECT id,title,add_time FROM ".C('DB_PREFIX')."items WHERE pass=1 ORDER BY id DESC limit 50";        
        return $this->query($sql);
    }
    /**
    * 查询出来所有商品分类
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_cat_list(){
        $sql = "SELECT id,add_time FROM ".C('DB_PREFIX')."items_cate WHERE status = 1 ";
        return  $this->query($sql);
    }
	
	/**
    * 查询出来所有专场分类
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
	public function get_zccat_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."zc_cate WHERE status = 1 ";
        return  $this->query($sql);
    }
    /**
    * 查询出来所有文章分类
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_articlecat_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."article_cate WHERE status = 1 ";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有搭配分类
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_dapeicat_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."dapei_cate WHERE status = 1 ";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有特惠分类
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_tehuicat_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."tehui_cate WHERE status = 1 ";
        return  $this->query($sql);
    }	
    
	/**
    * 查询出来所有品牌分类
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_brandcat_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."brand_cate WHERE status = 1 ";
        return  $this->query($sql);
    }
    /**
    * 查询出来所有品牌
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_brand_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."brand WHERE pass = 1 ORDER BY id DESC limit 500";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有专场
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_zc_list(){
        $sql = "SELECT id,etitle FROM ".C('DB_PREFIX')."zc WHERE pass = 1 ORDER BY id DESC limit 500";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有品牌商品
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_branditems_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."brand_items WHERE pass = 1 ORDER BY id DESC limit 5000";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有专场商品
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_zcitems_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."zc_items WHERE pass = 1 ORDER BY id DESC limit 2000";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有搭配
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_dapei_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."dapei WHERE status = 1 limit 1000";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有特惠商品
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_tehui_list(){
        $sql = "SELECT id FROM ".C('DB_PREFIX')."tehui WHERE pass = 1 limit 5000";
        return  $this->query($sql);
    }
	/**
    * 查询出来所有标签拼音
    * @author 华美网络  2014年7月24日, PM 02:42:21
    */
    public function get_tag_list(){
        $sql = "SELECT ename FROM ".C('DB_PREFIX')."tag WHERE pass = 1 ORDER BY id DESC limit 20000";
        return  $this->query($sql);
    }	
    //文章
    /**
    * 查询出来所有文章
    * @author 华美网络  2014年7月24日, PM 02:58:07
    */
    public function get_article(){        
        $sql = "SELECT id,add_time FROM ".C('DB_PREFIX')."article WHERE status = 1 ORDER BY id DESC limit 5000";
        return $this->query($sql);
    }
    
	public function getcate($limit=70)
{ 

    $cate = D('items_cate')->field('id,name')->where(array('status'=>1))->order('ordid asc')->select();	
    $where = array(
    	'pass'=>1,
    	'isshow'=>1,
    	'coupon_start_time'=>array('elt',time()),
    	'coupon_end_time'=>array('egt',time())
    	);
    $order = 'ordid asc,coupon_start_time desc';
    $items = array();
    foreach ($cate as $k => $v) {
    	$where['cate_id'] = $v['id'];
    	$items[$k]['items'] = D('items')->field('id,title,coupon_start_time')->where($where)->order($order)->limit($limit)->select();
      $items[$k]['cate'] = $v;
    }
    return $items;
}


public function hottag($limit=100)
{

      $hotword = M('setting')->where(array('name'=>'hot_tag'))->getField('data');
      $wordlists  = explode('|', $hotword);
      $limit_word  = array_slice($wordlists, 0,$limit);
      return $limit_word;

}
public function article($limit=20)
{
  $cate = D('article_cate')->where(array('status'=>1))->field('id,name')->select();
  $where = array('status'=>1);
  $order = ' ordid asc,last_time desc ';
  $article = array();
  foreach ($cate as $k => $v) {
  	$where['cate_id'] = $v['id']; 
  	$article[$k]['art'] = D('article')->where($where)->field('id,title,add_time')->order($order)->limit($limit)->select();
  	$article[$k]['cate'] = $v;
  }

  return $article;
}

  public function deal($data=array(),$url,$iq='1.0',$pl='daily',$t='item')
  {
      if(empty($data)) return false;
      $rz = array();
      $rz1 = array();
      if($t=='item'){
        foreach ($data as $k => $v) {
           foreach ($v['items'] as $ke => $va) {
               $rz1[$ke]['url']['loc'] = $this->url($url,'item/index',array('id'=>$va['id']));
               $rz1[$ke]['url']['lastmod'] = date('Y-m-d',$va['coupon_start_time']);
               $rz1[$ke]['url']['changefreq'] = $pl;
               $rz1[$ke]['url']['priority'] = $iq;
           }
           $rz = array_merge($rz,$rz1);
        }        
      }
      elseif($t=='article')
      {
         foreach ($data as $k => $v) {
           foreach ($v['art'] as $ke => $va) {
             $rz1[$ke]['url']['loc'] = $this->url($url,'article/read',array('id'=>$va['id']));
             $rz1[$ke]['url']['lastmod'] = date('Y-m-d',$va['add_time']);
             $rz1[$ke]['url']['changefreq'] = $pl;
             $rz1[$ke]['url']['priority'] = $iq;
           }
           $rz = array_merge($rz,$rz1);
         }
      }
      return $rz;
  }

  public function url($url,$flag,$id)
  {
     return $url.U($flag,$id);  
  }
  public function arr2xml($arr=array()){
    if(empty($arr)) return false;
    $xml = new DOMDocument('1.0','utf-8');
    $urlset = $xml->createElement('urlset');
    $xml->appendChild($urlset);
    foreach ($arr as $k => $v) {
      $url  = $xml->createElement('url');
      $loc = $xml->createElement('loc');
      $locc= $xml->createTextNode($v['url']['loc']);
      $loc->appendChild($locc);
      $lastmod = $xml->createElement('lastmod');
      $lastmodd= $xml->createTextNode($v['url']['lastmod']);
      $lastmod->appendChild($lastmodd);
      $changefreq = $xml->createElement('changefreq');
      $changefreqq= $xml->createTextNode($v['url']['changefreq']);
      $changefreq->appendChild($changefreqq);
      $priority = $xml->createElement('priority');
      $priorityy= $xml->createTextNode($v['url']['priority']);
      $priority->appendChild($priorityy);
      $url->appendChild($loc);
      $url->appendChild($lastmod);
      $url->appendChild($changefreq);
      $url->appendChild($priority);
     $urlset->appendChild($url);
    }
    return $xml->saveXML();
  }
}
?>
