/*
Navicat MySQL Data Transfer

Source Server         : dd
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : fruits

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-06-18 09:12:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `name` (`name`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`group_id`  int(11) NOT NULL ,
`permission_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `group_id` (`group_id`, `permission_id`) USING BTREE ,
INDEX `auth_group__permission_id_67cd88c0086117f6_fk_auth_permission_id` (`permission_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content_type_id`  int(11) NOT NULL ,
`codename`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `content_type_id` (`content_type_id`, `codename`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=49

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry'), ('2', 'Can change log entry', '1', 'change_logentry'), ('3', 'Can delete log entry', '1', 'delete_logentry'), ('4', 'Can add permission', '2', 'add_permission'), ('5', 'Can change permission', '2', 'change_permission'), ('6', 'Can delete permission', '2', 'delete_permission'), ('7', 'Can add group', '3', 'add_group'), ('8', 'Can change group', '3', 'change_group'), ('9', 'Can delete group', '3', 'delete_group'), ('10', 'Can add user', '4', 'add_user'), ('11', 'Can change user', '4', 'change_user'), ('12', 'Can delete user', '4', 'delete_user'), ('13', 'Can add content type', '5', 'add_contenttype'), ('14', 'Can change content type', '5', 'change_contenttype'), ('15', 'Can delete content type', '5', 'delete_contenttype'), ('16', 'Can add session', '6', 'add_session'), ('17', 'Can change session', '6', 'change_session'), ('18', 'Can delete session', '6', 'delete_session'), ('19', 'Can add user info', '7', 'add_userinfo'), ('20', 'Can change user info', '7', 'change_userinfo'), ('21', 'Can delete user info', '7', 'delete_userinfo'), ('22', 'Can add delivered info', '8', 'add_deliveredinfo'), ('23', 'Can change delivered info', '8', 'change_deliveredinfo'), ('24', 'Can delete delivered info', '8', 'delete_deliveredinfo'), ('25', 'Can add fru type', '9', 'add_frutype'), ('26', 'Can change fru type', '9', 'change_frutype'), ('27', 'Can delete fru type', '9', 'delete_frutype'), ('28', 'Can add fru info', '10', 'add_fruinfo'), ('29', 'Can change fru info', '10', 'change_fruinfo'), ('30', 'Can delete fru info', '10', 'delete_fruinfo'), ('31', 'Can add fru cart', '11', 'add_frucart'), ('32', 'Can change fru cart', '11', 'change_frucart'), ('33', 'Can delete fru cart', '11', 'delete_frucart'), ('34', 'Can add order info', '12', 'add_orderinfo'), ('35', 'Can change order info', '12', 'change_orderinfo'), ('36', 'Can delete order info', '12', 'delete_orderinfo'), ('37', 'Can add order detail', '13', 'add_orderdetail'), ('38', 'Can change order detail', '13', 'change_orderdetail'), ('39', 'Can delete order detail', '13', 'delete_orderdetail'), ('40', 'Can add logistics', '14', 'add_logistics'), ('41', 'Can change logistics', '14', 'change_logistics'), ('42', 'Can delete logistics', '14', 'delete_logistics'), ('43', 'Can add express info', '15', 'add_expressinfo'), ('44', 'Can change express info', '15', 'change_expressinfo'), ('45', 'Can delete express info', '15', 'delete_expressinfo'), ('46', 'Can add evaluate', '16', 'add_evaluate'), ('47', 'Can change evaluate', '16', 'change_evaluate'), ('48', 'Can delete evaluate', '16', 'delete_evaluate');
COMMIT;

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`password`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`last_login`  datetime NULL DEFAULT NULL ,
`is_superuser`  tinyint(1) NOT NULL ,
`username`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`first_name`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`last_name`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`email`  varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`is_staff`  tinyint(1) NOT NULL ,
`is_active`  tinyint(1) NOT NULL ,
`date_joined`  datetime NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `username` (`username`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$20000$tbnrWQJnyaON$7aTv7BRNuYYV1AKss2wuWzZKDXnFoGUUIo91WjFAKT0=', '2018-06-13 23:18:50', '1', 'python', '', '', 'python@123.com', '1', '1', '2018-04-14 23:15:40');
COMMIT;

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(11) NOT NULL ,
`group_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `user_id` (`user_id`, `group_id`) USING BTREE ,
INDEX `auth_user_groups_group_id_66f56e9a200f6e4a_fk_auth_group_id` (`group_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(11) NOT NULL ,
`permission_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `user_id` (`user_id`, `permission_id`) USING BTREE ,
INDEX `auth_user_u_permission_id_5111b17a0a4dbb09_fk_auth_permission_id` (`permission_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`action_time`  datetime NOT NULL ,
`object_id`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`object_repr`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`action_flag`  smallint(5) UNSIGNED NOT NULL ,
`change_message`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content_type_id`  int(11) NULL DEFAULT NULL ,
`user_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `djang_content_type_id_55d10387523d2be5_fk_django_content_type_id` (`content_type_id`) USING BTREE ,
INDEX `django_admin_log_user_id_2e7bd3d4a4e37bab_fk_auth_user_id` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=81

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES ('1', '2018-04-14 23:21:58', '1', 'admin', '1', '', '7', '1'), ('2', '2018-04-14 23:23:09', '1', 'DeliveredInfo object', '1', '', '8', '1'), ('3', '2018-04-21 07:37:09', '6', '热带水果', '1', '', '9', '1'), ('4', '2018-04-21 07:37:40', '7', '秋风水果', '1', '', '9', '1'), ('5', '2018-04-21 07:40:51', '1', '西红柿', '1', '', '10', '1'), ('6', '2018-04-21 07:47:35', '1', '西红柿', '3', '', '10', '1'), ('7', '2018-04-23 12:51:51', '8', '春季水果', '1', '', '9', '1'), ('8', '2018-04-23 12:52:05', '9', '夏季水果', '1', '', '9', '1'), ('9', '2018-04-23 12:52:17', '10', '冬季水果', '1', '', '9', '1'), ('10', '2018-04-23 12:53:07', '11', '温带水果', '1', '', '9', '1'), ('11', '2018-04-23 23:52:16', '1', '智利甜心车厘子樱桃J 5斤装', '1', '', '10', '1'), ('12', '2018-04-23 23:56:18', '2', '现货 台湾芭乐珍珠番石榴 5斤装', '1', '', '10', '1'), ('13', '2018-04-24 00:46:44', '3', '海南蜜宝红心火龙果2.5kg', '1', '', '10', '1'), ('14', '2018-04-24 01:03:50', '1', '智利甜心车厘子樱桃J 5斤装', '2', '已修改 isRecommend 。', '10', '1'), ('15', '2018-04-24 01:04:28', '2', '现货 台湾芭乐珍珠番石榴 5斤装', '2', '已修改 isRecommend 。', '10', '1'), ('16', '2018-04-25 00:54:12', '4', '泰国奶椰1个', '1', '', '10', '1'), ('17', '2018-04-25 00:56:41', '5', '金枕榴莲4斤 超重按19.8/斤补差价', '1', '', '10', '1'), ('18', '2018-04-25 00:58:05', '6', '牛油果 2个', '1', '', '10', '1'), ('19', '2018-05-21 12:21:08', '1', 's1235889', '3', '', '7', '1'), ('20', '2018-05-21 12:43:32', '5', '1113114255', '1', '', '14', '1'), ('21', '2018-05-21 13:37:11', '1', '申通', '1', '', '15', '1'), ('22', '2018-05-21 13:37:25', '2', '邮政', '1', '', '15', '1'), ('23', '2018-05-21 13:37:41', '3', '顺丰', '1', '', '15', '1'), ('24', '2018-05-21 13:37:57', '4', '圆通', '1', '', '15', '1'), ('25', '2018-05-21 13:38:11', '5', '中通', '1', '', '15', '1'), ('26', '2018-05-21 13:38:23', '6', '韵达', '1', '', '15', '1'), ('27', '2018-05-21 13:38:38', '7', '全峰', '1', '', '15', '1'), ('28', '2018-05-21 13:38:58', '8', '德邦', '1', '', '15', '1'), ('29', '2018-05-21 13:39:13', '9', '宅急送', '1', '', '15', '1'), ('30', '2018-05-21 13:39:26', '10', '天天', '1', '', '15', '1'), ('31', '2018-05-21 13:39:40', '11', '汇通', '1', '', '15', '1'), ('32', '2018-05-21 13:59:15', '1', '申通', '1', '', '15', '1'), ('33', '2018-05-21 13:59:26', '2', '邮政', '1', '', '15', '1'), ('34', '2018-05-21 13:59:39', '3', '顺丰', '1', '', '15', '1'), ('35', '2018-05-21 13:59:51', '4', '圆通', '1', '', '15', '1'), ('36', '2018-05-21 14:00:04', '5', '中通', '1', '', '15', '1'), ('37', '2018-05-21 14:01:27', '6', '韵达', '1', '', '15', '1'), ('38', '2018-05-21 14:01:45', '7', '全峰', '1', '', '15', '1'), ('39', '2018-05-21 14:02:05', '8', '德邦', '1', '', '15', '1'), ('40', '2018-05-21 14:02:17', '9', '宅急送', '1', '', '15', '1'), ('41', '2018-05-21 14:02:32', '10', '天天', '1', '', '15', '1'), ('42', '2018-05-21 14:02:45', '11', '汇通', '1', '', '15', '1'), ('43', '2018-05-21 14:08:31', '1', '15269116392', '1', '', '14', '1'), ('44', '2018-05-24 08:03:15', '2', '15269559272', '1', '', '14', '1'), ('45', '2018-05-24 08:26:27', '2', '15269559272', '2', '已修改 lnumber 和 lname 。', '14', '1'), ('46', '2018-05-24 08:28:34', '3', '15271504702', '1', '', '14', '1'), ('47', '2018-05-24 08:37:05', '4', '15271504702', '1', '', '14', '1'), ('48', '2018-05-24 08:37:55', '4', '15271504702', '3', '', '14', '1'), ('49', '2018-05-24 08:37:55', '3', '15271504702', '3', '', '14', '1'), ('50', '2018-05-24 08:37:55', '2', '15269559272', '3', '', '14', '1'), ('51', '2018-05-29 07:34:56', '2', '15275791403', '1', '', '14', '1'), ('52', '2018-05-29 07:44:40', '3', '15275798353', '1', '', '14', '1'), ('53', '2018-05-29 07:50:58', '4', '15275802243', '1', '', '14', '1'), ('54', '2018-05-29 07:53:54', '5', '15275804073', '1', '', '14', '1'), ('55', '2018-05-29 07:55:07', '6', '15275804763', '1', '', '14', '1'), ('56', '2018-06-02 02:50:58', '45', 'a123456789', '3', '', '7', '1'), ('57', '2018-06-02 02:57:51', '11', '干果食品', '2', '已修改 ttitle 。', '9', '1'), ('58', '2018-06-02 03:04:40', '7', '进口香蕉 1斤', '1', '', '10', '1'), ('59', '2018-06-02 07:11:56', '6', '15275804763', '3', '', '14', '1'), ('60', '2018-06-02 07:19:11', '7', '15279064282', '1', '', '14', '1'), ('61', '2018-06-02 07:27:49', '6', 's1235889', '2', '已修改 value 。', '16', '1'), ('62', '2018-06-12 15:44:07', '15284213002', '15284213002', '2', '已添加 发货信息 \"15284213002\".', '12', '1'), ('63', '2018-06-12 16:08:09', '15288170672', '15288170672', '2', '已添加 发货信息 \"15288170672\".', '12', '1'), ('64', '2018-06-13 12:50:01', '8', '日本陆奥苹果1个装', '1', '', '10', '1'), ('65', '2018-06-13 12:51:45', '9', '赣南脐橙', '1', '', '10', '1'), ('66', '2018-06-13 12:54:41', '10', '真心祝福水果礼篮', '1', '', '10', '1'), ('67', '2018-06-13 12:56:17', '11', '欢乐时光水果礼篮', '1', '', '10', '1'), ('68', '2018-06-13 12:57:54', '12', '关怀备至礼盒', '1', '', '10', '1'), ('69', '2018-06-13 12:59:42', '13', '团聚礼盒', '1', '', '10', '1'), ('70', '2018-06-13 13:00:43', '14', '海南小台农芒果', '1', '', '10', '1'), ('71', '2018-06-13 13:01:56', '15', '妃子笑荔枝', '1', '', '10', '1'), ('72', '2018-06-13 13:03:57', '2', '现货 台湾芭乐珍珠番石榴 5斤装', '2', '已修改 ftype 。', '10', '1'), ('73', '2018-06-13 13:04:38', '4', '泰国奶椰1个', '2', '已修改 ftype 。', '10', '1'), ('74', '2018-06-13 13:08:39', '16', '拇指青桔', '1', '', '10', '1'), ('75', '2018-06-13 13:18:25', '17', '黄金百香果', '1', '', '10', '1'), ('76', '2018-06-13 14:08:38', '152889869250', '152889869250', '2', '已修改 odate 。 已添加 发货信息 \"152889869250\".', '12', '1'), ('77', '2018-06-13 14:10:11', '152889869250', '152889869250', '2', '已添加 发货信息 \"152889869250\".', '12', '1'), ('78', '2018-06-13 14:10:44', '152889869250', '152889869250', '2', '已删除 发货信息 \"152889869250\".', '12', '1'), ('79', '2018-06-13 14:21:39', '152889965250', '152889965250', '2', '已修改 odate 。 已添加 发货信息 \"152889965250\".', '12', '1'), ('80', '2018-06-13 14:22:44', '152889965250', '152889965250', '2', '已变更 lnumber for 发货信息 \"152889965250\".', '12', '1');
COMMIT;

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`app_label`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`model`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `django_content_type_app_label_4e8898941db97424_uniq` (`app_label`, `model`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=17

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry'), ('3', 'auth', 'group'), ('2', 'auth', 'permission'), ('4', 'auth', 'user'), ('5', 'contenttypes', 'contenttype'), ('11', 'f_cart', 'frucart'), ('10', 'f_info', 'fruinfo'), ('9', 'f_info', 'frutype'), ('16', 'f_order', 'evaluate'), ('15', 'f_order', 'expressinfo'), ('14', 'f_order', 'logistics'), ('13', 'f_order', 'orderdetail'), ('12', 'f_order', 'orderinfo'), ('8', 'f_user', 'deliveredinfo'), ('7', 'f_user', 'userinfo'), ('6', 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`app`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`applied`  datetime NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=23

;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-04-14 23:10:16'), ('2', 'auth', '0001_initial', '2018-04-14 23:10:16'), ('3', 'admin', '0001_initial', '2018-04-14 23:10:16'), ('4', 'contenttypes', '0002_remove_content_type_name', '2018-04-14 23:10:16'), ('5', 'auth', '0002_alter_permission_name_max_length', '2018-04-14 23:10:16'), ('6', 'auth', '0003_alter_user_email_max_length', '2018-04-14 23:10:17'), ('7', 'auth', '0004_alter_user_username_opts', '2018-04-14 23:10:17'), ('8', 'auth', '0005_alter_user_last_login_null', '2018-04-14 23:10:17'), ('9', 'auth', '0006_require_contenttypes_0002', '2018-04-14 23:10:17'), ('10', 'sessions', '0001_initial', '2018-04-14 23:10:17'), ('11', 'f_info', '0001_initial', '2018-04-21 07:25:12'), ('12', 'f_cart', '0001_initial', '2018-04-28 06:26:50'), ('17', 'f_order', '0001_initial', '2018-05-21 13:57:53'), ('18', 'f_order', '0002_evaluate', '2018-05-22 03:13:24'), ('19', 'f_order', '0003_evaluate_star', '2018-05-22 03:30:20'), ('20', 'f_cart', '0002_auto_20180604_1033', '2018-06-04 02:34:24'), ('21', 'f_info', '0002_auto_20180604_1033', '2018-06-04 02:34:24'), ('22', 'f_order', '0004_auto_20180604_1033', '2018-06-04 02:34:24');
COMMIT;

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
`session_key`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`session_data`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`expire_date`  datetime NOT NULL ,
PRIMARY KEY (`session_key`),
INDEX `django_session_de54fa62` (`expire_date`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0fzfu9grejs48iketirmzyg8738j9a37', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 02:59:12'), ('28q5hbm2x8zas4y1x0mar2tim73q91l7', 'NmM1YjNjNjE2M2U1MjU3NzgyN2FmYzQ3MGY3Mzc0NTEwN2MzNGI0NTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6NCwidXNlcl9uYW1lIjoic3MxMjM0NTYifQ==', '2018-06-11 08:36:15'), ('2npmoczehiv1usi2cpnr5oy88mbi3o9s', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 02:50:56'), ('31l70v3wi8g6xizca4zl3p4b9nxye250', 'MWQ2NWVhZTc4NTAzYTAwYmJlZWNlYjI5YTdiOWJjNzJjZTZhMjQxMTp7Il9zZXNzaW9uX2V4cGlyeSI6MH0=', '2018-06-12 15:41:43'), ('3traetyhw1q6orwgblpri4wcheraahvg', 'MWQ2NWVhZTc4NTAzYTAwYmJlZWNlYjI5YTdiOWJjNzJjZTZhMjQxMTp7Il9zZXNzaW9uX2V4cGlyeSI6MH0=', '2018-06-12 08:23:29'), ('4baghug2evzmhsx394bgb6s4bfmot2vk', 'ZjIxODIyNWE0YWJjZTVhOWE3OTViNmUwM2Y3ODc5MWI1YjY2MWEwNzp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJ1c2VyX2lkIjoyfQ==', '2018-06-18 02:16:32'), ('6flm8m60hc8l2j2gz8moti5bkn5wdzmh', 'ODYzOGNkZmU2OWM5ZjczM2RlMmFjYzU4YTJiZTlkODU5NDU1MmIxNjp7InVzZXJfaWQiOjIsInVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-06-11 06:45:49'), ('6o4wkwd6tk275gkjfz34eccfed04myxm', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-06-01 13:09:50'), ('7nzi9o127zp21l5pvb9qbmn7hdjyu00b', 'ZjIxODIyNWE0YWJjZTVhOWE3OTViNmUwM2Y3ODc5MWI1YjY2MWEwNzp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJ1c2VyX2lkIjoyfQ==', '2018-06-12 00:46:04'), ('7xtd58hs7zb1p9o7rvtoffd5ohqdl4w6', 'ZWNkMTk5M2I5NzkxMGY0MTlkZjMwNjZjMTcxZWFmNGE2ZTBlYzc0MTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9uYW1lIjoiYzEyMzQ1NjciLCJ1c2VyX2lkIjo1MH0=', '2018-06-27 13:31:35'), ('a946qf30wta3bm1t36g31ruh5espe5m3', 'MDIyNTgxMTMxZGFkZDc3MDZmYmQ5OTgxMGYzYTJiMDhkNDdjMDIzYjp7InVzZXJfaWQiOjQ3LCJ1c2VyX25hbWUiOiJxcTEyMzQ1IiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-06-26 16:48:44'), ('akusdjzrecvxsiarl9mtqpy340i24b8t', 'MmQ1YzIyYWFjYTViMDliOGZlMzlmY2Q1ZTIzNWQwZjgxNDZhMTA2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwidXNlcl9uYW1lIjoiczEyMzU4ODkiLCJfc2Vzc2lvbl9leHBpcnkiOjAsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwidXNlcl9pZCI6MiwiX2F1dGhfdXNlcl9oYXNoIjoiMTM0NDg2MmQwNDVkMjJlNmVlZjgwNTUxNTM5Y2U0YjkxNmU2MmNhMyJ9', '2018-06-15 10:04:52'), ('ar3habnx97wtt1pkky5h9m7q4xk1pn6r', 'MWEzNTQ4ODQ0ZWQyNmU4NDFmMTFlOTg2YzMyOTg2MTFlYTM2MmYxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 03:50:47'), ('blkmv7dym430rkvkekbytwqs4uuogkcj', 'MWEzNTQ4ODQ0ZWQyNmU4NDFmMTFlOTg2YzMyOTg2MTFlYTM2MmYxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 02:41:50'), ('cgub9vkaevsvvknynodmns3ookp2k2qr', 'MWEzNTQ4ODQ0ZWQyNmU4NDFmMTFlOTg2YzMyOTg2MTFlYTM2MmYxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 02:42:36'), ('cwup43icxyisg854opyppithdagevciz', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-06-04 14:33:29'), ('dba75k10eluundzgtdq2iaoo6jewm05c', 'ZjY4ZDlmMDFiYjIzODZiYzU3MzhiZWIwMmVhOTlkNzk3NWI3ZWM3Mjp7InVzZXJfaWQiOjQ3LCJfc2Vzc2lvbl9leHBpcnkiOjAsInVzZXJfbmFtZSI6InFxMTIzNDUifQ==', '2018-06-26 17:02:10'), ('defduymx8xplvn2p1gh10mvs304mcbwk', 'YzUyM2IzZjkwZDAyMTMxMDE4OTY1ODYzOTdkOTY0ZDYwYjI5MjI0Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTM0NDg2MmQwNDVkMjJlNmVlZjgwNTUxNTM5Y2U0YjkxNmU2MmNhMyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-05-07 12:51:13'), ('df4b78r807bwxqqozoeu5g18musg69r6', 'MDFhNDZhZDMzODhkNzk1NTMzMzRlMjQ0ZWYxMTlmYzIxZjQ5OWU3Nzp7InVzZXJfaWQiOjIsIl9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-22 00:49:31'), ('ert16cnno6mosbz76d4jzgdetbrlyrjb', 'MDFhNDZhZDMzODhkNzk1NTMzMzRlMjQ0ZWYxMTlmYzIxZjQ5OWU3Nzp7InVzZXJfaWQiOjIsIl9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-15 12:50:59'), ('f0ibb1d8p81rxhzogxlrjdmpl6pwnqmw', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 02:57:32'), ('foefv5rqb03zl571yl5mkrktf9wicpsh', 'NmQ5MTY4MDdiMzBjMGQ0YTk3N2M2ZTM4Mzc5Y2E4NjExNjBmMmM2YTp7InVzZXJfaWQiOjQ1LCJ1c2VyX25hbWUiOiIxMjM0NTY3ODkiLCJfc2Vzc2lvbl9leHBpcnkiOjB9', '2018-06-22 15:19:22'), ('gd53x87ahl5wah4hmipmra4aee950ar1', 'MTkwODg4MjQ3ZThmM2EzY2I4OGE1Y2MxNGFiZTAwOTQ0YTMxMzVjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTM0NDg2MmQwNDVkMjJlNmVlZjgwNTUxNTM5Y2U0YjkxNmU2MmNhMyIsInVzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-04 14:06:57'), ('gi3d6m5fogp804pk2mol4glgxrsnkya3', 'NTY3ZWEwN2VlNjJiYjEwNDkzMzE2OTUzZDYxNzE4OGQwOTI1ZWZiNTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMzQ0ODYyZDA0NWQyMmU2ZWVmODA1NTE1MzljZTRiOTE2ZTYyY2EzIiwidXNlcl9pZCI6MiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-06-07 08:01:29'), ('gzjunzys3e0jodvb1ga0yt1ofjast2dh', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 01:34:20'), ('j45kn1n6uvogp83esxu06ku2fb0qzmpr', 'Y2FkMThiYzE4NDJmOWEzZjc0MTFmN2FmNTRlOTQzNmVmMGUxYzJiYjp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6MiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-06-16 08:49:37'), ('jf9elw6w8yiq62ba987sqxugbjod81iq', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-06-02 14:55:39'), ('jidqm8kjiyid3dzrck5uy54hxccmlboo', 'MjFhZTU2ZWM1ZTU4OWEwNDFiZWY4MTAwNjBhNzYyZDM0ZTE5NWQ2ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9uYW1lIjoiczEyMzU4ODkiLCJ1c2VyX2lkIjoyfQ==', '2018-06-27 02:31:24'), ('kiagb0e4nc2gal7cmxc1gei6iejm664e', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-06-04 14:34:19'), ('kiqy74muptmh4l8d9ikn7ihvmd679l5e', 'MWEzNTQ4ODQ0ZWQyNmU4NDFmMTFlOTg2YzMyOTg2MTFlYTM2MmYxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 02:11:18'), ('kmib6cz2n570i8yvon8u46g3yzzes2p6', 'YzUyM2IzZjkwZDAyMTMxMDE4OTY1ODYzOTdkOTY0ZDYwYjI5MjI0Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTM0NDg2MmQwNDVkMjJlNmVlZjgwNTUxNTM5Y2U0YjkxNmU2MmNhMyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-04-28 23:16:21'), ('kzv76b39vvsvkk79tq6ywdclz7g9lgj4', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-06-04 14:43:30'), ('l1yf4ciz84x4xoh1cwn8a2jr0b4tquss', 'ODYzOGNkZmU2OWM5ZjczM2RlMmFjYzU4YTJiZTlkODU5NDU1MmIxNjp7InVzZXJfaWQiOjIsInVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-06-11 06:47:13'), ('l7fu978zaz17zwaj8yklf6scaznznqyd', 'YTcwNzlmZDQ0N2Q1MzhiYmNjMDIyZDA0NTNkMGMxZjVjZWU3NWM0Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzNDQ4NjJkMDQ1ZDIyZTZlZWY4MDU1MTUzOWNlNGI5MTZlNjJjYTMiLCJ1c2VyX25hbWUiOiJzMTIzNTg4OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwidXNlcl9pZCI6MiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-06-04 15:19:14'), ('o87omlhmc2e2om0koc6rxkinurm32vk8', 'MDFhNDZhZDMzODhkNzk1NTMzMzRlMjQ0ZWYxMTlmYzIxZjQ5OWU3Nzp7InVzZXJfaWQiOjIsIl9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 03:18:23'), ('ql0e1q2r4wjz19zyhrdzqs0pxcypva2e', 'Y2FkMThiYzE4NDJmOWEzZjc0MTFmN2FmNTRlOTQzNmVmMGUxYzJiYjp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6MiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-06-12 16:56:31'), ('rsmaylrir1tcp6scyem3eow7w2wnaraq', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 02:55:56'), ('t8i0or7e958y9pzrwt9t1twihmuopdcx', 'ZjYwMjg3Y2RkNzU3OWUyNDZlMTQ5N2M0ZTI0ZTRjNzhmNDE5MWY1Zjp7InVzZXJfaWQiOjQ5LCJfYXV0aF91c2VyX2lkIjoiMSIsInVzZXJfbmFtZSI6ImFhMTIzNDU2IiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJfYXV0aF91c2VyX2hhc2giOiIxMzQ0ODYyZDA0NWQyMmU2ZWVmODA1NTE1MzljZTRiOTE2ZTYyY2EzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2018-06-27 03:12:11'), ('tmtr04wmb43s4z7cw0mnumm3nnrshgxu', 'ZjIxODIyNWE0YWJjZTVhOWE3OTViNmUwM2Y3ODc5MWI1YjY2MWEwNzp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJ1c2VyX2lkIjoyfQ==', '2018-06-12 16:18:27'), ('uz85k2l5y5848cfflkc0m5cyftj2kem2', 'YjYxNTc4NTAyZDhhMjdjOWE2MjI3ZTg0NTE2YmM4NDU0NjNmMDMxNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzNDQ4NjJkMDQ1ZDIyZTZlZWY4MDU1MTUzOWNlNGI5MTZlNjJjYTMiLCJ1c2VyX2lkIjoyLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-05 02:51:02'), ('v5marazle1glf6b2t8bvru12wtq3ycge', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 02:58:34'), ('vrgjpgtg7k6wquiyp4jfizgxk6922ig3', 'MWEzNTQ4ODQ0ZWQyNmU4NDFmMTFlOTg2YzMyOTg2MTFlYTM2MmYxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 02:43:28'), ('x088m94xyc40bgzm1kh07owwy3zt0sjh', 'NjhmNmQxMGU2OGFiNTIxYjZlMDQ2MDgyZmQwM2M1MGJkOTEzY2UzZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsInVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMTM0NDg2MmQwNDVkMjJlNmVlZjgwNTUxNTM5Y2U0YjkxNmU2MmNhMyIsInVzZXJfaWQiOjJ9', '2018-06-16 07:21:05'), ('x0a8naxnzw1xgv5zbzgmj1chtpoedksv', 'MWEzNTQ4ODQ0ZWQyNmU4NDFmMTFlOTg2YzMyOTg2MTFlYTM2MmYxMjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidXNlcl9pZCI6MiwidXNlcl9uYW1lIjoiczEyMzU4ODkifQ==', '2018-06-13 02:56:11'), ('ye044fobac6n46qbqstud9aj8dbcyqru', 'YWZmNzdmYzc4ZmRlYmUxYmJkZWQ0MzQ4ZWZiMDBmZDM1NGU3ZDY5MDp7InVzZXJfaWQiOjIsInVzZXJfbmFtZSI6InMxMjM1ODg5In0=', '2018-05-31 01:41:57'), ('zd2hvbglmf5d6i7gvhhltsuhjt6bra3q', 'ODYzOGNkZmU2OWM5ZjczM2RlMmFjYzU4YTJiZTlkODU5NDU1MmIxNjp7InVzZXJfaWQiOjIsInVzZXJfbmFtZSI6InMxMjM1ODg5IiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2018-06-11 06:45:30'), ('ze3ublze55m8dc70kbz7rwobl8v5ykig', 'MmYzMmNiZDY2NGUxN2EyOGUyZGRmNjI3YThmMzkxYjE0ODk2MDAzMTp7InVzZXJfbmFtZSI6InMxMjM1ODg5IiwidXNlcl9pZCI6Mn0=', '2018-05-12 02:53:07'), ('zntjbvuxxozwhgye8v1qa0k9fyg9mdx4', 'MzIwZWEyODg5NzFhZGE2MGM0YTQ0MmRiYjBiNzQ1MmEwMGFiZjkwMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzNDQ4NjJkMDQ1ZDIyZTZlZWY4MDU1MTUzOWNlNGI5MTZlNjJjYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9pZCI6IjEiLCJ1c2VyX2lkIjoyLCJ1c2VyX25hbWUiOiJzMTIzNTg4OSJ9', '2018-06-16 02:56:28');
COMMIT;

-- ----------------------------
-- Table structure for `f_cart_frucart`
-- ----------------------------
DROP TABLE IF EXISTS `f_cart_frucart`;
CREATE TABLE `f_cart_frucart` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`count`  int(11) NOT NULL ,
`cfruit_id`  int(11) NOT NULL ,
`cuser_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`cfruit_id`) REFERENCES `f_info_fruinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`cuser_id`) REFERENCES `f_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_cart_frucart_cfruit_id_48eb0f3e1b1d731f_fk_f_info_fruinfo_id` (`cfruit_id`) USING BTREE ,
INDEX `f_cart_frucart_cuser_id_599d91938c18c8a_fk_f_user_userinfo_id` (`cuser_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=18

;

-- ----------------------------
-- Records of f_cart_frucart
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `f_info_fruinfo`
-- ----------------------------
DROP TABLE IF EXISTS `f_info_fruinfo`;
CREATE TABLE `f_info_fruinfo` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`ftitle`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fprice`  decimal(5,2) NOT NULL ,
`fdetail`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fpic`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isDelete`  tinyint(1) NOT NULL ,
`funit`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fclick`  int(11) NOT NULL ,
`fabstract`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fstock`  int(11) NOT NULL ,
`isRecommend`  tinyint(1) NOT NULL ,
`ftype_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`ftype_id`) REFERENCES `f_info_frutype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_info_fruinfo_5d88263a` (`ftype_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=18

;

-- ----------------------------
-- Records of f_info_fruinfo
-- ----------------------------
BEGIN;
INSERT INTO `f_info_fruinfo` VALUES ('1', '智利甜心车厘子樱桃J 5斤装', '497.99', '<div style=\"color: #646464; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #f5f5f5; padding: 4px 20px 4px 0px; line-height: 20px; overflow: hidden; zoom: 1;\"><span style=\"margin: 0px 6px 0px 0px; padding: 0px 6px 0px 0px; float: left; width: 100px; text-align: right;\">温馨提示：</span><span style=\"margin: 0px; padding: 0px; display: block; overflow: hidden; zoom: 1;\">鲜果之家所售商品均经过严格的供应商资质审查、商品审查、入库全检、出货全检流程。由于部分商品存在厂家更换包装、不同批次、不同生产日期、不同生产工厂等情况，导致商品实物与图片存在微小差异，因此请您以收到的商品实物为准，同时我们会尽量做到及时更新，由此给您带来不便敬请谅解，谢谢！</span></div>\r\n<div class=\"pJiucuo\" style=\"padding: 5px 0px; color: #646464; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">如果您发现商品信息存在问题，&nbsp;<a style=\"margin: 0px; padding: 0px; color: #4c9811; text-decoration-line: none;\" href=\"http://www.xianguozhijia.com/\" target=\"_blank\">欢迎纠错</a></div>\r\n<p style=\"margin: 0px; padding: 0px; color: #6b6b6b; word-break: break-all; font-size: 14px; line-height: 24px; font-family: Arial, Helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"margin: 0px; padding: 0px; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.4px; text-indent: 2em; border: 0px; outline: 0px; vertical-align: baseline;\">我们只挑有来头的水果，智利樱桃火爆来袭，</span><span style=\"margin: 0px; padding: 0px; line-height: 22.4px; text-indent: 2em; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: #333333; font-family: arial, \'Hiragino Sans GB\', sans-serif;\">产地直供，全程冷链，美味新鲜上市。本批樱桃表皮光洁，色泽鲜亮，果肉坚实而脆，香甜沁心，口感甜蜜，是冬日里不可多得的上品樱桃。</span></p>\r\n<p style=\"margin: 10px auto; padding: 0px; color: #6b6b6b; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\">温馨提示</p>\r\n<p style=\"margin: 10px auto; padding: 0px; color: #6b6b6b; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline;\">好的樱桃会连有果蒂，表皮饱满且有光泽，挑选樱桃就要选这样的。沾了水的樱桃即使在冰箱中也很容易变质，因此切勿将清洗后的樱桃再放入冰箱保存。</span></p>', 'f_media/340_P_1446071784741.jpg', '0', '2.5kg', '260', '我们只挑有来头的水果，智利樱桃火爆来袭，产地直供，全程冷链，美味新鲜上市。本批樱桃表皮光洁，色泽鲜亮，果肉坚实而脆，香甜沁心，口感甜蜜，是冬日里不可多得的上品樱桃。', '1938', '1', '6'), ('2', '现货 台湾芭乐珍珠番石榴 5斤装', '56.00', '<div style=\"color: #646464; font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: #f5f5f5; padding: 4px 20px 4px 0px; line-height: 20px; overflow: hidden; zoom: 1;\"><span style=\"margin: 0px 6px 0px 0px; padding: 0px 6px 0px 0px; float: left; width: 100px; text-align: right;\">温馨提示：</span><span style=\"margin: 0px; padding: 0px; display: block; overflow: hidden; zoom: 1;\">鲜果之家所售商品均经过严格的供应商资质审查、商品审查、入库全检、出货全检流程。由于部分商品存在厂家更换包装、不同批次、不同生产日期、不同生产工厂等情况，导致商品实物与图片存在微小差异，因此请您以收到的商品实物为准，同时我们会尽量做到及时更新，由此给您带来不便敬请谅解，谢谢！</span></div>\r\n<div class=\"pJiucuo\" style=\"padding: 5px 0px; color: #646464; font-family: Arial, Helvetica, sans-serif; font-size: 12px;\">如果您发现商品信息存在问题，&nbsp;<a style=\"margin: 0px; padding: 0px; color: #4c9811; text-decoration-line: none;\" href=\"http://www.xianguozhijia.com/\" target=\"_blank\">欢迎纠错</a></div>\r\n<p style=\"margin: 0px; padding: 0px; color: #6b6b6b; word-break: break-all; font-size: 14px; line-height: 24px; font-family: Arial, Helvetica, sans-serif;\">&nbsp;<strong style=\"margin: 0px; padding: 0px; color: #404040; font-family: 宋体, Arial, Helvetica, sans-serif; line-height: 22.4px; text-indent: 2em; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #000000;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;\">番石榴，俗称芭乐、那拔仔或拔子。台湾芭乐为桃金娘科番石榴属果树，肉质非常柔软，肉汁丰富，味道甜美， 几乎无籽，风味接近于梨和台湾大青枣之间。它的果实椭圆形，颜色乳青至乳白，极其漂亮，平均单果重280克以上，最大的可达550克，含糖量为 11.45%，含有大量的钾、铁、胡萝卜素等，营养极其丰富。芭乐是台湾的土生水果之一，还是一等一的减肥水果。具有以下特点： 　　</span></span></strong></p>\r\n<p style=\"margin: 10px auto 0px; padding: 0px; color: #404040; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #000000;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.果形有球形、椭圆形、卵圆形及洋梨形，果皮普通为绿色、红色、黄色，果肉有白色、红色、黄色等。肉质细嫩、清脆香甜、爽口舒心、常吃不腻，是养颜美容的最佳水果。 　　</span></span></strong></p>\r\n<p style=\"margin: 10px auto 0px; padding: 0px; color: #404040; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #000000;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.营养丰富，可增加食欲，促进儿童生长发育，含有蛋白质、脂肪、醣类、维他命A、B、C，钙、磷、铁。番石榴营养价值高，以维他命C而言，比柑桔多8 倍，比香蕉、木瓜 、番茄（西红柿）、西瓜、凤梨等多数十倍，铁、钙、磷含量也丰富，种子中铁的含量更胜于其它水果，所以最好能一起食下去。 　　</span></span></strong></p>\r\n<p style=\"margin: 10px auto 0px; padding: 0px; color: #404040; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #000000;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.食疗药用价值高，可防治高血压、糖尿病，对于肥胖症及肠胃不佳之患者，最为理想之食用水果。芭乐的叶片和幼果切片晒干泡茶喝，可辅助治疗糖尿病。 　　</span></span></strong></p>\r\n<p style=\"margin: 10px auto 0px; padding: 0px; color: #404040; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: #000000;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.果实无药害、病害污染，因讲究科学栽植，从小果开始就套装薄膜袋，直到采果，与药害虫害隔绝，是标准的绿色食品。 　　</span></span></strong></p>\r\n<p style=\"margin: 10px auto 0px; padding: 0px; color: #6b6b6b; word-break: break-all; font-size: 14px; line-height: 22.4px; border: 0px; outline: 0px; vertical-align: baseline; text-indent: 2em; font-family: 宋体, Arial, Helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; line-height: 1.5;\">&nbsp; &nbsp; &nbsp; 　5.方便生食，鲜果洗净（免削皮）即可食用，有些人喜欢切块置于碟上，加上少许酸梅粉或盐巴，风味独特。如使用家庭式果汁机，自制原汁、原味芭乐果汁，享受人生独特口味。</span></strong></p>', 'f_media/345_P_1446072965977.jpg', '0', '2.5kg', '43', '低糖高纤维水果 番石榴新鲜水果', '1947', '1', '9'), ('3', '海南蜜宝红心火龙果2.5kg', '69.00', '<p>偶觉得ok</p>', 'f_media/439_P_1450081103092.jpg', '0', '2.5kg', '5', '蜜宝红心火龙果是非常受欢迎的健康水果之一,鲜果之家为喜欢吃蜜宝红心火龙果的朋友提供最新海南蜜宝红', '1983', '0', '8'), ('4', '泰国奶椰1个', '12.80', '<ul style=\"margin: 0px; padding: 0px; list-style: none outside none; color: #666666; font-family: Arial, Verdana, ����; font-size: 12px;\">\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"泰国奶椰1个\">商品名称：泰国奶椰1个</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"328\">商品编号：328</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"2016/11/7 12:28:29\">上架时间： 2016-11-07</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"斤\">商品规格：斤</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">商品产地：</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">类别： 其它</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">价格：0-40</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">产地：泰国</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">品牌：绿叶</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">购买方式：支持在线支付和货到付款</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">储存方式：常温保存</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">规格：1个</li>\r\n</ul>', 'f_media/201804190940073400.jpg', '0', '1个', '13', '奶香四溢，清爽满屋！今年受追捧的椰子，产地直供，100%天然的美味！为享受更好的口感，您购买后请尽快食用！！', '1991', '0', '10'), ('5', '金枕榴莲4斤 超重按19.8/斤补差价', '79.80', '<ul style=\"margin: 0px; padding: 0px; list-style: none outside none; color: #666666; font-family: Arial, Verdana, ����; font-size: 12px;\">\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"金枕榴莲4斤 超重按19.8/斤补差价\">商品名称：金枕榴莲4斤 超重按19.8/斤补差价</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"764\">商品编号：764</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"2016/12/15 9:39:33\">上架时间： 2016-12-15</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"KG\">商品规格：KG</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">商品产地：</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">类别： 浆果类</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">价格：0-40</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">产地：加拿大</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">品牌：绿叶</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">购买方式：支持在线支付和货到付款</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">储存方式：常温保存</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">规格：2个,1个</li>\r\n</ul>', 'f_media/201803261042222875.jpg', '0', '2kg', '6', '绿叶出售的榴莲选自泰国品种，果期长，自然成熟，产地新鲜采摘，果皮鲜绿，果肉柔软，口感甜润细腻。【超重按19.8/斤补差价】', '2000', '0', '10'), ('6', '牛油果 2个', '19.80', '<ul style=\"margin: 0px; padding: 0px; list-style: none outside none; color: #666666; font-family: Arial, Verdana, ����; font-size: 12px;\">\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"牛油果 2个\">商品名称：牛油果 2个</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"315\">商品编号：315</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"2016/8/22 14:51:45\">上架时间： 2016-08-22</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"个\">商品规格：个</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">商品产地：</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">类别： 浆果类</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">价格：0-40</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">产地：国外</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">品牌：绿叶</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">购买方式：支持在线支付和货到付款</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">储存方式：常温保存</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">规格：4个,1个,5个</li>\r\n</ul>', 'f_media/201801211333150008.jpg', '0', '2个', '5', '商品名称：牛油果 2个商品编号：315上架时间： 2016-08-22商品规格：个商品产地：类别： 浆果类价格：0-40产地：国外品牌：绿叶购买方式：支持在线支付和货到付款储存方式：常温保存规格：4个,1个,5个', '1996', '0', '11'), ('7', '进口香蕉 1斤', '6.98', '<ul style=\"margin: 0px; padding: 0px; list-style: none outside none; color: #666666; font-family: Arial, Verdana, ����; font-size: 12px;\">\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"进口香蕉 1斤\">商品名称：进口香蕉 1斤</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"791\">商品编号：791</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"2016/8/22 14:49:12\">上架时间： 2016-08-22</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\" title=\"斤\">商品规格：斤</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">商品产地：</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">类别： 浆果类</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">价格：0-40</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">产地：国外</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">品牌：绿叶</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">购买方式：支持在线支付和货到付款</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">储存方式：常温保存</li>\r\n<li style=\"margin: 0px; padding: 4px 4px 4px 0px; list-style: none; width: 307px; float: left; overflow: hidden; height: 13px;\">规格：1份,1斤</li>\r\n</ul>', 'f_media/banane.png', '0', '1斤', '10', '进口香蕉吸收了大量的阳光，色泽艳，果肉脆、甜度高，是高品质香蕉的代表，有智慧之果之称。', '2000', '1', '10'), ('8', '日本陆奥苹果1个装', '78.00', '<p><span style=\"color: #777777; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">诞生于青森县，日本苹果年产量第一地区。由金冠苹果和印度苹果杂交而成的世界级苹果。 果型端正，色泽粉红，果皮薄，外表光滑细腻。酸甜适口，细脆汁多，营养价值极为丰富。</span></p>', 'f_media/F562YIWSBGDLK3LOA.png', '0', '1个装', '0', '诞生于青森县，日本苹果年产量第一地区。由金冠苹果和印度苹果杂交而成的世界级苹果。 果型端正，色泽粉红，果皮薄，外表光滑细腻。酸甜适口，细脆汁多，营养价值极为丰富。', '2000', '1', '10'), ('9', '赣南脐橙', '59.00', '<p><span style=\"color: #777777; font-family: Arial, Helvetica, sans-serif; font-size: 13px;\">赣南脐橙，江西特产。赣南脐橙果大形正，橙红鲜艳，光洁美观，可食率达85%，肉质脆嫩、化渣，风味浓甜芳香，含果汁55%以上。橙黄鲜艳、香气扑鼻、细嫩多汁。富含多种维生素以及钙、铁等，低热低脂高纤，还原橙子最原始的味道，吃过才知道什么是&ldquo;自然甜&rdquo;。</span></p>', 'f_media/HA9PW0SYDPE8SDIF1.png', '0', '5斤装', '0', '赣南脐橙，江西特产。赣南脐橙果大形正，橙红鲜艳，光洁美观，可食率达85%，肉质脆嫩、化渣，风味浓甜芳香，含果汁55%以上。橙黄鲜艳、香气扑鼻、细嫩多汁。富含多种维生素以及钙、铁等，低热低脂高纤，还原橙子最原始的味道，吃过才知道什么是“自然甜”。', '2000', '0', '9'), ('10', '真心祝福水果礼篮', '358.00', '<p>特别提醒礼盒内部分水果可能会因季节原因进行调整，我们将为您换为等值的水果，敬请谅解！</p>', 'f_media/1-370x370-2114-226C8S26.jpg', '0', '礼篮', '0', '淡淡的祝福 深深的情意', '1995', '1', '7'), ('11', '欢乐时光水果礼篮', '188.00', '<p><span style=\"color: #999999; font-family: \'Hiragino Sans GB\', \'Microsoft YaHei\', sans-serif; font-size: 16px;\">幸福的记忆</span></p>', 'f_media/1-370x370-3877-BXDY6KCU.jpg', '0', '1份', '1', '幸福的记忆', '2000', '0', '7'), ('12', '关怀备至礼盒', '198.00', '<p>特别提醒1.盒内部分水果可能会因季节原因进行调整，我们将为您换为等值的水果，敬请谅解！2.新春年货装与果园福气装随机发货中。生活的礼遇，都在天天果园。</p>', 'f_media/1-370x370-430-9RBRWTU9.jpg', '0', '1盒', '0', '关心常伴 水果相伴', '2000', '0', '7'), ('13', '团聚礼盒', '168.00', '<p>特别提醒新春年货装与果园福气装随机发货中。 生活的礼遇，都在水果商城。</p>', 'f_media/1-370x370-2163-8PBW628F.jpg', '0', '1盒', '2', '家族团聚 馈赠亲朋好友', '1995', '0', '7'), ('14', '海南小台农芒果', '29.90', '<dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">产地</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">中国</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">营养元素</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">胡萝卜素，VA，VC，纤维素</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">储藏方法</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">常温</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 0px; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">单重</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">单重50g以上</dd></dl>', 'f_media/1-370x370-27-DRXW9AYR.jpg', '0', '1kg', '0', '小巧甜糯 萌翻掌心', '2000', '0', '6'), ('15', '妃子笑荔枝', '29.90', '<dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">产地</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">中国</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">营养元素</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">VB，VC</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">储藏方法</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">0&deg;及以上冷藏</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 0px; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">水果甜度</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">3星</dd></dl>', 'f_media/1-370x370-2383-UKTRW3W2.jpg', '0', '1kg', '0', '清甜微酸，余味悠长', '2000', '0', '9'), ('16', '拇指青桔', '9.90', '<dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">产地</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">中国</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">储藏方法</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">0&deg;及以上冷藏</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">保鲜期</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">果酸，花青素，维生素C</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 0px; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">单重</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">5-15g</dd></dl>', 'f_media/1-370x370-2031-5HB8XY1D.jpg', '0', '200g', '0', '活力VC库 清新果饮作CP', '2000', '0', '9'), ('17', '黄金百香果', '19.90', '<dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">产地</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">中国</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 1px solid #d8d8d8; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">储藏方法</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">0&deg;及以上冷藏</dd></dl><dl style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: -webkit-box; -webkit-box-align: center; border-bottom: 0px; font-size: 14px; line-height: 17px; width: 998px; font-weight: lighter; background: #f7f7f7; color: #333333; font-family: Calibri, Arial, Helvetica, sans-serif;\"><dt style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; font-weight: bold; width: 86px;\">单重</dt><dd style=\"box-sizing: border-box; margin: 0px; padding: 9px 12px; line-height: 1.42857; -webkit-box-flex: 1; border-left: 1px solid #d8d8d8;\">60g 以上</dd></dl>', 'f_media/1-370x370-3270-7BDD6BWD.jpg', '0', '6个', '2', '酸甜多汁 馥郁芬芳', '2000', '0', '6');
COMMIT;

-- ----------------------------
-- Table structure for `f_info_frutype`
-- ----------------------------
DROP TABLE IF EXISTS `f_info_frutype`;
CREATE TABLE `f_info_frutype` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`ttitle`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isDelete`  tinyint(1) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=12

;

-- ----------------------------
-- Records of f_info_frutype
-- ----------------------------
BEGIN;
INSERT INTO `f_info_frutype` VALUES ('6', '时令水果', '0'), ('7', '水果礼盒', '0'), ('8', '营养套餐', '0'), ('9', '国产水果', '0'), ('10', '进口水果', '0'), ('11', '干果食品', '0');
COMMIT;

-- ----------------------------
-- Table structure for `f_order_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `f_order_evaluate`;
CREATE TABLE `f_order_evaluate` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`value`  varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`date`  datetime NOT NULL ,
`efruit_id`  int(11) NOT NULL ,
`euser_id`  int(11) NOT NULL ,
`star`  int(11) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`efruit_id`) REFERENCES `f_info_fruinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`euser_id`) REFERENCES `f_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_order_evaluate_efruit_id_1ca4a31820478dde_fk_f_info_fruinfo_id` (`efruit_id`) USING BTREE ,
INDEX `f_order_evaluate_euser_id_78510782c4f7192f_fk_f_user_userinfo_id` (`euser_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=14

;

-- ----------------------------
-- Records of f_order_evaluate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `f_order_expressinfo`
-- ----------------------------
DROP TABLE IF EXISTS `f_order_expressinfo`;
CREATE TABLE `f_order_expressinfo` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`ename`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`epy`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=12

;

-- ----------------------------
-- Records of f_order_expressinfo
-- ----------------------------
BEGIN;
INSERT INTO `f_order_expressinfo` VALUES ('1', '申通', 'shentong'), ('2', '邮政', 'ems'), ('3', '顺丰', 'shunfeng'), ('4', '圆通', 'yuantong'), ('5', '中通', 'zhongtong'), ('6', '韵达', 'yunda'), ('7', '全峰', 'quanfengkuaidi'), ('8', '德邦', 'debangwuliu'), ('9', '宅急送', 'zhaijisong'), ('10', '天天', 'tiantian'), ('11', '汇通', 'huitongkuaidi');
COMMIT;

-- ----------------------------
-- Table structure for `f_order_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `f_order_logistics`;
CREATE TABLE `f_order_logistics` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`lnumber`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ldate`  datetime NOT NULL ,
`is_Delete`  tinyint(1) NOT NULL ,
`lname_id`  int(11) NOT NULL ,
`order_id`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`lname_id`) REFERENCES `f_order_expressinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`order_id`) REFERENCES `f_order_orderinfo` (`onumber`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_order_logistics_69dfcb07` (`order_id`) USING BTREE ,
INDEX `f_order_logi_lname_id_3866a98eb5a740cc_fk_f_order_expressinfo_id` (`lname_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=12

;

-- ----------------------------
-- Records of f_order_logistics
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `f_order_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `f_order_orderdetail`;
CREATE TABLE `f_order_orderdetail` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`price`  decimal(5,2) NOT NULL ,
`count`  int(11) NOT NULL ,
`fruit_id`  int(11) NOT NULL ,
`order_id`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`fruit_id`) REFERENCES `f_info_fruinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`order_id`) REFERENCES `f_order_orderinfo` (`onumber`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_order_orderdetai_fruit_id_3267d8b9f3fcfb8_fk_f_info_fruinfo_id` (`fruit_id`) USING BTREE ,
INDEX `f_order_orderdetail_69dfcb07` (`order_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=42

;

-- ----------------------------
-- Records of f_order_orderdetail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `f_order_orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `f_order_orderinfo`;
CREATE TABLE `f_order_orderinfo` (
`onumber`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`odate`  datetime NOT NULL ,
`ostatus`  int(11) NOT NULL ,
`opaystyle`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ototal`  decimal(6,2) NOT NULL ,
`oaddress`  varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ouser_id`  int(11) NOT NULL ,
`isRemind`  tinyint(1) NOT NULL ,
PRIMARY KEY (`onumber`),
FOREIGN KEY (`ouser_id`) REFERENCES `f_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_order_orderinf_ouser_id_37c7f745e29f8125_fk_f_user_userinfo_id` (`ouser_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of f_order_orderinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `f_user_deliveredinfo`
-- ----------------------------
DROP TABLE IF EXISTS `f_user_deliveredinfo`;
CREATE TABLE `f_user_deliveredinfo` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`dname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`daddress`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`dphone`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`did_id`  int(11) NOT NULL ,
`isDelete`  tinyint(1) NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`did_id`) REFERENCES `f_user_userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `f_user_deliveredin_did_id_302a4b94bc412658_fk_f_user_userinfo_id` (`did_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of f_user_deliveredinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `f_user_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `f_user_userinfo`;
CREATE TABLE `f_user_userinfo` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`uid`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`upwd`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`uemail`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`isDelete`  tinyint(1) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=51

;

-- ----------------------------
-- Records of f_user_userinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for `auth_group`
-- ----------------------------
ALTER TABLE `auth_group` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `auth_group_permissions`
-- ----------------------------
ALTER TABLE `auth_group_permissions` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `auth_permission`
-- ----------------------------
ALTER TABLE `auth_permission` AUTO_INCREMENT=49;

-- ----------------------------
-- Auto increment value for `auth_user`
-- ----------------------------
ALTER TABLE `auth_user` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `auth_user_groups`
-- ----------------------------
ALTER TABLE `auth_user_groups` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `auth_user_user_permissions`
-- ----------------------------
ALTER TABLE `auth_user_user_permissions` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `django_admin_log`
-- ----------------------------
ALTER TABLE `django_admin_log` AUTO_INCREMENT=81;

-- ----------------------------
-- Auto increment value for `django_content_type`
-- ----------------------------
ALTER TABLE `django_content_type` AUTO_INCREMENT=17;

-- ----------------------------
-- Auto increment value for `django_migrations`
-- ----------------------------
ALTER TABLE `django_migrations` AUTO_INCREMENT=23;

-- ----------------------------
-- Auto increment value for `f_cart_frucart`
-- ----------------------------
ALTER TABLE `f_cart_frucart` AUTO_INCREMENT=18;

-- ----------------------------
-- Auto increment value for `f_info_fruinfo`
-- ----------------------------
ALTER TABLE `f_info_fruinfo` AUTO_INCREMENT=18;

-- ----------------------------
-- Auto increment value for `f_info_frutype`
-- ----------------------------
ALTER TABLE `f_info_frutype` AUTO_INCREMENT=12;

-- ----------------------------
-- Auto increment value for `f_order_evaluate`
-- ----------------------------
ALTER TABLE `f_order_evaluate` AUTO_INCREMENT=14;

-- ----------------------------
-- Auto increment value for `f_order_expressinfo`
-- ----------------------------
ALTER TABLE `f_order_expressinfo` AUTO_INCREMENT=12;

-- ----------------------------
-- Auto increment value for `f_order_logistics`
-- ----------------------------
ALTER TABLE `f_order_logistics` AUTO_INCREMENT=12;

-- ----------------------------
-- Auto increment value for `f_order_orderdetail`
-- ----------------------------
ALTER TABLE `f_order_orderdetail` AUTO_INCREMENT=42;

-- ----------------------------
-- Auto increment value for `f_user_deliveredinfo`
-- ----------------------------
ALTER TABLE `f_user_deliveredinfo` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `f_user_userinfo`
-- ----------------------------
ALTER TABLE `f_user_userinfo` AUTO_INCREMENT=51;
