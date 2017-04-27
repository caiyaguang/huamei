<link type="text/css" rel="stylesheet" href="__STATIC__/cms/css/articlelist.css" />
<div class="index">
<div class="a1200 center clear mt1">
<ftx:articlecate type="cate">
<volist name="data" id="item">
<div class="pleft pleft2" style="margin-right:10px">
<div class="latestnews listmain">
   <dl class="tbox light tbox2">
    <dt class="light light5"><strong><em class="dot"></em>{$item['name']}</strong><i class="sj-icon"></i><span class="more"><a href="{:U('article/cate',array('id'=>$item['id']))}" target="_blank">更多>></a></span></dt>
	<dd class="l">	
	<ftx:article type="articletui" num="2" cateid="$item['id']">
    <volist name="data" id="val" mod="2">
		 <div class="item-top <eq name="mod" value="0"> fl<else/> fr</eq>">
				<a href="{:U('article/read',array('id'=>$val['id']))}"><img width="100" height="100" src="{$val.mpic}"></a>
				<strong><a href="{:U('article/read',array('id'=>$val['id']))}">{$val.title}</a></strong>
				<p><?php $description =$val['info'];$description = preg_replace( "@<script(.*?)</script>@is", "", $description );$description = preg_replace( "@<iframe(.*?)</iframe>@is", "", $description );$description = preg_replace( "@<style(.*?)</style>@is", "", $description );$description = preg_replace( "@<(.*?)>@is", "", $description );$description = str_replace("&nbsp;", '', $description);$description = mb_substr($description,0,50,'utf-8');echo $description;?>...</p>
		 </div>
	</volist>	
    </ftx:article>
	<ul class="d1">
	<ftx:article type="articlelists" num="10" cateid="$item['id']">
    <volist name="data" id="val" mod="10">
		  <li <eq name="mod" value="0">class="fl"</eq><eq name="mod" value="2">class="fl"</eq><eq name="mod" value="4">class="fl"</eq><eq name="mod" value="6">class="fl"</eq><eq name="mod" value="8">class="fl"</eq><eq name="mod" value="1">class="fr"</eq><eq name="mod" value="3">class="fr"</eq><eq name="mod" value="5">class="fr"</eq><eq name="mod" value="7">class="fr"</eq><eq name="mod" value="9">class="fr"</eq>><a class="listtxt" href="{:U('article/read',array('id'=>$val['id']))}" title="{$val['title']}">{$val.title}</a><span class="date">{$val.add_time|date="m-d",###}</span></li>
	</volist>	
    </ftx:article>
    </ul>
    </dd>
   </dl>
</div>
 </div>
</volist>	
</ftx:articlecate>	
</div>
</div>