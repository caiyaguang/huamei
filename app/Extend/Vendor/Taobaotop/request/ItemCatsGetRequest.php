<?php
/**
 * TOP API: taobao.itemcats.get request
 * 
 * @author Ftxia 2.0
 * @ bbs.138gzs.com  2015.05.04
 */
class ItemCatsGetRequest
{
 
	private $parent_cid;

	private $fields;
	
	private $apiParas = array();
	

	public function setPid($parent_cid)
	{
		$this->parent_cid = $parent_cid;
		$this->apiParas["parent_cid"] = $parent_cid;
	}

	public function getPid()
	{
		return $this->parent_cid;
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



	public function getApiMethodName()
	{
		return "taobao.itemcats.get";
	}
	
	public function getApiParas()
	{
		return $this->apiParas;
	}
	public function check()
	{
		
		RequestCheckUtil::checkMaxValue($this->parent_cid,2147483647,"parent_cid");
		RequestCheckUtil::checkNotNull($this->fields,"fields");
	}
	public function putOtherTextParam($key, $value) {
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}
