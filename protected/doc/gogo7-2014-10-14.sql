/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : gogo7

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-10-14 23:40:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，0禁用，1启用',
  `last_login` int(32) NOT NULL DEFAULT '0',
  `last_ip` varchar(32) NOT NULL DEFAULT '',
  `role_id` int(10) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `login_num` int(32) NOT NULL DEFAULT '0',
  `create_by` varchar(16) NOT NULL DEFAULT '' COMMENT '创建者',
  `created` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '619ADDD625B072CC91389F94B5D0E88B', '1', '1411646844', '127.0.0.1', '1', '283', '', '1360085491');
INSERT INTO `admin` VALUES ('2', 'gogousa', 'c6ff7f44ccaba7a1e70dbce95ee6d261', '1', '1411992893', '127.0.0.1', '0', '17', '', '1364224235');

-- ----------------------------
-- Table structure for `admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `ip` varchar(64) NOT NULL DEFAULT '' COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2677 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'admin', '1360085264', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('4', 'zhangwei', '1360086496', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('5', 'zhangwei', '1360087358', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('6', 'admin', '1360087418', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('7', 'admin', '1360087453', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('8', 'zhangwei', '1360092063', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('9', 'admin', '1360972964', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('10', 'admin', '1360978831', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('11', 'admin', '1360980779', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('12', 'admin', '1361005124', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('13', 'admin', '1361005691', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('14', 'admin', '1361005779', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('15', 'admin', '1361006460', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('16', 'admin', '1363361066', '114.112.46.31');
INSERT INTO `admin_log` VALUES ('17', 'admin', '1363361095', '111.222.156.183');
INSERT INTO `admin_log` VALUES ('18', 'admin', '1363361303', '123.150.201.67');
INSERT INTO `admin_log` VALUES ('19', 'gogousa', '1364224250', '111.222.157.147');
INSERT INTO `admin_log` VALUES ('20', 'gogousa', '1364224300', '175.25.242.26');
INSERT INTO `admin_log` VALUES ('21', 'gogousa', '1364648029', '111.222.157.201');
INSERT INTO `admin_log` VALUES ('22', 'gogousa', '1364994047', '116.76.72.75');
INSERT INTO `admin_log` VALUES ('23', 'gogousa', '1364994352', '113.107.218.107');
INSERT INTO `admin_log` VALUES ('24', 'gogousa', '1365299375', '119.59.158.254');
INSERT INTO `admin_log` VALUES ('25', 'gogousa', '1365300852', '113.107.205.60');
INSERT INTO `admin_log` VALUES ('26', 'gogousa', '1365468348', '119.59.159.125');
INSERT INTO `admin_log` VALUES ('27', 'gogousa', '1365471511', '125.33.88.232');
INSERT INTO `admin_log` VALUES ('28', 'gogousa', '1365471571', '60.55.44.5');
INSERT INTO `admin_log` VALUES ('29', 'gogousa', '1365510425', '119.59.159.125');
INSERT INTO `admin_log` VALUES ('30', 'gogousa', '1365578525', '113.107.222.76');
INSERT INTO `admin_log` VALUES ('31', 'gogousa', '1365757855', '60.55.44.5');
INSERT INTO `admin_log` VALUES ('32', 'admin', '1365788137', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('33', 'gogousa', '1366269457', '60.55.44.120');
INSERT INTO `admin_log` VALUES ('34', 'admin', '1367929090', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('35', 'admin', '1368020688', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('36', 'admin', '1368195239', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('37', 'admin', '1368447474', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('38', 'gogousa', '1368537348', '111.222.157.23');
INSERT INTO `admin_log` VALUES ('39', 'admin', '1368538896', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('40', 'gogousa', '1368691840', '113.107.222.220');
INSERT INTO `admin_log` VALUES ('41', 'admin', '1368944462', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('42', 'gogousa', '1369275125', '111.222.157.221');
INSERT INTO `admin_log` VALUES ('43', 'admin', '1369310756', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('44', 'admin', '1369310964', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('45', 'admin', '1369319263', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('46', 'gogousa', '1369401549', '112.92.104.209');
INSERT INTO `admin_log` VALUES ('47', 'gogousa', '1369405161', '111.222.157.221');
INSERT INTO `admin_log` VALUES ('48', 'admin', '1369408273', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('49', 'admin', '1369412775', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('50', 'gogousa', '1369456981', '111.222.157.221');
INSERT INTO `admin_log` VALUES ('51', 'gogousa', '1369459303', '113.107.222.75');
INSERT INTO `admin_log` VALUES ('52', 'admin', '1369487779', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('53', 'gogousa', '1369640951', '123.114.103.248');
INSERT INTO `admin_log` VALUES ('54', 'gogousa', '1369643828', '219.139.225.88');
INSERT INTO `admin_log` VALUES ('55', 'gogousa', '1369645450', '123.114.103.248');
INSERT INTO `admin_log` VALUES ('56', 'gogousa', '1369645582', '123.114.103.248');
INSERT INTO `admin_log` VALUES ('57', 'gogousa', '1369645796', '219.139.225.88');
INSERT INTO `admin_log` VALUES ('58', 'admin', '1369652705', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('59', 'gogousa', '1369655228', '114.253.144.229');
INSERT INTO `admin_log` VALUES ('60', 'gogousa', '1369704658', '125.33.79.209');
INSERT INTO `admin_log` VALUES ('61', 'gogousa', '1369726840', '111.173.74.156');
INSERT INTO `admin_log` VALUES ('62', 'admin', '1369827931', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('63', 'gogousa', '1369900534', '123.114.106.142');
INSERT INTO `admin_log` VALUES ('64', 'gogousa', '1370011335', '114.253.144.229');
INSERT INTO `admin_log` VALUES ('65', 'admin', '1370012139', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('66', 'admin', '1370084842', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('67', 'admin', '1370094765', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('68', 'gogousa', '1370265351', '59.172.36.218');
INSERT INTO `admin_log` VALUES ('69', 'admin', '1370346441', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('70', 'gogousa', '1370433467', '59.173.200.24');
INSERT INTO `admin_log` VALUES ('71', 'admin', '1370439416', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('72', 'admin', '1370443619', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('73', 'gogousa', '1370531440', '8.35.201.4');
INSERT INTO `admin_log` VALUES ('74', 'gogousa', '1370595366', '113.107.222.186');
INSERT INTO `admin_log` VALUES ('75', 'gogousa', '1370595405', '121.35.251.225');
INSERT INTO `admin_log` VALUES ('76', 'gogousa', '1370610270', '120.82.127.40');
INSERT INTO `admin_log` VALUES ('77', 'admin', '1370610654', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('78', 'gogousa', '1370611967', '111.173.155.13');
INSERT INTO `admin_log` VALUES ('79', 'gogousa', '1370757922', '113.107.222.89');
INSERT INTO `admin_log` VALUES ('80', 'admin', '1370848410', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('81', 'admin', '1370851508', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('82', 'gogousa', '1370860087', '123.123.99.137');
INSERT INTO `admin_log` VALUES ('83', 'admin', '1370907048', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('84', 'gogousa', '1370934367', '59.172.38.99');
INSERT INTO `admin_log` VALUES ('85', 'admin', '1370941258', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('86', 'admin', '1370944183', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('87', 'gogousa', '1371096965', '123.114.109.224');
INSERT INTO `admin_log` VALUES ('88', 'gogousa', '1371116347', '183.16.161.163');
INSERT INTO `admin_log` VALUES ('89', 'gogousa', '1371116367', '119.59.157.180');
INSERT INTO `admin_log` VALUES ('90', 'gogousa', '1371116615', '183.16.161.163');
INSERT INTO `admin_log` VALUES ('91', 'gogousa', '1371122168', '119.59.157.180');
INSERT INTO `admin_log` VALUES ('92', 'gogousa', '1371126604', '119.59.157.180');
INSERT INTO `admin_log` VALUES ('93', 'admin', '1371133868', '114.112.46.35');
INSERT INTO `admin_log` VALUES ('94', 'gogousa', '1371138859', '118.186.15.217');
INSERT INTO `admin_log` VALUES ('95', 'gogousa', '1371171447', '111.175.124.61');
INSERT INTO `admin_log` VALUES ('96', 'gogousa', '1371173063', '183.16.159.148');
INSERT INTO `admin_log` VALUES ('97', 'gogousa', '1371176402', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('98', 'gogousa', '1371180259', '183.16.159.148');
INSERT INTO `admin_log` VALUES ('99', 'gogousa', '1371185172', '125.33.76.94');
INSERT INTO `admin_log` VALUES ('100', 'gogousa', '1371188118', '183.16.159.148');
INSERT INTO `admin_log` VALUES ('101', 'gogousa', '1371190807', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('102', 'gogousa', '1371191473', '125.33.76.94');
INSERT INTO `admin_log` VALUES ('103', 'gogousa', '1371191643', '125.33.76.94');
INSERT INTO `admin_log` VALUES ('104', 'gogousa', '1371192709', '125.33.76.94');
INSERT INTO `admin_log` VALUES ('105', 'gogousa', '1371193451', '183.16.159.148');
INSERT INTO `admin_log` VALUES ('106', 'gogousa', '1371195208', '125.33.76.94');
INSERT INTO `admin_log` VALUES ('107', 'gogousa', '1371197603', '183.16.159.148');
INSERT INTO `admin_log` VALUES ('108', 'gogousa', '1371198267', '125.33.76.94');
INSERT INTO `admin_log` VALUES ('109', 'gogousa', '1371198397', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('110', 'gogousa', '1371204907', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('111', 'gogousa', '1371205437', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('112', 'admin', '1371207441', '114.112.46.48');
INSERT INTO `admin_log` VALUES ('113', 'admin', '1371207981', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('114', 'gogousa', '1371212101', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('115', 'gogousa', '1371212521', '118.186.15.217');
INSERT INTO `admin_log` VALUES ('116', 'gogousa', '1371212836', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('117', 'gogousa', '1371213166', '120.197.131.33');
INSERT INTO `admin_log` VALUES ('118', 'gogousa', '1371214382', '113.107.222.183');
INSERT INTO `admin_log` VALUES ('119', 'gogousa', '1371215014', '113.107.222.183');
INSERT INTO `admin_log` VALUES ('120', 'gogousa', '1371218596', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('121', 'gogousa', '1371218605', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('122', 'gogousa', '1371220279', '111.175.124.61');
INSERT INTO `admin_log` VALUES ('123', 'gogousa', '1371221482', '111.175.124.61');
INSERT INTO `admin_log` VALUES ('124', 'gogousa', '1371261794', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('125', 'gogousa', '1371265304', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('126', 'gogousa', '1371265800', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('127', 'gogousa', '1371266010', '123.150.201.73');
INSERT INTO `admin_log` VALUES ('128', 'gogousa', '1371269259', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('129', 'gogousa', '1371272817', '59.172.38.160');
INSERT INTO `admin_log` VALUES ('130', 'gogousa', '1371273237', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('131', 'gogousa', '1371273534', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('132', 'gogousa', '1371273632', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('133', 'gogousa', '1371277217', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('134', 'gogousa', '1371278393', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('135', 'gogousa', '1371287564', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('136', 'gogousa', '1371294354', '124.68.6.15');
INSERT INTO `admin_log` VALUES ('137', 'gogousa', '1371294886', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('138', 'gogousa', '1371296067', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('139', 'gogousa', '1371296698', '113.107.223.96');
INSERT INTO `admin_log` VALUES ('140', 'admin', '1371299476', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('141', 'admin', '1371300600', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('142', 'gogousa', '1371304116', '123.150.201.73');
INSERT INTO `admin_log` VALUES ('143', 'gogousa', '1371306401', '58.49.36.203');
INSERT INTO `admin_log` VALUES ('144', 'admin', '1371344066', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('145', 'gogousa', '1371349343', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('146', 'gogousa', '1371349509', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('147', 'gogousa', '1371349808', '113.107.222.92');
INSERT INTO `admin_log` VALUES ('148', 'gogousa', '1371351932', '111.174.237.15');
INSERT INTO `admin_log` VALUES ('149', 'admin', '1371353247', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('150', 'gogousa', '1371353693', '111.174.237.15');
INSERT INTO `admin_log` VALUES ('151', 'admin', '1371358181', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('152', 'gogousa', '1371358490', '111.174.237.15');
INSERT INTO `admin_log` VALUES ('153', 'gogousa', '1371367148', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('154', 'gogousa', '1371369969', '111.174.237.15');
INSERT INTO `admin_log` VALUES ('155', 'gogousa', '1371375143', '111.174.237.15');
INSERT INTO `admin_log` VALUES ('156', 'gogousa', '1371376737', '113.107.222.92');
INSERT INTO `admin_log` VALUES ('157', 'gogousa', '1371396758', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('158', 'gogousa', '1371434143', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('159', 'gogousa', '1371436305', '123.114.107.167');
INSERT INTO `admin_log` VALUES ('160', 'gogousa', '1371436688', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('161', 'gogousa', '1371441190', '219.139.231.152');
INSERT INTO `admin_log` VALUES ('162', 'gogousa', '1371451857', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('163', 'gogousa', '1371457984', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('164', 'gogousa', '1371458533', '123.114.107.167');
INSERT INTO `admin_log` VALUES ('165', 'gogousa', '1371462138', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('166', 'gogousa', '1371462645', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('167', 'gogousa', '1371464894', '118.186.129.1');
INSERT INTO `admin_log` VALUES ('168', 'admin', '1371471543', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('169', 'admin', '1371472843', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('170', 'gogousa', '1371480172', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('171', 'gogousa', '1371485817', '118.186.15.214');
INSERT INTO `admin_log` VALUES ('172', 'gogousa', '1371518489', '113.107.222.99');
INSERT INTO `admin_log` VALUES ('173', 'gogousa', '1371523638', '123.114.106.35');
INSERT INTO `admin_log` VALUES ('174', 'gogousa', '1371526055', '113.107.222.99');
INSERT INTO `admin_log` VALUES ('175', 'gogousa', '1371534676', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('176', 'gogousa', '1371535596', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('177', 'gogousa', '1371537881', '123.114.106.35');
INSERT INTO `admin_log` VALUES ('178', 'gogousa', '1371538660', '123.114.106.35');
INSERT INTO `admin_log` VALUES ('179', 'gogousa', '1371543203', '123.114.106.35');
INSERT INTO `admin_log` VALUES ('180', 'gogousa', '1371543372', '123.114.106.35');
INSERT INTO `admin_log` VALUES ('181', 'gogousa', '1371543879', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('182', 'gogousa', '1371543881', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('183', 'gogousa', '1371544141', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('184', 'gogousa', '1371613861', '113.107.222.119');
INSERT INTO `admin_log` VALUES ('185', 'gogousa', '1371628656', '113.107.222.119');
INSERT INTO `admin_log` VALUES ('186', 'gogousa', '1371634707', '113.107.222.119');
INSERT INTO `admin_log` VALUES ('187', 'gogousa', '1371637156', '183.46.15.242');
INSERT INTO `admin_log` VALUES ('188', 'gogousa', '1371645613', '113.107.222.119');
INSERT INTO `admin_log` VALUES ('189', 'gogousa', '1371648162', '113.107.222.119');
INSERT INTO `admin_log` VALUES ('190', 'gogousa', '1371690023', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('191', 'gogousa', '1371691241', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('192', 'gogousa', '1371699773', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('193', 'gogousa', '1371703265', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('194', 'gogousa', '1371708717', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('195', 'gogousa', '1371709663', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('196', 'gogousa', '1371717845', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('197', 'gogousa', '1371743526', '111.222.156.163');
INSERT INTO `admin_log` VALUES ('198', 'gogousa', '1371994517', '64.134.103.165');
INSERT INTO `admin_log` VALUES ('199', 'gogousa', '1371995363', '64.134.103.165');
INSERT INTO `admin_log` VALUES ('200', 'gogousa', '1371995837', '118.186.15.215');
INSERT INTO `admin_log` VALUES ('201', 'gogousa', '1372056608', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('202', 'gogousa', '1372074238', '113.107.205.2');
INSERT INTO `admin_log` VALUES ('203', 'gogousa', '1372083900', '118.186.140.71');
INSERT INTO `admin_log` VALUES ('204', 'gogousa', '1372124108', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('205', 'gogousa', '1372136058', '113.107.222.115');
INSERT INTO `admin_log` VALUES ('206', 'gogousa', '1372167737', '113.107.205.2');
INSERT INTO `admin_log` VALUES ('207', 'gogousa', '1372170327', '113.107.205.2');
INSERT INTO `admin_log` VALUES ('208', 'gogousa', '1372174255', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('209', 'gogousa', '1372207867', '111.161.127.13');
INSERT INTO `admin_log` VALUES ('210', 'gogousa', '1372209257', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('211', 'gogousa', '1372213251', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('212', 'gogousa', '1372250007', '218.92.217.146');
INSERT INTO `admin_log` VALUES ('213', 'gogousa', '1372290570', '64.134.103.165');
INSERT INTO `admin_log` VALUES ('214', 'gogousa', '1372312254', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('215', 'gogousa', '1372312999', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('216', 'gogousa', '1372337435', '220.152.233.133');
INSERT INTO `admin_log` VALUES ('217', 'admin', '1372341740', '118.186.57.48');
INSERT INTO `admin_log` VALUES ('218', 'gogousa', '1372343396', '111.222.157.38');
INSERT INTO `admin_log` VALUES ('219', 'gogousa', '1372348239', '111.222.157.38');
INSERT INTO `admin_log` VALUES ('220', 'gogousa', '1372421095', '27.24.213.52');
INSERT INTO `admin_log` VALUES ('221', 'admin', '1372428150', '118.186.57.35');
INSERT INTO `admin_log` VALUES ('222', 'admin', '1372428863', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('223', 'admin', '1372429718', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('224', 'gogousa', '1372508903', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('225', 'gogousa', '1372510103', '111.222.157.55');
INSERT INTO `admin_log` VALUES ('226', 'gogousa', '1372643082', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('227', 'gogousa', '1372646435', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('228', 'gogousa', '1372653504', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('229', 'gogousa', '1372656072', '111.222.157.11');
INSERT INTO `admin_log` VALUES ('230', 'gogousa', '1372680343', '27.24.213.55');
INSERT INTO `admin_log` VALUES ('231', 'gogousa', '1372687486', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('232', 'gogousa', '1372687751', '111.222.157.209');
INSERT INTO `admin_log` VALUES ('233', 'gogousa', '1372687876', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('234', 'gogousa', '1372692515', '27.24.213.55');
INSERT INTO `admin_log` VALUES ('235', 'gogousa', '1372695803', '27.24.213.55');
INSERT INTO `admin_log` VALUES ('236', 'gogousa', '1372702529', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('237', 'gogousa', '1372715333', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('238', 'gogousa', '1372725741', '113.107.205.98');
INSERT INTO `admin_log` VALUES ('239', 'gogousa', '1372729298', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('240', 'gogousa', '1372729477', '116.26.26.158');
INSERT INTO `admin_log` VALUES ('241', 'gogousa', '1372732384', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('242', 'gogousa', '1372765927', '27.24.213.48');
INSERT INTO `admin_log` VALUES ('243', 'gogousa', '1372768789', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('244', 'gogousa', '1372771385', '111.222.156.149');
INSERT INTO `admin_log` VALUES ('245', 'gogousa', '1372771996', '120.197.131.40');
INSERT INTO `admin_log` VALUES ('246', 'gogousa', '1372779918', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('247', 'gogousa', '1372779918', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('248', 'gogousa', '1372857891', '111.222.156.149');
INSERT INTO `admin_log` VALUES ('249', 'gogousa', '1372858129', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('250', 'gogousa', '1372859360', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('251', 'gogousa', '1372859453', '116.26.23.213');
INSERT INTO `admin_log` VALUES ('252', 'gogousa', '1372859800', '27.41.139.19');
INSERT INTO `admin_log` VALUES ('253', 'gogousa', '1372860769', '120.197.131.3');
INSERT INTO `admin_log` VALUES ('254', 'gogousa', '1372873508', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('255', 'gogousa', '1372873631', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('256', 'gogousa', '1372873631', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('257', 'gogousa', '1372901049', '113.107.222.103');
INSERT INTO `admin_log` VALUES ('258', 'gogousa', '1372909394', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('259', 'gogousa', '1372944031', '220.152.232.242');
INSERT INTO `admin_log` VALUES ('260', 'gogousa', '1372950700', '27.24.213.53');
INSERT INTO `admin_log` VALUES ('261', 'gogousa', '1372960018', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('262', 'admin', '1373158042', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('263', 'admin', '1373183404', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('264', 'admin', '1373185100', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('265', 'admin', '1373187368', '183.92.215.162');
INSERT INTO `admin_log` VALUES ('266', 'admin', '1373287141', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('267', 'gogousa', '1373288889', '27.24.213.48');
INSERT INTO `admin_log` VALUES ('268', 'gogousa', '1373296006', '27.24.213.48');
INSERT INTO `admin_log` VALUES ('269', 'gogousa', '1373371474', '27.24.213.49');
INSERT INTO `admin_log` VALUES ('270', 'gogousa', '1373381849', '123.150.201.68');
INSERT INTO `admin_log` VALUES ('271', 'gogousa', '1373382446', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('272', 'gogousa', '1373382689', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('273', 'gogousa', '1373383408', '27.24.213.49');
INSERT INTO `admin_log` VALUES ('274', 'gogousa', '1373419659', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('275', 'gogousa', '1373439515', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('276', 'gogousa', '1373440259', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('277', 'gogousa', '1373448992', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('278', 'gogousa', '1373456021', '218.92.217.155');
INSERT INTO `admin_log` VALUES ('279', 'gogousa', '1373462004', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('280', 'gogousa', '1373464265', '59.35.100.146');
INSERT INTO `admin_log` VALUES ('281', 'gogousa', '1373464294', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('282', 'gogousa', '1373465069', '111.222.157.66');
INSERT INTO `admin_log` VALUES ('283', 'gogousa', '1373465582', '223.203.188.129');
INSERT INTO `admin_log` VALUES ('284', 'gogousa', '1373466014', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('285', 'gogousa', '1373504348', '60.212.47.146');
INSERT INTO `admin_log` VALUES ('286', 'gogousa', '1373542366', '218.92.217.70');
INSERT INTO `admin_log` VALUES ('287', 'gogousa', '1373559573', '118.186.129.4');
INSERT INTO `admin_log` VALUES ('288', 'gogousa', '1373633411', '219.139.102.107');
INSERT INTO `admin_log` VALUES ('289', 'gogousa', '1373658825', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('290', 'gogousa', '1373689348', '27.24.141.111');
INSERT INTO `admin_log` VALUES ('291', 'gogousa', '1373762441', '111.222.157.59');
INSERT INTO `admin_log` VALUES ('292', 'gogousa', '1373813512', '183.239.149.84');
INSERT INTO `admin_log` VALUES ('293', 'gogousa', '1373873416', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('294', 'gogousa', '1373873546', '123.123.97.13');
INSERT INTO `admin_log` VALUES ('295', 'gogousa', '1373888637', '120.198.8.28');
INSERT INTO `admin_log` VALUES ('296', 'gogousa', '1373890739', '120.198.8.28');
INSERT INTO `admin_log` VALUES ('297', 'gogousa', '1373893659', '120.198.8.28');
INSERT INTO `admin_log` VALUES ('298', 'gogousa', '1373897690', '124.42.226.75');
INSERT INTO `admin_log` VALUES ('299', 'gogousa', '1373899482', '223.203.188.129');
INSERT INTO `admin_log` VALUES ('300', 'gogousa', '1373899532', '120.198.8.28');
INSERT INTO `admin_log` VALUES ('301', 'gogousa', '1373899992', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('302', 'gogousa', '1373900763', '120.198.8.28');
INSERT INTO `admin_log` VALUES ('303', 'gogousa', '1373973128', '120.234.186.125');
INSERT INTO `admin_log` VALUES ('304', 'gogousa', '1373973604', '120.234.186.125');
INSERT INTO `admin_log` VALUES ('305', 'gogousa', '1374033398', '183.235.35.16');
INSERT INTO `admin_log` VALUES ('306', 'gogousa', '1374037392', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('307', 'gogousa', '1374039721', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('308', 'gogousa', '1374070632', '183.46.9.232');
INSERT INTO `admin_log` VALUES ('309', 'gogousa', '1374071797', '183.46.9.232');
INSERT INTO `admin_log` VALUES ('310', 'gogousa', '1374124750', '116.26.31.146');
INSERT INTO `admin_log` VALUES ('311', 'gogousa', '1374124860', '120.197.131.18');
INSERT INTO `admin_log` VALUES ('312', 'gogousa', '1374132271', '123.114.99.126');
INSERT INTO `admin_log` VALUES ('313', 'admin', '1374152679', '61.184.228.197');
INSERT INTO `admin_log` VALUES ('314', 'gogousa', '1374154587', '111.192.134.166');
INSERT INTO `admin_log` VALUES ('315', 'gogousa', '1374177357', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('316', 'gogousa', '1374198531', '125.33.93.164');
INSERT INTO `admin_log` VALUES ('317', 'gogousa', '1374201791', '125.33.93.164');
INSERT INTO `admin_log` VALUES ('318', 'gogousa', '1374202254', '125.33.93.164');
INSERT INTO `admin_log` VALUES ('319', 'gogousa', '1374206550', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('320', 'gogousa', '1374215390', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('321', 'gogousa', '1374216074', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('322', 'gogousa', '1374245368', '118.186.15.208');
INSERT INTO `admin_log` VALUES ('323', 'gogousa', '1374286787', '118.186.15.216');
INSERT INTO `admin_log` VALUES ('324', 'gogousa', '1374291847', '111.222.157.16');
INSERT INTO `admin_log` VALUES ('325', 'gogousa', '1374296987', '111.222.157.16');
INSERT INTO `admin_log` VALUES ('326', 'gogousa', '1374311337', '111.222.157.16');
INSERT INTO `admin_log` VALUES ('327', 'gogousa', '1374317749', '111.222.157.16');
INSERT INTO `admin_log` VALUES ('328', 'gogousa', '1374317851', '111.222.157.16');
INSERT INTO `admin_log` VALUES ('329', 'gogousa', '1374381222', '116.26.27.73');
INSERT INTO `admin_log` VALUES ('330', 'gogousa', '1374392259', '116.26.27.73');
INSERT INTO `admin_log` VALUES ('331', 'gogousa', '1374402736', '116.26.27.73');
INSERT INTO `admin_log` VALUES ('332', 'gogousa', '1374408958', '123.150.201.72');
INSERT INTO `admin_log` VALUES ('333', 'gogousa', '1374411020', '116.26.27.73');
INSERT INTO `admin_log` VALUES ('334', 'gogousa', '1374455938', '125.33.84.179');
INSERT INTO `admin_log` VALUES ('335', 'gogousa', '1374457191', '111.222.156.123');
INSERT INTO `admin_log` VALUES ('336', 'gogousa', '1374457231', '220.152.235.40');
INSERT INTO `admin_log` VALUES ('337', 'gogousa', '1374457340', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('338', 'gogousa', '1374457548', '183.27.58.240');
INSERT INTO `admin_log` VALUES ('339', 'gogousa', '1374457602', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('340', 'gogousa', '1374460305', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('341', 'gogousa', '1374460487', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('342', 'gogousa', '1374461233', '183.46.11.152');
INSERT INTO `admin_log` VALUES ('343', 'gogousa', '1374461422', '183.27.58.240');
INSERT INTO `admin_log` VALUES ('344', 'gogousa', '1374461593', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('345', 'gogousa', '1374463307', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('346', 'gogousa', '1374463319', '125.33.84.179');
INSERT INTO `admin_log` VALUES ('347', 'gogousa', '1374463623', '183.27.58.240');
INSERT INTO `admin_log` VALUES ('348', 'gogousa', '1374463736', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('349', 'gogousa', '1374463936', '183.46.11.152');
INSERT INTO `admin_log` VALUES ('350', 'gogousa', '1374464049', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('351', 'gogousa', '1374468112', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('352', 'gogousa', '1374473013', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('353', 'gogousa', '1374473602', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('354', 'gogousa', '1374473618', '183.46.11.152');
INSERT INTO `admin_log` VALUES ('355', 'gogousa', '1374477751', '220.152.235.40');
INSERT INTO `admin_log` VALUES ('356', 'gogousa', '1374482938', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('357', 'gogousa', '1374498566', '183.46.11.152');
INSERT INTO `admin_log` VALUES ('358', 'gogousa', '1374507302', '118.186.15.214');
INSERT INTO `admin_log` VALUES ('359', 'gogousa', '1374507717', '220.152.235.40');
INSERT INTO `admin_log` VALUES ('360', 'gogousa', '1374515955', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('361', 'gogousa', '1374542429', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('362', 'gogousa', '1374544080', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('363', 'gogousa', '1374544124', '14.18.205.12');
INSERT INTO `admin_log` VALUES ('364', 'gogousa', '1374559234', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('365', 'gogousa', '1374559870', '14.223.186.9');
INSERT INTO `admin_log` VALUES ('366', 'gogousa', '1374565358', '125.33.88.192');
INSERT INTO `admin_log` VALUES ('367', 'gogousa', '1374565459', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('368', 'gogousa', '1374565553', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('369', 'gogousa', '1374565690', '113.84.106.128');
INSERT INTO `admin_log` VALUES ('370', 'gogousa', '1374565880', '111.222.156.123');
INSERT INTO `admin_log` VALUES ('371', 'gogousa', '1374589874', '14.18.205.12');
INSERT INTO `admin_log` VALUES ('372', 'gogousa', '1374628425', '219.128.163.164');
INSERT INTO `admin_log` VALUES ('373', 'gogousa', '1374629034', '219.128.163.164');
INSERT INTO `admin_log` VALUES ('374', 'gogousa', '1374629281', '219.128.163.164');
INSERT INTO `admin_log` VALUES ('375', 'gogousa', '1374631379', '125.33.74.237');
INSERT INTO `admin_log` VALUES ('376', 'gogousa', '1374646224', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('377', 'gogousa', '1374657047', '220.152.233.251');
INSERT INTO `admin_log` VALUES ('378', 'gogousa', '1374657062', '183.27.52.159');
INSERT INTO `admin_log` VALUES ('379', 'gogousa', '1374665996', '220.152.233.251');
INSERT INTO `admin_log` VALUES ('380', 'gogousa', '1374714284', '220.152.206.201');
INSERT INTO `admin_log` VALUES ('381', 'gogousa', '1374716563', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('382', 'gogousa', '1374730719', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('383', 'gogousa', '1374763154', '219.150.71.7');
INSERT INTO `admin_log` VALUES ('384', 'gogousa', '1374770303', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('385', 'gogousa', '1374804451', '111.222.156.122');
INSERT INTO `admin_log` VALUES ('386', 'gogousa', '1374804454', '123.123.97.28');
INSERT INTO `admin_log` VALUES ('387', 'gogousa', '1374804863', '183.46.14.72');
INSERT INTO `admin_log` VALUES ('388', 'gogousa', '1374805488', '123.123.97.28');
INSERT INTO `admin_log` VALUES ('389', 'gogousa', '1374809464', '14.18.205.50');
INSERT INTO `admin_log` VALUES ('390', 'gogousa', '1374809488', '123.123.97.28');
INSERT INTO `admin_log` VALUES ('391', 'gogousa', '1374819346', '14.18.205.55');
INSERT INTO `admin_log` VALUES ('392', 'gogousa', '1374854817', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('393', 'gogousa', '1374854899', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('394', 'gogousa', '1374856920', '68.46.126.13');
INSERT INTO `admin_log` VALUES ('395', 'gogousa', '1375062693', '125.33.90.151');
INSERT INTO `admin_log` VALUES ('396', 'gogousa', '1375081889', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('397', 'gogousa', '1375171234', '113.84.105.4');
INSERT INTO `admin_log` VALUES ('398', 'gogousa', '1375172046', '113.84.105.4');
INSERT INTO `admin_log` VALUES ('399', 'gogousa', '1375173080', '113.84.105.4');
INSERT INTO `admin_log` VALUES ('400', 'gogousa', '1375232643', '113.84.105.4');
INSERT INTO `admin_log` VALUES ('401', 'gogousa', '1375232716', '113.84.105.4');
INSERT INTO `admin_log` VALUES ('402', 'gogousa', '1375237066', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('403', 'gogousa', '1375238787', '120.197.131.29');
INSERT INTO `admin_log` VALUES ('404', 'gogousa', '1375238865', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('405', 'gogousa', '1375250696', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('406', 'gogousa', '1375256840', '220.152.199.114');
INSERT INTO `admin_log` VALUES ('407', 'gogousa', '1375280484', '118.186.140.64');
INSERT INTO `admin_log` VALUES ('408', 'gogousa', '1375281145', '173.61.31.27');
INSERT INTO `admin_log` VALUES ('409', 'gogousa', '1375282413', '111.222.156.122');
INSERT INTO `admin_log` VALUES ('410', 'gogousa', '1375331688', '124.66.9.123');
INSERT INTO `admin_log` VALUES ('411', 'gogousa', '1375340232', '125.91.27.162');
INSERT INTO `admin_log` VALUES ('412', 'gogousa', '1375349102', '183.27.53.255');
INSERT INTO `admin_log` VALUES ('413', 'gogousa', '1375352608', '183.15.27.163');
INSERT INTO `admin_log` VALUES ('414', 'gogousa', '1375359423', '123.150.170.225');
INSERT INTO `admin_log` VALUES ('415', 'gogousa', '1375411558', '220.152.205.46');
INSERT INTO `admin_log` VALUES ('416', 'gogousa', '1375418261', '125.91.27.162');
INSERT INTO `admin_log` VALUES ('417', 'gogousa', '1377000369', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('418', 'gogousa', '1377012495', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('419', 'gogousa', '1377105821', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('420', 'gogousa', '1377138217', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('421', 'gogousa', '1377243098', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('422', 'gogousa', '1377306631', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('423', 'gogousa', '1377333334', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('424', 'gogousa', '1377403752', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('425', 'gogousa', '1377416310', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('426', 'gogousa', '1377443067', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('427', 'gogousa', '1377485873', '127.0.0.1');
INSERT INTO `admin_log` VALUES ('428', 'gogousa', '1377607873', '150.255.108.52');
INSERT INTO `admin_log` VALUES ('429', 'gogousa', '1377612558', '150.255.108.52');
INSERT INTO `admin_log` VALUES ('430', 'gogousa', '1377622023', '113.91.16.39');
INSERT INTO `admin_log` VALUES ('431', 'gogousa', '1377624441', '113.91.16.39');
INSERT INTO `admin_log` VALUES ('432', 'gogousa', '1377624530', '113.91.16.39');
INSERT INTO `admin_log` VALUES ('433', 'gogousa', '1377624969', '113.91.16.39');
INSERT INTO `admin_log` VALUES ('434', 'gogousa', '1377653902', '120.197.131.44');
INSERT INTO `admin_log` VALUES ('435', 'gogousa', '1377666362', '113.91.16.39');
INSERT INTO `admin_log` VALUES ('436', 'gogousa', '1377671980', '120.197.131.44');
INSERT INTO `admin_log` VALUES ('437', 'gogousa', '1377674960', '113.91.16.39');
INSERT INTO `admin_log` VALUES ('438', 'gogousa', '1377676918', '150.255.108.52');
INSERT INTO `admin_log` VALUES ('439', 'gogousa', '1377765888', '113.107.222.11');
INSERT INTO `admin_log` VALUES ('440', 'gogousa', '1377827756', '123.114.101.197');
INSERT INTO `admin_log` VALUES ('441', 'gogousa', '1377828929', '119.136.103.242');
INSERT INTO `admin_log` VALUES ('442', 'gogousa', '1377830274', '223.203.188.134');
INSERT INTO `admin_log` VALUES ('443', 'gogousa', '1377830616', '119.136.103.242');
INSERT INTO `admin_log` VALUES ('444', 'gogousa', '1377833360', '150.255.108.52');
INSERT INTO `admin_log` VALUES ('445', 'gogousa', '1377834568', '119.136.103.242');
INSERT INTO `admin_log` VALUES ('446', 'gogousa', '1377835805', '111.222.157.163');
INSERT INTO `admin_log` VALUES ('447', 'gogousa', '1377836406', '123.114.101.197');
INSERT INTO `admin_log` VALUES ('448', 'gogousa', '1377840056', '150.255.108.52');
INSERT INTO `admin_log` VALUES ('449', 'gogousa', '1377841640', '123.114.101.197');
INSERT INTO `admin_log` VALUES ('450', 'gogousa', '1377848726', '183.46.11.120');
INSERT INTO `admin_log` VALUES ('451', 'gogousa', '1377855057', '119.136.103.242');
INSERT INTO `admin_log` VALUES ('452', 'gogousa', '1377871752', '223.203.188.134');
INSERT INTO `admin_log` VALUES ('453', 'gogousa', '1378089355', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('454', 'gogousa', '1378105886', '113.116.205.160');
INSERT INTO `admin_log` VALUES ('455', 'gogousa', '1378119312', '113.118.171.39');
INSERT INTO `admin_log` VALUES ('456', 'gogousa', '1378129324', '113.91.16.26');
INSERT INTO `admin_log` VALUES ('457', 'gogousa', '1378185324', '113.116.205.160');
INSERT INTO `admin_log` VALUES ('458', 'gogousa', '1378185768', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('459', 'gogousa', '1378204515', '113.91.16.26');
INSERT INTO `admin_log` VALUES ('460', 'gogousa', '1378210811', '113.107.222.14');
INSERT INTO `admin_log` VALUES ('461', 'gogousa', '1378211769', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('462', 'gogousa', '1378222068', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('463', 'gogousa', '1378223573', '113.91.16.26');
INSERT INTO `admin_log` VALUES ('464', 'gogousa', '1378224207', '113.91.16.26');
INSERT INTO `admin_log` VALUES ('465', 'gogousa', '1378225415', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('466', 'gogousa', '1378231569', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('467', 'gogousa', '1378273248', '124.66.14.253');
INSERT INTO `admin_log` VALUES ('468', 'gogousa', '1378373023', '113.116.205.160');
INSERT INTO `admin_log` VALUES ('469', 'gogousa', '1378393389', '58.61.86.94');
INSERT INTO `admin_log` VALUES ('470', 'gogousa', '1378399365', '58.61.86.94');
INSERT INTO `admin_log` VALUES ('471', 'gogousa', '1378400508', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('472', 'gogousa', '1378403748', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('473', 'gogousa', '1378438100', '59.35.41.158');
INSERT INTO `admin_log` VALUES ('474', 'gogousa', '1378438475', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('475', 'gogousa', '1378439440', '220.152.232.144');
INSERT INTO `admin_log` VALUES ('476', 'gogousa', '1378442637', '59.35.41.158');
INSERT INTO `admin_log` VALUES ('477', 'gogousa', '1378456559', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('478', 'gogousa', '1378456853', '59.35.100.131');
INSERT INTO `admin_log` VALUES ('479', 'gogousa', '1378524876', '183.12.115.36');
INSERT INTO `admin_log` VALUES ('480', 'gogousa', '1378629278', '116.26.24.141');
INSERT INTO `admin_log` VALUES ('481', 'gogousa', '1378633891', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('482', 'gogousa', '1378639777', '116.26.24.141');
INSERT INTO `admin_log` VALUES ('483', 'gogousa', '1378690298', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('484', 'gogousa', '1378690534', '121.11.45.194');
INSERT INTO `admin_log` VALUES ('485', 'gogousa', '1378691238', '113.107.222.151');
INSERT INTO `admin_log` VALUES ('486', 'gogousa', '1378701165', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('487', 'gogousa', '1378708911', '121.11.45.194');
INSERT INTO `admin_log` VALUES ('488', 'gogousa', '1378709054', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('489', 'gogousa', '1378712062', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('490', 'gogousa', '1378717546', '121.11.45.194');
INSERT INTO `admin_log` VALUES ('491', 'gogousa', '1378728286', '219.150.71.1');
INSERT INTO `admin_log` VALUES ('492', 'gogousa', '1378734100', '113.58.230.188');
INSERT INTO `admin_log` VALUES ('493', 'gogousa', '1378780144', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('494', 'gogousa', '1378822133', '150.255.168.118');
INSERT INTO `admin_log` VALUES ('495', 'gogousa', '1378953582', '111.222.157.3');
INSERT INTO `admin_log` VALUES ('496', 'gogousa', '1378966765', '111.222.157.3');
INSERT INTO `admin_log` VALUES ('497', 'gogousa', '1378971650', '111.222.157.3');
INSERT INTO `admin_log` VALUES ('498', 'gogousa', '1379033903', '14.18.205.65');
INSERT INTO `admin_log` VALUES ('499', 'gogousa', '1379038691', '123.114.103.129');
INSERT INTO `admin_log` VALUES ('500', 'gogousa', '1379042154', '150.255.168.118');
INSERT INTO `admin_log` VALUES ('501', 'gogousa', '1379042685', '121.11.44.51');
INSERT INTO `admin_log` VALUES ('502', 'gogousa', '1379042894', '150.255.168.118');
INSERT INTO `admin_log` VALUES ('503', 'gogousa', '1379049543', '14.18.205.65');
INSERT INTO `admin_log` VALUES ('504', 'gogousa', '1379056555', '14.18.205.65');
INSERT INTO `admin_log` VALUES ('505', 'gogousa', '1379144156', '183.46.14.17');
INSERT INTO `admin_log` VALUES ('506', 'gogousa', '1379244759', '116.26.29.157');
INSERT INTO `admin_log` VALUES ('507', 'gogousa', '1379256776', '116.26.29.157');
INSERT INTO `admin_log` VALUES ('508', 'gogousa', '1379293257', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('509', 'gogousa', '1379295741', '59.35.72.84');
INSERT INTO `admin_log` VALUES ('510', 'gogousa', '1379295763', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('511', 'gogousa', '1379295799', '123.114.97.221');
INSERT INTO `admin_log` VALUES ('512', 'gogousa', '1379297026', '120.197.131.30');
INSERT INTO `admin_log` VALUES ('513', 'gogousa', '1379298937', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('514', 'gogousa', '1379300499', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('515', 'gogousa', '1379302144', '123.114.97.221');
INSERT INTO `admin_log` VALUES ('516', 'gogousa', '1379302868', '123.114.97.221');
INSERT INTO `admin_log` VALUES ('517', 'gogousa', '1379303852', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('518', 'gogousa', '1379303950', '123.114.97.221');
INSERT INTO `admin_log` VALUES ('519', 'gogousa', '1379308079', '59.35.72.84');
INSERT INTO `admin_log` VALUES ('520', 'gogousa', '1379310138', '123.114.97.221');
INSERT INTO `admin_log` VALUES ('521', 'gogousa', '1379310456', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('522', 'gogousa', '1379312181', '123.114.97.221');
INSERT INTO `admin_log` VALUES ('523', 'gogousa', '1379312381', '120.197.131.30');
INSERT INTO `admin_log` VALUES ('524', 'gogousa', '1379312825', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('525', 'gogousa', '1379320012', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('526', 'gogousa', '1379325424', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('527', 'gogousa', '1379327695', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('528', 'gogousa', '1379330594', '183.46.13.203');
INSERT INTO `admin_log` VALUES ('529', 'gogousa', '1379335124', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('530', 'gogousa', '1379335195', '183.13.4.249');
INSERT INTO `admin_log` VALUES ('531', 'gogousa', '1379338353', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('532', 'gogousa', '1379383895', '116.26.20.38');
INSERT INTO `admin_log` VALUES ('533', 'gogousa', '1379385693', '113.107.222.158');
INSERT INTO `admin_log` VALUES ('534', 'gogousa', '1379387069', '113.84.106.231');
INSERT INTO `admin_log` VALUES ('535', 'gogousa', '1379397696', '113.84.106.231');
INSERT INTO `admin_log` VALUES ('536', 'gogousa', '1379401389', '116.26.20.38');
INSERT INTO `admin_log` VALUES ('537', 'gogousa', '1379417920', '116.26.20.38');
INSERT INTO `admin_log` VALUES ('538', 'gogousa', '1379422119', '116.26.20.38');
INSERT INTO `admin_log` VALUES ('539', 'gogousa', '1379486971', '121.11.47.11');
INSERT INTO `admin_log` VALUES ('540', 'gogousa', '1379487869', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('541', 'gogousa', '1379511008', '223.203.188.160');
INSERT INTO `admin_log` VALUES ('542', 'gogousa', '1379732922', '183.13.144.187');
INSERT INTO `admin_log` VALUES ('543', 'gogousa', '1379735014', '116.26.21.37');
INSERT INTO `admin_log` VALUES ('544', 'gogousa', '1379740102', '116.26.21.37');
INSERT INTO `admin_log` VALUES ('545', 'gogousa', '1379756804', '116.26.21.37');
INSERT INTO `admin_log` VALUES ('546', 'gogousa', '1379762407', '116.26.21.37');
INSERT INTO `admin_log` VALUES ('547', 'gogousa', '1379772049', '116.26.21.37');
INSERT INTO `admin_log` VALUES ('548', 'gogousa', '1379815933', '116.26.24.165');
INSERT INTO `admin_log` VALUES ('549', 'gogousa', '1379817885', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('550', 'gogousa', '1379864963', '183.13.146.207');
INSERT INTO `admin_log` VALUES ('551', 'gogousa', '1379865035', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('552', 'gogousa', '1379865926', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('553', 'gogousa', '1379906161', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('554', 'gogousa', '1379916118', '220.152.207.55');
INSERT INTO `admin_log` VALUES ('555', 'gogousa', '1379918687', '113.116.207.11');
INSERT INTO `admin_log` VALUES ('556', 'gogousa', '1379919742', '220.152.207.55');
INSERT INTO `admin_log` VALUES ('557', 'gogousa', '1379920781', '220.152.207.55');
INSERT INTO `admin_log` VALUES ('558', 'gogousa', '1379923134', '220.152.207.55');
INSERT INTO `admin_log` VALUES ('559', 'gogousa', '1379942505', '183.13.145.200');
INSERT INTO `admin_log` VALUES ('560', 'gogousa', '1379954348', '183.46.12.236');
INSERT INTO `admin_log` VALUES ('561', 'gogousa', '1379986056', '121.11.46.17');
INSERT INTO `admin_log` VALUES ('562', 'gogousa', '1379988854', '121.11.46.17');
INSERT INTO `admin_log` VALUES ('563', 'gogousa', '1379990938', '121.11.46.17');
INSERT INTO `admin_log` VALUES ('564', 'gogousa', '1379994678', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('565', 'gogousa', '1379995769', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('566', 'gogousa', '1379996276', '113.116.207.11');
INSERT INTO `admin_log` VALUES ('567', 'gogousa', '1379998916', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('568', 'gogousa', '1380001519', '113.107.222.60');
INSERT INTO `admin_log` VALUES ('569', 'gogousa', '1380003129', '113.116.207.11');
INSERT INTO `admin_log` VALUES ('570', 'gogousa', '1380003544', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('571', 'gogousa', '1380004791', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('572', 'gogousa', '1380006074', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('573', 'gogousa', '1380006708', '121.11.46.17');
INSERT INTO `admin_log` VALUES ('574', 'gogousa', '1380008003', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('575', 'gogousa', '1380009069', '121.11.46.17');
INSERT INTO `admin_log` VALUES ('576', 'gogousa', '1380009240', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('577', 'gogousa', '1380010175', '121.11.46.17');
INSERT INTO `admin_log` VALUES ('578', 'gogousa', '1380079587', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('579', 'gogousa', '1380093051', '116.26.20.31');
INSERT INTO `admin_log` VALUES ('580', 'gogousa', '1380094427', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('581', 'gogousa', '1380097211', '113.88.153.212');
INSERT INTO `admin_log` VALUES ('582', 'gogousa', '1380100016', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('583', 'gogousa', '1380105294', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('584', 'gogousa', '1380110505', '183.13.147.236');
INSERT INTO `admin_log` VALUES ('585', 'gogousa', '1380111323', '183.13.147.236');
INSERT INTO `admin_log` VALUES ('586', 'gogousa', '1380173773', '116.26.23.135');
INSERT INTO `admin_log` VALUES ('587', 'gogousa', '1380179289', '113.107.222.154');
INSERT INTO `admin_log` VALUES ('588', 'gogousa', '1380179957', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('589', 'gogousa', '1380180191', '116.26.23.135');
INSERT INTO `admin_log` VALUES ('590', 'gogousa', '1380186988', '150.255.185.33');
INSERT INTO `admin_log` VALUES ('591', 'gogousa', '1380190508', '116.26.23.135');
INSERT INTO `admin_log` VALUES ('592', 'gogousa', '1380351701', '116.26.23.184');
INSERT INTO `admin_log` VALUES ('593', 'gogousa', '1380524957', '116.26.20.8');
INSERT INTO `admin_log` VALUES ('594', 'gogousa', '1380809380', '106.120.178.6');
INSERT INTO `admin_log` VALUES ('595', 'gogousa', '1381220470', '113.107.222.2');
INSERT INTO `admin_log` VALUES ('596', 'gogousa', '1381280726', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('597', 'gogousa', '1381282340', '59.35.103.157');
INSERT INTO `admin_log` VALUES ('598', 'gogousa', '1381283884', '150.255.173.167');
INSERT INTO `admin_log` VALUES ('599', 'gogousa', '1381285736', '59.35.103.157');
INSERT INTO `admin_log` VALUES ('600', 'gogousa', '1381292410', '59.35.103.157');
INSERT INTO `admin_log` VALUES ('601', 'gogousa', '1381301802', '120.197.131.2');
INSERT INTO `admin_log` VALUES ('602', 'gogousa', '1381301898', '59.35.103.157');
INSERT INTO `admin_log` VALUES ('603', 'gogousa', '1381371334', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('604', 'gogousa', '1381374078', '120.197.131.21');
INSERT INTO `admin_log` VALUES ('605', 'gogousa', '1381374148', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('606', 'gogousa', '1381374922', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('607', 'gogousa', '1381397593', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('608', 'gogousa', '1381398041', '120.197.131.21');
INSERT INTO `admin_log` VALUES ('609', 'gogousa', '1381398806', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('610', 'gogousa', '1381401285', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('611', 'gogousa', '1381405564', '120.197.131.21');
INSERT INTO `admin_log` VALUES ('612', 'gogousa', '1381405748', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('613', 'gogousa', '1381409985', '223.203.188.165');
INSERT INTO `admin_log` VALUES ('614', 'gogousa', '1381416773', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('615', 'gogousa', '1381417254', '121.11.44.168');
INSERT INTO `admin_log` VALUES ('616', 'gogousa', '1381418963', '120.197.131.18');
INSERT INTO `admin_log` VALUES ('617', 'gogousa', '1381455990', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('618', 'gogousa', '1381472265', '119.147.101.178');
INSERT INTO `admin_log` VALUES ('619', 'gogousa', '1381474258', '123.114.107.58');
INSERT INTO `admin_log` VALUES ('620', 'gogousa', '1381478710', '150.255.173.167');
INSERT INTO `admin_log` VALUES ('621', 'gogousa', '1381480936', '123.114.107.58');
INSERT INTO `admin_log` VALUES ('622', 'gogousa', '1381498141', '222.73.22.186');
INSERT INTO `admin_log` VALUES ('623', 'gogousa', '1381501234', '58.64.176.207');
INSERT INTO `admin_log` VALUES ('624', 'gogousa', '1381541463', '125.33.76.42');
INSERT INTO `admin_log` VALUES ('625', 'gogousa', '1381541491', '113.107.222.17');
INSERT INTO `admin_log` VALUES ('626', 'gogousa', '1381544982', '125.33.76.42');
INSERT INTO `admin_log` VALUES ('627', 'gogousa', '1381563767', '125.33.76.42');
INSERT INTO `admin_log` VALUES ('628', 'gogousa', '1381642668', '113.107.222.148');
INSERT INTO `admin_log` VALUES ('629', 'gogousa', '1381714065', '125.33.73.253');
INSERT INTO `admin_log` VALUES ('630', 'gogousa', '1381716292', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('631', 'gogousa', '1381723047', '59.35.101.47');
INSERT INTO `admin_log` VALUES ('632', 'gogousa', '1381725926', '59.35.101.47');
INSERT INTO `admin_log` VALUES ('633', 'gogousa', '1381734925', '59.35.101.47');
INSERT INTO `admin_log` VALUES ('634', 'gogousa', '1381737651', '125.33.73.253');
INSERT INTO `admin_log` VALUES ('635', 'gogousa', '1381746651', '150.255.173.167');
INSERT INTO `admin_log` VALUES ('636', 'gogousa', '1381800110', '125.33.87.148');
INSERT INTO `admin_log` VALUES ('637', 'gogousa', '1381802762', '121.11.45.125');
INSERT INTO `admin_log` VALUES ('638', 'gogousa', '1381803205', '121.11.45.125');
INSERT INTO `admin_log` VALUES ('639', 'gogousa', '1381806680', '120.197.131.22');
INSERT INTO `admin_log` VALUES ('640', 'gogousa', '1381823528', '125.33.87.148');
INSERT INTO `admin_log` VALUES ('641', 'gogousa', '1381891632', '123.114.98.114');
INSERT INTO `admin_log` VALUES ('642', 'gogousa', '1381911559', '123.114.98.114');
INSERT INTO `admin_log` VALUES ('643', 'gogousa', '1381973640', '125.33.90.142');
INSERT INTO `admin_log` VALUES ('644', 'gogousa', '1381976811', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('645', 'gogousa', '1381978080', '119.139.173.201');
INSERT INTO `admin_log` VALUES ('646', 'gogousa', '1381989350', '125.33.90.142');
INSERT INTO `admin_log` VALUES ('647', 'gogousa', '1381996662', '125.33.90.142');
INSERT INTO `admin_log` VALUES ('648', 'gogousa', '1382059418', '218.64.17.180');
INSERT INTO `admin_log` VALUES ('649', 'gogousa', '1382060356', '125.33.93.217');
INSERT INTO `admin_log` VALUES ('650', 'gogousa', '1382061986', '119.139.175.60');
INSERT INTO `admin_log` VALUES ('651', 'gogousa', '1382062353', '183.46.9.116');
INSERT INTO `admin_log` VALUES ('652', 'gogousa', '1382062828', '125.33.93.217');
INSERT INTO `admin_log` VALUES ('653', 'gogousa', '1382063034', '119.139.175.60');
INSERT INTO `admin_log` VALUES ('654', 'gogousa', '1382075806', '125.33.93.217');
INSERT INTO `admin_log` VALUES ('655', 'gogousa', '1382075960', '218.64.17.180');
INSERT INTO `admin_log` VALUES ('656', 'gogousa', '1382083573', '218.64.17.180');
INSERT INTO `admin_log` VALUES ('657', 'gogousa', '1382090034', '218.64.17.177');
INSERT INTO `admin_log` VALUES ('658', 'gogousa', '1382248886', '218.64.17.180');
INSERT INTO `admin_log` VALUES ('659', 'gogousa', '1382257905', '218.64.17.180');
INSERT INTO `admin_log` VALUES ('660', 'gogousa', '1382261239', '116.26.29.224');
INSERT INTO `admin_log` VALUES ('661', 'gogousa', '1382319342', '125.33.87.201');
INSERT INTO `admin_log` VALUES ('662', 'gogousa', '1382328412', '121.11.46.43');
INSERT INTO `admin_log` VALUES ('663', 'gogousa', '1382332630', '125.33.87.201');
INSERT INTO `admin_log` VALUES ('664', 'gogousa', '1382337017', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('665', 'gogousa', '1382338318', '183.60.103.220');
INSERT INTO `admin_log` VALUES ('666', 'gogousa', '1382342117', '121.11.46.43');
INSERT INTO `admin_log` VALUES ('667', 'gogousa', '1382342132', '121.11.46.43');
INSERT INTO `admin_log` VALUES ('668', 'gogousa', '1382342146', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('669', 'gogousa', '1382409950', '125.33.74.43');
INSERT INTO `admin_log` VALUES ('670', 'gogousa', '1382410317', '183.60.103.210');
INSERT INTO `admin_log` VALUES ('671', 'gogousa', '1382422248', '125.33.74.43');
INSERT INTO `admin_log` VALUES ('672', 'gogousa', '1382423361', '125.33.74.43');
INSERT INTO `admin_log` VALUES ('673', 'gogousa', '1382423681', '150.255.173.167');
INSERT INTO `admin_log` VALUES ('674', 'gogousa', '1382429880', '183.60.103.210');
INSERT INTO `admin_log` VALUES ('675', 'gogousa', '1382434405', '183.60.103.210');
INSERT INTO `admin_log` VALUES ('676', 'gogousa', '1382488826', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('677', 'gogousa', '1382493660', '123.114.96.110');
INSERT INTO `admin_log` VALUES ('678', 'gogousa', '1382497860', '150.255.187.44');
INSERT INTO `admin_log` VALUES ('679', 'gogousa', '1382497977', '150.255.187.44');
INSERT INTO `admin_log` VALUES ('680', 'gogousa', '1382498134', '123.114.96.110');
INSERT INTO `admin_log` VALUES ('681', 'gogousa', '1382498297', '150.255.187.44');
INSERT INTO `admin_log` VALUES ('682', 'gogousa', '1382498410', '123.114.96.110');
INSERT INTO `admin_log` VALUES ('683', 'gogousa', '1382498813', '123.114.96.110');
INSERT INTO `admin_log` VALUES ('684', 'gogousa', '1382509029', '123.114.96.110');
INSERT INTO `admin_log` VALUES ('685', 'gogousa', '1382580343', '123.114.102.157');
INSERT INTO `admin_log` VALUES ('686', 'gogousa', '1382669903', '123.114.109.189');
INSERT INTO `admin_log` VALUES ('687', 'gogousa', '1382781955', '116.26.25.45');
INSERT INTO `admin_log` VALUES ('688', 'gogousa', '1382849117', '116.26.28.7');
INSERT INTO `admin_log` VALUES ('689', 'gogousa', '1382948326', '183.46.12.190');
INSERT INTO `admin_log` VALUES ('690', 'gogousa', '1383003739', '129.8.217.85');
INSERT INTO `admin_log` VALUES ('691', 'gogousa', '1383030261', '116.26.20.244');
INSERT INTO `admin_log` VALUES ('692', 'gogousa', '1383033976', '116.26.20.244');
INSERT INTO `admin_log` VALUES ('693', 'gogousa', '1383042523', '116.26.20.244');
INSERT INTO `admin_log` VALUES ('694', 'gogousa', '1383058808', '116.26.20.244');
INSERT INTO `admin_log` VALUES ('695', 'gogousa', '1383117233', '59.35.100.176');
INSERT INTO `admin_log` VALUES ('696', 'gogousa', '1383143502', '59.35.100.176');
INSERT INTO `admin_log` VALUES ('697', 'gogousa', '1383182322', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('698', 'gogousa', '1383190913', '183.46.15.138');
INSERT INTO `admin_log` VALUES ('699', 'gogousa', '1383191644', '150.255.189.22');
INSERT INTO `admin_log` VALUES ('700', 'gogousa', '1383204894', '183.46.15.138');
INSERT INTO `admin_log` VALUES ('701', 'gogousa', '1383227188', '150.255.189.22');
INSERT INTO `admin_log` VALUES ('702', 'gogousa', '1383227810', '120.197.131.34');
INSERT INTO `admin_log` VALUES ('703', 'gogousa', '1383228020', '183.46.15.138');
INSERT INTO `admin_log` VALUES ('704', 'gogousa', '1383245694', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('705', 'gogousa', '1383264182', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('706', 'gogousa', '1383270240', '123.114.101.218');
INSERT INTO `admin_log` VALUES ('707', 'gogousa', '1383274169', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('708', 'gogousa', '1383276817', '118.186.148.153');
INSERT INTO `admin_log` VALUES ('709', 'gogousa', '1383277023', '183.46.15.138');
INSERT INTO `admin_log` VALUES ('710', 'gogousa', '1383279145', '150.255.189.22');
INSERT INTO `admin_log` VALUES ('711', 'gogousa', '1383286938', '123.114.101.218');
INSERT INTO `admin_log` VALUES ('712', 'gogousa', '1383291923', '183.46.15.138');
INSERT INTO `admin_log` VALUES ('713', 'gogousa', '1383298877', '183.46.15.138');
INSERT INTO `admin_log` VALUES ('714', 'gogousa', '1383332817', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('715', 'gogousa', '1383451452', '116.26.25.130');
INSERT INTO `admin_log` VALUES ('716', 'gogousa', '1383487910', '116.26.25.130');
INSERT INTO `admin_log` VALUES ('717', 'gogousa', '1383489726', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('718', 'gogousa', '1383529301', '123.123.99.72');
INSERT INTO `admin_log` VALUES ('719', 'gogousa', '1383530323', '119.139.172.155');
INSERT INTO `admin_log` VALUES ('720', 'gogousa', '1383531742', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('721', 'gogousa', '1383533567', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('722', 'gogousa', '1383541537', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('723', 'gogousa', '1383545570', '123.123.99.72');
INSERT INTO `admin_log` VALUES ('724', 'gogousa', '1383547315', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('725', 'gogousa', '1383552571', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('726', 'gogousa', '1383559947', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('727', 'gogousa', '1383566690', '183.46.9.84');
INSERT INTO `admin_log` VALUES ('728', 'gogousa', '1383615953', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('729', 'gogousa', '1383616481', '125.33.90.88');
INSERT INTO `admin_log` VALUES ('730', 'gogousa', '1383630051', '125.33.90.88');
INSERT INTO `admin_log` VALUES ('731', 'gogousa', '1383634882', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('732', 'gogousa', '1383639348', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('733', 'gogousa', '1383645382', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('734', 'gogousa', '1383651712', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('735', 'gogousa', '1383653918', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('736', 'gogousa', '1383663096', '183.46.14.166');
INSERT INTO `admin_log` VALUES ('737', 'gogousa', '1383668428', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('738', 'gogousa', '1383699937', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('739', 'gogousa', '1383703175', '123.114.110.96');
INSERT INTO `admin_log` VALUES ('740', 'gogousa', '1383704175', '183.46.9.48');
INSERT INTO `admin_log` VALUES ('741', 'gogousa', '1383719356', '183.46.9.48');
INSERT INTO `admin_log` VALUES ('742', 'gogousa', '1383719719', '123.114.110.96');
INSERT INTO `admin_log` VALUES ('743', 'gogousa', '1383721053', '150.255.189.22');
INSERT INTO `admin_log` VALUES ('744', 'gogousa', '1383721064', '150.255.189.22');
INSERT INTO `admin_log` VALUES ('745', 'gogousa', '1383721183', '113.88.152.235');
INSERT INTO `admin_log` VALUES ('746', 'gogousa', '1383722725', '183.46.9.48');
INSERT INTO `admin_log` VALUES ('747', 'gogousa', '1383737577', '183.46.9.48');
INSERT INTO `admin_log` VALUES ('748', 'gogousa', '1383741472', '183.46.9.48');
INSERT INTO `admin_log` VALUES ('749', 'gogousa', '1383785461', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('750', 'gogousa', '1383787623', '116.26.22.19');
INSERT INTO `admin_log` VALUES ('751', 'gogousa', '1383788825', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('752', 'gogousa', '1383790807', '123.123.98.44');
INSERT INTO `admin_log` VALUES ('753', 'gogousa', '1383793795', '116.26.22.19');
INSERT INTO `admin_log` VALUES ('754', 'gogousa', '1383795185', '123.123.98.44');
INSERT INTO `admin_log` VALUES ('755', 'gogousa', '1383804685', '123.123.98.44');
INSERT INTO `admin_log` VALUES ('756', 'gogousa', '1383833587', '116.26.22.19');
INSERT INTO `admin_log` VALUES ('757', 'gogousa', '1383837107', '71.188.83.221');
INSERT INTO `admin_log` VALUES ('758', 'gogousa', '1384068743', '116.26.26.169');
INSERT INTO `admin_log` VALUES ('759', 'gogousa', '1384069173', '116.26.26.169');
INSERT INTO `admin_log` VALUES ('760', 'gogousa', '1384152712', '116.26.22.78');
INSERT INTO `admin_log` VALUES ('761', 'gogousa', '1384171711', '116.26.22.78');
INSERT INTO `admin_log` VALUES ('762', 'gogousa', '1384175074', '123.150.160.198');
INSERT INTO `admin_log` VALUES ('763', 'gogousa', '1384225747', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('764', 'gogousa', '1384226533', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('765', 'gogousa', '1384322755', '125.33.92.248');
INSERT INTO `admin_log` VALUES ('766', 'gogousa', '1384323061', '60.55.43.244');
INSERT INTO `admin_log` VALUES ('767', 'gogousa', '1384355461', '183.11.96.89');
INSERT INTO `admin_log` VALUES ('768', 'gogousa', '1384391408', '183.57.78.10');
INSERT INTO `admin_log` VALUES ('769', 'gogousa', '1384392086', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('770', 'gogousa', '1384477947', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('771', 'gogousa', '1384486532', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('772', 'gogousa', '1384490721', '124.66.14.150');
INSERT INTO `admin_log` VALUES ('773', 'gogousa', '1384495415', '124.207.131.130');
INSERT INTO `admin_log` VALUES ('774', 'gogousa', '1384748321', '116.26.21.151');
INSERT INTO `admin_log` VALUES ('775', 'gogousa', '1384908819', '129.8.217.204');
INSERT INTO `admin_log` VALUES ('776', 'gogousa', '1384909618', '129.8.217.204');
INSERT INTO `admin_log` VALUES ('777', 'gogousa', '1384914786', '123.114.96.91');
INSERT INTO `admin_log` VALUES ('778', 'gogousa', '1384937603', '59.35.101.232');
INSERT INTO `admin_log` VALUES ('779', 'gogousa', '1384958856', '59.35.101.232');
INSERT INTO `admin_log` VALUES ('780', 'gogousa', '1385018365', '121.11.45.229');
INSERT INTO `admin_log` VALUES ('781', 'gogousa', '1385031371', '121.11.45.229');
INSERT INTO `admin_log` VALUES ('782', 'gogousa', '1385035603', '121.11.45.229');
INSERT INTO `admin_log` VALUES ('783', 'gogousa', '1385038758', '121.11.45.229');
INSERT INTO `admin_log` VALUES ('784', 'gogousa', '1385046115', '121.11.45.229');
INSERT INTO `admin_log` VALUES ('785', 'gogousa', '1385090418', '116.26.22.179');
INSERT INTO `admin_log` VALUES ('786', 'gogousa', '1385374977', '183.46.9.88');
INSERT INTO `admin_log` VALUES ('787', 'gogousa', '1385378812', '183.46.9.88');
INSERT INTO `admin_log` VALUES ('788', 'gogousa', '1385383496', '49.5.1.24');
INSERT INTO `admin_log` VALUES ('789', 'gogousa', '1385390520', '219.150.71.0');
INSERT INTO `admin_log` VALUES ('790', 'gogousa', '1385394957', '27.255.76.226');
INSERT INTO `admin_log` VALUES ('791', 'gogousa', '1385439841', '124.66.39.3');
INSERT INTO `admin_log` VALUES ('792', 'gogousa', '1385447527', '124.66.39.3');
INSERT INTO `admin_log` VALUES ('793', 'gogousa', '1385449629', '116.26.20.126');
INSERT INTO `admin_log` VALUES ('794', 'gogousa', '1385613456', '14.155.210.116');
INSERT INTO `admin_log` VALUES ('795', 'gogousa', '1385831031', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('796', 'gogousa', '1385929664', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('797', 'gogousa', '1385948207', '123.114.98.109');
INSERT INTO `admin_log` VALUES ('798', 'gogousa', '1385948980', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('799', 'gogousa', '1385951006', '150.255.241.247');
INSERT INTO `admin_log` VALUES ('800', 'gogousa', '1385951912', '123.114.98.109');
INSERT INTO `admin_log` VALUES ('801', 'gogousa', '1386291581', '220.152.233.227');
INSERT INTO `admin_log` VALUES ('802', 'gogousa', '1386298447', '123.114.102.60');
INSERT INTO `admin_log` VALUES ('803', 'gogousa', '1386298619', '123.114.102.60');
INSERT INTO `admin_log` VALUES ('804', 'gogousa', '1386298670', '123.114.102.60');
INSERT INTO `admin_log` VALUES ('805', 'gogousa', '1386299233', '116.26.23.130');
INSERT INTO `admin_log` VALUES ('806', 'gogousa', '1386301330', '14.18.242.179');
INSERT INTO `admin_log` VALUES ('807', 'gogousa', '1386309468', '123.114.102.60');
INSERT INTO `admin_log` VALUES ('808', 'gogousa', '1386311868', '150.255.241.247');
INSERT INTO `admin_log` VALUES ('809', 'gogousa', '1386312917', '113.90.96.51');
INSERT INTO `admin_log` VALUES ('810', 'gogousa', '1386316455', '123.114.102.60');
INSERT INTO `admin_log` VALUES ('811', 'gogousa', '1386317426', '123.114.102.60');
INSERT INTO `admin_log` VALUES ('812', 'gogousa', '1386338705', '118.186.156.237');
INSERT INTO `admin_log` VALUES ('813', 'gogousa', '1386811692', '123.114.100.76');
INSERT INTO `admin_log` VALUES ('814', 'gogousa', '1386920074', '117.25.182.131');
INSERT INTO `admin_log` VALUES ('815', 'gogousa', '1386920287', '113.116.204.105');
INSERT INTO `admin_log` VALUES ('816', 'gogousa', '1387157673', '123.114.96.200');
INSERT INTO `admin_log` VALUES ('817', 'gogousa', '1387161530', '123.114.96.200');
INSERT INTO `admin_log` VALUES ('818', 'gogousa', '1387162057', '117.25.182.131');
INSERT INTO `admin_log` VALUES ('819', 'gogousa', '1387243133', '123.114.108.147');
INSERT INTO `admin_log` VALUES ('820', 'gogousa', '1387330449', '125.33.78.219');
INSERT INTO `admin_log` VALUES ('821', 'gogousa', '1387345992', '125.33.78.219');
INSERT INTO `admin_log` VALUES ('822', 'gogousa', '1387348966', '14.155.208.41');
INSERT INTO `admin_log` VALUES ('823', 'gogousa', '1387349003', '117.25.182.131');
INSERT INTO `admin_log` VALUES ('824', 'gogousa', '1387358187', '14.155.208.41');
INSERT INTO `admin_log` VALUES ('825', 'gogousa', '1387417496', '123.123.98.228');
INSERT INTO `admin_log` VALUES ('826', 'gogousa', '1387425299', '113.58.230.29');
INSERT INTO `admin_log` VALUES ('827', 'gogousa', '1387437521', '123.123.98.228');
INSERT INTO `admin_log` VALUES ('828', 'gogousa', '1387458324', '121.11.45.250');
INSERT INTO `admin_log` VALUES ('829', 'gogousa', '1387460531', '123.150.160.192');
INSERT INTO `admin_log` VALUES ('830', 'gogousa', '1387503487', '125.33.72.73');
INSERT INTO `admin_log` VALUES ('831', 'gogousa', '1387523225', '117.25.182.131');
INSERT INTO `admin_log` VALUES ('832', 'gogousa', '1387529462', '113.90.98.42');
INSERT INTO `admin_log` VALUES ('833', 'gogousa', '1387547078', '110.86.70.101');
INSERT INTO `admin_log` VALUES ('834', 'gogousa', '1387763818', '123.114.100.101');
INSERT INTO `admin_log` VALUES ('835', 'gogousa', '1387780712', '153.0.53.73');
INSERT INTO `admin_log` VALUES ('836', 'gogousa', '1387780755', '123.114.100.101');
INSERT INTO `admin_log` VALUES ('837', 'gogousa', '1387781607', '14.155.210.98');
INSERT INTO `admin_log` VALUES ('838', 'gogousa', '1387786761', '14.155.210.98');
INSERT INTO `admin_log` VALUES ('839', 'gogousa', '1387867811', '70.102.71.42');
INSERT INTO `admin_log` VALUES ('840', 'gogousa', '1387950877', '123.123.101.55');
INSERT INTO `admin_log` VALUES ('841', 'gogousa', '1387951713', '14.155.209.31');
INSERT INTO `admin_log` VALUES ('842', 'gogousa', '1388021751', '123.114.110.220');
INSERT INTO `admin_log` VALUES ('843', 'gogousa', '1388026580', '123.114.110.220');
INSERT INTO `admin_log` VALUES ('844', 'gogousa', '1388032488', '118.186.156.244');
INSERT INTO `admin_log` VALUES ('845', 'gogousa', '1388044143', '123.114.108.34');
INSERT INTO `admin_log` VALUES ('846', 'gogousa', '1388111352', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('847', 'gogousa', '1388111746', '125.33.82.212');
INSERT INTO `admin_log` VALUES ('848', 'gogousa', '1388112040', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('849', 'gogousa', '1388113337', '125.33.82.212');
INSERT INTO `admin_log` VALUES ('850', 'gogousa', '1388113983', '150.255.187.65');
INSERT INTO `admin_log` VALUES ('851', 'gogousa', '1388126723', '125.33.82.212');
INSERT INTO `admin_log` VALUES ('852', 'gogousa', '1388147557', '113.90.75.218');
INSERT INTO `admin_log` VALUES ('853', 'gogousa', '1388281302', '123.150.160.196');
INSERT INTO `admin_log` VALUES ('854', 'gogousa', '1388384159', '125.33.78.77');
INSERT INTO `admin_log` VALUES ('855', 'gogousa', '1388386948', '125.33.78.77');
INSERT INTO `admin_log` VALUES ('856', 'gogousa', '1388470005', '125.33.86.228');
INSERT INTO `admin_log` VALUES ('857', 'gogousa', '1388488834', '121.11.44.133');
INSERT INTO `admin_log` VALUES ('858', 'gogousa', '1388489112', '125.33.94.146');
INSERT INTO `admin_log` VALUES ('859', 'gogousa', '1388628783', '125.33.95.9');
INSERT INTO `admin_log` VALUES ('860', 'gogousa', '1388646411', '125.33.95.9');
INSERT INTO `admin_log` VALUES ('861', 'gogousa', '1388657484', '116.26.26.199');
INSERT INTO `admin_log` VALUES ('862', 'gogousa', '1388849480', '49.5.1.28');
INSERT INTO `admin_log` VALUES ('863', 'gogousa', '1388881259', '49.5.1.28');
INSERT INTO `admin_log` VALUES ('864', 'gogousa', '1388890257', '118.186.156.236');
INSERT INTO `admin_log` VALUES ('865', 'gogousa', '1388893550', '24.45.10.62');
INSERT INTO `admin_log` VALUES ('866', 'gogousa', '1388931389', '59.35.101.69');
INSERT INTO `admin_log` VALUES ('867', 'gogousa', '1388986362', '123.123.99.67');
INSERT INTO `admin_log` VALUES ('868', 'gogousa', '1388989908', '116.26.23.90');
INSERT INTO `admin_log` VALUES ('869', 'gogousa', '1388994852', '123.123.99.67');
INSERT INTO `admin_log` VALUES ('870', 'gogousa', '1388995200', '116.26.23.90');
INSERT INTO `admin_log` VALUES ('871', 'gogousa', '1388997297', '116.26.23.90');
INSERT INTO `admin_log` VALUES ('872', 'gogousa', '1388998738', '150.255.105.32');
INSERT INTO `admin_log` VALUES ('873', 'gogousa', '1389024784', '150.255.105.32');
INSERT INTO `admin_log` VALUES ('874', 'gogousa', '1389059059', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('875', 'gogousa', '1389059984', '59.35.103.77');
INSERT INTO `admin_log` VALUES ('876', 'gogousa', '1389061183', '59.35.103.77');
INSERT INTO `admin_log` VALUES ('877', 'gogousa', '1389062208', '59.35.103.77');
INSERT INTO `admin_log` VALUES ('878', 'gogousa', '1389065878', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('879', 'gogousa', '1389066183', '123.123.103.196');
INSERT INTO `admin_log` VALUES ('880', 'gogousa', '1389066527', '113.88.234.73');
INSERT INTO `admin_log` VALUES ('881', 'gogousa', '1389066647', '150.255.105.32');
INSERT INTO `admin_log` VALUES ('882', 'gogousa', '1389067217', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('883', 'gogousa', '1389068552', '113.88.234.73');
INSERT INTO `admin_log` VALUES ('884', 'gogousa', '1389077767', '123.123.103.196');
INSERT INTO `admin_log` VALUES ('885', 'gogousa', '1389079573', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('886', 'gogousa', '1389160232', '123.123.100.195');
INSERT INTO `admin_log` VALUES ('887', 'gogousa', '1389160339', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('888', 'gogousa', '1389161302', '150.255.105.32');
INSERT INTO `admin_log` VALUES ('889', 'gogousa', '1389161901', '113.91.189.31');
INSERT INTO `admin_log` VALUES ('890', 'gogousa', '1389163081', '116.26.23.239');
INSERT INTO `admin_log` VALUES ('891', 'gogousa', '1389163365', '123.123.100.195');
INSERT INTO `admin_log` VALUES ('892', 'gogousa', '1389167683', '150.255.105.32');
INSERT INTO `admin_log` VALUES ('893', 'gogousa', '1389169235', '116.26.23.239');
INSERT INTO `admin_log` VALUES ('894', 'gogousa', '1389184249', '116.26.23.239');
INSERT INTO `admin_log` VALUES ('895', 'gogousa', '1389231629', '123.114.110.128');
INSERT INTO `admin_log` VALUES ('896', 'gogousa', '1389235313', '183.46.15.251');
INSERT INTO `admin_log` VALUES ('897', 'gogousa', '1389238652', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('898', 'gogousa', '1389243867', '183.46.15.251');
INSERT INTO `admin_log` VALUES ('899', 'gogousa', '1389246914', '123.114.110.128');
INSERT INTO `admin_log` VALUES ('900', 'gogousa', '1389255311', '111.199.20.215');
INSERT INTO `admin_log` VALUES ('901', 'gogousa', '1389270453', '183.46.15.251');
INSERT INTO `admin_log` VALUES ('902', 'gogousa', '1389319288', '125.33.82.223');
INSERT INTO `admin_log` VALUES ('903', 'gogousa', '1389322177', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('904', 'gogousa', '1389338419', '183.46.14.132');
INSERT INTO `admin_log` VALUES ('905', 'gogousa', '1389339130', '125.33.82.223');
INSERT INTO `admin_log` VALUES ('906', 'gogousa', '1389381548', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('907', 'gogousa', '1389405640', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('908', 'gogousa', '1389419751', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('909', 'gogousa', '1389576026', '123.123.98.35');
INSERT INTO `admin_log` VALUES ('910', 'gogousa', '1389594995', '123.123.98.35');
INSERT INTO `admin_log` VALUES ('911', 'gogousa', '1389601550', '116.26.27.171');
INSERT INTO `admin_log` VALUES ('912', 'gogousa', '1389602132', '116.26.27.171');
INSERT INTO `admin_log` VALUES ('913', 'gogousa', '1389604334', '123.123.98.35');
INSERT INTO `admin_log` VALUES ('914', 'gogousa', '1389693896', '116.19.142.91');
INSERT INTO `admin_log` VALUES ('915', 'gogousa', '1389749649', '123.114.100.47');
INSERT INTO `admin_log` VALUES ('916', 'gogousa', '1389755167', '119.121.144.97');
INSERT INTO `admin_log` VALUES ('917', 'gogousa', '1389771955', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('918', 'gogousa', '1389835588', '123.123.100.176');
INSERT INTO `admin_log` VALUES ('919', 'gogousa', '1389845804', '150.255.112.203');
INSERT INTO `admin_log` VALUES ('920', 'gogousa', '1389852183', '123.123.100.176');
INSERT INTO `admin_log` VALUES ('921', 'gogousa', '1389867174', '116.26.29.23');
INSERT INTO `admin_log` VALUES ('922', 'gogousa', '1389892387', '116.26.29.23');
INSERT INTO `admin_log` VALUES ('923', 'gogousa', '1390004066', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('924', 'gogousa', '1390009564', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('925', 'gogousa', '1390012595', '150.255.112.203');
INSERT INTO `admin_log` VALUES ('926', 'gogousa', '1390021509', '113.116.20.164');
INSERT INTO `admin_log` VALUES ('927', 'gogousa', '1390024389', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('928', 'gogousa', '1390038623', '113.116.20.164');
INSERT INTO `admin_log` VALUES ('929', 'gogousa', '1390044442', '118.186.156.251');
INSERT INTO `admin_log` VALUES ('930', 'gogousa', '1390056164', '150.255.112.203');
INSERT INTO `admin_log` VALUES ('931', 'gogousa', '1390058996', '113.116.20.164');
INSERT INTO `admin_log` VALUES ('932', 'gogousa', '1390059650', '118.186.156.236');
INSERT INTO `admin_log` VALUES ('933', 'gogousa', '1390060855', '150.255.112.203');
INSERT INTO `admin_log` VALUES ('934', 'gogousa', '1390061305', '113.116.20.164');
INSERT INTO `admin_log` VALUES ('935', 'gogousa', '1390089685', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('936', 'gogousa', '1390089943', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('937', 'gogousa', '1390092722', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('938', 'gogousa', '1390099014', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('939', 'gogousa', '1390128439', '119.121.144.239');
INSERT INTO `admin_log` VALUES ('940', 'gogousa', '1390170554', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('941', 'gogousa', '1390183177', '121.11.44.213');
INSERT INTO `admin_log` VALUES ('942', 'gogousa', '1390192710', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('943', 'gogousa', '1390203062', '121.11.44.213');
INSERT INTO `admin_log` VALUES ('944', 'gogousa', '1390204325', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('945', 'gogousa', '1390204628', '42.232.43.24');
INSERT INTO `admin_log` VALUES ('946', 'gogousa', '1390204691', '121.11.44.213');
INSERT INTO `admin_log` VALUES ('947', 'gogousa', '1390207080', '42.232.43.24');
INSERT INTO `admin_log` VALUES ('948', 'gogousa', '1390207360', '183.14.11.45');
INSERT INTO `admin_log` VALUES ('949', 'gogousa', '1390217834', '121.11.44.213');
INSERT INTO `admin_log` VALUES ('950', 'gogousa', '1390265691', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('951', 'gogousa', '1390268371', '116.26.29.43');
INSERT INTO `admin_log` VALUES ('952', 'gogousa', '1390268433', '123.114.97.168');
INSERT INTO `admin_log` VALUES ('953', 'gogousa', '1390281388', '123.114.97.168');
INSERT INTO `admin_log` VALUES ('954', 'gogousa', '1390282773', '123.114.97.168');
INSERT INTO `admin_log` VALUES ('955', 'gogousa', '1390286817', '123.114.97.168');
INSERT INTO `admin_log` VALUES ('956', 'gogousa', '1390304477', '116.26.29.43');
INSERT INTO `admin_log` VALUES ('957', 'gogousa', '1390353234', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('958', 'gogousa', '1390353418', '113.91.188.57');
INSERT INTO `admin_log` VALUES ('959', 'gogousa', '1390353981', '116.26.24.48');
INSERT INTO `admin_log` VALUES ('960', 'gogousa', '1390354380', '116.26.24.48');
INSERT INTO `admin_log` VALUES ('961', 'gogousa', '1390355651', '125.33.86.87');
INSERT INTO `admin_log` VALUES ('962', 'gogousa', '1390361898', '118.186.156.236');
INSERT INTO `admin_log` VALUES ('963', 'gogousa', '1390361988', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('964', 'gogousa', '1390370401', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('965', 'gogousa', '1390374070', '125.33.86.87');
INSERT INTO `admin_log` VALUES ('966', 'gogousa', '1390374707', '116.26.24.48');
INSERT INTO `admin_log` VALUES ('967', 'gogousa', '1390379736', '125.33.86.87');
INSERT INTO `admin_log` VALUES ('968', 'gogousa', '1390396437', '116.26.24.48');
INSERT INTO `admin_log` VALUES ('969', 'gogousa', '1390422903', '129.8.217.169');
INSERT INTO `admin_log` VALUES ('970', 'gogousa', '1390440130', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('971', 'gogousa', '1390441329', '125.33.79.103');
INSERT INTO `admin_log` VALUES ('972', 'gogousa', '1390460682', '116.19.141.27');
INSERT INTO `admin_log` VALUES ('973', 'gogousa', '1390527487', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('974', 'gogousa', '1390528323', '123.114.97.50');
INSERT INTO `admin_log` VALUES ('975', 'gogousa', '1390537173', '49.5.1.24');
INSERT INTO `admin_log` VALUES ('976', 'gogousa', '1390541206', '123.114.97.50');
INSERT INTO `admin_log` VALUES ('977', 'gogousa', '1390559493', '116.26.28.175');
INSERT INTO `admin_log` VALUES ('978', 'gogousa', '1390575273', '118.186.156.240');
INSERT INTO `admin_log` VALUES ('979', 'gogousa', '1390639785', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('980', 'gogousa', '1390696957', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('981', 'gogousa', '1390703358', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('982', 'gogousa', '1390706706', '125.33.72.46');
INSERT INTO `admin_log` VALUES ('983', 'gogousa', '1390711547', '121.11.46.79');
INSERT INTO `admin_log` VALUES ('984', 'gogousa', '1390712715', '121.11.46.79');
INSERT INTO `admin_log` VALUES ('985', 'gogousa', '1390715695', '125.33.72.46');
INSERT INTO `admin_log` VALUES ('986', 'gogousa', '1390717167', '115.56.225.222');
INSERT INTO `admin_log` VALUES ('987', 'gogousa', '1390727078', '125.33.72.46');
INSERT INTO `admin_log` VALUES ('988', 'gogousa', '1390727361', '125.33.72.46');
INSERT INTO `admin_log` VALUES ('989', 'gogousa', '1390736568', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('990', 'gogousa', '1390785760', '125.33.83.165');
INSERT INTO `admin_log` VALUES ('991', 'gogousa', '1390790724', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('992', 'gogousa', '1390792178', '125.33.83.165');
INSERT INTO `admin_log` VALUES ('993', 'gogousa', '1390792660', '116.26.29.73');
INSERT INTO `admin_log` VALUES ('994', 'gogousa', '1390804027', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('995', 'gogousa', '1390811405', '116.26.29.73');
INSERT INTO `admin_log` VALUES ('996', 'gogousa', '1390879922', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('997', 'gogousa', '1390887454', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('998', 'gogousa', '1390890070', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('999', 'gogousa', '1390898956', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1000', 'gogousa', '1390903442', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1001', 'gogousa', '1390910317', '119.121.148.24');
INSERT INTO `admin_log` VALUES ('1002', 'gogousa', '1390910317', '119.121.148.24');
INSERT INTO `admin_log` VALUES ('1003', 'gogousa', '1390918183', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1004', 'gogousa', '1390958342', '114.253.95.11');
INSERT INTO `admin_log` VALUES ('1005', 'gogousa', '1391053970', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1006', 'gogousa', '1391089019', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1007', 'gogousa', '1391101255', '90.61.161.152');
INSERT INTO `admin_log` VALUES ('1008', 'gogousa', '1391323074', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1009', 'gogousa', '1391461138', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1010', 'gogousa', '1391744351', '116.26.26.160');
INSERT INTO `admin_log` VALUES ('1011', 'gogousa', '1391746119', '116.26.26.160');
INSERT INTO `admin_log` VALUES ('1012', 'gogousa', '1391763819', '116.26.26.160');
INSERT INTO `admin_log` VALUES ('1013', 'admin', '1391769576', '175.117.93.171');
INSERT INTO `admin_log` VALUES ('1014', 'admin', '1391771852', '112.205.162.41');
INSERT INTO `admin_log` VALUES ('1015', 'gogousa', '1391774491', '116.26.26.160');
INSERT INTO `admin_log` VALUES ('1016', 'gogousa', '1391774505', '116.26.26.160');
INSERT INTO `admin_log` VALUES ('1017', 'gogousa', '1391832266', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1018', 'gogousa', '1391845471', '121.11.44.209');
INSERT INTO `admin_log` VALUES ('1019', 'gogousa', '1391849918', '114.253.149.171');
INSERT INTO `admin_log` VALUES ('1020', 'gogousa', '1391863674', '121.11.44.209');
INSERT INTO `admin_log` VALUES ('1021', 'gogousa', '1391876483', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1022', 'gogousa', '1391935025', '116.26.30.73');
INSERT INTO `admin_log` VALUES ('1023', 'gogousa', '1391996274', '125.33.76.148');
INSERT INTO `admin_log` VALUES ('1024', 'gogousa', '1392081788', '123.123.96.11');
INSERT INTO `admin_log` VALUES ('1025', 'gogousa', '1392094813', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1026', 'gogousa', '1392095545', '116.26.31.137');
INSERT INTO `admin_log` VALUES ('1027', 'gogousa', '1392103377', '113.91.188.28');
INSERT INTO `admin_log` VALUES ('1028', 'gogousa', '1392105120', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1029', 'gogousa', '1392107028', '123.123.96.11');
INSERT INTO `admin_log` VALUES ('1030', 'gogousa', '1392150817', '129.8.217.41');
INSERT INTO `admin_log` VALUES ('1031', 'gogousa', '1392169137', '123.123.97.27');
INSERT INTO `admin_log` VALUES ('1032', 'gogousa', '1392181932', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1033', 'gogousa', '1392182763', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1034', 'gogousa', '1392182858', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1035', 'gogousa', '1392183158', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1036', 'gogousa', '1392193595', '183.46.8.51');
INSERT INTO `admin_log` VALUES ('1037', 'gogousa', '1392229086', '129.8.217.106');
INSERT INTO `admin_log` VALUES ('1038', 'gogousa', '1392254170', '123.114.99.105');
INSERT INTO `admin_log` VALUES ('1039', 'gogousa', '1392260169', '123.114.99.105');
INSERT INTO `admin_log` VALUES ('1040', 'gogousa', '1392269629', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1041', 'gogousa', '1392270880', '123.114.99.105');
INSERT INTO `admin_log` VALUES ('1042', 'gogousa', '1392297496', '118.186.156.239');
INSERT INTO `admin_log` VALUES ('1043', 'gogousa', '1392328865', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1044', 'gogousa', '1392340565', '123.123.101.179');
INSERT INTO `admin_log` VALUES ('1045', 'gogousa', '1392414888', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1046', 'gogousa', '1392445907', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1047', 'gogousa', '1392523192', '24.45.10.62');
INSERT INTO `admin_log` VALUES ('1048', 'gogousa', '1392526150', '119.121.146.172');
INSERT INTO `admin_log` VALUES ('1049', 'gogousa', '1392526578', '119.121.146.172');
INSERT INTO `admin_log` VALUES ('1050', 'gogousa', '1392529961', '24.45.10.62');
INSERT INTO `admin_log` VALUES ('1051', 'gogousa', '1392538762', '24.45.10.62');
INSERT INTO `admin_log` VALUES ('1052', 'gogousa', '1392601463', '123.123.100.10');
INSERT INTO `admin_log` VALUES ('1053', 'gogousa', '1392687560', '123.123.103.16');
INSERT INTO `admin_log` VALUES ('1054', 'gogousa', '1392689230', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1055', 'gogousa', '1392709102', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1056', 'gogousa', '1392722867', '121.11.44.18');
INSERT INTO `admin_log` VALUES ('1057', 'gogousa', '1392773407', '125.33.82.0');
INSERT INTO `admin_log` VALUES ('1058', 'gogousa', '1392777602', '116.26.25.210');
INSERT INTO `admin_log` VALUES ('1059', 'gogousa', '1392778982', '116.26.25.210');
INSERT INTO `admin_log` VALUES ('1060', 'gogousa', '1392779912', '116.26.25.210');
INSERT INTO `admin_log` VALUES ('1061', 'gogousa', '1392791370', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1062', 'gogousa', '1392837990', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1063', 'gogousa', '1392857234', '125.33.75.232');
INSERT INTO `admin_log` VALUES ('1064', 'gogousa', '1392877615', '125.33.75.232');
INSERT INTO `admin_log` VALUES ('1065', 'gogousa', '1392882984', '116.26.27.136');
INSERT INTO `admin_log` VALUES ('1066', 'gogousa', '1392906365', '116.26.27.136');
INSERT INTO `admin_log` VALUES ('1067', 'gogousa', '1392944890', '125.33.91.77');
INSERT INTO `admin_log` VALUES ('1068', 'gogousa', '1392950934', '125.33.91.77');
INSERT INTO `admin_log` VALUES ('1069', 'gogousa', '1392951547', '116.26.31.29');
INSERT INTO `admin_log` VALUES ('1070', 'gogousa', '1392973335', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1071', 'gogousa', '1393017731', '129.8.217.157');
INSERT INTO `admin_log` VALUES ('1072', 'gogousa', '1393020786', '129.8.217.157');
INSERT INTO `admin_log` VALUES ('1073', 'gogousa', '1393021594', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1074', 'gogousa', '1393049472', '119.121.145.48');
INSERT INTO `admin_log` VALUES ('1075', 'gogousa', '1393052695', '119.121.145.48');
INSERT INTO `admin_log` VALUES ('1076', 'gogousa', '1393052709', '119.121.145.48');
INSERT INTO `admin_log` VALUES ('1077', 'gogousa', '1393070111', '119.121.145.48');
INSERT INTO `admin_log` VALUES ('1078', 'gogousa', '1393077978', '119.121.145.48');
INSERT INTO `admin_log` VALUES ('1079', 'gogousa', '1393084552', '24.45.10.62');
INSERT INTO `admin_log` VALUES ('1080', 'gogousa', '1393130050', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1081', 'gogousa', '1393132120', '76.15.153.83');
INSERT INTO `admin_log` VALUES ('1082', 'gogousa', '1393135640', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1083', 'gogousa', '1393138699', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1084', 'gogousa', '1393155357', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1085', 'gogousa', '1393156269', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1086', 'gogousa', '1393160315', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1087', 'gogousa', '1393162718', '116.26.23.96');
INSERT INTO `admin_log` VALUES ('1088', 'gogousa', '1393207326', '123.114.100.49');
INSERT INTO `admin_log` VALUES ('1089', 'gogousa', '1393223632', '123.114.100.49');
INSERT INTO `admin_log` VALUES ('1090', 'gogousa', '1393248046', '116.26.25.242');
INSERT INTO `admin_log` VALUES ('1091', 'gogousa', '1393268344', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1092', 'gogousa', '1393270582', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1093', 'gogousa', '1393292145', '123.123.96.173');
INSERT INTO `admin_log` VALUES ('1094', 'gogousa', '1393297317', '118.186.15.223');
INSERT INTO `admin_log` VALUES ('1095', 'gogousa', '1393298277', '118.186.15.223');
INSERT INTO `admin_log` VALUES ('1096', 'gogousa', '1393322583', '183.46.9.70');
INSERT INTO `admin_log` VALUES ('1097', 'gogousa', '1393340602', '183.46.9.70');
INSERT INTO `admin_log` VALUES ('1098', 'gogousa', '1393342515', '183.46.9.70');
INSERT INTO `admin_log` VALUES ('1099', 'gogousa', '1393377629', '123.123.102.246');
INSERT INTO `admin_log` VALUES ('1100', 'gogousa', '1393395055', '123.123.102.246');
INSERT INTO `admin_log` VALUES ('1101', 'gogousa', '1393395347', '123.123.102.246');
INSERT INTO `admin_log` VALUES ('1102', 'gogousa', '1393422390', '150.255.114.60');
INSERT INTO `admin_log` VALUES ('1103', 'gogousa', '1393423444', '116.26.31.116');
INSERT INTO `admin_log` VALUES ('1104', 'gogousa', '1393429505', '59.109.104.43');
INSERT INTO `admin_log` VALUES ('1105', 'gogousa', '1393429603', '150.255.114.60');
INSERT INTO `admin_log` VALUES ('1106', 'gogousa', '1393442578', '129.8.217.43');
INSERT INTO `admin_log` VALUES ('1107', 'gogousa', '1393462601', '125.33.88.155');
INSERT INTO `admin_log` VALUES ('1108', 'gogousa', '1393467478', '183.46.11.121');
INSERT INTO `admin_log` VALUES ('1109', 'gogousa', '1393471843', '183.46.11.121');
INSERT INTO `admin_log` VALUES ('1110', 'gogousa', '1393482705', '183.46.11.121');
INSERT INTO `admin_log` VALUES ('1111', 'gogousa', '1393495152', '183.46.11.121');
INSERT INTO `admin_log` VALUES ('1112', 'gogousa', '1393500604', '183.46.11.121');
INSERT INTO `admin_log` VALUES ('1113', 'gogousa', '1393510186', '59.109.104.43');
INSERT INTO `admin_log` VALUES ('1114', 'gogousa', '1393510335', '59.109.104.43');
INSERT INTO `admin_log` VALUES ('1115', 'gogousa', '1393510419', '183.46.11.121');
INSERT INTO `admin_log` VALUES ('1116', 'gogousa', '1393549799', '123.114.107.182');
INSERT INTO `admin_log` VALUES ('1117', 'gogousa', '1393554678', '116.26.20.74');
INSERT INTO `admin_log` VALUES ('1118', 'gogousa', '1393559277', '116.26.20.74');
INSERT INTO `admin_log` VALUES ('1119', 'gogousa', '1393565295', '116.26.20.74');
INSERT INTO `admin_log` VALUES ('1120', 'gogousa', '1393580537', '124.64.100.193');
INSERT INTO `admin_log` VALUES ('1121', 'gogousa', '1393586467', '116.26.20.74');
INSERT INTO `admin_log` VALUES ('1122', 'gogousa', '1393595937', '61.149.242.80');
INSERT INTO `admin_log` VALUES ('1123', 'gogousa', '1393700040', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1124', 'gogousa', '1393701886', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1125', 'gogousa', '1393756072', '119.121.147.235');
INSERT INTO `admin_log` VALUES ('1126', 'gogousa', '1393809615', '123.123.98.130');
INSERT INTO `admin_log` VALUES ('1127', 'gogousa', '1393816839', '123.123.98.130');
INSERT INTO `admin_log` VALUES ('1128', 'gogousa', '1393827676', '121.11.44.19');
INSERT INTO `admin_log` VALUES ('1129', 'gogousa', '1393828108', '121.11.44.19');
INSERT INTO `admin_log` VALUES ('1130', 'gogousa', '1393833737', '121.11.44.19');
INSERT INTO `admin_log` VALUES ('1131', 'gogousa', '1393857879', '121.11.44.19');
INSERT INTO `admin_log` VALUES ('1132', 'gogousa', '1393876885', '129.8.217.223');
INSERT INTO `admin_log` VALUES ('1133', 'gogousa', '1393897756', '123.114.104.131');
INSERT INTO `admin_log` VALUES ('1134', 'gogousa', '1393943511', '59.35.101.236');
INSERT INTO `admin_log` VALUES ('1135', 'gogousa', '1393983897', '123.114.109.227');
INSERT INTO `admin_log` VALUES ('1136', 'gogousa', '1393999546', '123.114.109.227');
INSERT INTO `admin_log` VALUES ('1137', 'gogousa', '1394068827', '123.114.99.181');
INSERT INTO `admin_log` VALUES ('1138', 'gogousa', '1394074183', '123.118.80.249');
INSERT INTO `admin_log` VALUES ('1139', 'gogousa', '1394090736', '116.26.25.31');
INSERT INTO `admin_log` VALUES ('1140', 'gogousa', '1394110183', '114.244.155.184');
INSERT INTO `admin_log` VALUES ('1141', 'gogousa', '1394155331', '125.33.95.235');
INSERT INTO `admin_log` VALUES ('1142', 'gogousa', '1394169138', '116.26.25.31');
INSERT INTO `admin_log` VALUES ('1143', 'gogousa', '1394172174', '218.64.17.175');
INSERT INTO `admin_log` VALUES ('1144', 'gogousa', '1394172215', '218.64.17.175');
INSERT INTO `admin_log` VALUES ('1145', 'gogousa', '1394172254', '116.26.25.31');
INSERT INTO `admin_log` VALUES ('1146', 'gogousa', '1394172938', '125.33.95.235');
INSERT INTO `admin_log` VALUES ('1147', 'gogousa', '1394181681', '116.26.25.31');
INSERT INTO `admin_log` VALUES ('1148', 'gogousa', '1394182281', '218.64.17.179');
INSERT INTO `admin_log` VALUES ('1149', 'gogousa', '1394183325', '218.64.17.179');
INSERT INTO `admin_log` VALUES ('1150', 'gogousa', '1394240996', '218.64.17.175');
INSERT INTO `admin_log` VALUES ('1151', 'gogousa', '1394246824', '183.46.9.68');
INSERT INTO `admin_log` VALUES ('1152', 'gogousa', '1394247484', '183.46.9.68');
INSERT INTO `admin_log` VALUES ('1153', 'gogousa', '1394259134', '218.64.17.175');
INSERT INTO `admin_log` VALUES ('1154', 'gogousa', '1394266606', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1155', 'gogousa', '1394267552', '27.24.141.88');
INSERT INTO `admin_log` VALUES ('1156', 'gogousa', '1394272824', '218.64.17.171');
INSERT INTO `admin_log` VALUES ('1157', 'gogousa', '1394276837', '183.46.9.68');
INSERT INTO `admin_log` VALUES ('1158', 'gogousa', '1394280682', '183.46.9.68');
INSERT INTO `admin_log` VALUES ('1159', 'gogousa', '1394330863', '111.193.170.67');
INSERT INTO `admin_log` VALUES ('1160', 'gogousa', '1394344507', '183.46.9.68');
INSERT INTO `admin_log` VALUES ('1161', 'gogousa', '1394415040', '125.33.78.65');
INSERT INTO `admin_log` VALUES ('1162', 'gogousa', '1394473047', '61.49.120.46');
INSERT INTO `admin_log` VALUES ('1163', 'gogousa', '1394479447', '129.8.217.222');
INSERT INTO `admin_log` VALUES ('1164', 'gogousa', '1394500310', '123.114.107.35');
INSERT INTO `admin_log` VALUES ('1165', 'gogousa', '1394541434', '116.26.27.63');
INSERT INTO `admin_log` VALUES ('1166', 'gogousa', '1394547694', '116.26.27.63');
INSERT INTO `admin_log` VALUES ('1167', 'gogousa', '1394586639', '123.123.102.189');
INSERT INTO `admin_log` VALUES ('1168', 'gogousa', '1394673225', '123.114.105.119');
INSERT INTO `admin_log` VALUES ('1169', 'gogousa', '1394675144', '118.186.15.222');
INSERT INTO `admin_log` VALUES ('1170', 'gogousa', '1394686331', '123.114.105.119');
INSERT INTO `admin_log` VALUES ('1171', 'gogousa', '1394739742', '129.8.217.235');
INSERT INTO `admin_log` VALUES ('1172', 'gogousa', '1394760343', '125.33.91.206');
INSERT INTO `admin_log` VALUES ('1173', 'gogousa', '1394777000', '125.33.91.206');
INSERT INTO `admin_log` VALUES ('1174', 'gogousa', '1394801473', '111.193.160.204');
INSERT INTO `admin_log` VALUES ('1175', 'gogousa', '1394808433', '116.26.25.30');
INSERT INTO `admin_log` VALUES ('1176', 'gogousa', '1394856982', '116.26.25.30');
INSERT INTO `admin_log` VALUES ('1177', 'gogousa', '1394892719', '118.186.156.238');
INSERT INTO `admin_log` VALUES ('1178', 'gogousa', '1394892825', '124.127.168.227');
INSERT INTO `admin_log` VALUES ('1179', 'gogousa', '1394951040', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1180', 'gogousa', '1395021072', '125.33.80.138');
INSERT INTO `admin_log` VALUES ('1181', 'gogousa', '1395034519', '125.33.88.175');
INSERT INTO `admin_log` VALUES ('1182', 'gogousa', '1395082600', '129.8.217.207');
INSERT INTO `admin_log` VALUES ('1183', 'gogousa', '1395105256', '123.123.99.75');
INSERT INTO `admin_log` VALUES ('1184', 'gogousa', '1395117282', '116.26.28.67');
INSERT INTO `admin_log` VALUES ('1185', 'gogousa', '1395121442', '116.26.28.67');
INSERT INTO `admin_log` VALUES ('1186', 'gogousa', '1395124285', '123.123.99.75');
INSERT INTO `admin_log` VALUES ('1187', 'gogousa', '1395125417', '116.26.28.67');
INSERT INTO `admin_log` VALUES ('1188', 'gogousa', '1395126381', '116.26.28.67');
INSERT INTO `admin_log` VALUES ('1189', 'gogousa', '1395135362', '116.26.28.67');
INSERT INTO `admin_log` VALUES ('1190', 'gogousa', '1395192798', '125.33.87.80');
INSERT INTO `admin_log` VALUES ('1191', 'gogousa', '1395194896', '116.26.29.148');
INSERT INTO `admin_log` VALUES ('1192', 'gogousa', '1395201440', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1193', 'gogousa', '1395214779', '116.26.29.148');
INSERT INTO `admin_log` VALUES ('1194', 'gogousa', '1395214937', '116.26.29.148');
INSERT INTO `admin_log` VALUES ('1195', 'gogousa', '1395221515', '116.26.29.148');
INSERT INTO `admin_log` VALUES ('1196', 'gogousa', '1395221702', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1197', 'gogousa', '1395231715', '183.13.145.165');
INSERT INTO `admin_log` VALUES ('1198', 'gogousa', '1395231729', '183.13.145.165');
INSERT INTO `admin_log` VALUES ('1199', 'gogousa', '1395231729', '183.13.145.165');
INSERT INTO `admin_log` VALUES ('1200', 'gogousa', '1395234487', '183.13.145.165');
INSERT INTO `admin_log` VALUES ('1201', 'gogousa', '1395236203', '116.26.29.148');
INSERT INTO `admin_log` VALUES ('1202', 'gogousa', '1395279055', '125.33.79.221');
INSERT INTO `admin_log` VALUES ('1203', 'gogousa', '1395285381', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1204', 'gogousa', '1395286789', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1205', 'gogousa', '1395287444', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1206', 'gogousa', '1395296714', '123.114.104.98');
INSERT INTO `admin_log` VALUES ('1207', 'gogousa', '1395300175', '123.114.104.98');
INSERT INTO `admin_log` VALUES ('1208', 'gogousa', '1395303774', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1209', 'gogousa', '1395303863', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1210', 'gogousa', '1395307113', '123.114.104.98');
INSERT INTO `admin_log` VALUES ('1211', 'gogousa', '1395307398', '123.114.104.98');
INSERT INTO `admin_log` VALUES ('1212', 'gogousa', '1395317796', '183.11.98.178');
INSERT INTO `admin_log` VALUES ('1213', 'gogousa', '1395356796', '129.8.217.190');
INSERT INTO `admin_log` VALUES ('1214', 'gogousa', '1395363504', '125.33.72.148');
INSERT INTO `admin_log` VALUES ('1215', 'gogousa', '1395368034', '125.33.72.148');
INSERT INTO `admin_log` VALUES ('1216', 'gogousa', '1395370131', '113.87.204.63');
INSERT INTO `admin_log` VALUES ('1217', 'gogousa', '1395370147', '183.16.243.108');
INSERT INTO `admin_log` VALUES ('1218', 'gogousa', '1395376721', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1219', 'gogousa', '1395384563', '125.33.72.148');
INSERT INTO `admin_log` VALUES ('1220', 'gogousa', '1395387106', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1221', 'gogousa', '1395387334', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1222', 'gogousa', '1395389566', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1223', 'gogousa', '1395393039', '113.87.204.63');
INSERT INTO `admin_log` VALUES ('1224', 'gogousa', '1395412715', '183.46.9.155');
INSERT INTO `admin_log` VALUES ('1225', 'gogousa', '1395454213', '113.106.207.167');
INSERT INTO `admin_log` VALUES ('1226', 'gogousa', '1395457787', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1227', 'gogousa', '1395457823', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1228', 'gogousa', '1395457865', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1229', 'gogousa', '1395457951', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1230', 'gogousa', '1395458107', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1231', 'gogousa', '1395458283', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1232', 'gogousa', '1395458472', '113.106.207.161');
INSERT INTO `admin_log` VALUES ('1233', 'gogousa', '1395459184', '183.61.176.144');
INSERT INTO `admin_log` VALUES ('1234', 'gogousa', '1395459185', '183.61.176.144');
INSERT INTO `admin_log` VALUES ('1235', 'gogousa', '1395459584', '113.106.207.172');
INSERT INTO `admin_log` VALUES ('1236', 'gogousa', '1395459820', '113.106.207.172');
INSERT INTO `admin_log` VALUES ('1237', 'gogousa', '1395459906', '218.64.17.175');
INSERT INTO `admin_log` VALUES ('1238', 'gogousa', '1395459911', '113.106.207.172');
INSERT INTO `admin_log` VALUES ('1239', 'gogousa', '1395459911', '113.106.207.172');
INSERT INTO `admin_log` VALUES ('1240', 'gogousa', '1395459918', '113.106.207.172');
INSERT INTO `admin_log` VALUES ('1241', 'gogousa', '1395460685', '113.106.207.172');
INSERT INTO `admin_log` VALUES ('1242', 'gogousa', '1395461103', '121.11.46.34');
INSERT INTO `admin_log` VALUES ('1243', 'gogousa', '1395499677', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1244', 'gogousa', '1395499772', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1245', 'gogousa', '1395499911', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1246', 'gogousa', '1395499992', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1247', 'gogousa', '1395500190', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1248', 'gogousa', '1395501441', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1249', 'gogousa', '1395502047', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1250', 'gogousa', '1395509112', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1251', 'gogousa', '1395509612', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1252', 'gogousa', '1395509907', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1253', 'gogousa', '1395533807', '111.193.174.73');
INSERT INTO `admin_log` VALUES ('1254', 'gogousa', '1395539129', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1255', 'gogousa', '1395539146', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1256', 'gogousa', '1395540251', '183.11.97.6');
INSERT INTO `admin_log` VALUES ('1257', 'gogousa', '1395541852', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1258', 'gogousa', '1395558404', '121.11.46.34');
INSERT INTO `admin_log` VALUES ('1259', 'gogousa', '1395560868', '218.64.17.175');
INSERT INTO `admin_log` VALUES ('1260', 'gogousa', '1395623706', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1261', 'gogousa', '1395623953', '123.123.103.32');
INSERT INTO `admin_log` VALUES ('1262', 'gogousa', '1395634280', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1263', 'gogousa', '1395648513', '114.244.154.76');
INSERT INTO `admin_log` VALUES ('1264', 'gogousa', '1395650771', '114.244.154.76');
INSERT INTO `admin_log` VALUES ('1265', 'gogousa', '1395653468', '61.141.249.199');
INSERT INTO `admin_log` VALUES ('1266', 'gogousa', '1395658074', '114.244.154.76');
INSERT INTO `admin_log` VALUES ('1267', 'gogousa', '1395660366', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1268', 'gogousa', '1395660367', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1269', 'gogousa', '1395663118', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1270', 'gogousa', '1395663324', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1271', 'gogousa', '1395666489', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1272', 'gogousa', '1395709511', '114.244.154.76');
INSERT INTO `admin_log` VALUES ('1273', 'gogousa', '1395710846', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1274', 'gogousa', '1395711877', '123.114.106.200');
INSERT INTO `admin_log` VALUES ('1275', 'gogousa', '1395713395', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1276', 'gogousa', '1395713491', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1277', 'gogousa', '1395714218', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1278', 'gogousa', '1395715158', '61.141.82.232');
INSERT INTO `admin_log` VALUES ('1279', 'gogousa', '1395732596', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1280', 'gogousa', '1395740586', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1281', 'gogousa', '1395745747', '124.64.99.226');
INSERT INTO `admin_log` VALUES ('1282', 'gogousa', '1395747920', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1283', 'gogousa', '1395753340', '124.64.99.226');
INSERT INTO `admin_log` VALUES ('1284', 'gogousa', '1395755897', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1285', 'gogousa', '1395761956', '121.11.44.246');
INSERT INTO `admin_log` VALUES ('1286', 'gogousa', '1395795557', '125.33.79.5');
INSERT INTO `admin_log` VALUES ('1287', 'gogousa', '1395815409', '125.33.79.5');
INSERT INTO `admin_log` VALUES ('1288', 'gogousa', '1395815672', '101.36.76.145');
INSERT INTO `admin_log` VALUES ('1289', 'gogousa', '1395818635', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1290', 'gogousa', '1395818858', '61.141.82.232');
INSERT INTO `admin_log` VALUES ('1291', 'gogousa', '1395820538', '125.33.79.5');
INSERT INTO `admin_log` VALUES ('1292', 'gogousa', '1395837429', '183.46.14.255');
INSERT INTO `admin_log` VALUES ('1293', 'gogousa', '1395882465', '123.123.99.26');
INSERT INTO `admin_log` VALUES ('1294', 'gogousa', '1395900963', '14.153.22.218');
INSERT INTO `admin_log` VALUES ('1295', 'gogousa', '1395901203', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1296', 'gogousa', '1395904727', '59.35.101.171');
INSERT INTO `admin_log` VALUES ('1297', 'gogousa', '1395912286', '125.33.76.119');
INSERT INTO `admin_log` VALUES ('1298', 'gogousa', '1395927970', '1.12.57.196');
INSERT INTO `admin_log` VALUES ('1299', 'gogousa', '1395930280', '59.35.101.171');
INSERT INTO `admin_log` VALUES ('1300', 'gogousa', '1395968971', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1301', 'gogousa', '1395969717', '123.114.98.90');
INSERT INTO `admin_log` VALUES ('1302', 'gogousa', '1395970946', '129.8.217.64');
INSERT INTO `admin_log` VALUES ('1303', 'gogousa', '1395972902', '116.26.25.27');
INSERT INTO `admin_log` VALUES ('1304', 'gogousa', '1395985652', '123.114.98.90');
INSERT INTO `admin_log` VALUES ('1305', 'gogousa', '1395989241', '123.114.98.90');
INSERT INTO `admin_log` VALUES ('1306', 'gogousa', '1395989280', '182.106.212.133');
INSERT INTO `admin_log` VALUES ('1307', 'gogousa', '1395989695', '123.114.98.90');
INSERT INTO `admin_log` VALUES ('1308', 'gogousa', '1395992070', '116.26.25.27');
INSERT INTO `admin_log` VALUES ('1309', 'gogousa', '1395992510', '182.106.212.136');
INSERT INTO `admin_log` VALUES ('1310', 'gogousa', '1395993203', '116.26.25.27');
INSERT INTO `admin_log` VALUES ('1311', 'gogousa', '1395996754', '123.114.98.90');
INSERT INTO `admin_log` VALUES ('1312', 'gogousa', '1396000414', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1313', 'gogousa', '1396002926', '116.26.25.27');
INSERT INTO `admin_log` VALUES ('1314', 'gogousa', '1396012847', '61.49.120.50');
INSERT INTO `admin_log` VALUES ('1315', 'gogousa', '1396014101', '61.49.120.50');
INSERT INTO `admin_log` VALUES ('1316', 'gogousa', '1396015575', '150.255.245.50');
INSERT INTO `admin_log` VALUES ('1317', 'gogousa', '1396049853', '61.49.120.50');
INSERT INTO `admin_log` VALUES ('1318', 'gogousa', '1396063976', '116.19.141.85');
INSERT INTO `admin_log` VALUES ('1319', 'gogousa', '1396064008', '150.255.16.158');
INSERT INTO `admin_log` VALUES ('1320', 'gogousa', '1396064660', '116.19.141.85');
INSERT INTO `admin_log` VALUES ('1321', 'gogousa', '1396110471', '114.248.216.163');
INSERT INTO `admin_log` VALUES ('1322', 'gogousa', '1396137921', '114.248.216.163');
INSERT INTO `admin_log` VALUES ('1323', 'gogousa', '1396230919', '123.114.96.68');
INSERT INTO `admin_log` VALUES ('1324', 'gogousa', '1396239720', '114.248.219.21');
INSERT INTO `admin_log` VALUES ('1325', 'gogousa', '1396251336', '123.114.96.68');
INSERT INTO `admin_log` VALUES ('1326', 'gogousa', '1396251707', '150.255.16.158');
INSERT INTO `admin_log` VALUES ('1327', 'gogousa', '1396252048', '119.123.6.20');
INSERT INTO `admin_log` VALUES ('1328', 'gogousa', '1396265670', '116.26.30.166');
INSERT INTO `admin_log` VALUES ('1329', 'gogousa', '1396266736', '111.193.183.113');
INSERT INTO `admin_log` VALUES ('1330', 'gogousa', '1396274283', '111.193.183.113');
INSERT INTO `admin_log` VALUES ('1331', 'gogousa', '1396277432', '150.255.16.158');
INSERT INTO `admin_log` VALUES ('1332', 'gogousa', '1396281933', '183.12.184.244');
INSERT INTO `admin_log` VALUES ('1333', 'gogousa', '1396282431', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1334', 'gogousa', '1396283894', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1335', 'gogousa', '1396285503', '150.255.16.158');
INSERT INTO `admin_log` VALUES ('1336', 'gogousa', '1396319862', '125.33.93.59');
INSERT INTO `admin_log` VALUES ('1337', 'gogousa', '1396322450', '150.255.16.158');
INSERT INTO `admin_log` VALUES ('1338', 'gogousa', '1396322962', '119.123.6.20');
INSERT INTO `admin_log` VALUES ('1339', 'gogousa', '1396329797', '119.123.6.20');
INSERT INTO `admin_log` VALUES ('1340', 'gogousa', '1396329797', '119.123.6.20');
INSERT INTO `admin_log` VALUES ('1341', 'gogousa', '1396330402', '114.112.40.66');
INSERT INTO `admin_log` VALUES ('1342', 'gogousa', '1396334280', '116.26.23.2');
INSERT INTO `admin_log` VALUES ('1343', 'gogousa', '1396366422', '116.26.23.2');
INSERT INTO `admin_log` VALUES ('1344', 'gogousa', '1396367533', '111.193.182.0');
INSERT INTO `admin_log` VALUES ('1345', 'gogousa', '1396369807', '116.26.23.2');
INSERT INTO `admin_log` VALUES ('1346', 'gogousa', '1396370416', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1347', 'gogousa', '1396371996', '116.26.23.2');
INSERT INTO `admin_log` VALUES ('1348', 'gogousa', '1396400452', '116.26.25.241');
INSERT INTO `admin_log` VALUES ('1349', 'gogousa', '1396401686', '123.114.98.147');
INSERT INTO `admin_log` VALUES ('1350', 'gogousa', '1396404404', '123.114.98.147');
INSERT INTO `admin_log` VALUES ('1351', 'gogousa', '1396413268', '111.193.167.109');
INSERT INTO `admin_log` VALUES ('1352', 'gogousa', '1396488966', '125.33.75.40');
INSERT INTO `admin_log` VALUES ('1353', 'gogousa', '1396513747', '124.64.103.161');
INSERT INTO `admin_log` VALUES ('1354', 'gogousa', '1396528042', '61.49.120.187');
INSERT INTO `admin_log` VALUES ('1355', 'gogousa', '1396528734', '116.26.31.100');
INSERT INTO `admin_log` VALUES ('1356', 'gogousa', '1396537396', '116.26.31.100');
INSERT INTO `admin_log` VALUES ('1357', 'gogousa', '1396573949', '125.33.87.131');
INSERT INTO `admin_log` VALUES ('1358', 'gogousa', '1396577401', '116.26.28.215');
INSERT INTO `admin_log` VALUES ('1359', 'gogousa', '1396577772', '125.33.87.131');
INSERT INTO `admin_log` VALUES ('1360', 'gogousa', '1396601575', '116.26.28.215');
INSERT INTO `admin_log` VALUES ('1361', 'gogousa', '1396682442', '116.19.143.183');
INSERT INTO `admin_log` VALUES ('1362', 'gogousa', '1396741868', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1363', 'gogousa', '1396754844', '123.118.88.37');
INSERT INTO `admin_log` VALUES ('1364', 'gogousa', '1396759543', '123.118.88.37');
INSERT INTO `admin_log` VALUES ('1365', 'gogousa', '1396769778', '116.26.22.224');
INSERT INTO `admin_log` VALUES ('1366', 'gogousa', '1396775214', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1367', 'gogousa', '1396818353', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1368', 'gogousa', '1396818659', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1369', 'gogousa', '1396837865', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1370', 'gogousa', '1396849373', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1371', 'gogousa', '1396860041', '116.26.30.49');
INSERT INTO `admin_log` VALUES ('1372', 'gogousa', '1396867895', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1373', 'gogousa', '1396920556', '123.114.110.62');
INSERT INTO `admin_log` VALUES ('1374', 'gogousa', '1396926591', '116.26.26.207');
INSERT INTO `admin_log` VALUES ('1375', 'gogousa', '1396926673', '123.114.110.62');
INSERT INTO `admin_log` VALUES ('1376', 'gogousa', '1396936703', '123.114.110.62');
INSERT INTO `admin_log` VALUES ('1377', 'gogousa', '1396969922', '116.26.26.207');
INSERT INTO `admin_log` VALUES ('1378', 'gogousa', '1397007152', '123.123.98.197');
INSERT INTO `admin_log` VALUES ('1379', 'gogousa', '1397023666', '123.123.98.197');
INSERT INTO `admin_log` VALUES ('1380', 'gogousa', '1397025872', '123.123.98.197');
INSERT INTO `admin_log` VALUES ('1381', 'gogousa', '1397052982', '116.26.26.207');
INSERT INTO `admin_log` VALUES ('1382', 'gogousa', '1397093397', '116.26.24.179');
INSERT INTO `admin_log` VALUES ('1383', 'gogousa', '1397093744', '125.33.83.41');
INSERT INTO `admin_log` VALUES ('1384', 'gogousa', '1397094687', '125.33.83.41');
INSERT INTO `admin_log` VALUES ('1385', 'gogousa', '1397107346', '125.33.83.41');
INSERT INTO `admin_log` VALUES ('1386', 'gogousa', '1397133873', '116.26.24.179');
INSERT INTO `admin_log` VALUES ('1387', 'gogousa', '1397134187', '150.255.16.158');
INSERT INTO `admin_log` VALUES ('1388', 'gogousa', '1397139618', '116.26.24.179');
INSERT INTO `admin_log` VALUES ('1389', 'gogousa', '1397166378', '71.183.16.239');
INSERT INTO `admin_log` VALUES ('1390', 'gogousa', '1397170456', '71.183.16.239');
INSERT INTO `admin_log` VALUES ('1391', 'gogousa', '1397210920', '116.26.24.179');
INSERT INTO `admin_log` VALUES ('1392', 'gogousa', '1397273679', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1393', 'gogousa', '1397275709', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1394', 'gogousa', '1397375957', '116.19.140.21');
INSERT INTO `admin_log` VALUES ('1395', 'gogousa', '1397441961', '125.33.78.41');
INSERT INTO `admin_log` VALUES ('1396', 'gogousa', '1397448290', '121.11.46.98');
INSERT INTO `admin_log` VALUES ('1397', 'gogousa', '1397495719', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1398', 'gogousa', '1397531245', '125.33.90.155');
INSERT INTO `admin_log` VALUES ('1399', 'gogousa', '1397612151', '123.123.103.174');
INSERT INTO `admin_log` VALUES ('1400', 'gogousa', '1397626535', '123.123.103.174');
INSERT INTO `admin_log` VALUES ('1401', 'gogousa', '1397699205', '125.33.75.41');
INSERT INTO `admin_log` VALUES ('1402', 'gogousa', '1397784923', '125.33.90.135');
INSERT INTO `admin_log` VALUES ('1403', 'gogousa', '1397807878', '202.100.231.234');
INSERT INTO `admin_log` VALUES ('1404', 'gogousa', '1397810746', '113.87.207.66');
INSERT INTO `admin_log` VALUES ('1405', 'gogousa', '1397869469', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1406', 'gogousa', '1397888676', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1407', 'gogousa', '1397900705', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1408', 'gogousa', '1397909688', '119.121.147.33');
INSERT INTO `admin_log` VALUES ('1409', 'gogousa', '1397961546', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1410', 'gogousa', '1397974747', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1411', 'gogousa', '1398043121', '123.114.111.79');
INSERT INTO `admin_log` VALUES ('1412', 'gogousa', '1398044276', '183.46.13.123');
INSERT INTO `admin_log` VALUES ('1413', 'gogousa', '1398047858', '183.46.13.123');
INSERT INTO `admin_log` VALUES ('1414', 'gogousa', '1398055518', '183.46.13.123');
INSERT INTO `admin_log` VALUES ('1415', 'gogousa', '1398058076', '123.114.111.79');
INSERT INTO `admin_log` VALUES ('1416', 'gogousa', '1398080319', '183.46.13.123');
INSERT INTO `admin_log` VALUES ('1417', 'gogousa', '1398091252', '183.46.13.123');
INSERT INTO `admin_log` VALUES ('1418', 'gogousa', '1398099208', '129.8.217.135');
INSERT INTO `admin_log` VALUES ('1419', 'gogousa', '1398102059', '129.8.217.135');
INSERT INTO `admin_log` VALUES ('1420', 'gogousa', '1398130689', '125.33.94.255');
INSERT INTO `admin_log` VALUES ('1421', 'gogousa', '1398133951', '125.33.94.255');
INSERT INTO `admin_log` VALUES ('1422', 'gogousa', '1398145749', '125.33.94.255');
INSERT INTO `admin_log` VALUES ('1423', 'gogousa', '1398145975', '125.33.94.255');
INSERT INTO `admin_log` VALUES ('1424', 'gogousa', '1398153488', '14.153.20.195');
INSERT INTO `admin_log` VALUES ('1425', 'gogousa', '1398153541', '125.33.94.255');
INSERT INTO `admin_log` VALUES ('1426', 'gogousa', '1398215170', '125.33.73.246');
INSERT INTO `admin_log` VALUES ('1427', 'gogousa', '1398222570', '125.33.73.246');
INSERT INTO `admin_log` VALUES ('1428', 'gogousa', '1398240496', '116.26.28.102');
INSERT INTO `admin_log` VALUES ('1429', 'gogousa', '1398305091', '125.33.79.3');
INSERT INTO `admin_log` VALUES ('1430', 'gogousa', '1398306807', '116.26.26.29');
INSERT INTO `admin_log` VALUES ('1431', 'gogousa', '1398319379', '116.26.26.29');
INSERT INTO `admin_log` VALUES ('1432', 'gogousa', '1398319567', '125.33.79.3');
INSERT INTO `admin_log` VALUES ('1433', 'gogousa', '1398341877', '116.26.26.29');
INSERT INTO `admin_log` VALUES ('1434', 'gogousa', '1398342633', '116.26.26.29');
INSERT INTO `admin_log` VALUES ('1435', 'gogousa', '1398392281', '59.35.102.251');
INSERT INTO `admin_log` VALUES ('1436', 'gogousa', '1398394035', '59.35.102.251');
INSERT INTO `admin_log` VALUES ('1437', 'gogousa', '1398394664', '125.33.93.42');
INSERT INTO `admin_log` VALUES ('1438', 'gogousa', '1398404765', '125.33.93.42');
INSERT INTO `admin_log` VALUES ('1439', 'gogousa', '1398412770', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1440', 'gogousa', '1398473218', '117.73.140.115');
INSERT INTO `admin_log` VALUES ('1441', 'gogousa', '1398476440', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1442', 'gogousa', '1398493341', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1443', 'gogousa', '1398547464', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1444', 'gogousa', '1398589534', '182.106.212.135');
INSERT INTO `admin_log` VALUES ('1445', 'gogousa', '1398648420', '123.114.101.146');
INSERT INTO `admin_log` VALUES ('1446', 'gogousa', '1398654543', '116.26.31.79');
INSERT INTO `admin_log` VALUES ('1447', 'gogousa', '1398710079', '129.8.217.187');
INSERT INTO `admin_log` VALUES ('1448', 'gogousa', '1398720194', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1449', 'gogousa', '1398735113', '116.26.24.209');
INSERT INTO `admin_log` VALUES ('1450', 'gogousa', '1398759501', '116.26.24.209');
INSERT INTO `admin_log` VALUES ('1451', 'gogousa', '1398834761', '123.114.96.163');
INSERT INTO `admin_log` VALUES ('1452', 'gogousa', '1398835999', '123.114.96.163');
INSERT INTO `admin_log` VALUES ('1453', 'gogousa', '1399190245', '116.26.20.240');
INSERT INTO `admin_log` VALUES ('1454', 'gogousa', '1399255906', '123.123.101.191');
INSERT INTO `admin_log` VALUES ('1455', 'gogousa', '1399282390', '116.26.20.240');
INSERT INTO `admin_log` VALUES ('1456', 'gogousa', '1399313193', '129.8.238.253');
INSERT INTO `admin_log` VALUES ('1457', 'gogousa', '1399338979', '125.33.85.54');
INSERT INTO `admin_log` VALUES ('1458', 'gogousa', '1399340821', '125.33.85.54');
INSERT INTO `admin_log` VALUES ('1459', 'gogousa', '1399361369', '183.46.9.243');
INSERT INTO `admin_log` VALUES ('1460', 'gogousa', '1399379220', '183.46.9.243');
INSERT INTO `admin_log` VALUES ('1461', 'gogousa', '1399382975', '183.46.9.243');
INSERT INTO `admin_log` VALUES ('1462', 'gogousa', '1399384146', '183.46.9.243');
INSERT INTO `admin_log` VALUES ('1463', 'gogousa', '1399424561', '123.123.102.75');
INSERT INTO `admin_log` VALUES ('1464', 'gogousa', '1399687287', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1465', 'gogousa', '1399858089', '123.123.103.110');
INSERT INTO `admin_log` VALUES ('1466', 'gogousa', '1399863345', '117.73.149.51');
INSERT INTO `admin_log` VALUES ('1467', 'gogousa', '1399863558', '123.123.103.110');
INSERT INTO `admin_log` VALUES ('1468', 'gogousa', '1399873942', '123.123.103.110');
INSERT INTO `admin_log` VALUES ('1469', 'gogousa', '1399894896', '150.255.186.135');
INSERT INTO `admin_log` VALUES ('1470', 'gogousa', '1399963664', '116.26.24.11');
INSERT INTO `admin_log` VALUES ('1471', 'gogousa', '1399964431', '125.33.83.22');
INSERT INTO `admin_log` VALUES ('1472', 'gogousa', '1399964462', '113.89.64.156');
INSERT INTO `admin_log` VALUES ('1473', 'gogousa', '1399966416', '124.66.12.118');
INSERT INTO `admin_log` VALUES ('1474', 'gogousa', '1400024925', '129.8.238.168');
INSERT INTO `admin_log` VALUES ('1475', 'gogousa', '1400030700', '123.114.106.29');
INSERT INTO `admin_log` VALUES ('1476', 'gogousa', '1400053040', '123.114.106.29');
INSERT INTO `admin_log` VALUES ('1477', 'gogousa', '1400119781', '117.73.149.51');
INSERT INTO `admin_log` VALUES ('1478', 'gogousa', '1400120169', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1479', 'gogousa', '1400121548', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1480', 'gogousa', '1400121703', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1481', 'gogousa', '1400122252', '123.123.103.185');
INSERT INTO `admin_log` VALUES ('1482', 'gogousa', '1400131937', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('1483', 'gogousa', '1400137078', '123.123.103.185');
INSERT INTO `admin_log` VALUES ('1484', 'gogousa', '1400138630', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1485', 'gogousa', '1400203274', '125.33.74.134');
INSERT INTO `admin_log` VALUES ('1486', 'gogousa', '1400224617', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1487', 'gogousa', '1400438914', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('1488', 'gogousa', '1400480597', '123.114.110.74');
INSERT INTO `admin_log` VALUES ('1489', 'gogousa', '1400553153', '123.114.107.219');
INSERT INTO `admin_log` VALUES ('1490', 'gogousa', '1400653351', '125.33.80.189');
INSERT INTO `admin_log` VALUES ('1491', 'gogousa', '1400721189', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1492', 'gogousa', '1400722531', '125.33.78.62');
INSERT INTO `admin_log` VALUES ('1493', 'gogousa', '1400825871', '125.33.72.62');
INSERT INTO `admin_log` VALUES ('1494', 'gogousa', '1400829614', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1495', 'gogousa', '1400854856', '113.118.66.120');
INSERT INTO `admin_log` VALUES ('1496', 'gogousa', '1400904485', '113.118.66.120');
INSERT INTO `admin_log` VALUES ('1497', 'gogousa', '1401107300', '59.35.103.41');
INSERT INTO `admin_log` VALUES ('1498', 'gogousa', '1401152950', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1499', 'gogousa', '1401171237', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1500', 'gogousa', '1401241180', '123.114.104.28');
INSERT INTO `admin_log` VALUES ('1501', 'gogousa', '1401241698', '123.114.104.28');
INSERT INTO `admin_log` VALUES ('1502', 'gogousa', '1401351373', '118.26.244.66');
INSERT INTO `admin_log` VALUES ('1503', 'gogousa', '1401355978', '124.200.251.69');
INSERT INTO `admin_log` VALUES ('1504', 'gogousa', '1401380564', '113.118.65.195');
INSERT INTO `admin_log` VALUES ('1505', 'gogousa', '1401381998', '113.118.65.195');
INSERT INTO `admin_log` VALUES ('1506', 'gogousa', '1401755078', '218.107.197.251');
INSERT INTO `admin_log` VALUES ('1507', 'gogousa', '1401767010', '124.200.251.66');
INSERT INTO `admin_log` VALUES ('1508', 'gogousa', '1401789340', '121.11.44.71');
INSERT INTO `admin_log` VALUES ('1509', 'gogousa', '1401857502', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1510', 'gogousa', '1401874358', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1511', 'gogousa', '1401915478', '113.118.69.182');
INSERT INTO `admin_log` VALUES ('1512', 'gogousa', '1401929709', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1513', 'gogousa', '1402162518', '113.118.76.167');
INSERT INTO `admin_log` VALUES ('1514', 'gogousa', '1402186817', '58.251.203.248');
INSERT INTO `admin_log` VALUES ('1515', 'gogousa', '1402197139', '113.118.76.167');
INSERT INTO `admin_log` VALUES ('1516', 'gogousa', '1402220534', '111.201.108.207');
INSERT INTO `admin_log` VALUES ('1517', 'gogousa', '1402449541', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1518', 'gogousa', '1402536988', '125.33.85.192');
INSERT INTO `admin_log` VALUES ('1519', 'gogousa', '1402537350', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1520', 'gogousa', '1402552850', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1521', 'gogousa', '1402553098', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1522', 'gogousa', '1402585229', '113.118.72.158');
INSERT INTO `admin_log` VALUES ('1523', 'gogousa', '1402623573', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1524', 'gogousa', '1402624034', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1525', 'gogousa', '1402819298', '113.118.74.24');
INSERT INTO `admin_log` VALUES ('1526', 'gogousa', '1402893343', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1527', 'gogousa', '1402938991', '113.118.76.235');
INSERT INTO `admin_log` VALUES ('1528', 'gogousa', '1402969688', '125.33.74.152');
INSERT INTO `admin_log` VALUES ('1529', 'gogousa', '1402970665', '125.33.74.152');
INSERT INTO `admin_log` VALUES ('1530', 'gogousa', '1402971252', '125.33.74.152');
INSERT INTO `admin_log` VALUES ('1531', 'gogousa', '1402972177', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1532', 'gogousa', '1402996758', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1533', 'gogousa', '1403022476', '27.38.48.26');
INSERT INTO `admin_log` VALUES ('1534', 'gogousa', '1403066924', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1535', 'gogousa', '1403082069', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1536', 'gogousa', '1403108710', '183.15.78.216');
INSERT INTO `admin_log` VALUES ('1537', 'gogousa', '1403183123', '183.15.76.253');
INSERT INTO `admin_log` VALUES ('1538', 'gogousa', '1403247527', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1539', 'gogousa', '1403247745', '125.33.83.12');
INSERT INTO `admin_log` VALUES ('1540', 'gogousa', '1403257066', '211.162.34.254');
INSERT INTO `admin_log` VALUES ('1541', 'gogousa', '1403268429', '113.118.233.39');
INSERT INTO `admin_log` VALUES ('1542', 'gogousa', '1403315429', '59.37.132.160');
INSERT INTO `admin_log` VALUES ('1543', 'gogousa', '1403336367', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1544', 'gogousa', '1403449627', '113.97.14.66');
INSERT INTO `admin_log` VALUES ('1545', 'gogousa', '1403485582', '123.114.111.231');
INSERT INTO `admin_log` VALUES ('1546', 'gogousa', '1403506751', '183.46.12.108');
INSERT INTO `admin_log` VALUES ('1547', 'gogousa', '1403510250', '58.251.73.229');
INSERT INTO `admin_log` VALUES ('1548', 'gogousa', '1403535851', '14.155.245.105');
INSERT INTO `admin_log` VALUES ('1549', 'gogousa', '1403576942', '124.200.251.67');
INSERT INTO `admin_log` VALUES ('1550', 'gogousa', '1403577027', '59.35.43.187');
INSERT INTO `admin_log` VALUES ('1551', 'gogousa', '1403579737', '125.33.87.69');
INSERT INTO `admin_log` VALUES ('1552', 'gogousa', '1403580884', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1553', 'gogousa', '1403590458', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1554', 'gogousa', '1403621465', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1555', 'gogousa', '1403625519', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1556', 'gogousa', '1403625671', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1557', 'gogousa', '1403625903', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1558', 'gogousa', '1403631855', '106.120.90.34');
INSERT INTO `admin_log` VALUES ('1559', 'gogousa', '1403669225', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1560', 'gogousa', '1403674129', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1561', 'gogousa', '1403684772', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1562', 'gogousa', '1403685996', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1563', 'gogousa', '1403698793', '14.155.247.146');
INSERT INTO `admin_log` VALUES ('1564', 'gogousa', '1403702150', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1565', 'gogousa', '1403704398', '183.46.14.241');
INSERT INTO `admin_log` VALUES ('1566', 'gogousa', '1403745724', '125.33.76.246');
INSERT INTO `admin_log` VALUES ('1567', 'gogousa', '1403753597', '123.114.100.174');
INSERT INTO `admin_log` VALUES ('1568', 'gogousa', '1403788228', '121.11.46.47');
INSERT INTO `admin_log` VALUES ('1569', 'gogousa', '1403796369', '113.97.12.219');
INSERT INTO `admin_log` VALUES ('1570', 'gogousa', '1403800680', '124.66.8.11');
INSERT INTO `admin_log` VALUES ('1571', 'gogousa', '1403835067', '219.134.227.254');
INSERT INTO `admin_log` VALUES ('1572', 'gogousa', '1403835180', '124.66.8.11');
INSERT INTO `admin_log` VALUES ('1573', 'gogousa', '1403845503', '124.66.8.11');
INSERT INTO `admin_log` VALUES ('1574', 'gogousa', '1403853701', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1575', 'gogousa', '1403930635', '113.116.5.9');
INSERT INTO `admin_log` VALUES ('1576', 'gogousa', '1403937853', '113.116.5.9');
INSERT INTO `admin_log` VALUES ('1577', 'gogousa', '1403957077', '113.116.5.9');
INSERT INTO `admin_log` VALUES ('1578', 'gogousa', '1403966978', '113.118.65.25');
INSERT INTO `admin_log` VALUES ('1579', 'gogousa', '1404016719', '113.118.235.3');
INSERT INTO `admin_log` VALUES ('1580', 'gogousa', '1404051605', '113.118.235.3');
INSERT INTO `admin_log` VALUES ('1581', 'gogousa', '1404090326', '125.33.73.214');
INSERT INTO `admin_log` VALUES ('1582', 'gogousa', '1404115586', '124.200.251.66');
INSERT INTO `admin_log` VALUES ('1583', 'gogousa', '1404115954', '125.94.171.178');
INSERT INTO `admin_log` VALUES ('1584', 'gogousa', '1404117497', '125.94.171.178');
INSERT INTO `admin_log` VALUES ('1585', 'gogousa', '1404175825', '123.114.105.254');
INSERT INTO `admin_log` VALUES ('1586', 'gogousa', '1404177041', '123.114.105.254');
INSERT INTO `admin_log` VALUES ('1587', 'gogousa', '1404180844', '113.84.248.186');
INSERT INTO `admin_log` VALUES ('1588', 'gogousa', '1404183938', '113.84.248.186');
INSERT INTO `admin_log` VALUES ('1589', 'gogousa', '1404264885', '123.114.103.241');
INSERT INTO `admin_log` VALUES ('1590', 'gogousa', '1404269413', '124.66.8.11');
INSERT INTO `admin_log` VALUES ('1591', 'gogousa', '1404273464', '123.114.103.241');
INSERT INTO `admin_log` VALUES ('1592', 'gogousa', '1404273797', '124.66.8.11');
INSERT INTO `admin_log` VALUES ('1593', 'gogousa', '1404273986', '219.134.226.2');
INSERT INTO `admin_log` VALUES ('1594', 'gogousa', '1404282392', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1595', 'gogousa', '1404286465', '123.114.103.241');
INSERT INTO `admin_log` VALUES ('1596', 'gogousa', '1404289088', '121.11.47.236');
INSERT INTO `admin_log` VALUES ('1597', 'gogousa', '1404289320', '124.200.251.74');
INSERT INTO `admin_log` VALUES ('1598', 'gogousa', '1404291278', '123.114.103.241');
INSERT INTO `admin_log` VALUES ('1599', 'gogousa', '1404292045', '123.114.103.241');
INSERT INTO `admin_log` VALUES ('1600', 'gogousa', '1404293369', '121.11.47.236');
INSERT INTO `admin_log` VALUES ('1601', 'gogousa', '1404306752', '113.97.13.10');
INSERT INTO `admin_log` VALUES ('1602', 'gogousa', '1404316586', '113.118.76.40');
INSERT INTO `admin_log` VALUES ('1603', 'gogousa', '1404317056', '27.38.48.43');
INSERT INTO `admin_log` VALUES ('1604', 'gogousa', '1404349202', '123.114.110.173');
INSERT INTO `admin_log` VALUES ('1605', 'gogousa', '1404367135', '123.114.110.173');
INSERT INTO `admin_log` VALUES ('1606', 'gogousa', '1404378757', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1607', 'gogousa', '1404398313', '119.121.144.216');
INSERT INTO `admin_log` VALUES ('1608', 'gogousa', '1404456793', '124.200.251.75');
INSERT INTO `admin_log` VALUES ('1609', 'gogousa', '1404458284', '124.200.251.75');
INSERT INTO `admin_log` VALUES ('1610', 'gogousa', '1404458774', '123.123.102.72');
INSERT INTO `admin_log` VALUES ('1611', 'gogousa', '1404463898', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1612', 'gogousa', '1404523335', '113.116.5.78');
INSERT INTO `admin_log` VALUES ('1613', 'gogousa', '1404695794', '124.200.251.67');
INSERT INTO `admin_log` VALUES ('1614', 'gogousa', '1404696706', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1615', 'gogousa', '1404696877', '116.26.28.37');
INSERT INTO `admin_log` VALUES ('1616', 'gogousa', '1404698225', '125.33.81.135');
INSERT INTO `admin_log` VALUES ('1617', 'gogousa', '1404700223', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1618', 'gogousa', '1404701386', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1619', 'gogousa', '1404702274', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1620', 'gogousa', '1404702564', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1621', 'gogousa', '1404702668', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1622', 'gogousa', '1404705183', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1623', 'gogousa', '1404713000', '173.44.132.52');
INSERT INTO `admin_log` VALUES ('1624', 'gogousa', '1404717778', '173.44.134.138');
INSERT INTO `admin_log` VALUES ('1625', 'gogousa', '1404719186', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1626', 'gogousa', '1404720770', '150.255.185.159');
INSERT INTO `admin_log` VALUES ('1627', 'gogousa', '1404722849', '150.255.185.159');
INSERT INTO `admin_log` VALUES ('1628', 'gogousa', '1404726259', '60.191.104.51');
INSERT INTO `admin_log` VALUES ('1629', 'gogousa', '1404738301', '27.38.48.50');
INSERT INTO `admin_log` VALUES ('1630', 'gogousa', '1404741750', '27.38.48.50');
INSERT INTO `admin_log` VALUES ('1631', 'gogousa', '1404745687', '113.118.234.249');
INSERT INTO `admin_log` VALUES ('1632', 'gogousa', '1404780948', '123.114.102.235');
INSERT INTO `admin_log` VALUES ('1633', 'gogousa', '1404781846', '173.44.132.52');
INSERT INTO `admin_log` VALUES ('1634', 'gogousa', '1404782520', '116.19.140.123');
INSERT INTO `admin_log` VALUES ('1635', 'gogousa', '1404802444', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1636', 'gogousa', '1404809194', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1637', 'gogousa', '1404825721', '116.19.140.123');
INSERT INTO `admin_log` VALUES ('1638', 'gogousa', '1404829103', '125.34.205.214');
INSERT INTO `admin_log` VALUES ('1639', 'gogousa', '1404830172', '116.19.140.123');
INSERT INTO `admin_log` VALUES ('1640', 'gogousa', '1404830773', '125.34.205.214');
INSERT INTO `admin_log` VALUES ('1641', 'gogousa', '1404832050', '125.34.205.214');
INSERT INTO `admin_log` VALUES ('1642', 'gogousa', '1404832322', '125.34.205.214');
INSERT INTO `admin_log` VALUES ('1643', 'gogousa', '1404836200', '113.118.67.64');
INSERT INTO `admin_log` VALUES ('1644', 'gogousa', '1404868001', '112.10.59.4');
INSERT INTO `admin_log` VALUES ('1645', 'gogousa', '1404871297', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1646', 'gogousa', '1404887917', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1647', 'gogousa', '1404893962', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1648', 'gogousa', '1404899487', '50.2.43.35');
INSERT INTO `admin_log` VALUES ('1649', 'gogousa', '1405300250', '125.33.83.30');
INSERT INTO `admin_log` VALUES ('1650', 'gogousa', '1405303566', '125.33.83.30');
INSERT INTO `admin_log` VALUES ('1651', 'gogousa', '1405305956', '173.44.134.138');
INSERT INTO `admin_log` VALUES ('1652', 'gogousa', '1405324594', '125.33.88.66');
INSERT INTO `admin_log` VALUES ('1653', 'gogousa', '1405326247', '116.26.29.45');
INSERT INTO `admin_log` VALUES ('1654', 'gogousa', '1405326821', '116.26.29.45');
INSERT INTO `admin_log` VALUES ('1655', 'gogousa', '1405327026', '150.255.241.82');
INSERT INTO `admin_log` VALUES ('1656', 'gogousa', '1405327390', '125.33.88.66');
INSERT INTO `admin_log` VALUES ('1657', 'gogousa', '1405329098', '116.26.29.45');
INSERT INTO `admin_log` VALUES ('1658', 'gogousa', '1405344132', '150.255.241.82');
INSERT INTO `admin_log` VALUES ('1659', 'gogousa', '1405345516', '116.26.29.45');
INSERT INTO `admin_log` VALUES ('1660', 'gogousa', '1405385861', '123.114.96.43');
INSERT INTO `admin_log` VALUES ('1661', 'gogousa', '1405394326', '198.52.105.40');
INSERT INTO `admin_log` VALUES ('1662', 'gogousa', '1405395269', '116.26.29.45');
INSERT INTO `admin_log` VALUES ('1663', 'gogousa', '1405395305', '150.255.241.82');
INSERT INTO `admin_log` VALUES ('1664', 'gogousa', '1405404982', '198.52.105.40');
INSERT INTO `admin_log` VALUES ('1665', 'gogousa', '1405404982', '198.52.105.40');
INSERT INTO `admin_log` VALUES ('1666', 'gogousa', '1405406633', '123.114.96.43');
INSERT INTO `admin_log` VALUES ('1667', 'gogousa', '1405406633', '123.114.96.43');
INSERT INTO `admin_log` VALUES ('1668', 'gogousa', '1405414786', '98.126.92.38');
INSERT INTO `admin_log` VALUES ('1669', 'gogousa', '1405417852', '150.255.241.82');
INSERT INTO `admin_log` VALUES ('1670', 'gogousa', '1405417987', '123.114.96.43');
INSERT INTO `admin_log` VALUES ('1671', 'gogousa', '1405418520', '112.10.36.173');
INSERT INTO `admin_log` VALUES ('1672', 'gogousa', '1405419951', '121.11.45.90');
INSERT INTO `admin_log` VALUES ('1673', 'gogousa', '1405428079', '183.13.5.137');
INSERT INTO `admin_log` VALUES ('1674', 'gogousa', '1405443654', '27.38.219.166');
INSERT INTO `admin_log` VALUES ('1675', 'gogousa', '1405473787', '125.33.74.47');
INSERT INTO `admin_log` VALUES ('1676', 'gogousa', '1405474047', '112.10.36.173');
INSERT INTO `admin_log` VALUES ('1677', 'gogousa', '1405476439', '121.11.45.90');
INSERT INTO `admin_log` VALUES ('1678', 'gogousa', '1405478654', '150.255.241.82');
INSERT INTO `admin_log` VALUES ('1679', 'gogousa', '1405478805', '125.33.74.47');
INSERT INTO `admin_log` VALUES ('1680', 'gogousa', '1405479991', '121.11.45.90');
INSERT INTO `admin_log` VALUES ('1681', 'gogousa', '1405482409', '150.255.241.82');
INSERT INTO `admin_log` VALUES ('1682', 'gogousa', '1405482774', '124.200.251.69');
INSERT INTO `admin_log` VALUES ('1683', 'gogousa', '1405492217', '125.33.74.47');
INSERT INTO `admin_log` VALUES ('1684', 'gogousa', '1405500901', '121.11.45.90');
INSERT INTO `admin_log` VALUES ('1685', 'gogousa', '1405511051', '121.11.45.90');
INSERT INTO `admin_log` VALUES ('1686', 'gogousa', '1405526313', '113.90.73.130');
INSERT INTO `admin_log` VALUES ('1687', 'gogousa', '1405562813', '123.114.110.72');
INSERT INTO `admin_log` VALUES ('1688', 'gogousa', '1405566900', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('1689', 'gogousa', '1405568778', '124.200.251.77');
INSERT INTO `admin_log` VALUES ('1690', 'gogousa', '1405578466', '123.114.98.170');
INSERT INTO `admin_log` VALUES ('1691', 'gogousa', '1405583221', '183.46.10.170');
INSERT INTO `admin_log` VALUES ('1692', 'gogousa', '1405606270', '113.91.19.22');
INSERT INTO `admin_log` VALUES ('1693', 'gogousa', '1405647153', '123.123.101.78');
INSERT INTO `admin_log` VALUES ('1694', 'gogousa', '1405650693', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('1695', 'gogousa', '1405661624', '123.123.101.78');
INSERT INTO `admin_log` VALUES ('1696', 'gogousa', '1405668448', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1697', 'gogousa', '1405669534', '123.123.101.78');
INSERT INTO `admin_log` VALUES ('1698', 'gogousa', '1405672501', '183.46.10.170');
INSERT INTO `admin_log` VALUES ('1699', 'gogousa', '1405673483', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('1700', 'gogousa', '1405673800', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1701', 'gogousa', '1405673816', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1702', 'gogousa', '1405676530', '112.10.63.236');
INSERT INTO `admin_log` VALUES ('1703', 'gogousa', '1405679541', '183.46.10.170');
INSERT INTO `admin_log` VALUES ('1704', 'gogousa', '1405679594', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1705', 'gogousa', '1405679680', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1706', 'gogousa', '1405679703', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1707', 'gogousa', '1405681368', '123.114.101.89');
INSERT INTO `admin_log` VALUES ('1708', 'gogousa', '1405691935', '116.25.95.190');
INSERT INTO `admin_log` VALUES ('1709', 'gogousa', '1405696111', '113.118.72.176');
INSERT INTO `admin_log` VALUES ('1710', 'gogousa', '1405732576', '58.251.146.227');
INSERT INTO `admin_log` VALUES ('1711', 'gogousa', '1405735900', '58.254.168.76');
INSERT INTO `admin_log` VALUES ('1712', 'gogousa', '1405736086', '125.91.84.72');
INSERT INTO `admin_log` VALUES ('1713', 'gogousa', '1405740669', '58.251.146.251');
INSERT INTO `admin_log` VALUES ('1714', 'gogousa', '1405750956', '116.17.69.130');
INSERT INTO `admin_log` VALUES ('1715', 'gogousa', '1405751667', '183.46.10.170');
INSERT INTO `admin_log` VALUES ('1716', 'gogousa', '1405752996', '58.251.146.251');
INSERT INTO `admin_log` VALUES ('1717', 'gogousa', '1405755441', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1718', 'gogousa', '1405757877', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1719', 'gogousa', '1405757986', '116.17.69.130');
INSERT INTO `admin_log` VALUES ('1720', 'gogousa', '1405758578', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1721', 'gogousa', '1405759028', '58.254.168.76');
INSERT INTO `admin_log` VALUES ('1722', 'gogousa', '1405759365', '116.17.69.130');
INSERT INTO `admin_log` VALUES ('1723', 'gogousa', '1405759752', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1724', 'gogousa', '1405762629', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1725', 'gogousa', '1405813542', '125.34.202.197');
INSERT INTO `admin_log` VALUES ('1726', 'gogousa', '1405815432', '125.34.202.197');
INSERT INTO `admin_log` VALUES ('1727', 'gogousa', '1405824111', '112.90.37.229');
INSERT INTO `admin_log` VALUES ('1728', 'gogousa', '1405829907', '125.34.202.197');
INSERT INTO `admin_log` VALUES ('1729', 'gogousa', '1405835689', '113.118.72.144');
INSERT INTO `admin_log` VALUES ('1730', 'gogousa', '1405840051', '125.34.202.197');
INSERT INTO `admin_log` VALUES ('1731', 'gogousa', '1405840481', '113.118.72.144');
INSERT INTO `admin_log` VALUES ('1732', 'gogousa', '1405840483', '113.118.72.144');
INSERT INTO `admin_log` VALUES ('1733', 'gogousa', '1405849460', '125.34.202.197');
INSERT INTO `admin_log` VALUES ('1734', 'gogousa', '1405858958', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1735', 'gogousa', '1405869535', '119.136.34.236');
INSERT INTO `admin_log` VALUES ('1736', 'gogousa', '1405904947', '116.17.101.171');
INSERT INTO `admin_log` VALUES ('1737', 'gogousa', '1405907310', '125.33.75.239');
INSERT INTO `admin_log` VALUES ('1738', 'gogousa', '1405909464', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1739', 'gogousa', '1405909703', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1740', 'gogousa', '1405910509', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1741', 'gogousa', '1405913481', '112.90.37.50');
INSERT INTO `admin_log` VALUES ('1742', 'gogousa', '1405921364', '125.33.75.239');
INSERT INTO `admin_log` VALUES ('1743', 'gogousa', '1405923867', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1744', 'gogousa', '1405924404', '113.105.139.205');
INSERT INTO `admin_log` VALUES ('1745', 'gogousa', '1405928615', '113.105.139.205');
INSERT INTO `admin_log` VALUES ('1746', 'gogousa', '1405930844', '125.33.75.239');
INSERT INTO `admin_log` VALUES ('1747', 'gogousa', '1405931254', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1748', 'gogousa', '1405945975', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1749', 'gogousa', '1405954064', '119.136.34.196');
INSERT INTO `admin_log` VALUES ('1750', 'gogousa', '1405957951', '119.136.34.196');
INSERT INTO `admin_log` VALUES ('1751', 'gogousa', '1405991487', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('1752', 'gogousa', '1405991797', '125.33.80.127');
INSERT INTO `admin_log` VALUES ('1753', 'gogousa', '1405996802', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1754', 'gogousa', '1405997118', '116.17.101.171');
INSERT INTO `admin_log` VALUES ('1755', 'gogousa', '1405997489', '116.17.101.171');
INSERT INTO `admin_log` VALUES ('1756', 'gogousa', '1405998794', '125.33.80.127');
INSERT INTO `admin_log` VALUES ('1757', 'gogousa', '1405999986', '112.10.33.224');
INSERT INTO `admin_log` VALUES ('1758', 'gogousa', '1406000453', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1759', 'gogousa', '1406000546', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('1760', 'gogousa', '1406004179', '14.154.239.166');
INSERT INTO `admin_log` VALUES ('1761', 'gogousa', '1406004922', '112.10.39.99');
INSERT INTO `admin_log` VALUES ('1762', 'gogousa', '1406007652', '125.33.80.127');
INSERT INTO `admin_log` VALUES ('1763', 'gogousa', '1406008978', '112.10.62.171');
INSERT INTO `admin_log` VALUES ('1764', 'gogousa', '1406016605', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('1765', 'gogousa', '1406021005', '27.38.48.13');
INSERT INTO `admin_log` VALUES ('1766', 'gogousa', '1406022778', '27.38.48.13');
INSERT INTO `admin_log` VALUES ('1767', 'gogousa', '1406022838', '27.38.48.13');
INSERT INTO `admin_log` VALUES ('1768', 'gogousa', '1406036089', '119.136.34.196');
INSERT INTO `admin_log` VALUES ('1769', 'gogousa', '1406043616', '209.141.63.5');
INSERT INTO `admin_log` VALUES ('1770', 'gogousa', '1406085704', '123.123.101.225');
INSERT INTO `admin_log` VALUES ('1771', 'gogousa', '1406086344', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1772', 'gogousa', '1406090653', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1773', 'gogousa', '1406091271', '113.88.219.240');
INSERT INTO `admin_log` VALUES ('1774', 'gogousa', '1406091352', '123.123.101.225');
INSERT INTO `admin_log` VALUES ('1775', 'gogousa', '1406091675', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1776', 'gogousa', '1406091883', '98.126.92.38');
INSERT INTO `admin_log` VALUES ('1777', 'gogousa', '1406094495', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1778', 'gogousa', '1406094878', '221.216.126.74');
INSERT INTO `admin_log` VALUES ('1779', 'gogousa', '1406095234', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1780', 'gogousa', '1406097355', '221.216.126.74');
INSERT INTO `admin_log` VALUES ('1781', 'gogousa', '1406097893', '116.19.140.191');
INSERT INTO `admin_log` VALUES ('1782', 'gogousa', '1406098386', '221.216.126.74');
INSERT INTO `admin_log` VALUES ('1783', 'gogousa', '1406101170', '59.35.100.118');
INSERT INTO `admin_log` VALUES ('1784', 'gogousa', '1406102657', '121.34.1.114');
INSERT INTO `admin_log` VALUES ('1785', 'gogousa', '1406102659', '221.216.126.74');
INSERT INTO `admin_log` VALUES ('1786', 'gogousa', '1406102775', '183.11.255.228');
INSERT INTO `admin_log` VALUES ('1787', 'gogousa', '1406104102', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1788', 'gogousa', '1406106393', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1789', 'gogousa', '1406111340', '59.35.100.118');
INSERT INTO `admin_log` VALUES ('1790', 'gogousa', '1406115992', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1791', 'gogousa', '1406117648', '111.201.107.104');
INSERT INTO `admin_log` VALUES ('1792', 'gogousa', '1406119559', '27.38.208.47');
INSERT INTO `admin_log` VALUES ('1793', 'gogousa', '1406121104', '221.216.126.74');
INSERT INTO `admin_log` VALUES ('1794', 'gogousa', '1406121412', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1795', 'gogousa', '1406121482', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1796', 'gogousa', '1406124415', '119.136.34.140');
INSERT INTO `admin_log` VALUES ('1797', 'gogousa', '1406164965', '113.88.219.240');
INSERT INTO `admin_log` VALUES ('1798', 'gogousa', '1406165223', '123.123.96.14');
INSERT INTO `admin_log` VALUES ('1799', 'gogousa', '1406165240', '113.105.139.184');
INSERT INTO `admin_log` VALUES ('1800', 'gogousa', '1406165249', '211.101.151.170');
INSERT INTO `admin_log` VALUES ('1801', 'gogousa', '1406165273', '183.11.255.228');
INSERT INTO `admin_log` VALUES ('1802', 'gogousa', '1406167010', '116.17.54.161');
INSERT INTO `admin_log` VALUES ('1803', 'gogousa', '1406167777', '183.11.255.228');
INSERT INTO `admin_log` VALUES ('1804', 'gogousa', '1406168088', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1805', 'gogousa', '1406172303', '116.17.54.161');
INSERT INTO `admin_log` VALUES ('1806', 'gogousa', '1406174555', '113.105.139.184');
INSERT INTO `admin_log` VALUES ('1807', 'gogousa', '1406174558', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1808', 'gogousa', '1406179331', '123.123.96.14');
INSERT INTO `admin_log` VALUES ('1809', 'gogousa', '1406182360', '113.105.139.184');
INSERT INTO `admin_log` VALUES ('1810', 'gogousa', '1406185772', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1811', 'gogousa', '1406186379', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1812', 'gogousa', '1406188385', '112.10.63.14');
INSERT INTO `admin_log` VALUES ('1813', 'gogousa', '1406190264', '183.11.255.228');
INSERT INTO `admin_log` VALUES ('1814', 'gogousa', '1406190405', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1815', 'gogousa', '1406192275', '113.105.139.184');
INSERT INTO `admin_log` VALUES ('1816', 'gogousa', '1406201413', '125.34.201.242');
INSERT INTO `admin_log` VALUES ('1817', 'gogousa', '1406204411', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1818', 'gogousa', '1406205733', '125.34.201.242');
INSERT INTO `admin_log` VALUES ('1819', 'gogousa', '1406205744', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1820', 'gogousa', '1406206173', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1821', 'gogousa', '1406210379', '119.136.34.41');
INSERT INTO `admin_log` VALUES ('1822', 'gogousa', '1406250859', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1823', 'gogousa', '1406250969', '125.33.95.103');
INSERT INTO `admin_log` VALUES ('1824', 'gogousa', '1406254268', '113.105.139.204');
INSERT INTO `admin_log` VALUES ('1825', 'gogousa', '1406256481', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1826', 'gogousa', '1406258943', '113.105.139.204');
INSERT INTO `admin_log` VALUES ('1827', 'gogousa', '1406266708', '125.33.95.103');
INSERT INTO `admin_log` VALUES ('1828', 'gogousa', '1406268137', '157.61.248.58');
INSERT INTO `admin_log` VALUES ('1829', 'gogousa', '1406269439', '113.105.139.204');
INSERT INTO `admin_log` VALUES ('1830', 'gogousa', '1406271407', '183.46.13.155');
INSERT INTO `admin_log` VALUES ('1831', 'gogousa', '1406274439', '125.33.95.103');
INSERT INTO `admin_log` VALUES ('1832', 'gogousa', '1406276919', '113.105.139.204');
INSERT INTO `admin_log` VALUES ('1833', 'gogousa', '1406294307', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1834', 'gogousa', '1406332364', '113.116.5.226');
INSERT INTO `admin_log` VALUES ('1835', 'gogousa', '1406336091', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1836', 'gogousa', '1406336287', '119.136.34.54');
INSERT INTO `admin_log` VALUES ('1837', 'gogousa', '1406337143', '157.61.248.60');
INSERT INTO `admin_log` VALUES ('1838', 'gogousa', '1406343016', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1839', 'gogousa', '1406344244', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1840', 'gogousa', '1406346362', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1841', 'gogousa', '1406350624', '119.136.34.54');
INSERT INTO `admin_log` VALUES ('1842', 'gogousa', '1406352635', '119.136.34.54');
INSERT INTO `admin_log` VALUES ('1843', 'gogousa', '1406352851', '157.61.248.60');
INSERT INTO `admin_log` VALUES ('1844', 'gogousa', '1406352889', '157.61.248.60');
INSERT INTO `admin_log` VALUES ('1845', 'gogousa', '1406354689', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1846', 'gogousa', '1406360571', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1847', 'gogousa', '1406362957', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1848', 'gogousa', '1406363307', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1849', 'gogousa', '1406364159', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1850', 'gogousa', '1406367201', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1851', 'gogousa', '1406369792', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1852', 'gogousa', '1406369795', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1853', 'gogousa', '1406369829', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1854', 'gogousa', '1406369851', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1855', 'gogousa', '1406369895', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1856', 'gogousa', '1406369896', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1857', 'gogousa', '1406369965', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1858', 'gogousa', '1406370091', '111.192.135.107');
INSERT INTO `admin_log` VALUES ('1859', 'gogousa', '1406370284', '119.136.34.167');
INSERT INTO `admin_log` VALUES ('1860', 'gogousa', '1406370352', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1861', 'gogousa', '1406370399', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1862', 'gogousa', '1406374620', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1863', 'gogousa', '1406382571', '119.136.34.167');
INSERT INTO `admin_log` VALUES ('1864', 'gogousa', '1406383122', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1865', 'gogousa', '1406387761', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1866', 'gogousa', '1406389954', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1867', 'gogousa', '1406391566', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1868', 'gogousa', '1406392762', '27.38.48.58');
INSERT INTO `admin_log` VALUES ('1869', 'gogousa', '1406424357', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1870', 'gogousa', '1406431292', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1871', 'gogousa', '1406442799', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1872', 'gogousa', '1406445591', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1873', 'gogousa', '1406448414', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1874', 'gogousa', '1406455727', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1875', 'gogousa', '1406456673', '119.121.182.94');
INSERT INTO `admin_log` VALUES ('1876', 'gogousa', '1406460691', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1877', 'gogousa', '1406469276', '119.136.34.167');
INSERT INTO `admin_log` VALUES ('1878', 'gogousa', '1406471874', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1879', 'gogousa', '1406473057', '119.136.34.167');
INSERT INTO `admin_log` VALUES ('1880', 'gogousa', '1406475055', '119.136.34.167');
INSERT INTO `admin_log` VALUES ('1881', 'gogousa', '1406509526', '123.123.103.150');
INSERT INTO `admin_log` VALUES ('1882', 'gogousa', '1406510583', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('1883', 'gogousa', '1406515147', '119.139.169.67');
INSERT INTO `admin_log` VALUES ('1884', 'gogousa', '1406516463', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1885', 'gogousa', '1406516860', '219.134.165.15');
INSERT INTO `admin_log` VALUES ('1886', 'gogousa', '1406517600', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('1887', 'gogousa', '1406518051', '119.139.169.67');
INSERT INTO `admin_log` VALUES ('1888', 'gogousa', '1406521482', '123.123.103.150');
INSERT INTO `admin_log` VALUES ('1889', 'gogousa', '1406525859', '123.123.103.150');
INSERT INTO `admin_log` VALUES ('1890', 'gogousa', '1406527570', '123.123.103.150');
INSERT INTO `admin_log` VALUES ('1891', 'gogousa', '1406529896', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1892', 'gogousa', '1406530080', '157.61.248.35');
INSERT INTO `admin_log` VALUES ('1893', 'gogousa', '1406531792', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('1894', 'gogousa', '1406550621', '114.253.148.25');
INSERT INTO `admin_log` VALUES ('1895', 'gogousa', '1406551992', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1896', 'gogousa', '1406564524', '58.251.203.105');
INSERT INTO `admin_log` VALUES ('1897', 'gogousa', '1406565773', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1898', 'gogousa', '1406566650', '58.251.203.105');
INSERT INTO `admin_log` VALUES ('1899', 'gogousa', '1406596992', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1900', 'gogousa', '1406597912', '113.105.139.207');
INSERT INTO `admin_log` VALUES ('1901', 'gogousa', '1406598871', '125.33.76.198');
INSERT INTO `admin_log` VALUES ('1902', 'gogousa', '1406600499', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1903', 'gogousa', '1406601271', '119.136.34.54');
INSERT INTO `admin_log` VALUES ('1904', 'gogousa', '1406601316', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1905', 'gogousa', '1406603042', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1906', 'gogousa', '1406603524', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1907', 'gogousa', '1406604482', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1908', 'gogousa', '1406604554', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1909', 'gogousa', '1406607102', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1910', 'gogousa', '1406607175', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1911', 'gogousa', '1406607918', '113.105.139.207');
INSERT INTO `admin_log` VALUES ('1912', 'gogousa', '1406611173', '125.33.76.198');
INSERT INTO `admin_log` VALUES ('1913', 'gogousa', '1406613618', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1914', 'gogousa', '1406614595', '113.105.139.207');
INSERT INTO `admin_log` VALUES ('1915', 'gogousa', '1406615103', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1916', 'gogousa', '1406615652', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1917', 'gogousa', '1406615755', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1918', 'gogousa', '1406616969', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1919', 'gogousa', '1406617789', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1920', 'gogousa', '1406620528', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1921', 'gogousa', '1406621426', '219.134.166.192');
INSERT INTO `admin_log` VALUES ('1922', 'gogousa', '1406621625', '113.105.139.207');
INSERT INTO `admin_log` VALUES ('1923', 'gogousa', '1406621730', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1924', 'gogousa', '1406622746', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1925', 'gogousa', '1406624035', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1926', 'gogousa', '1406624276', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1927', 'gogousa', '1406624278', '125.88.253.142');
INSERT INTO `admin_log` VALUES ('1928', 'gogousa', '1406624458', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1929', 'gogousa', '1406625089', '116.17.83.181');
INSERT INTO `admin_log` VALUES ('1930', 'gogousa', '1406633766', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1931', 'gogousa', '1406638613', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1932', 'gogousa', '1406642604', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1933', 'gogousa', '1406643243', '218.18.113.239');
INSERT INTO `admin_log` VALUES ('1934', 'gogousa', '1406644311', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1935', 'gogousa', '1406656583', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1936', 'gogousa', '1406669584', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1937', 'gogousa', '1406669674', '113.116.26.59');
INSERT INTO `admin_log` VALUES ('1938', 'gogousa', '1406682415', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('1939', 'gogousa', '1406683026', '123.123.100.22');
INSERT INTO `admin_log` VALUES ('1940', 'gogousa', '1406683030', '116.17.72.217');
INSERT INTO `admin_log` VALUES ('1941', 'gogousa', '1406683248', '123.151.164.200');
INSERT INTO `admin_log` VALUES ('1942', 'gogousa', '1406684743', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1943', 'gogousa', '1406684928', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('1944', 'gogousa', '1406686040', '123.151.164.200');
INSERT INTO `admin_log` VALUES ('1945', 'gogousa', '1406689985', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('1946', 'gogousa', '1406691939', '116.17.72.217');
INSERT INTO `admin_log` VALUES ('1947', 'gogousa', '1406693714', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1948', 'gogousa', '1406695044', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1949', 'gogousa', '1406695251', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1950', 'gogousa', '1406697859', '27.38.212.250');
INSERT INTO `admin_log` VALUES ('1951', 'gogousa', '1406698972', '123.123.100.22');
INSERT INTO `admin_log` VALUES ('1952', 'gogousa', '1406699179', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1953', 'gogousa', '1406700196', '116.17.72.217');
INSERT INTO `admin_log` VALUES ('1954', 'gogousa', '1406700460', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('1955', 'gogousa', '1406700841', '123.151.164.200');
INSERT INTO `admin_log` VALUES ('1956', 'gogousa', '1406702375', '123.151.164.200');
INSERT INTO `admin_log` VALUES ('1957', 'gogousa', '1406705268', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1958', 'gogousa', '1406705322', '153.0.0.22');
INSERT INTO `admin_log` VALUES ('1959', 'gogousa', '1406705728', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1960', 'gogousa', '1406706194', '123.151.164.200');
INSERT INTO `admin_log` VALUES ('1961', 'gogousa', '1406706599', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1962', 'gogousa', '1406712433', '150.255.107.61');
INSERT INTO `admin_log` VALUES ('1963', 'gogousa', '1406714694', '123.151.164.200');
INSERT INTO `admin_log` VALUES ('1964', 'gogousa', '1406720264', '27.38.214.111');
INSERT INTO `admin_log` VALUES ('1965', 'gogousa', '1406721788', '27.38.210.79');
INSERT INTO `admin_log` VALUES ('1966', 'gogousa', '1406721872', '119.121.145.130');
INSERT INTO `admin_log` VALUES ('1967', 'gogousa', '1406722904', '58.251.207.53');
INSERT INTO `admin_log` VALUES ('1968', 'gogousa', '1406722911', '125.34.207.241');
INSERT INTO `admin_log` VALUES ('1969', 'gogousa', '1406732399', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1970', 'gogousa', '1406733429', '119.136.34.54');
INSERT INTO `admin_log` VALUES ('1971', 'gogousa', '1406734560', '113.116.26.59');
INSERT INTO `admin_log` VALUES ('1972', 'gogousa', '1406738672', '58.251.207.53');
INSERT INTO `admin_log` VALUES ('1973', 'gogousa', '1406768435', '123.114.111.119');
INSERT INTO `admin_log` VALUES ('1974', 'gogousa', '1406768740', '116.17.76.132');
INSERT INTO `admin_log` VALUES ('1975', 'gogousa', '1406769219', '183.46.13.5');
INSERT INTO `admin_log` VALUES ('1976', 'gogousa', '1406769539', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('1977', 'gogousa', '1406770013', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('1978', 'gogousa', '1406772692', '183.46.13.5');
INSERT INTO `admin_log` VALUES ('1979', 'gogousa', '1406775304', '183.16.147.230');
INSERT INTO `admin_log` VALUES ('1980', 'gogousa', '1406775314', '119.139.171.202');
INSERT INTO `admin_log` VALUES ('1981', 'gogousa', '1406775358', '116.17.76.132');
INSERT INTO `admin_log` VALUES ('1982', 'gogousa', '1406775518', '157.61.248.60');
INSERT INTO `admin_log` VALUES ('1983', 'gogousa', '1406776080', '117.73.112.154');
INSERT INTO `admin_log` VALUES ('1984', 'gogousa', '1406776181', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1985', 'gogousa', '1406777906', '157.61.248.60');
INSERT INTO `admin_log` VALUES ('1986', 'gogousa', '1406778177', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1987', 'gogousa', '1406780258', '113.116.73.124');
INSERT INTO `admin_log` VALUES ('1988', 'gogousa', '1406780810', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1989', 'gogousa', '1406783053', '125.33.95.22');
INSERT INTO `admin_log` VALUES ('1990', 'gogousa', '1406783913', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('1991', 'gogousa', '1406784334', '183.46.13.5');
INSERT INTO `admin_log` VALUES ('1992', 'gogousa', '1406785433', '116.17.76.132');
INSERT INTO `admin_log` VALUES ('1993', 'gogousa', '1406786582', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('1994', 'gogousa', '1406786955', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('1995', 'gogousa', '1406787307', '119.139.171.202');
INSERT INTO `admin_log` VALUES ('1996', 'gogousa', '1406790155', '116.17.76.132');
INSERT INTO `admin_log` VALUES ('1997', 'gogousa', '1406790461', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('1998', 'gogousa', '1406790661', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('1999', 'gogousa', '1406791159', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('2000', 'gogousa', '1406791743', '183.46.13.5');
INSERT INTO `admin_log` VALUES ('2001', 'gogousa', '1406793321', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2002', 'gogousa', '1406795513', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('2003', 'gogousa', '1406797431', '116.17.76.132');
INSERT INTO `admin_log` VALUES ('2004', 'gogousa', '1406798395', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('2005', 'gogousa', '1406808040', '183.46.13.5');
INSERT INTO `admin_log` VALUES ('2006', 'gogousa', '1406810041', '111.192.135.69');
INSERT INTO `admin_log` VALUES ('2007', 'gogousa', '1406813469', '183.46.13.5');
INSERT INTO `admin_log` VALUES ('2008', 'gogousa', '1406818392', '111.192.135.69');
INSERT INTO `admin_log` VALUES ('2009', 'gogousa', '1406818960', '111.192.135.69');
INSERT INTO `admin_log` VALUES ('2010', 'gogousa', '1406819777', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('2011', 'gogousa', '1406854215', '183.16.147.230');
INSERT INTO `admin_log` VALUES ('2012', 'gogousa', '1406855897', '123.114.99.109');
INSERT INTO `admin_log` VALUES ('2013', 'gogousa', '1406856289', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2014', 'gogousa', '1406856968', '116.19.143.148');
INSERT INTO `admin_log` VALUES ('2015', 'gogousa', '1406869519', '113.116.73.124');
INSERT INTO `admin_log` VALUES ('2016', 'gogousa', '1406869963', '123.114.99.109');
INSERT INTO `admin_log` VALUES ('2017', 'gogousa', '1406871922', '123.114.99.109');
INSERT INTO `admin_log` VALUES ('2018', 'gogousa', '1406872162', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('2019', 'gogousa', '1406873363', '123.114.99.109');
INSERT INTO `admin_log` VALUES ('2020', 'gogousa', '1406874064', '123.114.99.109');
INSERT INTO `admin_log` VALUES ('2021', 'gogousa', '1406874670', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2022', 'gogousa', '1406876648', '125.88.253.154');
INSERT INTO `admin_log` VALUES ('2023', 'gogousa', '1406877042', '157.61.248.1');
INSERT INTO `admin_log` VALUES ('2024', 'gogousa', '1406877096', '59.40.223.178');
INSERT INTO `admin_log` VALUES ('2025', 'gogousa', '1406877339', '116.17.55.15');
INSERT INTO `admin_log` VALUES ('2026', 'gogousa', '1406878127', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2027', 'gogousa', '1406878908', '116.19.143.148');
INSERT INTO `admin_log` VALUES ('2028', 'gogousa', '1406880660', '119.139.171.202');
INSERT INTO `admin_log` VALUES ('2029', 'gogousa', '1406883783', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2030', 'gogousa', '1406887136', '116.17.81.151');
INSERT INTO `admin_log` VALUES ('2031', 'gogousa', '1406887787', '116.17.92.117');
INSERT INTO `admin_log` VALUES ('2032', 'gogousa', '1406889819', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2033', 'gogousa', '1406892382', '116.17.92.117');
INSERT INTO `admin_log` VALUES ('2034', 'gogousa', '1406893288', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2035', 'gogousa', '1406894911', '116.17.92.117');
INSERT INTO `admin_log` VALUES ('2036', 'gogousa', '1406895549', '125.88.253.154');
INSERT INTO `admin_log` VALUES ('2037', 'gogousa', '1406895966', '119.136.34.207');
INSERT INTO `admin_log` VALUES ('2038', 'gogousa', '1406897044', '157.61.248.1');
INSERT INTO `admin_log` VALUES ('2039', 'gogousa', '1406903365', '157.61.248.1');
INSERT INTO `admin_log` VALUES ('2040', 'gogousa', '1406904085', '119.136.34.207');
INSERT INTO `admin_log` VALUES ('2041', 'gogousa', '1406904526', '114.253.148.113');
INSERT INTO `admin_log` VALUES ('2042', 'gogousa', '1406941642', '114.253.148.113');
INSERT INTO `admin_log` VALUES ('2043', 'gogousa', '1406944254', '157.61.248.60');
INSERT INTO `admin_log` VALUES ('2044', 'gogousa', '1406945942', '157.61.248.37');
INSERT INTO `admin_log` VALUES ('2045', 'gogousa', '1406959151', '116.19.143.200');
INSERT INTO `admin_log` VALUES ('2046', 'gogousa', '1406959664', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2047', 'gogousa', '1406959669', '157.61.248.47');
INSERT INTO `admin_log` VALUES ('2048', 'gogousa', '1406961464', '114.253.148.113');
INSERT INTO `admin_log` VALUES ('2049', 'gogousa', '1406963697', '157.61.248.47');
INSERT INTO `admin_log` VALUES ('2050', 'gogousa', '1406965772', '116.19.143.200');
INSERT INTO `admin_log` VALUES ('2051', 'gogousa', '1406973206', '157.61.248.47');
INSERT INTO `admin_log` VALUES ('2052', 'gogousa', '1406979416', '116.19.143.200');
INSERT INTO `admin_log` VALUES ('2053', 'gogousa', '1406984021', '116.17.52.55');
INSERT INTO `admin_log` VALUES ('2054', 'gogousa', '1406984399', '116.17.52.55');
INSERT INTO `admin_log` VALUES ('2055', 'gogousa', '1407027677', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2056', 'gogousa', '1407028720', '198.199.93.163');
INSERT INTO `admin_log` VALUES ('2057', 'gogousa', '1407028797', '157.61.248.17');
INSERT INTO `admin_log` VALUES ('2058', 'gogousa', '1407031730', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2059', 'gogousa', '1407031904', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2060', 'gogousa', '1407032640', '198.199.93.163');
INSERT INTO `admin_log` VALUES ('2061', 'gogousa', '1407039436', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2062', 'gogousa', '1407039580', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2063', 'gogousa', '1407047615', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2064', 'gogousa', '1407051678', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2065', 'gogousa', '1407055101', '116.17.58.232');
INSERT INTO `admin_log` VALUES ('2066', 'gogousa', '1407069240', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2067', 'gogousa', '1407073816', '106.187.97.175');
INSERT INTO `admin_log` VALUES ('2068', 'gogousa', '1407073855', '106.187.97.175');
INSERT INTO `admin_log` VALUES ('2069', 'gogousa', '1407077896', '121.11.45.43');
INSERT INTO `admin_log` VALUES ('2070', 'gogousa', '1407085259', '211.162.34.253');
INSERT INTO `admin_log` VALUES ('2071', 'gogousa', '1407107230', '211.162.34.253');
INSERT INTO `admin_log` VALUES ('2072', 'gogousa', '1407113920', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('2073', 'gogousa', '1407114206', '116.17.71.33');
INSERT INTO `admin_log` VALUES ('2074', 'gogousa', '1407114685', '182.106.212.136');
INSERT INTO `admin_log` VALUES ('2075', 'gogousa', '1407114783', '123.123.100.159');
INSERT INTO `admin_log` VALUES ('2076', 'gogousa', '1407114799', '116.17.71.33');
INSERT INTO `admin_log` VALUES ('2077', 'gogousa', '1407115638', '107.170.212.37');
INSERT INTO `admin_log` VALUES ('2078', 'gogousa', '1407116114', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2079', 'gogousa', '1407117774', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2080', 'gogousa', '1407118184', '116.17.71.33');
INSERT INTO `admin_log` VALUES ('2081', 'gogousa', '1407118434', '157.61.248.1');
INSERT INTO `admin_log` VALUES ('2082', 'gogousa', '1407119263', '116.17.71.33');
INSERT INTO `admin_log` VALUES ('2083', 'gogousa', '1407119485', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2084', 'gogousa', '1407120484', '182.106.212.136');
INSERT INTO `admin_log` VALUES ('2085', 'gogousa', '1407122198', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('2086', 'gogousa', '1407122548', '107.170.212.37');
INSERT INTO `admin_log` VALUES ('2087', 'gogousa', '1407127976', '198.199.93.163');
INSERT INTO `admin_log` VALUES ('2088', 'gogousa', '1407128426', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2089', 'gogousa', '1407128526', '106.187.97.175');
INSERT INTO `admin_log` VALUES ('2090', 'gogousa', '1407130952', '157.61.248.1');
INSERT INTO `admin_log` VALUES ('2091', 'gogousa', '1407131608', '116.17.71.33');
INSERT INTO `admin_log` VALUES ('2092', 'gogousa', '1407132059', '14.127.30.156');
INSERT INTO `admin_log` VALUES ('2093', 'gogousa', '1407132160', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2094', 'gogousa', '1407132474', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2095', 'gogousa', '1407133078', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2096', 'gogousa', '1407133375', '59.35.100.251');
INSERT INTO `admin_log` VALUES ('2097', 'gogousa', '1407134404', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2098', 'gogousa', '1407135581', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2099', 'gogousa', '1407135619', '14.127.30.156');
INSERT INTO `admin_log` VALUES ('2100', 'gogousa', '1407136924', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2101', 'gogousa', '1407139006', '59.35.100.251');
INSERT INTO `admin_log` VALUES ('2102', 'gogousa', '1407140587', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2103', 'gogousa', '1407141625', '14.127.30.156');
INSERT INTO `admin_log` VALUES ('2104', 'gogousa', '1407143329', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2105', 'gogousa', '1407143794', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2106', 'gogousa', '1407144277', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2107', 'gogousa', '1407149021', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2108', 'gogousa', '1407150930', '123.151.164.198');
INSERT INTO `admin_log` VALUES ('2109', 'gogousa', '1407153426', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2110', 'gogousa', '1407153993', '59.35.100.251');
INSERT INTO `admin_log` VALUES ('2111', 'gogousa', '1407155217', '114.253.89.205');
INSERT INTO `admin_log` VALUES ('2112', 'gogousa', '1407157408', '59.35.100.251');
INSERT INTO `admin_log` VALUES ('2113', 'gogousa', '1407157627', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('2114', 'gogousa', '1407160261', '203.198.249.200');
INSERT INTO `admin_log` VALUES ('2115', 'gogousa', '1407160392', '59.35.100.251');
INSERT INTO `admin_log` VALUES ('2116', 'gogousa', '1407160392', '98.126.92.38');
INSERT INTO `admin_log` VALUES ('2117', 'gogousa', '1407161602', '114.253.89.205');
INSERT INTO `admin_log` VALUES ('2118', 'gogousa', '1407199743', '123.114.102.250');
INSERT INTO `admin_log` VALUES ('2119', 'gogousa', '1407200756', '113.105.139.206');
INSERT INTO `admin_log` VALUES ('2120', 'gogousa', '1407202992', '113.105.139.206');
INSERT INTO `admin_log` VALUES ('2121', 'gogousa', '1407203891', '116.26.21.88');
INSERT INTO `admin_log` VALUES ('2122', 'gogousa', '1407204447', '157.61.248.51');
INSERT INTO `admin_log` VALUES ('2123', 'gogousa', '1407204482', '116.17.60.111');
INSERT INTO `admin_log` VALUES ('2124', 'gogousa', '1407205403', '14.127.30.156');
INSERT INTO `admin_log` VALUES ('2125', 'gogousa', '1407205423', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2126', 'gogousa', '1407205624', '116.17.60.111');
INSERT INTO `admin_log` VALUES ('2127', 'gogousa', '1407206438', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2128', 'gogousa', '1407206603', '116.17.60.111');
INSERT INTO `admin_log` VALUES ('2129', 'gogousa', '1407206606', '124.66.11.74');
INSERT INTO `admin_log` VALUES ('2130', 'gogousa', '1407206909', '116.26.21.88');
INSERT INTO `admin_log` VALUES ('2131', 'gogousa', '1407217932', '59.40.29.243');
INSERT INTO `admin_log` VALUES ('2132', 'gogousa', '1407218086', '209.141.63.5');
INSERT INTO `admin_log` VALUES ('2133', 'gogousa', '1407218211', '98.126.92.38');
INSERT INTO `admin_log` VALUES ('2134', 'gogousa', '1407218212', '98.126.92.38');
INSERT INTO `admin_log` VALUES ('2135', 'gogousa', '1407218957', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('2136', 'gogousa', '1407218963', '116.26.21.88');
INSERT INTO `admin_log` VALUES ('2137', 'gogousa', '1407219434', '113.105.139.206');
INSERT INTO `admin_log` VALUES ('2138', 'gogousa', '1407224806', '157.61.248.51');
INSERT INTO `admin_log` VALUES ('2139', 'gogousa', '1407225028', '116.17.60.30');
INSERT INTO `admin_log` VALUES ('2140', 'gogousa', '1407226493', '116.26.21.88');
INSERT INTO `admin_log` VALUES ('2141', 'gogousa', '1407226994', '116.17.60.30');
INSERT INTO `admin_log` VALUES ('2142', 'gogousa', '1407228168', '203.132.203.213');
INSERT INTO `admin_log` VALUES ('2143', 'gogousa', '1407228806', '123.114.102.250');
INSERT INTO `admin_log` VALUES ('2144', 'gogousa', '1407229133', '27.38.48.48');
INSERT INTO `admin_log` VALUES ('2145', 'gogousa', '1407229469', '123.114.102.250');
INSERT INTO `admin_log` VALUES ('2146', 'gogousa', '1407229560', '123.114.102.250');
INSERT INTO `admin_log` VALUES ('2147', 'gogousa', '1407230165', '27.38.48.48');
INSERT INTO `admin_log` VALUES ('2148', 'gogousa', '1407230165', '27.38.48.48');
INSERT INTO `admin_log` VALUES ('2149', 'gogousa', '1407230258', '27.38.48.48');
INSERT INTO `admin_log` VALUES ('2150', 'gogousa', '1407230705', '27.38.48.48');
INSERT INTO `admin_log` VALUES ('2151', 'gogousa', '1407231404', '116.17.75.89');
INSERT INTO `admin_log` VALUES ('2152', 'gogousa', '1407231677', '98.126.92.38');
INSERT INTO `admin_log` VALUES ('2153', 'gogousa', '1407231748', '116.17.75.89');
INSERT INTO `admin_log` VALUES ('2154', 'gogousa', '1407242886', '203.198.249.200');
INSERT INTO `admin_log` VALUES ('2155', 'gogousa', '1407248879', '203.198.249.200');
INSERT INTO `admin_log` VALUES ('2156', 'gogousa', '1407251724', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2157', 'gogousa', '1407265649', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2158', 'gogousa', '1407288087', '123.114.103.110');
INSERT INTO `admin_log` VALUES ('2159', 'gogousa', '1407288715', '113.105.139.206');
INSERT INTO `admin_log` VALUES ('2160', 'gogousa', '1407292844', '203.132.203.213');
INSERT INTO `admin_log` VALUES ('2161', 'gogousa', '1407295881', '183.46.12.98');
INSERT INTO `admin_log` VALUES ('2162', 'gogousa', '1407296083', '113.105.139.206');
INSERT INTO `admin_log` VALUES ('2163', 'gogousa', '1407302436', '123.114.103.110');
INSERT INTO `admin_log` VALUES ('2164', 'gogousa', '1407313639', '123.114.103.110');
INSERT INTO `admin_log` VALUES ('2165', 'gogousa', '1407316717', '120.237.58.231');
INSERT INTO `admin_log` VALUES ('2166', 'gogousa', '1407329350', '111.192.130.229');
INSERT INTO `admin_log` VALUES ('2167', 'gogousa', '1407333618', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2168', 'gogousa', '1407334344', '111.192.130.229');
INSERT INTO `admin_log` VALUES ('2169', 'gogousa', '1407336199', '150.255.185.111');
INSERT INTO `admin_log` VALUES ('2170', 'gogousa', '1407364127', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2171', 'gogousa', '1407367322', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2172', 'gogousa', '1407377004', '116.26.23.190');
INSERT INTO `admin_log` VALUES ('2173', 'gogousa', '1407377904', '203.132.203.213');
INSERT INTO `admin_log` VALUES ('2174', 'gogousa', '1407393095', '125.88.253.131');
INSERT INTO `admin_log` VALUES ('2175', 'gogousa', '1407393978', '116.17.43.177');
INSERT INTO `admin_log` VALUES ('2176', 'gogousa', '1407402241', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2177', 'gogousa', '1407404024', '183.16.233.133');
INSERT INTO `admin_log` VALUES ('2178', 'gogousa', '1407417049', '203.198.249.200');
INSERT INTO `admin_log` VALUES ('2179', 'gogousa', '1407419550', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2180', 'gogousa', '1407465428', '116.17.43.177');
INSERT INTO `admin_log` VALUES ('2181', 'gogousa', '1407469768', '123.123.98.199');
INSERT INTO `admin_log` VALUES ('2182', 'gogousa', '1407476094', '125.33.82.228');
INSERT INTO `admin_log` VALUES ('2183', 'gogousa', '1407477456', '116.17.43.177');
INSERT INTO `admin_log` VALUES ('2184', 'gogousa', '1407480764', '125.33.82.228');
INSERT INTO `admin_log` VALUES ('2185', 'gogousa', '1407480972', '116.17.43.177');
INSERT INTO `admin_log` VALUES ('2186', 'gogousa', '1407541075', '113.118.77.42');
INSERT INTO `admin_log` VALUES ('2187', 'gogousa', '1407556333', '27.47.93.192');
INSERT INTO `admin_log` VALUES ('2188', 'gogousa', '1407586493', '27.47.93.192');
INSERT INTO `admin_log` VALUES ('2189', 'gogousa', '1407630342', '27.47.93.192');
INSERT INTO `admin_log` VALUES ('2190', 'gogousa', '1407639324', '27.47.93.192');
INSERT INTO `admin_log` VALUES ('2191', 'gogousa', '1407689967', '27.38.217.144');
INSERT INTO `admin_log` VALUES ('2192', 'gogousa', '1407702022', '106.187.34.36');
INSERT INTO `admin_log` VALUES ('2193', 'gogousa', '1407720523', '123.123.98.168');
INSERT INTO `admin_log` VALUES ('2194', 'gogousa', '1407724835', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2195', 'gogousa', '1407724838', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2196', 'gogousa', '1407725383', '119.147.153.73');
INSERT INTO `admin_log` VALUES ('2197', 'gogousa', '1407741757', '123.123.98.168');
INSERT INTO `admin_log` VALUES ('2198', 'gogousa', '1407806529', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2199', 'gogousa', '1407806934', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('2200', 'gogousa', '1407807290', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2201', 'gogousa', '1407811776', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2202', 'gogousa', '1407812210', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2203', 'gogousa', '1407823551', '221.216.126.62');
INSERT INTO `admin_log` VALUES ('2204', 'gogousa', '1407823870', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2205', 'gogousa', '1407827437', '116.19.140.70');
INSERT INTO `admin_log` VALUES ('2206', 'gogousa', '1407827836', '221.216.126.62');
INSERT INTO `admin_log` VALUES ('2207', 'gogousa', '1407830271', '116.19.140.70');
INSERT INTO `admin_log` VALUES ('2208', 'gogousa', '1407831485', '116.19.140.70');
INSERT INTO `admin_log` VALUES ('2209', 'gogousa', '1407892406', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2210', 'gogousa', '1407892847', '123.114.108.113');
INSERT INTO `admin_log` VALUES ('2211', 'gogousa', '1407898102', '116.17.36.53');
INSERT INTO `admin_log` VALUES ('2212', 'gogousa', '1407910592', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2213', 'gogousa', '1407911502', '116.17.36.53');
INSERT INTO `admin_log` VALUES ('2214', 'gogousa', '1407912267', '123.114.108.113');
INSERT INTO `admin_log` VALUES ('2215', 'gogousa', '1407912842', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2216', 'gogousa', '1407913815', '116.17.36.53');
INSERT INTO `admin_log` VALUES ('2217', 'gogousa', '1407915121', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2218', 'gogousa', '1407918533', '116.17.36.53');
INSERT INTO `admin_log` VALUES ('2219', 'gogousa', '1407935800', '203.198.249.200');
INSERT INTO `admin_log` VALUES ('2220', 'gogousa', '1407937834', '27.38.221.97');
INSERT INTO `admin_log` VALUES ('2221', 'gogousa', '1407979416', '123.114.104.3');
INSERT INTO `admin_log` VALUES ('2222', 'gogousa', '1407996928', '116.17.50.72');
INSERT INTO `admin_log` VALUES ('2223', 'gogousa', '1407997835', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2224', 'gogousa', '1407999577', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2225', 'gogousa', '1408000025', '198.199.93.163');
INSERT INTO `admin_log` VALUES ('2226', 'gogousa', '1408002366', '157.61.248.73');
INSERT INTO `admin_log` VALUES ('2227', 'gogousa', '1408007569', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2228', 'gogousa', '1408007847', '116.17.50.72');
INSERT INTO `admin_log` VALUES ('2229', 'gogousa', '1408009818', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2230', 'gogousa', '1408010527', '116.17.50.72');
INSERT INTO `admin_log` VALUES ('2231', 'gogousa', '1408065989', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2232', 'gogousa', '1408066253', '116.17.49.237');
INSERT INTO `admin_log` VALUES ('2233', 'gogousa', '1408068426', '123.123.103.103');
INSERT INTO `admin_log` VALUES ('2234', 'gogousa', '1408069219', '116.17.49.237');
INSERT INTO `admin_log` VALUES ('2235', 'gogousa', '1408070811', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2236', 'gogousa', '1408082996', '116.17.49.237');
INSERT INTO `admin_log` VALUES ('2237', 'gogousa', '1408092081', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2238', 'gogousa', '1408095167', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2239', 'gogousa', '1408182810', '113.118.69.230');
INSERT INTO `admin_log` VALUES ('2240', 'gogousa', '1408192875', '113.118.69.230');
INSERT INTO `admin_log` VALUES ('2241', 'gogousa', '1408249349', '114.253.89.53');
INSERT INTO `admin_log` VALUES ('2242', 'gogousa', '1408278487', '113.118.66.161');
INSERT INTO `admin_log` VALUES ('2243', 'gogousa', '1408324045', '14.118.132.24');
INSERT INTO `admin_log` VALUES ('2244', 'gogousa', '1408324249', '163.179.236.95');
INSERT INTO `admin_log` VALUES ('2245', 'gogousa', '1408324350', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2246', 'gogousa', '1408325026', '116.19.143.216');
INSERT INTO `admin_log` VALUES ('2247', 'gogousa', '1408328028', '125.33.81.178');
INSERT INTO `admin_log` VALUES ('2248', 'gogousa', '1408331784', '125.33.81.178');
INSERT INTO `admin_log` VALUES ('2249', 'gogousa', '1408334595', '116.19.143.216');
INSERT INTO `admin_log` VALUES ('2250', 'gogousa', '1408336730', '116.77.133.170');
INSERT INTO `admin_log` VALUES ('2251', 'gogousa', '1408341636', '125.33.81.178');
INSERT INTO `admin_log` VALUES ('2252', 'gogousa', '1408343947', '113.81.192.227');
INSERT INTO `admin_log` VALUES ('2253', 'gogousa', '1408346141', '14.118.132.24');
INSERT INTO `admin_log` VALUES ('2254', 'gogousa', '1408346171', '116.19.143.216');
INSERT INTO `admin_log` VALUES ('2255', 'gogousa', '1408348523', '125.33.81.178');
INSERT INTO `admin_log` VALUES ('2256', 'gogousa', '1408349630', '116.19.143.216');
INSERT INTO `admin_log` VALUES ('2257', 'gogousa', '1408349903', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2258', 'gogousa', '1408352782', '116.19.143.216');
INSERT INTO `admin_log` VALUES ('2259', 'gogousa', '1408356818', '14.118.132.24');
INSERT INTO `admin_log` VALUES ('2260', 'gogousa', '1408371031', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2261', 'gogousa', '1408374506', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2262', 'gogousa', '1408411397', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2263', 'gogousa', '1408413287', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2264', 'gogousa', '1408413299', '183.46.8.60');
INSERT INTO `admin_log` VALUES ('2265', 'gogousa', '1408413506', '116.17.61.77');
INSERT INTO `admin_log` VALUES ('2266', 'gogousa', '1408413637', '183.46.8.60');
INSERT INTO `admin_log` VALUES ('2267', 'gogousa', '1408413881', '116.17.61.77');
INSERT INTO `admin_log` VALUES ('2268', 'gogousa', '1408416180', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2269', 'gogousa', '1408418434', '125.33.74.147');
INSERT INTO `admin_log` VALUES ('2270', 'gogousa', '1408419309', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2271', 'gogousa', '1408429051', '98.126.0.230');
INSERT INTO `admin_log` VALUES ('2272', 'gogousa', '1408430387', '98.126.0.230');
INSERT INTO `admin_log` VALUES ('2273', 'gogousa', '1408431764', '125.33.74.147');
INSERT INTO `admin_log` VALUES ('2274', 'gogousa', '1408433419', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2275', 'gogousa', '1408459047', '183.46.8.60');
INSERT INTO `admin_log` VALUES ('2276', 'gogousa', '1408463439', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2277', 'gogousa', '1408498228', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2278', 'gogousa', '1408498276', '116.26.21.6');
INSERT INTO `admin_log` VALUES ('2279', 'gogousa', '1408498926', '125.33.75.126');
INSERT INTO `admin_log` VALUES ('2280', 'gogousa', '1408499874', '116.26.21.6');
INSERT INTO `admin_log` VALUES ('2281', 'gogousa', '1408503218', '116.26.21.6');
INSERT INTO `admin_log` VALUES ('2282', 'gogousa', '1408505326', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2283', 'gogousa', '1408514439', '125.33.75.126');
INSERT INTO `admin_log` VALUES ('2284', 'gogousa', '1408516489', '116.26.21.6');
INSERT INTO `admin_log` VALUES ('2285', 'gogousa', '1408517795', '120.198.240.74');
INSERT INTO `admin_log` VALUES ('2286', 'gogousa', '1408517967', '120.198.240.74');
INSERT INTO `admin_log` VALUES ('2287', 'gogousa', '1408518615', '59.53.183.84');
INSERT INTO `admin_log` VALUES ('2288', 'gogousa', '1408525386', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2289', 'gogousa', '1408525814', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2290', 'gogousa', '1408526730', '120.198.240.74');
INSERT INTO `admin_log` VALUES ('2291', 'gogousa', '1408526764', '120.198.240.74');
INSERT INTO `admin_log` VALUES ('2292', 'gogousa', '1408583209', '120.198.240.74');
INSERT INTO `admin_log` VALUES ('2293', 'gogousa', '1408583385', '221.217.211.145');
INSERT INTO `admin_log` VALUES ('2294', 'gogousa', '1408583539', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2295', 'gogousa', '1408590636', '221.217.211.145');
INSERT INTO `admin_log` VALUES ('2296', 'gogousa', '1408594540', '183.54.92.231');
INSERT INTO `admin_log` VALUES ('2297', 'gogousa', '1408600680', '221.217.211.145');
INSERT INTO `admin_log` VALUES ('2298', 'gogousa', '1408605041', '183.46.12.226');
INSERT INTO `admin_log` VALUES ('2299', 'gogousa', '1408609858', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2300', 'gogousa', '1408671221', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2301', 'gogousa', '1408671354', '123.114.98.74');
INSERT INTO `admin_log` VALUES ('2302', 'gogousa', '1408673830', '183.12.196.7');
INSERT INTO `admin_log` VALUES ('2303', 'gogousa', '1408674116', '123.114.98.74');
INSERT INTO `admin_log` VALUES ('2304', 'gogousa', '1408674238', '123.114.98.74');
INSERT INTO `admin_log` VALUES ('2305', 'gogousa', '1408676191', '123.114.98.74');
INSERT INTO `admin_log` VALUES ('2306', 'gogousa', '1408676577', '14.118.132.22');
INSERT INTO `admin_log` VALUES ('2307', 'gogousa', '1408678332', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2308', 'gogousa', '1408684910', '123.114.98.74');
INSERT INTO `admin_log` VALUES ('2309', 'gogousa', '1408691163', '14.118.132.22');
INSERT INTO `admin_log` VALUES ('2310', 'gogousa', '1408695056', '59.53.183.83');
INSERT INTO `admin_log` VALUES ('2311', 'gogousa', '1408697172', '123.114.98.74');
INSERT INTO `admin_log` VALUES ('2312', 'gogousa', '1408709922', '14.118.132.22');
INSERT INTO `admin_log` VALUES ('2313', 'gogousa', '1408714038', '125.34.206.7');
INSERT INTO `admin_log` VALUES ('2314', 'gogousa', '1408759131', '120.196.99.108');
INSERT INTO `admin_log` VALUES ('2315', 'gogousa', '1408759232', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2316', 'gogousa', '1408775213', '123.123.103.69');
INSERT INTO `admin_log` VALUES ('2317', 'gogousa', '1408775550', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2318', 'gogousa', '1408781297', '120.196.99.108');
INSERT INTO `admin_log` VALUES ('2319', 'gogousa', '1408792158', '117.73.255.51');
INSERT INTO `admin_log` VALUES ('2320', 'gogousa', '1408794440', '183.17.219.7');
INSERT INTO `admin_log` VALUES ('2321', 'gogousa', '1408794810', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2322', 'gogousa', '1408800342', '117.73.255.51');
INSERT INTO `admin_log` VALUES ('2323', 'gogousa', '1408804502', '117.73.255.51');
INSERT INTO `admin_log` VALUES ('2324', 'gogousa', '1408804805', '183.46.11.183');
INSERT INTO `admin_log` VALUES ('2325', 'gogousa', '1408865888', '117.73.255.51');
INSERT INTO `admin_log` VALUES ('2326', 'gogousa', '1408868375', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2327', 'gogousa', '1408868909', '183.46.11.104');
INSERT INTO `admin_log` VALUES ('2328', 'gogousa', '1408888278', '119.136.34.116');
INSERT INTO `admin_log` VALUES ('2329', 'gogousa', '1408889048', '218.18.113.76');
INSERT INTO `admin_log` VALUES ('2330', 'gogousa', '1408890924', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2331', 'gogousa', '1408894268', '218.18.113.216');
INSERT INTO `admin_log` VALUES ('2332', 'gogousa', '1408932759', '218.18.113.153');
INSERT INTO `admin_log` VALUES ('2333', 'gogousa', '1408932804', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2334', 'gogousa', '1408932846', '218.18.113.153');
INSERT INTO `admin_log` VALUES ('2335', 'gogousa', '1408932865', '125.33.77.13');
INSERT INTO `admin_log` VALUES ('2336', 'gogousa', '1408932937', '113.105.139.207');
INSERT INTO `admin_log` VALUES ('2337', 'gogousa', '1408933069', '59.35.100.250');
INSERT INTO `admin_log` VALUES ('2338', 'gogousa', '1408933777', '59.35.100.250');
INSERT INTO `admin_log` VALUES ('2339', 'gogousa', '1408936314', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2340', 'gogousa', '1408936715', '111.195.70.249');
INSERT INTO `admin_log` VALUES ('2341', 'gogousa', '1408937466', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2342', 'gogousa', '1408939329', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('2343', 'gogousa', '1408944168', '125.33.77.13');
INSERT INTO `admin_log` VALUES ('2344', 'gogousa', '1408945564', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2345', 'gogousa', '1408946080', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('2346', 'gogousa', '1408946797', '113.105.139.207');
INSERT INTO `admin_log` VALUES ('2347', 'gogousa', '1408946809', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2348', 'gogousa', '1408946926', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2349', 'gogousa', '1408947465', '113.116.75.167');
INSERT INTO `admin_log` VALUES ('2350', 'gogousa', '1408947557', '150.255.191.185');
INSERT INTO `admin_log` VALUES ('2351', 'gogousa', '1408951323', '59.35.100.250');
INSERT INTO `admin_log` VALUES ('2352', 'gogousa', '1408958425', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2353', 'gogousa', '1408959264', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2354', 'gogousa', '1408959339', '116.17.78.69');
INSERT INTO `admin_log` VALUES ('2355', 'gogousa', '1408960892', '157.61.248.52');
INSERT INTO `admin_log` VALUES ('2356', 'gogousa', '1408979362', '59.35.100.250');
INSERT INTO `admin_log` VALUES ('2357', 'gogousa', '1408990756', '129.8.28.48');
INSERT INTO `admin_log` VALUES ('2358', 'gogousa', '1409003722', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2359', 'gogousa', '1409014605', '116.17.56.137');
INSERT INTO `admin_log` VALUES ('2360', 'gogousa', '1409016632', '157.61.248.18');
INSERT INTO `admin_log` VALUES ('2361', 'gogousa', '1409016751', '125.33.72.204');
INSERT INTO `admin_log` VALUES ('2362', 'gogousa', '1409017456', '116.19.140.33');
INSERT INTO `admin_log` VALUES ('2363', 'gogousa', '1409023138', '125.33.72.204');
INSERT INTO `admin_log` VALUES ('2364', 'gogousa', '1409031225', '125.33.72.204');
INSERT INTO `admin_log` VALUES ('2365', 'gogousa', '1409032910', '116.17.56.137');
INSERT INTO `admin_log` VALUES ('2366', 'gogousa', '1409033519', '125.33.72.204');
INSERT INTO `admin_log` VALUES ('2367', 'gogousa', '1409036876', '113.58.22.39');
INSERT INTO `admin_log` VALUES ('2368', 'gogousa', '1409037208', '116.17.56.137');
INSERT INTO `admin_log` VALUES ('2369', 'gogousa', '1409037678', '116.17.56.137');
INSERT INTO `admin_log` VALUES ('2370', 'gogousa', '1409042916', '157.61.248.18');
INSERT INTO `admin_log` VALUES ('2371', 'gogousa', '1409042994', '116.17.56.137');
INSERT INTO `admin_log` VALUES ('2372', 'gogousa', '1409043150', '116.17.56.137');
INSERT INTO `admin_log` VALUES ('2373', 'gogousa', '1409043454', '116.19.140.33');
INSERT INTO `admin_log` VALUES ('2374', 'gogousa', '1409043664', '116.17.0.70');
INSERT INTO `admin_log` VALUES ('2375', 'gogousa', '1409043833', '116.17.0.70');
INSERT INTO `admin_log` VALUES ('2376', 'gogousa', '1409044206', '116.17.72.45');
INSERT INTO `admin_log` VALUES ('2377', 'gogousa', '1409044335', '116.17.88.155');
INSERT INTO `admin_log` VALUES ('2378', 'gogousa', '1409044608', '116.17.89.206');
INSERT INTO `admin_log` VALUES ('2379', 'gogousa', '1409044644', '116.17.89.206');
INSERT INTO `admin_log` VALUES ('2380', 'gogousa', '1409046710', '116.17.68.100');
INSERT INTO `admin_log` VALUES ('2381', 'gogousa', '1409050960', '157.61.248.18');
INSERT INTO `admin_log` VALUES ('2382', 'gogousa', '1409051776', '116.19.140.33');
INSERT INTO `admin_log` VALUES ('2383', 'gogousa', '1409054712', '116.19.140.33');
INSERT INTO `admin_log` VALUES ('2384', 'gogousa', '1409055056', '114.253.95.188');
INSERT INTO `admin_log` VALUES ('2385', 'gogousa', '1409061366', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2386', 'gogousa', '1409068484', '129.8.28.48');
INSERT INTO `admin_log` VALUES ('2387', 'gogousa', '1409101234', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2388', 'gogousa', '1409103738', '125.33.86.181');
INSERT INTO `admin_log` VALUES ('2389', 'gogousa', '1409103886', '116.17.66.42');
INSERT INTO `admin_log` VALUES ('2390', 'gogousa', '1409104677', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2391', 'gogousa', '1409104841', '119.136.222.238');
INSERT INTO `admin_log` VALUES ('2392', 'gogousa', '1409105284', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2393', 'gogousa', '1409105566', '125.33.86.181');
INSERT INTO `admin_log` VALUES ('2394', 'gogousa', '1409109303', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2395', 'gogousa', '1409109363', '119.121.151.146');
INSERT INTO `admin_log` VALUES ('2396', 'gogousa', '1409113498', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2397', 'gogousa', '1409117134', '125.33.86.181');
INSERT INTO `admin_log` VALUES ('2398', 'gogousa', '1409118932', '116.17.66.42');
INSERT INTO `admin_log` VALUES ('2399', 'gogousa', '1409126691', '119.121.151.146');
INSERT INTO `admin_log` VALUES ('2400', 'gogousa', '1409129131', '219.128.164.157');
INSERT INTO `admin_log` VALUES ('2401', 'gogousa', '1409146910', '114.253.148.127');
INSERT INTO `admin_log` VALUES ('2402', 'gogousa', '1409184847', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2403', 'gogousa', '1409187013', '219.128.164.157');
INSERT INTO `admin_log` VALUES ('2404', 'gogousa', '1409188540', '125.33.72.177');
INSERT INTO `admin_log` VALUES ('2405', 'gogousa', '1409189684', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2406', 'gogousa', '1409189688', '183.46.15.42');
INSERT INTO `admin_log` VALUES ('2407', 'gogousa', '1409189972', '219.128.164.157');
INSERT INTO `admin_log` VALUES ('2408', 'gogousa', '1409190526', '116.17.42.159');
INSERT INTO `admin_log` VALUES ('2409', 'gogousa', '1409192007', '157.61.248.77');
INSERT INTO `admin_log` VALUES ('2410', 'gogousa', '1409192579', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2411', 'gogousa', '1409195834', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2412', 'gogousa', '1409196362', '125.33.72.177');
INSERT INTO `admin_log` VALUES ('2413', 'gogousa', '1409200040', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2414', 'gogousa', '1409201169', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2415', 'gogousa', '1409203051', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2416', 'gogousa', '1409205275', '116.17.42.159');
INSERT INTO `admin_log` VALUES ('2417', 'gogousa', '1409205762', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2418', 'gogousa', '1409207118', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2419', 'gogousa', '1409208127', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2420', 'gogousa', '1409208288', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2421', 'gogousa', '1409209488', '14.118.132.23');
INSERT INTO `admin_log` VALUES ('2422', 'gogousa', '1409210622', '183.46.15.42');
INSERT INTO `admin_log` VALUES ('2423', 'gogousa', '1409210688', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2424', 'gogousa', '1409210703', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2425', 'gogousa', '1409211372', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2426', 'gogousa', '1409212236', '125.33.72.177');
INSERT INTO `admin_log` VALUES ('2427', 'gogousa', '1409212972', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2428', 'gogousa', '1409213017', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2429', 'gogousa', '1409213042', '183.46.15.42');
INSERT INTO `admin_log` VALUES ('2430', 'gogousa', '1409213099', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2431', 'gogousa', '1409213366', '183.46.15.42');
INSERT INTO `admin_log` VALUES ('2432', 'gogousa', '1409213601', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2433', 'gogousa', '1409215582', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2434', 'gogousa', '1409215783', '163.179.236.85');
INSERT INTO `admin_log` VALUES ('2435', 'gogousa', '1409216533', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2436', 'gogousa', '1409217304', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2437', 'gogousa', '1409218719', '183.46.15.42');
INSERT INTO `admin_log` VALUES ('2438', 'gogousa', '1409219722', '125.33.72.177');
INSERT INTO `admin_log` VALUES ('2439', 'gogousa', '1409228723', '183.46.15.42');
INSERT INTO `admin_log` VALUES ('2440', 'gogousa', '1409228816', '113.105.139.200');
INSERT INTO `admin_log` VALUES ('2441', 'gogousa', '1409274925', '219.128.164.79');
INSERT INTO `admin_log` VALUES ('2442', 'gogousa', '1409275056', '163.179.236.106');
INSERT INTO `admin_log` VALUES ('2443', 'gogousa', '1409277241', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2444', 'gogousa', '1409281098', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2445', 'gogousa', '1409282958', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2446', 'gogousa', '1409286453', '119.147.153.73');
INSERT INTO `admin_log` VALUES ('2447', 'gogousa', '1409293332', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2448', 'gogousa', '1409293817', '163.179.236.106');
INSERT INTO `admin_log` VALUES ('2449', 'gogousa', '1409296134', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2450', 'gogousa', '1409296711', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2451', 'gogousa', '1409296921', '163.179.236.3');
INSERT INTO `admin_log` VALUES ('2452', 'gogousa', '1409297379', '119.147.153.73');
INSERT INTO `admin_log` VALUES ('2453', 'gogousa', '1409297765', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2454', 'gogousa', '1409299635', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2455', 'gogousa', '1409303026', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2456', 'gogousa', '1409303728', '125.33.81.87');
INSERT INTO `admin_log` VALUES ('2457', 'gogousa', '1409304043', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2458', 'gogousa', '1409304132', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2459', 'gogousa', '1409306089', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2460', 'gogousa', '1409306474', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2461', 'gogousa', '1409306811', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2462', 'gogousa', '1409307683', '116.26.31.12');
INSERT INTO `admin_log` VALUES ('2463', 'gogousa', '1409312898', '67.198.139.246');
INSERT INTO `admin_log` VALUES ('2464', 'gogousa', '1409314083', '119.147.153.73');
INSERT INTO `admin_log` VALUES ('2465', 'gogousa', '1409377969', '121.11.45.200');
INSERT INTO `admin_log` VALUES ('2466', 'gogousa', '1409379434', '121.11.45.200');
INSERT INTO `admin_log` VALUES ('2467', 'gogousa', '1409387389', '121.11.45.200');
INSERT INTO `admin_log` VALUES ('2468', 'gogousa', '1409393165', '163.179.236.98');
INSERT INTO `admin_log` VALUES ('2469', 'gogousa', '1409402772', '121.11.45.200');
INSERT INTO `admin_log` VALUES ('2470', 'gogousa', '1409407171', '163.179.236.98');
INSERT INTO `admin_log` VALUES ('2471', 'gogousa', '1409465575', '111.192.132.171');
INSERT INTO `admin_log` VALUES ('2472', 'gogousa', '1409470255', '119.121.144.85');
INSERT INTO `admin_log` VALUES ('2473', 'gogousa', '1409470298', '119.121.144.85');
INSERT INTO `admin_log` VALUES ('2474', 'gogousa', '1409488407', '119.121.144.85');
INSERT INTO `admin_log` VALUES ('2475', 'gogousa', '1409536066', '163.179.236.120');
INSERT INTO `admin_log` VALUES ('2476', 'gogousa', '1409536341', '125.33.80.114');
INSERT INTO `admin_log` VALUES ('2477', 'gogousa', '1409538551', '163.179.236.120');
INSERT INTO `admin_log` VALUES ('2478', 'gogousa', '1409557136', '119.121.144.85');
INSERT INTO `admin_log` VALUES ('2479', 'gogousa', '1409558175', '163.179.236.120');
INSERT INTO `admin_log` VALUES ('2480', 'gogousa', '1409558742', '113.100.247.226');
INSERT INTO `admin_log` VALUES ('2481', 'gogousa', '1409564525', '116.17.70.113');
INSERT INTO `admin_log` VALUES ('2482', 'gogousa', '1409619413', '113.100.247.226');
INSERT INTO `admin_log` VALUES ('2483', 'gogousa', '1409620221', '123.123.100.84');
INSERT INTO `admin_log` VALUES ('2484', 'gogousa', '1409625170', '163.179.236.121');
INSERT INTO `admin_log` VALUES ('2485', 'gogousa', '1409625632', '113.100.247.226');
INSERT INTO `admin_log` VALUES ('2486', 'gogousa', '1409634904', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2487', 'gogousa', '1409639495', '123.123.100.84');
INSERT INTO `admin_log` VALUES ('2488', 'gogousa', '1409711097', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2489', 'gogousa', '1409712909', '116.17.68.159');
INSERT INTO `admin_log` VALUES ('2490', 'gogousa', '1409713925', '116.17.68.159');
INSERT INTO `admin_log` VALUES ('2491', 'gogousa', '1409715547', '116.17.68.159');
INSERT INTO `admin_log` VALUES ('2492', 'gogousa', '1409726123', '116.17.68.159');
INSERT INTO `admin_log` VALUES ('2493', 'gogousa', '1409727722', '116.17.68.159');
INSERT INTO `admin_log` VALUES ('2494', 'gogousa', '1409729433', '123.123.102.207');
INSERT INTO `admin_log` VALUES ('2495', 'gogousa', '1409798114', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2496', 'gogousa', '1409802491', '150.255.246.148');
INSERT INTO `admin_log` VALUES ('2497', 'gogousa', '1409802702', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2498', 'gogousa', '1409819067', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('2499', 'gogousa', '1409819448', '123.114.110.78');
INSERT INTO `admin_log` VALUES ('2500', 'gogousa', '1409820807', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2501', 'gogousa', '1409842467', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2502', 'gogousa', '1409842987', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2503', 'gogousa', '1409843087', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2504', 'gogousa', '1409874258', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2505', 'gogousa', '1409880454', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2506', 'gogousa', '1409880694', '123.123.102.218');
INSERT INTO `admin_log` VALUES ('2507', 'gogousa', '1409883217', '123.123.102.218');
INSERT INTO `admin_log` VALUES ('2508', 'gogousa', '1409886150', '58.60.87.75');
INSERT INTO `admin_log` VALUES ('2509', 'gogousa', '1409901675', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2510', 'gogousa', '1409903154', '123.123.102.218');
INSERT INTO `admin_log` VALUES ('2511', 'gogousa', '1409905156', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2512', 'gogousa', '1409905947', '123.123.102.218');
INSERT INTO `admin_log` VALUES ('2513', 'gogousa', '1409910097', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('2514', 'gogousa', '1409910405', '116.26.22.255');
INSERT INTO `admin_log` VALUES ('2515', 'gogousa', '1410083764', '114.253.148.55');
INSERT INTO `admin_log` VALUES ('2516', 'gogousa', '1410215317', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2517', 'gogousa', '1410228273', '123.114.98.94');
INSERT INTO `admin_log` VALUES ('2518', 'gogousa', '1410246731', '123.123.96.29');
INSERT INTO `admin_log` VALUES ('2519', 'gogousa', '1410281591', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2520', 'gogousa', '1410291558', '129.8.28.65');
INSERT INTO `admin_log` VALUES ('2521', 'gogousa', '1410312379', '123.123.102.66');
INSERT INTO `admin_log` VALUES ('2522', 'gogousa', '1410317761', '123.123.102.66');
INSERT INTO `admin_log` VALUES ('2523', 'gogousa', '1410326007', '123.123.102.66');
INSERT INTO `admin_log` VALUES ('2524', 'gogousa', '1410360705', '119.147.153.74');
INSERT INTO `admin_log` VALUES ('2525', 'gogousa', '1410400037', '123.114.105.155');
INSERT INTO `admin_log` VALUES ('2526', 'gogousa', '1410423006', '123.114.105.155');
INSERT INTO `admin_log` VALUES ('2527', 'gogousa', '1410426643', '123.114.105.155');
INSERT INTO `admin_log` VALUES ('2528', 'gogousa', '1410487509', '123.114.99.13');
INSERT INTO `admin_log` VALUES ('2529', 'gogousa', '1410489355', '116.26.21.237');
INSERT INTO `admin_log` VALUES ('2530', 'gogousa', '1410665242', '116.26.26.237');
INSERT INTO `admin_log` VALUES ('2531', 'gogousa', '1410682884', '116.26.26.237');
INSERT INTO `admin_log` VALUES ('2532', 'gogousa', '1410686740', '116.26.26.237');
INSERT INTO `admin_log` VALUES ('2533', 'gogousa', '1410696325', '116.26.26.237');
INSERT INTO `admin_log` VALUES ('2534', 'gogousa', '1410700515', '116.26.26.237');
INSERT INTO `admin_log` VALUES ('2535', 'gogousa', '1410705958', '116.26.26.237');
INSERT INTO `admin_log` VALUES ('2536', 'gogousa', '1410746865', '123.114.111.27');
INSERT INTO `admin_log` VALUES ('2537', 'gogousa', '1410747390', '123.114.111.27');
INSERT INTO `admin_log` VALUES ('2538', 'gogousa', '1410753087', '123.114.111.27');
INSERT INTO `admin_log` VALUES ('2539', 'gogousa', '1410831214', '123.123.103.73');
INSERT INTO `admin_log` VALUES ('2540', 'gogousa', '1410831463', '123.123.103.73');
INSERT INTO `admin_log` VALUES ('2541', 'gogousa', '1410843862', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2542', 'gogousa', '1410846545', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2543', 'gogousa', '1410849350', '116.26.30.32');
INSERT INTO `admin_log` VALUES ('2544', 'gogousa', '1410855012', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2545', 'gogousa', '1410858940', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2546', 'gogousa', '1410858966', '116.26.30.32');
INSERT INTO `admin_log` VALUES ('2547', 'gogousa', '1410915480', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2548', 'gogousa', '1410915735', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2549', 'gogousa', '1410916274', '116.26.30.32');
INSERT INTO `admin_log` VALUES ('2550', 'gogousa', '1410916647', '123.114.98.51');
INSERT INTO `admin_log` VALUES ('2551', 'gogousa', '1410917153', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2552', 'gogousa', '1410919445', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2553', 'gogousa', '1410922212', '116.26.30.32');
INSERT INTO `admin_log` VALUES ('2554', 'gogousa', '1410922242', '123.114.98.51');
INSERT INTO `admin_log` VALUES ('2555', 'gogousa', '1410923112', '123.114.106.147');
INSERT INTO `admin_log` VALUES ('2556', 'gogousa', '1410924430', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2557', 'gogousa', '1410924899', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2558', 'gogousa', '1410925384', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2559', 'gogousa', '1410925933', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2560', 'gogousa', '1410928794', '61.144.224.53');
INSERT INTO `admin_log` VALUES ('2561', 'gogousa', '1410931709', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2562', 'gogousa', '1410933112', '59.35.40.173');
INSERT INTO `admin_log` VALUES ('2563', 'gogousa', '1410939944', '116.26.30.32');
INSERT INTO `admin_log` VALUES ('2564', 'gogousa', '1410949121', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2565', 'gogousa', '1410995165', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2566', 'gogousa', '1411000299', '113.100.245.66');
INSERT INTO `admin_log` VALUES ('2567', 'gogousa', '1411006550', '116.26.31.78');
INSERT INTO `admin_log` VALUES ('2568', 'gogousa', '1411009370', '113.100.245.66');
INSERT INTO `admin_log` VALUES ('2569', 'gogousa', '1411011311', '116.26.31.78');
INSERT INTO `admin_log` VALUES ('2570', 'gogousa', '1411017441', '113.100.245.66');
INSERT INTO `admin_log` VALUES ('2571', 'gogousa', '1411024860', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2572', 'gogousa', '1411030137', '116.26.31.78');
INSERT INTO `admin_log` VALUES ('2573', 'gogousa', '1411030232', '113.100.245.66');
INSERT INTO `admin_log` VALUES ('2574', 'gogousa', '1411080616', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('2575', 'gogousa', '1411089400', '125.33.79.208');
INSERT INTO `admin_log` VALUES ('2576', 'gogousa', '1411119468', '125.33.79.208');
INSERT INTO `admin_log` VALUES ('2577', 'gogousa', '1411226659', '116.26.28.110');
INSERT INTO `admin_log` VALUES ('2578', 'gogousa', '1411227528', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2579', 'gogousa', '1411289331', '116.26.28.110');
INSERT INTO `admin_log` VALUES ('2580', 'gogousa', '1411347952', '125.33.79.22');
INSERT INTO `admin_log` VALUES ('2581', 'gogousa', '1411358460', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2582', 'gogousa', '1411364093', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2583', 'gogousa', '1411374166', '59.35.43.112');
INSERT INTO `admin_log` VALUES ('2584', 'gogousa', '1411374462', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2585', 'gogousa', '1411377655', '125.33.79.22');
INSERT INTO `admin_log` VALUES ('2586', 'gogousa', '1411380248', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2587', 'gogousa', '1411404067', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2588', 'gogousa', '1411407043', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2589', 'gogousa', '1411408351', '67.181.166.213');
INSERT INTO `admin_log` VALUES ('2590', 'gogousa', '1411438375', '59.35.43.112');
INSERT INTO `admin_log` VALUES ('2591', 'gogousa', '1411438457', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2592', 'gogousa', '1411439456', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2593', 'gogousa', '1411440672', '59.35.75.35');
INSERT INTO `admin_log` VALUES ('2594', 'gogousa', '1411444936', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2595', 'gogousa', '1411447229', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2596', 'gogousa', '1411448994', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2597', 'gogousa', '1411450119', '59.35.75.35');
INSERT INTO `admin_log` VALUES ('2598', 'gogousa', '1411451307', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2599', 'gogousa', '1411452088', '113.58.230.218');
INSERT INTO `admin_log` VALUES ('2600', 'gogousa', '1411454547', '59.35.75.35');
INSERT INTO `admin_log` VALUES ('2601', 'gogousa', '1411454570', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2602', 'gogousa', '1411456363', '27.47.162.144');
INSERT INTO `admin_log` VALUES ('2603', 'gogousa', '1411459359', '59.35.75.35');
INSERT INTO `admin_log` VALUES ('2604', 'gogousa', '1411460767', '59.35.75.35');
INSERT INTO `admin_log` VALUES ('2605', 'gogousa', '1411467910', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2606', 'gogousa', '1411468446', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2607', 'gogousa', '1411471267', '121.11.45.18');
INSERT INTO `admin_log` VALUES ('2608', 'gogousa', '1411474126', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2609', 'gogousa', '1411520089', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2610', 'gogousa', '1411521065', '219.134.240.197');
INSERT INTO `admin_log` VALUES ('2611', 'gogousa', '1411521726', '123.123.99.96');
INSERT INTO `admin_log` VALUES ('2612', 'gogousa', '1411523284', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2613', 'gogousa', '1411523355', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2614', 'gogousa', '1411526174', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2615', 'gogousa', '1411534478', '120.197.114.197');
INSERT INTO `admin_log` VALUES ('2616', 'gogousa', '1411535947', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2617', 'gogousa', '1411535968', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2618', 'gogousa', '1411538158', '124.66.9.162');
INSERT INTO `admin_log` VALUES ('2619', 'gogousa', '1411542395', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2620', 'gogousa', '1411543795', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2621', 'gogousa', '1411554627', '124.66.9.162');
INSERT INTO `admin_log` VALUES ('2622', 'gogousa', '1411555478', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2623', 'gogousa', '1411558041', '116.26.25.195');
INSERT INTO `admin_log` VALUES ('2624', 'gogousa', '1411562973', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2625', 'gogousa', '1411565459', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2626', 'gogousa', '1411606689', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2627', 'gogousa', '1411611662', '59.35.43.139');
INSERT INTO `admin_log` VALUES ('2628', 'gogousa', '1411621682', '116.26.25.195');
INSERT INTO `admin_log` VALUES ('2629', 'gogousa', '1411622630', '124.66.9.162');
INSERT INTO `admin_log` VALUES ('2630', 'gogousa', '1411630234', '124.66.9.162');
INSERT INTO `admin_log` VALUES ('2631', 'gogousa', '1411630340', '219.134.166.28');
INSERT INTO `admin_log` VALUES ('2632', 'gogousa', '1411634368', '116.26.25.195');
INSERT INTO `admin_log` VALUES ('2633', 'gogousa', '1411635021', '61.242.57.181');
INSERT INTO `admin_log` VALUES ('2634', 'gogousa', '1411636970', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2635', 'gogousa', '1411645898', '58.60.124.23');
INSERT INTO `admin_log` VALUES ('2636', 'gogousa', '1411653527', '113.90.114.124');
INSERT INTO `admin_log` VALUES ('2637', 'gogousa', '1411656798', '183.238.232.38');
INSERT INTO `admin_log` VALUES ('2638', 'gogousa', '1411693994', '125.33.95.6');
INSERT INTO `admin_log` VALUES ('2639', 'gogousa', '1411695938', '27.47.162.253');
INSERT INTO `admin_log` VALUES ('2640', 'gogousa', '1411697394', '121.11.45.35');
INSERT INTO `admin_log` VALUES ('2641', 'gogousa', '1411700727', '61.242.57.140');
INSERT INTO `admin_log` VALUES ('2642', 'gogousa', '1411711803', '61.242.57.151');
INSERT INTO `admin_log` VALUES ('2643', 'gogousa', '1411712952', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2644', 'gogousa', '1411713935', '27.47.162.91');
INSERT INTO `admin_log` VALUES ('2645', 'gogousa', '1411717539', '121.11.45.35');
INSERT INTO `admin_log` VALUES ('2646', 'gogousa', '1411717743', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2647', 'gogousa', '1411721028', '61.242.57.51');
INSERT INTO `admin_log` VALUES ('2648', 'gogousa', '1411730331', '121.11.45.35');
INSERT INTO `admin_log` VALUES ('2649', 'gogousa', '1411731846', '183.237.255.130');
INSERT INTO `admin_log` VALUES ('2650', 'gogousa', '1411732327', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2651', 'gogousa', '1411740868', '58.251.166.14');
INSERT INTO `admin_log` VALUES ('2652', 'gogousa', '1411747240', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('2653', 'gogousa', '1411747291', '113.105.139.211');
INSERT INTO `admin_log` VALUES ('2654', 'gogousa', '1411789111', '183.61.21.73');
INSERT INTO `admin_log` VALUES ('2655', 'gogousa', '1411791045', '183.238.232.38');
INSERT INTO `admin_log` VALUES ('2656', 'gogousa', '1411829824', '183.237.255.130');
INSERT INTO `admin_log` VALUES ('2657', 'gogousa', '1411868299', '125.33.83.102');
INSERT INTO `admin_log` VALUES ('2658', 'gogousa', '1411872418', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2659', 'gogousa', '1411884801', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2660', 'gogousa', '1411886967', '125.33.86.89');
INSERT INTO `admin_log` VALUES ('2661', 'gogousa', '1411897378', '125.33.86.89');
INSERT INTO `admin_log` VALUES ('2662', 'gogousa', '1411905436', '183.237.255.130');
INSERT INTO `admin_log` VALUES ('2663', 'gogousa', '1411910161', '58.60.51.98');
INSERT INTO `admin_log` VALUES ('2664', 'gogousa', '1411910163', '58.60.51.98');
INSERT INTO `admin_log` VALUES ('2665', 'gogousa', '1411953764', '61.242.57.179');
INSERT INTO `admin_log` VALUES ('2666', 'gogousa', '1411954273', '27.47.162.17');
INSERT INTO `admin_log` VALUES ('2667', 'gogousa', '1411959616', '221.217.211.149');
INSERT INTO `admin_log` VALUES ('2668', 'gogousa', '1411968111', '183.46.8.154');
INSERT INTO `admin_log` VALUES ('2669', 'gogousa', '1411971167', '61.242.57.136');
INSERT INTO `admin_log` VALUES ('2670', 'gogousa', '1411973470', '125.33.82.160');
INSERT INTO `admin_log` VALUES ('2671', 'gogousa', '1411976817', '125.33.82.160');
INSERT INTO `admin_log` VALUES ('2672', 'gogousa', '1411977245', '59.53.183.86');
INSERT INTO `admin_log` VALUES ('2673', 'gogousa', '1411978074', '183.46.8.154');
INSERT INTO `admin_log` VALUES ('2674', 'gogousa', '1411993127', '58.61.113.93');
INSERT INTO `admin_log` VALUES ('2675', 'gogousa', '1411997058', '183.237.255.138');
INSERT INTO `admin_log` VALUES ('2676', 'gogousa', '1412000352', '219.134.248.152');

-- ----------------------------
-- Table structure for `app_image`
-- ----------------------------
DROP TABLE IF EXISTS `app_image`;
CREATE TABLE `app_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `seller_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属城市',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='app图片管理表';

-- ----------------------------
-- Records of app_image
-- ----------------------------
INSERT INTO `app_image` VALUES ('3', '/upload/1410/1315/10/543beb8126ae9.jpg', '4', '11', '1', '1413213057');

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '地区名称',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `if_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示，0不显示',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片地址',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='地区表';

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '美国', '1', '1', '/upload/1409/2812/21/5427fd3d95207.jpg', '1411906877');
INSERT INTO `area` VALUES ('2', '欧洲', '2', '1', '/upload/1409/2812/21/5427fd638b322.jpg', '1411906915');

-- ----------------------------
-- Table structure for `bcbrand_relation`
-- ----------------------------
DROP TABLE IF EXISTS `bcbrand_relation`;
CREATE TABLE `bcbrand_relation` (
  `bc_id` int(11) NOT NULL DEFAULT '0' COMMENT 'outlets',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  UNIQUE KEY `bc_brand_id` (`bc_id`,`brand_id`) USING BTREE,
  KEY `brand_id` (`brand_id`),
  KEY `bc_id` (`bc_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商圈品牌关联表';

-- ----------------------------
-- Records of bcbrand_relation
-- ----------------------------
INSERT INTO `bcbrand_relation` VALUES ('2', '18');
INSERT INTO `bcbrand_relation` VALUES ('2', '19');

-- ----------------------------
-- Table structure for `bcscene_relation`
-- ----------------------------
DROP TABLE IF EXISTS `bcscene_relation`;
CREATE TABLE `bcscene_relation` (
  `bc_id` int(11) NOT NULL DEFAULT '0' COMMENT 'outlets',
  `scene_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  UNIQUE KEY `bc_scene_id` (`bc_id`,`scene_id`) USING BTREE,
  KEY `bc_id` (`bc_id`) USING BTREE,
  KEY `scene_id` (`scene_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bcscene_relation
-- ----------------------------
INSERT INTO `bcscene_relation` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `bijia`
-- ----------------------------
DROP TABLE IF EXISTS `bijia`;
CREATE TABLE `bijia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `k` varchar(64) NOT NULL,
  `v` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='比价表';

-- ----------------------------
-- Records of bijia
-- ----------------------------
INSERT INTO `bijia` VALUES ('1', 'title', 'dfds');
INSERT INTO `bijia` VALUES ('2', 'image', '/upload/1410/1315/22/543bee4511272.jpg');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(128) NOT NULL DEFAULT '' COMMENT '品牌名',
  `brand_en_name` varchar(128) NOT NULL DEFAULT '' COMMENT '品牌英文名',
  `cate_id` varchar(128) NOT NULL DEFAULT '' COMMENT '分类id串',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '品牌描述',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `is_recommend` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `first_letter` varchar(8) NOT NULL DEFAULT '' COMMENT '首字母',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `first_letter` (`first_letter`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('18', '我工', '', '5,1', 'dd', '', '0', '0', 'W', '1412150892');
INSERT INTO `brand` VALUES ('19', '品牌1', 'adsfa', '4', 'dd', '/upload/1410/0108/09/542bb6aef3d92.jpg', '0', '1', 'P', '1412150958');
INSERT INTO `brand` VALUES ('20', '品牌2', '1', '5', '', '', '0', '0', 'P', '1412151183');

-- ----------------------------
-- Table structure for `brandcate`
-- ----------------------------
DROP TABLE IF EXISTS `brandcate`;
CREATE TABLE `brandcate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '分类名称',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '分类描述',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='品牌分类表';

-- ----------------------------
-- Records of brandcate
-- ----------------------------
INSERT INTO `brandcate` VALUES ('1', '服装', '3', 'dd', '0', '', '1412081304');
INSERT INTO `brandcate` VALUES ('2', '首饰', '2', 'dd', '0', '', '1412144795');
INSERT INTO `brandcate` VALUES ('3', '手表', '0', '', '0', '', '1412144998');
INSERT INTO `brandcate` VALUES ('4', '电子', '0', '', '0', '', '1412145016');
INSERT INTO `brandcate` VALUES ('5', '分类2', '11', 'ddd', '0', '', '1412146337');

-- ----------------------------
-- Table structure for `brandcate_relation`
-- ----------------------------
DROP TABLE IF EXISTS `brandcate_relation`;
CREATE TABLE `brandcate_relation` (
  `brand_id` int(32) NOT NULL DEFAULT '0',
  `cate_id` int(32) NOT NULL DEFAULT '0',
  UNIQUE KEY `brand_cate_id` (`brand_id`,`cate_id`),
  KEY `brand_id` (`brand_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brandcate_relation
-- ----------------------------
INSERT INTO `brandcate_relation` VALUES ('16', '1');
INSERT INTO `brandcate_relation` VALUES ('16', '5');
INSERT INTO `brandcate_relation` VALUES ('18', '1');
INSERT INTO `brandcate_relation` VALUES ('18', '5');
INSERT INTO `brandcate_relation` VALUES ('19', '4');
INSERT INTO `brandcate_relation` VALUES ('20', '5');

-- ----------------------------
-- Table structure for `brandcity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `brandcity_relation`;
CREATE TABLE `brandcity_relation` (
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市id',
  UNIQUE KEY `brand_city_id` (`brand_id`,`city_id`),
  KEY `brand_id` (`brand_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brandcity_relation
-- ----------------------------
INSERT INTO `brandcity_relation` VALUES ('18', '1');
INSERT INTO `brandcity_relation` VALUES ('19', '1');

-- ----------------------------
-- Table structure for `business_circle`
-- ----------------------------
DROP TABLE IF EXISTS `business_circle`;
CREATE TABLE `business_circle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bc_name` varchar(128) NOT NULL DEFAULT '' COMMENT '商圈名称',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(128) NOT NULL DEFAULT '' COMMENT '网址',
  `location` varchar(128) NOT NULL DEFAULT '' COMMENT '经纬度',
  `contact` varchar(128) NOT NULL DEFAULT '' COMMENT '联系方式',
  `introduce` varchar(512) NOT NULL DEFAULT '' COMMENT '摘要简介',
  `traffic_mode` varchar(512) NOT NULL DEFAULT '' COMMENT '交通方式',
  `shopping_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '必逛指数',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市ID',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `address` varchar(512) NOT NULL DEFAULT '' COMMENT '地址',
  `page_keyword` varchar(128) NOT NULL DEFAULT '' COMMENT '关键词',
  `page_description` text COMMENT '描述',
  `if_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `bc_name` (`bc_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商圈表';

-- ----------------------------
-- Records of business_circle
-- ----------------------------
INSERT INTO `business_circle` VALUES ('2', 'asdfsd', '/upload/1410/0813/37/54353e1dd862f.jpg', 'http://www.ai.com', 'asdf', '12312', 'asfasdf', 'asdfsf', '3', '1', '5', 'dsfsdf', 'fsadfs', null, '1', '1', '1412775453');

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(128) NOT NULL DEFAULT '' COMMENT '城市中文名',
  `city_en_name` varchar(128) NOT NULL DEFAULT '' COMMENT '城市英文名',
  `area_id` int(11) NOT NULL DEFAULT '0' COMMENT '地区id',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `weather_url` varchar(256) NOT NULL DEFAULT '' COMMENT '天气url',
  `description` varchar(256) NOT NULL DEFAULT '' COMMENT '描述信息',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `html_name` varchar(64) NOT NULL DEFAULT '' COMMENT '生成静态页名称--暂时无用，预留',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '时尚之都纽约', 'new york', '1', '3', 'affasfasdfasd', 'fsadfasdfdd', '/upload/1409/2812/33/54280020a9979.jpg', '', '1411907616');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('share','outlets','bc') NOT NULL COMMENT '类型，share购物心得，outlets,bc商圈',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应类型的id',
  `content` varchar(512) NOT NULL DEFAULT '' COMMENT '评论内容',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论人，0为匿名',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `type` (`type`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表（购物心得，商圈，outlets）';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(128) NOT NULL DEFAULT '' COMMENT '券名',
  `seller_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `bc_id` int(11) NOT NULL DEFAULT '0' COMMENT '商圈',
  `outlets_id` int(11) NOT NULL DEFAULT '0' COMMENT 'outlets',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `coupon_code` varchar(64) NOT NULL DEFAULT '' COMMENT '优惠券编码',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `expire_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `download_count` int(11) NOT NULL DEFAULT '0' COMMENT '下载数',
  `favorite_count` int(11) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `if_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `seller_id` (`seller_id`),
  KEY `start_time` (`start_time`),
  KEY `expire_time` (`expire_time`),
  KEY `coupon_name` (`coupon_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('1', 'asdfsdaf', '4', '0', '0', '0', '0', '', '', '1391126400', '1451520000', '0', '0', '1', '1412957095');
INSERT INTO `coupon` VALUES ('2', 'asdfsdaf', '5', '0', '0', '0', '0', '', '', '1391126400', '1451520000', '0', '0', '1', '1412957095');
INSERT INTO `coupon` VALUES ('3', 'asdfsdaf', '4', '0', '0', '0', '0', '', '', '1391126400', '1451520000', '0', '0', '1', '1412957109');
INSERT INTO `coupon` VALUES ('4', 'asdfsdaf', '5', '0', '0', '0', '0', '', '', '1391126400', '1451520000', '0', '0', '1', '1412957109');
INSERT INTO `coupon` VALUES ('5', 'fdsf', '4', '0', '0', '0', '0', '', '', '1412553600', '1414540800', '0', '0', '1', '1412957166');
INSERT INTO `coupon` VALUES ('6', 'dfsdf', '4', '0', '0', '0', '0', '/upload/1410/1016/06/5438040bece49.jpg', '', '1413331200', '1413849600', '0', '0', '1', '1412957195');
INSERT INTO `coupon` VALUES ('7', 'fadfas', '4', '2', '1', '1', '0', '/upload/1410/1201/56/5439dfea766b7.jpg', '', '1413158400', '1414540800', '0', '0', '1', '1413079018');

-- ----------------------------
-- Table structure for `couponbrand_relation`
-- ----------------------------
DROP TABLE IF EXISTS `couponbrand_relation`;
CREATE TABLE `couponbrand_relation` (
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  UNIQUE KEY `coupon_brand_id` (`coupon_id`,`brand_id`),
  KEY `coupou_id` (`coupon_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of couponbrand_relation
-- ----------------------------
INSERT INTO `couponbrand_relation` VALUES ('1', '18');
INSERT INTO `couponbrand_relation` VALUES ('1', '19');
INSERT INTO `couponbrand_relation` VALUES ('1', '20');
INSERT INTO `couponbrand_relation` VALUES ('2', '18');
INSERT INTO `couponbrand_relation` VALUES ('2', '19');
INSERT INTO `couponbrand_relation` VALUES ('2', '20');
INSERT INTO `couponbrand_relation` VALUES ('3', '18');
INSERT INTO `couponbrand_relation` VALUES ('3', '19');
INSERT INTO `couponbrand_relation` VALUES ('3', '20');
INSERT INTO `couponbrand_relation` VALUES ('4', '18');
INSERT INTO `couponbrand_relation` VALUES ('4', '19');
INSERT INTO `couponbrand_relation` VALUES ('4', '20');
INSERT INTO `couponbrand_relation` VALUES ('5', '19');
INSERT INTO `couponbrand_relation` VALUES ('6', '19');
INSERT INTO `couponbrand_relation` VALUES ('7', '18');
INSERT INTO `couponbrand_relation` VALUES ('7', '19');
INSERT INTO `couponbrand_relation` VALUES ('7', '20');

-- ----------------------------
-- Table structure for `outlets`
-- ----------------------------
DROP TABLE IF EXISTS `outlets`;
CREATE TABLE `outlets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outlets_name` varchar(128) NOT NULL DEFAULT '' COMMENT 'outlets名称',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市id',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(128) NOT NULL DEFAULT '' COMMENT '网址',
  `location` varchar(128) NOT NULL DEFAULT '' COMMENT '经纬度',
  `contact` varchar(64) NOT NULL DEFAULT '' COMMENT '联系电话',
  `introduce` varchar(512) NOT NULL DEFAULT '' COMMENT '简介',
  `traffic_mode` varchar(512) NOT NULL DEFAULT '' COMMENT '交通方式',
  `shopping_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '必逛指数',
  `seller_count` int(11) NOT NULL DEFAULT '0' COMMENT '商家数量',
  `address` varchar(256) NOT NULL DEFAULT '' COMMENT '地址',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `page_keyword` varchar(128) NOT NULL DEFAULT '' COMMENT '关键字',
  `page_description` text COMMENT '页面描述',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `outlets_name` (`outlets_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outlets
-- ----------------------------
INSERT INTO `outlets` VALUES ('1', 'fsdaf', '1', '', 'http://www.fasdfasf.com', 'saf', 'asf', 'asdfas', 'asdfasf', '1', '11', 'asdf', '1', 'asf', 'asf', '1412474558');
INSERT INTO `outlets` VALUES ('2', 'dfdsf', '1', '', '', 'sadf', 'dfd', '', '', '1', '0', '', '0', '', '', '1412651603');

-- ----------------------------
-- Table structure for `outletsbrand_relation`
-- ----------------------------
DROP TABLE IF EXISTS `outletsbrand_relation`;
CREATE TABLE `outletsbrand_relation` (
  `outlets_id` int(11) NOT NULL DEFAULT '0' COMMENT 'outlets',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  UNIQUE KEY `outlets_brand_id` (`outlets_id`,`brand_id`),
  KEY `outlets_id` (`outlets_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outletsbrand_relation
-- ----------------------------
INSERT INTO `outletsbrand_relation` VALUES ('1', '19');
INSERT INTO `outletsbrand_relation` VALUES ('1', '20');
INSERT INTO `outletsbrand_relation` VALUES ('2', '18');

-- ----------------------------
-- Table structure for `outletsscene_relation`
-- ----------------------------
DROP TABLE IF EXISTS `outletsscene_relation`;
CREATE TABLE `outletsscene_relation` (
  `outlets_id` int(11) NOT NULL DEFAULT '0' COMMENT 'outlets',
  `scene_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  UNIQUE KEY `outlets_scene_id` (`outlets_id`,`scene_id`) USING BTREE,
  KEY `outlets_id` (`outlets_id`),
  KEY `scene_id` (`scene_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outletsscene_relation
-- ----------------------------
INSERT INTO `outletsscene_relation` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `scene`
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `scene_name` varchar(128) NOT NULL DEFAULT '' COMMENT '景点名称',
  `scene_en_name` varchar(128) NOT NULL DEFAULT '' COMMENT '景点英文名称',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市id',
  `location` varchar(128) NOT NULL DEFAULT '' COMMENT '经纬度',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='景点表';

-- ----------------------------
-- Records of scene
-- ----------------------------
INSERT INTO `scene` VALUES ('2', 'tttttt', 'tttttt', '1', '', '0', 'fasdfasdf', '', '1411914284');

-- ----------------------------
-- Table structure for `seller`
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(128) NOT NULL DEFAULT '' COMMENT '商家名称',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属城市',
  `bc_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属商圈',
  `outlets_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属outlets',
  `shopping_index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '必逛指数',
  `big_image` varchar(128) NOT NULL DEFAULT '' COMMENT '大图',
  `image_one` varchar(128) NOT NULL DEFAULT '' COMMENT '小图1',
  `image_two` varchar(128) NOT NULL DEFAULT '' COMMENT '小图2',
  `image_three` varchar(128) NOT NULL DEFAULT '' COMMENT '小图3',
  `image_four` varchar(128) NOT NULL DEFAULT '' COMMENT '小图4',
  `introduce` varchar(512) NOT NULL DEFAULT '' COMMENT '简介',
  `address` varchar(256) NOT NULL DEFAULT '' COMMENT '地址',
  `traffic_mode` varchar(512) NOT NULL DEFAULT '' COMMENT '交通方式',
  `url` varchar(128) NOT NULL DEFAULT '' COMMENT '网址',
  `guide_label` varchar(512) NOT NULL DEFAULT '' COMMENT '引导标注',
  `location` varchar(128) NOT NULL DEFAULT '' COMMENT '经纬度',
  `contact` varchar(64) NOT NULL DEFAULT '' COMMENT '联系方式 ',
  `login_name` varchar(32) NOT NULL DEFAULT '' COMMENT '登录账号',
  `login_pwd` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `page_keyword` varchar(128) NOT NULL DEFAULT '' COMMENT '页面关键词',
  `page_description` varchar(512) NOT NULL DEFAULT '' COMMENT '页面描述',
  `if_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `outlets_id` (`outlets_id`),
  KEY `bc_id` (`bc_id`),
  KEY `seller_name` (`seller_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商家表';

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('4', 'adSA', '1', '2', '1', '5', '/upload/1410/0915/19/5436a79871971.jpg', '', '', '', '', '', '', '', '', '', '', '', 'gogousa1', 'gogousa1', '', '', '1', '1', '1412866929');
INSERT INTO `seller` VALUES ('5', 'adSA', '1', '2', '1', '5', '/upload/1410/0915/19/5436a79871971.jpg', '/upload/1410/1013/33/5437e01d6e28d.jpg', '', '', '', '', '', '', '', '', '', '', 'gogousa1', 'gogousa1', '', '', '1', '1', '1412947997');

-- ----------------------------
-- Table structure for `sellerbrand_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sellerbrand_relation`;
CREATE TABLE `sellerbrand_relation` (
  `seller_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌id',
  UNIQUE KEY `seller_brand_id` (`seller_id`,`brand_id`),
  KEY `seller_id` (`seller_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家品牌表';

-- ----------------------------
-- Records of sellerbrand_relation
-- ----------------------------
INSERT INTO `sellerbrand_relation` VALUES ('1', '19');
INSERT INTO `sellerbrand_relation` VALUES ('5', '18');
INSERT INTO `sellerbrand_relation` VALUES ('5', '19');

-- ----------------------------
-- Table structure for `sellercate`
-- ----------------------------
DROP TABLE IF EXISTS `sellercate`;
CREATE TABLE `sellercate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '分类名称',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '分类描述',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商家分类表';

-- ----------------------------
-- Records of sellercate
-- ----------------------------
INSERT INTO `sellercate` VALUES ('1', '电子产品(3C)', '3', 'sdfsdf', '0', '/upload/1410/0814/02/543544030cf1e.jpg', '1412776963');
INSERT INTO `sellercate` VALUES ('2', '珠宝手表(Jewel&Watch)', '0', '', '0', '', '1412777008');
INSERT INTO `sellercate` VALUES ('3', '户外装备(Outdoor)', '0', 'dd', '0', '', '1412777017');
INSERT INTO `sellercate` VALUES ('4', '婴童(Mom&Kids)', '0', 'ddd', '0', '', '1412777024');
INSERT INTO `sellercate` VALUES ('5', '特色工艺(Crafts)', '0', 'dd', '0', '', '1412777057');

-- ----------------------------
-- Table structure for `sellercate_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sellercate_relation`;
CREATE TABLE `sellercate_relation` (
  `seller_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  UNIQUE KEY `seller_cate_id` (`seller_id`,`cate_id`),
  KEY `seller_id` (`seller_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家分类表';

-- ----------------------------
-- Records of sellercate_relation
-- ----------------------------
INSERT INTO `sellercate_relation` VALUES ('1', '1');
INSERT INTO `sellercate_relation` VALUES ('1', '2');
INSERT INTO `sellercate_relation` VALUES ('2', '1');
INSERT INTO `sellercate_relation` VALUES ('2', '2');
INSERT INTO `sellercate_relation` VALUES ('3', '1');
INSERT INTO `sellercate_relation` VALUES ('3', '2');
INSERT INTO `sellercate_relation` VALUES ('4', '1');
INSERT INTO `sellercate_relation` VALUES ('4', '2');
INSERT INTO `sellercate_relation` VALUES ('5', '1');
INSERT INTO `sellercate_relation` VALUES ('5', '2');

-- ----------------------------
-- Table structure for `sellerscene_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sellerscene_relation`;
CREATE TABLE `sellerscene_relation` (
  `seller_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `scene_id` int(11) NOT NULL DEFAULT '0' COMMENT '景点id',
  UNIQUE KEY `seller_scene_id` (`seller_id`,`scene_id`),
  KEY `seller_id` (`seller_id`),
  KEY `scene_id` (`scene_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家景点表';

-- ----------------------------
-- Records of sellerscene_relation
-- ----------------------------
INSERT INTO `sellerscene_relation` VALUES ('1', '2');
INSERT INTO `sellerscene_relation` VALUES ('5', '2');

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='系统设置表';

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('title', 'Go购全球导购 中国游客出国购物利器 | 出国旅游 出国购物指南 出国购物攻略网站');
INSERT INTO `setting` VALUES ('keyword', 'Go购全球导购  中国游客出国购物利器 | 出国旅游 出国购物指南 出国购物攻略网站');
INSERT INTO `setting` VALUES ('description', 'Go购全球导购——中国游客出国购物利器 | 出国旅游 出国购物指南 出国购物攻略网站');
INSERT INTO `setting` VALUES ('bottom_info', 'Go购全球导购   境外导购神器 注：本网站所出现的商家logo、商品品牌与商标属于各商家及品牌所有<br />\r\ncopyright : 2013 www.gogo7.cn/www.gogo7.cn Go购全球导购  出国购物神器 ALL RIGHTS RESERVED<br />\r\n本网站所有文字及内容的版权归北京世纪正乾科贸有限责任公司所有<br />\r\n');

-- ----------------------------
-- Table structure for `share`
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `tag` varchar(512) NOT NULL DEFAULT '' COMMENT '标签',
  `content` text NOT NULL COMMENT '信息内容',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '信息图片',
  `page_keyword` varchar(128) NOT NULL DEFAULT '' COMMENT '页面关键字',
  `page_description` varchar(512) NOT NULL DEFAULT '' COMMENT '页面描述',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否验证',
  `view_count` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `author_id` int(11) NOT NULL DEFAULT '0' COMMENT '0是管理员，其他是用户id',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物心得表';

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES ('3', 'sdfds', '6', '', '<p>sdfdsdf</p>', '', '', '', '0', '0', '0', '0', '1413293465');

-- ----------------------------
-- Table structure for `sharecate`
-- ----------------------------
DROP TABLE IF EXISTS `sharecate`;
CREATE TABLE `sharecate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '分类名称',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(512) NOT NULL DEFAULT '' COMMENT '分类描述',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='品牌分类表';

-- ----------------------------
-- Records of sharecate
-- ----------------------------
INSERT INTO `sharecate` VALUES ('1', '服装', '3', 'dd', '0', '', '1412081304');
INSERT INTO `sharecate` VALUES ('2', '首饰', '2', 'dd', '0', '', '1412144795');
INSERT INTO `sharecate` VALUES ('3', '手表', '0', '', '0', '', '1412144998');
INSERT INTO `sharecate` VALUES ('4', '电子', '0', '', '0', '', '1412145016');
INSERT INTO `sharecate` VALUES ('5', '分类2', '11', 'ddd', '0', '', '1412146337');
INSERT INTO `sharecate` VALUES ('6', 'faaf', '12', 'sdfsf', '0', '/upload/1410/1412/55/543d1d5a6166a.jpg', '1413291354');

-- ----------------------------
-- Table structure for `singlepage`
-- ----------------------------
DROP TABLE IF EXISTS `singlepage`;
CREATE TABLE `singlepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '类别id',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `update_by` varchar(32) NOT NULL DEFAULT '' COMMENT '更新者',
  `updated` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_by` varchar(32) NOT NULL DEFAULT '' COMMENT '创建者',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of singlepage
-- ----------------------------
INSERT INTO `singlepage` VALUES ('6', '0', 'sdfads', '', '0', '0', 'gogousa', '1411996901', 'gogousa', '1411996901');

-- ----------------------------
-- Table structure for `upload`
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type` int(10) NOT NULL DEFAULT '0' COMMENT '用户类型，管理平台0',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `item_type` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `file` varchar(50) NOT NULL,
  `size` int(10) NOT NULL DEFAULT '0',
  `ext` varchar(5) NOT NULL,
  `thumbs` varchar(32) NOT NULL COMMENT '缩略图',
  `uniqid` varchar(15) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1->被使用，2->已删除',
  `created` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `file` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('1', '0', '0', '0', '0', '53d333cf4650f.jpg', '/upload/1407/2612/51/53d333cf4650f.jpg', '350844', 'jpg', '100x100,50x50', '', '2', '1406350287');
INSERT INTO `upload` VALUES ('2', '0', '0', '0', '0', '53d3343bbed50.png', '/upload/1407/2612/53/53d3343bbed50.png', '373294', 'png', '100x100,50x50', '', '2', '1406350396');
INSERT INTO `upload` VALUES ('3', '0', '0', '0', '0', '53d3522fa48ab.jpg', '/upload/1407/2615/01/53d3522fa48ab.jpg', '350844', 'jpg', '100x100,50x50', '', '1', '1406358063');
INSERT INTO `upload` VALUES ('4', '0', '0', '0', '0', '53d355924f8a5.jpg', '/upload/1407/2615/15/53d355924f8a5.jpg', '350844', 'jpg', '100x100,50x50', '', '2', '1406358930');
INSERT INTO `upload` VALUES ('5', '0', '0', '0', '0', '53d35b9d7ea77.jpg', '/upload/1407/2615/41/53d35b9d7ea77.jpg', '350844', 'jpg', '100x100,50x50', '', '2', '1406360477');
INSERT INTO `upload` VALUES ('6', '0', '0', '0', '0', '53d35bce5834c.jpg', '/upload/1407/2615/42/53d35bce5834c.jpg', '350844', 'jpg', '100x100,50x50', '', '1', '1406360526');
INSERT INTO `upload` VALUES ('7', '0', '0', '0', '0', '5426267d00401.jpg', '/upload/1409/2702/52/5426267d00401.jpg', '879394', 'jpg', '80x80,60x60', '', '1', '1411786365');
INSERT INTO `upload` VALUES ('8', '0', '0', '0', '0', '542626bf1d10d.jpg', '/upload/1409/2702/53/542626bf1d10d.jpg', '879394', 'jpg', '80x80,60x60', '', '2', '1411786431');
INSERT INTO `upload` VALUES ('9', '0', '0', '0', '0', '5426cde5eff67.jpg', '/upload/1409/2714/47/5426cde5eff67.jpg', '879394', 'jpg', '80x80,60x60', '', '2', '1411829222');
INSERT INTO `upload` VALUES ('10', '0', '0', '0', '0', '5426cefef0165.jpg', '/upload/1409/2714/51/5426cefef0165.jpg', '879394', 'jpg', '80x80,60x60', '', '2', '1411829503');
INSERT INTO `upload` VALUES ('11', '0', '0', '0', '0', '5427fd3d95207.jpg', '/upload/1409/2812/21/5427fd3d95207.jpg', '879394', 'jpg', '80x80,60x60', '', '1', '1411906877');
INSERT INTO `upload` VALUES ('12', '0', '0', '0', '0', '5427fd638b322.jpg', '/upload/1409/2812/21/5427fd638b322.jpg', '366221', 'jpg', '80x80,60x60', '', '1', '1411906915');
INSERT INTO `upload` VALUES ('13', '0', '0', '0', '0', '54280020a9979.jpg', '/upload/1409/2812/33/54280020a9979.jpg', '430160', 'jpg', '', '', '1', '1411907616');
INSERT INTO `upload` VALUES ('14', '0', '0', '0', '0', '5428195f1d130.jpg', '/upload/1409/2814/21/5428195f1d130.jpg', '430160', 'jpg', '', '', '2', '1411914079');
INSERT INTO `upload` VALUES ('15', '0', '0', '0', '0', '5429538b755a6.jpg', '/upload/1409/2912/41/5429538b755a6.jpg', '119782', 'jpg', '', '', '1', '1411994507');
INSERT INTO `upload` VALUES ('16', '0', '0', '0', '0', '542955941f93f.jpg', '/upload/1409/2912/50/542955941f93f.jpg', '94075', 'jpg', '', '', '1', '1411995028');
INSERT INTO `upload` VALUES ('17', '0', '0', '0', '0', '5429565275485.jpg', '/upload/1409/2912/53/5429565275485.jpg', '92173', 'jpg', '', '', '1', '1411995218');
INSERT INTO `upload` VALUES ('18', '0', '0', '0', '0', '542959a93cb30.jpg', '/upload/1409/2913/07/542959a93cb30.jpg', '132131', 'jpg', '', '', '1', '1411996073');
INSERT INTO `upload` VALUES ('19', '0', '0', '0', '0', '542bb3955e5eb.jpg', '/upload/1410/0107/56/542bb3955e5eb.jpg', '430160', 'jpg', '', '', '1', '1412150165');
INSERT INTO `upload` VALUES ('20', '0', '0', '0', '0', '542bb6aef3d92.jpg', '/upload/1410/0108/09/542bb6aef3d92.jpg', '430160', 'jpg', '', '', '1', '1412150959');
INSERT INTO `upload` VALUES ('21', '0', '0', '0', '0', '5433593ecc820.jpg', '/upload/1410/0703/08/5433593ecc820.jpg', '430160', 'jpg', '100x100,50x50', '', '2', '1412651327');
INSERT INTO `upload` VALUES ('23', '0', '0', '0', '0', '54353e1dd862f.jpg', '/upload/1410/0813/37/54353e1dd862f.jpg', '430160', 'jpg', '100x100,50x50', '', '1', '1412775454');
INSERT INTO `upload` VALUES ('24', '0', '0', '0', '0', '543544030cf1e.jpg', '/upload/1410/0814/02/543544030cf1e.jpg', '430160', 'jpg', '', '', '1', '1412776963');
INSERT INTO `upload` VALUES ('25', '0', '0', '0', '0', '54369d96cfa9f.jpg', '/upload/1410/0914/37/54369d96cfa9f.jpg', '430160', 'jpg', '80x80,60x60', '', '1', '1412865431');
INSERT INTO `upload` VALUES ('26', '0', '0', '0', '0', '54369da77822f.jpg', '/upload/1410/0914/37/54369da77822f.jpg', '366221', 'jpg', '80x80,60x60', '', '2', '1412865447');
INSERT INTO `upload` VALUES ('27', '0', '0', '0', '0', '54369da7b936a.jpg', '/upload/1410/0914/37/54369da7b936a.jpg', '255705', 'jpg', '80x80,60x60', '', '1', '1412865447');
INSERT INTO `upload` VALUES ('28', '0', '0', '0', '0', '54369da7e2f6f.jpg', '/upload/1410/0914/37/54369da7e2f6f.jpg', '1455575', 'jpg', '80x80,60x60', '', '1', '1412865448');
INSERT INTO `upload` VALUES ('29', '0', '0', '0', '0', '54369da8aa588.jpg', '/upload/1410/0914/37/54369da8aa588.jpg', '398648', 'jpg', '80x80,60x60', '', '1', '1412865448');
INSERT INTO `upload` VALUES ('30', '0', '0', '0', '0', '5436a79871971.jpg', '/upload/1410/0915/19/5436a79871971.jpg', '255705', 'jpg', '80x80,60x60', '', '1', '1412867992');
INSERT INTO `upload` VALUES ('31', '0', '0', '0', '0', '5437e01d6e28d.jpg', '/upload/1410/1013/33/5437e01d6e28d.jpg', '366221', 'jpg', '80x80,60x60', '', '1', '1412947997');
INSERT INTO `upload` VALUES ('35', '0', '0', '0', '0', '5438040bece49.jpg', '/upload/1410/1016/06/5438040bece49.jpg', '366221', 'jpg', '', '', '1', '1412957195');
INSERT INTO `upload` VALUES ('36', '0', '0', '0', '0', '5439dfea766b7.jpg', '/upload/1410/1201/56/5439dfea766b7.jpg', '430160', 'jpg', '', '', '1', '1413079018');
INSERT INTO `upload` VALUES ('37', '0', '0', '0', '0', '5439e0896fd76.jpg', '/upload/1410/1201/59/5439e0896fd76.jpg', '430160', 'jpg', '', '', '1', '1413079177');
INSERT INTO `upload` VALUES ('38', '0', '0', '0', '0', '5439f7f2d8bd1.jpg', '/upload/1410/1203/39/5439f7f2d8bd1.jpg', '255705', 'jpg', '100x100,50x50', '', '1', '1413085171');
INSERT INTO `upload` VALUES ('39', '0', '0', '0', '0', '543a0f4186179.jpg', '/upload/1410/1205/18/543a0f4186179.jpg', '430160', 'jpg', '80x80,60x60', '', '2', '1413091137');
INSERT INTO `upload` VALUES ('40', '0', '0', '0', '0', '543a9a6bbad5d.jpg', '/upload/1410/1215/12/543a9a6bbad5d.jpg', '430160', 'jpg', '', '', '2', '1413126763');
INSERT INTO `upload` VALUES ('41', '0', '0', '0', '0', '543a9a8bdcfd1.jpg', '/upload/1410/1215/13/543a9a8bdcfd1.jpg', '430160', 'jpg', '', '', '2', '1413126795');
INSERT INTO `upload` VALUES ('42', '0', '0', '0', '0', '543bdd6a411d1.jpg', '/upload/1410/1314/10/543bdd6a411d1.jpg', '430160', 'jpg', '80x80,60x60', '', '2', '1413209450');
INSERT INTO `upload` VALUES ('43', '0', '0', '0', '0', '543be35edc786.jpg', '/upload/1410/1314/36/543be35edc786.jpg', '430160', 'jpg', '80x80,60x60', '', '2', '1413210975');
INSERT INTO `upload` VALUES ('44', '0', '0', '0', '0', '543beb8126ae9.jpg', '/upload/1410/1315/10/543beb8126ae9.jpg', '430160', 'jpg', '80x80,60x60', '', '1', '1413213057');
INSERT INTO `upload` VALUES ('45', '0', '0', '0', '0', '543bee2e115f0.jpg', '/upload/1410/1315/22/543bee2e115f0.jpg', '430160', 'jpg', '', '', '2', '1413213742');
INSERT INTO `upload` VALUES ('46', '0', '0', '0', '0', '543bee38c81f8.jpg', '/upload/1410/1315/22/543bee38c81f8.jpg', '430160', 'jpg', '', '', '2', '1413213752');
INSERT INTO `upload` VALUES ('47', '0', '0', '0', '0', '543bee3e1a7b2.jpg', '/upload/1410/1315/22/543bee3e1a7b2.jpg', '366221', 'jpg', '', '', '2', '1413213758');
INSERT INTO `upload` VALUES ('48', '0', '0', '0', '0', '543bee4511272.jpg', '/upload/1410/1315/22/543bee4511272.jpg', '255705', 'jpg', '', '', '1', '1413213765');
INSERT INTO `upload` VALUES ('49', '0', '0', '0', '0', '543d1d5a6166a.jpg', '/upload/1410/1412/55/543d1d5a6166a.jpg', '430160', 'jpg', '80x80,60x60', '', '1', '1413291354');
INSERT INTO `upload` VALUES ('50', '0', '0', '0', '0', '543d20fd62f69.jpg', '/upload/1410/1413/11/543d20fd62f69.jpg', '430160', 'jpg', '', '', '2', '1413292285');
INSERT INTO `upload` VALUES ('51', '0', '0', '0', '0', '543d214d50f98.jpg', '/upload/1410/1413/12/543d214d50f98.jpg', '119782', 'jpg', '', '', '1', '1413292365');
INSERT INTO `upload` VALUES ('52', '0', '0', '0', '0', '543d2165bd9a2.jpg', '/upload/1410/1413/13/543d2165bd9a2.jpg', '430160', 'jpg', '', '', '2', '1413292389');
INSERT INTO `upload` VALUES ('53', '0', '0', '0', '0', '543d216cd91c4.jpg', '/upload/1410/1413/13/543d216cd91c4.jpg', '430160', 'jpg', '', '', '2', '1413292396');
INSERT INTO `upload` VALUES ('54', '0', '0', '0', '0', '543d2175c22d4.jpg', '/upload/1410/1413/13/543d2175c22d4.jpg', '430160', 'jpg', '', '', '2', '1413292405');
INSERT INTO `upload` VALUES ('55', '0', '0', '0', '0', '543d21914b607.jpg', '/upload/1410/1413/13/543d21914b607.jpg', '430160', 'jpg', '', '', '2', '1413292433');
INSERT INTO `upload` VALUES ('56', '0', '0', '0', '0', '543d2198aef46.jpg', '/upload/1410/1413/14/543d2198aef46.jpg', '1455575', 'jpg', '', '', '2', '1413292440');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT '' COMMENT '用户名',
  `real_name` varchar(32) DEFAULT '' COMMENT '真实姓名',
  `password` char(32) DEFAULT '' COMMENT '密码',
  `gender` tinyint(1) DEFAULT '0' COMMENT '性别',
  `tel` varchar(32) DEFAULT '' COMMENT '电话',
  `msn` varchar(64) DEFAULT '' COMMENT 'MSN',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱',
  `qq` varchar(16) DEFAULT '' COMMENT 'QQ',
  `facebook` varchar(64) DEFAULT '' COMMENT 'facebook',
  `address` varchar(512) DEFAULT '' COMMENT '地址',
  `last_login_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `avatar` varchar(128) DEFAULT '' COMMENT '头像',
  `area_code` varchar(32) DEFAULT '0' COMMENT '省',
  `type` varchar(50) DEFAULT '' COMMENT '类型',
  `created` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zw@163.com', '', '111', '1', '', '', 'zw@163.com', '', '', '', '0', '0', '', '', '', '1366393085');
INSERT INTO `user` VALUES ('2', 'fk@123.com', '', '123', '1', '', '', 'fk@123.com', '', '', '', '1406112310', '7', '', '', '', '1366442601');
INSERT INTO `user` VALUES ('3', 'test@test.com', '', 'test@test.com', '1', '', '', 'test@test.com', '', '', '', '1405096916', '1', '', '', '', '1366988590');
INSERT INTO `user` VALUES ('4', 'test@test.com.cn', '', 'test@test.com.cn', '1', '', '', 'test@test.com.cn', '', '', '', '0', '0', '', '', '', '1367553389');
INSERT INTO `user` VALUES ('5', 'ivyliuj@gmail.com', '', 'gogousa888888', '2', '', '', 'ivyliuj@gmail.com', '', '', '', '0', '0', '', '', '', '1368584422');
INSERT INTO `user` VALUES ('6', 'xiaozhu642900@163.com', 'xiaozhu642900', 'bo773800', '2', '', '', 'xiaozhu642900@163.com', '', '', '', '1387782436', '9', '52201b2400c9f.jpg', '', '', '1369383205');
INSERT INTO `user` VALUES ('7', '593653506@qq.com', '', '6168389', '2', '', '', '593653506@qq.com', '', '', '', '0', '0', '', '', '', '1369534353');
INSERT INTO `user` VALUES ('8', '1185794337@qq.com', '', '780305', '2', '', '', '1185794337@qq.com', '', '', '', '1379919557', '5', '', '', '', '1372337730');
INSERT INTO `user` VALUES ('9', 'fk@dd.com', '', '123', '1', '', '', 'fk@dd.com', '', '', '', '0', '0', '', '', '', '1372438953');
INSERT INTO `user` VALUES ('10', 'sd@123.com', '', '123', '1', '', '', 'sd@123.com', '', '', '', '0', '0', '', '', '', '1372458139');
INSERT INTO `user` VALUES ('11', 'sohonyc@gmail.com', '', '3742212', '1', '', '', 'sohonyc@gmail.com', '', '', '', '0', '0', '', '', '', '1372863348');
INSERT INTO `user` VALUES ('12', 'ken@123.com', '', '123', '1', '', '', 'ken@123.com', '', '', '', '0', '0', '', '', '', '1374388731');
INSERT INTO `user` VALUES ('13', 'motal@21cn.com', '', '780305', '2', '', '', 'motal@21cn.com', '', '', '', '1379921890', '1', '', '', '', '1374588395');
INSERT INTO `user` VALUES ('14', 'rdmedia@sina.cn', '', '3333333', '2', '', '', 'rdmedia@sina.cn', '', '', '', '0', '0', '', '', '', '1374590550');
INSERT INTO `user` VALUES ('15', 'couesc@139.com', '', 'CouesLau7', '1', '', '', 'couesc@139.com', '', '', '', '0', '0', '', '', '', '1374940612');
INSERT INTO `user` VALUES ('16', 'hiioo@qq.com', '', '123456aa', '1', '', '', 'hiioo@qq.com', '', '', '', '1378364862', '5', '', '', '', '1375329436');
INSERT INTO `user` VALUES ('17', '289747370@qq.com', '刘自辉', 'a2358869', '1', '', '', '289747370@qq.com', '289747370', '', '', '1409369860', '22', '521cd4b84db5d.jpg', '', '', '1377615289');
INSERT INTO `user` VALUES ('18', '123456@163.com', '', '123456', '1', '', '', '123456@163.com', '', '', '', '1378035685', '1', '', '', '', '1378035685');
INSERT INTO `user` VALUES ('19', 'hiioo@163.com', '', '123456aa', '1', '', '', 'hiioo@163.com', '', '', '', '1405347913', '9', '', '', '', '1378364896');
INSERT INTO `user` VALUES ('20', '359403011@qq.com', '', 'a2358869', '1', '', '', '359403011@qq.com', '', '', '', '1378400458', '2', '', '', '', '1378394370');
INSERT INTO `user` VALUES ('21', '461121182@qq.com', '', '780305', '2', '', '', '461121182@qq.com', '', '', '', '1379920006', '1', '', '', '', '1379920006');
INSERT INTO `user` VALUES ('22', '31611058@qq.com', '', '780305', '2', '', '', '31611058@qq.com', '', '', '', '1379992745', '1', '', '', '', '1379992745');
INSERT INTO `user` VALUES ('23', 'gla.mo.rou.sn.dp.m@gmail.com\r\n', '', '3fdlbvX43U', '1', '', '', 'gla.mo.rou.sn.dp.m@gmail.com\r\n', '', '', '', '0', '0', '', '', '', '1380750267');
INSERT INTO `user` VALUES ('24', 'g.l.amo.r.ou.s.n.d.pm@gmail.co', '', '3fdlbvX43U', '1', '', '', 'g.l.amo.r.ou.s.n.d.pm@gmail.com\r\n', '', '', '', '0', '0', '', '', '', '1380750267');
INSERT INTO `user` VALUES ('25', 'g.l.amor.o.u.s.n.d.p.m@gmail.c', '', '3fdlbvX43U', '1', '', '', 'g.l.amor.o.u.s.n.d.p.m@gmail.com\r\n', '', '', '', '0', '0', '', '', '', '1380750267');
INSERT INTO `user` VALUES ('26', 'g.l.am.or.o.u.s.n.dpm@gmail.co', '', '3fdlbvX43U', '1', '', '', 'g.l.am.or.o.u.s.n.dpm@gmail.com\r\n', '', '', '', '0', '0', '', '', '', '1380750277');
INSERT INTO `user` VALUES ('27', 'n.ids.i.ai.sn0.45510@gmail.com', '', 'k47Rizxt2G', '1', '', '', 'n.ids.i.ai.sn0.45510@gmail.com ', '', '', '', '0', '0', '', '', '', '1381452065');
INSERT INTO `user` VALUES ('28', 'b.r.i.e.f.l.y.r.m.rv@gmail.com', '', 'otceQ798nC', '1', '', '', 'b.r.i.e.f.l.y.r.m.rv@gmail.com', '', '', '', '0', '0', '', '', '', '1381461207');
INSERT INTO `user` VALUES ('29', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1381719675');
INSERT INTO `user` VALUES ('30', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1381719675');
INSERT INTO `user` VALUES ('31', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1381723292');
INSERT INTO `user` VALUES ('32', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1381723296');
INSERT INTO `user` VALUES ('33', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1381723317');
INSERT INTO `user` VALUES ('34', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1382419036');
INSERT INTO `user` VALUES ('35', 'miragliaefx@hotmail.com', '', '69ijgfL3uX', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1382516832');
INSERT INTO `user` VALUES ('36', 'vianoyoff@hotmail.com', '', 'ce4oE6w1tX', '1', '', '', 'vianoyoff@hotmail.com', '', '', '', '0', '0', '', '', '', '1384158266');
INSERT INTO `user` VALUES ('37', 'vianoyoff@hotmail.com', '', 'ce4oE6w1tX', '1', '', '', 'vianoyoff@hotmail.com', '', '', '', '0', '0', '', '', '', '1384240107');
INSERT INTO `user` VALUES ('38', 'vianoyoff@hotmail.com', '', 'ce4oE6w1tX', '1', '', '', 'vianoyoff@hotmail.com', '', '', '', '0', '0', '', '', '', '1384351091');
INSERT INTO `user` VALUES ('39', 'ljh1393@hotmail.com', '', '1990829', '2', '', '', 'ljh1393@hotmail.com', '', '', '', '1404741676', '3', '', '', '', '1384413071');
INSERT INTO `user` VALUES ('40', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384543202');
INSERT INTO `user` VALUES ('41', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384543203');
INSERT INTO `user` VALUES ('42', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384543204');
INSERT INTO `user` VALUES ('43', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384614569');
INSERT INTO `user` VALUES ('44', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384614569');
INSERT INTO `user` VALUES ('45', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384614570');
INSERT INTO `user` VALUES ('46', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384635220');
INSERT INTO `user` VALUES ('47', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384635221');
INSERT INTO `user` VALUES ('48', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384635222');
INSERT INTO `user` VALUES ('49', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384699925');
INSERT INTO `user` VALUES ('50', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384699925');
INSERT INTO `user` VALUES ('51', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384699926');
INSERT INTO `user` VALUES ('52', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384768805');
INSERT INTO `user` VALUES ('53', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384768805');
INSERT INTO `user` VALUES ('54', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384768805');
INSERT INTO `user` VALUES ('55', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384816275');
INSERT INTO `user` VALUES ('56', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384816276');
INSERT INTO `user` VALUES ('57', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384816277');
INSERT INTO `user` VALUES ('58', 'hsingkungh@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'hsingkungh@hotmail.com', '', '', '', '0', '0', '', '', '', '1384863782');
INSERT INTO `user` VALUES ('59', 'hsingkungh@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'hsingkungh@hotmail.com', '', '', '', '0', '0', '', '', '', '1384863782');
INSERT INTO `user` VALUES ('60', 'hsingkungh@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'hsingkungh@hotmail.com', '', '', '', '0', '0', '', '', '', '1384863782');
INSERT INTO `user` VALUES ('61', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384870306');
INSERT INTO `user` VALUES ('62', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384870306');
INSERT INTO `user` VALUES ('63', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384870306');
INSERT INTO `user` VALUES ('64', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384954432');
INSERT INTO `user` VALUES ('65', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384954433');
INSERT INTO `user` VALUES ('66', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1384954435');
INSERT INTO `user` VALUES ('67', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384993048');
INSERT INTO `user` VALUES ('68', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384993050');
INSERT INTO `user` VALUES ('69', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1384993051');
INSERT INTO `user` VALUES ('70', 'irwin810@hotmail.com', 'wangchaoirwin ', '041080', '1', '', '', 'irwin810@hotmail.com', '', '', '', '1385010660', '1', '528d9617e2328.JPG', '北京', '', '1385010660');
INSERT INTO `user` VALUES ('71', 'paullbede@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'paullbede@hotmail.com', '', '', '', '0', '0', '', '', '', '1385028399');
INSERT INTO `user` VALUES ('72', 'paullbede@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'paullbede@hotmail.com', '', '', '', '0', '0', '', '', '', '1385028399');
INSERT INTO `user` VALUES ('73', 'paullbede@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'paullbede@hotmail.com', '', '', '', '0', '0', '', '', '', '1385028401');
INSERT INTO `user` VALUES ('74', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1385030677');
INSERT INTO `user` VALUES ('75', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1385030678');
INSERT INTO `user` VALUES ('76', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1385030678');
INSERT INTO `user` VALUES ('77', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1385118673');
INSERT INTO `user` VALUES ('78', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1385118675');
INSERT INTO `user` VALUES ('79', 'lamiadxu@hotmail.com', '', '3diHc46brN', '1', '', '', 'lamiadxu@hotmail.com', '', '', '', '0', '0', '', '', '', '1385118685');
INSERT INTO `user` VALUES ('80', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1385172190');
INSERT INTO `user` VALUES ('81', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1385172190');
INSERT INTO `user` VALUES ('82', 'haweenmx@hotmail.com', '', '5u4dT7hiwC', '1', '', '', 'haweenmx@hotmail.com', '', '', '', '0', '0', '', '', '', '1385172190');
INSERT INTO `user` VALUES ('83', 'catcatliang@msn.com', '', '3950842', '2', '', '', 'catcatliang@msn.com', '', '', '', '1385410570', '1', '', '', '', '1385410570');
INSERT INTO `user` VALUES ('84', 'kayido7@gmail.com', '', '3150296', '2', '', '', 'kayido7@gmail.com', '', '', '', '1385414351', '2', '', '', '', '1385414221');
INSERT INTO `user` VALUES ('85', 'jacobinanlj@hotmail.com', '', 'uz3h2na7ZE', '1', '', '', 'jacobinanlj@hotmail.com', '', '', '', '0', '0', '', '', '', '1385992560');
INSERT INTO `user` VALUES ('86', '894635334@qq.com', '', 'hyx990712', '2', '', '', '894635334@qq.com', '', '', '', '1387940383', '1', '', '', '', '1387940383');
INSERT INTO `user` VALUES ('87', 'tanklao@gmail.com', '', 'ggmgPP1984', '1', '', '', 'tanklao@gmail.com', '', '', '', '1387992607', '1', '', '', '', '1387992607');
INSERT INTO `user` VALUES ('88', '1792609000@qq.com', '', 'dsjwyq520', '2', '', '', '1792609000@qq.com', '1792609000', '', '', '1388706698', '1', '', '', '', '1388706698');
INSERT INTO `user` VALUES ('89', '33822791@qq.com', '', '329000', '2', '', '', '33822791@qq.com', '', '', '', '1389238977', '1', '', '', '', '1389238977');
INSERT INTO `user` VALUES ('90', '953047484@qq.com', '宝贝', 'linLT15880617246', '2', '', '', '953047484@qq.com', '953047484', '', '', '1390137166', '2', '52dbcf7dbbd05.jpg', '福建', '', '1390137110');
INSERT INTO `user` VALUES ('91', 'xuhongdaiwei@163.com', '', 'woaidaiqiangeng', '2', '', '', 'xuhongdaiwei@163.com', '', '', '', '1390279304', '2', '', '', '', '1390276358');
INSERT INTO `user` VALUES ('92', '8780xln@163.com', '', '910900', '2', '', '', '8780xln@163.com', '', '', '', '1390382581', '3', '', '', '', '1390381182');
INSERT INTO `user` VALUES ('93', '415086136@qq.com', '', '87358000', '1', '', '', '415086136@qq.com', '', '', '', '1390895426', '1', '', '', '', '1390895426');
INSERT INTO `user` VALUES ('94', '1169155579@qq.com', '', 'asltkv4', '2', '', '', '1169155579@qq.com', '', '', '', '1391315773', '1', '', '', '', '1391315773');
INSERT INTO `user` VALUES ('95', 'xscbp258@sina.com', '', '970429', '2', '', '', 'xscbp258@sina.com', '', '', '', '1393733106', '2', '', '', '', '1393733036');
INSERT INTO `user` VALUES ('96', 'dqy1014@sina.cn', '', '354004283', '1', '', '', 'dqy1014@sina.cn', '', '', '', '1395216568', '2', '', '', '', '1394595316');
INSERT INTO `user` VALUES ('97', '490045887@qq.com', '', 'daiyimeng88', '1', '', '', '490045887@qq.com', '', '', '', '1394694668', '1', '', '', '', '1394694668');
INSERT INTO `user` VALUES ('98', 'smiledust@hotmail.com', '', 'young13', '1', '', '', 'smiledust@hotmail.com', '', '', '', '1395018744', '1', '', '', '', '1395018744');
INSERT INTO `user` VALUES ('99', 'etehui992299@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'etehui992299@hotmail.com', '', '', '', '0', '0', '', '', '', '1395030331');
INSERT INTO `user` VALUES ('100', 'etehui992299@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'etehui992299@hotmail.com', '', '', '', '0', '0', '', '', '', '1395060194');
INSERT INTO `user` VALUES ('101', 'etehui992299@hotmail.com', '', 'vEf6g55frZ', '1', '', '', 'etehui992299@hotmail.com', '', '', '', '0', '0', '', '', '', '1395090208');
INSERT INTO `user` VALUES ('102', 'Improng@hotmail.com', 'Ong', '00star', '2', '', '', 'Improng@hotmail.com', '', '', '', '1395106320', '1', '', '', '', '1395106320');
INSERT INTO `user` VALUES ('103', 'miragliaefx@hotmail.com', '', 'frDud6x75A', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1395648474');
INSERT INTO `user` VALUES ('104', 'dowerikvhn@hotmail.com', '', '6zv49KpuyE', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1395677604');
INSERT INTO `user` VALUES ('105', 'miragliaefx@hotmail.com', '', 'frDud6x75A', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1395719070');
INSERT INTO `user` VALUES ('106', 'dowerikvhn@hotmail.com', '', '6zv49KpuyE', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1395730618');
INSERT INTO `user` VALUES ('107', 'miragliaefx@hotmail.com', '', 'frDud6x75A', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1395784650');
INSERT INTO `user` VALUES ('108', 'dowerikvhn@hotmail.com', '', '6zv49KpuyE', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1395788989');
INSERT INTO `user` VALUES ('109', 'dowerikvhn@hotmail.com', '', '6zv49KpuyE', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1395842667');
INSERT INTO `user` VALUES ('110', 'miragliaefx@hotmail.com', '', 'frDud6x75A', '1', '', '', 'miragliaefx@hotmail.com', '', '', '', '0', '0', '', '', '', '1395850546');
INSERT INTO `user` VALUES ('111', '13585122999@139.com', '', 'xuyang957195', '2', '', '', '13585122999@139.com', '', '', '', '1396990199', '1', '', '', '', '1396990199');
INSERT INTO `user` VALUES ('112', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397046593');
INSERT INTO `user` VALUES ('113', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397049717');
INSERT INTO `user` VALUES ('114', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397085382');
INSERT INTO `user` VALUES ('115', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397088550');
INSERT INTO `user` VALUES ('116', '591931180@qq.com', '', 'wxl7777', '1', '', '', '591931180@qq.com', '', '', '', '1397096990', '1', '', '', '', '1397096990');
INSERT INTO `user` VALUES ('117', '925701554@qq.com', '', 'mc546208', '1', '', '', '925701554@qq.com', '', '', '', '1397101000', '1', '', '', '', '1397101000');
INSERT INTO `user` VALUES ('118', 'dowerikvhn@hotmail.com', '', '1h7lgH8prR', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1397117533');
INSERT INTO `user` VALUES ('119', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397125110');
INSERT INTO `user` VALUES ('120', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397125336');
INSERT INTO `user` VALUES ('121', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397128193');
INSERT INTO `user` VALUES ('122', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397147049');
INSERT INTO `user` VALUES ('123', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397162900');
INSERT INTO `user` VALUES ('124', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397166042');
INSERT INTO `user` VALUES ('125', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397166440');
INSERT INTO `user` VALUES ('126', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397189132');
INSERT INTO `user` VALUES ('127', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397189726');
INSERT INTO `user` VALUES ('128', '672693378@qq.com', '', '81712857', '1', '', '', '672693378@qq.com', '', '', '', '1397193633', '1', '', '', '', '1397193633');
INSERT INTO `user` VALUES ('129', 'dowerikvhn@hotmail.com', '', '1h7lgH8prR', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1397195903');
INSERT INTO `user` VALUES ('130', '158294417@qq.com', '', '88526081', '1', '', '', '158294417@qq.com', '', '', '', '1397400341', '2', '', '', '', '1397202125');
INSERT INTO `user` VALUES ('131', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397204359');
INSERT INTO `user` VALUES ('132', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397207390');
INSERT INTO `user` VALUES ('133', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397210190');
INSERT INTO `user` VALUES ('134', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397211159');
INSERT INTO `user` VALUES ('135', 'kuchaphd@hotmail.com', '', '15ualfI9uN', '1', '', '', 'kuchaphd@hotmail.com', '', '', '', '0', '0', '', '', '', '1397231509');
INSERT INTO `user` VALUES ('136', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397233005');
INSERT INTO `user` VALUES ('137', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397242224');
INSERT INTO `user` VALUES ('138', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397245086');
INSERT INTO `user` VALUES ('139', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397255983');
INSERT INTO `user` VALUES ('140', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397275652');
INSERT INTO `user` VALUES ('141', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397276147');
INSERT INTO `user` VALUES ('142', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397279010');
INSERT INTO `user` VALUES ('143', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397300285');
INSERT INTO `user` VALUES ('144', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397316170');
INSERT INTO `user` VALUES ('145', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397319097');
INSERT INTO `user` VALUES ('146', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397322345');
INSERT INTO `user` VALUES ('147', 'dowerikvhn@hotmail.com', '', '1h7lgH8prR', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1397327562');
INSERT INTO `user` VALUES ('148', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397341960');
INSERT INTO `user` VALUES ('149', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397345229');
INSERT INTO `user` VALUES ('150', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397355307');
INSERT INTO `user` VALUES ('151', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397358262');
INSERT INTO `user` VALUES ('152', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397369606');
INSERT INTO `user` VALUES ('153', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397389570');
INSERT INTO `user` VALUES ('154', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397392473');
INSERT INTO `user` VALUES ('155', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397395521');
INSERT INTO `user` VALUES ('156', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397411366');
INSERT INTO `user` VALUES ('157', 'fj0913@126.con', '', 'fujing3190', '2', '', '', 'fj0913@126.con', '', '', '', '1398217773', '2', '', '', '', '1397445220');
INSERT INTO `user` VALUES ('158', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397454761');
INSERT INTO `user` VALUES ('159', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397455353');
INSERT INTO `user` VALUES ('160', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397458202');
INSERT INTO `user` VALUES ('161', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397463258');
INSERT INTO `user` VALUES ('162', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397469834');
INSERT INTO `user` VALUES ('163', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397469847');
INSERT INTO `user` VALUES ('164', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397477022');
INSERT INTO `user` VALUES ('165', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397477028');
INSERT INTO `user` VALUES ('166', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397484493');
INSERT INTO `user` VALUES ('167', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397484493');
INSERT INTO `user` VALUES ('168', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397491674');
INSERT INTO `user` VALUES ('169', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397491678');
INSERT INTO `user` VALUES ('170', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397494632');
INSERT INTO `user` VALUES ('171', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397498966');
INSERT INTO `user` VALUES ('172', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397498986');
INSERT INTO `user` VALUES ('173', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397502601');
INSERT INTO `user` VALUES ('174', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397504132');
INSERT INTO `user` VALUES ('175', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397506275');
INSERT INTO `user` VALUES ('176', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397506372');
INSERT INTO `user` VALUES ('177', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397513685');
INSERT INTO `user` VALUES ('178', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397521034');
INSERT INTO `user` VALUES ('179', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397521051');
INSERT INTO `user` VALUES ('180', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397528264');
INSERT INTO `user` VALUES ('181', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397528266');
INSERT INTO `user` VALUES ('182', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397535640');
INSERT INTO `user` VALUES ('183', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397535673');
INSERT INTO `user` VALUES ('184', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397541124');
INSERT INTO `user` VALUES ('185', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397542102');
INSERT INTO `user` VALUES ('186', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397542940');
INSERT INTO `user` VALUES ('187', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397542940');
INSERT INTO `user` VALUES ('188', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397550264');
INSERT INTO `user` VALUES ('189', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397550277');
INSERT INTO `user` VALUES ('190', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397557588');
INSERT INTO `user` VALUES ('191', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397557592');
INSERT INTO `user` VALUES ('192', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397564973');
INSERT INTO `user` VALUES ('193', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397564996');
INSERT INTO `user` VALUES ('194', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397572337');
INSERT INTO `user` VALUES ('195', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397572352');
INSERT INTO `user` VALUES ('196', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397578801');
INSERT INTO `user` VALUES ('197', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397579516');
INSERT INTO `user` VALUES ('198', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397579563');
INSERT INTO `user` VALUES ('199', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397579564');
INSERT INTO `user` VALUES ('200', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397586758');
INSERT INTO `user` VALUES ('201', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397594030');
INSERT INTO `user` VALUES ('202', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397594046');
INSERT INTO `user` VALUES ('203', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397601360');
INSERT INTO `user` VALUES ('204', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397601375');
INSERT INTO `user` VALUES ('205', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397608782');
INSERT INTO `user` VALUES ('206', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397608842');
INSERT INTO `user` VALUES ('207', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397612956');
INSERT INTO `user` VALUES ('208', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397614322');
INSERT INTO `user` VALUES ('209', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397616230');
INSERT INTO `user` VALUES ('210', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397622950');
INSERT INTO `user` VALUES ('211', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397623412');
INSERT INTO `user` VALUES ('212', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397623429');
INSERT INTO `user` VALUES ('213', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397630657');
INSERT INTO `user` VALUES ('214', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397630658');
INSERT INTO `user` VALUES ('215', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397637790');
INSERT INTO `user` VALUES ('216', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397637790');
INSERT INTO `user` VALUES ('217', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397652481');
INSERT INTO `user` VALUES ('218', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397652481');
INSERT INTO `user` VALUES ('219', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397659930');
INSERT INTO `user` VALUES ('220', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397662596');
INSERT INTO `user` VALUES ('221', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397664577');
INSERT INTO `user` VALUES ('222', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397667223');
INSERT INTO `user` VALUES ('223', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397667229');
INSERT INTO `user` VALUES ('224', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397674407');
INSERT INTO `user` VALUES ('225', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397674407');
INSERT INTO `user` VALUES ('226', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397681715');
INSERT INTO `user` VALUES ('227', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397681716');
INSERT INTO `user` VALUES ('228', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397688986');
INSERT INTO `user` VALUES ('229', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397688986');
INSERT INTO `user` VALUES ('230', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397696410');
INSERT INTO `user` VALUES ('231', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397696411');
INSERT INTO `user` VALUES ('232', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397700818');
INSERT INTO `user` VALUES ('233', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397702055');
INSERT INTO `user` VALUES ('234', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397703755');
INSERT INTO `user` VALUES ('235', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397703773');
INSERT INTO `user` VALUES ('236', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397711123');
INSERT INTO `user` VALUES ('237', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397711124');
INSERT INTO `user` VALUES ('238', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397718455');
INSERT INTO `user` VALUES ('239', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397718462');
INSERT INTO `user` VALUES ('240', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397725705');
INSERT INTO `user` VALUES ('241', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397725723');
INSERT INTO `user` VALUES ('242', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397733124');
INSERT INTO `user` VALUES ('243', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397733133');
INSERT INTO `user` VALUES ('244', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397739163');
INSERT INTO `user` VALUES ('245', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397739698');
INSERT INTO `user` VALUES ('246', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397740445');
INSERT INTO `user` VALUES ('247', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397740454');
INSERT INTO `user` VALUES ('248', 'dowerikvhn@hotmail.com', '', '1h7lgH8prR', '1', '', '', 'dowerikvhn@hotmail.com', '', '', '', '0', '0', '', '', '', '1397743485');
INSERT INTO `user` VALUES ('249', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397747640');
INSERT INTO `user` VALUES ('250', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397747659');
INSERT INTO `user` VALUES ('251', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397754825');
INSERT INTO `user` VALUES ('252', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397762139');
INSERT INTO `user` VALUES ('253', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397762139');
INSERT INTO `user` VALUES ('254', 'Mudioroaudice@copymanprintshop', '', 'vEf6g55frZ', '1', '', '', 'Mudioroaudice@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397769284');
INSERT INTO `user` VALUES ('255', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397769513');
INSERT INTO `user` VALUES ('256', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397769518');
INSERT INTO `user` VALUES ('257', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397776068');
INSERT INTO `user` VALUES ('258', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397776814');
INSERT INTO `user` VALUES ('259', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397776814');
INSERT INTO `user` VALUES ('260', 'EngeneSaf@copymanprintshop.com', '', 'vEf6g55frZ', '1', '', '', 'EngeneSaf@copymanprintshop.com', '', '', '', '0', '0', '', '', '', '1397779754');
INSERT INTO `user` VALUES ('261', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397784127');
INSERT INTO `user` VALUES ('262', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397784127');
INSERT INTO `user` VALUES ('263', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397791645');
INSERT INTO `user` VALUES ('264', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397798774');
INSERT INTO `user` VALUES ('265', 'murrpnqx@hotmail.com', '', '5w4Kd7avqH', '1', '', '', 'murrpnqx@hotmail.com', '', '', '', '0', '0', '', '', '', '1397798775');
INSERT INTO `user` VALUES ('266', 'shdjpyll002@sina.com', '苗苗', '511018', '2', '', '', 'shdjpyll002@sina.com', '', '', '', '1398233160', '1', '53575914d0505.JPG', '山东', '', '1398233160');
INSERT INTO `user` VALUES ('267', 'linjinlxs@126.com', '', '820900', '2', '', '', 'linjinlxs@126.com', '', '', '', '1398388731', '1', '', '', '', '1398388731');
INSERT INTO `user` VALUES ('268', 'zzxbjsy@126.com', '', '192166', '2', '', '', 'zzxbjsy@126.com', '', '', '', '1398566764', '1', '', '', '', '1398566764');
INSERT INTO `user` VALUES ('269', 'yanxiaoqing@smda.gov.cn', '', '9749178', '2', '', '', 'yanxiaoqing@smda.gov.cn', '', '', '', '1398652779', '1', '', '', '', '1398652779');
INSERT INTO `user` VALUES ('270', 'yfyang1971@163.com', '', '620184ydj', '2', '', '', 'yfyang1971@163.com', '', '', '', '1398749195', '1', '', '', '', '1398749195');
INSERT INTO `user` VALUES ('271', 'Wu-ji@126.com', 'Jeffry', '108193', '1', '', '', 'Wu-ji@126.com', '', '', '', '1398965057', '1', '536283eeb890d.jpg', 'Shanghai', '', '1398965057');
INSERT INTO `user` VALUES ('272', 'lipengmalili@163.com', '', 'fx4003', '2', '', '', 'lipengmalili@163.com', '', '', '', '1399178434', '3', '', '', '', '1399075715');
INSERT INTO `user` VALUES ('273', 'sugar.long@163.com', '', '190484', '2', '', '', 'sugar.long@163.com', '', '', '', '1399168175', '1', '', '', '', '1399168175');
INSERT INTO `user` VALUES ('274', 'su.stai.n.ws.n.u@gmail.com\r\n', '', 'nyq28Giz1Z', '1', '', '', 'su.stai.n.ws.n.u@gmail.com\r\n', '', '', '', '0', '0', '', '', '', '1399363316');
INSERT INTO `user` VALUES ('275', 'joycewang0427@hotmail.com', '', 'wyj730804', '2', '', '', 'joycewang0427@hotmail.com', '', '', '', '1399527236', '1', '', '', '', '1399527236');
INSERT INTO `user` VALUES ('276', 'yuphie1009@hotmail.com', '', 'd560vghx', '2', '', '', 'yuphie1009@hotmail.com', '', '', '', '1399559534', '1', '', '', '', '1399559534');
INSERT INTO `user` VALUES ('277', 'cherry940301@hotmail.com', '', '19940301', '2', '', '', 'cherry940301@hotmail.com', '', '', '', '1399823041', '1', '', '', '', '1399823041');
INSERT INTO `user` VALUES ('278', 'li871012wohan@yahoo.com', '', '123456789', '1', '', '', 'li871012wohan@yahoo.com', '', '', '', '1399891381', '1', '', '', '', '1399891381');
INSERT INTO `user` VALUES ('279', 'zzjing15@hotmail.com', '', 'zj__62178581', '2', '', '', 'zzjing15@hotmail.com', '', '', '', '1399982249', '2', '', '', '', '1399981641');
INSERT INTO `user` VALUES ('280', 'vickyxue0214@gmail.com', '', '4168870214', '2', '', '', 'vickyxue0214@gmail.com', '', '', '', '1400039524', '1', '', '', '', '1400039524');
INSERT INTO `user` VALUES ('281', 'Tuqiong_kate@hotmail.com', '', '198700', '2', '', '', 'Tuqiong_kate@hotmail.com', '', '', '', '1401175465', '1', '', '', '', '1401175465');
INSERT INTO `user` VALUES ('282', '58124130@qq.com', '', '9012230118', '2', '', '', '58124130@qq.com', '', '', '', '1401881786', '1', '', '', '', '1401881786');
INSERT INTO `user` VALUES ('283', 'xiaoh@bj.cebbank.com', '', '011114', '2', '', '', 'xiaoh@bj.cebbank.com', '', '', '', '1401888296', '1', '', '', '', '1401888296');
INSERT INTO `user` VALUES ('284', 'vitasyau6969@gmail.com', 'vitas yau', 'Boon6969@', '1', '', '', 'vitasyau6969@gmail.com', '', '', '', '1402659561', '2', '', '', '', '1402571314');
INSERT INTO `user` VALUES ('285', 'cdtopkid@163.com', '', 'mll990801', '2', '', '', 'cdtopkid@163.com', '', '', '', '1403741670', '2', '', '', '', '1403741606');
INSERT INTO `user` VALUES ('286', 'habaishi@126.com', 'haha', 'chunjiang', '1', '', '', 'habaishi@126.com', '23', '', '', '1410232635', '4', '53f45b57e4335.jpg', '2', '', '1404272986');
INSERT INTO `user` VALUES ('287', '1012440311@qq.com', '', '1y1yyo38700', '2', '', '', '1012440311@qq.com', '', '', '', '1404280664', '1', '', '', '', '1404280664');
INSERT INTO `user` VALUES ('288', 'alexjiang0322@sina.com', 'Deadshot', '123456789', '1', '', '', 'alexjiang0322@sina.com', '', '', '', '1404827166', '1', '', '上海', '', '1404827166');
INSERT INTO `user` VALUES ('289', 'neil', '', 'neil', '1', '', '', 'neil', '', '', '', '0', '0', '', '', '', '1405096016');
INSERT INTO `user` VALUES ('290', 'neil1', '', 'neil1', '1', '', '', 'neil1', '', '', '', '0', '0', '', '', '', '1405096071');
INSERT INTO `user` VALUES ('291', 'neil1', '', 'neil1', '1', '', '', 'neil1', '', '', '', '0', '0', '', '', '', '1405096085');
INSERT INTO `user` VALUES ('292', 'fannn', '', 'neil1', '1', '', '', 'fannn', '', '', '', '0', '0', '', '', '', '1405149183');
INSERT INTO `user` VALUES ('293', 'fannn1', '', 'neil1', '1', '', '', 'fannn1', '', '', '', '0', '0', '', '', '', '1405149253');
INSERT INTO `user` VALUES ('294', 'stampvuz@hotmail.com', '', '3bq4eZ5luF', '1', '', '', 'stampvuz@hotmail.com', '', '', '', '0', '0', '', '', '', '1405355185');
INSERT INTO `user` VALUES ('295', 'gaogaoc@163.com', '', '33372765', '2', '', '', 'gaogaoc@163.com', '', '', '', '1405425288', '1', '', '', '', '1405425288');
INSERT INTO `user` VALUES ('296', 'qbxil@126.com', '', '000000', '1', '', '', 'qbxil@126.com', '', '', '', '1405479825', '1', '', '', '', '1405479825');
INSERT INTO `user` VALUES ('297', 'stampvuz@hotmail.com', '', '3bq4eZ5luF', '1', '', '', 'stampvuz@hotmail.com', '', '', '', '0', '0', '', '', '', '1405491030');
INSERT INTO `user` VALUES ('298', 'y7h9@jotmail.com', '', '', '1', '', '', 'y7h9@jotmail.com', '', '', '', '1405552209', '1', '', '', '', '1405552209');
INSERT INTO `user` VALUES ('299', 'neil90', '', '', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1405863970');
INSERT INTO `user` VALUES ('300', 'neil90', '', '', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1405864023');
INSERT INTO `user` VALUES ('301', 'neil80', '', '', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1405864403');
INSERT INTO `user` VALUES ('302', 'neil70', '', '', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1405865426');
INSERT INTO `user` VALUES ('303', 'neil60', '', '', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1405865476');
INSERT INTO `user` VALUES ('304', 'neil10', '', '', '2', '', '', '', '', '', '', '0', '0', '', '', '', '1405867013');
INSERT INTO `user` VALUES ('305', 'neyuyul10', '', '', '2', '', '', '', '', '', '', '0', '0', '', '', '', '1405867027');
INSERT INTO `user` VALUES ('306', 'aa@qq.com', '', '123123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1405947068');
INSERT INTO `user` VALUES ('307', 'bb@qq.com', '', '123123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1405947264');
INSERT INTO `user` VALUES ('308', 'wingsmm', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406108865');
INSERT INTO `user` VALUES ('309', '(null)', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406117193');
INSERT INTO `user` VALUES ('310', '2919354077', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406119099');
INSERT INTO `user` VALUES ('311', 'xumengxm@sina.com', '', 'mengmeng108', '2', '', '', 'xumengxm@sina.com', '', '', '', '1406339234', '2', '', '', '', '1406178070');
INSERT INTO `user` VALUES ('312', '1946469442', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406209726');
INSERT INTO `user` VALUES ('313', 'frauwang65@gmail.com', '', 'Wyj19900603', '2', '', '', 'frauwang65@gmail.com', '', '', '', '1406227449', '1', '', '', '', '1406227449');
INSERT INTO `user` VALUES ('314', 'lzl_roxanne@163.com', '', '1663guilongyuan', '2', '', '', 'lzl_roxanne@163.com', '', '', '', '1406373930', '1', '', '', '', '1406373930');
INSERT INTO `user` VALUES ('315', '435226881@qq.com', 'Liujin', 'gogousa12345678', '0', '13810420002', '', '', '', '', 'Ghkg', '0', '0', '', '', '', '1406387022');
INSERT INTO `user` VALUES ('316', 'm6s17u0@mail.ru', '', '123hfjdk147', '1', '', '', 'm6s17u0@mail.ru', '', '', '', '0', '0', '', '', '', '1406487254');
INSERT INTO `user` VALUES ('317', 'm6s17u0@mail.ru', '', '123hfjdk147', '1', '', '', 'm6s17u0@mail.ru', '', '', '', '0', '0', '', '', '', '1406487260');
INSERT INTO `user` VALUES ('318', ' - ５.3⒈°', ' - ５.3⒈°', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/2E0555BAE78B3BF1CAD9D6C1B1FDECC9/100', '', 'QQ', '1406606443');
INSERT INTO `user` VALUES ('319', '巨偉?2o13', '巨偉?2o13', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/7BAC9B209E38DCF02FA3270D912F6462/100', '', 'QQ', '1406607113');
INSERT INTO `user` VALUES ('320', 'Jin', 'Jin', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/E8C50C10E11D21F2C31DD4281684FFC0/100', '', 'QQ', '1406607308');
INSERT INTO `user` VALUES ('321', '49372268@qq.com', '', '115209', '1', '', '', '49372268@qq.com', '', '', '', '1406618139', '1', '', '', '', '1406618139');
INSERT INTO `user` VALUES ('322', '87154403@qq.com', '', '123456aa', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406700783');
INSERT INTO `user` VALUES ('323', '123@qq.com', '', '123456aa', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406700818');
INSERT INTO `user` VALUES ('324', '234@163.com', '', '123456', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406700922');
INSERT INTO `user` VALUES ('325', 'aaa@qq.com', '', '123123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406702538');
INSERT INTO `user` VALUES ('326', '123456@qq.com', '', '123456', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406777000');
INSERT INTO `user` VALUES ('327', '6676888@qq.com', '', '123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406777146');
INSERT INTO `user` VALUES ('328', '123321@qq.com', '', '123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406778344');
INSERT INTO `user` VALUES ('329', '1234444@qq.com', '', '123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406778429');
INSERT INTO `user` VALUES ('330', '34543@111.com', '', '123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406778533');
INSERT INTO `user` VALUES ('331', '424362919@qq.com', '', 'zxt187123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406778738');
INSERT INTO `user` VALUES ('332', '1234565555@163.com', '', '123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406778830');
INSERT INTO `user` VALUES ('333', 'carmenwood@163.com', '', 'es0519', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406779002');
INSERT INTO `user` VALUES ('334', '623384606@qq.com', '', 'sy128620', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406779279');
INSERT INTO `user` VALUES ('335', 'sensenkoh@gogo7.cn', '', 'sen1234', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406779282');
INSERT INTO `user` VALUES ('336', '455672466@qq.com', '', 'zxt123', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406780065');
INSERT INTO `user` VALUES ('337', '熊小八', '熊小八', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/070C1E3B1FB5599DA0574784C22794BA/100', '', 'QQ', '1406780755');
INSERT INTO `user` VALUES ('338', '(_莼属乄嘘鈎', '(_莼属乄嘘鈎', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/67265E5F1855E4F78F58E93D64FA685B/100', '', 'QQ', '1406865997');
INSERT INTO `user` VALUES ('339', 'Frank', 'Frank', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/1621F6E55FD74F8B8CBDF70E39339ACC/100', '', 'QQ', '1406884177');
INSERT INTO `user` VALUES ('340', '1918784763', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1406961681');
INSERT INTO `user` VALUES ('341', '545551231@qq.com', '', 'jiangluwen', '2', '', '', '545551231@qq.com', '', '', '', '1406990385', '1', '', '', '', '1406990385');
INSERT INTO `user` VALUES ('342', '790026943@qq.com', '', 'zhangyang666', '1', '', '', '790026943@qq.com', '', '', '', '1407075167', '1', '', '', '', '1407075167');
INSERT INTO `user` VALUES ('343', '330140177@qq.com', 'cherry0589', '19890523', '1', '', '', '330140177@qq.com', '', '', '', '1407228728', '3', '', '', '', '1407120289');
INSERT INTO `user` VALUES ('344', '2186713953', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1407131602');
INSERT INTO `user` VALUES ('345', '1733718787', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1407187362');
INSERT INTO `user` VALUES ('346', '1879515850', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1407241469');
INSERT INTO `user` VALUES ('347', '33483275@qq.com', '', 'laolaobi6', '1', '', '', '33483275@qq.com', '', '', '', '1407922811', '1', '', '', '', '1407922811');
INSERT INTO `user` VALUES ('348', '2542114095', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1407936557');
INSERT INTO `user` VALUES ('349', '', '', '', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1407979981');
INSERT INTO `user` VALUES ('350', '1785515440', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1407997174');
INSERT INTO `user` VALUES ('351', '1952447871', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408001258');
INSERT INTO `user` VALUES ('352', '1482604714', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408012100');
INSERT INTO `user` VALUES ('353', '1915281905', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408018913');
INSERT INTO `user` VALUES ('354', '1719404633', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408019868');
INSERT INTO `user` VALUES ('355', '3704072947', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408022180');
INSERT INTO `user` VALUES ('356', '5117037717', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408028633');
INSERT INTO `user` VALUES ('357', '1819628027', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408080474');
INSERT INTO `user` VALUES ('358', '1509150873', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408233080');
INSERT INTO `user` VALUES ('359', '1316045020', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408252217');
INSERT INTO `user` VALUES ('360', '2611405053', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408255799');
INSERT INTO `user` VALUES ('361', '1807578497', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408278099');
INSERT INTO `user` VALUES ('362', '2197167304', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408278212');
INSERT INTO `user` VALUES ('363', '2517610282', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408280514');
INSERT INTO `user` VALUES ('364', '1869658961', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408287593');
INSERT INTO `user` VALUES ('365', '2242905932', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408327808');
INSERT INTO `user` VALUES ('366', '1830684517', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408330915');
INSERT INTO `user` VALUES ('367', '2264268392', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408373099');
INSERT INTO `user` VALUES ('368', '3105234263', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408383108');
INSERT INTO `user` VALUES ('369', '2755241544', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408397430');
INSERT INTO `user` VALUES ('370', '1160167983', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408421643');
INSERT INTO `user` VALUES ('371', '1360920478@qq.com', '', 'hanluming123', '1', '', '', '1360920478@qq.com', '', '', '', '1408431274', '1', '', '', '', '1408431274');
INSERT INTO `user` VALUES ('372', '1402754287', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408504258');
INSERT INTO `user` VALUES ('373', '1789673395', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408518239');
INSERT INTO `user` VALUES ('374', '1929805781', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408521493');
INSERT INTO `user` VALUES ('375', '1951432040', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408551140');
INSERT INTO `user` VALUES ('376', '1749729704', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408629336');
INSERT INTO `user` VALUES ('377', '2808103770', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408717014');
INSERT INTO `user` VALUES ('378', '1655624591', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1408751249');
INSERT INTO `user` VALUES ('379', 'bonbon', 'bonbon', 'gogo', '0', '', '', '', '', '', '', '0', '0', 'http://qzapp.qlogo.cn/qzapp/100448584/C8DD795D3F93F8F96E6747C51EF68571/100', '', 'QQ', '1408804055');
INSERT INTO `user` VALUES ('380', '1644205047', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409205663');
INSERT INTO `user` VALUES ('381', '1252969181', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409221118');
INSERT INTO `user` VALUES ('382', '2645539631', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409284014');
INSERT INTO `user` VALUES ('383', '1926487153', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409372144');
INSERT INTO `user` VALUES ('384', '2657687991', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409392162');
INSERT INTO `user` VALUES ('385', '3169058134', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409437167');
INSERT INTO `user` VALUES ('386', '1916859407', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409536836');
INSERT INTO `user` VALUES ('387', '1846599573', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409545336');
INSERT INTO `user` VALUES ('388', '794645316@qq.com', '', '761129', '2', '', '', '794645316@qq.com', '', '', '', '1409553264', '3', '', '', '', '1409553052');
INSERT INTO `user` VALUES ('389', '1733306035', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409574181');
INSERT INTO `user` VALUES ('390', '1291572612', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409635128');
INSERT INTO `user` VALUES ('391', '2034217143', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409659223');
INSERT INTO `user` VALUES ('392', '1882270387', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409796955');
INSERT INTO `user` VALUES ('393', '1400623360', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409804761');
INSERT INTO `user` VALUES ('394', '5232491534', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409814095');
INSERT INTO `user` VALUES ('395', '', '', 'R9lw4j8khX', '1', '', '', '', '', '', '', '0', '0', '', '', '', '1409886052');
INSERT INTO `user` VALUES ('396', '1002315671@qq.com', '', 'zyp618918', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1409963645');
INSERT INTO `user` VALUES ('397', '2883737812', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410047100');
INSERT INTO `user` VALUES ('398', '3206285282', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410090689');
INSERT INTO `user` VALUES ('399', '1739785571', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410090918');
INSERT INTO `user` VALUES ('400', '13941100808@139.com', '', 'h711221', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410126905');
INSERT INTO `user` VALUES ('401', '3913349267', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410196964');
INSERT INTO `user` VALUES ('402', '2273837911', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410197168');
INSERT INTO `user` VALUES ('403', '1499049352', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410265315');
INSERT INTO `user` VALUES ('404', '1849216952', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410335914');
INSERT INTO `user` VALUES ('405', '1827845153', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410378999');
INSERT INTO `user` VALUES ('406', '2754672517', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410461101');
INSERT INTO `user` VALUES ('407', '1656827260', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410494135');
INSERT INTO `user` VALUES ('408', '2092206237', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410504464');
INSERT INTO `user` VALUES ('409', '863014510@qq.com', '', 'fucanran1210', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410512119');
INSERT INTO `user` VALUES ('410', '2215048373', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410589810');
INSERT INTO `user` VALUES ('411', '1866127820', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410643376');
INSERT INTO `user` VALUES ('412', '5163938876', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410706249');
INSERT INTO `user` VALUES ('413', '1482968803', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410743172');
INSERT INTO `user` VALUES ('414', '1843083277', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410782363');
INSERT INTO `user` VALUES ('415', '1891367200', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410856928');
INSERT INTO `user` VALUES ('416', '1583397580', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410859012');
INSERT INTO `user` VALUES ('417', '1969881247', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410886256');
INSERT INTO `user` VALUES ('418', '1400657890', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410920366');
INSERT INTO `user` VALUES ('419', '3552511121', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410961883');
INSERT INTO `user` VALUES ('420', '3063414571', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410964283');
INSERT INTO `user` VALUES ('421', '1066239443', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410964978');
INSERT INTO `user` VALUES ('422', '1204523104', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1410974322');
INSERT INTO `user` VALUES ('423', '1088208857', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411037039');
INSERT INTO `user` VALUES ('424', '2071783121', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411047060');
INSERT INTO `user` VALUES ('425', '1760203831', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411061308');
INSERT INTO `user` VALUES ('426', '1949674025', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411088342');
INSERT INTO `user` VALUES ('427', 'georgelau@126.com', '', '30614321', '1', '', '', 'georgelau@126.com', '', '', '', '1411094559', '1', '', '', '', '1411094559');
INSERT INTO `user` VALUES ('428', '1760363342', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411134693');
INSERT INTO `user` VALUES ('429', '1827611695', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411134747');
INSERT INTO `user` VALUES ('430', '1407157833', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411278422');
INSERT INTO `user` VALUES ('431', '3558951387', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411292414');
INSERT INTO `user` VALUES ('432', '1595138381', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411353163');
INSERT INTO `user` VALUES ('433', '1490649917', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411374826');
INSERT INTO `user` VALUES ('434', '2158460653', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411459076');
INSERT INTO `user` VALUES ('435', '1683325982', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411459628');
INSERT INTO `user` VALUES ('436', '1171417034', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411542015');
INSERT INTO `user` VALUES ('437', '1957810381', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411545832');
INSERT INTO `user` VALUES ('438', '1781940242', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411567386');
INSERT INTO `user` VALUES ('439', '5241354144', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411577792');
INSERT INTO `user` VALUES ('440', '2152462427', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411577948');
INSERT INTO `user` VALUES ('441', '1944919451', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411608540');
INSERT INTO `user` VALUES ('442', '2849525171', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411614009');
INSERT INTO `user` VALUES ('443', '1886431127', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411652048');
INSERT INTO `user` VALUES ('444', '5270459654', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411673634');
INSERT INTO `user` VALUES ('445', 'jeffreychen75@yahoo.com', '', '3109capa', '1', '', '', 'jeffreychen75@yahoo.com', '', '', '', '1411703554', '4', '', '', '', '1411702497');
INSERT INTO `user` VALUES ('446', '1869390372', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411708923');
INSERT INTO `user` VALUES ('447', '2061356687', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411710175');
INSERT INTO `user` VALUES ('448', '3959980666', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411720129');
INSERT INTO `user` VALUES ('449', '2449967654', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411730342');
INSERT INTO `user` VALUES ('450', '3472683482', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411785038');
INSERT INTO `user` VALUES ('451', '1165188077', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411803190');
INSERT INTO `user` VALUES ('452', '1094529831', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411835149');
INSERT INTO `user` VALUES ('453', '1133382074', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411899233');
INSERT INTO `user` VALUES ('454', '1829529685', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411927143');
INSERT INTO `user` VALUES ('455', '1837038351', '', '', '0', '', '', '', '', '', '', '0', '0', '', '', '', '1411966243');
INSERT INTO `user` VALUES ('456', 'haifeng@zhubaijia.com', '', 'laolaobi6', '1', '', '', 'haifeng@zhubaijia.com', '', '', '', '1411978397', '1', '', '', '', '1411978397');

-- ----------------------------
-- Table structure for `vipcoupon`
-- ----------------------------
DROP TABLE IF EXISTS `vipcoupon`;
CREATE TABLE `vipcoupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(256) NOT NULL DEFAULT '' COMMENT '商家名称',
  `content` varchar(512) NOT NULL DEFAULT '' COMMENT '优惠内容',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,是否验证',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='VIP优惠券';

-- ----------------------------
-- Records of vipcoupon
-- ----------------------------

-- ----------------------------
-- Table structure for `weblink`
-- ----------------------------
DROP TABLE IF EXISTS `weblink`;
CREATE TABLE `weblink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(128) NOT NULL DEFAULT '' COMMENT '网址',
  `type_id` tinyint(2) NOT NULL DEFAULT '0' COMMENT '分类（1商家链接，2首页banner,3首页通栏banner）',
  `sorting` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属城市',
  `image` varchar(128) NOT NULL DEFAULT '' COMMENT '图片',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='网站链接表';

-- ----------------------------
-- Records of weblink
-- ----------------------------
INSERT INTO `weblink` VALUES ('7', 'bb', '', '2', '0', '1', '', '1413127376');
INSERT INTO `weblink` VALUES ('8', 'cc', '', '3', '0', '0', '', '1413127381');
INSERT INTO `weblink` VALUES ('6', 'aa', 'http://www.baidu.com', '1', '0', '1', '', '1413127367');
