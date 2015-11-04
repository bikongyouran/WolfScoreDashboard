/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/11/4 15:50:49
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
  `email_address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `reservation_candidate` VALUES ('1', '商静', '15852905155', '风险工程师', null, 'sophianao@163.com');
INSERT INTO `reservation_candidate` VALUES ('2', '周可', '18515290689', '风险工程师', null, 'zhouke309@vip.qq.com');
INSERT INTO `reservation_candidate` VALUES ('3', '施大鹏', '15205156170', '风险工程师', null, 'mg1332014@software.nju.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('4', '韩昊', '13162521880', '风险工程师', null, 'hanh13@fudan.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('5', '赵立', '18721911532', '风险工程师', null, 'sanpizhaoli@126.com');
INSERT INTO `reservation_candidate` VALUES ('6', '付焜', '15001714190', '风险工程师', null, 'luminosite@163.com');
INSERT INTO `reservation_candidate` VALUES ('7', '李晨', '18663509038', '风险分析师', null, 'chen.li.14@ucl.ac.uk');
INSERT INTO `reservation_candidate` VALUES ('8', '朱云依', '15502196535', '风险分析师', null, 'zhuyz2010@live.cn');
INSERT INTO `reservation_candidate` VALUES ('9', '刘米洋', '13916379288', '风险分析师', null, 'yaphetsliu@126.com');
INSERT INTO `reservation_candidate` VALUES ('10', '包芊颖', '15201964063', '风险分析师', null, 'zjfybqy@163.com');
INSERT INTO `reservation_candidate` VALUES ('11', '李婧', '15121129258', '风险分析师', null, 'lijing910409@sjtu.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('12', '赵瑜', '13817335497', '风险分析师', null, 'xinyangbali@163.com');
INSERT INTO `reservation_candidate` VALUES ('13', '王一帆', '18317139757', '风险分析师', null, 'avrilsiyue@126.com');
INSERT INTO `reservation_candidate` VALUES ('14', '李涛', '13918332465', '风险分析师', null, 'litao_mse@163.com');
INSERT INTO `reservation_candidate` VALUES ('15', '陈杰', '15026628573', '风险分析师', null, 'jiesus@qq.com');
INSERT INTO `reservation_candidate` VALUES ('16', '王一珏', '18001906565', '风险分析师', null, 'justjue615@126.com');
INSERT INTO `reservation_candidate` VALUES ('17', '麦子俊', '18516603428', '风险分析师', null, 'qqmaizj@163.com');
INSERT INTO `reservation_candidate` VALUES ('18', '章佳敏', '13127656792', '风险分析师', null, 'zhangjm_sufe@163.com');
INSERT INTO `reservation_candidate` VALUES ('19', '钮尽微', '18801901827', '风险分析师', null, 'niujinwei1991@163.com');
INSERT INTO `reservation_candidate` VALUES ('20', '孟庆怡', '15996285166', '风险分析师', null, 'cheryl_meng1992@163.com');
INSERT INTO `reservation_candidate` VALUES ('21', '徐熠', '18801735799', '风险分析师', null, 'yixu14@fudan.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('22', '刘一岑', '18665990003', '风险分析师', null, 'Liu.Y.Cen@gmail.com');
INSERT INTO `reservation_candidate` VALUES ('23', '乔玮亭', '18964816597', '风险分析师', null, '906386134@qq.com');
INSERT INTO `reservation_candidate` VALUES ('24', '吴渊', '13261499266', '风险工程师', null, 'wuyuan8820@163.com');
INSERT INTO `reservation_candidate` VALUES ('25', '肖卫', '15201925625', '风险工程师', null, 'wei_xiao@fudan.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('26', '郑晓滨', '18521592998', '风险工程师', null, 'xbinzheng@163.com');
INSERT INTO `reservation_candidate` VALUES ('27', '夏杰', '15901727985', '风险工程师', null, 'xj_career@163.com');
INSERT INTO `reservation_candidate` VALUES ('28', '王欢欢', '15201928931', '风险工程师', null, 'wanghuan19909@126.com');
INSERT INTO `reservation_candidate` VALUES ('29', '彭田', '15216758642', '风险工程师', null, 'pengtian0611@163.com');
INSERT INTO `reservation_candidate` VALUES ('30', '汪圣涛', '13162507608', '风险工程师', null, 'tiaomingji@163.com');
INSERT INTO `reservation_candidate` VALUES ('31', '张康', '13162502908', '风险工程师', null, 'zkdnfcf@163.com');
INSERT INTO `reservation_candidate` VALUES ('32', '葛文韬', '18701983951', '风险工程师', null, 'gewentao@outlook.com');
INSERT INTO `reservation_candidate` VALUES ('33', '詹越峰', '13718666323', '风险工程师', null, 'yfz@pku.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('34', '付颖', '15216717401', '风险工程师', null, 'vivianfy77@163.com');
INSERT INTO `reservation_candidate` VALUES ('35', '赵斐', '15298388024', '风险工程师', null, 'njumrz@hotmail.com');
INSERT INTO `reservation_candidate` VALUES ('36', '张恺', '18521700270', '风险工程师', null, 'kaikai_z@126.com');
INSERT INTO `reservation_candidate` VALUES ('37', '唐彬', '13770825929', '风险工程师', null, 'tangbin90@gmail.com');
INSERT INTO `reservation_candidate` VALUES ('38', '梁佳', '18221711737', '风险工程师', null, 'liangjia_june@163.com');
INSERT INTO `reservation_candidate` VALUES ('39', '李贵洋', '15810940326', '风险工程师', null, '185903701@qq.com');
INSERT INTO `reservation_candidate` VALUES ('40', '范嘉骅', '13162571117', '风险工程师', null, 'williamjhfan@gmail.com');
INSERT INTO `reservation_candidate` VALUES ('41', '鄢晨丹', '15216717983', '风险工程师', null, 'yanchendan@163.com');
INSERT INTO `reservation_candidate` VALUES ('42', '王晓东', '18521561589', '风险工程师', null, '0910472@sjtu.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('43', '杨振崧', '15650760654', '风险工程师', null, 'yzs418@126.com');
INSERT INTO `reservation_candidate` VALUES ('44', '李佳龙', '13917187772', '风险工程师', null, 'li_jia_long_1990@163.com');
INSERT INTO `reservation_candidate` VALUES ('45', '朱维', '15921504759', '风险工程师', null, 'minizhuwei@gmail.com');
INSERT INTO `reservation_candidate` VALUES ('46', '吴海峰', '18817334063', '风险工程师', null, 'wuhaifengdhu@163.com');
INSERT INTO `reservation_candidate` VALUES ('47', '阿茹娜', '15216712340', '风险分析师', null, 'aruna_0828@163.com');
INSERT INTO `reservation_candidate` VALUES ('48', '郑泽华', '15121197350', '风险分析师', null, 'sjtu90@163.com');
INSERT INTO `reservation_candidate` VALUES ('49', '杨恺希', '13611869314', '风险工程师', null, 'yangkaixi@fudan.edu.cn');
INSERT INTO `reservation_candidate` VALUES ('50', '赵耀', '15021128363', '风险工程师', null, 'tigerzhaoyao416@126.com');
