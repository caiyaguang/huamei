<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<link rel=stylesheet type=text/css href="__STATIC__/jwap/css/user.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/alert.css" />
<link type="text/css" rel="stylesheet" href="__STATIC__/jwap/css/global.css" />
</head>
<body>

<div class="main">
<include file="public:header" />
<include file='public:top'/>
<div class="app">
<header id="head" class="head">
                <div class="fixtop">
                    <span id="t-find"><a href="{:C('ftx_header_html')}" class="btn btn-left btn-back" title="返回首页"></a></span>
                    <span id="t-index">积分明细</span>
                    <span id="user"><a href="javascript:;" class="sign_btn btn btn-right btn-sign"></a></span>
                    
                </div>
            </header>
	<div class="user_main">
		<div class="right">
			<div class="menu-tag">
				<ul>
					<li class="active"><a href="{:U('user/mingxi')}">收入明细
					<li><a href="{:U('user/gift')}">兑换明细</a></li>
				</ul>
			</div>
			<div class="u-tip">
				<p>当前积分：<em>{$score_total}</em> 分</p>
			</div>

			 
			<div class="log-table">
				<table border="0" cellspacing="0">
					<tr class="thead">
						<th>收入事件</th>
						<th>积分</th>
						<th class="last">发生时间</th>
					</tr>
					<notempty name="logs_list">
					<volist name="logs_list" id="val" mod="2">
					<tr <eq name="mod" value="0">class="tr"</eq> <eq name="mod" value="1">class="tr-one"</eq>>
						<td>{:L($val['action'])}</td>
						<td><if condition="$val['score'] gt 0">{$val.score}<else/>{$val.score}</if></td>
						<td>{$val.add_time|frienddate}</td>
					</tr>
					</volist>
					<else/>
					<tr>
						<td colspan="3">
						<div class="find_gift">
							<p>您还没有<a href="{:U('gift/index')}" target="_blank">兑换礼品</a>哦，赶快兑取你喜欢的礼品吧~</p>
						</div>
						</td>
					</tr>
					</notempty>
				</table>
				<div class="page page3">
					<div class="pageNav">{$page}</div>
				</div>
			</div>

		</div>

	</div>
		<include file="public:footer" />
</div>
</div>
<include file='public:footjs'/>
</body>
</html>