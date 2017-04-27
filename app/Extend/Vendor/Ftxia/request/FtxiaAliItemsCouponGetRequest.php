<?php
/**
 *  API: ftxia.items.coupon.get request
 */
class FtxiaAliItemsCouponGetRequest
{
	private $area;
	private $cid;
	private $fields;
	private $keyword;
	private $pageNo;
	private $pageSize;
	private $pid;
	private $shopType;
	private $sort;
	private $ems;
	private $start_price;
	private $end_price;
	private $start_volume;
	private $end_volume;
	private $start_commission_rate;
	private $end_commission_rate;
	private $time;
	private $apiParas = array();
	
	public function setArea($area)
	{
		$this->area = $area;
		$this->apiParas["area"] = $area;
	}

	public function getArea()
	{
		return $this->area;
	}

	public function setCid($cid)
	{
		$this->cid = $cid;
		$this->apiParas["cid"] = $cid;
	}

	public function getCid()
	{
		return $this->cid;
	}



	public function setFields($fields)
	{
		$this->fields = $fields;
		$this->apiParas["fields"] = $fields;
	}

	public function getFields()
	{
		return $this->fields;
	}

	public function setKeyword($keyword)
	{
		$this->keyword = $keyword;
		$this->apiParas["keyword"] = $keyword;
	}

	public function getKeyword()
	{
		return $this->keyword;
	}



	public function setPageNo($pageNo)
	{
		$this->pageNo = $pageNo;
		$this->apiParas["page_no"] = $pageNo;
	}

	public function getPageNo()
	{
		return $this->pageNo;
	}

	public function setPageSize($pageSize)
	{
		$this->pageSize = $pageSize;
		$this->apiParas["page_size"] = $pageSize;
	}

	public function getPageSize()
	{
		return $this->pageSize;
	}

	public function setPid($pid)
	{
		$this->pid = $pid;
		$this->apiParas["pid"] = $pid;
	}

	public function getPid()
	{
		return $this->pid;
	}

	public function setShopType($shopType)
	{
		$this->shopType = $shopType;
		$this->apiParas["shop_type"] = $shopType;
	}

	public function getShopType()
	{
		return $this->shopType;
	}

	public function setSort($sort)
	{
		$this->sort = $sort;
		$this->apiParas["sort"] = $sort;
	}

	public function getSort()
	{
		return $this->sort;
	}

	public function setEms($ems)
	{
		$this->ems = $ems;
		$this->apiParas["ems"] = $ems;
	}

	public function getEms()
	{
		return $this->ems;
	}

	public function setStartCommissionRate($start_commission_rate)
	{
		$this->start_commission_rate = $start_commission_rate;
		$this->apiParas["start_commission_rate"] = $start_commission_rate;
	}

	public function getStartCommissionRate()
	{
		return $this->start_commission_rate;
	}

	public function setEndCommissionRate($end_commission_rate)
	{
		$this->end_commission_rate = $end_commission_rate;
		$this->apiParas["end_commission_rate"] = $end_commission_rate;
	}

	public function getEndCommissionRate()
	{
		return $this->end_commission_rate;
	}

	
	public function setStartPrice($start_price)
	{
		$this->start_price = $start_price;
		$this->apiParas["start_price"] = $start_price;
	}

	public function getStartPrice()
	{
		return $this->start_price;
	}

	public function setEndPrice($end_price)
	{
		$this->end_price = $end_price;
		$this->apiParas["end_price"] = $end_price;
	}

	public function getEndPrice()
	{
		return $this->end_price;
	}


	public function setStartVolume($start_volume)
	{
		$this->start_volume = $start_volume;
		$this->apiParas["start_volume"] = $start_volume;
	}

	public function getStartVolume()
	{
		return $this->start_volume;
	}

	public function setEndVolume($end_volume)
	{
		$this->end_volume = $end_volume;
		$this->apiParas["end_volume"] = $end_volume;
	}

	public function getEndVolume()
	{
		return $this->end_volume;
	}


	public function setTime($time)
	{
		$this->time = $time;
		$this->apiParas["time"] = $time;
	}

	public function getTime()
	{
		return $this->time;
	}
	
	
	

	public function getApiMethodName()
	{
		return "ftxia.aliitems.coupon.get";
	}
	public function getApiParas()
	{
		return $this->apiParas;
	}
	
	public function check()
	{
		RequestCheckUtil::checkNotNull($this->fields,"fields");
	}
	
	public function putOtherTextParam($key, $value) {
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}
