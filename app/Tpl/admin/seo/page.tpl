<include file="public:header" />
<!--SEO设置-->
<div class="pad_lr_10">
    <div class="col_tab">

        <ul class="tip_list clearfix ml20">
             <li>站点设置里面的网站名称 <span class="highlight">{site_name}</span></li>   
			 <li>站点设置里面的网站标题 <span class="highlight">{site_title}</span></li> 
            <li>站点设置里面的网站关键词 <span class="highlight">{site_keywords}</span></li>
            <li>站点设置里面的网站描述 <span class="highlight">{site_description}</span></li>
        </ul>

        <ul class="J_tabs tab_but cu_li mt10">
            <li class="current">首页</li>
            <li>分类页面</li>
            <li>商品详情</li>
            <li>积分商城</li>
			
			<li>搭配频道</li>			
			<li>品牌折扣</li>
			<li>标签页面</li>
			<li>文章页面</li>
            <li>活动页面</li>
			
        </ul>
    
        <form id="info_form" action="{:u('seo/page')}" method="post">
        <div class="J_panes">
            <div class="content_list pad_10">
                <table width="100%" class="table_form">
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[index][title]" cols="80" rows="2">{$seo_config.index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[index][keywords]" cols="80" rows="2">{$seo_config.index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[index][description]" cols="80" rows="3">{$seo_config.index.description}</textarea></td>
                    </tr>
                </table>
            </div>

            <div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
				<thead>
                    <tr>
                        <th colspan="2" align="left">分类页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td width="80"></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                                <li>分类Title <span class="highlight">{seo_title}</span></li>
                                <li>分类Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>分类Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[cate][title]" cols="80" rows="2">{$seo_config.cate.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[cate][keywords]" cols="80" rows="2">{$seo_config.cate.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[cate][description]" cols="80" rows="3">{$seo_config.cate.description}</textarea></td>
                    </tr>
                </table>
            </div>


			<div class="content_list pad_10" style="display:none;">
                <table width="100%" class="table_form">
				<thead>
                    <tr>
                        <th colspan="2" align="left">商品详情页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td width="80"></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>商品标题 <span class="highlight">{title}</span></li>
								<li>商品简介 <span class="highlight">{intro}</span></li>
								<li>原价 <span class="highlight">{price}</span></li>
								<li>秒杀价 <span class="highlight">{coupon_price}</span></li>
								<li>商品标签 <span class="highlight">{tags}</span></li>
                                <li>Title <span class="highlight">{seo_title}</span></li>
                                <li>Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[item][title]" cols="80" rows="2">{$seo_config.item.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[item][keywords]" cols="80" rows="2">{$seo_config.item.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[item][description]" cols="80" rows="3">{$seo_config.item.description}</textarea></td>
                    </tr>
                </table>
            </div>


			<div class="content_list pad_10" style="display:none;">
			 <table width="100%" class="table_form">
			   <thead>
                    <tr>
                        <th colspan="2" align="left">积分兑换商城首页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[gift_index][title]" cols="80" rows="2">{$seo_config.gift_index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[gift_index][keywords]" cols="80" rows="2">{$seo_config.gift_index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[gift_index][description]" cols="80" rows="3">{$seo_config.gift_index.description}</textarea></td>
                    </tr>
                </table>
                <table width="100%" class="table_form">
					<thead>
                    <tr>
                        <th colspan="2" align="left">积分兑换商城分类页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[gift][title]" cols="80" rows="2">{$seo_config.gift.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[gift][keywords]" cols="80" rows="2">{$seo_config.gift.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[gift][description]" cols="80" rows="3">{$seo_config.gift.description}</textarea></td>
                    </tr>
                </table>

				<table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">积分兑换详情页面可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>兑换宝贝名称 <span class="highlight">{title}</span></li>
								<li>兑换宝贝关键词 <span class="highlight">{tags}</span></li>
								<li>兑换宝贝推荐理由 <span class="highlight">{info}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[gift_item][title]" cols="80" rows="2">{$seo_config.gift_item.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[gift_item][keywords]" cols="80" rows="2">{$seo_config.gift_item.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[gift_item][description]" cols="80" rows="3">{$seo_config.gift_item.description}</textarea></td>
                    </tr>
                </table>
            </div>



            <div class="content_list pad_10" style="display:none;">
			 <table width="100%" class="table_form">
			   <thead>
                    <tr>
                        <th colspan="2" align="left">搭配首页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[dapei_index][title]" cols="80" rows="2">{$seo_config.dapei_index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[dapei_index][keywords]" cols="80" rows="2">{$seo_config.dapei_index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[dapei_index][description]" cols="80" rows="3">{$seo_config.dapei_index.description}</textarea></td>
                    </tr>
                </table>
			
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">搭配分类可直接调用的标签</th>
                    </tr>
                    </thead>
					<tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                                <li>分类Title <span class="highlight">{seo_title}</span></li>
                                <li>分类Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>分类Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[dapei_cate][title]" cols="80" rows="2">{$seo_config.dapei_cate.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[dapei_cate][keywords]" cols="80" rows="2">{$seo_config.dapei_cate.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[dapei_cate][description]" cols="80" rows="3">{$seo_config.dapei_cate.description}</textarea></td>
                    </tr>
                </table>
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">搭配详情页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>搭配标题 <span class="highlight">{title}</span></li>
                                <li>SEOTitle <span class="highlight">{seo_title}</span></li>
                                <li>SEOKeywords<span class="highlight">{seo_keywords}</span></li>
                                <li>SEODescription<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[dapei][title]" cols="80" rows="2">{$seo_config.dapei.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[dapei][keywords]" cols="80" rows="2">{$seo_config.dapei.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[dapei][description]" cols="80" rows="3">{$seo_config.dapei.description}</textarea></td>
                    </tr>
                </table>
            </div>
            
			
			 <div class="content_list pad_10" style="display:none;">
			  <table width="100%" class="table_form">
			   <thead>
                    <tr>
                        <th colspan="2" align="left">品牌首页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[brand_index][title]" cols="80" rows="2">{$seo_config.brand_index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[brand_index][keywords]" cols="80" rows="2">{$seo_config.brand_index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[brand_index][description]" cols="80" rows="3">{$seo_config.brand_index.description}</textarea></td>
                    </tr>
                </table>
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">品牌分类可直接调用的标签</th>
                    </tr>
                    </thead>
					<tr>
                        <td></td>
                        <td>
                             <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                                <li>分类Title <span class="highlight">{seo_title}</span></li>
                                <li>分类Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>分类Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[brand_cate][title]" cols="80" rows="2">{$seo_config.brand_cate.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[brand_cate][keywords]" cols="80" rows="2">{$seo_config.brand_cate.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[brand_cate][description]" cols="80" rows="3">{$seo_config.brand_cate.description}</textarea></td>
                    </tr>
                </table>
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">品牌详情页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>品牌标题 <span class="highlight">{title}</span></li>
								<li>品牌描述 <span class="highlight">{desc}</span></li>
                                <li>SEOTitle <span class="highlight">{seo_title}</span></li>
                                <li>SEOKeywords<span class="highlight">{seo_keywords}</span></li>
                                <li>SEODescription<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[brand_view][title]" cols="80" rows="2">{$seo_config.brand_view.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[brand_view][keywords]" cols="80" rows="2">{$seo_config.brand_view.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[brand_view][description]" cols="80" rows="3">{$seo_config.brand_view.description}</textarea></td>
                    </tr>
                </table>
				 <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">品牌商品详情页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>品牌标题 <span class="highlight">{brand_title}</span></li>
								<li>商品标题 <span class="highlight">{title}</span></li>
								<li>商品简介 <span class="highlight">{intro}</span></li>
								<li>商品原价 <span class="highlight">{price}</span></li>
								<li>商品折扣价 <span class="highlight">{coupon_price}</span></li>
								<li>商品折扣 <span class="highlight">{coupon_rate}</span></li>
								<li>商品标签 <span class="highlight">{tags}</span></li>
								<li>商品销量 <span class="highlight">{volume}</span></li>
								<li>促销活动 <span class="highlight">{cu}</span></li>
                                <li>SEOTitle <span class="highlight">{seo_title}</span></li>
                                <li>SEOKeywords<span class="highlight">{seo_keywords}</span></li>
                                <li>SEODescription<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[brand_item][title]" cols="80" rows="2">{$seo_config.brand_item.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[brand_item][keywords]" cols="80" rows="2">{$seo_config.brand_item.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[brand_item][description]" cols="80" rows="3">{$seo_config.brand_item.description}</textarea></td>
                    </tr>
                </table>
            </div>
			
			<div class="content_list pad_10" style="display:none;">
			 <table width="100%" class="table_form">
			       <thead>
                    <tr>
                        <th colspan="2" align="left">标签首页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[tag_index][title]" cols="80" rows="2">{$seo_config.tag_index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[tag_index][keywords]" cols="80" rows="2">{$seo_config.tag_index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[tag_index][description]" cols="80" rows="3">{$seo_config.tag_index.description}</textarea></td>
                    </tr>
                </table>		
               
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">标签详情页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>标签名称 <span class="highlight">{title}</span></li>
								<li>页面关键词 <span class="highlight">{keywords}</span></li>
								<li>页面描述 <span class="highlight">{description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[tag][title]" cols="80" rows="2">{$seo_config.tag.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[tag][keywords]" cols="80" rows="2">{$seo_config.tag.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[tag][description]" cols="80" rows="3">{$seo_config.tag.description}</textarea></td>
                    </tr>
                </table>
            </div>
			
			 <div class="content_list pad_10" style="display:none;">
			  <table width="100%" class="table_form">
			   <thead>
                    <tr>
                        <th colspan="2" align="left">文章首页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[article_index][title]" cols="80" rows="2">{$seo_config.article_index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[article_index][keywords]" cols="80" rows="2">{$seo_config.article_index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[article_index][description]" cols="80" rows="3">{$seo_config.article_index.description}</textarea></td>
                    </tr>
                </table>
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">文章分类可直接调用的标签</th>
                    </tr>
                    </thead>
					<tr>
                        <td></td>
                        <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                                <li>分类Title <span class="highlight">{seo_title}</span></li>
                                <li>分类Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>分类Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[article_cate][title]" cols="80" rows="2">{$seo_config.article_cate.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[article_cate][keywords]" cols="80" rows="2">{$seo_config.article_cate.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[article_cate][description]" cols="80" rows="3">{$seo_config.article_cate.description}</textarea></td>
                    </tr>
                </table>
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">文章详情页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>文章标题 <span class="highlight">{title}</span></li>
                                <li>SEOTitle <span class="highlight">{seo_title}</span></li>
                                <li>SEOKeywords<span class="highlight">{seo_keywords}</span></li>
                                <li>SEODescription<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[article][title]" cols="80" rows="2">{$seo_config.article.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[article][keywords]" cols="80" rows="2">{$seo_config.article.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[article][description]" cols="80" rows="3">{$seo_config.article.description}</textarea></td>
                    </tr>
                </table>
            </div>
                    <div class="content_list pad_10" style="display:none;">
			 <table width="100%" class="table_form">
			   <thead>
                    <tr>
                        <th colspan="2" align="left">鹊桥活动首页可直接调用的标签</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>Title</th>
                        <td><textarea name="seo_config[promo_index][title]" cols="80" rows="2">{$seo_config.promo_index.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[promo_index][keywords]" cols="80" rows="2">{$seo_config.promo_index.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[promo_index][description]" cols="80" rows="3">{$seo_config.promo_index.description}</textarea></td>
                    </tr>
                </table>
			
                <table width="100%" class="table_form">
                    <thead>
                    <tr>
                        <th colspan="2" align="left">鹊桥活动分类页可直接调用的标签</th>
                    </tr>
                    </thead>
					<tr>
                        <td></td>
                        <td>
                            <ul class="tip_list clearfix">
                                <li>分类名称 <span class="highlight">{cate_name}</span></li>
                                <li>分类Title <span class="highlight">{seo_title}</span></li>
                                <li>分类Keywords<span class="highlight">{seo_keywords}</span></li>
                                <li>分类Description<span class="highlight">{seo_description}</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th width="80">Title</th>
                        <td><textarea name="seo_config[promo_cate][title]" cols="80" rows="2">{$seo_config.promo_cate.title}</textarea></td>
                    </tr>
                    <tr>
                        <th>Keywords</th>
                        <td><textarea name="seo_config[promo_cate][keywords]" cols="80" rows="2">{$seo_config.promo_cate.keywords}</textarea></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><textarea name="seo_config[promo_cate][description]" cols="80" rows="3">{$seo_config.promo_cate.description}</textarea></td>
                    </tr>
                </table>
            </div>

			


        </div>
        
        <div class="mt10">
            <input type="hidden" name="menuid"  value="{$menuid}"/>
            <input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/>
        </div>
        </form>
    </div>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('ul.J_tabs').tabs('div.J_panes > div');
});
</script>
</body>
</html>