<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css
 href="__STATIC__/red/css/user.css" />
 <script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<link rel="stylesheet" href="__STATIC__/js/kindeditor/themes/default/default.css" />
<script src="__STATIC__/js/kindeditor/kindeditor.js"></script>
<script src="__STATIC__/js/kindeditor/lang/zh_CN.js"></script>
<script>
	KindEditor.ready(function(K) {
		var root = "{:C('ftx_site_url')}";
		var editor = K.editor({
			allowFileManager : true
		});
		K('#image3').click(function() {
			editor.loadPlugin('image', function() {
				editor.plugin.imageDialog({
					showRemote : false,
					imageUrl : K('#J_pic_url').val(),
					clickFn : function(url, title, width, height, border, align) {
						K('#J_pic_url').val(root + url);
						editor.hideDialog();
					}
				});
			});
		});
	});
</script>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="item"><a href="{:U('user/item')}">活动管理</a></li>
					<li id="additem"><a href="{:U('user/additem')}">发布活动</a></li>
					<li id="order"><a href="{:U('user/orderManage')}">订单管理</a></li>
					<li id="complain"><a href="{:U('user/complain')}">申诉记录</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #additem').addClass('active');
			</script>
			<div class="u-tip">
				<p>为了您发布的活动能快速通过审核，请务必认真填写！</p>
			</div>


			<form id="infoset" name="form1" action="" method="post" class="ml30 mt30">
				<div class="address">
					<ul>
						<li>
							<div class="user">
								<label>商品标题：</label>
								<input name="info[title]" type="text" style="width:250px;" class="ddinput" value="{$item.title}"/>
							</div>
							<div class="error-box">
								<label class="warn">规范格式：【拍A发B（B产品名称）】A产品名称</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>下单地址：</label>
								<input name="info[click_url]" type="text" style="width:250px;" class="ddinput" value="{$item.click_url}"/>
							</div>
							<div class="error-box">
								<label class="warn">请填写方便管理员审核</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>发布份数：</label>
								<input name="info[num]" type="text" onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" size="20" maxlength="50" style="width:150px;" class="ddinput" value="{$item.num}"/>
							</div>
							<div class="error-box">
								<label class="warn">填入您所要发布产品的数量</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>商品图片：</label>
								<input type="text" name="info[pic_url]" class="ddinput"  id="J_pic_url" size="50" value="{$item.pic_url}">
								<input type="button" id="image3" value="上传图片"/>
							</div>
							<div class="error-box">
								<label class="warn">填入您所要发布产品的数量</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>下单价：</label>
								<input name="info[price]" type="text" onKeypress="return (/[\d.]/.test(String.fromCharCode(event.keyCode)))" size="20" maxlength="50" style="width:100px;ime-mode:Disabled" class="ddinput" value="{$item.price}" /> 元
							</div>
							<div class="error-box">
								<label class="warn">产品在淘宝的价格</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>优惠价：</label>
								<input name="info[coupon_price]" type="text" onkeyup="value=value.replace(/[^\d]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" size="20" maxlength="50" style="width:100px;" class="ddinput"  value="{$item.coupon_price}" disabled/> 元
							</div>
							<div class="error-box">
								<label class="warn">活动仅支持0元</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>开始时间:</label>
								<input name="info[start_time]" id="coupon_start_time" type="text" style="width:100px;" class="ddinput" value="{$item.start_time|date="Y-m-d H:i",###}"/> 天
							</div>
							<div class="error-box">
								<label class="warn">活动开始时间</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>结束时间:</label>
								<input name="info[end_time]" id="coupon_end_time" type="text" style="width:100px;" class="ddinput" value="{$item.end_time|date="Y-m-d H:i",###}"/> 天
							</div>
							<div class="error-box">
								<label class="warn">活动结束时间</label>
							</div>
						</li>
						<li>
							<div class="user">
								<label>商品简介：</label>
								<textarea name="info[content]" id="info" style="width:560px;height:400px;visibility:hidden;resize:none;">{$item['content']}</textarea>
							</div>
						</li>
						<li>
							<input type="hidden" name="info[id]" value="{$item.id}">
							<input type="submit" class="smt smt1" value="提交发布">
						</li>
					</ul>
				</div>
			</form>


		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
<script type="text/javascript">
$(function() {
	window.editor = KindEditor.create('#info', {
		uploadJson : '{:U("attachment/editer_upload")}',
		fileManagerJson : '{:U("attachment/editer_manager")}',
		allowFileManager : true
	});
});
</script>
 <script language="javascript" type="text/javascript">
    Calendar.setup({
        inputField     :    "coupon_start_time",
        ifFormat       :    "%Y-%m-%d %H:%M",
        showsTime      :    'true',
        timeFormat     :    "24"
    });
</script>
<script language="javascript" type="text/javascript">
    Calendar.setup({
        inputField     :    "coupon_end_time",
        ifFormat       :    "%Y-%m-%d %H:%M",
        showsTime      :    'true',
        timeFormat     :    "24"
    });
</script>
</body>
</html>

