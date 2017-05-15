<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link href="__STATIC__/css/admin/style.css" rel="stylesheet"/>
	<title><?php echo L('website_manage');?></title>
	<script>
	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?>
	</script>
</head>
<body>
<div id="J_ajax_loading" class="ajax_loading"><?php echo L('ajax_loading');?></div>
<?php if(($sub_menu != '') OR ($big_menu != '')): ?><div class="subnav">
    <div class="content_menu ib_a blue line_x">
    	<?php if(!empty($big_menu)): ?><a class="add fb J_showdialog" href="javascript:void(0);" data-uri="<?php echo ($big_menu["iframe"]); ?>" data-title="<?php echo ($big_menu["title"]); ?>" data-id="<?php echo ($big_menu["id"]); ?>" data-width="<?php echo ($big_menu["width"]); ?>" data-height="<?php echo ($big_menu["height"]); ?>"><em><?php echo ($big_menu["title"]); ?></em></a>　<?php endif; ?>
        <?php if(!empty($sub_menu)): if(is_array($sub_menu)): $key = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($key % 2 );++$key; if($key != 1): ?><span>|</span><?php endif; ?>
        <a href="<?php echo U($val['module_name'].'/'.$val['action_name'],array('menuid'=>$menuid)); echo ($val["data"]); ?>" class="<?php echo ($val["class"]); ?>"><em><?php echo ($val['name']); ?></em></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
    </div>
</div><?php endif; ?>
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/ftxia.js"></script>
<script src="__STATIC__/js/admin.js"></script>
<div class="pad_10">
	<div class="clearfix">

		<div class="col-2 fl mr10" style="width:48%">
			<h6>我的个人信息</h6>
			<div class="content">
				您好，<b style="color:#06C"> <?php echo ($my_admin["username"]); ?></b> &nbsp;[超级管理员] &nbsp;&nbsp;&nbsp;<a class="red" href="<?php echo u('index/logout');?>">[<?php echo L('logout');?>]</a><br />
				登录IP： <?php echo ($ip); ?> [ <?php echo ($time); ?>]<br />
                
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>提示建议</h6>
			<div class="content">
				<div class="bk20 hr"><hr /></div>
					<?php if(!empty($message)): if(is_array($message)): $i = 0; $__LIST__ = $message;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><div class="on<?php echo ($val["type"]); ?>">&nbsp;<?php echo ($val["content"]); ?></div><br /><?php endforeach; endif; else: echo "" ;endif; endif; ?>
			</div>
		</div>
		<div class="bk10"></div>
		<div class="col-2 fl mr10" style="width:48%">
			<h6>系统信息</h6>
			<div class="content">
				<?php echo L('ftxia_version');?>：<font style="color:#090">HUAMEICMS</font><?php echo ($system_info["ftxia_version"]); ?><br />
				<?php echo L('server_os');?>：<?php echo ($system_info["server_os"]); ?><br />
				<?php echo L('web_server');?>：<?php echo ($system_info["web_server"]); ?><br />
				<?php echo L('php_version');?>：<?php echo ($system_info["php_version"]); ?><br />
				支持函数：<span class="<?php echo ($system_info["curl"]); ?>">远程读取</span>
				<span class="onCorrect">编码转换</span>
				<span class="<?php echo ($system_info["zlib"]); ?>">页面压缩</span>
				<br />
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>授权信息</h6>
			<div class="content">
				授权类型：<span><font color="green">华美网络终身授权</font></span><br />
				授权域名：<span><font color="green"><a href="<?php echo C('ftx_site_url');?>" target="_blank"><?php echo ($system_info["server_domain"]); ?></a></font></span><br />
				<div class="bk20 hr"><hr /></div>
				淘客论坛：<a href="http://bbs.138gzs.com" target="_blank">bbs.138gzs.com</a> <br />
				技术支持：<a href="http://wpa.qq.com/msgrd?v=3&uin=422677261&site=qq&menu=yes" target="_blank"><img border="0" src="http://wpa.qq.com/pa?p=2:422677261:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> 
			</div>
		</div>
        <div class="bk10"></div>
        <div class="col-2 fl mr10" style="width:48%">
			<h6>官方动态</h6>
			<div class="content">
				<script type="text/javascript" src="http://bbs.138gzs.com/api.php?mod=js&bid=3"></script>
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>   
	</div>
</div>
</body>
</html>