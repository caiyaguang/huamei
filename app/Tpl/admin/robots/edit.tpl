
<include file="public:header" />
<style type="text/css">
.subnav .title_2.line_x a {
	color: #F00;
}
</style>
<div class="subnav">
    <h1 class="title_2 line_x">采集器修改-阿里妈妈API2.0采集器 <a href="http://bbs.138gzs.com/thread-4293-1-1.html" target="_blank">采集器教程点击查看</a></h1>
</div>
<div class="pad_lr_10" >
	<form id="info_form" action="{:U('robots/edit')}" name="searchform" method="post" >
	<table width="100%" cellspacing="0" class="table_form">
	<tbody>
		<tr>
			<th width="150">{:L('tbk_name')}：</th>
			<td>
				<input name="name" type="text" id="J_name" class="input-text" size="20" value="{$info.name}"/>
				<span class="gray ml10">{:L('tbk_name_desc')}</span>
				<input type="hidden" name="http_mode"  value="{$info.http_mode}" />
			</td>
		</tr>
		<tr class="tb_mod">
			<th>淘宝商品分类ID：</th>
			<td>
				<select class="J_tbcats mr10">
                        <option value="0">--所有--</option>
                        <option value="121266001">众筹</option><option value="50023722">隐形眼镜/护理液</option><option value="50026555">购物提货券/蛋糕面包</option><option value="50026523">休闲娱乐</option><option value="50008075">餐饮美食</option><option value="50019095">超市卡/商场购物卡</option><option value="50014927">教育培训</option><option value="26">汽车/用品/配件/改装</option><option value="50020808">家居饰品</option><option value="50020857">特色手工艺</option><option value="50025707">度假线路/签证送关/旅游服务</option><option value="30">男装</option><option value="50008164">住宅家具</option><option value="50020611">商业/办公家具</option><option value="50023904">国货精品数码</option><option value="50010788">彩妆/香水/美妆工具</option><option value="1801">美容护肤/美体/精油</option><option value="50023282">美发护发/假发</option><option value="1512">手机</option><option value="14">数码相机/单反相机/摄像机</option><option value="1201">MP3/MP4/iPod/录音笔</option><option value="1101">笔记本电脑</option><option value="50019780">平板电脑/MID</option><option value="50018222">DIY电脑</option><option value="11">电脑硬件/显示器/电脑周边</option><option value="50018264">网络设备/网络相关</option><option value="50008090">3C数码配件</option><option value="50012164">闪存卡/U盘/存储/移动硬盘</option><option value="50007218">办公设备/耗材/相关服务</option><option value="50018004">电子词典/电纸书/文化用品</option><option value="20">电玩/配件/游戏/攻略</option><option value="50022703">大家电</option><option value="50011972">影音电器</option><option value="50012100">生活电器</option><option value="50012082">厨房电器</option><option value="50002768">个人护理/保健/按摩器材</option><option value="27">家装主材</option><option value="50020332">基础建材</option><option value="50020485">五金/工具</option><option value="50020579">电子/电工</option><option value="50050471">婚庆/摄影/摄像服务</option><option value="50011949">特价酒店/特色客栈/公寓旅馆</option><option value="21">居家日用</option><option value="50016349">厨房/烹饪用具</option><option value="50016348">家庭/个人清洁工具</option><option value="50008163">床上用品</option><option value="35">奶粉/辅食/营养品/零食</option><option value="50014812">尿片/洗护/喂哺/推车床</option><option value="50022517">孕妇装/孕产妇用品/营养</option><option value="50008165">童装/婴儿装/亲子装</option><option value="50020275">传统滋补营养品</option><option value="50002766">零食/坚果/特产</option><option value="50016422">粮油米面/南北干货/调味品</option><option value="121380001">国内机票/国际机票/增值服务</option><option value="121536003">数字娱乐</option><option value="121536007">全球购代购市场</option><option value="40">腾讯QQ专区</option><option value="50010728">运动/瑜伽/健身/球迷用品</option><option value="50013886">户外/登山/野营/旅行用品</option><option value="50011699">运动服/休闲服装</option><option value="25">玩具/童车/益智/积木/模型</option><option value="50011665">网游装备/游戏币/帐号/代练</option><option value="50008907">手机号码/套餐/增值业务</option><option value="99">网络游戏点卡</option><option value="23">古董/邮币/字画/收藏</option><option value="50007216">鲜花速递/花卉仿真/绿植园艺</option><option value="50004958">移动/联通/电信充值中心</option><option value="50011740">流行男鞋</option><option value="16">女装/女士精品</option><option value="50006843">女鞋</option><option value="50006842">箱包皮具/热销女包/男包</option><option value="1625">女士内衣/男士内衣/家居服</option><option value="50010404">服饰配件/皮带/帽子/围巾</option><option value="50011397">珠宝/钻石/翡翠/黄金</option><option value="28">ZIPPO/瑞士军刀/眼镜</option><option value="33">书籍/杂志/报纸</option><option value="34">音乐/影视/明星/音像</option><option value="50017300">乐器/吉他/钢琴/配件</option><option value="29">宠物/宠物食品及用品</option><option value="2813">成人用品/避孕/计生用品</option><option value="50012029">运动鞋new</option><option value="50013864">饰品/流行首饰/时尚饰品新</option><option value="50014811">网店/网络服务/软件</option><option value="50016891">游戏物品交易平台</option><option value="50023724">其他</option><option value="50017652">TP服务商大类</option><option value="50019379">合作商家</option><option value="50023575">房产/租房/新房/二手房/委托服务</option><option value="50023717">OTC药品/医疗器械/计生用品</option><option value="50023878">自用闲置转让</option><option value="50024971">新车/二手车</option><option value="50025004">个性定制/设计服务/DIY</option><option value="50025110">电影/演出/体育赛事</option><option value="50025618">理财</option><option value="50025705">洗护清洁剂/卫生巾/纸/香薰</option><option value="50026316">咖啡/麦片/冲饮</option><option value="50023804">装修设计/施工/监理</option><option value="50026800">保健食品/膳食营养补充食品</option><option value="50050359">水产肉类/新鲜蔬果/熟食</option><option value="50074001">摩托车/装备/配件</option><option value="50158001">网络店铺代金/优惠券</option><option value="50230002">服务商品</option><option value="50454031">景点门票/实景演出/主题乐园</option><option value="50468001">手表</option><option value="50510002">运动包/户外包/配件</option><option value="50008141">酒类</option><option value="50690010">无线生活服务</option><option value="122650005">童鞋/婴儿鞋/亲子鞋</option><option value="122684003">自行车/骑行装备/零配件</option><option value="122718004">家庭保健</option><option value="122852001">居家布艺</option><option value="122950001">节庆用品/礼品</option><option value="122952001">餐饮具</option><option value="122928002">收纳整理</option><option value="122966004">处方药</option><option value="123690003">中药饮片</option><option value="124044001">品牌台机/品牌一体机/服务器</option><option value="124116010">零售O2O</option><option value="124242008">智能设备</option><option value="124354002">电动车/配件/交通工具</option><option value="124466001">农用物资</option><option value="124468001">农机/农具/农膜</option><option value="124484008">模玩/动漫/周边/cos/桌游</option><option value="124458005">茶</option>			</select>

				<input id="J_cid" name="cid" type="text" class="input-text" size="20" value="{$info.cid}" /></td>
		</tr>
		<tr>
			<th>所属分类：</th>
			<td>
				<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$selected_ids}"></select>
				<input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" />
			</td>
		</tr>
		<tr>
			<th>{:L('keyword')}：</th>
			<td>
				<input name="keyword" type="text" class="input-text" size="20" value="{$info.keyword}" />
				<span class="gray ml10">填写一个，不可多个</span>
			</td>
		</tr>
		<tr>
			<th>采集页数：</th>
			<td>
				<select name="page" id="page">
				<?php for($a=1;$a<=100;$a++){?>
				<option value="<?=$a?>" <if condition="$info.page eq $a"> selected</if> >采集<?php echo $a; ?>页</option>
				<?php } ?>
				</select>
			</td>
		</tr>
		<tr>
			<th>{:L('sort_order')}：</th>
			<td>
			<select name="sort">
				<option value="tk_rate" <if condition="$info.sort eq 'tk_rate'"> selected</if>>佣金比率</option>
				<option value="total_sales" <if condition="$info.sort eq 'total_sales'"> selected</if>>销量</option>
				<option value="tk_total_sales" <if condition="$info.sort eq 'tk_total_sales'"> selected</if>>累计推广量</option>
				<option value="tk_total_commi" <if condition="$info.sort eq 'tk_total_commi'"> selected</if>>总支出佣金</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>佣金比率：</th>
			<td>
				<input type="text" name="start_commissionRate" size="10" class="input-text" value="{$info.start_commissionRate}"  />- 
				<input type="text" name="end_commissionRate" size="10" class="input-text" value="{$info.end_commissionRate}" />
				<span class="gray ml10">{:L('tbk_item_coupon_rate_desc')}</span>
			</td>
		</tr>
		<tr>
			<th>价格：</th>
			<td>
				<input type="text" name="start_price" size="10" class="input-text" value="{$info.start_price}"/> - 
				<input type="text" name="end_price" size="10" class="input-text" value="{$info.end_price}"/> 
				<span class="gray ml10">可不填，最低价格和最高最高一起设置才有效</span>
			</td>
		</tr>
		<tr>
			<th><font color="red">[新]</font> 是否更新分类：</th>
			<td>
				<input name="recid" id="recid0" value="0"  type="radio" <if condition="$info.recid eq '0'"> checked</if>><label for="recid0">&nbsp;不&nbsp;更&nbsp;新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input name="recid" id="recid1" value="1"  type="radio" <if condition="$info.recid eq '1'"> checked</if>><label for="recid1">&nbsp;更&nbsp;新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<span class="gray ml10">如果采集的商品之前已经采集过更新信息时更正目前选择的分类</span>
			</td>
		</tr>
		<tr>
			<th>是否商城：</th>
			<td>
				<label class="mr10"><input type="checkbox" name="shop_type" value="B" <if condition="$info.shop_type eq 'B'"> checked</if>> {:L('only_tmall')}</label>
			</td>
		</tr>
		<tr>
			<th></th>
			<td>
				<input type="hidden" name="id"  value="{$info.id}" />
				<input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
			</td>
		</tr>
	</tbody>
	</table>
	</form>
</div>
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择');
$(function(){
    var uri = "{:U('robots/ajax_get_tbcats')}";
	var selectcid= "{$info.cid}";
    $('.J_tbcats').die('change').live('change', function(){
        var _this = $(this),
            _cid = _this.val();
        _this.nextAll('.J_tbcats').remove();
        $.getJSON(uri, {cid:_cid}, function(result){
            if(result.status == '1'){
                var _childs = $('<select class="J_tbcats mr10"><option value="0">--'+lang.all+'--</option></select>')
                for(var i=0; i<result.data.length; i++){
					if(result.data[i].cid == selectcid){
						$('<option value="'+result.data[i].cid+'" selected>'+result.data[i].name+'</option>').appendTo(_childs);
					}else{
						$('<option value="'+result.data[i].cid+'">'+result.data[i].name+'</option>').appendTo(_childs);
					}
                }
                _childs.insertAfter(_this);
            }
        });
        $('#J_cid').val(_cid);
    });
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});
});
</script>
</body>
</html>