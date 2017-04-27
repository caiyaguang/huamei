DROP TABLE IF EXISTS `ftxia_link`;
CREATE TABLE `ftxia_link` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `ftxia_link` (`id`,`name`,`add_time`,`version`,`team`,`app`,`email`,`web`,`pubdate`) VALUES (1,'华美网络','','http://bbs.138gzs.com',2,1),(2,'秒杀网','','http://www.mswang.net',4,1),(3,'飞天侠','','http://www.138gzs.com',3,1),(4,'华美淘宝客','','http://www.138gzs.com/',1,1);