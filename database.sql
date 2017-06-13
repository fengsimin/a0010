DROP TABLE IF EXISTS `a0010_admin`;
CREATE TABLE `a0010_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `face` varchar(10) DEFAULT '',
  `realname` varchar(20) DEFAULT '',
  `address` varchar(255) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `sex` char(2) DEFAULT '',
  `rbac` varchar(255) DEFAULT '',
  `json` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0010_item`;
CREATE TABLE `a0010_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `nid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1',
  `sortby` int(11) DEFAULT '100',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `title_color` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `image_path` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_title` varchar(255) DEFAULT '',
  `url_target` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT '',
  `summary_color` varchar(255) DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `a0010_item` VALUES("2","0","1","1","99","1421745871","1487073895","标题2","","bg.jpg","data/photo/2","","","_self","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");
INSERT INTO `a0010_item` VALUES("3","0","1","1","98","1421745882","1487073920","标题3","","bg.jpg","data/photo/3","http://www.ifeiwu.com/","了解详细>>","_blank","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");
INSERT INTO `a0010_item` VALUES("5","0","1","1","100","1421745741","1487073868","标题1","","bg.jpg","data/photo/5","","","_self","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");
INSERT INTO `a0010_item` VALUES("8","0","1","1","97","1444980177","1487073942","标题4","","bg.jpg","data/photo/8","","","_self","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");
INSERT INTO `a0010_item` VALUES("9","0","1","1","100","1446195084","1487073853","标题5","","bg.jpg","data/photo/9","","","_self","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");
INSERT INTO `a0010_item` VALUES("10","0","1","1","100","1446195090","1487073808","标题6","","bg.jpg","data/photo/10","","","_self","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");
INSERT INTO `a0010_item` VALUES("11","0","1","1","100","1446195094","1487073784","标题7","","bg.jpg","data/photo/11","","","_self","这是一张抽象的摄影， 运用动态模糊效果进行 构思，表现了鸟群飞行 中的速度，自由的瞬间","","");


DROP TABLE IF EXISTS `a0010_log`;
CREATE TABLE `a0010_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(20) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `table` varchar(20) DEFAULT '',
  `table_id` int(11) DEFAULT '0',
  `ip` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0010_site`;
CREATE TABLE `a0010_site` (
  `state` tinyint(1) DEFAULT '1',
  `name` varchar(100) DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `a0010_site` VALUES("1","about_intro","&lt;p style=&quot;text-align: center;&quot;&gt;飞屋是一个具象，保持不断在飞行中的姿态，既有天空也有家。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;飞屋的理念就是体验飞翔的自由，也能守护家庭的温暖。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;飞屋的设计理想是赋予每个网站一个温暖的故事。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;做一个有故事的网站， 并且能把复杂还回给简单。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;我们没有什么是要到达的地方，就像我们做出 的网站也只是一个开始。&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;网站是具有生命力的东西，如果你像经营一个家 一样去悉心经营它，&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;它就会输送出源源不断的自由和活力。&lt;/p&gt;");
INSERT INTO `a0010_site` VALUES("1","domain","qing.com/a0010");
INSERT INTO `a0010_site` VALUES("1","logo","logo.png");
INSERT INTO `a0010_site` VALUES("1","swiper_autoplay","0");
INSERT INTO `a0010_site` VALUES("1","swiper_speed","800");
INSERT INTO `a0010_site` VALUES("1","swiper_effect","fade");
INSERT INTO `a0010_site` VALUES("1","swiper_direction","horizontal");
INSERT INTO `a0010_site` VALUES("1","swiper_slidesPerView","4");
INSERT INTO `a0010_site` VALUES("1","swiper_spaceBetween","20");
INSERT INTO `a0010_site` VALUES("1","about_title","关于我们");
INSERT INTO `a0010_site` VALUES("1","site_name","");
INSERT INTO `a0010_site` VALUES("1","favicon","");
INSERT INTO `a0010_site` VALUES("1","touch_icon","");
INSERT INTO `a0010_site` VALUES("1","title","");
INSERT INTO `a0010_site` VALUES("1","keywords","");
INSERT INTO `a0010_site` VALUES("1","description","");
INSERT INTO `a0010_site` VALUES("1","skin","");
INSERT INTO `a0010_site` VALUES("1","style-css","");
INSERT INTO `a0010_site` VALUES("1","style","");


DROP TABLE IF EXISTS `a0010_stats`;
CREATE TABLE `a0010_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `screen` varchar(20) DEFAULT '',
  `cookie` varchar(32) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `referer` varchar(255) DEFAULT '',
  `keyword` varchar(255) DEFAULT '',
  `os` varchar(20) DEFAULT '',
  `os_version` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `browser` varchar(20) DEFAULT '',
  `browser_version` varchar(20) DEFAULT '',
  `ip` varchar(20) DEFAULT '',
  `ip_isp` varchar(20) DEFAULT '',
  `ip_country` varchar(20) DEFAULT '',
  `ip_region` varchar(20) DEFAULT '',
  `ip_area` varchar(20) DEFAULT '',
  `ip_city` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `a0010_trash`;
CREATE TABLE `a0010_trash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) DEFAULT '0',
  `ctime` int(11) DEFAULT '0',
  `utime` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT '0',
  `admin_name` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `table` varchar(255) DEFAULT '',
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



