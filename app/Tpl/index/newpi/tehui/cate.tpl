<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="jp-pc w1200" xmlns="http://www.w3.org/1999/xhtml">
<head>
<include file="public:head" />
<link type="text/css" rel="stylesheet" href="__STATIC__/newpi/css/pg-zhe-main.css" />
<link rel="stylesheet" type="text/css" href="/static/tehui/css/tehui.css"/>
</head>
<body>
<include file="public:header" /> 
<empty name="subnav"> 
<div class="jiu-nav-main ">
    <div class="subNav">
        <ul>
            <li><a href="{:U('tehui/index')}" <empty name="cid">class="active"</empty>>全部</a></li>
			    <volist name="acats" id="vol">
					<li><a <if condition="$vol.id eq $cid"> class="active" </if> href="{:U('tehui/cate',array('cid'=>$vol['id']))}" title="{$vol.name}">{$vol.name}</a></li>
				</volist>
        </ul>
    </div>
</div>
<else />
<div class="jiu-nav-main ">
    <div class="subNav">
        <ul>
           <li><a href="{:U('tehui/index')}" class="active">全部</a></li>
			<volist name="subnav" id="bcate"> 
			<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('tehui/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>
			</volist>
        </ul>
    </div>
</div>
</empty>
<div class="main w1200">      
 <div class="main pr mt25 clear">
 <div class="easybuy-list clearfix">
        <div class="easybuy-list-inner clearfix">
		 <volist name="tehui_list" id="item" key="i" mod="4">
                           <div class="bl-border-box easybuy-box">
                    <div class="img-extend img-youhui">
                        <div class="img">
                            <div class="img-cell">
                                <a href="{$item.click_url}" target="_blank">
                                    <img src="{$item.pic_url}" alt="">
                                </a>
                            </div>
                        </div>
                          </div>
                    <div class="title">
                        <a href="{$item.click_url}" target="_blank">{$item.title}</a>
                    </div>
                         <div class="price g-mb5 clearfix">
                            <span class="value">¥<em>{$item.zprice}</em></span>
                            <span class="value-del">¥<em>{$item.price}</em></span>
                            <span class="value-percent">{$item.zk}折</span></div>
                         <div class="share-txt">
                        <p class="user user-noimg clearfix">
                            <a href="{$item.click_url}" target="_blank" class="user-name">{$item.uname}</a>推荐
                        </p>
                        <p class="words">{$item.intro}</p>
                    </div>
                </div>
				</volist> 

        </div>
       
    </div>
<div class="page">
<em></em>
<div>
{$page}
</div>
</div>
</div>
</div>
<include file="public:footer" />
</body>
</html>