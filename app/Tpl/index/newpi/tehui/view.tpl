<!doctype html>
<html class="jp-pc w1200">
<head>
<meta charset="utf-8" />
<title>{$page_seo.title}</title>
<meta name="keywords" content="{$page_seo.keywords}" />
<meta name="description" content="{$page_seo.description}" />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<meta name="baidu-site-verification" content="4g3s0tRVTt" />
<meta property="qc:admins" content="51407363776141216636" />
<link rel="shortcut icon" type="image/ico" href="/favicon.ico">
<link rel="bookmark" href="/favicon.ico"/>
<script type="text/javascript">
	SITEURL="{:C('ftx_site_url')}";
	CURURL="{:C('ftx_site_url')}";
	WEBNICK="{:C('ftx_site_name')}";
	URL_COOKIE=0;
</script>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/base.css" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/alert.css" />
<link href="__STATIC__/xytao/css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="__STATIC__/dapei/css/index-min.css">
<link rel="stylesheet" type="text/css" href="__STATIC__/dapei/css/common.css">
<link rel="stylesheet" href="__STATIC__/dapei/css/pwater.css">
<link rel="stylesheet" href="__STATIC__/dapei/css/comment.css">
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/global.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-index.css" />
<link rel=stylesheet type=text/css href="__STATIC__/tehui/css/itemview.css" />
<script type="text/javascript" src="__STATIC__/newpi/js/jquery.min.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/fun.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/jquery.cookie.js"></script>
</head>
<body>
<include file="public:header" />
<div class="con-wrap dapei-list-detail clearfix " id="J_listDetail">    
    <div class="dapei-detail-con clearfix" id="J_listDetailCon">
       <div class="detail-main">
    <div class="easybuy-detail-con">
        <div class="easybuy-detail-title">
            <h2>
             <a href="{$item.click_url}" target="_blank">{$item.title}</a>
                            </h2>

            <div class="price-labes">
                                    <a href="{$item.click_url}" target="_blank">
                                                    <span class="discount">{$item.zk}折</span>
                                                <span class="price">¥<em>{$item.zprice}</em></span>
                        <span class="price-del">¥{$item.price}</span>
                    </a>
                                            </div>
        </div>

        <div class="easybuy-detail-des clearfix">
            <div class="go-link">
                <a href="{$item.click_url}" target="_blank" class="img">
                    <img src="{$item.pic_url}_180x180xz.jpg">
                </a>

                <p>
                    <a href="{$item.click_url}" target="_blank" class="go-btn">去购买</a>
                </p>
            </div>
            <div class="txt">{$item.intro}</div>
            <p class="date">发布于：{$item.add_time|date="Y-m-d",###}</p>
        </div>

        <div class="easybuy-detail-imgs">
               {$item.desc}
        </div>
    </div>

            <div class="bl-maylike-slide">
            <h3>热门推荐</h3>
            <div class="slide-con"> 
                <div class="slide-con-wrap clearfix">
				<div>
                <div class="slide-group">				
				<ftx:item type="items" cid="$item['cate_id']" num="3">
                  <volist name="data" id="items">
                 <a href="{:U('item/index',array('id'=>$items['id']))}" target="_blank" class="slide-item">
                  <img src="{$items.pic_url}_120x120xz.jpg">
                    <span href="">{$items.title}</span>
                        </a>
						</volist>
                    </ftx:item>
                </div>
                </div>
				</div>
           </div>
        </div>

</div>
        <div class="detail-right-wrap">           
            <div class="detail-right">                
                <div class="dp-detail-buyimgs">                  
					<h3>同类商品</h3>
                  <ul class="">
				  <ftx:item type="tehui" cid="$item['cate_id']" num="15">
                  <volist name="data" id="val">
                   <li>
                      <a href="{$val.click_url}" target="_blank" class="clearfix">
                        <span class="img">
                            <img src="{$val.pic_url}_90x90xz.jpg" alt="{$val.title}"/>                           
                            <span class="txt-detail">查看详情</span>
                        </span>                        
                        <span class="title" title="{$val.title}">{$val.title}</span>
                        <span class="price-del">原价：<i>￥{$val.price}</i></span>                          
                        <span class="price-current">价格：￥<em class="em">{$val.zprice}</em></span>
                        <span class="gobuy">去购买</span>
                      </a>
                    </li>  
					</volist>
                    </ftx:item>
                    </ul>
              </div>               
                <div class="mate-model-box mate-model-comment">
                   <div class="bdsharebuttonbox" style="margin: 0 0 20px 100px;">
				   <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
				   <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
				   <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
				   <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
				   <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
				   </div>
                   <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"{$item.intro}","bdMini":"1","bdMiniList":false,"bdPic":"{$item.pic_url}","bdStyle":"1","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                                       
                </div>

            </div>
        </div>
    </div>
</div>
<div class="con-wrap">
    <div class="style-detail-recommend">
        <h3 class="recommend-title">相似推荐</h3>
        <div class="recommend-list-wrap">
            <div class="recommend-list clearfix">
			<ftx:article type="lists" cateid="$article['cate_id']">
             <volist name="data" id="val">
                    <div class="mate-box">
                        <div class="info-wrap">
                            <div class="info-img">
                                <a href="{:U('article/read',array('id'=>$val['id']))}">
                                    <img src="{$val.pic_url}_240x10000Q90.jpg" alt="" width="230">
                                </a>
                                <div class="info-detail">
                                    <span>{$val.itemnum}件搭配宝贝</span>
                                    <div class="thumb-goods">
                                         <div class="thumb-mL10 clearfix">
						<if condition="$val['onepic'] eq '' ">
	                    <else/>
                          <a href="{$val.click_url}" target="_blank">
                              <img src="{$val.onepic}_72x72xz.jpg" alt="{$val.title}">
                          </a>
						</if>
						<if condition="$val['twopic'] eq '' ">
	                    <else/>
                          <a href="{$val.one_click_url}" target="_blank">
                              <img src="{$val.twopic}_72x72xz.jpg" alt="{$val.one_title}">
                          </a>
						</if>
						<if condition="$val['threepic'] eq '' ">
	                    <else/>
                          <a href="{$val.two_click_url}" target="_blank">
                              <img src="{$val.threepic}_72x72xz.jpg" alt="{$val.two_title}">
                          </a>
						</if>  
						<if condition="$val['fourpic'] eq '' ">
	                    <else/>
                          <a href="{$val.three_click_url}" target="_blank">
                              <img src="{$val.fourpic}_72x72xz.jpg" alt="{$val.three_title}">
                          </a>
						</if>
                        </div>
                                </div>
                                </div>
                            </div>
                            <p class="goods-txt">
                                {$val.info}
                            </p>
                            <p class="share-action clearfix">
                                <a href="{:U('article/read',array('id'=>$val['id']))}" class="favorite J_favorite">去看看</a>
                            </p>
                        </div>
                        <div class="share-user">
                            <p class="user-line">
                                <a href="{:U('article/read',array('id'=>$val['id']))}" target="_blank" class="user-img">								
                                <img src="{$val.avatar}" alt="{$val.author}">
                                </a>
                                 <em class="uname"><a href="{:U('article/read',array('id'=>$val['id']))}" target="_blank">{$val.author}</a></em><span class="daren-icon"></span>
					      </p>
                          </div>
             </div>
			 </volist>
              </ftx:article>
            </div>
        </div>
    </div>
</div>
<include file="public:footer" />
</body>
</html>
