/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/11/24 19:06:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for massage_servetime
-- ----------------------------
DROP TABLE IF EXISTS `massage_servetime`;
CREATE TABLE `massage_servetime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeArea` varchar(30) NOT NULL,
  `available` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `massage_servetime` VALUES ('1', '14:00 -- 14:15', '2');
INSERT INTO `massage_servetime` VALUES ('2', '14:15 -- 14:30', '0');
INSERT INTO `massage_servetime` VALUES ('3', '14:30 -- 14:45', '1');
INSERT INTO `massage_servetime` VALUES ('4', '14:45 -- 15:00', '1');
INSERT INTO `massage_servetime` VALUES ('5', '15:00 -- 15:15', '0');
INSERT INTO `massage_servetime` VALUES ('6', '15:15 -- 15:30', '1');
INSERT INTO `massage_servetime` VALUES ('7', '15:30 -- 15:45', '2');
INSERT INTO `massage_servetime` VALUES ('8', '15:45 -- 16:00', '2');
INSERT INTO `massage_servetime` VALUES ('9', '16:15 -- 16:30', '2');
INSERT INTO `massage_servetime` VALUES ('10', '16:30 -- 16:45', '2');
INSERT INTO `massage_servetime` VALUES ('11', '16:45 -- 17:00', '2');
