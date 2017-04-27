<!doctype html>
<html class="jp-pc w1200">
<head>
<include file="public:head" />
<load href="__STATIC__/red/css/article.css" />
<link href="__STATIC__/cms/css/articleread.css" rel="stylesheet" type="text/css" />

</head>
<body>
<include file="public:header" />
<div class="main clear mb20 w1200">
	<div class="about w1200">
		<div class="about_menu fl">
			<ul>
				<li><a href="{:U('article/index')}">文章首页</a></li>
				<volist name="acats" id="vol">
					<li><a <if condition="$vol.id eq $article['cate_id']"> class="cur" </if>href="{:U('article/cate',array('id'=>$vol['id']))}">{$vol.name}</a></li>
				</volist>
			</ul>
		</div>
		<div class="about_contain fr">
			<h2>{$article.title}</h2>
			<p class="gray tc mt10">发布时间：{$article.add_time|date="Y-m-d H:i:s",###}&nbsp;&nbsp;&nbsp;&nbsp;来源：{$article.author}&nbsp;&nbsp;&nbsp;&nbsp;点击：{$article.hits}</p>			
			<div class="about_content mt30">
			{$article.info}
			</div>
			<div class="nextatc">
			<span class="nec"><if condition="$preid eq 0"><else /><b>上一篇：</b><a href="{:U('article/read',array('id'=>$preid))}" target="_blank" >{$articlep.title}</a></if></span>
			<span class="nec"> <if condition="$lastid eq $nid"><b>下一篇：</b>没有了<else /><b>下一篇：</b><a href="{:U('article/read',array('id'=>$nid))}" target="_blank">{$articlen.title}</a></if></span>
			</div>
            <div class="about_content">
			<h3 style="color:#CF201C">相关文章：</h3>
				<ul class="about_notes">
			 <ftx:article type="articlelists" cateid="$article['cate_id']">
             <volist name="data" id="val"> 
					<li>
						<em>· </em>
						<span class="title">
							<a href="{:U('article/cate',array('id'=>$val['cate_id']))}">[ {$acats[$val['cate_id']]['name']}] </a>
							<a target="_blank" href="{:U('article/read',array('id'=>$val['id']))}">{$val.title}</a>
						</span>
						<span class="gary">{$val.add_time|date="Y-m-d",###}</span>
					</li>
					</volist>
              </ftx:article>
		    </ul>
			</div>
			
		</div>
	</div>
</div>
<include file="public:footer" />
</body>
</html>