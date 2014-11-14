/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : gogo7

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-09-28 00:05:12
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '619ADDD625B072CC91389F94B5D0E88B', '1', '1411646844', '127.0.0.1', '1', '283', '', '1360085491');
INSERT INTO `admin` VALUES ('2', 'gogousa', 'c6ff7f44ccaba7a1e70dbce95ee6d261', '1', '1411783315', '127.0.0.1', '0', '15', '', '1364224235');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
