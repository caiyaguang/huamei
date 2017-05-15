<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/gift.css" />
</head>
<body>
<body>       
<div class="main">
<include file='public:giftheader'/>
    <div class="app">	
    <header class="head" id="head">
        <div class="fixtop">
                        <span id="t-find"><a class="btn btn-left btn-back" href="javascript:window.history.go(-1)" title="返回上一页"></a></span>
                        <span id="t-index">兑换商品详情</span>
                         <span id="classify" class="classify"><a href="javascript:;" class="btn btn-left btn-type"></a></span>
                    </div>        
    </header>
        
            <div id="item">
                <div class="item-good">
                    <div class="img_show">
                        <ul id="target" class="clear">
                            <li><img src="{:attach(str_replace('_s.'.array_pop(explode('.', $item['img'])), '_b.'.array_pop(explode('.', $item['img'])), $item['img']), 'score_item')}"></li>
                        </ul>                
                    </div>
                    <div class="list-price buy">
					<div class="price-info fl">
				<h3>{$item.title}</h3>
				<p>您的当前积分：<notempty name="visitor"><em class="unit">{$info.score}</em><else/><span class="jd-current"><a href="{:U('user/login')}">点此登录</a></span></notempty>	</p>
				<p>所需积分：<em class="unit">{$item.score}</em><span class="jd-current">/份</span> </p>
				<p>剩余份数：<em class="org_2">{$item.stock}</em> 份</p>
				<p>兑换时间：{$item.start_time|date="y年m月d日 H时s分",###} - {$item.end_time|date="y年m月d日 H时s分",###}</p>
				<p>兑换限制：每人限兑换<em class="org_2">{$item.user_num}</em></span>份</p>				
			</div>
                </div>
        </div>
		<a href="javascript:;" target="_self" class="btn-pay buy J_gift_btn" data-id="{$item.id}" data-num="#J_num_{$item.id}" rel="nofollow">我要兑换</a>                
                <div class="bady-part">
                    <div id="bady-tab" class="bady-tab clear">
                        <ul>
                            <li><a href="javascript:;">图文详情</a> </li>
                            <li><a href="javascript:;">推荐理由</a> </li>
                            <li><a href="javascript:;">兑换规则</a> </li>
                        </ul>
                    </div>
                    <div class="tab1">
					{$item.info}
                    </div>
                    <div class="com-big tab2"  style="display:none;">
                        <div class="com-list">
                               <ul>
							   <li>
                               {$item.desc}
							   </li>
							   
							   </ul>
                                                    </div>
                    </div>
                    <div class="com-big tab3" style="display:none">
                        <div class="com-list">
                            <ul>
                           
						<h2 style="text-indent:1em">兑换说明</h2>
						<li>1、兑换开始后，所有{:C('ftx_site_name')}会员均可点击“我要兑换”按钮进行兑换。</li>
						<li>2、为了更好的回馈会员，所有的礼品兑换不收取任何费用（实物礼品我们包邮为您送到家）。</li>
						<li>3、只能使用在{:C('ftx_site_name')}获得的积分兑换，积分余额不足则不能兑换。</li>
						<li>4、一旦兑换即扣除相应积分，所兑换的礼品将在后台审核后发出。如审核过程中发现该用户积分行为异常，兑换礼品将不予发放，已扣除积分不退还。如该用户恶意刷积分行为严重，我们保留不另行通知而直接封禁该用户账号的权利。</li>
					
						<h2 style="text-indent:1em">注意事项</h2>
						<li>1、所有礼品（除支付宝红包、优惠券等虚拟礼品除外）在兑换后的1-2个工作日，本站将从合作商城购买，具体到货时间取决于合作商城发货情况。</li>
						<li>2、若兑换礼品缺货或收货地址无法送达，我们会在1~2个工作日将相应返利或积分返还至您的账户中。</li>
						<li>3、提交兑换后，需经管理员审核，成功后将以站内信，邮件等方式通知您。</li>
						<li>4、兑换下单都有数量限制，兑换数量不足时，将无法申请兑换。</li>
						<li>5、实物礼品是{:C('ftx_site_name')}与第三方网站合作完成的兑换。如因购买时价格变动，{:C('ftx_site_name')}和会员双方均不需要作差价补偿。</li>
					
			
							</ul>
                        </div>
                    </div>
                </div>
            </div>

                 <div class="normal item-recommend clear">
                <h3><span>猜你还喜欢:</span></h3>
                <ul class="goods-list clear" id="goods_block">
				<include file="public:gifthotitems" />
                </ul>
            </div>
                 
                <div class="buy_btn clear">
                <a href="{:C('ftx_header_html')}" class="go_home"><img src="/static/jwap/images/home.png">返回首页</a>
                <div class="buy_info">
				<a href="javascript:;" data-id="{$item.id}" data-num="#J_num_{$item.id}" target="_self" class="go_tmall J_gift_btn" rel="nofollow">我要兑换<i></i></a>
				</div>
            </div>
			
			<include file='public:footer'/>
           </div>
		   </div>

    
    <script type="text/javascript">
        $("#bady-tab li").eq(0).addClass("active");        
        $('#bady-tab li').on('click', function(){
        $("#bady-tab li").removeClass("active");
        $(this).addClass("active");
        $(".tab1,.tab2,.tab3").hide();
        $(".tab"+($(this).index()+1)).show();
        });		
    </script>
    <script src="__STATIC__/jwap/js/gift.js"></script>	
	<include file='public:footjs'/>
</body>
</html>