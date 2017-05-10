<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>{:C('ftx_site_name')} - {$page_seo.title}</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<meta name="generator" content="yangtata" />
<meta name="renderer" content="webkit">
<meta name="author" content="Yangtata Team  bbs.yangtata.com" />
<meta name="copyright" content="2010-2014 Yangtata Inc." />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>
<script type="text/javascript">
	SITEURL="{:C('ftx_site_url')}";
	CURURL="{:C('ftx_site_url')}";
	WEBNICK="{:C('ftx_site_name')}";
	URL_COOKIE=0;
</script>
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/md-list.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" />
<script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/sea-debug.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/fun.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script>
<script type="text/javascript" src="__STATIC__/newpi/js/header.js"></script>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/global.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/kefu.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/baoming.css" />
<link href="__STATIC__/red/css/global1.0.css" media="screen" rel="stylesheet" type="text/css"/>
<link href="__STATIC__/red/css/pro1.0.2.css" media="screen" rel="stylesheet" type="text/css"/>  
<link href="__STATIC__/red/css/index1.0.1.css" media="screen" rel="stylesheet" type="text/css"/> 
<script src="__STATIC__/red/js/jquery.1.6.4.min.js" type="text/javascript"></script>  
<script src="__STATIC__/red/js/scrolltopcontrol.js?3201408011" type="text/javascript"></script>
<script src="__STATIC__/red/js/pp18610_v2.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/tuanpub2.4.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/businesspub2.5.min.js" type="text/javascript"></script>    
<script src="__STATIC__/red/js/businessaccount1.8.1.min.js" type="text/javascript"></script>
</head>
<body>
<include file="public:header2" />
<!--main start -->
<div class="main {:C('ftx_site_width')} mb20 main-newgood">
		<div class="form-result">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th width="10%">报名时间</th>
					<th width="">商品名称</th>
					<th width="8%">商品原价</th>
					<th width="8%">活动价格</th>
					<th width="10%">包邮范围</th>
					<th width="10%">30天销售</th>
					<th width="10%">审核状态</th>
					<th width="15%">审核信息</th>
					<th width="10%">订单状态</th>
					<th width="10%" class="last">操作</th>
				</tr>

				<notempty name="goods_list">
					<volist name="goods_list" id="val">

					<tr>
					<td>{$val.add_time|date="Y-m-d H:i:s",###}</td>
					<td style="text-align:left"><a href="http://item.taobao.com/item.htm?id={$val.num_iid}" class="name" target="_blank">{$val.title}</a></td>
					<td>{$val.price}</td>
					<td>{$val.coupon_price}</td>
					<td><if condition="$val.ems eq 1">包邮<else/>不包邮</if></td>
					<td>{$val.volume}</td>
					<td><div class="red">
						<if condition="$val.pass eq 1"><span>通过</span>						
						<elseif condition="$val.pass eq 0" />
							<if condition="$val.status eq 'fail'"><span>未通过</span><else/><span>审核中</span></if>
						<elseif condition="$val.pass eq 2" /><span>初审通过</span></if>
						</div>
					</td>
					<td><div class="green">
					<if condition="$val.pass eq 1"><span>恭喜！您的商品已通过审核</span><span><a href="{:U('item/index',array('id'=>$val['id']))}"  target="_blank">查看</a><elseif condition="$val.pass eq 0" /><if condition="$val.status eq 'fail'"><span>{$val.fail_reason}</span><else/><span>您的商品正在审核中</span></if><elseif condition="$val.pass eq 2" /><span>{$val.fail_reason}</span></if>
					</div>
					</td>
					<!-- <td>{purl}</td> -->
					<td class="last">
						<!-- <a href="{:U('baoming/payitems',array('fkid'=>$val['num_iid'], 'typeid'=>$val['baotype'], 'price'=>$val['price'], 'sellerId'=>$val['sellerId'], 'likes'=>$val['likes'], ))}" class="btn-blue">充值</a> -->
						{$val}
					</td>
					<td class="last">
						<a href="{:U('baoming/edit',array('id'=>$val['id']))}" class="btn-blue">修改</a>
					</td>
					</tr>
 
					</volist>
			</table>
					<else/>
			</table>
					<div class="tc f14 pt50">没有找到您要查询的信息哦，您可以先去<a href="{:U('bao/index')}" style="color:#0289CD;">报名&gt;&gt;</a></div>
					</notempty>

							<div class="page_div {:C('ftx_site_width')}">
<div class="list_page">
{$page_btn}
</div>
<span class="picnext"></span>
</div> 
		</div>
		    		</div>
	</div>
</div>

<script type="text/javascript">
  ScrollImgLeft();
</script>
<include file="public:footer" />
<script src="__STATIC__/ftxia/js/goods.js"></script>
</body>
</html>