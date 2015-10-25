/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/10/25 17:06:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for reservation_candidate
-- ----------------------------
DROP TABLE IF EXISTS `reservation_candidate`;
CREATE TABLE `reservation_candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `workType` varchar(20) NOT NULL,
  `timeArea` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `reservation_candidate` VALUES ('1', '吴海峰', '18817334063', '风险分析师', '14:40 - 16:10');
INSERT INTO `reservation_candidate` VALUES ('2', '吴宝妮', '18817334060', '风险工程师', '10:40 - 12:10');
