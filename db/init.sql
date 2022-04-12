/*
 Navicat Premium Data Transfer

 Source Server         : CloudDocker
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 124.223.178.186:3306
 Source Schema         : summer_db

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 11/04/2022 14:58:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `relation` int(11) NOT NULL,
  `delete` int(11) DEFAULT NULL,
  `rig_id` int(11) DEFAULT NULL,
  `rig_env` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `yapi_catid` int(11) DEFAULT NULL,
  `yapi_id` int(11) DEFAULT NULL,
  `ypai_add_time` varchar(10) DEFAULT NULL,
  `ypai_up_time` varchar(10) DEFAULT NULL,
  `ypai_username` varchar(30) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_name_cdf5ec0a` (`name`),
  KEY `api_url_e62d4742` (`url`),
  KEY `api_rig_id_70c805a0` (`rig_id`),
  KEY `api_project_id_61b82b3c` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
INSERT INTO `auth_group` VALUES (1, '超级管理员');
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
INSERT INTO `auth_group_permissions` VALUES (1, 1, 1);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 2);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 3);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 4);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 5);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 6);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 7);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 8);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 9);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 10);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 11);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 12);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 13);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 14);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 15);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 16);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 17);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 18);
INSERT INTO `auth_group_permissions` VALUES (19, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (20, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (21, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (22, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (23, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (24, 1, 24);
INSERT INTO `auth_group_permissions` VALUES (25, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (26, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (27, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (28, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (29, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (30, 1, 30);
INSERT INTO `auth_group_permissions` VALUES (31, 1, 31);
INSERT INTO `auth_group_permissions` VALUES (32, 1, 32);
INSERT INTO `auth_group_permissions` VALUES (33, 1, 33);
INSERT INTO `auth_group_permissions` VALUES (34, 1, 34);
INSERT INTO `auth_group_permissions` VALUES (35, 1, 35);
INSERT INTO `auth_group_permissions` VALUES (36, 1, 36);
INSERT INTO `auth_group_permissions` VALUES (37, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (38, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (39, 1, 39);
INSERT INTO `auth_group_permissions` VALUES (40, 1, 40);
INSERT INTO `auth_group_permissions` VALUES (41, 1, 41);
INSERT INTO `auth_group_permissions` VALUES (42, 1, 42);
INSERT INTO `auth_group_permissions` VALUES (43, 1, 43);
INSERT INTO `auth_group_permissions` VALUES (44, 1, 44);
INSERT INTO `auth_group_permissions` VALUES (45, 1, 45);
INSERT INTO `auth_group_permissions` VALUES (46, 1, 46);
INSERT INTO `auth_group_permissions` VALUES (47, 1, 47);
INSERT INTO `auth_group_permissions` VALUES (48, 1, 48);
INSERT INTO `auth_group_permissions` VALUES (49, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (50, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (51, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (52, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (53, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (54, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (55, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (56, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (57, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (58, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (59, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (60, 1, 60);
INSERT INTO `auth_group_permissions` VALUES (61, 1, 61);
INSERT INTO `auth_group_permissions` VALUES (62, 1, 62);
INSERT INTO `auth_group_permissions` VALUES (63, 1, 63);
INSERT INTO `auth_group_permissions` VALUES (64, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (65, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (66, 1, 66);
INSERT INTO `auth_group_permissions` VALUES (67, 1, 67);
INSERT INTO `auth_group_permissions` VALUES (68, 1, 68);
INSERT INTO `auth_group_permissions` VALUES (69, 1, 69);
INSERT INTO `auth_group_permissions` VALUES (70, 1, 70);
INSERT INTO `auth_group_permissions` VALUES (71, 1, 71);
INSERT INTO `auth_group_permissions` VALUES (72, 1, 72);
INSERT INTO `auth_group_permissions` VALUES (73, 1, 73);
INSERT INTO `auth_group_permissions` VALUES (74, 1, 74);
INSERT INTO `auth_group_permissions` VALUES (75, 1, 75);
INSERT INTO `auth_group_permissions` VALUES (76, 1, 76);
INSERT INTO `auth_group_permissions` VALUES (77, 1, 77);
INSERT INTO `auth_group_permissions` VALUES (78, 1, 78);
INSERT INTO `auth_group_permissions` VALUES (79, 1, 79);
INSERT INTO `auth_group_permissions` VALUES (80, 1, 80);
INSERT INTO `auth_group_permissions` VALUES (81, 1, 81);
INSERT INTO `auth_group_permissions` VALUES (82, 1, 82);
INSERT INTO `auth_group_permissions` VALUES (83, 1, 83);
INSERT INTO `auth_group_permissions` VALUES (84, 1, 84);
INSERT INTO `auth_group_permissions` VALUES (85, 1, 85);
INSERT INTO `auth_group_permissions` VALUES (86, 1, 86);
INSERT INTO `auth_group_permissions` VALUES (87, 1, 87);
INSERT INTO `auth_group_permissions` VALUES (88, 1, 88);
INSERT INTO `auth_group_permissions` VALUES (89, 1, 89);
INSERT INTO `auth_group_permissions` VALUES (90, 1, 90);
INSERT INTO `auth_group_permissions` VALUES (91, 1, 91);
INSERT INTO `auth_group_permissions` VALUES (92, 1, 92);
INSERT INTO `auth_group_permissions` VALUES (93, 1, 93);
INSERT INTO `auth_group_permissions` VALUES (94, 1, 94);
INSERT INTO `auth_group_permissions` VALUES (95, 1, 95);
INSERT INTO `auth_group_permissions` VALUES (96, 1, 96);
INSERT INTO `auth_group_permissions` VALUES (97, 1, 97);
INSERT INTO `auth_group_permissions` VALUES (98, 1, 98);
INSERT INTO `auth_group_permissions` VALUES (99, 1, 99);
INSERT INTO `auth_group_permissions` VALUES (100, 1, 100);
INSERT INTO `auth_group_permissions` VALUES (101, 1, 101);
INSERT INTO `auth_group_permissions` VALUES (102, 1, 102);
INSERT INTO `auth_group_permissions` VALUES (103, 1, 103);
INSERT INTO `auth_group_permissions` VALUES (104, 1, 104);
INSERT INTO `auth_group_permissions` VALUES (105, 1, 105);
INSERT INTO `auth_group_permissions` VALUES (106, 1, 106);
INSERT INTO `auth_group_permissions` VALUES (107, 1, 107);
INSERT INTO `auth_group_permissions` VALUES (108, 1, 108);
INSERT INTO `auth_group_permissions` VALUES (109, 1, 109);
INSERT INTO `auth_group_permissions` VALUES (110, 1, 110);
INSERT INTO `auth_group_permissions` VALUES (111, 1, 111);
INSERT INTO `auth_group_permissions` VALUES (112, 1, 112);
COMMIT;

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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (24, 'Can view 用户信息', 6, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户登陆token', 7, 'add_usertoken');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户登陆token', 7, 'change_usertoken');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户登陆token', 7, 'delete_usertoken');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户登陆token', 7, 'view_usertoken');
INSERT INTO `auth_permission` VALUES (29, 'Can add user', 8, 'add_myuser');
INSERT INTO `auth_permission` VALUES (30, 'Can change user', 8, 'change_myuser');
INSERT INTO `auth_permission` VALUES (31, 'Can delete user', 8, 'delete_myuser');
INSERT INTO `auth_permission` VALUES (32, 'Can view user', 8, 'view_myuser');
INSERT INTO `auth_permission` VALUES (33, 'Can add 访问信息', 9, 'add_visit');
INSERT INTO `auth_permission` VALUES (34, 'Can change 访问信息', 9, 'change_visit');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 访问信息', 9, 'delete_visit');
INSERT INTO `auth_permission` VALUES (36, 'Can view 访问信息', 9, 'view_visit');
INSERT INTO `auth_permission` VALUES (37, 'Can add 全局变量', 10, 'add_variables');
INSERT INTO `auth_permission` VALUES (38, 'Can change 全局变量', 10, 'change_variables');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 全局变量', 10, 'delete_variables');
INSERT INTO `auth_permission` VALUES (40, 'Can view 全局变量', 10, 'view_variables');
INSERT INTO `auth_permission` VALUES (41, 'Can add 树形结构关系', 11, 'add_relation');
INSERT INTO `auth_permission` VALUES (42, 'Can change 树形结构关系', 11, 'change_relation');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 树形结构关系', 11, 'delete_relation');
INSERT INTO `auth_permission` VALUES (44, 'Can view 树形结构关系', 11, 'view_relation');
INSERT INTO `auth_permission` VALUES (45, 'Can add 驱动库', 12, 'add_debugtalk');
INSERT INTO `auth_permission` VALUES (46, 'Can change 驱动库', 12, 'change_debugtalk');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 驱动库', 12, 'delete_debugtalk');
INSERT INTO `auth_permission` VALUES (48, 'Can view 驱动库', 12, 'view_debugtalk');
INSERT INTO `auth_permission` VALUES (49, 'Can add 环境信息', 13, 'add_config');
INSERT INTO `auth_permission` VALUES (50, 'Can change 环境信息', 13, 'change_config');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 环境信息', 13, 'delete_config');
INSERT INTO `auth_permission` VALUES (52, 'Can view 环境信息', 13, 'view_config');
INSERT INTO `auth_permission` VALUES (53, 'Can add 测试报告详情', 14, 'add_reportdetail');
INSERT INTO `auth_permission` VALUES (54, 'Can change 测试报告详情', 14, 'change_reportdetail');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 测试报告详情', 14, 'delete_reportdetail');
INSERT INTO `auth_permission` VALUES (56, 'Can view 测试报告详情', 14, 'view_reportdetail');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用例信息', 15, 'add_case');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用例信息', 15, 'change_case');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用例信息', 15, 'delete_case');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用例信息', 15, 'view_case');
INSERT INTO `auth_permission` VALUES (61, 'Can add 项目信息', 16, 'add_project');
INSERT INTO `auth_permission` VALUES (62, 'Can change 项目信息', 16, 'change_project');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 项目信息', 16, 'delete_project');
INSERT INTO `auth_permission` VALUES (64, 'Can view 项目信息', 16, 'view_project');
INSERT INTO `auth_permission` VALUES (65, 'Can add 接口信息', 17, 'add_api');
INSERT INTO `auth_permission` VALUES (66, 'Can change 接口信息', 17, 'change_api');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 接口信息', 17, 'delete_api');
INSERT INTO `auth_permission` VALUES (68, 'Can view 接口信息', 17, 'view_api');
INSERT INTO `auth_permission` VALUES (69, 'Can add HOST配置', 18, 'add_hostip');
INSERT INTO `auth_permission` VALUES (70, 'Can change HOST配置', 18, 'change_hostip');
INSERT INTO `auth_permission` VALUES (71, 'Can delete HOST配置', 18, 'delete_hostip');
INSERT INTO `auth_permission` VALUES (72, 'Can view HOST配置', 18, 'view_hostip');
INSERT INTO `auth_permission` VALUES (73, 'Can add 用例信息 Step', 19, 'add_casestep');
INSERT INTO `auth_permission` VALUES (74, 'Can change 用例信息 Step', 19, 'change_casestep');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 用例信息 Step', 19, 'delete_casestep');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用例信息 Step', 19, 'view_casestep');
INSERT INTO `auth_permission` VALUES (77, 'Can add 测试报告', 20, 'add_report');
INSERT INTO `auth_permission` VALUES (78, 'Can change 测试报告', 20, 'change_report');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 测试报告', 20, 'delete_report');
INSERT INTO `auth_permission` VALUES (80, 'Can view 测试报告', 20, 'view_report');
INSERT INTO `auth_permission` VALUES (81, 'Can add periodic task', 21, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (82, 'Can change periodic task', 21, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (83, 'Can delete periodic task', 21, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (84, 'Can view periodic task', 21, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (85, 'Can add crontab', 22, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (86, 'Can change crontab', 22, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (87, 'Can delete crontab', 22, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (88, 'Can view crontab', 22, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (89, 'Can add interval', 23, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (90, 'Can change interval', 23, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (91, 'Can delete interval', 23, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (92, 'Can view interval', 23, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (93, 'Can add periodic tasks', 24, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (94, 'Can change periodic tasks', 24, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (95, 'Can delete periodic tasks', 24, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (96, 'Can view periodic tasks', 24, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (97, 'Can add task state', 25, 'add_taskmeta');
INSERT INTO `auth_permission` VALUES (98, 'Can change task state', 25, 'change_taskmeta');
INSERT INTO `auth_permission` VALUES (99, 'Can delete task state', 25, 'delete_taskmeta');
INSERT INTO `auth_permission` VALUES (100, 'Can view task state', 25, 'view_taskmeta');
INSERT INTO `auth_permission` VALUES (101, 'Can add saved group result', 26, 'add_tasksetmeta');
INSERT INTO `auth_permission` VALUES (102, 'Can change saved group result', 26, 'change_tasksetmeta');
INSERT INTO `auth_permission` VALUES (103, 'Can delete saved group result', 26, 'delete_tasksetmeta');
INSERT INTO `auth_permission` VALUES (104, 'Can view saved group result', 26, 'view_tasksetmeta');
INSERT INTO `auth_permission` VALUES (105, 'Can add worker', 27, 'add_workerstate');
INSERT INTO `auth_permission` VALUES (106, 'Can change worker', 27, 'change_workerstate');
INSERT INTO `auth_permission` VALUES (107, 'Can delete worker', 27, 'delete_workerstate');
INSERT INTO `auth_permission` VALUES (108, 'Can view worker', 27, 'view_workerstate');
INSERT INTO `auth_permission` VALUES (109, 'Can add task', 28, 'add_taskstate');
INSERT INTO `auth_permission` VALUES (110, 'Can change task', 28, 'change_taskstate');
INSERT INTO `auth_permission` VALUES (111, 'Can delete task', 28, 'delete_taskstate');
INSERT INTO `auth_permission` VALUES (112, 'Can view task', 28, 'view_taskstate');
COMMIT;

-- ----------------------------
-- Table structure for case
-- ----------------------------
DROP TABLE IF EXISTS `case`;
CREATE TABLE `case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `relation` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case_project_id_67228312` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of case
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for case_step
-- ----------------------------
DROP TABLE IF EXISTS `case_step`;
CREATE TABLE `case_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `step` int(11) NOT NULL,
  `source_api_id` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case_step_case_id_85f672f0` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of case_step
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for celery_taskmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_taskmeta`;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_hidden_23fd02dc` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celery_taskmeta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for celery_tasksetmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_tasksetmeta`;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_hidden_593cfc24` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celery_tasksetmeta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `base_url` varchar(100) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_project_id_0a347a57` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for debugtalk
-- ----------------------------
DROP TABLE IF EXISTS `debugtalk`;
CREATE TABLE `debugtalk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `code` longtext NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of debugtalk
-- ----------------------------
BEGIN;
INSERT INTO `debugtalk` VALUES (1, '2022-04-06 18:15:48.693741', '2022-04-06 18:15:48.693777', NULL, 'summer', '# 测试运行前置函数\ndef set_up(request):\n    print(request)\n    request_data = request[\'json\']\n    request_data[\"password\"] = test_password', 1);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_summertestuser_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_summertestuser_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `summertestuser_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2022-04-06 16:18:31.690459', '1', '超级管理员', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-04-06 16:18:45.620217', '1', 'summer', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 8, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (22, 'djcelery', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (23, 'djcelery', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (21, 'djcelery', 'periodictask');
INSERT INTO `django_content_type` VALUES (24, 'djcelery', 'periodictasks');
INSERT INTO `django_content_type` VALUES (25, 'djcelery', 'taskmeta');
INSERT INTO `django_content_type` VALUES (26, 'djcelery', 'tasksetmeta');
INSERT INTO `django_content_type` VALUES (28, 'djcelery', 'taskstate');
INSERT INTO `django_content_type` VALUES (27, 'djcelery', 'workerstate');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (17, 'summertest', 'api');
INSERT INTO `django_content_type` VALUES (15, 'summertest', 'case');
INSERT INTO `django_content_type` VALUES (19, 'summertest', 'casestep');
INSERT INTO `django_content_type` VALUES (13, 'summertest', 'config');
INSERT INTO `django_content_type` VALUES (12, 'summertest', 'debugtalk');
INSERT INTO `django_content_type` VALUES (18, 'summertest', 'hostip');
INSERT INTO `django_content_type` VALUES (16, 'summertest', 'project');
INSERT INTO `django_content_type` VALUES (11, 'summertest', 'relation');
INSERT INTO `django_content_type` VALUES (20, 'summertest', 'report');
INSERT INTO `django_content_type` VALUES (14, 'summertest', 'reportdetail');
INSERT INTO `django_content_type` VALUES (10, 'summertest', 'variables');
INSERT INTO `django_content_type` VALUES (9, 'summertest', 'visit');
INSERT INTO `django_content_type` VALUES (8, 'summertestuser', 'myuser');
INSERT INTO `django_content_type` VALUES (6, 'summertestuser', 'userinfo');
INSERT INTO `django_content_type` VALUES (7, 'summertestuser', 'usertoken');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-04-04 19:10:08.039479');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2022-04-04 19:10:08.381243');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2022-04-04 19:10:08.944953');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2022-04-04 19:10:09.562224');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2022-04-04 19:10:09.636791');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2022-04-04 19:10:09.715222');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2022-04-04 19:10:09.791795');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2022-04-04 19:10:09.861793');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2022-04-04 19:10:09.939521');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2022-04-04 19:10:10.018493');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2022-04-04 19:10:10.094902');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2022-04-04 19:10:10.268777');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2022-04-04 19:10:10.443532');
INSERT INTO `django_migrations` VALUES (14, 'summertestuser', '0001_initial', '2022-04-04 19:10:12.009832');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2022-04-04 19:10:13.260547');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2022-04-04 19:10:13.546090');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-04 19:10:13.628590');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2022-04-04 19:10:13.860730');
INSERT INTO `django_migrations` VALUES (19, 'summertest', '0001_initial', '2022-04-04 19:36:43.563975');
INSERT INTO `django_migrations` VALUES (20, 'djcelery', '0001_initial', '2022-04-04 19:37:23.749619');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('n05qrvz1hinf34wizt9sgv5is1nmzz66', 'M2NjMzFlZTM4ZDE4NzZlYzJjNDY3ZjI1OTcyMGY2YjViMzYxMmIwZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NTFjNmFkYTM1ODM1OTA0ZjYwZTBjOGE2YjJhMzE5NjRhOTczYzNhIn0=', '2022-04-22 14:26:38.578362');
COMMIT;

-- ----------------------------
-- Table structure for djcelery_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_crontabschedule`;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_crontabschedule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for djcelery_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_intervalschedule`;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_intervalschedule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for djcelery_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictask`;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` (`crontab_id`),
  KEY `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` (`interval_id`),
  CONSTRAINT `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`),
  CONSTRAINT `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_periodictask
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for djcelery_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictasks`;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_periodictasks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for djcelery_taskstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_taskstate`;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime(6) NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime(6) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_state_53543be4` (`state`),
  KEY `djcelery_taskstate_name_8af9eded` (`name`),
  KEY `djcelery_taskstate_tstamp_4c3f93a1` (`tstamp`),
  KEY `djcelery_taskstate_hidden_c3905e57` (`hidden`),
  KEY `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` (`worker_id`),
  CONSTRAINT `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_taskstate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for djcelery_workerstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_workerstate`;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_last_heartbeat_4539b544` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_workerstate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for host_ip
-- ----------------------------
DROP TABLE IF EXISTS `host_ip`;
CREATE TABLE `host_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `host_ip_project_id_f746c53c` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_ip
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `responsible` varchar(20) NOT NULL,
  `yapi_base_url` varchar(100) NOT NULL,
  `yapi_openapi_token` varchar(128) NOT NULL,
  `jira_project_key` varchar(30) NOT NULL,
  `jira_bearer_token` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
BEGIN;
INSERT INTO `project` VALUES (1, '2022-04-06 18:15:48.624172', '2022-04-06 18:15:48.624243', NULL, NULL, 'test', 'test01', 'summer', '', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relation_project_id_caac46e2` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation
-- ----------------------------
BEGIN;
INSERT INTO `relation` VALUES (1, '[]', 1, 1);
INSERT INTO `relation` VALUES (2, '[]', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `summary` longtext NOT NULL,
  `ci_metadata` longtext NOT NULL,
  `ci_project_id` int(11) DEFAULT NULL,
  `ci_job_id` varchar(15) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ci_job_id` (`ci_job_id`),
  KEY `report_ci_project_id_4d3e81e6` (`ci_project_id`),
  KEY `report_project_id_e21733bf` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for report_detail
-- ----------------------------
DROP TABLE IF EXISTS `report_detail`;
CREATE TABLE `report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_detail` longtext NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for summertestuser_myuser
-- ----------------------------
DROP TABLE IF EXISTS `summertestuser_myuser`;
CREATE TABLE `summertestuser_myuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `show_hosts` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summertestuser_myuser
-- ----------------------------
BEGIN;
INSERT INTO `summertestuser_myuser` VALUES (1, 'pbkdf2_sha256$150000$So0D7K22a2yO$SsGIJCVXsRn5oTtNYHRpF9KCi3eVAoIgUwhhPeglJb0=', '2022-04-08 14:26:38.505431', 1, 'summer', '', '', '87795850@qq.com', 1, 1, '2022-04-04 19:11:20.330339', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for summertestuser_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `summertestuser_myuser_groups`;
CREATE TABLE `summertestuser_myuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `summertestuser_myuser_groups_myuser_id_group_id_141e063a_uniq` (`myuser_id`,`group_id`),
  KEY `summertestuser_myuser_groups_group_id_3fdf8c18_fk_auth_group_id` (`group_id`),
  CONSTRAINT `summertestuser_myuse_myuser_id_b7b6f814_fk_summertes` FOREIGN KEY (`myuser_id`) REFERENCES `summertestuser_myuser` (`id`),
  CONSTRAINT `summertestuser_myuser_groups_group_id_3fdf8c18_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summertestuser_myuser_groups
-- ----------------------------
BEGIN;
INSERT INTO `summertestuser_myuser_groups` VALUES (1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for summertestuser_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `summertestuser_myuser_user_permissions`;
CREATE TABLE `summertestuser_myuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `summertestuser_myuser_us_myuser_id_permission_id_3b56357a_uniq` (`myuser_id`,`permission_id`),
  KEY `summertestuser_myuse_permission_id_a59adc8b_fk_auth_perm` (`permission_id`),
  CONSTRAINT `summertestuser_myuse_myuser_id_efb43d3b_fk_summertes` FOREIGN KEY (`myuser_id`) REFERENCES `summertestuser_myuser` (`id`),
  CONSTRAINT `summertestuser_myuse_permission_id_a59adc8b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of summertestuser_myuser_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for variables
-- ----------------------------
DROP TABLE IF EXISTS `variables`;
CREATE TABLE `variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `updater` varchar(20) DEFAULT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `variables_project_id_71044038` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of variables
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `project` varchar(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `path` varchar(100) NOT NULL,
  `request_params` varchar(255) NOT NULL,
  `request_method` varchar(7) NOT NULL,
  `request_body` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_user_8de779fe` (`user`),
  KEY `visit_ip_8eea545d` (`ip`),
  KEY `visit_project_41603a2f` (`project`),
  KEY `visit_url_35d78337` (`url`),
  KEY `visit_path_de3cc23d` (`path`),
  KEY `visit_request_params_cf929175` (`request_params`),
  KEY `visit_request_method_a2142cb8` (`request_method`),
  KEY `visit_create_time_18fc002a` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visit
-- ----------------------------
BEGIN;
INSERT INTO `visit` VALUES (1, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-06 17:01:21.750972');
INSERT INTO `visit` VALUES (2, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-06 17:01:22.357039');
INSERT INTO `visit` VALUES (3, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-06 17:01:27.153393');
INSERT INTO `visit` VALUES (4, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-06 17:01:27.555484');
INSERT INTO `visit` VALUES (5, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-06 17:01:29.854416');
INSERT INTO `visit` VALUES (6, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-06 17:01:30.262672');
INSERT INTO `visit` VALUES (7, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-06 17:21:52.471482');
INSERT INTO `visit` VALUES (8, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-06 17:21:53.083480');
INSERT INTO `visit` VALUES (9, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 17:23:12.299737');
INSERT INTO `visit` VALUES (10, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-06 17:23:40.119104');
INSERT INTO `visit` VALUES (11, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=ntiuXSY3nipJ4f98599jCYZ3IymJNrq7AYaClZ10iJnSFVxGKyw2tsG8NggVPzZD&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-06 17:23:44.199926');
INSERT INTO `visit` VALUES (12, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-06 17:23:44.624021');
INSERT INTO `visit` VALUES (13, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-06 17:23:45.130833');
INSERT INTO `visit` VALUES (14, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\"}', '2022-04-06 17:24:22.761729');
INSERT INTO `visit` VALUES (15, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '', '2022-04-06 17:25:19.589881');
INSERT INTO `visit` VALUES (16, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 17:25:46.249078');
INSERT INTO `visit` VALUES (17, 'summer', '127.0.0.1', '0', '/admin/', '/admin/', '', 'GET', '', '2022-04-06 17:27:54.023491');
INSERT INTO `visit` VALUES (18, 'summer', '127.0.0.1', '0', '/admin/login/?next=/admin/', '/admin/login/', 'next=/admin/', 'GET', '', '2022-04-06 17:28:01.571743');
INSERT INTO `visit` VALUES (19, 'summer', '127.0.0.1', '0', '/admin/', '/admin/', '', 'GET', '', '2022-04-06 17:28:01.974524');
INSERT INTO `visit` VALUES (20, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'GET', '', '2022-04-06 17:28:09.848467');
INSERT INTO `visit` VALUES (21, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'OPTIONS', '', '2022-04-06 17:28:15.059614');
INSERT INTO `visit` VALUES (22, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'OPTIONS', '', '2022-04-06 17:28:16.985652');
INSERT INTO `visit` VALUES (23, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '------WebKitFormBoundaryis1AdTVmHtkqoEDg\r\nContent-Disposition: form-data; name=\"csrfmiddlewaretoken\"\r\n\r\nWg9ECphETB9fjlkyvSxvamSMoPImw6CRXsrqldXtKIkiRteemROp1mxt83lO5lO5\r\n------WebKitFormBoundaryis1AdTVmHtkqoEDg\r\nContent-Disposition: form-data; name=\"username\"\r\n\r\nsummer\r\n------WebKitFormBoundaryis1AdTVmHtkqoEDg\r\nContent-Disposition: form-data; name=\"password\"\r\n\r\nsummer\r\n------WebKitFormBoundaryis1AdTVmHtkqoEDg--\r\n', '2022-04-06 17:28:20.012230');
INSERT INTO `visit` VALUES (24, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 17:29:22.495610');
INSERT INTO `visit` VALUES (25, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 17:30:11.896919');
INSERT INTO `visit` VALUES (26, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 17:40:06.099253');
INSERT INTO `visit` VALUES (27, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-06 17:44:36.865645');
INSERT INTO `visit` VALUES (28, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-06 17:44:36.965543');
INSERT INTO `visit` VALUES (29, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'GET', '', '2022-04-06 18:07:11.708019');
INSERT INTO `visit` VALUES (30, 'summer', '127.0.0.1', '0', '/admin/', '/admin/', '', 'GET', '', '2022-04-06 18:07:13.346715');
INSERT INTO `visit` VALUES (31, 'summer', '127.0.0.1', '0', '/admin/summertestuser/myuser/', '/admin/summertestuser/myuser/', '', 'GET', '', '2022-04-06 18:07:20.142041');
INSERT INTO `visit` VALUES (32, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-06 18:07:20.511010');
INSERT INTO `visit` VALUES (33, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-06 18:07:35.853040');
INSERT INTO `visit` VALUES (34, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-06 18:07:36.396206');
INSERT INTO `visit` VALUES (35, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"test\",\"desc\":\"test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 18:08:05.291078');
INSERT INTO `visit` VALUES (36, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"test\",\"desc\":\"test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 18:08:20.436482');
INSERT INTO `visit` VALUES (37, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"test\",\"desc\":\"test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 18:12:22.060603');
INSERT INTO `visit` VALUES (38, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"test\",\"desc\":\"test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-06 18:15:48.819599');
INSERT INTO `visit` VALUES (39, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-06 18:15:49.258927');
INSERT INTO `visit` VALUES (40, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-06 18:15:58.318543');
INSERT INTO `visit` VALUES (41, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-06 18:15:58.678689');
INSERT INTO `visit` VALUES (42, 'AnonymousUser', '127.0.0.1', '0', '/api/user/login/', '/api/user/login/', '', 'POST', '{\"username\":\"summer\",\"password\":\"summer\"}', '2022-04-07 10:38:02.985527');
INSERT INTO `visit` VALUES (43, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 10:38:03.570498');
INSERT INTO `visit` VALUES (44, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 10:38:03.585898');
INSERT INTO `visit` VALUES (45, 'summer', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 10:40:03.889523');
INSERT INTO `visit` VALUES (46, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 10:45:22.575299');
INSERT INTO `visit` VALUES (47, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 10:45:22.580620');
INSERT INTO `visit` VALUES (48, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 10:45:28.338104');
INSERT INTO `visit` VALUES (49, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 10:45:28.749138');
INSERT INTO `visit` VALUES (50, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 10:45:40.174743');
INSERT INTO `visit` VALUES (51, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 10:45:40.514474');
INSERT INTO `visit` VALUES (52, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 10:48:12.032634');
INSERT INTO `visit` VALUES (53, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 10:48:12.368560');
INSERT INTO `visit` VALUES (54, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 10:48:25.008794');
INSERT INTO `visit` VALUES (55, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 10:48:25.299420');
INSERT INTO `visit` VALUES (56, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 10:48:44.139454');
INSERT INTO `visit` VALUES (57, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 10:48:44.148570');
INSERT INTO `visit` VALUES (58, 'summer', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 10:48:51.345537');
INSERT INTO `visit` VALUES (59, 'summer', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 10:49:33.825370');
INSERT INTO `visit` VALUES (60, 'summer', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 10:49:47.710397');
INSERT INTO `visit` VALUES (61, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 14:01:17.240766');
INSERT INTO `visit` VALUES (62, 'summer', '127.0.0.1', '0', '/favicon.ico', '/favicon.ico', '', 'GET', '', '2022-04-07 14:01:17.833437');
INSERT INTO `visit` VALUES (63, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 14:01:27.371887');
INSERT INTO `visit` VALUES (64, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 14:01:27.990181');
INSERT INTO `visit` VALUES (65, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-07 14:01:41.198906');
INSERT INTO `visit` VALUES (66, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=jDDNgFcFQ6KtqI1IiV2j3E5Yv8mNVLYetSBXit5cf7uPsoKor0vGeTbqSZtWWims&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-07 14:01:43.012949');
INSERT INTO `visit` VALUES (67, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 14:01:43.444373');
INSERT INTO `visit` VALUES (68, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 14:01:43.951034');
INSERT INTO `visit` VALUES (69, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 14:01:57.158592');
INSERT INTO `visit` VALUES (70, 'AnonymousUser', '127.0.0.1', '0', '/api/user/login/', '/api/user/login/', '', 'POST', '{\n  \"username\": \"summer\",\n  \"password\": \"summer\"\n}', '2022-04-07 14:02:18.590407');
INSERT INTO `visit` VALUES (71, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 14:08:14.144342');
INSERT INTO `visit` VALUES (72, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 14:09:30.183104');
INSERT INTO `visit` VALUES (73, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-07 14:15:48.886864');
INSERT INTO `visit` VALUES (74, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=aOrozbGvz1tb2BsM6bx2vcNV0gdwT7ZpZ1Npoj0BCvGIjwY34Hg1hWchSOar0O4j&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-07 14:16:02.801896');
INSERT INTO `visit` VALUES (75, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 14:16:03.271662');
INSERT INTO `visit` VALUES (76, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 14:16:03.909899');
INSERT INTO `visit` VALUES (77, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 14:16:34.304635');
INSERT INTO `visit` VALUES (78, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 14:18:26.926419');
INSERT INTO `visit` VALUES (79, 'summer', '127.0.0.1', '0', '/accounts', '/accounts', '', 'GET', '', '2022-04-07 14:18:41.420110');
INSERT INTO `visit` VALUES (80, 'summer', '127.0.0.1', '0', '/static/drf-yasg/swagger-ui-dist/swagger-ui.css.map', '/static/drf-yasg/swagger-ui-dist/swagger-ui.css.map', '', 'GET', '', '2022-04-07 14:27:37.072949');
INSERT INTO `visit` VALUES (81, 'summer', '127.0.0.1', '0', '/static/drf-yasg/swagger-ui-dist/swagger-ui-bundle.js.map', '/static/drf-yasg/swagger-ui-dist/swagger-ui-bundle.js.map', '', 'GET', '', '2022-04-07 14:27:37.154159');
INSERT INTO `visit` VALUES (82, 'summer', '127.0.0.1', '0', '/static/drf-yasg/swagger-ui-dist/swagger-ui-standalone-preset.js.map', '/static/drf-yasg/swagger-ui-dist/swagger-ui-standalone-preset.js.map', '', 'GET', '', '2022-04-07 14:27:37.194864');
INSERT INTO `visit` VALUES (83, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-07 14:27:46.168525');
INSERT INTO `visit` VALUES (84, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=uON1FhY3JQFgsFEboQtM2iG8ASEMnTu2KQMsNHXOzEAk3EGYKiO1KnPYeJNUyFPh&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-07 14:27:50.417031');
INSERT INTO `visit` VALUES (85, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 14:27:50.847303');
INSERT INTO `visit` VALUES (86, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 14:27:51.286865');
INSERT INTO `visit` VALUES (87, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 14:28:02.871994');
INSERT INTO `visit` VALUES (88, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 14:30:24.724431');
INSERT INTO `visit` VALUES (89, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:43:39.845705');
INSERT INTO `visit` VALUES (90, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:43:39.847292');
INSERT INTO `visit` VALUES (91, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:44:32.463979');
INSERT INTO `visit` VALUES (92, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:44:32.465532');
INSERT INTO `visit` VALUES (93, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:44:52.156544');
INSERT INTO `visit` VALUES (94, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:44:52.158850');
INSERT INTO `visit` VALUES (95, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:45:08.466706');
INSERT INTO `visit` VALUES (96, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:45:08.487620');
INSERT INTO `visit` VALUES (97, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:45:42.054725');
INSERT INTO `visit` VALUES (98, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:45:42.063370');
INSERT INTO `visit` VALUES (99, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:46:34.976274');
INSERT INTO `visit` VALUES (100, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:46:34.991097');
INSERT INTO `visit` VALUES (101, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:49:00.350800');
INSERT INTO `visit` VALUES (102, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:49:00.357275');
INSERT INTO `visit` VALUES (103, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 14:50:58.125516');
INSERT INTO `visit` VALUES (104, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 14:50:58.137623');
INSERT INTO `visit` VALUES (105, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 14:51:01.846355');
INSERT INTO `visit` VALUES (106, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 14:51:02.174447');
INSERT INTO `visit` VALUES (107, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 14:56:12.132823');
INSERT INTO `visit` VALUES (108, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 14:56:12.457917');
INSERT INTO `visit` VALUES (109, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 15:20:06.002624');
INSERT INTO `visit` VALUES (110, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 15:56:19.975410');
INSERT INTO `visit` VALUES (111, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 15:56:20.314075');
INSERT INTO `visit` VALUES (112, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 15:56:20.958588');
INSERT INTO `visit` VALUES (113, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 15:56:20.971762');
INSERT INTO `visit` VALUES (114, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 15:56:21.690111');
INSERT INTO `visit` VALUES (115, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 15:56:21.993819');
INSERT INTO `visit` VALUES (116, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 15:56:22.124318');
INSERT INTO `visit` VALUES (117, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 15:56:22.140986');
INSERT INTO `visit` VALUES (118, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 15:56:26.222454');
INSERT INTO `visit` VALUES (119, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 15:56:26.553225');
INSERT INTO `visit` VALUES (120, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 15:57:06.593329');
INSERT INTO `visit` VALUES (121, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:03:20.769251');
INSERT INTO `visit` VALUES (122, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:03:21.146257');
INSERT INTO `visit` VALUES (123, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:08:51.304755');
INSERT INTO `visit` VALUES (124, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"0102\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:08:55.042280');
INSERT INTO `visit` VALUES (125, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:11:12.094290');
INSERT INTO `visit` VALUES (126, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 16:12:00.413932');
INSERT INTO `visit` VALUES (127, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 16:12:00.759340');
INSERT INTO `visit` VALUES (128, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:12:07.853110');
INSERT INTO `visit` VALUES (129, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"0102\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:12:12.531534');
INSERT INTO `visit` VALUES (130, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"0102\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:12:15.566754');
INSERT INTO `visit` VALUES (131, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 16:17:03.042899');
INSERT INTO `visit` VALUES (132, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 16:17:03.064407');
INSERT INTO `visit` VALUES (133, 'summer', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 16:17:05.093649');
INSERT INTO `visit` VALUES (134, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 16:24:36.703791');
INSERT INTO `visit` VALUES (135, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 16:24:37.436139');
INSERT INTO `visit` VALUES (136, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:24:47.381890');
INSERT INTO `visit` VALUES (137, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:25:02.515657');
INSERT INTO `visit` VALUES (138, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"import time\\nprint(time)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:27:19.771520');
INSERT INTO `visit` VALUES (139, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 16:30:34.181194');
INSERT INTO `visit` VALUES (140, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:40:22.855784');
INSERT INTO `visit` VALUES (141, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"import time\\nprint(time)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:40:47.002031');
INSERT INTO `visit` VALUES (142, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:42:10.558254');
INSERT INTO `visit` VALUES (143, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:45:17.588374');
INSERT INTO `visit` VALUES (144, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:45:21.665805');
INSERT INTO `visit` VALUES (145, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:45:47.877805');
INSERT INTO `visit` VALUES (146, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:46:05.776508');
INSERT INTO `visit` VALUES (147, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:48:30.803994');
INSERT INTO `visit` VALUES (148, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 16:58:18.833730');
INSERT INTO `visit` VALUES (149, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"code\":\"a = 3\\nb =4 \\nprint(a+b)\",\"success\":false,\"msg\":\"miss debugtalk\"}', '2022-04-07 17:00:13.124195');
INSERT INTO `visit` VALUES (150, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-07 17:05:51.717206');
INSERT INTO `visit` VALUES (151, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=oqmZ7LtVj9Kp6vLm3qEpWsRcgcGRmOOL1WPW3djfLN3uNlxPpQhIIRv1kR6aTXEw&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-07 17:05:53.831113');
INSERT INTO `visit` VALUES (152, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:05:54.261905');
INSERT INTO `visit` VALUES (153, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:05:54.792354');
INSERT INTO `visit` VALUES (154, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\n  \"creator\": \"string\",\n  \"updater\": \"string\",\n  \"code\": \"string\",\n  \"project\": 0\n}', '2022-04-07 17:06:21.734831');
INSERT INTO `visit` VALUES (155, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 17:07:00.534604');
INSERT INTO `visit` VALUES (156, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '{\n  \"username\": \"string\",\n  \"password\": \"string\"\n}', '2022-04-07 17:07:10.260284');
INSERT INTO `visit` VALUES (157, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '{\n  \"username\": \"summer\",\n  \"password\": \"summer\"\n}', '2022-04-07 17:07:34.116375');
INSERT INTO `visit` VALUES (158, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:13:40.999659');
INSERT INTO `visit` VALUES (159, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:13:41.592511');
INSERT INTO `visit` VALUES (160, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:13:44.949836');
INSERT INTO `visit` VALUES (161, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:13:51.546075');
INSERT INTO `visit` VALUES (162, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:14:28.170314');
INSERT INTO `visit` VALUES (163, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:14:28.696714');
INSERT INTO `visit` VALUES (164, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-07 17:14:59.563539');
INSERT INTO `visit` VALUES (165, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=d3dYurPapFtCOGG0aZIqDsE5oQtiQQHV9rRS7cXrS0yQ0CMGhefWHY1BGwZC1KSz&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-07 17:15:01.348907');
INSERT INTO `visit` VALUES (166, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:15:01.775439');
INSERT INTO `visit` VALUES (167, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:15:02.195025');
INSERT INTO `visit` VALUES (168, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:16:12.864922');
INSERT INTO `visit` VALUES (169, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:16:13.365532');
INSERT INTO `visit` VALUES (170, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 17:16:26.285932');
INSERT INTO `visit` VALUES (171, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 17:16:44.134955');
INSERT INTO `visit` VALUES (172, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:38:46.647995');
INSERT INTO `visit` VALUES (173, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:38:47.162352');
INSERT INTO `visit` VALUES (174, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 17:38:57.700506');
INSERT INTO `visit` VALUES (175, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-07 17:39:10.462433');
INSERT INTO `visit` VALUES (176, 'summer', '127.0.0.1', '0', '/docs/', '/docs/', '', 'GET', '', '2022-04-07 17:39:18.444653');
INSERT INTO `visit` VALUES (177, 'summer', '127.0.0.1', '0', '/doc/', '/doc/', '', 'GET', '', '2022-04-07 17:39:23.465669');
INSERT INTO `visit` VALUES (178, 'summer', '127.0.0.1', '0', '/docs/', '/docs/', '', 'GET', '', '2022-04-07 17:39:34.940846');
INSERT INTO `visit` VALUES (179, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 17:39:47.663483');
INSERT INTO `visit` VALUES (180, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 17:40:03.309623');
INSERT INTO `visit` VALUES (181, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 17:40:49.482670');
INSERT INTO `visit` VALUES (182, 'summer', '127.0.0.1', '0', '/docs/', '/docs/', '', 'GET', '', '2022-04-07 17:41:06.864603');
INSERT INTO `visit` VALUES (183, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 17:41:24.318413');
INSERT INTO `visit` VALUES (184, 'summer', '127.0.0.1', '0', '/api-auth', '/api-auth', '', 'GET', '', '2022-04-07 17:41:34.389738');
INSERT INTO `visit` VALUES (185, 'summer', '127.0.0.1', '0', '/admin/', '/admin/', '', 'GET', '', '2022-04-07 17:41:42.627380');
INSERT INTO `visit` VALUES (186, 'summer', '127.0.0.1', '0', '/admin/auth/group/', '/admin/auth/group/', '', 'GET', '', '2022-04-07 17:41:47.340802');
INSERT INTO `visit` VALUES (187, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:41:47.747107');
INSERT INTO `visit` VALUES (188, 'summer', '127.0.0.1', '0', '/admin/auth/group/1/change/', '/admin/auth/group/1/change/', '', 'GET', '', '2022-04-07 17:41:50.305176');
INSERT INTO `visit` VALUES (189, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:41:50.720191');
INSERT INTO `visit` VALUES (190, 'summer', '127.0.0.1', '0', '/admin/auth/group/', '/admin/auth/group/', '', 'GET', '', '2022-04-07 17:42:03.577836');
INSERT INTO `visit` VALUES (191, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:42:03.973492');
INSERT INTO `visit` VALUES (192, 'summer', '127.0.0.1', '0', '/admin/djcelery/workerstate/', '/admin/djcelery/workerstate/', '', 'GET', '', '2022-04-07 17:42:07.762341');
INSERT INTO `visit` VALUES (193, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:42:08.128752');
INSERT INTO `visit` VALUES (194, 'summer', '127.0.0.1', '0', '/admin/djcelery/taskstate/', '/admin/djcelery/taskstate/', '', 'GET', '', '2022-04-07 17:42:08.418190');
INSERT INTO `visit` VALUES (195, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:42:08.784566');
INSERT INTO `visit` VALUES (196, 'summer', '127.0.0.1', '0', '/admin/summertestuser/myuser/', '/admin/summertestuser/myuser/', '', 'GET', '', '2022-04-07 17:42:11.884878');
INSERT INTO `visit` VALUES (197, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:42:12.261409');
INSERT INTO `visit` VALUES (198, 'summer', '127.0.0.1', '0', '/admin/summertestuser/myuser/1/change/', '/admin/summertestuser/myuser/1/change/', '', 'GET', '', '2022-04-07 17:42:16.375858');
INSERT INTO `visit` VALUES (199, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-07 17:42:16.727647');
INSERT INTO `visit` VALUES (200, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 17:42:40.828781');
INSERT INTO `visit` VALUES (201, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 17:42:41.336105');
INSERT INTO `visit` VALUES (202, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 17:46:31.426318');
INSERT INTO `visit` VALUES (203, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 17:46:31.442946');
INSERT INTO `visit` VALUES (204, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 17:46:34.176653');
INSERT INTO `visit` VALUES (205, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 17:46:34.495675');
INSERT INTO `visit` VALUES (206, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 17:46:36.205358');
INSERT INTO `visit` VALUES (207, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"id\":1,\"create_time\":\"2022-04-06T18:15:48.693741\",\"update_time\":\"2022-04-06T18:15:48.693777\",\"creator\":null,\"updater\":null,\"code\":\"# write you code\",\"project\":1}', '2022-04-07 17:46:41.086699');
INSERT INTO `visit` VALUES (208, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 17:46:41.432838');
INSERT INTO `visit` VALUES (209, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"id\":1,\"create_time\":\"2022-04-06T18:15:48.693741\",\"update_time\":\"2022-04-06T18:15:48.693777\",\"creator\":null,\"updater\":\"summer\",\"code\":\"# 测试运行前置函数\\ndef set_up(request):\\n    print(request)\\n    request_data = request[\'json\']\\n    request_data[\\\"password\\\"] = test_password\",\"project\":1}', '2022-04-07 17:46:53.406837');
INSERT INTO `visit` VALUES (210, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"id\":1,\"create_time\":\"2022-04-06T18:15:48.693741\",\"update_time\":\"2022-04-06T18:15:48.693777\",\"creator\":null,\"updater\":\"summer\",\"code\":\"# 测试运行前置函数\\ndef set_up(request):\\n    print(request)\\n    request_data = request[\'json\']\\n    request_data[\\\"password\\\"] = test_password\",\"project\":1}', '2022-04-07 17:47:23.070137');
INSERT INTO `visit` VALUES (211, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'PATCH', '{\"id\":1,\"create_time\":\"2022-04-06T18:15:48.693741\",\"update_time\":\"2022-04-06T18:15:48.693777\",\"creator\":null,\"updater\":\"summer\",\"code\":\"# 测试运行前置函数\\ndef set_up(request):\\n    print(request)\\n    request_data = request[\'json\']\\n    request_data[\\\"password\\\"] = test_password\",\"project\":1}', '2022-04-07 17:47:28.698967');
INSERT INTO `visit` VALUES (212, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-07 17:47:29.050777');
INSERT INTO `visit` VALUES (213, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-07 17:51:37.326449');
INSERT INTO `visit` VALUES (214, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-07 17:51:37.351365');
INSERT INTO `visit` VALUES (215, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 17:51:39.707043');
INSERT INTO `visit` VALUES (216, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 17:51:40.059394');
INSERT INTO `visit` VALUES (217, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 18:26:11.064762');
INSERT INTO `visit` VALUES (218, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 18:26:11.343172');
INSERT INTO `visit` VALUES (219, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-07 18:29:54.015581');
INSERT INTO `visit` VALUES (220, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-07 18:29:54.274068');
INSERT INTO `visit` VALUES (221, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 21:29:35.179730');
INSERT INTO `visit` VALUES (222, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-07 21:29:40.069574');
INSERT INTO `visit` VALUES (223, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-07 21:29:40.712577');
INSERT INTO `visit` VALUES (224, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-07 21:31:00.394506');
INSERT INTO `visit` VALUES (225, 'summer', '127.0.0.1', '0', '/admin/', '/admin/', '', 'GET', '', '2022-04-07 21:31:05.552391');
INSERT INTO `visit` VALUES (226, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-08 11:35:34.721832');
INSERT INTO `visit` VALUES (227, 'summer', '127.0.0.1', '0', '/favicon.ico', '/favicon.ico', '', 'GET', '', '2022-04-08 11:35:35.288040');
INSERT INTO `visit` VALUES (228, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:35:39.589362');
INSERT INTO `visit` VALUES (229, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 11:35:40.155599');
INSERT INTO `visit` VALUES (230, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/api/1/', '/api/summertest/api/1/', '', 'GET', '', '2022-04-08 11:36:36.923934');
INSERT INTO `visit` VALUES (231, 'summer', '127.0.0.1', '0', '/docs/', '/docs/', '', 'GET', '', '2022-04-08 11:42:29.717670');
INSERT INTO `visit` VALUES (232, 'AnonymousUser', '127.0.0.1', '0', '/redoc/', '/redoc/', '', 'GET', '', '2022-04-08 11:42:50.411415');
INSERT INTO `visit` VALUES (233, 'AnonymousUser', '127.0.0.1', '0', '/redoc/?format=openapi', '/redoc/', 'format=openapi', 'GET', '', '2022-04-08 11:42:50.958767');
INSERT INTO `visit` VALUES (234, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:44:38.714464');
INSERT INTO `visit` VALUES (235, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 11:44:39.357787');
INSERT INTO `visit` VALUES (236, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 11:44:56.116643');
INSERT INTO `visit` VALUES (237, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:48:51.055659');
INSERT INTO `visit` VALUES (238, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 11:48:51.605000');
INSERT INTO `visit` VALUES (239, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 11:49:01.027174');
INSERT INTO `visit` VALUES (240, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:56:38.856285');
INSERT INTO `visit` VALUES (241, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:56:40.413954');
INSERT INTO `visit` VALUES (242, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:56:41.332491');
INSERT INTO `visit` VALUES (243, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:57:07.563863');
INSERT INTO `visit` VALUES (244, 'summer', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:57:19.728624');
INSERT INTO `visit` VALUES (245, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 11:57:22.058974');
INSERT INTO `visit` VALUES (246, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 11:57:22.507138');
INSERT INTO `visit` VALUES (247, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/visit/', '/api/summertest/visit/', '', 'GET', '', '2022-04-08 11:57:32.792990');
INSERT INTO `visit` VALUES (248, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 13:35:02.031484');
INSERT INTO `visit` VALUES (249, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 13:35:02.596268');
INSERT INTO `visit` VALUES (250, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 13:35:09.545569');
INSERT INTO `visit` VALUES (251, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-08 13:35:17.619696');
INSERT INTO `visit` VALUES (252, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=pBF4YPhpdFgMVimvlHt3b6H0HLPzi5ATgG3Y2NTp5gR1oMbkhJFU6IvCCDKRI9zt&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-08 13:35:19.193014');
INSERT INTO `visit` VALUES (253, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 13:35:19.685844');
INSERT INTO `visit` VALUES (254, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 13:35:20.199117');
INSERT INTO `visit` VALUES (255, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 13:35:31.284966');
INSERT INTO `visit` VALUES (256, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 13:35:42.201953');
INSERT INTO `visit` VALUES (257, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 13:43:05.161910');
INSERT INTO `visit` VALUES (258, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 13:43:05.727209');
INSERT INTO `visit` VALUES (259, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 13:43:14.219960');
INSERT INTO `visit` VALUES (260, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 13:55:35.526587');
INSERT INTO `visit` VALUES (261, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 13:55:36.073038');
INSERT INTO `visit` VALUES (262, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 13:55:46.870766');
INSERT INTO `visit` VALUES (263, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-08 14:13:28.163913');
INSERT INTO `visit` VALUES (264, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=ji3ZqCSicRinXZV1EWdklxlsDshb7Un0pqtrmdGpMlopzG1XXfMJ2EVcaa1vqZC7&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-08 14:13:30.846714');
INSERT INTO `visit` VALUES (265, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:13:31.279796');
INSERT INTO `visit` VALUES (266, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:13:31.775933');
INSERT INTO `visit` VALUES (267, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-08 14:13:36.136093');
INSERT INTO `visit` VALUES (268, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=po1NL1S3athstkxnWgYVzTkIBKBXNojfYO5gU8hp0aC87EMZAel6mpiuifuh4WvE&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-08 14:13:37.367683');
INSERT INTO `visit` VALUES (269, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:13:37.768864');
INSERT INTO `visit` VALUES (270, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:13:38.211342');
INSERT INTO `visit` VALUES (271, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-08 14:13:40.419437');
INSERT INTO `visit` VALUES (272, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=J6myKarbNHwFk7dhIrbcGGeDlqtJzA7ojA3XRCkGmeuSMYnaiYmX2P2oIQQ5W2En&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-08 14:14:48.308910');
INSERT INTO `visit` VALUES (273, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:14:48.753084');
INSERT INTO `visit` VALUES (274, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:14:49.216564');
INSERT INTO `visit` VALUES (275, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '{\n  \"username\": \"summer\",\n  \"password\": \"summer\"\n}', '2022-04-08 14:15:32.436935');
INSERT INTO `visit` VALUES (276, 'AnonymousUser', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 14:16:17.859727');
INSERT INTO `visit` VALUES (277, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 14:16:31.956138');
INSERT INTO `visit` VALUES (278, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:24:19.478717');
INSERT INTO `visit` VALUES (279, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:24:20.015218');
INSERT INTO `visit` VALUES (280, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/swagger/', '/accounts/login/', 'next=/swagger/', 'GET', '', '2022-04-08 14:24:24.255263');
INSERT INTO `visit` VALUES (281, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=L2Fdp82tuePAPXNJBmfDRgjXsmB6ECKj7W2tWDIYgOwxG6eDFNN0AjIsX90vKdnJ&next=%2Fswagger%2F&username=summer&password=summer&submit=Log+in', '2022-04-08 14:24:30.671325');
INSERT INTO `visit` VALUES (282, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:24:31.105563');
INSERT INTO `visit` VALUES (283, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:24:31.531795');
INSERT INTO `visit` VALUES (284, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 14:24:41.787669');
INSERT INTO `visit` VALUES (285, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 14:24:55.747641');
INSERT INTO `visit` VALUES (286, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 14:24:57.472305');
INSERT INTO `visit` VALUES (287, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 14:24:58.533791');
INSERT INTO `visit` VALUES (288, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 14:24:58.870777');
INSERT INTO `visit` VALUES (289, 'summer', '127.0.0.1', '0', '/', '/', '', 'GET', '', '2022-04-08 14:25:06.203180');
INSERT INTO `visit` VALUES (290, 'summer', '127.0.0.1', '0', '/api-auth/', '/api-auth/', '', 'GET', '', '2022-04-08 14:25:20.372463');
INSERT INTO `visit` VALUES (291, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'GET', '', '2022-04-08 14:25:30.221526');
INSERT INTO `visit` VALUES (292, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'OPTIONS', '', '2022-04-08 14:25:46.387486');
INSERT INTO `visit` VALUES (293, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/login', '/accounts/login/', 'next=/login', 'GET', '', '2022-04-08 14:26:34.184508');
INSERT INTO `visit` VALUES (294, 'summer', '127.0.0.1', '0', '/accounts/login/', '/accounts/login/', '', 'POST', 'csrfmiddlewaretoken=zdUoU3OryR9vu91DNUqUTz7bx2xk4xhkPpdqRY21YrMNJ3wVpbq2NQlDfNUaEoBy&next=%2Flogin&username=summer&password=summer&submit=Log+in', '2022-04-08 14:26:38.541967');
INSERT INTO `visit` VALUES (295, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'GET', '', '2022-04-08 14:26:38.994454');
INSERT INTO `visit` VALUES (296, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'GET', '', '2022-04-08 14:26:49.782656');
INSERT INTO `visit` VALUES (297, 'summer', '127.0.0.1', '0', '/accounts/login/?next=/login', '/accounts/login/', 'next=/login', 'GET', '', '2022-04-08 14:26:53.690886');
INSERT INTO `visit` VALUES (298, 'summer', '127.0.0.1', '0', '/api-auth/', '/api-auth/', '', 'GET', '', '2022-04-08 14:26:55.841094');
INSERT INTO `visit` VALUES (299, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:27:36.801950');
INSERT INTO `visit` VALUES (300, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:27:37.277492');
INSERT INTO `visit` VALUES (301, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 14:32:23.495372');
INSERT INTO `visit` VALUES (302, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 14:32:24.044088');
INSERT INTO `visit` VALUES (303, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 14:32:32.976655');
INSERT INTO `visit` VALUES (304, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 14:33:04.522206');
INSERT INTO `visit` VALUES (305, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-08 14:40:50.708935');
INSERT INTO `visit` VALUES (306, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/login', '/api/summertest/login', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-08 14:42:06.445707');
INSERT INTO `visit` VALUES (307, 'AnonymousUser', '127.0.0.1', '0', '/api/summertest/login', '/api/summertest/login', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-08 14:42:13.836887');
INSERT INTO `visit` VALUES (308, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '{\"name\":\"Test\",\"desc\":\"Test01\",\"responsible\":\"summer\",\"id\":\"\",\"yapi_base_url\":\"\",\"yapi_openapi_token\":\"\",\"jira_bearer_token\":\"\",\"jira_project_key\":\"\"}', '2022-04-08 14:42:27.384134');
INSERT INTO `visit` VALUES (309, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '{\n    \"username\": [\n        \"summer\"\n    ],\n    \"password\": [\n        \"summer\"\n    ]\n}', '2022-04-08 14:42:59.435546');
INSERT INTO `visit` VALUES (310, 'AnonymousUser', '127.0.0.1', '0', '/login', '/login', '', 'POST', '{\n    \"username\": \n        \"summer\"\n    ,\n    \"password\": \n        \"summer\"\n\n}', '2022-04-08 14:43:14.823648');
INSERT INTO `visit` VALUES (311, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 14:54:24.300224');
INSERT INTO `visit` VALUES (312, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 14:54:24.303410');
INSERT INTO `visit` VALUES (313, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 14:54:29.916783');
INSERT INTO `visit` VALUES (314, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 14:54:30.297963');
INSERT INTO `visit` VALUES (315, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 14:54:44.801314');
INSERT INTO `visit` VALUES (316, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 14:54:45.126369');
INSERT INTO `visit` VALUES (317, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 14:54:57.300419');
INSERT INTO `visit` VALUES (318, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 14:54:57.613732');
INSERT INTO `visit` VALUES (319, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 14:55:00.344716');
INSERT INTO `visit` VALUES (320, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 14:55:00.674282');
INSERT INTO `visit` VALUES (321, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 14:55:03.391957');
INSERT INTO `visit` VALUES (322, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 14:55:03.732673');
INSERT INTO `visit` VALUES (323, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 14:55:05.914166');
INSERT INTO `visit` VALUES (324, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 14:57:47.731580');
INSERT INTO `visit` VALUES (325, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 14:57:56.291599');
INSERT INTO `visit` VALUES (326, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 15:00:54.814475');
INSERT INTO `visit` VALUES (327, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 15:01:26.653392');
INSERT INTO `visit` VALUES (328, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 15:01:29.019507');
INSERT INTO `visit` VALUES (329, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 15:01:29.029405');
INSERT INTO `visit` VALUES (330, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 15:01:29.052635');
INSERT INTO `visit` VALUES (331, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 15:01:29.078179');
INSERT INTO `visit` VALUES (332, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 15:02:49.771709');
INSERT INTO `visit` VALUES (333, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 15:02:49.782062');
INSERT INTO `visit` VALUES (334, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 15:02:49.787837');
INSERT INTO `visit` VALUES (335, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 15:02:49.828033');
INSERT INTO `visit` VALUES (336, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 15:05:01.696293');
INSERT INTO `visit` VALUES (337, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 15:05:01.696967');
INSERT INTO `visit` VALUES (338, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 15:05:01.697959');
INSERT INTO `visit` VALUES (339, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 15:05:01.761380');
INSERT INTO `visit` VALUES (340, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/', '/api/summertest/tree/1/', '', 'GET', '', '2022-04-08 15:19:02.354616');
INSERT INTO `visit` VALUES (341, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/', '/api/summertest/tree/1/', '', 'GET', '', '2022-04-08 15:19:37.233262');
INSERT INTO `visit` VALUES (342, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/', '/api/summertest/tree/1/', '', 'GET', '', '2022-04-08 15:20:09.223392');
INSERT INTO `visit` VALUES (343, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 15:25:13.231245');
INSERT INTO `visit` VALUES (344, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 15:25:13.268073');
INSERT INTO `visit` VALUES (345, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 15:25:13.294426');
INSERT INTO `visit` VALUES (346, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 15:25:13.361551');
INSERT INTO `visit` VALUES (347, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 15:48:40.236402');
INSERT INTO `visit` VALUES (348, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 15:48:40.251420');
INSERT INTO `visit` VALUES (349, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 15:48:40.271533');
INSERT INTO `visit` VALUES (350, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 15:48:40.325856');
INSERT INTO `visit` VALUES (351, 'summer', '127.0.0.1', '0', '/api/summertest/tree/undefined/?type=1', '/api/summertest/tree/undefined/', 'type=1', 'GET', '', '2022-04-08 16:55:20.098163');
INSERT INTO `visit` VALUES (352, 'summer', '127.0.0.1', '0', '/api/summertest/host_ip/undefined/', '/api/summertest/host_ip/undefined/', '', 'GET', '', '2022-04-08 16:55:20.103634');
INSERT INTO `visit` VALUES (353, 'summer', '127.0.0.1', '0', '/api/summertest/api/?page=1&node=&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 16:55:20.112831');
INSERT INTO `visit` VALUES (354, 'summer', '127.0.0.1', '0', '/api/summertest/project/yapi/undefined/', '/api/summertest/project/yapi/undefined/', '', 'GET', '', '2022-04-08 16:55:20.131755');
INSERT INTO `visit` VALUES (355, 'summer', '127.0.0.1', '0', '/api/summertest/config/undefined/', '/api/summertest/config/undefined/', '', 'GET', '', '2022-04-08 16:55:20.138906');
INSERT INTO `visit` VALUES (356, 'summer', '127.0.0.1', '0', '/api/summertest/host_ip/undefined/', '/api/summertest/host_ip/undefined/', '', 'GET', '', '2022-04-08 16:56:56.983512');
INSERT INTO `visit` VALUES (357, 'summer', '127.0.0.1', '0', '/api/summertest/api/?page=1&node=&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 16:56:56.994720');
INSERT INTO `visit` VALUES (358, 'summer', '127.0.0.1', '0', '/api/summertest/tree/undefined/?type=1', '/api/summertest/tree/undefined/', 'type=1', 'GET', '', '2022-04-08 16:56:56.995786');
INSERT INTO `visit` VALUES (359, 'summer', '127.0.0.1', '0', '/api/summertest/config/undefined/', '/api/summertest/config/undefined/', '', 'GET', '', '2022-04-08 16:56:57.027117');
INSERT INTO `visit` VALUES (360, 'summer', '127.0.0.1', '0', '/api/summertest/project/yapi/undefined/', '/api/summertest/project/yapi/undefined/', '', 'GET', '', '2022-04-08 16:56:57.068757');
INSERT INTO `visit` VALUES (361, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 17:27:56.047808');
INSERT INTO `visit` VALUES (362, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 17:27:56.050798');
INSERT INTO `visit` VALUES (363, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 17:28:00.759384');
INSERT INTO `visit` VALUES (364, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 17:28:01.388072');
INSERT INTO `visit` VALUES (365, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:28:05.312569');
INSERT INTO `visit` VALUES (366, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:28:05.313500');
INSERT INTO `visit` VALUES (367, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:28:05.339761');
INSERT INTO `visit` VALUES (368, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:28:05.349670');
INSERT INTO `visit` VALUES (369, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:28:05.442613');
INSERT INTO `visit` VALUES (370, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:28:08.672580');
INSERT INTO `visit` VALUES (371, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:28:08.702830');
INSERT INTO `visit` VALUES (372, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:28:08.704578');
INSERT INTO `visit` VALUES (373, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:28:08.706157');
INSERT INTO `visit` VALUES (374, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:28:08.858174');
INSERT INTO `visit` VALUES (375, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:28:10.728005');
INSERT INTO `visit` VALUES (376, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:28:10.732535');
INSERT INTO `visit` VALUES (377, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:28:10.735494');
INSERT INTO `visit` VALUES (378, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:28:10.767156');
INSERT INTO `visit` VALUES (379, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:28:10.798911');
INSERT INTO `visit` VALUES (380, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/', '/api/summertest/tree/1/', '', 'GET', '', '2022-04-08 17:28:26.673012');
INSERT INTO `visit` VALUES (381, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:28:29.118958');
INSERT INTO `visit` VALUES (382, 'summer', '127.0.0.1', '0', '/admin/', '/admin/', '', 'GET', '', '2022-04-08 17:31:27.199324');
INSERT INTO `visit` VALUES (383, 'summer', '127.0.0.1', '0', '/favicon.ico', '/favicon.ico', '', 'GET', '', '2022-04-08 17:31:28.070349');
INSERT INTO `visit` VALUES (384, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=1&project=1&search=&tag=1&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=1&project=1&search=&tag=1&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:31:59.576296');
INSERT INTO `visit` VALUES (385, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=1&project=1&search=&tag=1&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=1&project=1&search=&tag=1&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:32:00.710393');
INSERT INTO `visit` VALUES (386, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=false', '/api/summertest/api/', 'page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=false', 'GET', '', '2022-04-08 17:32:04.974480');
INSERT INTO `visit` VALUES (387, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=false', '/api/summertest/api/', 'page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=false', 'GET', '', '2022-04-08 17:32:08.804511');
INSERT INTO `visit` VALUES (388, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 17:33:42.847623');
INSERT INTO `visit` VALUES (389, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 17:33:44.058130');
INSERT INTO `visit` VALUES (390, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 17:37:28.440026');
INSERT INTO `visit` VALUES (391, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 17:37:28.449330');
INSERT INTO `visit` VALUES (392, 'summer', '127.0.0.1', '0', '/api/summertest/dashboard/', '/api/summertest/dashboard/', '', 'GET', '', '2022-04-08 17:37:31.744645');
INSERT INTO `visit` VALUES (393, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 17:37:43.236528');
INSERT INTO `visit` VALUES (394, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 17:37:43.234178');
INSERT INTO `visit` VALUES (395, 'summer', '127.0.0.1', '0', '/api/user/list/', '/api/user/list/', '', 'GET', '', '2022-04-08 17:37:48.828295');
INSERT INTO `visit` VALUES (396, 'summer', '127.0.0.1', '0', '/api/summertest/project/', '/api/summertest/project/', '', 'GET', '', '2022-04-08 17:37:48.829451');
INSERT INTO `visit` VALUES (397, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 17:40:48.593471');
INSERT INTO `visit` VALUES (398, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 17:40:49.083459');
INSERT INTO `visit` VALUES (399, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:41:19.128342');
INSERT INTO `visit` VALUES (400, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:41:19.211762');
INSERT INTO `visit` VALUES (401, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:41:19.249788');
INSERT INTO `visit` VALUES (402, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:41:19.249028');
INSERT INTO `visit` VALUES (403, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:41:19.396565');
INSERT INTO `visit` VALUES (404, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/', '/api/summertest/tree/1/', '', 'GET', '', '2022-04-08 17:42:01.562511');
INSERT INTO `visit` VALUES (405, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=1&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:42:04.392854');
INSERT INTO `visit` VALUES (406, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 17:42:40.765765');
INSERT INTO `visit` VALUES (407, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/', '/api/summertest/debugtalk/', '', 'POST', '{\"id\":1,\"create_time\":\"2022-04-06T18:15:48.693741\",\"update_time\":\"2022-04-06T18:15:48.693777\",\"creator\":null,\"updater\":\"summer\",\"code\":\"# 测试运行前置函数\\ndef set_up(request):\\n    print(request)\\n    request_data = request[\'json\']\\n    request_data[\\\"password\\\"] = test_password\",\"project\":1}', '2022-04-08 17:42:49.246488');
INSERT INTO `visit` VALUES (408, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:43:08.934886');
INSERT INTO `visit` VALUES (409, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:43:08.939387');
INSERT INTO `visit` VALUES (410, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:43:08.941346');
INSERT INTO `visit` VALUES (411, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:43:08.945237');
INSERT INTO `visit` VALUES (412, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:43:09.044540');
INSERT INTO `visit` VALUES (413, 'summer', '127.0.0.1', '1', '/api/summertest/debugtalk/1/', '/api/summertest/debugtalk/1/', '', 'GET', '', '2022-04-08 17:43:10.485329');
INSERT INTO `visit` VALUES (414, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:46:30.100243');
INSERT INTO `visit` VALUES (415, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:46:30.101023');
INSERT INTO `visit` VALUES (416, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:46:30.124704');
INSERT INTO `visit` VALUES (417, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:46:30.140098');
INSERT INTO `visit` VALUES (418, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:46:30.169938');
INSERT INTO `visit` VALUES (419, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 17:46:31.250082');
INSERT INTO `visit` VALUES (420, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 17:46:31.680103');
INSERT INTO `visit` VALUES (421, 'summer', '127.0.0.1', '0', '/admin/summertestuser/myuser/', '/admin/summertestuser/myuser/', '', 'GET', '', '2022-04-08 17:46:39.080145');
INSERT INTO `visit` VALUES (422, 'summer', '127.0.0.1', '0', '/admin/jsi18n/', '/admin/jsi18n/', '', 'GET', '', '2022-04-08 17:46:39.629558');
INSERT INTO `visit` VALUES (423, 'AnonymousUser', '127.0.0.1', '0', '/swagger/', '/swagger/', '', 'GET', '', '2022-04-08 17:46:50.191800');
INSERT INTO `visit` VALUES (424, 'AnonymousUser', '127.0.0.1', '0', '/swagger/?format=openapi', '/swagger/', 'format=openapi', 'GET', '', '2022-04-08 17:46:50.899007');
INSERT INTO `visit` VALUES (425, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 17:47:03.886502');
INSERT INTO `visit` VALUES (426, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 17:47:04.350694');
INSERT INTO `visit` VALUES (427, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 17:48:34.771308');
INSERT INTO `visit` VALUES (428, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 17:48:34.771995');
INSERT INTO `visit` VALUES (429, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 17:48:34.776114');
INSERT INTO `visit` VALUES (430, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 17:48:34.875614');
INSERT INTO `visit` VALUES (431, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 17:48:35.002617');
INSERT INTO `visit` VALUES (432, 'summer', '127.0.0.1', '1', '/api/summertest/visit/?project=1', '/api/summertest/visit/', 'project=1', 'GET', '', '2022-04-08 18:03:08.849278');
INSERT INTO `visit` VALUES (433, 'summer', '127.0.0.1', '1', '/api/summertest/project/1/', '/api/summertest/project/1/', '', 'GET', '', '2022-04-08 18:03:09.532756');
INSERT INTO `visit` VALUES (434, 'summer', '127.0.0.1', '1', '/api/summertest/tree/1/?type=1', '/api/summertest/tree/1/', 'type=1', 'GET', '', '2022-04-08 18:03:09.826834');
INSERT INTO `visit` VALUES (435, 'summer', '127.0.0.1', '1', '/api/summertest/api/?page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', '/api/summertest/api/', 'page=1&node=&project=1&search=&tag=&rigEnv=&onlyMe=true&showYAPI=true', 'GET', '', '2022-04-08 18:03:09.840588');
INSERT INTO `visit` VALUES (436, 'summer', '127.0.0.1', '1', '/api/summertest/host_ip/1/', '/api/summertest/host_ip/1/', '', 'GET', '', '2022-04-08 18:03:09.845713');
INSERT INTO `visit` VALUES (437, 'summer', '127.0.0.1', '1', '/api/summertest/config/1/', '/api/summertest/config/1/', '', 'GET', '', '2022-04-08 18:03:09.853843');
INSERT INTO `visit` VALUES (438, 'summer', '127.0.0.1', '1', '/api/summertest/project/yapi/1/', '/api/summertest/project/yapi/1/', '', 'GET', '', '2022-04-08 18:03:09.926136');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
