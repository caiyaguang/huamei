-- TuanPhp SQL Dump Program
-- 
-- DATE : 2015-05-02 22:45:23
-- Vol : 1
DROP TABLE IF EXISTS `ftxia_apply_order`;
CREATE TABLE `ftxia_apply_order` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `add_time` int(11) NOT NULL,
  `status` enum('申请中','审核不通过','已提现') NOT NULL default '申请中',
  `money` decimal(10,2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `alipay` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_apply_order ( `id`, `uid`, `add_time`, `status`, `money`, `name`, `alipay` ) VALUES  ('16','6','1416390739','审核不通过','122.00','华美网络','422677261@qq.com');
INSERT INTO ftxia_apply_order ( `id`, `uid`, `add_time`, `status`, `money`, `name`, `alipay` ) VALUES  ('17','6','1416391935','已提现','2.00','华美网络','422677261@qq.com');
DROP TABLE IF EXISTS `ftxia_auto_user`;
CREATE TABLE `ftxia_auto_user` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_badword`;
CREATE TABLE `ftxia_badword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word_type` tinyint(1) unsigned NOT NULL default '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_complain`;
CREATE TABLE `ftxia_complain` (
  `id` int(10) NOT NULL auto_increment,
  `order_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `add_time` int(11) NOT NULL,
  `status` enum('等待回复','关闭','已返款','等待裁决') NOT NULL default '等待回复',
  `qq` varchar(14) default NULL,
  `wangwang` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `ss_pz` varchar(500) default NULL,
  `ss_pz2` varchar(500) default NULL,
  `ss_content` varchar(300) default NULL,
  `reply_pz` varchar(500) default NULL,
  `reply_content` varchar(300) default NULL,
  `reply_time` int(11) default NULL,
  `admin_content` text,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_complain ( `id`, `order_id`, `item_id`, `uid`, `sid`, `add_time`, `status`, `qq`, `wangwang`, `phone`, `ss_pz`, `ss_pz2`, `ss_content`, `reply_pz`, `reply_content`, `reply_time`, `admin_content` ) VALUES  ('8','7','4','6','5','1416303303','等待裁决','123123','123123','1231233','./data/upload/complain/546b12c761bef.jpg','','asdasd','./data/upload/complain/546cbb16e0f08.jpg','asdasdasd','1416411926','');
INSERT INTO ftxia_complain ( `id`, `order_id`, `item_id`, `uid`, `sid`, `add_time`, `status`, `qq`, `wangwang`, `phone`, `ss_pz`, `ss_pz2`, `ss_content`, `reply_pz`, `reply_content`, `reply_time`, `admin_content` ) VALUES  ('9','14','4','6','5','1416303752','等待回复','12312415','346456','87654534','./data/upload/complain/546b14886f82a.jpg','','','./data/upload/complain/5475761fb7134.png','啊实打实大师大厦','1416984095','adasdasd123123123adasdasd123123123123请问请问1231212312312312123123请问请问123123123123');
DROP TABLE IF EXISTS `ftxia_finance`;
CREATE TABLE `ftxia_finance` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `money` decimal(20,2) NOT NULL,
  `add_time` int(11) NOT NULL,
  `memo` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('1','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('2','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('3','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('4','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('5','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('6','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('7','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('8','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('9','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('10','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('11','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('12','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('13','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('14','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('15','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('16','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('17','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('18','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('19','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('20','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('21','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('22','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('23','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('24','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('25','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('26','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('27','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('28','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('29','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('30','6','-2.00','1416391935','申请提款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('31','6','122.00','1416405851','提现审核失败返还款项');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('32','6','123.00','1416415606','测试测返还款项【自动确认】');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('33','6','22.00','1416415606','测试测试测试一下返还款项【自动确认】');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('34','6','122.00','1416415607','测试测返还款项【自动确认】');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('35','6','122.00','1416415845','测试测返还款项【自动确认】');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('36','5','9999999.00','1416975188','管理员充值');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('37','6','123.00','1416984911','测试测返款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('38','6','123.00','1416984962','测试测返款');
INSERT INTO ftxia_finance ( `id`, `uid`, `money`, `add_time`, `memo` ) VALUES  ('39','6','123.00','1416985062','测试测返款');
DROP TABLE IF EXISTS `ftxia_free`;
CREATE TABLE `ftxia_free` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(40) NOT NULL,
  `num` int(8) NOT NULL,
  `remain` int(8) NOT NULL,
  `ordid` int(6) NOT NULL default '100',
  `add_time` int(11) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `deposit` decimal(10,2) NOT NULL default '0.00',
  `paid` decimal(10,0) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `coupon_price` decimal(3,2) NOT NULL default '0.00',
  `click_url` varchar(400) NOT NULL default 'http://www.taobao.com',
  `pic_url` varchar(400) NOT NULL,
  `seller` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  `content` text,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_free ( `id`, `title`, `num`, `remain`, `ordid`, `add_time`, `start_time`, `end_time`, `deposit`, `paid`, `price`, `coupon_price`, `click_url`, `pic_url`, `seller`, `status`, `content` ) VALUES  ('5','韩都衣舍韩版2015夏新款女装收腰显瘦印花拼接时尚连衣裙GQ3522耒','20','19','100','1429890909','1429890840','1556121240','1980.00','0','99.00','0.00','http://detail.tmall.com/item.htm?spm=a230r.1.14.1.kZdT2v&id=37899090447&ad_id=&am_id=&cm_id=140105335569ed55e27b&pm_id=&_u=oo01t8evadc6&abbucket=3','http://gi2.md.alicdn.com/bao/uploaded/i2/TB1fMMLHpXXXXaRXFXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg','0','2','<div id=\"J_DcTopRightWrap\" style=\"margin:0px;padding:0px;width:790px;position:relative;overflow:hidden;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;white-space:normal;background-color:#FFFFFF;\">
	<div id=\"J_DcTopRight\" class=\"J_DcAsyn tb-shop\" style=\"margin:0px;padding:0px;\">
		<div class=\"J_TModule\" data-widgetid=\"10780949213\" id=\"shop10780949213\" data-componentid=\"5003\" data-spm=\"110.0.5003-10780949213\" microscope-data=\"5003-10780949213\" data-title=\"自定义内容区\" style=\"margin:0px;padding:0px;\">
			<div class=\"skin-box tb-module tshop-pbsm tshop-pbsm-shop-self-defined\" style=\"margin:0px 0px 10px;padding:0px;position:static;overflow:visible;\">
				<div class=\"skin-box-bd clear-fix\" style=\"margin:0px;padding:0px;border:0px solid #E5E5E5;color:#2953A6;line-height:1.2;overflow:visible;position:static;width:790px;background:none 0px 0px no-repeat transparent;\">
					<span style=\"margin:0px;padding:0px;\">
					<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;line-height:1.4;\">
						<img src=\"http://gdp.alicdn.com/imgextra/i2/263817957/TB2GFZacpXXXXadXpXXXXXXXXXX-263817957.jpg\" style=\"margin:0px;padding:0px;vertical-align:middle;\" />
					</p>
</span>
				</div>
<s class=\"skin-box-bt\" style=\"margin:0px;padding:0px;\"><b style=\"margin:0px;padding:0px;\"></b></s>
			</div>
		</div>
	</div>
</div>
<div id=\"description\" class=\"J_DetailSection tshop-psm tshop-psm-bdetaildes\" style=\"margin:0px;padding:0px;width:auto;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;white-space:normal;background-color:#FFFFFF;\">
	<div class=\"content ke-post\" style=\"margin:10px 0px 0px;padding:0px;font-stretch:normal;font-size:14px;line-height:1.5;font-family:tahoma, arial, 宋体, sans-serif;width:790px;overflow:hidden;height:auto;\">
		<img class=\"desc_anchor\" id=\"desc-module-1\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" style=\"margin:0px;padding:0px;height:1px;display:block;clear:both;vertical-align:top;\" />
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<img src=\"http://img01.taobaocdn.com/imgextra/i1/263817957/T2f3PmXdJXXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;width:750px;\" />
		</div>
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<br style=\"margin:0px;padding:0px;\" />
		</div>
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<br style=\"margin:0px;padding:0px;\" />
		</div>
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/T2b_b4XyJXXXXXXXXX-263817957.jpg_.webp\" width=\"600\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
		</div>
<img class=\"desc_anchor\" id=\"desc-module-2\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" style=\"margin:0px;padding:0px;height:1px;display:block;clear:both;vertical-align:top;\" />
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2ZhzlXbFbXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
			<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" height=\"226\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border:1px solid #E5E5E5;font-size:12px;font-family:微软雅黑;color:#5C5C5C;\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" bgcolor=\"#f7f7f7\" height=\"32\" width=\"105\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">货号</b>
						</td>
						<td bgcolor=\"#f7f7f7\" colspan=\"2\" height=\"32\" width=\"645\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								GQ3522
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#ffffff\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">尺码</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">S M L</span>
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">颜色</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								白色
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#ffffff\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">成分</b>
						</td>
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">面料1:100%聚酯纤维 面料2:100%聚酯纤维</span>
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">参数</b>
						</td>
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">产品等级：合格品&nbsp;&nbsp;&nbsp;执行标准：FZ/T 81004-2012 &nbsp;&nbsp;安全类别：GB18401-2010 B类（直接接触皮肤的纺织产品）</span>
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#ffffff\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">季节</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">夏季</span>
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">专柜价</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">468元</span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-spacing:0px;border-color:#000000;text-align:center;font-size:12px;font-family:微软雅黑;color:#5C5C5C;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T26egjXjXbXXXXXXXX-263817957.gif\" bgcolor=\"#f7f7f7\" height=\"25\" width=\"100\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">面料弹性</b>
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" width=\"85\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">无弹性</span>
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" width=\"100\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">轻微弹性</span>
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" width=\"85\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">高弹力</span>
						</td>
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T26egjXjXbXXXXXXXX-263817957.gif\" bgcolor=\"#f7f7f7\" height=\"32\" width=\"100\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">厚薄指数</b>
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">厚款</span>
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" width=\"80\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">厚薄可选</span>
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">薄款</span>
						</td>
					</tr>
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T20NWxXptbXXXXXXXX-263817957.gif\" height=\"25\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">版型</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">紧身</span>
						</td>
						<td bgcolor=\"#ffffff\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">修身</span>
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">宽松</span>
						</td>
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T20NWxXptbXXXXXXXX-263817957.gif\" bgcolor=\"#ffffff\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">长度</b>
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">短款</span>
						</td>
						<td bgcolor=\"#ffffff\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">长度适中</span>
						</td>
						<td bgcolor=\"#ffffff\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<span style=\"margin:0px;padding:0px;color:#5c5c5c;\">长款</span>
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border:1px solid #E5E5E5;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr style=\"margin:0px;padding:0px;\">
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#000000;font-size:12px;font-family:微软雅黑;color:#5C5C5C;line-height:20px;\" class=\"ke-zeroborder\">
								<tbody style=\"margin:0px;padding:0px;\">
									<tr style=\"margin:0px;padding:0px;\">
										<td height=\"60\" width=\"605\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<div align=\"left\" style=\"margin:0px;padding:0px;\">
												超正清爽面料的连衣裙，简约款式时尚大方，夏天穿着超级凉快，时尚复古的图案，下摆跟袖口的白色包边设计，时尚有层次感，内有内衬设计，夏天穿着不易走光，腰部的收腰设计，利落显瘦。<span style=\"margin:0px;padding:0px;color:#ff0000;\">温馨提示：</span>因受拍摄场景光线等影响，视频与图片颜色会有稍许差异，请以图片和细节颜色为主。
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<img height=\"61\" src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2q1g6XalXXXXXXXXX_!!263817957.jpg_.webp\" width=\"141\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#000000;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr style=\"margin:0px;padding:0px;\">
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2F9jcXp0aXXXXXXXX-263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;height:115px;width:750px;\" />
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/T2nry8XcpbXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"190\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#E5E5E5 #000000 #000000;border-top-width:1px;border-top-style:solid;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr style=\"margin:0px;padding:0px;\">
						<td height=\"69\" width=\"198\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<img height=\"159\" src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2q9XRXmBbXXXXXXXX_!!263817957.gif\" width=\"198\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
						</td>
						<td height=\"69\" valign=\"middle\" width=\"552\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"69\" width=\"500\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#000000;font-size:12px;\" class=\"ke-zeroborder\">
								<tbody style=\"margin:0px;padding:0px;\">
									<tr align=\"center\" bgcolor=\"#484848\" style=\"margin:0px;padding:0px;\">
										<td height=\"25\" width=\"59\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">尺码</span>
										</td>
										<td height=\"25\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">领宽</span>
										</td>
										<td height=\"25\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">小肩宽</span>
										</td>
										<td height=\"25\" width=\"63\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">胸围</span>
										</td>
										<td height=\"25\" width=\"60\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">腰围</span>
										</td>
										<td height=\"25\" width=\"72\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">袖窿（直量）</span>
										</td>
										<td height=\"25\" width=\"56\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">下摆围</span>
										</td>
										<td height=\"25\" width=\"62\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<span style=\"margin:0px;padding:0px;color:#ffffff;\">衣长</span>
										</td>
									</tr>
									<tr align=\"center\" bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
										<td height=\"28\" width=\"59\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											S
										</td>
										<td height=\"28\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											21.5
										</td>
										<td height=\"28\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											15
										</td>
										<td height=\"28\" width=\"63\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											94
										</td>
										<td height=\"28\" width=\"60\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											90
										</td>
										<td height=\"28\" width=\"72\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											18.5
										</td>
										<td height=\"28\" width=\"56\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											110
										</td>
										<td height=\"28\" width=\"62\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											83
										</td>
									</tr>
									<tr align=\"center\" style=\"margin:0px;padding:0px;\">
										<td height=\"28\" width=\"59\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											M
										</td>
										<td height=\"28\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											22
										</td>
										<td height=\"28\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											15.5
										</td>
										<td height=\"28\" width=\"63\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											98
										</td>
										<td height=\"28\" width=\"60\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											94
										</td>
										<td height=\"28\" width=\"72\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											19
										</td>
										<td height=\"28\" width=\"56\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											114
										</td>
										<td height=\"28\" width=\"62\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											85
										</td>
									</tr>
									<tr align=\"center\" bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
										<td height=\"28\" width=\"59\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											L
										</td>
										<td height=\"28\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											22.5
										</td>
										<td height=\"28\" width=\"64\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											16
										</td>
										<td height=\"28\" width=\"63\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											102
										</td>
										<td height=\"28\" width=\"60\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											98
										</td>
										<td height=\"28\" width=\"72\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											19.5
										</td>
										<td height=\"28\" width=\"56\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											118
										</td>
										<td height=\"28\" width=\"62\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											87
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/T259_sXnJaXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#E6E6E6 #000000 #000000;font-size:12px;border-top-width:1px;border-top-style:solid;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td bgcolor=\"#484848\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<span style=\"margin:0px;padding:0px;color:#ffffff;\">试穿人</span>
						</td>
						<td bgcolor=\"#484848\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<span style=\"margin:0px;padding:0px;color:#ffffff;\">身高cm/体重kg</span>
						</td>
						<td bgcolor=\"#484848\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<span style=\"margin:0px;padding:0px;color:#ffffff;\">三围cm</span>
						</td>
						<td bgcolor=\"#484848\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<span style=\"margin:0px;padding:0px;color:#ffffff;\">试穿尺码</span>
						</td>
					</tr>
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							ming
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							156/45
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							82/66/86
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							S
						</td>
					</tr>
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td bgcolor=\"#f7f7f7\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							ELEN
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							165/48
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							80/72/83
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							M
						</td>
					</tr>
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							candy
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							163/58
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							84/79/90
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							L
						</td>
					</tr>
				</tbody>
			</table>
		</div>
<img class=\"desc_anchor\" id=\"desc-module-3\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" style=\"margin:0px;padding:0px;height:1px;display:block;clear:both;vertical-align:top;\" />
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<img alt=\"\" src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2dlnmXc4XXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
			</p>
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<br />
			</p>
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/TB2FKxYcpXXXXcAXXXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" /><img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/TB2CclRcpXXXXXUXXXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
			</p>
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/TB2Ld0LcpXXXXawXpXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
			</p>
		</div>
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<br />
			</p>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
					<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2IJltXb4aXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
				</p>
				<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
					<img alt=\"\" src=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T25rL.Xw4XXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" /><img src=\"http://img01.taobaocdn.com/imgextra/i1/263817957/TB2gm0JcpXXXXbrXpXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
				</p>
				<div align=\"center\" style=\"margin:0px;padding:0px;\">
					<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
						<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/T2vYn_XxhXXXXXXXXX-263817957.jpg_.webp\" width=\"750\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" /><img alt=\"\" src=\"http://img01.taobaocdn.com/imgextra/i1/263817957/T2O6wXXqBXXXXXXXXX-263817957.jpg_.webp\" width=\"750\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
					</p>
				</div>
			</div>
		</div>
	</div>
</div>');
INSERT INTO ftxia_free ( `id`, `title`, `num`, `remain`, `ordid`, `add_time`, `start_time`, `end_time`, `deposit`, `paid`, `price`, `coupon_price`, `click_url`, `pic_url`, `seller`, `status`, `content` ) VALUES  ('6','韩都衣舍韩版2015夏装新款女装字母印花宽松短袖连衣裙LZ4367烎','20','19','100','1429892294','1429892220','1432484220','1980.00','0','99.00','0.00','http://detail.tmall.com/item.htm?spm=a230r.1.14.25.kZdT2v&id=44359487715&ns=1&_u=oo01t8ev1b9a&abbucket=3','http://gi2.md.alicdn.com/bao/uploaded/i2/TB1DezCHpXXXXcXXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg','0','2','<div id=\"J_DcTopRightWrap\" style=\"margin:0px;padding:0px;width:790px;position:relative;overflow:hidden;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;white-space:normal;background-color:#FFFFFF;\">
	<div id=\"J_DcTopRight\" class=\"J_DcAsyn tb-shop\" style=\"margin:0px;padding:0px;\">
		<div class=\"J_TModule\" data-widgetid=\"10780949213\" id=\"shop10780949213\" data-componentid=\"5003\" data-spm=\"110.0.5003-10780949213\" microscope-data=\"5003-10780949213\" data-title=\"自定义内容区\" style=\"margin:0px;padding:0px;\">
			<div class=\"skin-box tb-module tshop-pbsm tshop-pbsm-shop-self-defined\" style=\"margin:0px 0px 10px;padding:0px;position:static;overflow:visible;\">
				<div class=\"skin-box-bd clear-fix\" style=\"margin:0px;padding:0px;border:0px solid #E5E5E5;color:#2953A6;line-height:1.2;overflow:visible;position:static;width:790px;background:none 0px 0px no-repeat transparent;\">
					<span style=\"margin:0px;padding:0px;\">
					<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;line-height:1.4;\">
						<img src=\"http://gdp.alicdn.com/imgextra/i2/263817957/TB2GFZacpXXXXadXpXXXXXXXXXX-263817957.jpg\" style=\"margin:0px;padding:0px;vertical-align:middle;\" />
					</p>
</span>
				</div>
<s class=\"skin-box-bt\" style=\"margin:0px;padding:0px;\"><b style=\"margin:0px;padding:0px;\"></b></s>
			</div>
		</div>
	</div>
</div>
<div id=\"description\" class=\"J_DetailSection tshop-psm tshop-psm-bdetaildes\" style=\"margin:0px;padding:0px;width:auto;color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;white-space:normal;background-color:#FFFFFF;\">
	<div class=\"content ke-post\" style=\"margin:10px 0px 0px;padding:0px;font-stretch:normal;font-size:14px;line-height:1.5;font-family:tahoma, arial, 宋体, sans-serif;width:790px;overflow:hidden;height:auto;\">
		<img class=\"desc_anchor\" id=\"desc-module-1\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" style=\"margin:0px;padding:0px;height:1px;display:block;clear:both;vertical-align:top;\" />
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<img src=\"http://img01.taobaocdn.com/imgextra/i1/263817957/T2f3PmXdJXXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;width:750px;\" /><br style=\"margin:0px;padding:0px;\" />
<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/TB2oBS_cXXXXXaNXpXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;width:600px;\" />
		</div>
<img class=\"desc_anchor\" id=\"desc-module-2\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" style=\"margin:0px;padding:0px;height:1px;display:block;clear:both;vertical-align:top;\" />
		<div align=\"center\" style=\"margin:40px 0px 0px;padding:0px;\">
			<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2ZhzlXbFbXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
			<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" height=\"194\" width=\"750\" style=\"margin:30px 0px 0px;padding:0px;border-collapse:separate;border-spacing:0px;border:1px solid #E5E5E5;color:#5C5C5C;font-family:微软雅黑;font-size:12px;\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" bgcolor=\"#f7f7f7\" height=\"32\" width=\"105\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">货号</b>
						</td>
						<td bgcolor=\"#f7f7f7\" colspan=\"2\" height=\"32\" width=\"645\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								LZ4367
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#FFFFFF\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">尺码</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								S M
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">颜色</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								灰色 酒红色
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#ffffff\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">成分</b>
						</td>
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								面料:95%棉5%氨纶
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">季节</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">春季 夏季 秋季 冬季</span>
							</div>
						</td>
					</tr>
					<tr bgcolor=\"#ffffff\" style=\"margin:0px;padding:0px;\">
						<td align=\"center\" height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<b style=\"margin:0px;padding:0px;\">专柜价</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<div align=\"left\" style=\"margin:0px;padding:0px;\">
								<span style=\"margin:0px;padding:0px;font-family:微软雅黑;\">398元</span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-spacing:0px;border-color:#000000;text-align:center;color:#5C5C5C;font-family:微软雅黑;font-size:12px;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T26egjXjXbXXXXXXXX-263817957.gif\" bgcolor=\"#f7f7f7\" height=\"25\" width=\"100\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">面料弹性</b>
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" width=\"85\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							无弹性
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" width=\"100\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							轻微弹性
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" width=\"85\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							高弹力
						</td>
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T26egjXjXbXXXXXXXX-263817957.gif\" bgcolor=\"#f7f7f7\" height=\"32\" width=\"100\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">厚薄指数</b>
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							厚款
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" width=\"80\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							厚薄适中
						</td>
						<td bgcolor=\"#f7f7f7\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							薄款
						</td>
					</tr>
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T20NWxXptbXXXXXXXX-263817957.gif\" height=\"25\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">版型</b>
						</td>
						<td height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							紧身
						</td>
						<td bgcolor=\"#ffffff\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							修身
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							宽松
						</td>
						<td background=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T20NWxXptbXXXXXXXX-263817957.gif\" bgcolor=\"#FFFFFF\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							<b style=\"margin:0px;padding:0px;\">长度</b>
						</td>
						<td bgcolor=\"#d6d6d6\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							短款
						</td>
						<td bgcolor=\"#ffffff\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							长度适中
						</td>
						<td bgcolor=\"#FFFFFF\" height=\"32\" style=\"margin:0px;padding:0px;border:1px solid #E6E6E6;\">
							长款
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border:1px solid #E5E5E5;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr style=\"margin:0px;padding:0px;\">
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#000000;color:#5C5C5C;line-height:20px;font-family:微软雅黑;font-size:12px;\" class=\"ke-zeroborder\">
								<tbody style=\"margin:0px;padding:0px;\">
									<tr style=\"margin:0px;padding:0px;\">
										<td height=\"60\" width=\"605\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											<div align=\"left\" style=\"margin:0px;padding:0px;\">
												时尚简约的设计风格，独特印花设计潮流时尚，靓丽活泼，搭配干净、柔软、亲肤的面料，让你穿出全新感受。韩版的款式，简单大方，凸显非凡气质，个性的字母印花装饰设计，大气美观很好搭配。<br style=\"margin:0px;padding:0px;\" />
因受拍摄场景光线等影响，视频与图片颜色会有稍许差异，请以图片和细节颜色为主。
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<img height=\"61\" src=\"http://img.taobaocdn.com/imgextra/http://img04.taobaocdn.com/imgextra/i4/263817957/T2V7CvXjdcXXXXXXXX_!!263817957.jpg_.webp\" width=\"141\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#000000;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr style=\"margin:0px;padding:0px;\">
						<td style=\"margin:0px;padding:0px;border-color:#000000;\">
							<img src=\"http://img02.taobaocdn.com/imgextra/i2/263817957/T2ElYdXwRXXXXXXXXX-263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/T2nry8XcpbXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"190\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border:1px solid #E5E5E5;text-align:center;color:#FFFFFF;font-family:微软雅黑;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr style=\"margin:0px;padding:0px;\">
						<td height=\"69\" width=\"198\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<img src=\"http://img01.taobaocdn.com/imgextra/i1/263817957/TB2_CIXXVXXXXaPXXXXXXXXXXXX-263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
						</td>
						<td height=\"69\" valign=\"middle\" width=\"552\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"69\" width=\"500\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border-color:#000000;text-align:center;color:#FFFFFF;font-size:12px;font-family:微软雅黑;\" class=\"ke-zeroborder\">
								<tbody style=\"margin:0px;padding:0px;\">
									<tr align=\"center\" bgcolor=\"#484848\" style=\"margin:0px;padding:0px;\">
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											尺码
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											肩宽
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											胸围
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											腰围
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											袖长
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											衣长
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											下摆围
										</td>
										<td height=\"25\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											袖宽
										</td>
									</tr>
									<tr align=\"center\" bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;color:#5C5C5C;\">
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											S
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											36
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											98
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											102
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											22
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											80
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											226
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											17.5
										</td>
									</tr>
									<tr align=\"center\" style=\"margin:0px;padding:0px;color:#5C5C5C;\">
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											M
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											37
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											102
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											106
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											23
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											82
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											228
										</td>
										<td height=\"28\" width=\"93\" style=\"margin:0px;padding:0px;border-color:#000000;\">
											18
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<br style=\"margin:0px;padding:0px;\" />
			</div>
			<div align=\"center\" style=\"margin:0px;padding:0px;\">
				<img src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/T259_sXnJaXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;\" />
			</div>
			<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"750\" style=\"margin:0px;padding:0px;border-collapse:separate;border-spacing:0px;border:1px solid #E6E6E6;text-align:center;font-size:12px;font-family:微软雅黑;color:#5C5C5C;\" class=\"ke-zeroborder\">
				<tbody style=\"margin:0px;padding:0px;\">
					<tr align=\"center\" bgcolor=\"#484848\" style=\"margin:0px;padding:0px;color:#FFFFFF;\">
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							试穿人
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							身高cm/体重kg
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							三围cm
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							试穿尺码
						</td>
					</tr>
					<tr align=\"center\" style=\"margin:0px;padding:0px;\">
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							DALARE
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							155/44
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							76/62/78
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							S
						</td>
					</tr>
					<tr align=\"center\" bgcolor=\"#f7f7f7\" style=\"margin:0px;padding:0px;\">
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							ELEN
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							165/48
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							80/72/83
						</td>
						<td height=\"28\" width=\"110\" style=\"margin:0px;padding:0px;border-color:#000000;\">
							M
						</td>
					</tr>
				</tbody>
			</table>
		</div>
<img class=\"desc_anchor\" id=\"desc-module-3\" src=\"http://a.tbcdn.cn/kissy/1.0.0/build/imglazyload/spaceball.gif\" style=\"margin:0px;padding:0px;height:1px;display:block;clear:both;vertical-align:top;\" />
		<div align=\"center\" style=\"margin:0px;padding:0px;\">
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/T2IJltXb4aXXXXXXXX_!!263817957.gif\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
			</p>
			<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;line-height:1.4;\">
				<img alt=\"\" src=\"http://img03.taobaocdn.com/imgextra/i3/263817957/TB2gW9.cXXXXXXPXpXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" /><img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/TB24vLqcXXXXXbYXXXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" /><img src=\"http://img04.taobaocdn.com/imgextra/i4/263817957/TB2e_HicXXXXXbKXpXXXXXXXXXX-263817957.jpg_.webp\" style=\"margin:0px;padding:0px;vertical-align:top;float:none;\" />
			</p>
		</div>
	</div>
</div>');
INSERT INTO ftxia_free ( `id`, `title`, `num`, `remain`, `ordid`, `add_time`, `start_time`, `end_time`, `deposit`, `paid`, `price`, `coupon_price`, `click_url`, `pic_url`, `seller`, `status`, `content` ) VALUES  ('7','柯琳诗丽 女士性感聚拢调整型文胸收副乳内衣a杯小胸加厚薄款胸罩 ','10','10','100','1429935118','631152000','0','0.00','0','0.00','0.00','http://detail.tmall.com/item.htm?spm=a230r.1.14.122.dsCIp1&amp;id=18277099214&amp;ns=1&amp;abbucket=6','http://gi2.md.alicdn.com/bao/uploaded/i2/TB1_JyEGFXXXXbTXXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg','27','1','');

DROP TABLE IF EXISTS `ftxia_msg`;
CREATE TABLE `ftxia_msg` (
  `id` int(11) NOT NULL auto_increment,
  `fuid` int(11) default NULL,
  `fname` varchar(51) default NULL,
  `tuid` int(11) default '0',
  `tname` varchar(50) default 'SYSTEM',
  `info` text,
  `status` tinyint(1) default '0',
  `add_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_msg ( `id`, `fuid`, `fname`, `tuid`, `tname`, `info`, `status`, `add_time` ) VALUES  ('1','0','SYSTEM','3','华美网络','管理员充值1元','0','1415329833');
INSERT INTO ftxia_msg ( `id`, `fuid`, `fname`, `tuid`, `tname`, `info`, `status`, `add_time` ) VALUES  ('2','0','SYSTEM','3','华美网络','管理员充值2元','0','1415329907');
INSERT INTO ftxia_msg ( `id`, `fuid`, `fname`, `tuid`, `tname`, `info`, `status`, `add_time` ) VALUES  ('3','0','SYSTEM','5','hayman','管理员充值9999999元','0','1416975188');
DROP TABLE IF EXISTS `ftxia_online`;
CREATE TABLE `ftxia_online` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `account` varchar(20) NOT NULL default 'Guest',
  `username` varchar(20) NOT NULL default '游客',
  `lasttime` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_order`;
CREATE TABLE `ftxia_order` (
  `id` int(10) NOT NULL auto_increment,
  `uid` int(10) NOT NULL,
  `seller` int(11) NOT NULL,
  `order_time` int(11) NOT NULL default '0',
  `add_time` int(11) NOT NULL,
  `items_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `coupon_price` decimal(10,2) NOT NULL,
  `order_id` varchar(30) default NULL,
  `status` enum('待填写订单号','待审核订单号','订单号有误','申诉中','已返还','已关闭') NOT NULL default '待填写订单号',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_order ( `id`, `uid`, `seller`, `order_time`, `add_time`, `items_id`, `title`, `price`, `coupon_price`, `order_id`, `status` ) VALUES  ('7','6','5','1416282948','1416214454','4','测试测','123.00','0.00','213323123','已返还');
INSERT INTO ftxia_order ( `id`, `uid`, `seller`, `order_time`, `add_time`, `items_id`, `title`, `price`, `coupon_price`, `order_id`, `status` ) VALUES  ('17','6','5','1416282948','1416214454','3','测试测','123.00','0.00','213323123','订单号有误');
INSERT INTO ftxia_order ( `id`, `uid`, `seller`, `order_time`, `add_time`, `items_id`, `title`, `price`, `coupon_price`, `order_id`, `status` ) VALUES  ('18','9','0','1429891285','1429891278','5','韩都衣舍韩版2015夏新款女装收腰显瘦印花拼接时尚连衣裙GQ3522耒','99.00','0.00','123','待审核订单号');
INSERT INTO ftxia_order ( `id`, `uid`, `seller`, `order_time`, `add_time`, `items_id`, `title`, `price`, `coupon_price`, `order_id`, `status` ) VALUES  ('19','10','0','1429931476','1429931471','6','韩都衣舍韩版2015夏装新款女装字母印花宽松短袖连衣裙LZ4367烎','99.00','0.00','23132','待审核订单号');
DROP TABLE IF EXISTS `ftxia_pjword`;
CREATE TABLE `ftxia_pjword` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `word` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_pjword ( `id`, `word`, `add_time` ) VALUES  ('1','好评','1366777286');
INSERT INTO ftxia_pjword ( `id`, `word`, `add_time` ) VALUES  ('2','好评！','1366777296');
INSERT INTO ftxia_pjword ( `id`, `word`, `add_time` ) VALUES  ('3','测试','1367808159');
DROP TABLE IF EXISTS `ftxia_user`;
CREATE TABLE `ftxia_user` (
  `id` int(10) NOT NULL auto_increment,
  `uc_uid` int(10) unsigned NOT NULL default '0',
  `username` varchar(20) NOT NULL default '0',
  `password` varchar(32) NOT NULL default '0',
  `email` varchar(50) default NULL,
  `gender` tinyint(1) default '0' COMMENT '1男，0女',
  `intro` varchar(500) NOT NULL,
  `byear` smallint(4) unsigned NOT NULL,
  `bmonth` tinyint(2) unsigned NOT NULL,
  `bday` tinyint(2) unsigned NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `score` int(10) unsigned NOT NULL default '0',
  `score_level` int(10) unsigned NOT NULL default '0',
  `qq` varchar(20) default NULL,
  `address` varchar(255) default NULL,
  `realname` varchar(25) default NULL,
  `mobile` varchar(13) default NULL,
  `reg_ip` varchar(15) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL default '0',
  `last_time` int(10) unsigned NOT NULL default '0',
  `sign_time` int(10) default '0',
  `last_ip` varchar(15) default '0',
  `login_count` int(10) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  `login_type` tinyint(1) NOT NULL default '1' COMMENT '商家2还是普通用户1',
  `money` decimal(10,2) NOT NULL default '0.00',
  `alipay` varchar(100) default NULL,
  `name` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('6','0','ikillcash','e10adc3949ba59abbe56e057f20f883e','215142193@qq.com','0','','0','0','0','','','57','53','','','','','127.0.0.1','1416216447','1416412075','0','127.0.0.1','5','1','2','1127.00','369888521@qq.com','张海铭');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('5','0','hayman','e10adc3949ba59abbe56e057f20f883e','369888521@qq.com','0','','0','0','0','','','54','54','','','','','127.0.0.1','1416216478','1421451997','0','59.47.43.126','6','1','2','9987777.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('9','0','15356565','e10adc3949ba59abbe56e057f20f883e','15356565@qq.com','0','','0','0','0','','','0','0','','','','','59.47.43.121','1421390674','1422408394','0','59.47.43.125','7','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('10','0','15356566','e10adc3949ba59abbe56e057f20f883e','15356566@qq.com','0','','0','0','0','','','0','0','','','','','59.47.43.126','1421451499','1422408535','0','59.47.43.125','8','1','1','55.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('11','0','天天','85e1c5fcd281659a09398f110f2d039f','345345@qq.com','0','','0','0','0','','','0','0','','','','','113.66.66.140','1422034754','1422034754','0','113.66.66.140','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('12','0','人人','7fa8282ad93047a4d6fe6111c93b308a','123123@qq.com','0','','0','0','0','','','0','0','','','','','113.66.66.140','1422035097','1422035097','0','113.66.66.140','2','1','1','55.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('13','0','123456','e10adc3949ba59abbe56e057f20f883e','123456@qq.com','0','','0','0','0','','','52','52','','','','','101.254.17.221','1423365393','1430576265','0','127.0.0.1','4','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('14','0','1234567','e10adc3949ba59abbe56e057f20f883e','1234567@qq.com','0','','0','0','0','','','51','51','','','','','101.254.17.221','1423365468','1423365468','0','101.254.17.221','2','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('15','0','jspkshezi','788c7d2b79146614a89c0855486b4a3f','356521212@qq.com','0','','0','0','0','','','53','53','','','','','14.118.30.199','1423755314','1426607607','0','14.118.7.59','4','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('16','0','jspkshezi1','788c7d2b79146614a89c0855486b4a3f','121212121@qq.com','0','','0','0','0','','','53','53','','','','','14.118.30.199','1423809340','1426758932','0','14.118.7.40','4','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('17','0','www611124','6363ffa0db70a5010ca1f56db43ec633','1229196869@qq.com','0','','0','0','0','','','51','51','','','','','123.162.167.155','1424028575','1424028575','0','123.162.167.155','2','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('18','0','www','6363ffa0db70a5010ca1f56db43ec633','12291968691@qq.com','0','','0','0','0','','','51','51','','','','','123.162.167.155','1424028862','1424028862','0','123.162.167.155','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('19','0','156104220','8d57bbcecdfcbcc3503b759ecd311275','156104220@qq.com','0','','0','0','0','','','56','51','','','','','110.196.101.205','1424932241','1424932241','1424880000','110.196.101.205','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('20','0','haishao123','2a5ea9de4d71cf192e6b5486b0cd4389','68455336@qq.com','0','','0','0','0','','','51','51','','','','','118.78.251.175','1425043941','1425043941','0','118.78.251.175','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('21','0','苏大怒三次','25f9e794323b453885f5181f1b624d0b','6169152@qq.com','0','','0','0','0','','','51','51','','','','','202.104.65.114','1425093225','1425093226','0','202.104.65.114','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('22','0','baidu2','d016c5697a22e033daa8aa97b7402796','156104220@126.com','0','','0','0','0','','','51','51','','','','','110.196.101.215','1426226308','1426226309','0','110.196.101.215','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('23','0','王杰','209eae20cef54355b3fc1086cb9ceae2','6532854@qq.com','0','','0','0','0','','','53','53','','','','','140.249.61.230','1426521515','1426952670','0','113.122.222.97','4','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('24','0','yyfh1320','59200bfccb847f8790e3402878dc87f1','575695998@qq.com','0','','0','0','0','','','51','51','','','','','183.155.50.203','1427213178','1427213178','0','183.155.50.203','2','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('25','0','xixiyaya','25f9e794323b453885f5181f1b624d0b','466526864@qq.com','0','','0','0','0','','','51','51','','','','','112.85.62.10','1427958039','1427958051','0','112.85.62.10','2','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('26','0','12312','9cbf8a4dcb8e30682b927f352d6559a0','123123123@qq.com','0','','0','0','0','','','51','51','','','','','124.72.125.201','1429882930','1429882930','0','124.72.125.201','2','1','1','55.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('27','0','12315','e10adc3949ba59abbe56e057f20f883e','14654564@qq.com','0','','0','0','0','','','52','52','','','','','124.72.125.201','1429933010','1429937192','0','127.0.0.1','6','1','2','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('28','0','12316','e10adc3949ba59abbe56e057f20f883e','123156@qq.com','2','','0','0','0','','','51','51','0','','','','127.0.0.1','1429933808','1429933809','0','127.0.0.1','2','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('29','0','12319','e10adc3949ba59abbe56e057f20f883e','1231648@qq.com','2','','0','0','0','','','51','51','0','','','','127.0.0.1','1429935874','1429935875','0','127.0.0.1','2','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('30','0','123','e10adc3949ba59abbe56e057f20f883e','12318@qq.com','2','','0','0','0','','','51','51','0','','','','127.0.0.1','1429935966','1429936021','0','127.0.0.1','3','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('31','0','1233','e10adc3949ba59abbe56e057f20f883e','156464@qq.com','2','','0','0','0','','','51','51','0','','','','127.0.0.1','1429936040','1429936040','0','127.0.0.1','2','1','1','0.00','','');
INSERT INTO ftxia_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `qq`, `address`, `realname`, `mobile`, `reg_ip`, `reg_time`, `last_time`, `sign_time`, `last_ip`, `login_count`, `status`, `type`, `money`, `alipay`, `name` ) VALUES  ('32','0','12318','e10adc3949ba59abbe56e057f20f883e','156456465@qq.com','2','','0','0','0','','','51','51','0','','','','127.0.0.1','1429936650','1429936650','0','127.0.0.1','2','1','1','0.00','','');
DROP TABLE IF EXISTS `ftxia_user_bind`;
CREATE TABLE `ftxia_user_bind` (
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL,
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`type`),
  KEY `type_keyid` (`type`,`keyid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_user_msgtip`;
CREATE TABLE `ftxia_user_msgtip` (
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0' COMMENT '1:关注，2:提到，3:私信，4:通知',
  `num` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`type`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `ftxia_user_stat`;
CREATE TABLE `ftxia_user_stat` (
  `uid` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `uid_type` (`uid`,`action`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('2','register','1','1429888895');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('2','login','1','1429888895');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('3','register','1','1429889062');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('3','login','1','1429889062');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('9','register','1','1429889732');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('9','login','1','1429889732');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('10','register','1','1429931419');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('10','login','1','1429931419');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('11','register','1','1429931525');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('11','login','1','1429931525');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('12','register','1','1429931545');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('12','login','1','1429931545');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('13','register','1','1429933011');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('13','login','1','1430576265');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('28','register','1','1429933808');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('28','login','1','1429933809');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('27','login','4','1429937192');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('29','register','1','1429935875');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('29','login','1','1429935875');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('30','register','1','1429935966');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('30','login','2','1429936021');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('31','register','1','1429936040');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('31','login','1','1429936040');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('32','register','1','1429936650');
INSERT INTO ftxia_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('32','login','1','1429936650');
