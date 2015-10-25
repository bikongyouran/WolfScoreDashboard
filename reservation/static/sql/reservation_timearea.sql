/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/10/25 17:07:07
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
INSERT INTO `reservation_timearea` VALUES ('1', '风险分析师', '8', '09:00 - 10:30');
INSERT INTO `reservation_timearea` VALUES ('2', '风险分析师', '8', '10:40 - 12:10');
INSERT INTO `reservation_timearea` VALUES ('3', '风险分析师', '8', '13:00 - 14:30');
INSERT INTO `reservation_timearea` VALUES ('4', '风险分析师', '7', '14:40 - 16:10');
INSERT INTO `reservation_timearea` VALUES ('5', '风险工程师', '8', '09:00 - 10:30');
INSERT INTO `reservation_timearea` VALUES ('6', '风险工程师', '6', '10:40 - 12:10');
INSERT INTO `reservation_timearea` VALUES ('7', '风险工程师', '0', '13:00 - 14:30');
INSERT INTO `reservation_timearea` VALUES ('8', '风险工程师', '8', '14:40 - 16:10');
INSERT INTO `reservation_timearea` VALUES ('12', '风险工程师', '8', '16:20 - 17:50');
