/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/11/24 19:06:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for massage_colleague
-- ----------------------------
DROP TABLE IF EXISTS `massage_colleague`;
CREATE TABLE `massage_colleague` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(50) NOT NULL,
  `timeArea` varchar(20) NOT NULL,
  `place` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `massage_colleague` VALUES ('1', 'haifwu@paypalcorp.com', '', '');
INSERT INTO `massage_colleague` VALUES ('2', 'haifwu@paypal.com', '14:15 -- 14:30', 'Seven Nights');
INSERT INTO `massage_colleague` VALUES ('3', 'hello@paypal.com', '14:15 -- 14:30', 'Six Arts');
INSERT INTO `massage_colleague` VALUES ('4', 'world@paypal.com', '15:00 -- 15:15', 'Six Arts');
INSERT INTO `massage_colleague` VALUES ('5', 'tianxia@paypal.com', '15:00 -- 15:15', 'Seven Nights');
INSERT INTO `massage_colleague` VALUES ('6', 'hellowro@paypal.com', '', '');
INSERT INTO `massage_colleague` VALUES ('7', 'haifwuwu@paypal.com', '14:30 -- 14:45', 'Six Arts');
INSERT INTO `massage_colleague` VALUES ('8', 'yello@paypal.com', '', '');
INSERT INTO `massage_colleague` VALUES ('9', 'haifwsu@paypal.com', '', '');
INSERT INTO `massage_colleague` VALUES ('10', 'haifwwu@paypal.com', '14:45 -- 15:00', 'Six Arts');
INSERT INTO `massage_colleague` VALUES ('11', 'dfkdkjfdk@paypal.com', '15:15 -- 15:30', 'Six Arts');
