/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/11/4 15:50:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for reservation_timearea
-- ----------------------------
DROP TABLE IF EXISTS `reservation_timearea`;
CREATE TABLE `reservation_timearea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workType` varchar(20) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '8',
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `reservation_timearea` VALUES ('1', '风险分析师', '3', '9:00开始');
INSERT INTO `reservation_timearea` VALUES ('2', '风险分析师', '3', '10:00开始');
INSERT INTO `reservation_timearea` VALUES ('3', '风险分析师', '3', '11:00开始');
INSERT INTO `reservation_timearea` VALUES ('4', '风险分析师', '3', '13:00开始');
INSERT INTO `reservation_timearea` VALUES ('5', '风险分析师', '3', '14:00开始');
INSERT INTO `reservation_timearea` VALUES ('6', '风险分析师', '4', '15:00开始');
INSERT INTO `reservation_timearea` VALUES ('7', '风险工程师', '5', '9:00开始');
INSERT INTO `reservation_timearea` VALUES ('8', '风险工程师', '5', '10:00开始');
INSERT INTO `reservation_timearea` VALUES ('9', '风险工程师', '5', '11:00开始');
INSERT INTO `reservation_timearea` VALUES ('10', '风险工程师', '5', '13:00开始');
INSERT INTO `reservation_timearea` VALUES ('11', '风险工程师', '5', '14:00开始');
INSERT INTO `reservation_timearea` VALUES ('12', '风险工程师', '5', '15:00开始');
