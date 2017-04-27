<!doctype html>
<html>
<head>
<include file="public:head" />
<css file="__STATIC__/ftxia/css/goods.css" />
<css file="__STATIC__/css/ftxia/table_form.css" />
</head>
<body>
<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="mains">
    <div class="contain register_con">
        <div class="left_con fl">
			<ul class="left_nav">
				<li class="cur"><a href="{:U('goods/goods_add')}">报名新宝贝</a></li>
				<li><a href="{:U('goods/mygoods')}">已报名宝贝</a></li>
			</ul>
		</div>	

        <div class="right_con fr">
            <div class="re_content">
                <h3 class="title">　宝贝修改 :</h3>

                <form action="{:U('goods/goods_edit')}" method="post" name="form" class="GoodsAddform">


				<ul>
						<li>
							<label>宝贝标题：</label>
							<input id="title" name="title" type="text"  class="txt txt02"  value="{$item.title}"  >
									 
						</li>
                        
                        <li class="j_class">
                        <label class="fenlei">商品分类：</label>
													<select class="J_cate_select mr10" id="J_cate_select" data-pid="0"   data-uri="{:U('item/ajax_getchilds', array('type'=>0))}" data-selected="{$item.cate_id}"></select>
							<input type="hidden" name="cate_id" id="J_cate_id" value="{$item.cate_id}" />
							<p class="tips"><span id="cate_id_err" class="red onError">请选择分类</span></p>
													<p class="tips" id="fenlei">商品分类</p>
                        </li>
                        <li>
                            <label>图片链接：</label>
                            <p class="s4" style="width: 600px;">
                            	<input type="text" class="txt txt02" id="img_link" value="{$item.pic_url}" def-val="图片">
							</p>
                            <p class="tips"><span id="pic_error" class="red onError">图片链接不能为空</span></p>
                            <p class="tips">  图片比例，<span class="green">310x310像素</span>	 </p>
                            <p class="tips" style="color:#139C00">注：请输入淘宝的图片网络地址，尺寸要求如上所述</p>
                        </li>

                        <li><label>宝贝库存：</label><input type="text" id="good_inventory" name="inventory" class="txt good_inventory" value="{$item.inventory}" maxlength="5">
                            <p class="tips"><span id="good_inventory_err" class="red onError">库存不能为空哦</span></p>
                            <p class="tips">库存不能低于200件</p>
                        </li>

						<li><label>原来价格：</label><input type="text" id="price" class="txt price" name="price" value="{$item.price}">
                            <p class="tips"><span id="price_err" class="red onError">请输入原价</span></p>
                            <p class="tips"></p>
                        </li>

                        <li><label>报名价格：</label><input type="text" id="good_price" class="txt good_price" name="good_price" value="{$item.coupon_price}">
                            <p class="tips"><span id="good_price_err" class="red onError">请输入报名价格</span></p>
                            <p class="tips"></p>
                        </li>

						<li><label>当前销量：</label><input type="text" id="volume" class="txt good_price" name="volume" value="{$item.volume}">
                            <p class="tips"><span id="volume_err" class="red onError">请输入当前销量</span></p>
                            <p class="tips"></p>
                        </li>

						<li><label>是否包邮：</label>
								<input name="ems" value="0" id="emss_not" type="radio" class="radio" <if condition="$item['ems'] eq 0">checked</if>>
								<label class="radio_lalel" for="emss_not">不包邮</label>&nbsp;&nbsp;
								<input name="ems" value="1" id="emss" type="radio" class="radio" <if condition="$item['ems'] eq 1">checked</if>>
								<label class="radio_lalel" for="emss">包邮</label>&nbsp;&nbsp;
                            <p class="tips"></p>
                        </li>
                        <li>
                            <label>推荐理由：</label>
                            <textarea id="intro" name="intro" maxlength="140">{$item.intro}</textarea>
                            <p class="tips"><span id="intros" class="red onError">请输入推荐理由</span></p>
                        </li>


						<li class="j_class">
                        <label class="fenlei">商品来源：</label>
                        <select name="shop_type" id="shop_type">
							<volist name="orig_list" id="val">
							<option value="{$val.type}" <if condition="$val.type eq $item.shop_type">selected="selected"</if>>{$val.name}</option>
							</volist>
						</select>
                        <p class="s1" id="shop_types" style="display:none;"></p>
                        </li>
                        <li><label></label>
							<input type="hidden" class="iid" name="iid" id="iid" value="{$item.num_iid}">
							<input type="hidden" class="nick" name="nick" id="nick" value="{$item.nick}">
							<input type="hidden" class="id" name="id" id="id" value="{$item.id}">
							<input type="button" tabindex="5" value="提 交" id="smt_edt" class="smt submit">
                        </li>
                    </ul>
 
                </form>
            </div>
        </div>
        <!-- end of right_con -->
    </div>
    <!-- end of contain -->
</div>

<!--主部结束-->
<include file="public:footer" />
<script src="__STATIC__/js/select.js"></script>
<script src="__STATIC__/ftxia/js/goods.js"></script>
<script type="text/javascript">
$('.J_cate_select').cate_select('请选择分类');
</script>

</body>
</html>