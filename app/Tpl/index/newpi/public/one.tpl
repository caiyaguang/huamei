<div class="w990 pt35">
<div class="brand_index clear">  
    <div class="brand-icons">    
    <ul class="fl" style="width:1110px;">
<ftx:item type="morebrand" num="9">	
<volist name="data" id="item">
<li><a href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank" title="{$item.title}"><img src="{$item.logo}" width="80px" alt="{$item.intro}"></a></li>
</volist>
</ftx:item>
 </ul><a href="{:U('brand/index')}" target="_blank" class="see-all fr" style="width:42px;"><span class="fl">全部</span><em class="go-icon fr"></em></a>
  </div>
  </div>
<div class="shoes-tl"></div>
<div class="shoes-tags">
	  <ftx:article type="cate">
	  <volist name="data" id="bcate">	 
	  <a href="{:U('article/cate',array('id'=>$bcate['id']))}" target="_blank">{$bcate.name}</a>	  
	  </volist>	
     </ftx:article>	  
        <div class="shoes-box">
          <div class="w650">
            <div class="fushi-pic">
			   <ftx:item type="lists" order="volume DESC" num="1">
            		<volist name="data" id="hot_dapei">
                	<div class="shoes-img">
                		<a target="_blank" href="{:U('item/index',array('id'=>$hot_dapei['id']))}" title="{$hot_dapei.info}"><img alt="{$hot_dapei.info}" src="{$hot_dapei.pic_url}"></a>
            			<div class="shoes-ttl">
            				<div class="shoes-names" title="{$hot_dapei.info}"><marquee scrollamount="6" width="300" onmouseover="stop()" onmouseout="start()" style="width: 300px;">{$hot_dapei.title}</marquee></div>
            				<div class="shoes-cons">({$hot_dapei.volume }人已购买)</div>
            			</div>
            		</div>  
            		</volist>
            	</ftx:item>	         
              <div class="shoes-con">
                 <div class="a-tl">
				<ftx:article type="articletui" num="1" order="add_time desc">
                <volist name="data" id="val">
                <h1><a target="_blank" href="{:U('article/read',array('id'=>$val['id']))}" title="{$val.title}">{$val.title}</a></h1>
                </volist>
                </ftx:article>
                </div>

               <div class="b-tl">
                  <ul>
                  <ftx:article type="lists" order="add_time DESC" num="9">
            	  	<volist name="data" id="new_article" mod="3">
                	<li><a target="_blank" href="{:U('article/read',array('id'=>$new_article['id']))}" title="{$new_article.title}">{$new_article.title}</a></li>
                   	</volist>
            	  </ftx:article>	
                  </ul>
                </div>
                <div class="c-tl">
                  <div class="c-tl-l"><span>最新商品</span>
				  <cite>
				  <ftx:itemcate type="lists">
				  <volist name="data" id="vol" mod="4">
                  <a href="{:U('index/cate',array('cid'=>$vol['id']))}" target="_blank">{$vol.name}</a><eq name="mod" value="3"><else/>|</eq>
	              </volist>	
	              </ftx:itemcate>	  				  
				  </cite>
				  </div>
                  <div class="c-tl-t"> 
				  <ftx:item type="zhi" num="1">
                  <volist name="data" id="item">
				  <a target="_blank" href="{:U('item/index',array('id'=>$item['id']))}" class="view-pic" title="{$item.info}"><img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="{$item.title}"></a>
				  </volist>
				  </ftx:item>
                    <ul class="fs-dirs">
					<ftx:item type="lists" num="5" >
                    <volist name="data" id="item">
					 <li><a href="{:U('item/index',array('id'=>$item['id']))}" class="cur" target="_blank">{$item.title}</a></li>
					</volist>
                    </ftx:item>                   
                    </ul>
                  </div>
                  
                </div>
              </div>
            </div>
       <!--start-jiepai-->
            
            <div class="jiepai" id="jiepai_scroll_img"> 
			<span class="jiepai-word">最新<i>商</i>品</span> 
			<span class="jiepai-nav">     
			<volist name="cate_data" id="bcate" key="i" offset="0" length="11">
			<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">{$bcate.name}</a><neq name='mod' value='10'>|</neq>
            </volist>
            </span>
              <div class="jiepai-content">

                <div class="jiepai-tl" id="jiepai_sub">
                  <ul>
                  
					<volist name="cate_data" id="bcate" key="i" offset="0" length="11" mod='11'>
					<li data="{$bcate.id}" class="<eq name='mod' value='0'>cur</eq>"><a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">{$bcate.name}</a><eq name='mod' value='0'><i class="xsj"></i></eq>
                    </li>
            		</volist>
				           
                  </ul>
                </div>
                <div class="scroll_txt">
                    <table style="height:auto;text-align:center;">
                        <tbody><tr>
                            <td style="width:19px;">
                                <div class="scroll_left">
                                    <a href="javascript:;" style="display: none;">
                                    </a>
                                </div>
                            </td>
                            <td>
                            	
                               <volist name="cate_data" id="cate" key="i" offset="0" length="8" mod="11">
                                <div class="jiepai_center" id="jiepai_slider{$cate['id']}" count="21" <neq name='mod' value='0'>style="display: none;"</neq>>
                                    <ul style="width: 2593px; height: 141px; margin-left: 0px;">
                                    <ftx:item type="lists" cid="$cate['id']" num="8">
									<volist name="data" id="item" mod="7">
                                    <li><a title="{$item.title}" href="{:U('item/index',array('id'=>$item['id']))}" target="_blank"><img style="width:116px;height:116px;" alt="{$item.title}" src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}"><cite>售出{$item.volume}件</cite></a>
                                    </li> 
                                    </volist>
									</ftx:item>                                  
                                    </ul>
                                </div>
                              </volist>
                                        
                            </td>
                            <td style="width:19px;">
                                <div class="scroll_right">
                                    <a href="javascript:;" style="">
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </tbody></table>
                </div>
                
              </div>
            </div>
            <!--end-shoes-jiepai-->
          </div>
          <div class="fjp_nei">
            <!--start-peishi-->
        	<div class="peishi">
              <div class="peishi_title"><span>热门推荐<i>Hot</i></span><a href="{:U('brand/index')}" target="_blank"> 更多&gt;&gt; </a></div>
				<ul>
              <div class="peishi_txt" _hover-ignore="1">
              <ftx:item type="morebrand" num="4">
        		<volist name="data" id="item">
                <dl>
				<dd class="none"><a href="{:U('brand/view',array('id'=>$item['id']))}" title="{$item.title}" target="_blank">
				<img style="width:104px;height:104px;" alt="{$item.title}" src="{$item.pic}">
				<cite>{$item.title}<em>历史新低价包邮</em></cite></a>
				</dd>
                </dl>
                </volist>
      		  </ftx:item>	
				<ul>
              <ftx:item type="morebrand" num="8">
        	  <volist name="data" id="item" offset="1" length='1'>
				<li><a title="{$item.title}" href="{:U('brand/view',array('id'=>$item['id']))}" target="_blank">{$item.desc}</a></li>
			</volist>
      		</ftx:item>
			</ul>

              </div>
            </div>
            <div class="keyword">
              <div class="keyword-tl"><span>关键词<i>Tags</i></span></div>
              <div class="keyword-txt">
			  <ftx:tag type="lists" num="50">
              <volist name="data" id="item" mod="4">
			   <a target="_blank" href="{:U('tag/view',array('k'=>$item['ename']))}" <eq name='mod' value='3'> class="cur"</eq> title="{$item.name}">{$item.name}</a><eq name="mod" value="19"><else/>&nbsp;</eq>
			  </volist>
              </ftx:tag>              
     
              </div>
            </div>
          </div>
        </div>
      </div>