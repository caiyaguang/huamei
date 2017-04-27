<!doctype html>
<html>
<head>
<include file="public:head" />
<link rel=stylesheet type=text/css href="__STATIC__/red/css/user.css" />
<style type="text/css">
.left .user-bind .taobao_sync { background-position:0 -448px; }
.left .user-bind .taobao_sync_no { background-position:0 -464px; }
</style>
</head>
<body>
<div class="main w1200">
<include file="public:header" />
</div>
<div class="main mb20 {:C('ftx_site_width')} clear">
	<div class="user_main">
		<include file="user/left" />


		<div class="right">
			<div class="menu-tag">
				<ul>
					<li id="info"><a href="{:U('user/info')}">帐户资料</a></li>
					<li id="alipay"><a href="{:U('user/alipay')}">支付宝</a></li>
					<li id="pwd"><a href="{:U('user/password')}">修改密码</a></li>
					<li id="avatar"><a href="{:U('user/avatar')}">头像设置</a></li>
					<li id="apilogin"><a href="{:U('user/bind')}">帐号绑定</a></li>
				</ul>
			</div>
			<script>
			$('.menu-tag ul #avatar').addClass('active');
			</script>
			<div class="u-tip">
				<p>请选择一个新照片进行上传编辑。</p>
				<p>头像保存后，您可能需要刷新一下本页面(按F5键)，才能查看最新的头像效果</p>
			</div>
			<div class="fl">


			<div class="imgupload">
				<a id="J_upload_avatar" class="smt upload_btn smt_file_fake ">{:L('upload_avatar')}</a>
			</div>
			<!-- 展示头像 -->
			<div style="margin: 80px 0 10px;">
				<h2>头像展示：</h2>
				<div>
					<img id="J_avatar" src="{:avatar($info['id'], 200)}" title="100*100" width="100px" height="100px"/>
					<img src="{:avatar($info['id'], 100)}" title="64*64"  width="64px" height="64px"/>
					<img src="{:avatar($info['id'], 100)}" title="32*32"  width="32px" height="32px"/>
				</div>
			</div>
			<!-- /展示头像 -->
 
			 
			<div class="fl ml15"></div>
			</div>
		</div>

	</div>
</div>
<!--主部结束-->
<include file="public:footer" />
<script>
  $('#J_upload_avatar').uploader({
                action_url: FTXIAER.root + '/?m=user&a=upload_avatar',
                input_name: 'avatar',
                onComplete: function(id, fileName, result){
                    if(result.status == '1'){
                        $('#J_avatar').attr('src', result.data);
                    }
                }
   });
</script>
</body>
</html>