<?php

//华美网络版权所有,禁止盗版 后果自负 qq422677261 官方论坛bbs.138gzs.com
class shopAction extends BackendAction
{
	public function _initialize()
	{
		session('[start]');
		parent::_initialize();
		
	}
	public function index()
	{
		$this->display();
	}
	public function setting()
	{
		if (IS_POST) {
			$cate_id = $this->_post('cate_id', 'trim');
			$url = $this->_post('url', 'trim');
			$yj = $this->_post('yj', 'trim');
			$q = I('q');
			$q = urlencode($q);
			$page = $this->_post('page', 'trim');
			$coupon_start_time = $_POST['coupon_start_time'];
			$coupon_end_time = $_POST['coupon_end_time'];
			if (!$url) {
				$this->ajaxReturn(0, '店铺地址必须填写！华美CMS');
			}
			if (!$cate_id) {
				$this->ajaxReturn(0, '入库分类必须选择!');
			}
			F('shop_setting', array('cate_id' => $cate_id, 'q' => $q, 'url' => $url, 'yj' => $yj, 'page' => $page, 'coupon_start_time' => $coupon_start_time, 'coupon_end_time' => $coupon_end_time));
			$this->collect();
		}
	}
	public function collect()
	{
		set_time_limit(0);
		if (false === ($setting = F('shop_setting'))) {
			$this->ajaxReturn(0, L('illegal_parameters'));
		}
		$p = $this->_get('p', 'intval', 1);
		$url = $setting['url'] . '/i/asynSearch.htm?_ksTS=1478270140111_365&callback=jsonp366&mid=w-14593428692-0&wid=14593428692&path=/search.htm&&search=y&viewType=grid&keyword=' . $setting['q'] . '&pageNo=' . $p . '&orderType=defaultSort&tsearch=y';
		$pages = $setting['page'];
		if ($p > 1) {
			if ($p > $pages) {
				$this->ajaxReturn(0, '已经采集完成' . $pages . '页！请返回，谢谢！华美CMS');
			}
		}
		if ($p == 1) {
			$totalcoll = 0;
		} else {
			$totalcoll = F('totalcoll');
		}
		$coll = 0;
		$ftxia_https = new ftxia_https();
		$ftxia_https->fetch($url);
		$source = $this->curl_http($url);
		$source = stripslashes($source);
		$source = iconv('UTF-8', 'UTF-8//IGNORE', $source);
		$source = rtrim(ltrim(trim($source), '("'), '")');
		if (strpos($source, '<p class="item-not-found"><strong>没找到符合条件的商品,换个条件或关键词试试吧。</strong></p>')) {
			$this->ajaxReturn(0, '没找到符合条件的商品,换个条件或关键词试试吧。');
		}
		if (preg_match_all('/<dl class="item(.*?)<\\/dl>/s', $source, $matchitem)) {
			for ($i = 0; $i < count($matchitem[1]); $i++) {
				$item = $matchitem[1][$i];
				$iid = get_word($item, 'data-id=\"', '\">');
				$ems = '1';
				$jobn = array();
				if ($setting['yj'] == 1) {
					$infoUrl = "http://pub.alimama.com/items/search.json?q=http://item.taobao.com/item.htm?id=" . $iid;
					$ftxia_https = new ftxia_https();
					$chsource = $ftxia_https->results;
					if (!$chsource) {
						$chsource = $this->curl_http($infoUrl);
					}
					$result_data = json_decode($chsource, true);
					$jobn['title'] = $result_data['data']['pageList'][0]['title'];
					$jobn['img'] = $result_data['data']['pageList'][0]['pictUrl'];
					$jobn['iid'] = $result_data['data']['pageList'][0]['auctionId'];
					$jobn['price'] = $result_data['data']['pageList'][0]['reservePrice'];
					$jobn['coupon_price'] = $result_data['data']['pageList'][0]['zkPrice'];
					$jobn['volume'] = $result_data['data']['pageList'][0]['biz30day'];
					$jobn['nick'] = $result_data['data']['pageList'][0]['nick'];
					$jobn['sellerId'] = $result_data['data']['pageList'][0]['sellerId'];
					$jobn['commission_rate'] = $result_data['data']['pageList'][0]['tkRate'];
					$jobn['commission'] = $result_data['data']['pageList'][0]['tkCommFee'];
					$jobn['totalNum'] = $result_data['data']['pageList'][0]['totalNum'];
					$jobn['totalFee'] = $result_data['data']['pageList'][0]['totalFee'];
					$jobn['shoptype'] = $result_data['data']['pageList'][0]['userType'];
					$shoptype = $jobn['shoptype'];
					if ($shoptype == 0) {
						$shop_type = 'C';
					} else {
						$shop_type = 'B';
					}
				}
				if ($setting['yj'] == 0) {
					$infoUrl = 'http://hws.m.taobao.com/cache/wdetail/5.0/?id=' . $iid;
					$ftxia_https = new ftxia_https();
					$chsource = $ftxia_https->results;
					if (!$chsource) {
						$chsource = $this->curl_http($infoUrl);
					}
					$comslist = json_decode($chsource, true);
					$tmp = json_decode($comslist['data']['apiStack'][0]['value'], true);
					$jobn['title'] = $comslist['data']['itemInfoModel']['title'];
					$jobn['volume'] = $tmp['data']['itemInfoModel']['totalSoldQuantity'];
					$jobn['coupon_price'] = $tmp['data']['itemInfoModel']['priceUnits'][0]['price'];
					if (substr_count($jobn['coupon_price'], '-')) {
						$tmp1 = explode('-', $jobn['coupon_price']);
						$jobn['coupon_price'] = min($tmp1[0], $tmp1[1]);
					}
					$jobn['price'] = $tmp['data']['itemInfoModel']['priceUnits'][1]['price'];
					if (substr_count($jobn['price'], '-')) {
						$tmp = explode('-', $jobn['price']);
						$jobn['price'] = min($tmp[0], $tmp[1]);
					}
					$jobn['img'] = $comslist['data']['itemInfoModel']['picsPath'][0];
					$jobn['img'] = str_replace('_320x320.jpg', "", $jobn['img']);
					$jobn['sellerId'] = $comslist['data']['seller']['userNumId'];
					$jobn['nick'] = $comslist['data']['seller']['nick'];
					$jobn['shoptype'] = $comslist['data']['seller']['type'];
					$jobn['commission_rate'] = 0;
					$jobn['commission'] = 0;
					$jobn['totalFee'] = 0;
					$ems = $tmp['data']['delivery']['deliveryFees'][0];
					if ($ems == '卖家包邮') {
						$ems = 1;
					} else {
						$ems = 0;
					}
					$shop_type = $jobn['shoptype'];
				}
				$zkou = round($jobn['coupon_price'] / $jobn['price'] * 10, 1);
				$coupon_rate = $zkou * 1000;
				$commission_rate = $jobn['commission_rate'] * 1000;
				$likes = rand(99, 9999);
				$title = $jobn['title'];
				$img = $jobn['img'];
				$num = rand(1, 50);
				$volume = $jobn['volume'] + $num;
				$tag_list = D('items')->get_tags_by_title($title);
				$tags = implode(',', $tag_list);
				$itemarray['shop_type'] = $shop_type;
				$itemarray['title'] = $title;
				$itemarray['tags'] = $tags;
				$itemarray['pic_url'] = $img;
				$itemarray['num_iid'] = $iid;
				$itemarray['price'] = $jobn['price'];
				$itemarray['coupon_price'] = $jobn['coupon_price'];
				$itemarray['volume'] = $volume;
				$itemarray['nick'] = $jobn['nick'];
				$itemarray['sellerId'] = $jobn['sellerId'];
				$itemarray['ems'] = $ems;
				$itemarray['commission'] = $jobn['commission'];
				$itemarray['commission_rate'] = $commission_rate;
				$itemarray['yj'] = $jobn['totalFee'];
				$itemarray['likes'] = $likes;
				$itemarray['cate_id'] = $setting['cate_id'];
				$itemarray['coupon_rate'] = $coupon_rate;
				$itemarray['coupon_end_time'] = $setting['coupon_end_time'];
				$itemarray['coupon_start_time'] = $setting['coupon_start_time'];
				if ($title && $img && $iid) {
					$result['item_list'][] = $itemarray;
				}
			}
		}
		foreach ($result['item_list'] as $key => $val) {
			$res = $this->_ajax_tb_publish_insert($val);
			if ($res > 0) {
				$coll++;
			}
			$totalcoll++;
		}
		if (strpos($source, '<a class="disable">下一页</a>')) {
			$this->ajaxReturn(0, '已经采集完成' . $p . '页,本次采集到' . $totalcoll . '件商品！请返回，谢谢！华美CMS');
		}
		F('totalcoll', $totalcoll);
		$msg['title'] = '整店商品采集—华美CMS';
		$this->assign('p', $p);
		$this->assign('coll', $coll);
		$this->assign('totalnum', $totalnum);
		$this->assign('totalcoll', $totalcoll);
		$collect = $this->fetch('collect');
		$this->ajaxReturn(1, $msg, $collect);
	}
	private function _ajax_tb_publish_insert($item)
	{
		$item['title'] = trim(strip_tags($item['title']));
		$result = D('items')->ajax_yg_publish($item);
		return $result;
	}
	private function curl_http($url)
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_REFERER, $_SERVER['HTTP_HOST']);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
		curl_setopt($ch, CURLOPT_COOKIEJAR, 'cookie.txt');
		curl_setopt($ch, CURLOPT_COOKIEFILE, 'cookie.txt');
		$data = curl_exec($ch);
		curl_close($ch);
		return $data;
	}
	private function vpost($url, $data)
	{
		$curl = curl_init();
		curl_setopt($curl, CURLOPT_URL, $url);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1);
		curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
		curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($curl, CURLOPT_AUTOREFERER, 1);
		curl_setopt($curl, CURLOPT_POST, 1);
		curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
		curl_setopt($curl, CURLOPT_TIMEOUT, 30);
		curl_setopt($curl, CURLOPT_HEADER, 0);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		$tmpInfo = curl_exec($curl);
		if (curl_errno($curl)) {
			echo 'Errno' . curl_error($curl);
		}
		curl_close($curl);
		return $tmpInfo;
	}
}