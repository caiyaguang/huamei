<link rel="stylesheet" type="text/css" href="/static/red/css/alert.css">
<link rel="stylesheet" type="text/css" href="/static/newpi/css/global.css">
<style type="text/css">
	#payhaopin-input {
border: 1px solid #c6c6c6;
    color: #535353;
    float: left;
    font-size: 14px;
    height: 43px;
    line-height: 26px;
    margin-right: 5px;
    padding-left: 12px;
    margin-bottom: 5px;
    margin-left: 10px;
    width: 300px;
}
  .smthaopinzhe {
    border: none;
    height: 40px;
    width: 180px;
    padding-bottom: 2px;
        display: block;
    text-align: center;
    line-height: 40px;
    font-size: 14px;
    float: left;
    color: #fff;
    cursor: pointer;
    background: #ff464e;
        margin-left: 75px;
    border-radius: 3px;
    margin-top: 5px;
}
</style>
<div id="alert_landing" class="dialog_fanli">
<div class="alert_content" style="padding: 0px 20px 20px;">
<div class="alert_content">
<div class="content-share" style="padding-left: 11px;    padding-right: 23px;">
<ul style="margin-top: 1px;">
<h3>说明</h3>
<li>1.付款后请提交订单编号,提交订单后客服会审核</li>
<li>3.请务必认真填写订单编号,客服会根据支付流水号,以及付款信息核实订单</li>
<li>4.如有问题请联系在线客服咨询！</li>
<li style="color: red;">5.商品ID示例：526991343414</li>
<li>6.为了尽快通过您的宝贝,请保证信息真实性！</li>
</ul> 
</div>
 <form action="#123" method="post" onsubmit="return false;" id="J_dlogin_form">

<ul>
<li>
	<div class="user">
		<span><i class="user-ico"></i></span>
		<input type="text" placeholder="转账流水号" name="alipaynumber" id="payhaopin-input">
	</div>
</li>
<li>
	<div class="user">
		<span><i class="user-ico"></i></span>
		<input type="text" placeholder="付款帐号" name="alipay" id="payhaopin-input">
	</div>
</li>
<li>
	<div class="user">
		<span><i class="user-ico"></i></span>
		<input type="text" placeholder="真实姓名/和转账帐号实名认证人一致" name="relname" id="payhaopin-input">
	</div>
</li>
<li>
	<div class="user">
		<span><i class="user-ico"></i></span>
		<input type="text" placeholder="商品ID" name="itemurl" value="{$paySubmit['numiid']}" id="payhaopin-input">
	</div>
</li>
<input type="hidden"name="numiid" value="{$paySubmit['numiid']}">
<input type="hidden"name="typeid" value="{$paySubmit['typeid']}">
<input type="hidden"name="itemsId" value="{$paySubmit['id']}">
<input type="hidden"name="username" value="{$paySubmit['uid']}">
<li>
	<input type="button" tabindex="5" value="提交订单" id="smt_resetphone_one" class="smthaopinzhe">
</li>
</ul>
</form>

</div>
</div>
</div>
