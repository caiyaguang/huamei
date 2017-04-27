<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="edge" />
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="/static/newpi/css/pg-zhe-main.css" />
<script type="text/javascript" src="/static/red/js/index.js"></script>
<link rel="stylesheet" type="text/css" href="/static/red/css/view.css" />
</head>
<body>
<include file="public:header" />
<div class="main w1200">
	<div class="place-explain">
		您的位置：<a target="_blank" href="{:C('ftx_site_url')}">{:C('ftx_site_name')}</a>
		&nbsp;&gt;&nbsp;			
					<a target="_blank" href="{:U('brand/cate', array('cid'=>$brandcate['id']))}">{$brandcate['name']}</a>
		&nbsp;&gt;&nbsp; 
		<a class="bady-xx-seo" isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}">{$item.title}</a>
	</div>
	<div class="w1200">
	<div class="container fl">
		<div class="product clear">
			<div class="product-pic fl">		
		<a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_blank" rel="nofollow"><img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="{$item.title}" /></a>
			</div>
			<div class="product-info fl">			
				<h3>       
		<a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_blank" rel="nofollow">{$item.title}</a>
				</h3>				
				<dl class="jp-size">
					<dt>宝贝属性：</dt>
					<dd>
						<ul>
                        <if condition="C('ftx_tag_auto') eq '1'">
                        <volist name="tags" id="tag">	
                        <?php $pinyin = new pinyin();$ekeys = $pinyin -> getAllPY($tag);?>						
                            <li><a class="active" href="{:U('tag/view',array('k'=>$ekeys))}" target="_blank"><span>{$tag}</span></a></li>  
                        </volist>
                        <else />
                        <volist name="tags" id="tag">
                            <li><a class="active" isconvert=1 data-keyword="{$tag}" target="_blank"><span>{$tag}</span></a></li>  
                        </volist>
                        </if>
						</ul>
					</dd>
					
				</dl>
				<p class="tips clear">
				<span class="item-pr fl">原价：<em class="old-price ffv">{$item.price}元</em></span>
					<span class="fl">折扣：<em class="org_2 ffv">{$item.coupon_rate}折</em></span>
				</p>
				<p class="price">
					<span class="title-tips01">折扣价格<em class="tip-b"></em></span>
					<em class="org">￥</em><span class="jd-current">{$item.coupon_price}</span> 					
				</p>
				<div class="pg"></div>
				<div class="item-btn clear">
					<span class="btn-tip fl">
                        <a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_blank" rel="nofollow" class="buybtn fl"><span>去抢购</span></a></if>
					</span>
				</div>			
           <p class="price bady-time">
				  
					<span class="fl">上架时间：</span>
					<span class="buy_time fl" >{$item.add_time|date="m月d日 H时i分",###}</span>
					
                				
				</p>				
				<div class="other_info clear">
     
      <div class="keyword fl ">                                       
           <a><span>{$item.cu}</span></a>
      </div>
      <div class="share_box pr fl">
		<span id="share">
        <a href="" class=""><em class="share-icon"></em>分享</a>	
		<div class="share share_people" style="width:200px;left:10px;display:none;">
              <div class="bdsharebuttonbox bdshare-button-style0-16" data-tag="share_1" data-bd-bind="{$item.num_iid}">
                  <a class="bds_qzone" data-cmd="qzone" href="#" title="分享到QQ空间"></a>
                  <a class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                  <a class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
				  <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
				  <a href="#" class="bds_bdysc" data-cmd="bdysc" title="分享到百度云收藏"></a>
				  <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
				  <a href="#" class="bds_meilishuo" data-cmd="meilishuo" title="分享到美丽说"></a>
				  <a href="#" class="bds_copy" data-cmd="copy" title="分享到复制网址"></a>
              </div>
              <em class="user_cur"></em>
              <script>
                  window._bd_share_config={
                      "common":{
                          "bdSnsKey":{},
                          "bdUrl":location.href,
                          "bdText":"{$item.title}",
                          "bdDesc":"{$item.intro}",
                          "bdComment":"{$info.feedback}",
                          "bdMini":"2",
                          "bdMiniList":false,
                          "bdPic":'{$item.pic_url}',
                          "bdStyle":"0",
                          "bdSize":"16",
                          "onBeforeClick":function(cmd,config){
                          }
                      },
                      "share":{}};
              </script>
              <script type="text/javascript" src="/static/newpi/js/bd-share.js"></script>
          </div>
		</span>
          
      </div>
    </div>				
		</div>
		</div>
		
		<div class="product-comment">
			<div class="bady-tab" id="bady-tab">
				<ul>
					<li class="tab1">
						<a class="badyactive" href="#desc">商品详情</a>
						<div class="bady-line-top"></div>
					</li>
					<li class="tab2">
						<a class="" href="#comm">买家评价</a>
						<div class=""></div>
					</li>
					<li class="tab3">
						<a href="#user_comment" class="">推荐理由<em></em></a>
						<div class=""></div>
					</li>					
				</ul>
				<div class="gobuy fr" style="display: none; ">
					<span class="title-tips01">折扣价格<em class="tip-b"></em></span>
					<p class="price fl">
						<em class="org">￥</em> 
						<span class="jd-current">{$item.coupon_price}</span> 
					</p>
					<span class="tbuy">							
					<a isconvert=1 href="http://detail.tmall.com/item.htm?id={$item['num_iid']}" target="_blank" rel="nofollow" class="buybtn fl"><span>去抢购</span></a>			
					</span>              				
				</div>
			</div>
			
			<div class="bady-tab bady-tab01" >			
				<ul>	
				   <li style="border-right: none">
						<a name="desc" class="" href="#tab1">商品详情<em></em></a>
						<div class=""></div>
					</li>					 
				</ul>
			</div>
			<div class="huamei">
		<ul>
		{$info.ku}
		</ul>
		</div>
		<div class="clear"></div>
		<div style="display: block;"  class="information comment" >		
		
		<p id="descimg">
		{$item.desc}
        </p>		
		</div>
			
			<div class="bady-tab bady-tab02" >		
				<ul>
					<li style="border-right: none">
						<a name="comm" class="" href="#tab2">买家评价<em></em></a>
						<div class=""></div>
					</li>					 
				</ul>
			</div>
		<div  style="display: block;"  class="information comment" >		
		<div class="ds-thread" data-thread-key="{$item.id}" data-title="{$item.title}" data-url="{:C('ftx_site_url')}index.php?m=item&a=index&id={$item.id}"></div>  
	   <div class="pllist" id="note_comment_list">
	
      <if condition="$info['feedback'] eq '' ">
	  <else/>
	  <dl class="clear">
	  <dt>
	  <a>
	  <img src="{$info.headPic}" width="50px"></a>
	  </dt>
	  <dd class="tit">
	  <a>{$info.nicker}</a></dd>
	  <dd class="info">{$info.feedback}</dd>	  
	  </dl>
	  </if>
	  <if condition="$info['feedback1'] eq '' ">
	  <else/>
	  <dl class="clear">
	  <dt>
	  <a>
	  <img src="{$info.headPic1}" width="50px"></a>
	  </dt>
	  <dd class="tit">
	  <a>{$info.nicker1}</a></dd>
	  <dd class="info">{$info.feedback1}</dd>	  
	  </dl>
	  </if>
	  <if condition="$info['feedback2'] eq '' ">
	  <else/>
	  <dl class="clear">
	  <dt>
	  <a>
	  <img src="{$info.headPic2}" width="50px"></a>
	  </dt>
	  <dd class="tit">
	  <a>{$info.nicker2}</a></dd>
	  <dd class="info">{$info.feedback2}</dd>	  
	  </dl>
	  </if>
	  <if condition="$info['feedback3'] eq '' ">
	  <else/>
	  <dl class="clear">
	  <dt>
	  <a>
	  <img src="{$info.headPic3}" width="50px"></a>
	  </dt>
	  <dd class="tit">
	  <a>{$info.nicker3}</a></dd>
	  <dd class="info">{$info.feedback3}</dd>	  
	  </dl>
	  </if>
	  <if condition="$info['feedback4'] eq ''">
	  <else/>
	  <dl class="clear">
	  <dt>
	  <a>
	  <img src="{$info.headPic4}" width="50px"></a>
	  </dt>  
	  <dd class="tit">
	  <a>{$info.nicker4}</a></dd>
	  <dd class="info">{$info.feedback4}</dd>	  
	  </dl>
	 </if>
	  </div> 
		</div> 
		
	<div class="page page2 tr mb10">
				<div id="J_cmt_page" class="pageNav">{$page_bar}</div>
			</div>
		
		<div class="bady-tab bady-tab02"  >
		  <ul>
		      <li style="border-right: none;">
			  <a name="user_comment" class="" href="#tab3">推荐理由<em></em></a>
			  <div class=""></div>
		      </li>
		  </ul>
		</div>
		<div style="display: block;"  class="information comment" >
			<p>{$item.intro}</p>
		</div>
	</div>
	</div>
	<include file="public:brandhotitems" />
	<div class="clear"></div>
</div>
</div>
<div class="lend"></div>
<script type="text/javascript" src="/static/red/js/deal.js"></script>
<script type="text/javascript">
    $(".bady-tab:eq(0) li:eq(0)").find("a").addClass("badyactive");
    $(".bady-tab:eq(0) li:eq(0)").find("div").addClass("bady-line-top");
    //评论处js切换效果
    $(".bady-tab:eq(0) li").click(function(){
        $(document).scrollTop($('.bady-part').offset().top-1);
        $(".bady-tab").not( $(".bady-tab:eq(0)")).hide();
        $(this).parents("ul").find("a").removeClass("badyactive");
        $(this).parents("ul").find("div").removeClass("bady-line-top");
        $(this).find("a").addClass("badyactive");
        $(this).find("div").addClass("bady-line-top");
        if($(this).index() == 0){
            $(".bady-tab,.information").show();
            if($(".bady-tab").size() - $(".information").size() == 1){
                $(".bady-tab01").hide();
            }else if($(".bady-tab").size() - $(".information").size() == 2){
                $(".bady-tab01").hide();
                $(".bady-tab02").hide();
            }
        }else{
            $(".information").hide();
            $(".information:eq("+$(this).index()+")").show();
        }
    });

    $(".bady-tab:eq(0) li").each(function(index){
        if(typeof($(this).attr("name"))!="undefined"){
            $("#"+$(this).attr("name")).click();
            $("#"+$(this).attr("name")).parents("ul").find("a").removeClass("badyactive");
            $("#"+$(this).attr("name")).parents("ul").find("div").removeClass("bady-line-top");
            $("#"+$(this).attr("name")).find("a").addClass("badyactive");
            $("#"+$(this).attr("name")).find("div").addClass("bady-line-top");
        }
    });

    var F_zhe800CeleMenuAni = function(){
        var jiuMenuObj = $('#bady-tab');
        var Tab01Obj= $('.tab1').find("a")
        var Tab02Obj= $('.tab1').find("div")
        var Tab03Obj= $('.tab2').find("a")
        var Tab04Obj= $('.tab2').find("div")
        var Tab05Obj= $('.tab3').find("a")
        var Tab06Obj= $('.tab3').find("div")	    
        var menuScrolFunc = function(){
            scrolY = $(window).scrollTop();
            if(scrolY < 580){
                jiuMenuObj.removeClass('fixed');
                $('div.gobuy').hide();
            }else{
                jiuMenuObj.addClass('fixed');
                $('div.gobuy').show();
            }
            if(scrolY >=$('.lend').offset().top && !($(".information:eq(0)").is(":hidden"))){		        
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
				Tab05Obj.addClass("badyactive");
                Tab06Obj.addClass("bady-line-top")
            }else if(scrolY >=$('.bady-tab02').offset().top && !($(".information:eq(0)").is(":hidden"))){	                        
                Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
                Tab03Obj.addClass("badyactive");
                Tab04Obj.addClass("bady-line-top")
            }else if(scrolY >= $('.bady-tab01').offset().top && !($(".information:eq(0)").is(":hidden"))){           
                Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
				Tab01Obj.addClass("badyactive");
                Tab02Obj.addClass("bady-line-top")
            }

        }
        var F_nmenu_scroll = function () {
            if (!window.XMLHttpRequest) {
                return;
            }else{
                //默认执行一次
                menuScrolFunc();
                $(window).bind("scroll", menuScrolFunc);
            }
        }
        F_nmenu_scroll();
    }
    F_zhe800CeleMenuAni();
</script>
<include file="public:footer" />
</body>
</html>
