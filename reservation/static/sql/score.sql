/*
MySQL Data Transfer
Source Host: localhost
Source Database: score
Target Host: localhost
Target Database: score
Date: 2015/10/25 23:13:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
-- Table structure for wolf
-- ----------------------------
DROP TABLE IF EXISTS `wolf`;
CREATE TABLE `wolf` (
  `name` char(25) NOT NULL DEFAULT '',
  `dept` char(30) NOT NULL DEFAULT '',
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`name`,`dept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wolf_player
-- ----------------------------
DROP TABLE IF EXISTS `wolf_player`;
CREATE TABLE `wolf_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `score` int(11) NOT NULL,
  `createDate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wolf_visitor
-- ----------------------------
DROP TABLE IF EXISTS `wolf_visitor`;
CREATE TABLE `wolf_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(20) NOT NULL,
  `count` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add player', '7', 'add_player');
INSERT INTO `auth_permission` VALUES ('20', 'Can change player', '7', 'change_player');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete player', '7', 'delete_player');
INSERT INTO `auth_permission` VALUES ('22', 'Can add visitor', '8', 'add_visitor');
INSERT INTO `auth_permission` VALUES ('23', 'Can change visitor', '8', 'change_visitor');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete visitor', '8', 'delete_visitor');
INSERT INTO `auth_permission` VALUES ('25', 'Can add candidate', '9', 'add_candidate');
INSERT INTO `auth_permission` VALUES ('26', 'Can change candidate', '9', 'change_candidate');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete candidate', '9', 'delete_candidate');
INSERT INTO `auth_permission` VALUES ('28', 'Can add time area', '10', 'add_timearea');
INSERT INTO `auth_permission` VALUES ('29', 'Can change time area', '10', 'change_timearea');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete time area', '10', 'delete_timearea');
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$cG8RcAdZx2NS$8mMzJHfdAVBRS1KVL49vcUUDHkxXg0iUaT6eQAuZivY=', '2015-10-25 11:55:15', '0', 'wolf', '', '', 'haifwu@paypal.com', '1', '1', '2015-07-25 12:50:44');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$24000$8Ywmi67g7791$Ku0OXaRUMYBFu1WS3IUSQkN05t0vW2FWJAsuy848xXc=', '2015-10-25 11:51:20', '0', 'paypal', '', '', '', '1', '1', '2015-10-25 11:46:02');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$24000$5vJiE4Fp6ypm$1dMWj2P4aWPjR3xtb5H99kn3OmLGRvGHNEp6N6bcsik=', '2015-10-25 11:54:09', '1', 'devin', '', '', '', '1', '1', '2015-10-25 11:53:12');
INSERT INTO `auth_user_user_permissions` VALUES ('7', '1', '19');
INSERT INTO `auth_user_user_permissions` VALUES ('8', '1', '20');
INSERT INTO `auth_user_user_permissions` VALUES ('9', '1', '21');
INSERT INTO `auth_user_user_permissions` VALUES ('10', '1', '22');
INSERT INTO `auth_user_user_permissions` VALUES ('11', '1', '23');
INSERT INTO `auth_user_user_permissions` VALUES ('12', '1', '24');
INSERT INTO `auth_user_user_permissions` VALUES ('1', '2', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('2', '2', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('3', '2', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('4', '2', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('5', '2', '29');
INSERT INTO `auth_user_user_permissions` VALUES ('6', '2', '30');
INSERT INTO `django_admin_log` VALUES ('1', '2015-08-01 02:01:07', '13', 'Player object', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2015-08-01 02:07:53', '11', 'Name: manni     Department:gsc', '2', 'Changed score.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2015-08-01 06:22:00', '4', 'Name: wu devin     Department:pd', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2015-08-01 06:23:22', '2', 'wu devin from pd', '2', 'Changed score.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2015-08-02 13:27:17', '6', 'kevin from dept', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2015-09-11 08:47:57', '9', 'luicy from gs', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2015-09-11 08:48:25', '14', 'Wu from pd', '1', 'Added.', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2015-10-25 11:43:33', '3', '张三18817334061', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2015-10-25 11:46:02', '2', 'paypal', '1', 'Added.', '4', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2015-10-25 11:49:04', '2', 'paypal', '2', 'Changed user_permissions.', '4', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2015-10-25 11:50:47', '2', 'paypal', '2', 'Changed is_staff.', '4', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2015-10-25 11:53:12', '3', 'devin', '1', 'Added.', '4', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2015-10-25 11:53:51', '3', 'devin', '2', 'Changed is_staff and is_superuser.', '4', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2015-10-25 11:54:55', '1', 'wolf', '2', 'Changed is_superuser and user_permissions.', '4', '3');
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'reservation', 'candidate');
INSERT INTO `django_content_type` VALUES ('10', 'reservation', 'timearea');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'wolf', 'player');
INSERT INTO `django_content_type` VALUES ('8', 'wolf', 'visitor');
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2015-07-25 12:45:39');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2015-07-25 12:45:39');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('4', 'contenttypes', '0002_remove_content_type_name', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0002_alter_permission_name_max_length', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0003_alter_user_email_max_length', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0004_alter_user_username_opts', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0005_alter_user_last_login_null', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0006_require_contenttypes_0002', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0007_alter_validators_add_error_messages', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('11', 'sessions', '0001_initial', '2015-07-25 12:45:40');
INSERT INTO `django_migrations` VALUES ('12', 'wolf', '0001_initial', '2015-07-31 09:33:57');
INSERT INTO `django_migrations` VALUES ('13', 'wolf', '0002_player_date', '2015-08-01 05:51:40');
INSERT INTO `django_migrations` VALUES ('14', 'wolf', '0003_auto_20150801_1403', '2015-08-01 06:03:45');
INSERT INTO `django_migrations` VALUES ('15', 'wolf', '0004_auto_20150802_1215', '2015-08-02 04:16:06');
INSERT INTO `django_migrations` VALUES ('16', 'wolf', '0005_auto_20150802_1221', '2015-08-02 04:21:12');
INSERT INTO `django_migrations` VALUES ('17', 'wolf', '0006_player_test', '2015-09-11 08:45:04');
INSERT INTO `django_migrations` VALUES ('18', 'reservation', '0001_initial', '2015-10-24 03:41:42');
INSERT INTO `django_migrations` VALUES ('19', 'reservation', '0002_auto_20151024_1151', '2015-10-24 03:51:26');
INSERT INTO `django_session` VALUES ('37tv0l3ald6sh3pfva9qv5rrt8vqw1vi', 'YjI0ZGIyNTYzMTA1YTNiNDg5ODBiOGY2NjcxNjM0ZjVlM2FhM2IyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-08-18 10:07:06');
INSERT INTO `django_session` VALUES ('6sgzvzomxczqo1rrvy0y0tp62e7nguko', 'YjI0ZGIyNTYzMTA1YTNiNDg5ODBiOGY2NjcxNjM0ZjVlM2FhM2IyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-09-25 08:47:20');
INSERT INTO `django_session` VALUES ('dagj7vmqnsx1qh60y4jg6ro7qw1lipl1', 'MGRkMGQ4M2FhMTVhNThmZjE2MjMwODY4ZjNjOTAyMGUxY2I5Mzg5OTp7InBob25lTnVtYmVyIjoiMTg4MTczMzQwNjMiLCJuYW1lIjoiXHU1NDM0XHU2ZDc3XHU1Y2YwIiwid29ya1R5cGUiOjF9', '2015-11-08 08:52:13');
INSERT INTO `django_session` VALUES ('kk7je5ru8jcl8qg0df74hk2e0y4yzelw', 'YjI0ZGIyNTYzMTA1YTNiNDg5ODBiOGY2NjcxNjM0ZjVlM2FhM2IyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-08-15 00:40:19');
INSERT INTO `django_session` VALUES ('m0e3ezsqnfs1kfjb97g6a5afqvdked44', 'YjI0ZGIyNTYzMTA1YTNiNDg5ODBiOGY2NjcxNjM0ZjVlM2FhM2IyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-08-08 12:51:19');
INSERT INTO `django_session` VALUES ('r0sznyuzsv2c8qz53ew2u7aw9an0bu5p', 'OGQyMWY4MjU4ODhiOTE2Zjg2NjJjZjZiOTgzYmRlMGRhNGNlYjUxZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJwaG9uZU51bWJlciI6IjE4ODE3MzM0MDYwIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIm5hbWUiOiJcdTU0MzRcdTViOWRcdTU5YWUifQ==', '2015-11-08 14:22:49');
INSERT INTO `django_session` VALUES ('tqpzboizec0vvq937g91x8979genlr9b', 'YjI0ZGIyNTYzMTA1YTNiNDg5ODBiOGY2NjcxNjM0ZjVlM2FhM2IyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-08-14 10:22:00');
INSERT INTO `django_session` VALUES ('ylu2amhswiihe29dweuq0wh4vb6vuvb3', 'YjI0ZGIyNTYzMTA1YTNiNDg5ODBiOGY2NjcxNjM0ZjVlM2FhM2IyZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ODA2YmZlMmE5ZThiZDM1ZTQ3NjRkMzA2NmI3NzQ5YjVlMDM4MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-04 06:11:17');
INSERT INTO `reservation_candidate` VALUES ('1', '吴海峰', '18817334063', '风险分析师', '10:40 - 12:10');
INSERT INTO `reservation_candidate` VALUES ('2', '吴宝妮', '18817334060', '风险工程师', '09:00 - 10:30');
INSERT INTO `reservation_candidate` VALUES ('3', '张三', '18817334061', '风险分析师', '');
INSERT INTO `reservation_timearea` VALUES ('1', '风险分析师', '7', '09:00 - 10:30');
INSERT INTO `reservation_timearea` VALUES ('2', '风险分析师', '5', '10:40 - 12:10');
INSERT INTO `reservation_timearea` VALUES ('3', '风险分析师', '7', '13:00 - 14:30');
INSERT INTO `reservation_timearea` VALUES ('4', '风险分析师', '7', '14:40 - 16:10');
INSERT INTO `reservation_timearea` VALUES ('5', '风险工程师', '7', '09:00 - 10:30');
INSERT INTO `reservation_timearea` VALUES ('6', '风险工程师', '3', '10:40 - 12:10');
INSERT INTO `reservation_timearea` VALUES ('7', '风险工程师', '0', '13:00 - 14:30');
INSERT INTO `reservation_timearea` VALUES ('8', '风险工程师', '8', '14:40 - 16:10');
INSERT INTO `reservation_timearea` VALUES ('12', '风险工程师', '8', '16:20 - 17:50');
INSERT INTO `wolf` VALUES ('devin', 'pd', '300');
INSERT INTO `wolf` VALUES ('kevin', 'dept', '0');
INSERT INTO `wolf` VALUES ('kevin', 'mgs', '10');
INSERT INTO `wolf` VALUES ('kevin', 'pd', '0');
INSERT INTO `wolf` VALUES ('luicy', 'gs', '15');
INSERT INTO `wolf` VALUES ('luicy', 'gsc', '0');
INSERT INTO `wolf` VALUES ('manni', 'gsc', '0');
INSERT INTO `wolf` VALUES ('meijia', 'pd', '5');
INSERT INTO `wolf_player` VALUES ('1', 'wu devin', 'pd', '100', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('2', 'wu devin', 'pd', '500', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('3', 'wu devin', 'pd', '100', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('5', 'devin', 'pd', '300', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('7', 'kevin', 'mgs', '10', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('8', 'kevin', 'pd', '0', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('10', 'luicy', 'gsc', '0', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('11', 'manni', 'gsc', '34', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('12', 'meijia', 'pd', '5', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('13', 'wu devin', 'dept', '30', '2015-08-01');
INSERT INTO `wolf_player` VALUES ('14', 'Wu', 'pd', '3434', '2015-09-16');
INSERT INTO `wolf_visitor` VALUES ('1', 'visitor num', '140');
