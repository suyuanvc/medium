/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2022-10-10 21:02:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for business_system
-- ----------------------------
DROP TABLE IF EXISTS `business_system`;
CREATE TABLE `business_system` (
  `ID` varchar(20) NOT NULL DEFAULT '',
  `SYS_ID` varchar(32) DEFAULT '' COMMENT '业务系统ID',
  `SYS_NAME` varchar(64) DEFAULT '' COMMENT '业务系统名称',
  `DESCRIBE` varchar(255) DEFAULT '' COMMENT '业务系统说明',
  `CREATED_STAMP` timestamp(6) NULL DEFAULT NULL,
  `CREATED_TX_STAMP` timestamp(6) NULL DEFAULT NULL,
  `LAST_UPDATED_STAMP` timestamp(6) NULL DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business_system
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'sports_running', '', null, null, 'SportsRunning', 'crud', 'com.ruoyi.system', 'system', 'running', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-05-12 18:08:19', '', null, null);
INSERT INTO `gen_table` VALUES ('2', 'sports_activity', '', null, null, 'SportsActivity', 'crud', 'com.ruoyi.system', 'system', 'activity', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-05-13 17:20:50', '', null, null);
INSERT INTO `gen_table` VALUES ('3', 'sports_activity_member', '', null, null, 'SportsActivityMember', 'crud', 'com.ruoyi.system', 'system', 'member', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-05-13 17:20:50', '', null, null);
INSERT INTO `gen_table` VALUES ('4', 'sports_circle', '', null, null, 'SportsCircle', 'crud', 'com.ruoyi.system', 'system', 'circle', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-05-13 17:20:50', '', null, null);
INSERT INTO `gen_table` VALUES ('5', 'sports_circle_member', '', null, null, 'SportsCircleMember', 'crud', 'com.ruoyi.system', 'system', 'member', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-05-13 17:20:50', '', null, null);
INSERT INTO `gen_table` VALUES ('6', 'sports_running_member', '', null, null, 'SportsRunningMember', 'crud', 'com.ruoyi.system', 'system', 'member', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-05-13 17:20:50', '', null, null);
INSERT INTO `gen_table` VALUES ('7', 'study_circle', '', null, null, 'StudyCircle', 'crud', 'com.ruoyi.system', 'system', 'circle', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-08-01 09:17:06', '', null, null);
INSERT INTO `gen_table` VALUES ('8', 'study_main', '', null, null, 'StudyMain', 'crud', 'com.ruoyi.system', 'system', 'main', null, 'ruoyi', '0', '/', null, 'suyuan', '2021-08-01 09:17:06', '', null, null);
INSERT INTO `gen_table` VALUES ('9', 'sign_habit', '', null, null, 'SignHabit', 'crud', 'com.ruoyi.system', 'system', 'habit', null, 'ruoyi', '0', '/', null, 'suyuan', '2022-04-28 23:07:12', '', null, null);
INSERT INTO `gen_table` VALUES ('10', 'sign_list', '', null, null, 'SignList', 'crud', 'com.ruoyi.system', 'system', 'list', null, 'ruoyi', '0', '/', null, 'suyuan', '2022-04-28 23:07:12', '', null, null);
INSERT INTO `gen_table` VALUES ('11', 'sign_record', '', null, null, 'SignRecord', 'crud', 'com.ruoyi.system', 'system', 'record', null, 'ruoyi', '0', '/', null, 'suyuan', '2022-04-28 23:07:12', '', null, null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('2', '1', 'number', '编号', 'varchar(12)', 'String', 'number', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('3', '1', 'name', '跑步团名称', 'varchar(32)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('4', '1', 'introduction', '跑步团简介', 'varchar(256)', 'String', 'introduction', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('5', '1', 'person_number', '成员总数', 'int(11)', 'Long', 'personNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('6', '1', 'city', '跑步团所在城市', 'varchar(64)', 'String', 'city', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('7', '1', 'address', '跑步团所在城市具体地点（地标如公园）', 'varchar(64)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('8', '1', 'mileage', '类型 5公里 10公里', 'char(1)', 'String', 'mileage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('9', '1', 'type', '1 成员只能个人  2 成员只能圈子  3 成员既可以有个人也可以有圈子', 'char(1)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '9', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('10', '1', 'picUrl', '跑步团头像地址', 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('11', '1', 'scale', '人数规模：10人 20人 50人 100人 200人 500人 1000人等等', 'char(1)', 'String', 'scale', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('12', '1', 'serviceUrl', '跑步团头像存储服务器地址', 'varchar(128)', 'String', 'serviceUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('13', '1', 'ranking', '排名', 'int(4)', 'Integer', 'ranking', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '13', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('14', '1', 'totalMileage', '跑步总里程', 'double(12,0)', 'Long', 'totalMileage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('15', '1', 'totalTime', '跑步总时长', 'double(12,0)', 'Long', 'totalTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '15', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('16', '1', 'totalActivity', '发起加入活动总数', 'int(4)', 'Integer', 'totalActivity', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('17', '1', 'createTime', null, 'date', 'Date', 'createTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '17', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('18', '1', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '18', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('19', '1', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '19', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('20', '1', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '20', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('21', '1', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '21', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('22', '1', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '22', 'suyuan', '2021-05-12 18:08:19', '', null);
INSERT INTO `gen_table_column` VALUES ('23', '2', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('24', '2', 'number', '圈子编号', 'varchar(11)', 'String', 'number', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('25', '2', 'name', '圈子名称', 'varchar(64)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('26', '2', 'introduction', '圈子简介', 'varchar(128)', 'String', 'introduction', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('27', '2', 'person_number', '圈子人数', 'int(4)', 'Integer', 'personNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('28', '2', 'picUrl', '头像地址', 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('29', '2', 'address', '圈子总地址', 'varchar(64)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('30', '2', 'slogan', '圈子口号', 'varchar(64)', 'String', 'slogan', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('31', '2', 'createTime', null, 'date', 'Date', 'createTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('32', '2', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('33', '2', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '11', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('34', '2', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('35', '2', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('36', '2', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('37', '2', 'type', null, 'char(1)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '15', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('38', '3', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('39', '3', 'activity_id', null, 'varchar(32)', 'String', 'activityId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('40', '3', 'type', null, 'char(1)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '3', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('41', '3', 'name', null, 'varchar(32)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('42', '3', 'nike_name', null, 'varchar(64)', 'String', 'nikeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('43', '3', 'idCard', null, 'varchar(18)', 'String', 'idCard', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('44', '3', 'age', null, 'int(4)', 'Integer', 'age', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('45', '3', 'sex', null, 'char(1)', 'String', 'sex', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '8', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('46', '3', 'phone', null, 'varchar(12)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('47', '3', 'hobby', null, 'varchar(64)', 'String', 'hobby', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('48', '3', 'picUrl', null, 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('49', '3', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('50', '3', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '13', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('51', '3', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('52', '3', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '15', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('53', '3', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('54', '4', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('55', '4', 'number', '圈子编号', 'varchar(11)', 'String', 'number', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('56', '4', 'name', '圈子名称', 'varchar(64)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('57', '4', 'introduction', '圈子简介', 'varchar(128)', 'String', 'introduction', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('58', '4', 'person_number', '圈子人数', 'int(4)', 'Integer', 'personNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('59', '4', 'picUrl', '头像地址', 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('60', '4', 'address', '圈子总地址', 'varchar(64)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('61', '4', 'slogan', '圈子口号', 'varchar(64)', 'String', 'slogan', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('62', '4', 'createTime', null, 'date', 'Date', 'createTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('63', '4', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('64', '4', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '11', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('65', '4', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('66', '4', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('67', '4', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('68', '5', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('69', '5', 'circle_id', null, 'varchar(32)', 'String', 'circleId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('70', '5', 'type', null, 'char(1)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '3', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('71', '5', 'name', null, 'varchar(32)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('72', '5', 'nike_name', null, 'varchar(64)', 'String', 'nikeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('73', '5', 'idCard', null, 'varchar(18)', 'String', 'idCard', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('74', '5', 'age', null, 'int(4)', 'Integer', 'age', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('75', '5', 'sex', null, 'char(1)', 'String', 'sex', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '8', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('76', '5', 'phone', null, 'varchar(12)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('77', '5', 'hobby', null, 'varchar(64)', 'String', 'hobby', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('78', '5', 'picUrl', null, 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('79', '5', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('80', '5', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '13', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('81', '5', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('82', '5', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '15', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('83', '5', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('84', '6', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('85', '6', 'type', '1 个人  2 圈子', 'char(1)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '2', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('86', '6', 'memberId', '成员编号', 'varchar(32)', 'String', 'memberId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('87', '6', 'name', '成员姓名', 'varchar(32)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('88', '6', 'idCard', '身份证号码', 'varchar(18)', 'String', 'idCard', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('89', '6', 'age', null, 'int(4)', 'Integer', 'age', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('90', '6', 'sex', null, 'char(1)', 'String', 'sex', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '7', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('91', '6', 'phone', null, 'varchar(12)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('92', '6', 'createTime', null, 'date', 'Date', 'createTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('93', '6', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('94', '6', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '11', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('95', '6', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('96', '6', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('97', '6', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('98', '6', 'hobby', '爱好 特长', 'varchar(64)', 'String', 'hobby', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '15', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('99', '6', 'picUrl', null, 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('100', '6', 'nike_name', null, 'varchar(64)', 'String', 'nikeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '17', 'suyuan', '2021-05-13 17:20:50', '', null);
INSERT INTO `gen_table_column` VALUES ('101', '7', 'id', '书吧 圈子', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('102', '7', 'number', '圈子编号', 'varchar(11)', 'String', 'number', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('103', '7', 'name', '圈子名称', 'varchar(64)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('104', '7', 'introduction', '圈子简介', 'varchar(128)', 'String', 'introduction', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('105', '7', 'person_number', '圈子人数', 'int(4)', 'Integer', 'personNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('106', '7', 'picUrl', '头像地址', 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('107', '7', 'address', '圈子总地址', 'varchar(64)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('108', '7', 'slogan', '圈子口号', 'varchar(64)', 'String', 'slogan', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('109', '7', 'createTime', null, 'date', 'Date', 'createTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('110', '7', 'createBy', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('111', '7', 'updateTime', null, 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '11', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('112', '7', 'updateBy', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('113', '7', 'remark', null, 'varchar(64)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('114', '7', 'delflag', null, 'char(1)', 'String', 'delflag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('115', '7', 'main_id', '关联study_main表', 'int(11)', 'Long', 'mainId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '15', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('116', '7', 'leader', '负责人', 'varchar(32)', 'String', 'leader', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('117', '7', 'leader_id', null, 'int(11)', 'Long', 'leaderId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '17', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('118', '8', 'id', '书吧主表 主键ID', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('119', '8', 'name', '名称', 'varchar(64)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('120', '8', 'type', '1 单位   2 个人', 'char(1)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '3', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('121', '8', 'address', '地址', 'varchar(64)', 'String', 'address', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('122', '8', 'host_msg', '主人寄语', 'varchar(128)', 'String', 'hostMsg', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('123', '8', 'recommend_books', '推荐书籍', 'varchar(64)', 'String', 'recommendBooks', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('124', '8', 'phone', '手机号', 'varchar(12)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('125', '8', 'email', 'email', 'varchar(24)', 'String', 'email', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('126', '8', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '9', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('127', '8', 'del_flag', '删除标识（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '10', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('128', '8', 'leader', '负责人', 'varchar(32)', 'String', 'leader', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('129', '8', 'create_by', '创建者id', 'int(11)', 'Long', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '12', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('130', '8', 'create_time', '创建时间', 'date', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '13', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('131', '8', 'update_by', '更新者id', 'int(11)', 'Long', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '14', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('132', '8', 'update_time', '更新时间', 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '15', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('133', '8', 'picUrl', '头像地址', 'varchar(128)', 'String', 'picUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('134', '8', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '17', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('135', '8', 'number', '编号', 'varchar(16)', 'String', 'number', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '18', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('136', '8', 'introduction', '简要说明', 'varchar(128)', 'String', 'introduction', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '19', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('137', '8', 'leader_id', '负责人ID', 'int(11)', 'Long', 'leaderId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '20', 'suyuan', '2021-08-01 09:17:06', '', null);
INSERT INTO `gen_table_column` VALUES ('138', '9', 'habit_id', null, 'int(4)', 'Integer', 'habitId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('139', '9', 'habit_name', '习惯名称', 'varchar(64)', 'String', 'habitName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('140', '9', 'habit_desc', '习惯描述', 'varchar(225)', 'String', 'habitDesc', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('141', '9', 'habit_hot', '习惯热度', 'int(11)', 'Long', 'habitHot', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('142', '9', 'create_time', null, 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '5', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('143', '9', 'create_by', null, 'varchar(32)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('144', '9', 'update_time', null, 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '7', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('145', '9', 'update_by', null, 'varchar(32)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('146', '10', 'sign_record_id', null, 'int(11)', 'Long', 'signRecordId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('147', '10', 'record_id', '关联sign_record表id', 'int(11)', 'Long', 'recordId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('148', '10', 'habit_id', '关联sign_habit表id', 'int(11)', 'Long', 'habitId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('149', '10', 'sign_duration_hour', '打卡小时数', 'int(4)', 'Integer', 'signDurationHour', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('150', '10', 'sign_duration_minute', '打卡分钟数', 'int(4)', 'Integer', 'signDurationMinute', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('151', '10', 'sign_experience', '打卡心得', 'varchar(225)', 'String', 'signExperience', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('152', '10', 'start_time', null, 'datetime', 'Date', 'startTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('153', '10', 'end_time', null, 'datetime', 'Date', 'endTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('154', '11', 'record_id', null, 'int(11)', 'Long', 'recordId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('155', '11', 'sign_date', '签到日期', 'datetime', 'Date', 'signDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '2', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('156', '11', 'sign_desc', '签到描述', 'varchar(225)', 'String', 'signDesc', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('157', '11', 'sign_user', null, 'varchar(32)', 'String', 'signUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('158', '11', 'sign_time', '签到时间', 'datetime', 'Date', 'signTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('159', '11', 'last_time', '最后一次编辑时间', 'datetime', 'Date', 'lastTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'suyuan', '2022-04-28 23:07:12', '', null);
INSERT INTO `gen_table_column` VALUES ('160', '11', 'sign_experience', null, 'varchar(225)', 'String', 'signExperience', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'suyuan', '2022-04-28 23:07:12', '', null);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', '0 0 */1 * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000180704A1D3878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000673757975616E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000180795C2E7078707400007070707400013174000D302030202A2F31202A202A203F7400176261626974486F745461736B2E6261626974486F74282974000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000004740018E4B9A0E683AFE783ADE5BAA6E5AE9AE697B6E4BBBBE58AA174000131740001307800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'LAPTOP-8LOPCLE21665404451208', '1665406914435', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1665404460000', '-1', '5', 'PAUSED', 'CRON', '1665404451000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', 'TASK_CLASS_NAME4', 'SYSTEM', null, '1665410400000', '1665406800000', '5', 'WAITING', 'CRON', '1665404451000', '0', null, '-1', '');

-- ----------------------------
-- Table structure for random_article
-- ----------------------------
DROP TABLE IF EXISTS `random_article`;
CREATE TABLE `random_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `title` varchar(128) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `number` varchar(32) DEFAULT NULL,
  `pic_url` varchar(128) DEFAULT NULL,
  `service_url` varchar(128) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of random_article
-- ----------------------------
INSERT INTO `random_article` VALUES ('12', '<h2 style=\"text-align: center; \"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\" style=\"width: 25%; float: left;\" class=\"note-float-left\"><u><b>去额前恶趣味请问的去问驱wq的期望去污粉全微分无法无法完全放弃违法额分分威风威风为</b></u></p><p><u><b>蚊器我我分威风威风</b></u><u><b>威风士大夫士wq亲卫队请问物权法纷纷为分为氛围分为温度范围废弃物</b></u></p><p><u><b>夫的威风威风威风纷纷为分武都区武都区武都区完全纷纷是个发发俄方纷纷分为氛围请问请问</b></u></p><p><u><b>为氛围</b></u><u><b>十三点VS俄方微我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u></p><p><u><b>风威风撒发顺丰测试我的确我的父亲违反物权法威风威风威风我给忘却的威风威风份未发确定</b></u></p><p><u><b>服额分色法</b>。为请问请问亲人犬瘟热无法为额威风威风威风威风威风威风我</u><u><b>我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u><u><b>风威风撒发顺丰测试我的确我的父亲违反物。</b></u></p><p>&nbsp; &nbsp; 的份未发各位各位各位各位如果在任何责任为公司果然是个主人公说的不是第八十八章是微风分三个VSDB他今天已经如题如题二VS给v额是各个不知道湖人队或者那封公开信护士小姐<u><b><br></b></u></p>', '测试样本', null, '2021-04-03 14:04:46', null, '2021-08-09 11:35:22', 'article_20210403_00001', null, null, '3');
INSERT INTO `random_article` VALUES ('14', '<p data-track=\"1\" style=\"margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">任何一种进步都足以让自己变得更自信。</span><br>一次次的突破是因为不懈的坚持，<span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">坚持跑步，不因天热而拒绝下楼，也不因未降临下的雨而放弃热身，做好准备，随时出发</span>。生活也是一样，多数情况下要绝对地保持自己的节奏，在自己的节奏里，更可能把事情做得出色。<br class=\"sysbr\" style=\"display: inline;\"></p><div class=\"pgc-img\" style=\"margin: 18px 0px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><img src=\"https://p3.toutiaoimg.com/img/pgc-image/d9f6f9a1544f44d1b9453b989727a37b~tplv-tt-shrink:640:0.image\" img_width=\"1080\" img_height=\"2244\" image_type=\"1\" mime_type=\"image/png\" class=\"syl-page-img\" style=\"margin: 0px auto 8px; padding: 0px; max-width: 100%; display: block; height: auto;\"><p class=\"pgc-img-caption\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px;\"></p></div><p data-track=\"2\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><br>电梯偶尔也会闹情绪，我被迫爬楼，其实，6楼并不是那么让人望而却步，大学时候每天都会爬上很多次的六楼，也没有觉得有多糟糕。<span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">有时候，用一个玩的心态去对待这些小插曲，也会觉得很有趣，至少是不会反感的。</span><br>几近天天跑的强度，<span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">每周一到两次10公里跑，坚持一个月有余，这次，我用亲身实践证明了:跑步的确是可以瘦身的，不仅仅是一串串记录的数字变得越来越小，还有脸庞、手臂、大腿以及自己肚子上肉眼可见的变化。</span></p><p class=\"pgc-p syl-page-br\" data-track=\"3\" style=\"margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; height: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><br></p><div class=\"pgc-img\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><img src=\"https://p3.toutiaoimg.com/img/pgc-image/0c1e0c24a1594f798253b79f65ae8598~tplv-tt-shrink:640:0.image\" img_width=\"1080\" img_height=\"2244\" image_type=\"1\" mime_type=\"image/png\" class=\"syl-page-img\" style=\"margin: 0px auto 8px; padding: 0px; max-width: 100%; display: block; height: auto;\"><p class=\"pgc-img-caption\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px;\"></p></div><p data-track=\"4\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><br>还有个更深刻的改变，家里人似乎有很久没有说我叫不动了。<br class=\"sysbr\" style=\"display: inline;\">我也感觉自己更加的积极地主动承担起来，自觉了，就都好办了，做事情不拖拖拉拉，时间利用就更加合理起来。<span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">把用于内心纠结的时间通通干掉，转身去把身边够得着的事情顺手做完，既减轻了家人的负担，也给自己一个动起来的机会</span>。家，因为相互体谅而更加和谐。将心比心，有多少事情都是你可以去做，但最后都不是你做的！<br class=\"sysbr\" style=\"display: inline;\"></p><div class=\"pgc-img\" style=\"margin: 18px 0px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><img src=\"https://p6.toutiaoimg.com/img/pgc-image/97ef86bab2ee48cb97b545e9eee8d30d~tplv-tt-shrink:640:0.image\" img_width=\"1200\" img_height=\"799\" image_type=\"1\" mime_type=\"image/jpeg\" class=\"syl-page-img\" style=\"margin: 0px auto 8px; padding: 0px; max-width: 100%; display: block; height: auto;\"><p class=\"pgc-img-caption\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px;\"></p></div><p data-track=\"5\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><br><span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">人除了要积极主动，还要学会承受力所能及的疼痛。</span><br>这些天，犹如跑量和配速、步频的提升，腿会经常疼痛，呼吸也会把握不好，但<span style=\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\">每次都在积极主动地去调整，去承受，痛了也还在坚持，每次到最后，都会给我意想不到的突破。这些突破让我深刻体会到:疼痛是每个热爱跑步的人必经之路，只有从艰难困苦中走出来，才会更加真实深刻地感受到结果的香甜！</span></p><p class=\"pgc-p syl-page-br\" data-track=\"6\" style=\"margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; height: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><br></p><div class=\"pgc-img\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><img src=\"https://p9.toutiaoimg.com/img/pgc-image/3de12d487ac245178926c184df5596a8~tplv-tt-shrink:640:0.image\" img_width=\"1200\" img_height=\"799\" image_type=\"1\" mime_type=\"image/jpeg\" class=\"syl-page-img\" style=\"margin: 0px auto 8px; padding: 0px; max-width: 100%; display: block; height: auto;\"><p class=\"pgc-img-caption\" style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px;\"></p></div><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\"><br>现在，我无法去拒绝跑步，时间一到，它便在我内心蠢蠢欲动，频繁招手。这是一个习惯，耗时多年培养的一个习惯。</p>,', '任何一种进步都足以让自己变得更自信!', null, '2021-06-25 10:38:22', null, null, 'meiwen_2021062501', null, null, '1');
INSERT INTO `random_article` VALUES ('15', '<p></p><p></p><ul></ul><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><ul></ul></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><ul></ul></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><ul></ul></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><ul></ul></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><ul></ul></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><ul></ul></span><p></p><p style=\"text-align: center;\"><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><b>一个人的内心世界一定要丰满</b></span></p><p style=\"text-align: center;\"><b><span style=\"font-size: 14px;\">即使现实生活不随人愿</span></b></p><p style=\"text-align: center;\"><b><span style=\"font-size: 14px;\">也要有勇气舍得去开怀大笑</span></b></p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\"><b><span style=\"font-size: 14px;\">这个夏天</span></b></p><p style=\"text-align: center;\"><b><span style=\"font-size: 14px;\">我的肤色大可以再晒得黑一些</span></b></p><p style=\"text-align: center;\"><b><span style=\"font-size: 14px;\">这样尽可搭得上我的年纪</span></b></p><p style=\"text-align: center;\"><b><span style=\"font-size: 14px;\">尽可和成熟靠的近一些</span></b></p>,', '夏天', null, '2021-06-25 10:42:55', null, '2021-06-25 10:45:09', 'xiatian_20210625', null, null, '6');
INSERT INTO `random_article` VALUES ('16', '<p></p><div style=\"text-align: center;\"><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\">世间最美不过阳光和清风</span></div><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">我一想到它们</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">便心海荡漾</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">阳光灿烂，春风拂面</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">这是去哪都愿意带着的美好愿景</div><div style=\"text-align: center;\"><br></div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">想啊</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">绿树怀抱中的一块大草坪</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">东边一道缺口供养清风</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">阳光则无处不在</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">我们躺在绿油油的草地上</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">闭眼呼吸</div></span><span style=\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\"><div style=\"text-align: center;\">尽情欢畅</div></span><p></p>,', '最美', null, '2021-06-25 10:44:51', null, '2021-06-25 10:45:19', 'shige_2021', null, null, '6');
INSERT INTO `random_article` VALUES ('17', '<div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u><b>家</b></u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u><b><br></b></u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>小时候</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>爸爸回来，家在乡村</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>长大后</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>爸爸回来，家在城里</u></span></div><div style=\"text-align: center;\"><u><br></u></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>小时候</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>爸妈在的地方是家</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>长大后</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>我在的地方成了家</u></span></div><div style=\"text-align: center;\"><u><br></u></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>父母的迁就</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>让亲情和爱长在了一起</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>家</u></span></div><div style=\"text-align: center;\"><span style=\"font-size: 14px;\"><u>是幸福温柔生长的地方</u></span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: right;\">2021-06-25</div>,', '家，爸爸从北京回来随感', null, '2021-06-25 11:05:07', null, '2021-06-25 11:08:01', 'suigan_2021062502', null, null, '6');

-- ----------------------------
-- Table structure for random_pic
-- ----------------------------
DROP TABLE IF EXISTS `random_pic`;
CREATE TABLE `random_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `pic_url` varchar(128) DEFAULT NULL,
  `service_url` varchar(128) DEFAULT NULL,
  `upload_url` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `picshow` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of random_pic
-- ----------------------------
INSERT INTO `random_pic` VALUES ('1', 'pic_00000001', '/profile/random/2021/03/10/a70d32dd-24c7-4042-acf2-7ef9364bec55.jpg', null, null, 'IMG_20200321_112701.jpg', '2', null, '2021-03-09 23:40:26', null, '2021-03-10 15:35:53', '世间美好环环相扣2');
INSERT INTO `random_pic` VALUES ('2', 'pic_000020210322', '/profile/random/2021/03/22/7c75494a-e754-4db9-9f67-b8de253bdf94.jpg', null, null, 'IMG_20201220_164112.jpg', '1', null, '2021-03-22 17:48:24', null, null, '河山大好');
INSERT INTO `random_pic` VALUES ('3', 'pic_2122212', '/profile/random/2021/03/23/4b2ec619-b340-4382-8808-519c65fc8356.jpg', null, null, 'IMG_20200315_172646.jpg', '1', null, '2021-03-23 10:32:11', null, null, '油菜花');
INSERT INTO `random_pic` VALUES ('4', 'pic_00000001212', '/profile/random/2021/03/23/63d8b879-6aff-4b3a-8336-a9bc55cc72aa.jpg', null, null, 'IMG_20200315_173239.jpg', '1', null, '2021-03-23 10:32:34', null, null, 'qiao');
INSERT INTO `random_pic` VALUES ('5', 'pic_0000000233', '/profile/random/2021/03/23/1015bf09-7f51-41ee-bbdb-4416df5c3c96.jpg', null, null, 'IMG_20200317_175115.jpg', '1', null, '2021-03-23 10:32:53', null, null, '市民服务中心');
INSERT INTO `random_pic` VALUES ('6', 'pic_00000000987', '/profile/random/2021/03/23/95125a14-0727-4c6c-8dd3-32b37c9b7d2a.jpg', null, null, 'IMG_20200320_163446.jpg', '1', null, '2021-03-23 10:33:12', null, null, '桃花盛开');
INSERT INTO `random_pic` VALUES ('7', 'pic_0000000ll', '/profile/random/2021/03/23/eb53dd76-3b99-41c9-a6b3-35af6a8bee5a.jpg', null, null, 'IMG_20200321_112622.jpg', '2', null, '2021-03-23 10:33:36', null, null, '美人儿');
INSERT INTO `random_pic` VALUES ('8', 'pic_0000000333456', '/profile/random/2021/03/23/6f63389c-1c93-4b98-a01f-9c53429b3af8.jpg', null, null, 'IMG_20200321_113304.jpg', '2', null, '2021-03-23 10:33:57', null, null, '花仙子');
INSERT INTO `random_pic` VALUES ('9', 'pic_0000000111111', '/profile/random/2021/03/23/09da7056-7a51-4aa1-908c-8a0954924b95.jpg', null, null, 'IMG_20200321_113905.jpg', '1', null, '2021-03-23 10:34:15', null, null, '花海');
INSERT INTO `random_pic` VALUES ('10', 'wcb_0000000134222', '/profile/random/2021/03/23/1c917059-9b76-45ad-bbd2-a32b75ef95f5.jpg', null, null, 'IMG_20200418_105903.jpg', '1', null, '2021-03-23 10:35:12', null, null, '天门山');
INSERT INTO `random_pic` VALUES ('11', 'pic_000000011111', '/profile/random/2021/03/23/52a5b4a1-7a6b-470e-a792-8daad367c5df.jpg', null, null, 'IMG_20200418_113552_1.jpg', '1', null, '2021-03-23 10:35:31', null, null, '爱心');
INSERT INTO `random_pic` VALUES ('12', 'wcb_00000001001', '/profile/random/2021/03/23/90f55896-f936-45aa-ae40-622dfa78bf68.jpg', null, null, 'IMG_20200418_113558.jpg', '1', null, '2021-03-23 10:35:45', null, null, '爱心');
INSERT INTO `random_pic` VALUES ('13', 'pic_000000011123', '/profile/random/2021/03/23/b24bd6f2-4300-4dd8-9dcb-e9c14ed52c60.jpg', null, null, 'IMG_20200502_103649.jpg', '1', null, '2021-03-23 10:36:02', null, null, '宣州');
INSERT INTO `random_pic` VALUES ('14', 'wcb_000000012222', '/profile/random/2021/03/23/e4660774-36fb-46c4-8204-aa588fe00934.jpg', null, null, 'IMG_20200502_163844.jpg', '1', null, '2021-03-23 10:36:26', null, null, '太阳');
INSERT INTO `random_pic` VALUES ('15', 'pic_00000001000011', '/profile/random/2021/03/23/adf642cd-eacc-42f3-b89e-d44329953f7a.jpg', null, null, 'IMG_20200606_095542.jpg', '1', null, '2021-03-23 10:36:50', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('16', 'pic_00000001122323', '/profile/random/2021/03/23/741b6240-cf2d-41ed-9959-850562607613.jpg', null, null, 'IMG_20200606_095711.jpg', '1', null, '2021-03-23 10:37:07', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('17', 'pic_0000000112212', '/profile/random/2021/03/23/9ebe4c92-d36b-4041-bbb1-21508f81fd16.jpg', null, null, 'IMG_20200606_095713.jpg', '1', null, '2021-03-23 10:37:22', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('18', 'pic_00000001121212', '/profile/random/2021/03/23/cfbdb337-9e8c-44c7-962c-7ee8e00fd028.jpg', null, null, 'IMG_20200606_095714.jpg', '1', null, '2021-03-23 10:37:35', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('19', 'pic_000000011111', '/profile/random/2021/03/23/8a0e7d0d-0647-46a6-a3d3-a8f6d48555ff.jpg', null, null, 'IMG_20200606_095720.jpg', '1', null, '2021-03-23 10:37:48', null, null, '是u丽江玩');
INSERT INTO `random_pic` VALUES ('20', 'pic_000000034', '/profile/random/2021/03/23/f8df657e-5005-4919-a995-dcd6233baa8b.jpg', null, null, 'IMG_20200606_095728.jpg', '2', null, '2021-03-23 10:38:07', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('21', 'pic_000000061212', '/profile/random/2021/03/23/9bc37533-a200-4b89-bc92-66bd75533bb8.jpg', null, null, 'IMG_20200606_101416.jpg', '2', null, '2021-03-23 10:38:25', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('22', 'pic_00000001111123', '/profile/random/2021/03/23/4dab1eff-d48b-4b85-b70b-b0fcf433735a.jpg', null, null, 'IMG_20200606_101536.jpg', '2', null, '2021-03-23 10:38:44', null, null, '十里江湾');
INSERT INTO `random_pic` VALUES ('23', 'pic_000001111', '/profile/random/2021/03/23/c32ce175-0acf-4f32-a945-ca024169ecc0.jpg', null, null, 'IMG_20201031_160824.jpg', '1', null, '2021-03-23 10:39:04', null, null, '秋菊');
INSERT INTO `random_pic` VALUES ('24', 'pic_00000001', '/profile/random/2021/03/23/41c3b740-3b13-42bc-965f-d2d65282dbb9.jpg', null, null, 'IMG_20201031_162215.jpg', '1', null, '2021-03-23 10:39:26', null, null, '红枫');
INSERT INTO `random_pic` VALUES ('25', 'pic_00000001323323', '/profile/random/2021/03/23/89f3057e-f5c1-4dae-8bd4-5389b7dbb1de.jpg', null, null, 'IMG_20201031_163539.jpg', '1', null, '2021-03-23 10:40:03', null, null, '鸠zi古镇');
INSERT INTO `random_pic` VALUES ('26', 'lzhw_000000001', '/profile/random/2021/04/19/a49b7980-b1fd-4b6a-9500-7e18d6c24b59.jpeg', null, null, '279759ee3d6d55fb407d2f8617f1124221a4dd37.jpeg', '5', null, '2021-04-19 10:30:45', null, null, '中科院一博士走红论文节选-致谢');
INSERT INTO `random_pic` VALUES ('27', 'wxq_0000000001', '/profile/random/2021/08/09/85057b90-dda3-4e2c-a0d3-2badbda18198.jpg', null, null, 'IMG_20210806_121808.jpg', '6', null, '2021-08-09 11:31:24', null, '2021-08-09 11:33:31', '汪学芊');

-- ----------------------------
-- Table structure for random_text
-- ----------------------------
DROP TABLE IF EXISTS `random_text`;
CREATE TABLE `random_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `content` varchar(128) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `c_type` char(1) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of random_text
-- ----------------------------
INSERT INTO `random_text` VALUES ('3', 'wcb_00000001', '时间总在向前跑，我们也向前赶路。通往明亮的道途总会坎坷，光明总会来之不易，但她会冲破艰难险阻，她会拨开云雾，携着万千光彩与你相遇！', '1', '1', null, null, '2021-03-09 17:10:50', null, '2021-03-23 11:16:18');
INSERT INTO `random_text` VALUES ('5', 'text_20210322', '一张图片一句话，一个心情走天下', '1', '3', null, null, '2021-03-22 16:55:16', null, null);
INSERT INTO `random_text` VALUES ('6', 'text_000020210323', '知足长乐地含义就是：花更小地代价获取同等的快乐，今天，你做到了吗？', '1', '3', null, null, '2021-03-23 10:16:19', null, '2021-03-23 10:17:07');
INSERT INTO `random_text` VALUES ('7', 'text_0000001111', '这个世界已经发展到不管事情对错，只要多数人在做，那么你就可以理所当然地去做', '1', '2', null, null, '2021-03-23 10:41:31', null, null);
INSERT INTO `random_text` VALUES ('8', 'text_0000123456', '人真是奇怪，你说爱她吧，却连怎么认识的她也不记得了', '1', '2', null, null, '2021-03-23 10:43:29', null, null);
INSERT INTO `random_text` VALUES ('9', 'text_03i12032312', '好好生活，今天的世界并不太平 \r\n除了人类社会可能制造的冲突 \r\n还要警惕自然灾害 ', '1', '3', null, null, '2021-03-23 10:44:28', null, '2021-03-23 10:45:34');
INSERT INTO `random_text` VALUES ('10', 'text_mh00001', '人一生要经历很多事情  惊喜和幸福能占到大多数  生活就很完满了', '1', '3', null, null, '2021-03-23 10:47:00', null, null);
INSERT INTO `random_text` VALUES ('11', 'text_00000012345', '脑子不好使的人，往往要在万家灯火亮起地时候多熬几个钟', '1', '1', null, null, '2021-03-23 10:48:13', null, null);
INSERT INTO `random_text` VALUES ('12', 'text_0000121323', '我一人在冬夜，借着瘦身和健康的名义，思考些不着边际地问题', '1', '2', null, null, '2021-03-23 10:49:17', null, null);
INSERT INTO `random_text` VALUES ('13', 'text_0000123456732', '这冷是到了一种什么程度呢？你骑车停下来的时候，双腿就缓缓地有暖意了', '1', '2', null, null, '2021-03-23 10:50:56', null, null);
INSERT INTO `random_text` VALUES ('14', 'text_131323223', '劳动能给人身体温暖，同样的，内心也会充实、充满阳光。这是劳动人民自己给自己地阳光。', '1', '3', null, null, '2021-03-23 10:52:28', null, null);
INSERT INTO `random_text` VALUES ('15', 'text_1312323', '路不会因为你穿着华丽而变得好走    但会因为你邋里邋遢而变得更加艰难', '1', '1', null, null, '2021-03-23 11:00:21', null, null);
INSERT INTO `random_text` VALUES ('16', 'pic_000000011212', '家的感觉就是，不管你回来的多么晚，都会有人在等你回来', '1', '3', null, null, '2021-03-23 11:01:32', null, null);
INSERT INTO `random_text` VALUES ('17', 'text_1313132', '想地都是假的，只有脚下的路才是真的', '1', '2', null, null, '2021-03-23 11:03:57', null, null);
INSERT INTO `random_text` VALUES ('18', 'text_000012', '春日的下午，阳光暖暖的，阳台上光线明亮，微风飘动着衣裳，闭上眼，光芒把眼皮映得红艳艳，仿佛心都跟着明亮起来了', '1', '3', null, null, '2021-03-23 11:08:28', null, null);
INSERT INTO `random_text` VALUES ('19', 'pic_000000011212', '今天的夕阳又大又圆，像大地上无数遥望的目光汇聚成的希冀  散发光芒万丈', '1', '3', null, null, '2021-03-23 11:11:59', null, '2021-03-23 11:12:54');
INSERT INTO `random_text` VALUES ('20', 'suyuan_20210402_mimang', '2021年4月2日  阴  \r\n需要谅解的一天。', '1', '2', null, null, '2021-04-02 22:46:39', null, '2021-04-03 20:54:48');
INSERT INTO `random_text` VALUES ('21', 'lizhi_20210625', '任何一种进步都足以让自己变得更自信。', '1', '1', null, null, '2021-06-25 10:36:31', null, null);
INSERT INTO `random_text` VALUES ('22', 'meihao_2021062501', '人除了要积极主动，还要学会承受力所能及的疼痛。', '1', '3', null, null, '2021-06-25 10:37:12', null, null);

-- ----------------------------
-- Table structure for sign_habit
-- ----------------------------
DROP TABLE IF EXISTS `sign_habit`;
CREATE TABLE `sign_habit` (
  `habit_id` int(4) NOT NULL AUTO_INCREMENT,
  `habit_name` varchar(64) NOT NULL COMMENT '习惯名称',
  `habit_desc` varchar(225) DEFAULT NULL COMMENT '习惯描述',
  `habit_hot` int(11) DEFAULT NULL COMMENT '习惯热度',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`habit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign_habit
-- ----------------------------
INSERT INTO `sign_habit` VALUES ('1', '跑步', '健身的一种方式', '4', '2022-04-29 00:06:56', null, '2022-05-08 21:12:16', null);
INSERT INTO `sign_habit` VALUES ('3', '写作', '小说、散文创作 ', '1', '2022-04-29 00:23:30', '1', '2022-05-08 22:18:32', null);
INSERT INTO `sign_habit` VALUES ('5', '读书', '文学爱好', '1', '2022-04-29 13:34:39', '1', '2022-05-08 21:12:16', null);
INSERT INTO `sign_habit` VALUES ('6', '个人网站', '编码个人媒体网站', '1', '2022-04-29 22:49:46', '1', '2022-10-10 21:00:00', null);
INSERT INTO `sign_habit` VALUES ('7', '游戏', '娱乐休闲', '2', '2022-04-30 11:14:49', '1', '2022-10-10 21:00:00', null);

-- ----------------------------
-- Table structure for sign_list
-- ----------------------------
DROP TABLE IF EXISTS `sign_list`;
CREATE TABLE `sign_list` (
  `sign_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL COMMENT '关联sign_record表id',
  `habit_id` int(11) NOT NULL COMMENT '关联sign_habit表id',
  `sign_duration_hour` int(4) NOT NULL COMMENT '打卡小时数',
  `sign_duration_minute` int(4) NOT NULL COMMENT '打卡分钟数',
  `sign_experience` varchar(225) DEFAULT NULL COMMENT '打卡心得',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `habit_name` varchar(64) NOT NULL,
  PRIMARY KEY (`sign_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign_list
-- ----------------------------
INSERT INTO `sign_list` VALUES ('17', '7', '1', '0', '43', '找感觉中', '2022-05-04 19:34:48', '2022-05-04 20:20:48', '跑步');
INSERT INTO `sign_list` VALUES ('18', '7', '7', '1', '30', '颓废', '2022-05-04 10:18:56', '2022-05-04 11:48:56', '游戏');
INSERT INTO `sign_list` VALUES ('19', '8', '1', '0', '38', '找节奏中', '2022-05-05 19:57:30', '2022-05-05 20:35:30', '跑步');
INSERT INTO `sign_list` VALUES ('20', '9', '1', '0', '56', '满意', '2022-05-08 21:10:04', '2022-05-08 21:10:08', '跑步');
INSERT INTO `sign_list` VALUES ('21', '9', '5', '0', '45', '1', '2022-05-08 15:11:19', '2022-05-08 16:01:33', '读书');
INSERT INTO `sign_list` VALUES ('22', '9', '3', '1', '5', '1', '2022-04-27 01:01:04', '2022-04-28 02:02:05', '写作');
INSERT INTO `sign_list` VALUES ('23', '10', '6', '2', '30', '奋斗', '2022-10-10 08:10:51', '2022-10-10 08:50:51', '个人网站');
INSERT INTO `sign_list` VALUES ('24', '10', '7', '1', '20', '奋斗', '2022-10-10 21:13:51', '2022-10-10 21:17:51', '游戏');

-- ----------------------------
-- Table structure for sign_record
-- ----------------------------
DROP TABLE IF EXISTS `sign_record`;
CREATE TABLE `sign_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_date` datetime DEFAULT NULL COMMENT '签到日期',
  `sign_desc` varchar(225) DEFAULT NULL COMMENT '签到描述',
  `sign_user` varchar(32) NOT NULL,
  `sign_time` datetime NOT NULL COMMENT '签到时间',
  `last_time` datetime DEFAULT NULL COMMENT '最后一次编辑时间',
  `sign_experience` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign_record
-- ----------------------------
INSERT INTO `sign_record` VALUES ('7', '2022-05-04 00:00:00', '正式打卡第一天，五四青年节', 'suyuan', '2022-05-04 20:33:08', '2022-05-04 20:33:08', '做有志青年');
INSERT INTO `sign_record` VALUES ('8', '2022-05-05 00:00:00', '新公司报道', 'suyuan', '2022-05-05 22:20:41', '2022-05-05 22:20:41', '不加班很好');
INSERT INTO `sign_record` VALUES ('9', '2022-05-08 00:00:00', '不太愉快的假期', 'suyuan', '2022-05-08 21:07:23', '2022-05-08 21:07:23', '1');
INSERT INTO `sign_record` VALUES ('10', '2022-10-10 00:00:00', '新需求开发', 'suyuan', '2022-10-10 09:10:09', '2022-10-10 09:10:09', '奋斗');

-- ----------------------------
-- Table structure for sports_activity
-- ----------------------------
DROP TABLE IF EXISTS `sports_activity`;
CREATE TABLE `sports_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(11) DEFAULT NULL COMMENT '圈子编号',
  `name` varchar(64) DEFAULT NULL COMMENT '圈子名称',
  `introduction` varchar(128) DEFAULT NULL COMMENT '圈子简介',
  `person_number` int(4) DEFAULT NULL COMMENT '圈子人数',
  `picUrl` varchar(128) DEFAULT NULL COMMENT '头像地址',
  `address` varchar(64) DEFAULT NULL COMMENT '圈子总地址',
  `slogan` varchar(64) DEFAULT NULL COMMENT '圈子口号',
  `createTime` date DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT '',
  `type` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sports_activity
-- ----------------------------

-- ----------------------------
-- Table structure for sports_activity_member
-- ----------------------------
DROP TABLE IF EXISTS `sports_activity_member`;
CREATE TABLE `sports_activity_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` varchar(32) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `nike_name` varchar(64) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `hobby` varchar(64) DEFAULT NULL,
  `picUrl` varchar(128) DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sports_activity_member
-- ----------------------------

-- ----------------------------
-- Table structure for sports_circle
-- ----------------------------
DROP TABLE IF EXISTS `sports_circle`;
CREATE TABLE `sports_circle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(11) DEFAULT NULL COMMENT '圈子编号',
  `name` varchar(64) DEFAULT NULL COMMENT '圈子名称',
  `introduction` varchar(128) DEFAULT NULL COMMENT '圈子简介',
  `person_number` int(4) DEFAULT NULL COMMENT '圈子人数',
  `picUrl` varchar(128) DEFAULT NULL COMMENT '头像地址',
  `address` varchar(64) DEFAULT NULL COMMENT '圈子总地址',
  `slogan` varchar(64) DEFAULT NULL COMMENT '圈子口号',
  `createTime` date DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `leader` varchar(32) DEFAULT NULL COMMENT '负责人 管理员',
  `leader_id` int(11) DEFAULT NULL COMMENT '负责人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sports_circle
-- ----------------------------

-- ----------------------------
-- Table structure for sports_circle_member
-- ----------------------------
DROP TABLE IF EXISTS `sports_circle_member`;
CREATE TABLE `sports_circle_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `circle_id` varchar(32) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `nike_name` varchar(64) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `hobby` varchar(64) DEFAULT NULL,
  `picUrl` varchar(128) DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sports_circle_member
-- ----------------------------

-- ----------------------------
-- Table structure for sports_running
-- ----------------------------
DROP TABLE IF EXISTS `sports_running`;
CREATE TABLE `sports_running` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(12) DEFAULT NULL COMMENT '编号',
  `name` varchar(32) DEFAULT NULL COMMENT '跑步团名称',
  `introduction` varchar(256) DEFAULT NULL COMMENT '跑步团简介',
  `person_number` int(11) DEFAULT NULL COMMENT '成员总数',
  `city` varchar(64) DEFAULT NULL COMMENT '跑步团所在城市',
  `address` varchar(64) DEFAULT NULL COMMENT '跑步团所在城市具体地点（地标如公园）',
  `mileage` char(1) DEFAULT NULL COMMENT '类型 5公里 10公里',
  `type` char(1) DEFAULT NULL COMMENT '1 成员只能个人  2 成员只能圈子  3 成员既可以有个人也可以有圈子',
  `picUrl` varchar(128) DEFAULT NULL COMMENT '跑步团头像地址',
  `scale` char(1) DEFAULT NULL COMMENT '人数规模：10人 20人 50人 100人 200人 500人 1000人等等',
  `serviceUrl` varchar(128) DEFAULT NULL COMMENT '跑步团头像存储服务器地址',
  `ranking` int(4) DEFAULT NULL COMMENT '排名',
  `totalMileage` double(12,0) DEFAULT NULL COMMENT '跑步总里程',
  `totalTime` double(12,0) DEFAULT NULL COMMENT '跑步总时长',
  `totalActivity` int(4) DEFAULT NULL COMMENT '发起加入活动总数',
  `createTime` date DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sports_running
-- ----------------------------

-- ----------------------------
-- Table structure for sports_running_member
-- ----------------------------
DROP TABLE IF EXISTS `sports_running_member`;
CREATE TABLE `sports_running_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(1) DEFAULT '' COMMENT '1 个人  2 圈子',
  `memberId` varchar(32) DEFAULT NULL COMMENT '成员编号',
  `name` varchar(32) DEFAULT NULL COMMENT '成员姓名',
  `idCard` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `age` int(4) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `hobby` varchar(64) DEFAULT NULL COMMENT '爱好 特长',
  `picUrl` varchar(128) DEFAULT NULL,
  `nike_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sports_running_member
-- ----------------------------

-- ----------------------------
-- Table structure for study_books
-- ----------------------------
DROP TABLE IF EXISTS `study_books`;
CREATE TABLE `study_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_books
-- ----------------------------

-- ----------------------------
-- Table structure for study_circle
-- ----------------------------
DROP TABLE IF EXISTS `study_circle`;
CREATE TABLE `study_circle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书吧 圈子',
  `number` varchar(24) DEFAULT NULL COMMENT '圈子编号',
  `name` varchar(64) DEFAULT NULL COMMENT '圈子名称',
  `introduction` varchar(128) DEFAULT NULL COMMENT '圈子简介',
  `person_number` int(4) DEFAULT NULL COMMENT '圈子人数',
  `picUrl` varchar(128) DEFAULT NULL COMMENT '头像地址',
  `address` varchar(64) DEFAULT NULL COMMENT '圈子总地址',
  `slogan` varchar(64) DEFAULT NULL COMMENT '圈子口号',
  `createTime` date DEFAULT NULL,
  `createBy` varchar(32) DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateBy` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `delflag` char(1) DEFAULT NULL,
  `main_id` int(11) DEFAULT NULL COMMENT '关联study_main表',
  `leader` varchar(32) DEFAULT NULL COMMENT '负责人',
  `leader_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_circle
-- ----------------------------
INSERT INTO `study_circle` VALUES ('2', 'circle_00000002', '测试圈子2成员', '都好 一切安好', '12', null, '芜湖鸠江东紫园', '都好 一切安好', '2021-08-01', null, '2021-08-01', null, '都好 一切安好', null, null, '汪曾兵', null);

-- ----------------------------
-- Table structure for study_experience
-- ----------------------------
DROP TABLE IF EXISTS `study_experience`;
CREATE TABLE `study_experience` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_experience
-- ----------------------------

-- ----------------------------
-- Table structure for study_main
-- ----------------------------
DROP TABLE IF EXISTS `study_main`;
CREATE TABLE `study_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书吧主表 主键ID',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `type` char(1) DEFAULT NULL COMMENT '1 单位   2 个人',
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `host_msg` varchar(128) DEFAULT NULL COMMENT '主人寄语',
  `recommend_books` varchar(64) DEFAULT NULL COMMENT '推荐书籍',
  `phone` varchar(12) DEFAULT NULL COMMENT '手机号',
  `email` varchar(24) DEFAULT NULL COMMENT 'email',
  `status` char(1) DEFAULT NULL COMMENT '状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识（0代表存在 2代表删除）',
  `leader` varchar(32) DEFAULT NULL COMMENT '负责人',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者id',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_by` int(11) DEFAULT NULL COMMENT '更新者id',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  `picUrl` varchar(128) DEFAULT NULL COMMENT '头像地址',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `number` varchar(16) DEFAULT NULL COMMENT '编号',
  `introduction` varchar(128) DEFAULT NULL COMMENT '简要说明',
  `leader_id` int(11) DEFAULT NULL COMMENT '负责人ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_main
-- ----------------------------
INSERT INTO `study_main` VALUES ('1', '测试我的书吧', '2', '芜湖鸠江区东紫园', '好的  一切安好', '后青春式眷恋', '13093692146', '1396627527@qq.com', '0', null, '汪曾兵', null, '2021-08-01', null, '2021-08-01', null, '好的 一切安好', '0000000001', '好的 一切安好', null);
INSERT INTO `study_main` VALUES ('2', '测试我的书房', '1', '芜湖东紫园32栋1单元602', '好的  一切安好', '后青春式眷恋', '13093692146', '1396627527@qq.com', '0', null, '汪曾兵', null, '2021-08-01', null, '2021-08-01', null, '好的  一切安好', '0000000002', '好的  一切安好', null);

-- ----------------------------
-- Table structure for study_member
-- ----------------------------
DROP TABLE IF EXISTS `study_member`;
CREATE TABLE `study_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `circle_flag` char(1) NOT NULL COMMENT '是否圈子成员',
  `circle_id` int(11) DEFAULT NULL COMMENT '圈子ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_member
-- ----------------------------

-- ----------------------------
-- Table structure for study_site
-- ----------------------------
DROP TABLE IF EXISTS `study_site`;
CREATE TABLE `study_site` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_site
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-03-04 17:11:08', '', null, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '学芊科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-04 17:11:08', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-03-04 17:11:08', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-03-04 17:11:08', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('30', '1', '精句', '1', 'text_type', '', 'primary', 'Y', '0', 'admin', '2021-03-08 16:48:53', 'admin', '2021-03-08 16:49:16', '');
INSERT INTO `sys_dict_data` VALUES ('31', '2', '美文', '2', 'text_type', '', 'success', 'Y', '0', 'admin', '2021-03-08 16:49:08', 'admin', '2021-03-08 16:49:26', '');
INSERT INTO `sys_dict_data` VALUES ('32', '1', '励志', '1', 'mood_type', null, 'primary', 'Y', '0', 'admin', '2021-03-08 16:52:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('33', '2', '忧郁', '2', 'mood_type', null, 'warning', 'Y', '0', 'admin', '2021-03-08 16:53:01', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('34', '3', '美好', '3', 'mood_type', null, 'success', 'Y', '0', 'admin', '2021-03-08 16:53:27', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('35', '1', '河山大好', '1', 'pic_type', null, 'primary', 'Y', '0', 'admin', '2021-03-09 17:39:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('36', '2', '美人儿', '2', 'pic_type', null, 'success', 'Y', '0', 'admin', '2021-03-09 17:40:26', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('37', '3', '街道风光', '3', 'pic_type', null, 'info', 'Y', '0', 'admin', '2021-03-09 17:40:48', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('38', '4', '城市全景', '4', 'pic_type', null, 'info', 'Y', '0', 'admin', '2021-03-09 17:41:09', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('39', '1', '跑步运动', '1', 'article_type', null, 'primary', 'Y', '0', 'suyuan', '2021-04-05 20:48:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('40', '2', '旅途风光', '2', 'article_type', null, 'success', 'Y', '0', 'suyuan', '2021-04-05 20:48:42', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '3', '心灵之声', '3', 'article_type', null, 'info', 'Y', '0', 'suyuan', '2021-04-05 20:49:18', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '4', '美好生活', '4', 'article_type', null, 'success', 'Y', '0', 'suyuan', '2021-04-05 20:50:13', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('43', '5', '未来畅想', '5', 'article_type', null, 'info', 'Y', '0', 'suyuan', '2021-04-05 20:50:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('44', '5', '励志好文', '5', 'pic_type', null, 'success', 'Y', '0', 'suyuan', '2021-04-19 10:29:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('45', '2', '3公里跑', '2', 'running_distance', '', 'primary', 'Y', '0', 'suyuan', '2021-05-13 21:39:16', 'suyuan', '2021-05-13 21:43:39', '');
INSERT INTO `sys_dict_data` VALUES ('46', '3', '5公里跑', '3', 'running_distance', '', 'primary', 'Y', '0', 'suyuan', '2021-05-13 21:39:38', 'suyuan', '2021-05-13 21:43:46', '');
INSERT INTO `sys_dict_data` VALUES ('47', '4', '8公里跑', '4', 'running_distance', '', 'success', 'Y', '0', 'suyuan', '2021-05-13 21:40:05', 'suyuan', '2021-05-13 21:43:50', '');
INSERT INTO `sys_dict_data` VALUES ('48', '5', '10公里跑', '5', 'running_distance', '', 'success', 'Y', '0', 'suyuan', '2021-05-13 21:40:30', 'suyuan', '2021-05-13 21:44:07', '');
INSERT INTO `sys_dict_data` VALUES ('49', '6', '15公里跑', '6', 'running_distance', '', 'warning', 'Y', '0', 'suyuan', '2021-05-13 21:41:13', 'suyuan', '2021-05-13 21:44:11', '');
INSERT INTO `sys_dict_data` VALUES ('50', '1', '1公里跑', '1', 'running_distance', null, 'info', 'Y', '0', 'suyuan', '2021-05-13 21:43:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('51', '1', '个人成员', '1', 'member_type', null, 'primary', 'Y', '0', 'suyuan', '2021-05-13 21:49:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('52', '2', '圈子成员', '2', 'member_type', null, 'success', 'Y', '0', 'suyuan', '2021-05-13 21:49:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('53', '3', '个人/圈子成员', '3', 'member_type', null, 'info', 'Y', '0', 'suyuan', '2021-05-13 21:50:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('54', '1', '10人内', '1', 'member_scale', '', 'info', 'Y', '0', 'suyuan', '2021-05-13 21:51:42', 'suyuan', '2021-05-13 21:52:47', '');
INSERT INTO `sys_dict_data` VALUES ('55', '2', '10-20人', '2', 'member_scale', '', 'info', 'Y', '0', 'suyuan', '2021-05-13 21:51:56', 'suyuan', '2021-05-13 21:52:41', '');
INSERT INTO `sys_dict_data` VALUES ('56', '3', '20-50人', '3', 'member_scale', '', 'primary', 'Y', '0', 'suyuan', '2021-05-13 21:52:07', 'suyuan', '2021-05-13 21:52:34', '');
INSERT INTO `sys_dict_data` VALUES ('57', '4', '50-100人', '4', 'member_scale', '', 'primary', 'Y', '0', 'suyuan', '2021-05-13 21:52:27', 'suyuan', '2021-05-13 21:53:48', '');
INSERT INTO `sys_dict_data` VALUES ('58', '5', '100-500人', '5', 'member_scale', null, 'success', 'Y', '0', 'suyuan', '2021-05-13 21:53:20', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('59', '6', '500人以上', '6', 'member_scale', null, 'success', 'Y', '0', 'suyuan', '2021-05-13 21:53:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('60', '6', '现代诗歌', '6', 'article_type', null, 'success', 'Y', '0', 'suyuan', '2021-06-25 10:41:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('61', '1', '个人', '1', 'study_type', null, 'primary', 'Y', '0', 'suyuan', '2021-08-01 10:18:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('62', '2', '单位', '2', 'study_type', null, 'success', 'Y', '0', 'suyuan', '2021-08-01 10:18:23', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('63', '6', '人物', '6', 'pic_type', '', 'primary', 'Y', '0', 'suyuan', '2021-08-09 11:32:43', 'suyuan', '2021-08-09 11:32:53', '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-03-04 17:11:08', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-03-04 17:11:08', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-03-04 17:11:08', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-03-04 17:11:08', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-03-04 17:11:08', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-03-04 17:11:08', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-03-04 17:11:08', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-03-04 17:11:08', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-03-04 17:11:08', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-03-04 17:11:08', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '文本类别', 'text_type', '0', 'admin', '2021-03-08 16:48:02', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('12', '驿站类别', 'mood_type', '0', 'admin', '2021-03-08 16:52:01', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('13', '美图分类', 'pic_type', '0', 'admin', '2021-03-09 17:39:00', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('14', '文章类型', 'article_type', '0', 'suyuan', '2021-04-05 20:47:43', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('15', '跑程分类', 'running_distance', '0', 'suyuan', '2021-05-13 21:38:23', 'suyuan', '2021-05-13 21:38:31', '跑步距离分类');
INSERT INTO `sys_dict_type` VALUES ('16', '成员类型', 'member_type', '0', 'suyuan', '2021-05-13 21:48:57', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('17', '成员规模', 'member_scale', '0', 'suyuan', '2021-05-13 21:51:05', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('18', '书吧类型', 'study_type', '0', 'suyuan', '2021-08-01 10:17:27', '', null, '个人 单位');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-04-28 21:09:07', '', null, '');
INSERT INTO `sys_job` VALUES ('4', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '0 0 */1 * * ?', '1', '1', '0', 'suyuan', '2022-04-30 15:25:26', 'suyuan', '2022-05-03 18:06:57', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：16毫秒', '0', '', '2022-05-04 20:37:06');
INSERT INTO `sys_job_log` VALUES ('2', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：26毫秒', '0', '', '2022-05-05 22:23:24');
INSERT INTO `sys_job_log` VALUES ('3', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：2毫秒', '0', '', '2022-05-05 22:24:29');
INSERT INTO `sys_job_log` VALUES ('4', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：2毫秒', '0', '', '2022-05-05 22:26:19');
INSERT INTO `sys_job_log` VALUES ('5', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：25毫秒', '0', '', '2022-05-08 21:12:16');
INSERT INTO `sys_job_log` VALUES ('6', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：22毫秒', '0', '', '2022-05-08 22:18:32');
INSERT INTO `sys_job_log` VALUES ('7', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：1毫秒', '0', '', '2022-05-08 22:18:53');
INSERT INTO `sys_job_log` VALUES ('8', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：56毫秒', '0', '', '2022-07-05 23:00:00');
INSERT INTO `sys_job_log` VALUES ('9', '习惯热度定时任务', 'SYSTEM', 'babitHotTask.babitHot()', '习惯热度定时任务 总共耗时：35毫秒', '0', '', '2022-10-10 21:00:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-04 17:11:30');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-04 17:14:57');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-04 17:32:25');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 14:58:46');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 15:06:17');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 15:07:51');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 16:02:10');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-08 16:06:07');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 16:06:10');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 16:47:03');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 16:56:40');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 17:03:11');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 17:05:08');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-08 17:06:00');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 14:32:05');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 14:43:11');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:16:06');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-09 15:20:22');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:20:26');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:29:10');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:29:56');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-09 15:39:26');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:39:29');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:40:54');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 15:59:24');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:03:26');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:05:24');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:09:50');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:11:42');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:13:37');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:16:35');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:19:07');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:23:19');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:31:33');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:34:34');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:42:02');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 16:51:53');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 17:01:11');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 17:09:53');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 17:36:51');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 17:50:14');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 18:41:46');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 19:24:56');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 19:39:46');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 19:43:30');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-09 21:57:07');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 21:57:14');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 21:59:40');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-09 22:01:54');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:01:57');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:03:26');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:13:05');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-09 22:13:32');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:13:35');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:13:59');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-09 22:15:48');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:15:52');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-09 22:16:26');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:16:30');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:16:58');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-09 22:18:00');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:18:38');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 22:28:20');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 23:08:03');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 23:30:49');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 23:35:50');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-09 23:39:15');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-10 11:14:57');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-10 14:48:08');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-10 15:19:37');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-10 15:22:53');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-10 16:16:08');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '1', '密码输入错误1次', '2021-03-10 17:30:09');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '1', '密码输入错误2次', '2021-03-10 17:30:12');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2021-03-10 17:30:18');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误4次', '2021-03-10 17:30:24');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-10 17:30:28');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-10 17:30:39');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-10 17:31:07');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-10 17:31:10');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-03-22 16:22:31');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-22 16:22:44');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-22 17:23:46');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-22 17:30:34');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-22 17:34:35');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-22 17:34:37');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-22 17:34:39');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-23 09:40:01');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-03-23 10:07:36');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-23 10:07:38');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-25 14:58:26');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-26 16:36:22');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-03-30 23:22:03');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:22:12');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:24:12');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-03-30 23:24:15');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:24:20');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:25:04');
INSERT INTO `sys_logininfor` VALUES ('198', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-03-30 23:25:17');
INSERT INTO `sys_logininfor` VALUES ('199', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-03-30 23:25:41');
INSERT INTO `sys_logininfor` VALUES ('200', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2021-03-30 23:25:53');
INSERT INTO `sys_logininfor` VALUES ('201', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误4次', '2021-03-30 23:26:03');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:27:02');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:37:07');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-03-30 23:37:27');
INSERT INTO `sys_logininfor` VALUES ('205', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:37:53');
INSERT INTO `sys_logininfor` VALUES ('206', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:38:01');
INSERT INTO `sys_logininfor` VALUES ('207', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:38:07');
INSERT INTO `sys_logininfor` VALUES ('208', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:39:21');
INSERT INTO `sys_logininfor` VALUES ('209', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:40:39');
INSERT INTO `sys_logininfor` VALUES ('210', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:40:46');
INSERT INTO `sys_logininfor` VALUES ('211', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:40:48');
INSERT INTO `sys_logininfor` VALUES ('212', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:40:56');
INSERT INTO `sys_logininfor` VALUES ('213', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-03-30 23:42:30');
INSERT INTO `sys_logininfor` VALUES ('214', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-30 23:42:55');
INSERT INTO `sys_logininfor` VALUES ('215', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-02 22:41:25');
INSERT INTO `sys_logininfor` VALUES ('216', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-02 22:42:25');
INSERT INTO `sys_logininfor` VALUES ('217', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-02 22:42:38');
INSERT INTO `sys_logininfor` VALUES ('218', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 09:35:35');
INSERT INTO `sys_logininfor` VALUES ('219', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 09:46:13');
INSERT INTO `sys_logininfor` VALUES ('220', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 10:21:55');
INSERT INTO `sys_logininfor` VALUES ('221', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 11:29:31');
INSERT INTO `sys_logininfor` VALUES ('222', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 11:39:12');
INSERT INTO `sys_logininfor` VALUES ('223', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 11:57:13');
INSERT INTO `sys_logininfor` VALUES ('224', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 11:59:22');
INSERT INTO `sys_logininfor` VALUES ('225', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 12:00:14');
INSERT INTO `sys_logininfor` VALUES ('226', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 12:10:19');
INSERT INTO `sys_logininfor` VALUES ('227', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 12:12:23');
INSERT INTO `sys_logininfor` VALUES ('228', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 12:16:41');
INSERT INTO `sys_logininfor` VALUES ('229', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 13:26:44');
INSERT INTO `sys_logininfor` VALUES ('230', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-04-03 13:50:27');
INSERT INTO `sys_logininfor` VALUES ('231', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 13:50:30');
INSERT INTO `sys_logininfor` VALUES ('232', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 14:36:13');
INSERT INTO `sys_logininfor` VALUES ('233', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 16:25:27');
INSERT INTO `sys_logininfor` VALUES ('234', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 16:45:42');
INSERT INTO `sys_logininfor` VALUES ('235', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-03 16:58:54');
INSERT INTO `sys_logininfor` VALUES ('236', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 16:40:23');
INSERT INTO `sys_logininfor` VALUES ('237', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 19:23:43');
INSERT INTO `sys_logininfor` VALUES ('238', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 19:26:14');
INSERT INTO `sys_logininfor` VALUES ('239', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-07 20:03:51');
INSERT INTO `sys_logininfor` VALUES ('240', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-04-07 20:03:55');
INSERT INTO `sys_logininfor` VALUES ('241', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 20:03:59');
INSERT INTO `sys_logininfor` VALUES ('242', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-07 20:05:51');
INSERT INTO `sys_logininfor` VALUES ('243', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 20:25:19');
INSERT INTO `sys_logininfor` VALUES ('244', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-07 20:25:31');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-04-07 20:25:39');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-04-07 20:43:57');
INSERT INTO `sys_logininfor` VALUES ('247', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-04-07 21:41:33');
INSERT INTO `sys_logininfor` VALUES ('248', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 21:41:36');
INSERT INTO `sys_logininfor` VALUES ('249', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 21:45:43');
INSERT INTO `sys_logininfor` VALUES ('250', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 23:37:01');
INSERT INTO `sys_logininfor` VALUES ('251', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 23:37:24');
INSERT INTO `sys_logininfor` VALUES ('252', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 23:40:45');
INSERT INTO `sys_logininfor` VALUES ('253', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-07 23:48:40');
INSERT INTO `sys_logininfor` VALUES ('254', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-08 11:25:56');
INSERT INTO `sys_logininfor` VALUES ('255', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-19 10:26:45');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-04-19 10:29:53');
INSERT INTO `sys_logininfor` VALUES ('257', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-04-19 10:29:58');
INSERT INTO `sys_logininfor` VALUES ('258', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-19 10:30:01');
INSERT INTO `sys_logininfor` VALUES ('259', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-04-22 11:14:00');
INSERT INTO `sys_logininfor` VALUES ('260', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-04-27 10:44:04');
INSERT INTO `sys_logininfor` VALUES ('261', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-04-27 10:46:43');
INSERT INTO `sys_logininfor` VALUES ('262', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-04-27 10:46:54');
INSERT INTO `sys_logininfor` VALUES ('263', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-04-27 10:46:58');
INSERT INTO `sys_logininfor` VALUES ('264', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-12 16:31:45');
INSERT INTO `sys_logininfor` VALUES ('265', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-13 17:47:11');
INSERT INTO `sys_logininfor` VALUES ('266', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-13 21:17:29');
INSERT INTO `sys_logininfor` VALUES ('267', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-25 09:28:08');
INSERT INTO `sys_logininfor` VALUES ('268', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-07-31 21:18:46');
INSERT INTO `sys_logininfor` VALUES ('269', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-07-31 21:18:50');
INSERT INTO `sys_logininfor` VALUES ('270', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-07-31 21:19:55');
INSERT INTO `sys_logininfor` VALUES ('271', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-08-01 09:06:15');
INSERT INTO `sys_logininfor` VALUES ('272', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-08-01 09:06:21');
INSERT INTO `sys_logininfor` VALUES ('273', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-08-09 11:28:33');
INSERT INTO `sys_logininfor` VALUES ('274', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-08-09 11:39:19');
INSERT INTO `sys_logininfor` VALUES ('275', 'ry', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-08-09 11:39:26');
INSERT INTO `sys_logininfor` VALUES ('276', 'ry', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-08-09 11:39:36');
INSERT INTO `sys_logininfor` VALUES ('277', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-08-09 11:39:41');
INSERT INTO `sys_logininfor` VALUES ('278', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-08-12 15:35:56');
INSERT INTO `sys_logininfor` VALUES ('279', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-08-31 10:15:42');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-28 21:10:00');
INSERT INTO `sys_logininfor` VALUES ('281', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 21:13:49');
INSERT INTO `sys_logininfor` VALUES ('282', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 17:29:27');
INSERT INTO `sys_logininfor` VALUES ('283', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-10 20:09:30');
INSERT INTO `sys_logininfor` VALUES ('284', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 20:09:34');
INSERT INTO `sys_logininfor` VALUES ('285', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 20:15:03');
INSERT INTO `sys_logininfor` VALUES ('286', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-10 20:20:33');
INSERT INTO `sys_logininfor` VALUES ('287', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 20:20:35');
INSERT INTO `sys_logininfor` VALUES ('288', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 20:23:09');
INSERT INTO `sys_logininfor` VALUES ('289', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-10 20:24:46');
INSERT INTO `sys_logininfor` VALUES ('290', 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 20:24:52');
INSERT INTO `sys_logininfor` VALUES ('291', 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-10 20:25:27');
INSERT INTO `sys_logininfor` VALUES ('292', 'suyuan', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 20:25:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1079 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-03-04 17:11:08', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-03-04 17:11:08', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2021-03-04 17:11:08', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-03-04 17:11:08', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-03-04 17:11:08', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-03-04 17:11:08', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-03-04 17:11:08', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-03-04 17:11:08', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-03-04 17:11:08', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-03-04 17:11:08', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-03-04 17:11:08', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-03-04 17:11:08', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-03-04 17:11:08', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-03-04 17:11:08', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-03-04 17:11:08', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-03-04 17:11:08', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-03-04 17:11:08', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-03-04 17:11:08', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-03-04 17:11:08', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-03-04 17:11:08', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-03-04 17:11:08', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-03-04 17:11:08', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1062', '心情驿站', '0', '4', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-heart', 'admin', '2021-03-08 15:12:47', 'suyuan', '2021-08-01 11:10:18', '');
INSERT INTO `sys_menu` VALUES ('1063', '图文管理', '1062', '1', '/personality/text', 'menuItem', 'C', '0', '1', '', 'fa fa-calendar-o', 'admin', '2021-03-08 15:15:15', 'admin', '2021-03-08 16:03:13', '');
INSERT INTO `sys_menu` VALUES ('1064', '美图管理', '1062', '2', '/personality/pic', 'menuItem', 'C', '0', '1', '', 'fa fa-camera-retro', 'admin', '2021-03-08 15:15:47', 'admin', '2021-03-09 17:37:31', '');
INSERT INTO `sys_menu` VALUES ('1065', '美文管理', '1062', '3', '/personality/lettres', 'menuItem', 'C', '0', '1', '', 'fa fa-newspaper-o', 'suyuan', '2021-04-02 23:35:56', 'suyuan', '2021-04-03 13:21:29', '');
INSERT INTO `sys_menu` VALUES ('1066', '户外运动', '0', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-child', 'suyuan', '2021-05-13 16:22:29', '', null, '');
INSERT INTO `sys_menu` VALUES ('1067', '跑步管理', '1066', '1', '/sports/running', 'menuItem', 'C', '0', '1', '', 'fa fa-hand-scissors-o', 'suyuan', '2021-05-13 16:23:29', 'suyuan', '2021-05-13 16:24:12', '');
INSERT INTO `sys_menu` VALUES ('1068', '活动管理', '1066', '2', '/sports/activity', 'menuItem', 'C', '0', '1', null, 'fa fa-trophy', 'suyuan', '2021-05-13 21:20:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('1069', '圈子管理', '1066', '3', '/sports/circle', 'menuItem', 'C', '0', '1', null, 'fa fa-address-book', 'suyuan', '2021-05-13 21:21:12', '', null, '');
INSERT INTO `sys_menu` VALUES ('1070', '书吧管理', '0', '6', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-server', 'suyuan', '2021-08-01 09:54:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('1071', '我的书吧', '1070', '1', 'study/main', 'menuItem', 'C', '0', '1', 'study:main:view', 'fa fa-bank', 'suyuan', '2021-08-01 09:56:54', 'suyuan', '2021-08-01 09:57:09', '');
INSERT INTO `sys_menu` VALUES ('1072', '我的书房', '1070', '2', 'study2/main', 'menuItem', 'C', '0', '1', 'study:main:view', 'fa fa-mortar-board', 'suyuan', '2021-08-01 09:57:58', 'suyuan', '2021-08-01 10:30:29', '');
INSERT INTO `sys_menu` VALUES ('1073', '圈子管理', '1070', '3', 'study/circle', 'menuItem', 'C', '0', '1', 'study:circle:view', 'fa fa-address-book', 'suyuan', '2021-08-01 09:58:31', '', null, '');
INSERT INTO `sys_menu` VALUES ('1074', '投稿管理', '0', '8', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-photo', 'suyuan', '2021-08-09 11:42:54', 'suyuan', '2022-04-28 23:29:14', '');
INSERT INTO `sys_menu` VALUES ('1075', '签到打卡', '0', '7', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-edit', 'suyuan', '2022-04-28 23:29:01', 'suyuan', '2022-04-28 23:29:19', '');
INSERT INTO `sys_menu` VALUES ('1076', '习惯管理', '1075', '1', 'sign/habit', 'menuItem', 'C', '0', '1', 'sign:habit:view', 'fa fa-adjust', 'suyuan', '2022-04-28 23:31:35', 'suyuan', '2022-04-28 23:35:04', '');
INSERT INTO `sys_menu` VALUES ('1077', '签到记录', '1075', '2', 'sign/record', 'menuItem', 'C', '0', '1', 'sign:record:view', 'fa fa-area-chart', 'suyuan', '2022-04-28 23:32:23', 'suyuan', '2022-04-28 23:37:43', '');
INSERT INTO `sys_menu` VALUES ('1078', '签到统计', '1075', '3', 'sign/statistics', 'menuItem', 'C', '0', '1', 'sign:statistics:view', 'fa fa-bar-chart', 'suyuan', '2022-05-03 16:26:36', 'suyuan', '2022-05-03 16:26:54', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-03-04 17:11:09', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-03-04 17:11:09', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"redis缓存\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"12\"],\"icon\":[\"fa fa-balance-scale\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-04 17:21:12');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"心情驿站\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-hand-peace-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:12:47');
INSERT INTO `sys_oper_log` VALUES ('102', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"心情驿站\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-hand-peace-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:12:58');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"心情驿站\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-fighter-jet\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:13:25');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"心情驿站\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:13:45');
INSERT INTO `sys_oper_log` VALUES ('105', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"心情驿站\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:14:22');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"心情驿站\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-fighter-jet\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:14:32');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"图文管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-calendar-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:15:15');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"美图管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-camera-retro\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 15:15:47');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"图文管理\"],\"url\":[\"/personality/text\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-calendar-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:03:13');
INSERT INTO `sys_oper_log` VALUES ('110', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"文本类别\"],\"dictType\":[\"text_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:48:02');
INSERT INTO `sys_oper_log` VALUES ('111', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"精句\"],\"dictValue\":[\"1\"],\"dictType\":[\"text_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:48:53');
INSERT INTO `sys_oper_log` VALUES ('112', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"美文\"],\"dictValue\":[\"2\"],\"dictType\":[\"text_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:49:08');
INSERT INTO `sys_oper_log` VALUES ('113', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"30\"],\"dictLabel\":[\"精句\"],\"dictValue\":[\"1\"],\"dictType\":[\"text_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:49:16');
INSERT INTO `sys_oper_log` VALUES ('114', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"31\"],\"dictLabel\":[\"美文\"],\"dictValue\":[\"2\"],\"dictType\":[\"text_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:49:26');
INSERT INTO `sys_oper_log` VALUES ('115', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"驿站类别\"],\"dictType\":[\"mood_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:52:01');
INSERT INTO `sys_oper_log` VALUES ('116', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"励志\"],\"dictValue\":[\"1\"],\"dictType\":[\"mood_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:52:40');
INSERT INTO `sys_oper_log` VALUES ('117', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"忧郁\"],\"dictValue\":[\"2\"],\"dictType\":[\"mood_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:53:01');
INSERT INTO `sys_oper_log` VALUES ('118', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"美好\"],\"dictValue\":[\"3\"],\"dictType\":[\"mood_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:53:27');
INSERT INTO `sys_oper_log` VALUES ('119', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"personality/text\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-08 16:59:58');
INSERT INTO `sys_oper_log` VALUES ('120', '用户管理', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"personality/text\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 15:20:34');
INSERT INTO `sys_oper_log` VALUES ('121', '用户管理', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"number\":[\"wcb_00000001\"],\"type\":[\"2\"],\"cType\":[\"3\"],\"content\":[\"我们都要好好的\"]}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 15:22:04');
INSERT INTO `sys_oper_log` VALUES ('122', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"12\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 15:45:59');
INSERT INTO `sys_oper_log` VALUES ('123', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"我们的日子为什么一去不复返？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 15:46:36');
INSERT INTO `sys_oper_log` VALUES ('124', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"为什么我们的日子一去不复返？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 15:54:37');
INSERT INTO `sys_oper_log` VALUES ('125', '部门管理', '3', 'com.ruoyi.web.controller.personality.PersonaLityController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/text/remove/%7Bids%7D', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 'null', '1', 'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'array\'.  Return value (1) was not iterable.', '2021-03-09 16:05:28');
INSERT INTO `sys_oper_log` VALUES ('126', '部门管理', '3', 'com.ruoyi.web.controller.personality.PersonaLityController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/text/remove/1', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 'null', '1', 'null', '2021-03-09 16:11:46');
INSERT INTO `sys_oper_log` VALUES ('127', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"为什么我们的日子一去不复返？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 16:50:31');
INSERT INTO `sys_oper_log` VALUES ('128', '图文删除', '3', 'com.ruoyi.web.controller.personality.PersonaLityController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/text/remove/1', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 16:51:57');
INSERT INTO `sys_oper_log` VALUES ('129', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"为什么我们的日子一去不复返？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 16:52:27');
INSERT INTO `sys_oper_log` VALUES ('130', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"为什么我们的日子一去不复返？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 16:52:32');
INSERT INTO `sys_oper_log` VALUES ('131', '图文删除', '3', 'com.ruoyi.web.controller.personality.PersonaLityController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/text/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:09:57');
INSERT INTO `sys_oper_log` VALUES ('132', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"明天会更好！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:10:50');
INSERT INTO `sys_oper_log` VALUES ('133', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_00000002\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"我们的日子为什么一去不复返？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:11:07');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1064\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"美图管理\"],\"url\":[\"/personality/pic\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-camera-retro\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:37:31');
INSERT INTO `sys_oper_log` VALUES ('135', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"美图分类\"],\"dictType\":[\"pic_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:39:00');
INSERT INTO `sys_oper_log` VALUES ('136', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"河山大好\"],\"dictValue\":[\"1\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:39:40');
INSERT INTO `sys_oper_log` VALUES ('137', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"美人儿\"],\"dictValue\":[\"2\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:40:26');
INSERT INTO `sys_oper_log` VALUES ('138', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"街道风光\"],\"dictValue\":[\"3\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:40:48');
INSERT INTO `sys_oper_log` VALUES ('139', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"城市全景\"],\"dictValue\":[\"4\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:41:09');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"1\"],\"name\":[\"出去走走，看大好河山\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:42:12');
INSERT INTO `sys_oper_log` VALUES ('141', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"1\"],\"name\":[\"河山大好 出去走走\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'pic_00000001\' for column \'number\' at row 1\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\specific\\RandomPicMapper.xml]\r\n### The error may involve com.ruoyi.specific.mapper.RandomPicMapper.insertRandomPic-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into random_pic (     number,                     name,      type,               create_time         )values(     ?,                         ?,      ?,               sysdate()   )\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'pic_00000001\' for column \'number\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'pic_00000001\' for column \'number\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'pic_00000001\' for column \'number\' at row 1', '2021-03-09 17:43:59');
INSERT INTO `sys_oper_log` VALUES ('142', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"1\"],\"name\":[\"河山大好 出去走走\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 17:45:10');
INSERT INTO `sys_oper_log` VALUES ('143', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_0000000122\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/upload/2021/03/09/99d6ff08-bda6-4610-b4bc-0eb8d2babec9.jpg\"],\"picshow\":[\"五千万\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 19:50:20');
INSERT INTO `sys_oper_log` VALUES ('144', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000002\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/upload/2021/03/09/44e6102b-0678-4d6d-a466-6a12f054013b.jpg\"],\"picshow\":[\"123456\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 19:52:04');
INSERT INTO `sys_oper_log` VALUES ('145', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000004\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/upload/2021/03/09/5a6c6719-b549-44a6-8b6b-93b395bc478f.jpg\"],\"name\":[\"IMG_20200418_105903.jpg\"],\"picshow\":[\"121212\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 19:58:21');
INSERT INTO `sys_oper_log` VALUES ('146', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000006\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/upload/2021/03/09/195f8630-f40f-4dfa-94ea-4124d14881c0.jpg\"],\"name\":[\"IMG_20200321_112701.jpg\"],\"picshow\":[\"2131313\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 20:46:15');
INSERT INTO `sys_oper_log` VALUES ('147', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000007\"],\"type\":[\"3\"],\"picUrl\":[\"/profile/upload/2021/03/09/9ffe8d10-9416-4df5-a9a7-6089a220164d.jpg\"],\"name\":[\"IMG_20200315_172723.jpg\"],\"picshow\":[\"121212\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:08:19');
INSERT INTO `sys_oper_log` VALUES ('148', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000009\"],\"type\":[\"1\"],\"picUrl\":[\"\"],\"name\":[\"\"],\"picshow\":[\"2121122\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:09:05');
INSERT INTO `sys_oper_log` VALUES ('149', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000010\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/6c3842b6-38de-4d94-a615-c78d44f67a40.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"1312312323\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:09:59');
INSERT INTO `sys_oper_log` VALUES ('150', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/1ed20cb9-4acb-4247-8e30-5862a445809d.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:22:54');
INSERT INTO `sys_oper_log` VALUES ('151', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 21:46:12');
INSERT INTO `sys_oper_log` VALUES ('152', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 21:46:15');
INSERT INTO `sys_oper_log` VALUES ('153', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 21:46:33');
INSERT INTO `sys_oper_log` VALUES ('154', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 21:47:35');
INSERT INTO `sys_oper_log` VALUES ('155', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-09 21:48:42');
INSERT INTO `sys_oper_log` VALUES ('156', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/1ed20cb9-4acb-4247-8e30-5862a445809d.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:50:14');
INSERT INTO `sys_oper_log` VALUES ('157', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/1ed20cb9-4acb-4247-8e30-5862a445809d.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:50:51');
INSERT INTO `sys_oper_log` VALUES ('158', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/1ed20cb9-4acb-4247-8e30-5862a445809d.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:51:39');
INSERT INTO `sys_oper_log` VALUES ('159', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/d085e616-1196-4029-84e6-1a5b5b5e3364.jpg\"],\"name\":[\"IMG_20200315_172723.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 21:52:07');
INSERT INTO `sys_oper_log` VALUES ('160', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '学芊科技', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"若依\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', 'null', '1', 'nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'userId\', mode=IN, javaType=class java.lang.Integer, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.lang.ClassCastException: class java.lang.Long cannot be cast to class java.lang.Integer (java.lang.Long and java.lang.Integer are in module java.base of loader \'bootstrap\')', '2021-03-09 21:58:32');
INSERT INTO `sys_oper_log` VALUES ('161', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"100\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"学芊科技\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"1\",\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"1,2\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2021-03-09 22:17:19');
INSERT INTO `sys_oper_log` VALUES ('162', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"100\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"学芊科技\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2021-03-09 22:17:22');
INSERT INTO `sys_oper_log` VALUES ('163', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '学芊科技', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"100\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"学芊科技\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"1\"]}', 'null', '1', '不允许操作超级管理员用户', '2021-03-09 22:17:29');
INSERT INTO `sys_oper_log` VALUES ('164', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/upload/2021/03/09/d085e616-1196-4029-84e6-1a5b5b5e3364.jpg\"],\"name\":[\"IMG_20200315_172723.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 22:18:44');
INSERT INTO `sys_oper_log` VALUES ('165', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/7fe12c12-3c84-4eef-a031-267debbe0bf3.jpg\"],\"name\":[\"IMG_20200628_222638.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 22:19:58');
INSERT INTO `sys_oper_log` VALUES ('166', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000006\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/8b5ec40b-59d6-4c6d-ba29-34fcafb83621.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"人生短短几个球\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 22:20:46');
INSERT INTO `sys_oper_log` VALUES ('167', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/9ca4be3d-ba7c-4ee1-8a2e-d2e44f9b0654.jpg\"],\"name\":[\"IMG_20200315_172723.jpg\"],\"picshow\":[\"世间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:13:33');
INSERT INTO `sys_oper_log` VALUES ('168', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"pic_00000006\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/8b5ec40b-59d6-4c6d-ba29-34fcafb83621.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"人生短短几个球\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:20:13');
INSERT INTO `sys_oper_log` VALUES ('169', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"10\"],\"number\":[\"pic_00000006\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/8b5ec40b-59d6-4c6d-ba29-34fcafb83621.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"人生短短几个球\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:20:17');
INSERT INTO `sys_oper_log` VALUES ('170', '美图删除', '3', 'com.ruoyi.web.controller.personality.PersonaLityPicController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:20:56');
INSERT INTO `sys_oper_log` VALUES ('171', '美图删除', '3', 'com.ruoyi.web.controller.personality.PersonaLityPicController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:30:53');
INSERT INTO `sys_oper_log` VALUES ('172', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/a3765b5e-178d-49e7-a30b-4e0d79a554ae.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"时间美好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:36:09');
INSERT INTO `sys_oper_log` VALUES ('173', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/211bf6cc-14ca-477e-a6dd-e9dfcab0d53d.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"1211·212\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:39:35');
INSERT INTO `sys_oper_log` VALUES ('174', '美图删除', '3', 'com.ruoyi.web.controller.personality.PersonaLityPicController.remove()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:39:57');
INSERT INTO `sys_oper_log` VALUES ('175', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/90ed00df-4fe8-41e9-b7c3-6683132a2761.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"世间美好环环相扣\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:40:26');
INSERT INTO `sys_oper_log` VALUES ('176', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/09/90ed00df-4fe8-41e9-b7c3-6683132a2761.jpg\"],\"name\":[\"mv.jpg\"],\"picshow\":[\"世间美好环环相扣2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-09 23:40:30');
INSERT INTO `sys_oper_log` VALUES ('177', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"number\":[\"pic_00000001\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/10/a70d32dd-24c7-4042-acf2-7ef9364bec55.jpg\"],\"name\":[\"IMG_20200321_112701.jpg\"],\"picshow\":[\"世间美好环环相扣2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-10 15:35:53');
INSERT INTO `sys_oper_log` VALUES ('178', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', '1', 'admin', '学芊科技', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-22 16:39:45');
INSERT INTO `sys_oper_log` VALUES ('179', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"number\":[\"wcb_00000002\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"我们的日子为什么一去不复返？\\r\\n每个人都是独一无二的，对此，我深信不疑！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-22 16:53:27');
INSERT INTO `sys_oper_log` VALUES ('180', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_20210322\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"一张图片一句话，一个心情走天下\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-22 16:55:16');
INSERT INTO `sys_oper_log` VALUES ('181', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000020210322\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/22/7c75494a-e754-4db9-9f67-b8de253bdf94.jpg\"],\"name\":[\"IMG_20201220_164112.jpg\"],\"picshow\":[\"河山大好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-22 17:48:24');
INSERT INTO `sys_oper_log` VALUES ('182', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_000020210323\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"知足长乐地含义就是话更小地代价获取同等的快乐\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:16:19');
INSERT INTO `sys_oper_log` VALUES ('183', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"number\":[\"text_000020210323\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"知足长乐地含义就是：花更小地代价获取同等的快乐\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:16:44');
INSERT INTO `sys_oper_log` VALUES ('184', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"number\":[\"text_000020210323\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"知足长乐地含义就是：花更小地代价获取同等的快乐，今天，你做到了吗？\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:17:07');
INSERT INTO `sys_oper_log` VALUES ('185', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_2122212\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/4b2ec619-b340-4382-8808-519c65fc8356.jpg\"],\"name\":[\"IMG_20200315_172646.jpg\"],\"picshow\":[\"油菜花\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:32:11');
INSERT INTO `sys_oper_log` VALUES ('186', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001212\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/63d8b879-6aff-4b3a-8336-a9bc55cc72aa.jpg\"],\"name\":[\"IMG_20200315_173239.jpg\"],\"picshow\":[\"qiao\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:32:34');
INSERT INTO `sys_oper_log` VALUES ('187', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_0000000233\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/1015bf09-7f51-41ee-bbdb-4416df5c3c96.jpg\"],\"name\":[\"IMG_20200317_175115.jpg\"],\"picshow\":[\"市民服务中心\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:32:53');
INSERT INTO `sys_oper_log` VALUES ('188', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000000987\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/95125a14-0727-4c6c-8dd3-32b37c9b7d2a.jpg\"],\"name\":[\"IMG_20200320_163446.jpg\"],\"picshow\":[\"桃花盛开\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:33:12');
INSERT INTO `sys_oper_log` VALUES ('189', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_0000000ll\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/23/eb53dd76-3b99-41c9-a6b3-35af6a8bee5a.jpg\"],\"name\":[\"IMG_20200321_112622.jpg\"],\"picshow\":[\"美人儿\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:33:36');
INSERT INTO `sys_oper_log` VALUES ('190', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_0000000333456\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/23/6f63389c-1c93-4b98-a01f-9c53429b3af8.jpg\"],\"name\":[\"IMG_20200321_113304.jpg\"],\"picshow\":[\"花仙子\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:33:57');
INSERT INTO `sys_oper_log` VALUES ('191', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_0000000111111\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/09da7056-7a51-4aa1-908c-8a0954924b95.jpg\"],\"name\":[\"IMG_20200321_113905.jpg\"],\"picshow\":[\"花海\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:34:15');
INSERT INTO `sys_oper_log` VALUES ('192', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_0000000134222\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/1c917059-9b76-45ad-bbd2-a32b75ef95f5.jpg\"],\"name\":[\"IMG_20200418_105903.jpg\"],\"picshow\":[\"天门山\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:35:12');
INSERT INTO `sys_oper_log` VALUES ('193', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000011111\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/52a5b4a1-7a6b-470e-a792-8daad367c5df.jpg\"],\"name\":[\"IMG_20200418_113552_1.jpg\"],\"picshow\":[\"爱心\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:35:31');
INSERT INTO `sys_oper_log` VALUES ('194', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_00000001001\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/90f55896-f936-45aa-ae40-622dfa78bf68.jpg\"],\"name\":[\"IMG_20200418_113558.jpg\"],\"picshow\":[\"爱心\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:35:45');
INSERT INTO `sys_oper_log` VALUES ('195', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000011123\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/b24bd6f2-4300-4dd8-9dcb-e9c14ed52c60.jpg\"],\"name\":[\"IMG_20200502_103649.jpg\"],\"picshow\":[\"宣州\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:36:02');
INSERT INTO `sys_oper_log` VALUES ('196', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wcb_000000012222\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/e4660774-36fb-46c4-8204-aa588fe00934.jpg\"],\"name\":[\"IMG_20200502_163844.jpg\"],\"picshow\":[\"太阳\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:36:26');
INSERT INTO `sys_oper_log` VALUES ('197', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001000011\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/adf642cd-eacc-42f3-b89e-d44329953f7a.jpg\"],\"name\":[\"IMG_20200606_095542.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:36:50');
INSERT INTO `sys_oper_log` VALUES ('198', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001122323\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/741b6240-cf2d-41ed-9959-850562607613.jpg\"],\"name\":[\"IMG_20200606_095711.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:37:07');
INSERT INTO `sys_oper_log` VALUES ('199', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_0000000112212\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/9ebe4c92-d36b-4041-bbb1-21508f81fd16.jpg\"],\"name\":[\"IMG_20200606_095713.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:37:22');
INSERT INTO `sys_oper_log` VALUES ('200', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001121212\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/cfbdb337-9e8c-44c7-962c-7ee8e00fd028.jpg\"],\"name\":[\"IMG_20200606_095714.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:37:35');
INSERT INTO `sys_oper_log` VALUES ('201', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000011111\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/8a0e7d0d-0647-46a6-a3d3-a8f6d48555ff.jpg\"],\"name\":[\"IMG_20200606_095720.jpg\"],\"picshow\":[\"是u丽江玩\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:37:48');
INSERT INTO `sys_oper_log` VALUES ('202', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000034\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/23/f8df657e-5005-4919-a995-dcd6233baa8b.jpg\"],\"name\":[\"IMG_20200606_095728.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:38:07');
INSERT INTO `sys_oper_log` VALUES ('203', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000061212\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/23/9bc37533-a200-4b89-bc92-66bd75533bb8.jpg\"],\"name\":[\"IMG_20200606_101416.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:38:25');
INSERT INTO `sys_oper_log` VALUES ('204', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001111123\"],\"type\":[\"2\"],\"picUrl\":[\"/profile/random/2021/03/23/4dab1eff-d48b-4b85-b70b-b0fcf433735a.jpg\"],\"name\":[\"IMG_20200606_101536.jpg\"],\"picshow\":[\"十里江湾\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:38:44');
INSERT INTO `sys_oper_log` VALUES ('205', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000001111\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/c32ce175-0acf-4f32-a945-ca024169ecc0.jpg\"],\"name\":[\"IMG_20201031_160824.jpg\"],\"picshow\":[\"秋菊\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:39:04');
INSERT INTO `sys_oper_log` VALUES ('206', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/41c3b740-3b13-42bc-965f-d2d65282dbb9.jpg\"],\"name\":[\"IMG_20201031_162215.jpg\"],\"picshow\":[\"红枫\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:39:26');
INSERT INTO `sys_oper_log` VALUES ('207', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'admin', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_00000001323323\"],\"type\":[\"1\"],\"picUrl\":[\"/profile/random/2021/03/23/89f3057e-f5c1-4dae-8bd4-5389b7dbb1de.jpg\"],\"name\":[\"IMG_20201031_163539.jpg\"],\"picshow\":[\"鸠zi古镇\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:40:03');
INSERT INTO `sys_oper_log` VALUES ('208', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_0000001111\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"这个世界已经发展到不管事情对错，只要多数人在做，那么你就可以理所当然地去做\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:41:31');
INSERT INTO `sys_oper_log` VALUES ('209', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_0000123456\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"人真是奇怪，你说爱她吧，却连怎么认识的她也不记得了\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:43:29');
INSERT INTO `sys_oper_log` VALUES ('210', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_03i12032312\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"好好生活，今天的世界并不太平\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:44:28');
INSERT INTO `sys_oper_log` VALUES ('211', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"number\":[\"text_03i12032312\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"好好生活，今天的世界并不太平 \\r\\n除了人类社会可能制造的冲突 \\r\\n还要警惕自然灾害 \"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:45:34');
INSERT INTO `sys_oper_log` VALUES ('212', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_mh00001\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"人一生要经历很多事情  惊喜和幸福能占到大多数  生活就很完满了\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:47:00');
INSERT INTO `sys_oper_log` VALUES ('213', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_00000012345\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"脑子不好使的人，往往要在万家灯火亮起地时候多熬几个钟\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:48:13');
INSERT INTO `sys_oper_log` VALUES ('214', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_0000121323\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"我一人在冬夜，借着瘦身和健康的名义，思考些不着边际地问题\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:49:17');
INSERT INTO `sys_oper_log` VALUES ('215', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_0000123456732\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"这冷是到了一种什么程度呢？你骑车停下来的时候，双腿就缓缓地有暖意了\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:50:56');
INSERT INTO `sys_oper_log` VALUES ('216', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_131323223\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"劳动能给人身体温暖，同样的，内心也会充实、充满阳光。这是劳动人民自己给自己地阳光。\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 10:52:28');
INSERT INTO `sys_oper_log` VALUES ('217', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_1312323\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"路不会因为你穿着华丽而变得好走    但会因为你邋里邋遢而变得更加艰难\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:00:21');
INSERT INTO `sys_oper_log` VALUES ('218', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000011212\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"家的感觉就是，不管你回来的多么晚，都会有人在等你回来\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:01:32');
INSERT INTO `sys_oper_log` VALUES ('219', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_1313132\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"想地都是假的，只有脚下的路才是真的\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:03:57');
INSERT INTO `sys_oper_log` VALUES ('220', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"text_000012\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"春日的下午，阳光暖暖的，阳台上光线明亮，微风飘动着衣裳，闭上眼，光芒把眼皮映得红艳艳，仿佛心都跟着明亮起来了\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:08:28');
INSERT INTO `sys_oper_log` VALUES ('221', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'admin', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"pic_000000011212\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"今天的夕阳又大又圆，像大地上无数遥望的目光汇聚成的希冀\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:11:59');
INSERT INTO `sys_oper_log` VALUES ('222', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"19\"],\"number\":[\"pic_000000011212\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"今天的夕阳又大又圆，像大地上无数遥望的目光汇聚成的希冀  散发光芒万丈\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:12:54');
INSERT INTO `sys_oper_log` VALUES ('223', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"时间总在向前跑，我们也向前赶路。通往明亮的道途总会坎坷，光明总会来之不易，但它会冲破艰难险阻，它会拨开云雾，携着万千光彩与你相遇！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:15:50');
INSERT INTO `sys_oper_log` VALUES ('224', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'admin', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"number\":[\"wcb_00000001\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"时间总在向前跑，我们也向前赶路。通往明亮的道途总会坎坷，光明总会来之不易，但她会冲破艰难险阻，她会拨开云雾，携着万千光彩与你相遇！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-23 11:16:18');
INSERT INTO `sys_oper_log` VALUES ('225', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '学芊科技', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"宿缘\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"1396627527@qq.com\"],\"sex\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-30 23:27:20');
INSERT INTO `sys_oper_log` VALUES ('226', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '学芊科技', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"宿缘\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"1396627527@qq.com\"],\"sex\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-30 23:27:22');
INSERT INTO `sys_oper_log` VALUES ('227', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '学芊科技', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"宿缘\"],\"phonenumber\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"sex\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-30 23:27:30');
INSERT INTO `sys_oper_log` VALUES ('228', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '学芊科技', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-30 23:28:34');
INSERT INTO `sys_oper_log` VALUES ('229', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'GET', '1', 'admin', '学芊科技', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"修改密码失败，旧密码错误\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-30 23:35:34');
INSERT INTO `sys_oper_log` VALUES ('230', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'GET', '1', 'admin', '学芊科技', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{}', '{\r\n  \"msg\" : \"修改密码失败，旧密码错误\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-03-30 23:36:24');
INSERT INTO `sys_oper_log` VALUES ('231', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'GET', '1', 'admin', '学芊科技', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-30 23:36:50');
INSERT INTO `sys_oper_log` VALUES ('232', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'suyuan', '学芊科技', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"宿缘\"],\"phonenumber\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"sex\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-03-30 23:38:50');
INSERT INTO `sys_oper_log` VALUES ('233', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"suyuan_20210402_mimang\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"2021年4月2日  阴  \\r\\n对工作渐渐麻木，也对自己失去信心的日子  与人比较来差距越来越大，与自己比较看不见进展.\\r\\n充满焦虑的一天，希望以后的自己会谅解我的现在  也希望家人不在计较些，望谅解。\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-02 22:46:39');
INSERT INTO `sys_oper_log` VALUES ('234', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"美文管理\"],\"url\":[\"\\t/personality/lettres\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-newspaper-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-02 23:35:56');
INSERT INTO `sys_oper_log` VALUES ('235', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1065\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"美文管理\"],\"url\":[\"/personality/lettres/add\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-newspaper-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-02 23:36:26');
INSERT INTO `sys_oper_log` VALUES ('236', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"type\":[\"3\"],\"title\":[\"美好的向往\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 09:52:26');
INSERT INTO `sys_oper_log` VALUES ('237', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p>\\r\\n\\t\\t                            \\r\\n\\t\\t                        <img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/0437c1de-1c97-4e07-88e9-41bb99be9b59.jpg\\\" style=\\\"width: 25%;\\\">231<b>231231231对2沃达丰放23但受到轻</b>微的轻微的·</p><p>我顶我顶我顶我顶我顶我顶3d</p>\"],\"type\":[\"1\"],\"title\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 12:17:18');
INSERT INTO `sys_oper_log` VALUES ('238', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/5d473bd2-0323-4462-8be6-b3bb8d1bf251.jpg\\\" style=\\\"width: 25%; float: right;\\\" class=\\\"note-float-right\\\">恶气委屈问问去是青蛙打网球大王发到我·<b>1我去打球威风威风威风完全的青蛙大发去污粉全微分我父亲我父亲驱动器无法读取无法前往完全颠覆我父亲违反物权法万人前往</b>废弃物而是纷纷分为氛围分为郭文贵</p>\"],\"type\":[\"1\"],\"title\":[\"【电工】南和县米多多\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 12:47:36');
INSERT INTO `sys_oper_log` VALUES ('239', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"e\'q\'e\"],\"type\":[\"1\"],\"title\":[\"e\'w\'q\'e\'q\'w\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 12:49:50');
INSERT INTO `sys_oper_log` VALUES ('240', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"企鹅企鹅舞\"],\"type\":[\"1\"],\"title\":[\"【电工】南和县米多多\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 12:50:26');
INSERT INTO `sys_oper_log` VALUES ('241', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"2131232\"],\"type\":[\"1\"],\"title\":[\"【电工】南和县米多多\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 12:52:08');
INSERT INTO `sys_oper_log` VALUES ('242', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"二期e\'q\'we我去恶趣味请问\"],\"type\":[\"1\"],\"title\":[\"呃we\'q\'we\'q\'we\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 12:55:53');
INSERT INTO `sys_oper_log` VALUES ('243', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"\\r\\n\\t\\t                            \\r\\n\\t\\t                        \"],\"type\":[\"1\"],\"title\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 13:10:37');
INSERT INTO `sys_oper_log` VALUES ('244', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"24124234224\"],\"type\":[\"2\"],\"title\":[\"【电工】南和县米多多\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 13:18:06');
INSERT INTO `sys_oper_log` VALUES ('245', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1065\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"美文管理\"],\"url\":[\"/personality/lettres\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-newspaper-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 13:21:29');
INSERT INTO `sys_oper_log` VALUES ('246', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"法庭依法有\"],\"type\":[\"1\"],\"title\":[\"【电工】南和县米多多\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 13:27:08');
INSERT INTO `sys_oper_log` VALUES ('247', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p>误i二五i的hi五丢我我的威风威风2全额切尔茜而且我未确认犬瘟热服务器访问发而无法违法违规v为分为氛围·额威风威风威风分威风威风威风分为氛围服务我顶我顶我发我饿死色不VS的人维尔各位呃呃我刚问过啊无非是v微风网格生成三维分别为覅u求都求放大器无法获取五恶趣味请问未确认未确认犬瘟热魏汝稳1额如2如21情人桥为分为氛围亲热我去热饭为人父分为氛围服务1而且我服务器访问威风威风威风威风威风威风我我分威风威风威风<img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/97678ec8-e958-44a9-a58d-a6f37a3b0f9f.jpg\\\" style=\\\"width: 25%; float: right;\\\" class=\\\"note-float-right\\\"></p>\"],\"type\":[\"1\"],\"title\":[\"美好的向往\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 13:39:22');
INSERT INTO `sys_oper_log` VALUES ('248', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/4ccb3e26-1026-484e-a228-5915385b08c5.jpg\\\" style=\\\"width: 25%;\\\">去额前<b>恶趣味请问的去问驱蚊器我我分</b>威风威风威风士大夫士大夫的威风威风威风纷纷为分为氛围十三点VS俄方微风威风撒发顺丰测试服额分色法<br></p>\"],\"number\":[\"article_20210403_00001\"],\"title\":[\"我的美好生活是对生命的敬重！\"],\"type\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 14:04:46');
INSERT INTO `sys_oper_log` VALUES ('249', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"number\":[\"121212\"],\"type\":[\"1\"],\"title\":[\"美好的向往\"],\"content\":[\"<p>误i二五i的hi五丢我我的威风威风2全额切尔茜而且我未确认犬瘟热服务器访问发而无法违法违规v为分为氛围·额威风威风威风分威风威风威风分为氛围服务我顶我顶我发我饿死色不VS的人维尔各位呃呃我刚问过啊无非是v微风网格生成三维分别为覅u求都求放大器无法获取五恶趣味请问未确认未确认犬瘟热魏汝稳1额如2如21情人桥为分为氛围亲热我去热饭为人父分为氛围服务1而且我服务器访问威风威风威风威风威风威风我我分威风威风威风<img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/97678ec8-e958-44a9-a58d-a6f37a3b0f9f.jpg\\\" style=\\\"width: 25%; float: right;\\\" class=\\\"note-float-right\\\"></p>\"]}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\specific\\RandomTextMapper.xml]\r\n### The error may involve com.ruoyi.specific.mapper.RandomTextMapper.updateRandomText-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update random_text           SET number = ?,             content = ?,                          type = ?,                                            update_time = sysdate()          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1\n; Data truncation: Data too long for column \'content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'content\' at row 1', '2021-04-03 14:40:32');
INSERT INTO `sys_oper_log` VALUES ('250', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/3d0cba5d-6a60-4af9-b2ff-efb249823268.jpg\\\" style=\\\"width: 25%;\\\">2而且嗡嗡嗡<br></p>\",\"\"],\"number\":[\"\"],\"title\":[\"\"],\"type\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 14:58:42');
INSERT INTO `sys_oper_log` VALUES ('251', '图文删除', '3', 'com.ruoyi.web.controller.personality.LettresController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 14:58:51');
INSERT INTO `sys_oper_log` VALUES ('252', '图文删除', '3', 'com.ruoyi.web.controller.personality.LettresController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 14:59:03');
INSERT INTO `sys_oper_log` VALUES ('253', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/4ccb3e26-1026-484e-a228-5915385b08c5.jpg\\\" style=\\\"width: 25%; float: left;\\\" class=\\\"note-float-left\\\"><b>去额前恶趣味请问的去问驱蚊器我我分威风威风威风士大夫士夫的威风威风威风纷纷为分为氛围十三点VS俄方微风威风撒发顺丰测试服额分色法</b><br></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 18:06:40');
INSERT INTO `sys_oper_log` VALUES ('254', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/4ccb3e26-1026-484e-a228-5915385b08c5.jpg\\\" style=\\\"width: 25%; float: left;\\\" class=\\\"note-float-left\\\"><b>去额前恶趣味请问的去问驱蚊器我我分威风威风</b></p><p><b>威风士大夫士夫的威风威风威风纷纷为分为氛围</b></p><p><b>十三点VS俄方微风威风撒发顺丰测试服额分色法</b><br></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 18:07:40');
INSERT INTO `sys_oper_log` VALUES ('255', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h3 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h3><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 100%;\\\"><b><br></b></p><p><u>去额前恶趣味请问的去问驱蚊器我我分威风威风</u></p><p><u>威风士大夫士夫的威风威风威风纷纷为分为氛围</u></p><p><u>十三点VS俄方微风威风撒发顺丰测试服额分色法</u><br></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 18:09:28');
INSERT INTO `sys_oper_log` VALUES ('256', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h3 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h3><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 100%;\\\"><b><br></b></p><p><u>&nbsp; &nbsp; &nbsp; &nbsp;去额前恶趣味请问的去问驱蚊器我我分威风威风</u><u>威风士大夫士夫的威风威风威风纷纷为分为氛围</u><u>十三点VS俄方微风威风撒发顺丰测试服额分色法。</u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 18:09:43');
INSERT INTO `sys_oper_log` VALUES ('257', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h2 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 100%;\\\"><b><br></b></p><p><u>&nbsp; &nbsp; &nbsp; &nbsp;去额前恶趣味请问的去问驱蚊器我我分威风威风</u><u>威风士大夫士夫的威风威风威风纷纷为分为氛围</u><u>十三点VS俄方微风威风撒发顺丰测试服额分色法。</u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 20:25:23');
INSERT INTO `sys_oper_log` VALUES ('258', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h2 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 100%;\\\"><b><br></b></p><p><u>&nbsp; &nbsp; &nbsp; &nbsp;<b>去额前恶趣味请问的去问驱蚊器我我分威风威风</b></u><u><b>威风士大夫士夫的威风威风威风纷纷为分为氛围</b></u><u><b>十三点VS俄方微风威风撒发顺丰测试服额分色法</b>。</u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 20:51:33');
INSERT INTO `sys_oper_log` VALUES ('259', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h2 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 25%; float: left;\\\" class=\\\"note-float-left\\\"><u><b>去额前恶趣味请问的去问驱</b></u></p><p><u><b>蚊器我我分威风威风</b></u><u><b>威风士大夫士夫的威风威风威风纷纷为分为氛围</b></u><u><b>十三点VS俄方微风威风撒发顺丰测试服额分色法</b>。</u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 20:52:20');
INSERT INTO `sys_oper_log` VALUES ('260', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h2 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 25%; float: left;\\\" class=\\\"note-float-left\\\"><u><b>去额前恶趣味请问的去问驱wq的期望去污粉全微分无法无法完全放弃违法额分分威风威风为</b></u></p><p><u><b>蚊器我我分威风威风</b></u><u><b>威风士大夫士wq亲卫队请问物权法纷纷为分为氛围分为温度范围废弃物</b></u></p><p><u><b>夫的威风威风威风纷纷为分武都区武都区武都区完全纷纷是个发发俄方纷纷分为氛围请问请问</b></u></p><p><u><b>为氛围</b></u><u><b>十三点VS俄方微我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u></p><p><u><b>风威风撒发顺丰测试我的确我的父亲违反物权法威风威风威风我给忘却的威风威风份未发确定</b></u></p><p><u><b>服额分色法</b>。为请问请问亲人犬瘟热无法为额威风威风威风威风威风威风我</u><u><b>我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u><u><b>风威风撒发顺丰测试我的确我的父亲违反物。</b></u></p><p>&nbsp; &nbsp; 的份未发各位各位各位各位如果在任何责任为公司果然是个主人公说的不是第八十八章是微风分三个VSDB他今天已经如题如题二VS给v额是各个不知道湖人队或者那封公开信护士小姐<u><b><br></b></u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"1\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 20:53:55');
INSERT INTO `sys_oper_log` VALUES ('261', '图文修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/text/edit', '127.0.0.1', '内网IP', '{\"id\":[\"20\"],\"number\":[\"suyuan_20210402_mimang\"],\"type\":[\"1\"],\"cType\":[\"2\"],\"content\":[\"2021年4月2日  阴  \\r\\n需要谅解的一天。\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 20:54:48');
INSERT INTO `sys_oper_log` VALUES ('262', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', '1', 'suyuan', '学芊科技', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 22:00:20');
INSERT INTO `sys_oper_log` VALUES ('263', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p><br></p><table class=\\\"table table-bordered\\\"><tbody><tr><td>wqweqwerqrqwr</td></tr><tr><td>wqwqwrqwrqw3rrqwrqw</td></tr></tbody></table><p>121213qweqweqweqwe</p><table class=\\\"table table-bordered\\\"><tbody><tr><td>qeqweqweqeqweqweqwe</td></tr></tbody></table><p><br></p><table class=\\\"table table-bordered\\\"><tbody><tr><td>qeqweqweweqwrrwetert</td></tr></tbody></table><p><br></p>\",\"\"],\"number\":[\"\"],\"title\":[\"\"],\"type\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 22:20:25');
INSERT INTO `sys_oper_log` VALUES ('264', '图文删除', '3', 'com.ruoyi.web.controller.personality.LettresController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-03 22:20:33');
INSERT INTO `sys_oper_log` VALUES ('265', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"文章类型\"],\"dictType\":[\"article_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:47:43');
INSERT INTO `sys_oper_log` VALUES ('266', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"跑步运动\"],\"dictValue\":[\"1\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:48:18');
INSERT INTO `sys_oper_log` VALUES ('267', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"旅途风光\"],\"dictValue\":[\"2\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:48:42');
INSERT INTO `sys_oper_log` VALUES ('268', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"心灵之声\"],\"dictValue\":[\"3\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:49:18');
INSERT INTO `sys_oper_log` VALUES ('269', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"美好生活\"],\"dictValue\":[\"4\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:50:13');
INSERT INTO `sys_oper_log` VALUES ('270', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"未来畅想\"],\"dictValue\":[\"5\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:50:32');
INSERT INTO `sys_oper_log` VALUES ('271', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h2 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 25%; float: left;\\\" class=\\\"note-float-left\\\"><u><b>去额前恶趣味请问的去问驱wq的期望去污粉全微分无法无法完全放弃违法额分分威风威风为</b></u></p><p><u><b>蚊器我我分威风威风</b></u><u><b>威风士大夫士wq亲卫队请问物权法纷纷为分为氛围分为温度范围废弃物</b></u></p><p><u><b>夫的威风威风威风纷纷为分武都区武都区武都区完全纷纷是个发发俄方纷纷分为氛围请问请问</b></u></p><p><u><b>为氛围</b></u><u><b>十三点VS俄方微我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u></p><p><u><b>风威风撒发顺丰测试我的确我的父亲违反物权法威风威风威风我给忘却的威风威风份未发确定</b></u></p><p><u><b>服额分色法</b>。为请问请问亲人犬瘟热无法为额威风威风威风威风威风威风我</u><u><b>我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u><u><b>风威风撒发顺丰测试我的确我的父亲违反物。</b></u></p><p>&nbsp; &nbsp; 的份未发各位各位各位各位如果在任何责任为公司果然是个主人公说的不是第八十八章是微风分三个VSDB他今天已经如题如题二VS给v额是各个不知道湖人队或者那封公开信护士小姐<u><b><br></b></u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"3\"],\"title\":[\"我的美好生活是对生命的敬重！\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:53:18');
INSERT INTO `sys_oper_log` VALUES ('272', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p><b><br></b></p><p><b>2我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶</b></p><p><b>我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请</b></p><p><b>问人情味发七点十七</b></p><p>我顶我顶我去饿饿哇请问人情味发七点十七我顶我</p><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/05/7b361d7a-b92b-464b-b5d3-bc7f762623ee.jpg\\\" style=\\\"width: 25%;\\\" class=\\\"\\\"></p>\",\"\"],\"number\":[\"article_20210405q\"],\"title\":[\"清晨的那道光\"],\"type\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:55:49');
INSERT INTO `sys_oper_log` VALUES ('273', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"13\"],\"content\":[\"<p><b><br></b></p><h2 style=\\\"text-align: center; \\\"><b>我去饿饿哇请问人情味发七点</b></h2><p><b>十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶</b></p><p><b>我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请问人情味发七点十七我顶我顶我去饿饿哇请</b></p><p><b>问人情味发七点十七</b></p><p>我顶我顶我去饿饿哇请问人情味发七点十七我顶我</p><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/05/7b361d7a-b92b-464b-b5d3-bc7f762623ee.jpg\\\" style=\\\"width: 25%;\\\" class=\\\"\\\"></p>,\"],\"number\":[\"article_20210405q\"],\"type\":[\"1\"],\"title\":[\"清晨的那道光\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-05 20:56:28');
INSERT INTO `sys_oper_log` VALUES ('274', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"励志好文\"],\"dictValue\":[\"5\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-19 10:29:31');
INSERT INTO `sys_oper_log` VALUES ('275', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'suyuan', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"lzhw_000000001\"],\"type\":[\"5\"],\"picUrl\":[\"/profile/random/2021/04/19/a49b7980-b1fd-4b6a-9500-7e18d6c24b59.jpeg\"],\"name\":[\"279759ee3d6d55fb407d2f8617f1124221a4dd37.jpeg\"],\"picshow\":[\"中科院一博士走红论文节选-致谢\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-04-19 10:30:45');
INSERT INTO `sys_oper_log` VALUES ('276', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'suyuan', '学芊科技', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sports_running\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-12 18:08:19');
INSERT INTO `sys_oper_log` VALUES ('277', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'suyuan', '学芊科技', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sports_running\"]}', 'null', '0', null, '2021-05-12 18:08:35');
INSERT INTO `sys_oper_log` VALUES ('278', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"户外运动\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-child\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 16:22:29');
INSERT INTO `sys_oper_log` VALUES ('279', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1066\"],\"menuType\":[\"C\"],\"menuName\":[\"跑步管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-hand-scissors-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 16:23:29');
INSERT INTO `sys_oper_log` VALUES ('280', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1067\"],\"parentId\":[\"1066\"],\"menuType\":[\"C\"],\"menuName\":[\"跑步管理\"],\"url\":[\"/sports/running\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-hand-scissors-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 16:24:12');
INSERT INTO `sys_oper_log` VALUES ('281', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'suyuan', '学芊科技', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sports_circle,sports_activity,sports_circle_member,sports_activity_member,sports_running_member\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 17:20:50');
INSERT INTO `sys_oper_log` VALUES ('282', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'suyuan', '学芊科技', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sports_running_member,sports_circle_member,sports_circle,sports_activity_member,sports_activity\"]}', 'null', '0', null, '2021-05-13 17:21:06');
INSERT INTO `sys_oper_log` VALUES ('283', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1066\"],\"menuType\":[\"C\"],\"menuName\":[\"活动管理\"],\"url\":[\"/sports/activity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-trophy\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:20:34');
INSERT INTO `sys_oper_log` VALUES ('284', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1066\"],\"menuType\":[\"C\"],\"menuName\":[\"圈子管理\"],\"url\":[\"/sports/circle\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:21:12');
INSERT INTO `sys_oper_log` VALUES ('285', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"跑程分类\"],\"dictType\":[\"running_distance\"],\"status\":[\"0\"],\"remark\":[\"跑步距离分类\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:38:23');
INSERT INTO `sys_oper_log` VALUES ('286', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"15\"],\"dictName\":[\"跑程分类\"],\"dictType\":[\"running_distance\"],\"status\":[\"0\"],\"remark\":[\"跑步距离分类\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:38:31');
INSERT INTO `sys_oper_log` VALUES ('287', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"3公里跑\"],\"dictValue\":[\"1\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:39:16');
INSERT INTO `sys_oper_log` VALUES ('288', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"5公里跑\"],\"dictValue\":[\"2\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:39:38');
INSERT INTO `sys_oper_log` VALUES ('289', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"8公里跑\"],\"dictValue\":[\"3\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:40:05');
INSERT INTO `sys_oper_log` VALUES ('290', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"10公里跑\"],\"dictValue\":[\"4\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:40:30');
INSERT INTO `sys_oper_log` VALUES ('291', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"15公里跑\"],\"dictValue\":[\"6\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:41:13');
INSERT INTO `sys_oper_log` VALUES ('292', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"48\"],\"dictLabel\":[\"10公里跑\"],\"dictValue\":[\"5\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:41:33');
INSERT INTO `sys_oper_log` VALUES ('293', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"47\"],\"dictLabel\":[\"8公里跑\"],\"dictValue\":[\"4\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:41:44');
INSERT INTO `sys_oper_log` VALUES ('294', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"47\"],\"dictLabel\":[\"8公里跑\"],\"dictValue\":[\"4\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:41:59');
INSERT INTO `sys_oper_log` VALUES ('295', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"49\"],\"dictLabel\":[\"15公里跑\"],\"dictValue\":[\"6\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"danger\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:42:06');
INSERT INTO `sys_oper_log` VALUES ('296', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"48\"],\"dictLabel\":[\"10公里跑\"],\"dictValue\":[\"5\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:42:12');
INSERT INTO `sys_oper_log` VALUES ('297', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"47\"],\"dictLabel\":[\"8公里跑\"],\"dictValue\":[\"4\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:42:19');
INSERT INTO `sys_oper_log` VALUES ('298', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"46\"],\"dictLabel\":[\"5公里跑\"],\"dictValue\":[\"3\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:42:32');
INSERT INTO `sys_oper_log` VALUES ('299', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"45\"],\"dictLabel\":[\"3公里跑\"],\"dictValue\":[\"2\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:42:48');
INSERT INTO `sys_oper_log` VALUES ('300', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"1公里跑\"],\"dictValue\":[\"1\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:43:11');
INSERT INTO `sys_oper_log` VALUES ('301', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"45\"],\"dictLabel\":[\"3公里跑\"],\"dictValue\":[\"2\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:43:19');
INSERT INTO `sys_oper_log` VALUES ('302', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"45\"],\"dictLabel\":[\"3公里跑\"],\"dictValue\":[\"2\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:43:39');
INSERT INTO `sys_oper_log` VALUES ('303', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"46\"],\"dictLabel\":[\"5公里跑\"],\"dictValue\":[\"3\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:43:46');
INSERT INTO `sys_oper_log` VALUES ('304', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"47\"],\"dictLabel\":[\"8公里跑\"],\"dictValue\":[\"4\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:43:50');
INSERT INTO `sys_oper_log` VALUES ('305', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"48\"],\"dictLabel\":[\"10公里跑\"],\"dictValue\":[\"5\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:44:07');
INSERT INTO `sys_oper_log` VALUES ('306', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"49\"],\"dictLabel\":[\"15公里跑\"],\"dictValue\":[\"6\"],\"dictType\":[\"running_distance\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"warning\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:44:11');
INSERT INTO `sys_oper_log` VALUES ('307', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"成员类型\"],\"dictType\":[\"member_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:48:57');
INSERT INTO `sys_oper_log` VALUES ('308', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"个人成员\"],\"dictValue\":[\"1\"],\"dictType\":[\"member_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:49:32');
INSERT INTO `sys_oper_log` VALUES ('309', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"圈子成员\"],\"dictValue\":[\"2\"],\"dictType\":[\"member_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:49:44');
INSERT INTO `sys_oper_log` VALUES ('310', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"个人/圈子成员\"],\"dictValue\":[\"3\"],\"dictType\":[\"member_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:50:10');
INSERT INTO `sys_oper_log` VALUES ('311', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"成员规模\"],\"dictType\":[\"member_scale\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:51:05');
INSERT INTO `sys_oper_log` VALUES ('312', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"10人\"],\"dictValue\":[\"1\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:51:42');
INSERT INTO `sys_oper_log` VALUES ('313', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"20人\"],\"dictValue\":[\"2\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:51:56');
INSERT INTO `sys_oper_log` VALUES ('314', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"50人\"],\"dictValue\":[\"3\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:52:07');
INSERT INTO `sys_oper_log` VALUES ('315', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"50-100人\"],\"dictValue\":[\"4\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:52:27');
INSERT INTO `sys_oper_log` VALUES ('316', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"56\"],\"dictLabel\":[\"20-50人\"],\"dictValue\":[\"3\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:52:34');
INSERT INTO `sys_oper_log` VALUES ('317', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"55\"],\"dictLabel\":[\"10-20人\"],\"dictValue\":[\"2\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:52:41');
INSERT INTO `sys_oper_log` VALUES ('318', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"54\"],\"dictLabel\":[\"10人内\"],\"dictValue\":[\"1\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:52:47');
INSERT INTO `sys_oper_log` VALUES ('319', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"100-500人\"],\"dictValue\":[\"5\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:53:20');
INSERT INTO `sys_oper_log` VALUES ('320', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"500人以上\"],\"dictValue\":[\"6\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:53:40');
INSERT INTO `sys_oper_log` VALUES ('321', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"57\"],\"dictLabel\":[\"50-100人\"],\"dictValue\":[\"4\"],\"dictType\":[\"member_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-05-13 21:53:48');
INSERT INTO `sys_oper_log` VALUES ('322', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"lizhi_20210625\"],\"type\":[\"1\"],\"cType\":[\"1\"],\"content\":[\"任何一种进步都足以让自己变得更自信。\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:36:31');
INSERT INTO `sys_oper_log` VALUES ('323', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/text/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"meihao_2021062501\"],\"type\":[\"1\"],\"cType\":[\"3\"],\"content\":[\"人除了要积极主动，还要学会承受力所能及的疼痛。\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:37:12');
INSERT INTO `sys_oper_log` VALUES ('324', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p data-track=\\\"1\\\" style=\\\"margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\\\">任何一种进步都足以让自己变得更自信。</span><br>一次次的突破是因为不懈的坚持，<span style=\\\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\\\">坚持跑步，不因天热而拒绝下楼，也不因未降临下的雨而放弃热身，做好准备，随时出发</span>。生活也是一样，多数情况下要绝对地保持自己的节奏，在自己的节奏里，更可能把事情做得出色。<br class=\\\"sysbr\\\" style=\\\"display: inline;\\\"></p><div class=\\\"pgc-img\\\" style=\\\"margin: 18px 0px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\\\"><img src=\\\"https://p3.toutiaoimg.com/img/pgc-image/d9f6f9a1544f44d1b9453b989727a37b~tplv-tt-shrink:640:0.image\\\" img_width=\\\"1080\\\" img_height=\\\"2244\\\" image_type=\\\"1\\\" mime_type=\\\"image/png\\\" class=\\\"syl-page-img\\\" style=\\\"margin: 0px auto 8px; padding: 0px; max-width: 100%; display: block; height: auto;\\\"><p class=\\\"pgc-img-caption\\\" style=\\\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px;\\\"></p></div><p data-track=\\\"2\\\" style=\\\"margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px; text-align: justify;\\\"><br>电梯偶尔也会闹情绪，我被迫爬楼，其实，6楼并不是那么让人望而却步，大学时候每天都会爬上很多次的六楼，也没有觉得有多糟糕。<span style=\\\"margin: 0px; padding: 0px; border: 0px; font-weight: 700;\\\">有时候，用一个玩的心态去对待这些小插曲，也会觉得很有趣，至少是不会反感的。</span><br>几近天天跑的强度，<span style=\\\"margin: 0px; padding: 0px; border: 0px; font-weight:', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:38:22');
INSERT INTO `sys_oper_log` VALUES ('325', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"现代诗歌\"],\"dictValue\":[\"6\"],\"dictType\":[\"article_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:41:11');
INSERT INTO `sys_oper_log` VALUES ('326', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p></p><p><ul></ul><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span></p><p style=\\\"text-align: center;\\\"><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><b>一个人的内心世界一定要丰满</b></span></p><p style=\\\"text-align: center;\\\"><b><span style=\\\"font-size: 14px;\\\">即使现实生活不随人愿</span></b></p><p style=\\\"text-align: center;\\\"><b><span st', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:42:55');
INSERT INTO `sys_oper_log` VALUES ('327', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<p><div style=\\\"text-align: center;\\\"><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\">世间最美不过阳光和清风</span></div><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">我一想到它们</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">便心海荡漾</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">阳光灿烂，春风拂面</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">这是去哪都愿意带着的美好愿景</div><div style=\\\"text-align: center;\\\"><br></div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">想啊</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun,', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:44:51');
INSERT INTO `sys_oper_log` VALUES ('328', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"15\"],\"content\":[\"<p></p><p></p><ul></ul><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><ul></ul></span><p></p><p style=\\\"text-align: center;\\\"><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><b>一个人的内心世界一定要丰满</b></span></p><p style=\\\"text-align: center;\\\"><b><span style=\\\"font-size: 14px;\\\">即使现实生活不随人愿</span></b></p><p style=\\\"text-align: ce', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:45:09');
INSERT INTO `sys_oper_log` VALUES ('329', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"16\"],\"content\":[\"<p></p><div style=\\\"text-align: center;\\\"><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\">世间最美不过阳光和清风</span></div><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">我一想到它们</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">便心海荡漾</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">阳光灿烂，春风拂面</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">这是去哪都愿意带着的美好愿景</div><div style=\\\"text-align: center;\\\"><br></div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, Arial, sans-serif; font-size: 16px; white-space: pre-wrap;\\\"><div style=\\\"text-align: center;\\\">想啊</div></span><span style=\\\"color: rgb(34, 34, 34); font-family: &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 10:45:19');
INSERT INTO `sys_oper_log` VALUES ('330', '用户管理', '1', 'com.ruoyi.web.controller.personality.LettresController.addText()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/add', '127.0.0.1', '内网IP', '{\"content\":[\"<div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在乡村</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在城里</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸妈在的地方是家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>我在的地方成了家</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>父母的迁就</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>让亲情和爱长在了一起</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>是幸福温柔生长的地方</u></span></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: center;\\\"><br></div>\",\"\"],\"number\":[\"suigan_2021062502\"],\"title\":[\"随感\"],\"type\":[\"6\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 11:05:07');
INSERT INTO `sys_oper_log` VALUES ('331', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"content\":[\"<div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在乡村</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在城里</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸妈在的地方是家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>我在的地方成了家</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>父母的迁就</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>让亲情和爱长在了一起</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>是幸福温柔生长的地方</u></span></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: center;\\\"><br></div>,\"],\"number\":[\"suigan_2021062502\"],\"type\":[\"6\"],\"title\":[\"家，爸爸从北京回来随感\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 11:07:01');
INSERT INTO `sys_oper_log` VALUES ('332', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"content\":[\"<div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在乡村</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在城里</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸妈在的地方是家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>我在的地方成了家</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>父母的迁就</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>让亲情和爱长在了一起</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>是幸福温柔生长的地方</u></span></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: right;\\\">2021-06-25</div>,\"],\"number\":[\"suigan_2021062502\"],\"type\":[\"6\"],\"title\":[\"家，爸爸从北京回来随感\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 11:07:31');
INSERT INTO `sys_oper_log` VALUES ('333', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"17\"],\"content\":[\"<div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u><b>家</b></u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u><b><br></b></u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在乡村</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸爸回来，家在城里</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>小时候</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>爸妈在的地方是家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>长大后</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>我在的地方成了家</u></span></div><div style=\\\"text-align: center;\\\"><u><br></u></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>父母的迁就</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>让亲情和爱长在了一起</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>家</u></span></div><div style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14px;\\\"><u>是幸福温柔生长的地方</u></span></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: center;\\\"><br></div><div style=\\\"text-align: right;\\\">2021-06-25</div>,\"],\"number\":[\"suigan_2021062502\"],\"type\":[\"6\"],\"title\":[\"家，爸爸从北京回来随感\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 11:08:01');
INSERT INTO `sys_oper_log` VALUES ('334', '图文删除', '3', 'com.ruoyi.web.controller.personality.LettresController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 11:14:25');
INSERT INTO `sys_oper_log` VALUES ('335', '图文删除', '3', 'com.ruoyi.web.controller.personality.PersonaLityController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/personality/text/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-06-25 11:14:50');
INSERT INTO `sys_oper_log` VALUES ('336', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'suyuan', '学芊科技', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"study_circle,study_main\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 09:17:06');
INSERT INTO `sys_oper_log` VALUES ('337', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'suyuan', '学芊科技', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"study_circle,study_main\"]}', 'null', '0', null, '2021-08-01 09:17:13');
INSERT INTO `sys_oper_log` VALUES ('338', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"书吧管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-server\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 09:54:46');
INSERT INTO `sys_oper_log` VALUES ('339', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1070\"],\"menuType\":[\"C\"],\"menuName\":[\"我的书吧\"],\"url\":[\"study/main\"],\"target\":[\"menuItem\"],\"perms\":[\"study:main:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 09:56:54');
INSERT INTO `sys_oper_log` VALUES ('340', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1071\"],\"parentId\":[\"1070\"],\"menuType\":[\"C\"],\"menuName\":[\"我的书吧\"],\"url\":[\"study/main\"],\"target\":[\"menuItem\"],\"perms\":[\"study:main:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 09:57:09');
INSERT INTO `sys_oper_log` VALUES ('341', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1070\"],\"menuType\":[\"C\"],\"menuName\":[\"我的书房\"],\"url\":[\"study/main\"],\"target\":[\"menuItem\"],\"perms\":[\"study:main:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-mortar-board\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 09:57:58');
INSERT INTO `sys_oper_log` VALUES ('342', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1070\"],\"menuType\":[\"C\"],\"menuName\":[\"圈子管理\"],\"url\":[\"study/circle\"],\"target\":[\"menuItem\"],\"perms\":[\"study:circle:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 09:58:31');
INSERT INTO `sys_oper_log` VALUES ('343', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"书吧类型\"],\"dictType\":[\"study_type\"],\"status\":[\"0\"],\"remark\":[\"个人 单位\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:17:27');
INSERT INTO `sys_oper_log` VALUES ('344', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"个人\"],\"dictValue\":[\"1\"],\"dictType\":[\"study_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:18:10');
INSERT INTO `sys_oper_log` VALUES ('345', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"单位\"],\"dictValue\":[\"2\"],\"dictType\":[\"study_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:18:23');
INSERT INTO `sys_oper_log` VALUES ('346', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1072\"],\"parentId\":[\"1070\"],\"menuType\":[\"C\"],\"menuName\":[\"我的书房\"],\"url\":[\"study2/main\"],\"target\":[\"menuItem\"],\"perms\":[\"study:main:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-mortar-board\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:30:29');
INSERT INTO `sys_oper_log` VALUES ('347', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.study.StudyMainController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/main/add', '127.0.0.1', '内网IP', '{\"name\":[\"测试我的书吧\"],\"type\":[\"2\"],\"address\":[\"芜湖鸠江区东紫园\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"0\"],\"leader\":[\"汪曾兵\"],\"number\":[\"0000000001\"],\"introduction\":[\"好的 一切安好\"],\"remark\":[\"好的 一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:45:17');
INSERT INTO `sys_oper_log` VALUES ('348', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyMainController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/main/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"测试我的书吧\"],\"type\":[\"2\"],\"address\":[\"芜湖鸠江区东紫园\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"1\"],\"leader\":[\"汪曾兵\"],\"remark\":[\"好的 一切安好\"],\"number\":[\"0000000001\"],\"introduction\":[\"好的 一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:53:04');
INSERT INTO `sys_oper_log` VALUES ('349', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyMainController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/main/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"测试我的书吧\"],\"type\":[\"2\"],\"address\":[\"芜湖鸠江区东紫园\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"0\"],\"leader\":[\"汪曾兵\"],\"remark\":[\"好的 一切安好\"],\"number\":[\"0000000001\"],\"introduction\":[\"好的 一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 10:53:08');
INSERT INTO `sys_oper_log` VALUES ('350', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.study.StudyMain2Controller.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/study2/main/add', '127.0.0.1', '内网IP', '{\"name\":[\"测试我的书房\"],\"type\":[\"1\"],\"address\":[\"芜湖东紫园32栋1单元602\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"0\"],\"leader\":[\"汪曾兵\"],\"number\":[\"0000000002\"],\"introduction\":[\"好的  一切安好\"],\"remark\":[\"好的  一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:01:12');
INSERT INTO `sys_oper_log` VALUES ('351', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyMain2Controller.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study2/main/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"测试我的书房\"],\"type\":[\"1\"],\"address\":[\"芜湖东紫园32栋1单元602汪曾兵\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"1\"],\"leader\":[\"汪曾兵\"],\"remark\":[\"好的  一切安好\"],\"number\":[\"0000000002\"],\"introduction\":[\"好的  一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:01:23');
INSERT INTO `sys_oper_log` VALUES ('352', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyMain2Controller.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study2/main/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"测试我的书房\"],\"type\":[\"1\"],\"address\":[\"芜湖东紫园32栋1单元602\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"0\"],\"leader\":[\"汪曾兵\"],\"remark\":[\"好的  一切安好\"],\"number\":[\"0000000002\"],\"introduction\":[\"好的  一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:01:34');
INSERT INTO `sys_oper_log` VALUES ('353', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyMain2Controller.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study2/main/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"测试我的书房\"],\"type\":[\"1\"],\"address\":[\"芜湖东紫园32栋1单元602\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"1\"],\"leader\":[\"汪曾兵\"],\"remark\":[\"好的  一切安好\"],\"number\":[\"0000000002\"],\"introduction\":[\"好的  一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:01:38');
INSERT INTO `sys_oper_log` VALUES ('354', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyMain2Controller.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study2/main/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"测试我的书房\"],\"type\":[\"1\"],\"address\":[\"芜湖东紫园32栋1单元602\"],\"hostMsg\":[\"好的  一切安好\"],\"recommendBooks\":[\"后青春式眷恋\"],\"phone\":[\"13093692146\"],\"email\":[\"1396627527@qq.com\"],\"status\":[\"0\"],\"leader\":[\"汪曾兵\"],\"remark\":[\"好的  一切安好\"],\"number\":[\"0000000002\"],\"introduction\":[\"好的  一切安好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:01:41');
INSERT INTO `sys_oper_log` VALUES ('355', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"心情驿站\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-heart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:10:18');
INSERT INTO `sys_oper_log` VALUES ('356', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.study.StudyCircleController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/circle/add', '127.0.0.1', '内网IP', '{\"number\":[\"circle_0000000001\"],\"name\":[\"测试书吧圈子\"],\"introduction\":[\"都好  一切安好\"],\"address\":[\"芜湖东紫园\"],\"slogan\":[\"都好  一切安好\"],\"remark\":[\"都好  一切安好\"],\"leader\":[\"汪曾兵\"]}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'number\' at row 1\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\study\\StudyCircleMapper.xml]\r\n### The error may involve com.ruoyi.study.mapper.StudyCircleMapper.insertStudyCircle-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into study_circle          ( number,             name,             introduction,                                       address,             slogan,             createTime,                                                    remark,                                       leader )           values ( ?,             ?,             ?,                                       ?,             ?,             ?,                                                    ?,                                       ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'number\' at row 1\n; Data truncation: Data too long for column \'number\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'number\' at row 1', '2021-08-01 11:15:28');
INSERT INTO `sys_oper_log` VALUES ('357', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.study.StudyCircleController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/circle/add', '127.0.0.1', '内网IP', '{\"number\":[\"circle_0000000001\"],\"name\":[\"测试书吧圈子\"],\"introduction\":[\"都好  一切安好\"],\"address\":[\"芜湖东紫园\"],\"slogan\":[\"都好  一切安好\"],\"remark\":[\"都好  一切安好\"],\"leader\":[\"汪曾兵\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:15:58');
INSERT INTO `sys_oper_log` VALUES ('358', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.study.StudyCircleController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/circle/add', '127.0.0.1', '内网IP', '{\"number\":[\"circle_00000002\"],\"name\":[\"测试圈子2成员\"],\"introduction\":[\"都好 一切安好\"],\"personNumber\":[\"10\"],\"address\":[\"芜湖鸠江东紫园\"],\"slogan\":[\"都好 一切安好\"],\"remark\":[\"都好 一切安好\"],\"leader\":[\"汪曾兵\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:18:13');
INSERT INTO `sys_oper_log` VALUES ('359', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.study.StudyCircleController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/study/circle/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:18:33');
INSERT INTO `sys_oper_log` VALUES ('360', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.study.StudyCircleController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/study/circle/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"number\":[\"circle_00000002\"],\"name\":[\"测试圈子2成员\"],\"introduction\":[\"都好 一切安好\"],\"personNumber\":[\"12\"],\"address\":[\"芜湖鸠江东紫园\"],\"slogan\":[\"都好 一切安好\"],\"remark\":[\"都好 一切安好\"],\"leader\":[\"汪曾兵\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-01 11:19:24');
INSERT INTO `sys_oper_log` VALUES ('361', '用户管理', '1', 'com.ruoyi.web.controller.personality.PersonaLityPicController.addPic()', 'POST', '1', 'suyuan', '学芊科技', '/personality/pic/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"number\":[\"wxq_0000000001\"],\"type\":[\"5\"],\"picUrl\":[\"/profile/random/2021/08/09/85057b90-dda3-4e2c-a0d3-2badbda18198.jpg\"],\"name\":[\"IMG_20210806_121808.jpg\"],\"picshow\":[\"汪学芊\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:31:25');
INSERT INTO `sys_oper_log` VALUES ('362', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"人物风情\"],\"dictValue\":[\"6\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:32:43');
INSERT INTO `sys_oper_log` VALUES ('363', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"63\"],\"dictLabel\":[\"人物\"],\"dictValue\":[\"6\"],\"dictType\":[\"pic_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:32:53');
INSERT INTO `sys_oper_log` VALUES ('364', '美图修改', '2', 'com.ruoyi.web.controller.personality.PersonaLityPicController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/pic/edit', '127.0.0.1', '内网IP', '{\"id\":[\"27\"],\"number\":[\"wxq_0000000001\"],\"type\":[\"6\"],\"picUrl\":[\"/profile/random/2021/08/09/85057b90-dda3-4e2c-a0d3-2badbda18198.jpg\"],\"name\":[\"IMG_20210806_121808.jpg\"],\"picshow\":[\"汪学芊\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:33:31');
INSERT INTO `sys_oper_log` VALUES ('365', '图文修改', '2', 'com.ruoyi.web.controller.personality.LettresController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/personality/lettres/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"content\":[\"<h2 style=\\\"text-align: center; \\\"><b>我们的日子为什么一去不复返？</b></h2><p><img src=\\\"http://localhost:8081/profile/summernote/2021/04/03/30b7461d-3402-45ee-99ee-d13948b7802b.jpg\\\" style=\\\"width: 25%; float: left;\\\" class=\\\"note-float-left\\\"><u><b>去额前恶趣味请问的去问驱wq的期望去污粉全微分无法无法完全放弃违法额分分威风威风为</b></u></p><p><u><b>蚊器我我分威风威风</b></u><u><b>威风士大夫士wq亲卫队请问物权法纷纷为分为氛围分为温度范围废弃物</b></u></p><p><u><b>夫的威风威风威风纷纷为分武都区武都区武都区完全纷纷是个发发俄方纷纷分为氛围请问请问</b></u></p><p><u><b>为氛围</b></u><u><b>十三点VS俄方微我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u></p><p><u><b>风威风撒发顺丰测试我的确我的父亲违反物权法威风威风威风我给忘却的威风威风份未发确定</b></u></p><p><u><b>服额分色法</b>。为请问请问亲人犬瘟热无法为额威风威风威风威风威风威风我</u><u><b>我轻微的轻微的轻微的我去服务器服务器发起我为分为氛围全方位为</b></u><u><b>风威风撒发顺丰测试我的确我的父亲违反物。</b></u></p><p>&nbsp; &nbsp; 的份未发各位各位各位各位如果在任何责任为公司果然是个主人公说的不是第八十八章是微风分三个VSDB他今天已经如题如题二VS给v额是各个不知道湖人队或者那封公开信护士小姐<u><b><br></b></u></p>\"],\"number\":[\"article_20210403_00001\"],\"type\":[\"3\"],\"title\":[\"测试样本\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:35:22');
INSERT INTO `sys_oper_log` VALUES ('366', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"ry\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:39:15');
INSERT INTO `sys_oper_log` VALUES ('367', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"投稿管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-photo\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-08-09 11:42:54');
INSERT INTO `sys_oper_log` VALUES ('368', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'suyuan', '学芊科技', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sign_list,sign_record,sign_habit\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:07:12');
INSERT INTO `sys_oper_log` VALUES ('369', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'suyuan', '学芊科技', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sign_habit,sign_list,sign_record\"]}', 'null', '0', null, '2022-04-28 23:07:18');
INSERT INTO `sys_oper_log` VALUES ('370', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'suyuan', '学芊科技', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sign_habit,sign_list,sign_record\"]}', 'null', '0', null, '2022-04-28 23:07:40');
INSERT INTO `sys_oper_log` VALUES ('371', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'suyuan', '学芊科技', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sign_habit,sign_list,sign_record\"]}', 'null', '0', null, '2022-04-28 23:07:45');
INSERT INTO `sys_oper_log` VALUES ('372', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"签到打卡\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-edit\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:29:01');
INSERT INTO `sys_oper_log` VALUES ('373', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1074\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"投稿管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-photo\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:29:14');
INSERT INTO `sys_oper_log` VALUES ('374', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1075\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"签到打卡\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-edit\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:29:19');
INSERT INTO `sys_oper_log` VALUES ('375', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"习惯管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-adjust\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:31:35');
INSERT INTO `sys_oper_log` VALUES ('376', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"签到记录\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-area-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:32:23');
INSERT INTO `sys_oper_log` VALUES ('377', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1076\"],\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"习惯管理\"],\"url\":[\"sign/habit\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-adjust\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:34:36');
INSERT INTO `sys_oper_log` VALUES ('378', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1076\"],\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"习惯管理\"],\"url\":[\"sign/habit\"],\"target\":[\"menuItem\"],\"perms\":[\"sign:habit:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-adjust\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:35:04');
INSERT INTO `sys_oper_log` VALUES ('379', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1077\"],\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"签到记录\"],\"url\":[\"sign/record\"],\"target\":[\"menuItem\"],\"perms\":[\"sign:record:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-area-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-28 23:37:43');
INSERT INTO `sys_oper_log` VALUES ('380', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 00:06:56');
INSERT INTO `sys_oper_log` VALUES ('381', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"读书\"],\"habitDesc\":[\"每天进行一定量的阅读\"],\"habitHot\":[\"1\"]}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'create_by\' at row 1\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignHabitMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignHabitMapper.insertSignHabit-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sign_habit          ( habit_name,             habit_desc,             habit_hot,             create_time,             create_by )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'create_by\' at row 1\n; Data truncation: Data too long for column \'create_by\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'create_by\' at row 1', '2022-04-29 00:14:09');
INSERT INTO `sys_oper_log` VALUES ('382', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"读书\"],\"habitDesc\":[\"读书\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 00:21:32');
INSERT INTO `sys_oper_log` VALUES ('383', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"写作\"],\"habitDesc\":[\"写作\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 00:23:30');
INSERT INTO `sys_oper_log` VALUES ('384', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"早睡早起\"],\"habitDesc\":[\"早睡早起\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 00:23:41');
INSERT INTO `sys_oper_log` VALUES ('385', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 00:24:15');
INSERT INTO `sys_oper_log` VALUES ('386', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignHabitController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 13:34:29');
INSERT INTO `sys_oper_log` VALUES ('387', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"读书\"],\"habitDesc\":[\"读书\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 13:34:39');
INSERT INTO `sys_oper_log` VALUES ('388', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-04-29\"],\"signDesc\":[\"今日打卡\"],\"signTime\":[\"2022-04-29 13:51:29\"],\"lastTime\":[\"2022-04-29 13:51:29\"],\"signExperience\":[\"第一次测试\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'sign_user\' doesn\'t have a default value\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignRecordMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignRecordMapper.insertSignRecord-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sign_record          ( sign_date,             sign_desc,                          sign_time,             last_time,             sign_experience )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'sign_user\' doesn\'t have a default value\n; Field \'sign_user\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'sign_user\' doesn\'t have a default value', '2022-04-29 13:51:58');
INSERT INTO `sys_oper_log` VALUES ('389', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-04-29\"],\"signDesc\":[\"今日打卡\"],\"signTime\":[\"2022-04-29 13:54:47\"],\"lastTime\":[\"2022-04-29 13:54:47\"],\"signExperience\":[\"第一次打卡测试\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 13:55:10');
INSERT INTO `sys_oper_log` VALUES ('390', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignRecordController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 13:58:20');
INSERT INTO `sys_oper_log` VALUES ('391', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-04-29\"],\"signDesc\":[\"今日打卡\"],\"signTime\":[\"2022-04-29 13:58:22\"],\"lastTime\":[\"2022-04-29 13:58:22\"],\"signExperience\":[\"第一次打卡测试\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 13:58:42');
INSERT INTO `sys_oper_log` VALUES ('392', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"号的\"],\"startTime\":[\"2022-04-29 14:22:29\"],\"endTime\":[\"2022-04-29 15:15:29\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'record_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignListMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignListMapper.insertSignList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sign_list          ( sign_duration_hour,             sign_duration_minute,             sign_experience,             start_time,             end_time )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'record_id\' doesn\'t have a default value\n; Field \'record_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'record_id\' doesn\'t have a default value', '2022-04-29 18:44:57');
INSERT INTO `sys_oper_log` VALUES ('393', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"3\"],\"habitName\":[\"写作\"],\"habitDesc\":[\"写作\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:03:25');
INSERT INTO `sys_oper_log` VALUES ('394', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"4\"],\"habitName\":[\"早睡早起\"],\"habitDesc\":[\"早睡早起\"],\"habitHot\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:03:30');
INSERT INTO `sys_oper_log` VALUES ('395', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"心得\"],\"startTime\":[\"2022-04-29 21:07:41\"],\"endTime\":[\"2022-04-29 21:14:41\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'habit_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignListMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignListMapper.insertSignList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sign_list          ( record_id,                          sign_duration_hour,             sign_duration_minute,             sign_experience,             start_time,             end_time )           values ( ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'habit_id\' doesn\'t have a default value\n; Field \'habit_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'habit_id\' doesn\'t have a default value', '2022-04-29 21:08:13');
INSERT INTO `sys_oper_log` VALUES ('396', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-29 21:11:13\"],\"endTime\":[\"2022-04-29 21:26:13\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:11:29');
INSERT INTO `sys_oper_log` VALUES ('397', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:26:38');
INSERT INTO `sys_oper_log` VALUES ('398', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-29 21:17:40\"],\"endTime\":[\"2022-04-29 21:59:40\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'record_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignListMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignListMapper.insertSignList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sign_list          ( habit_id,             sign_duration_hour,             sign_duration_minute,             sign_experience,             start_time,             end_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'record_id\' doesn\'t have a default value\n; Field \'record_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'record_id\' doesn\'t have a default value', '2022-04-29 21:27:01');
INSERT INTO `sys_oper_log` VALUES ('399', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-29 01:08:50\"],\"endTime\":[\"2022-04-29 21:18:50\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:49:22');
INSERT INTO `sys_oper_log` VALUES ('400', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-29 14:18:39\"],\"endTime\":[\"2022-04-13 10:10:39\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:53:00');
INSERT INTO `sys_oper_log` VALUES ('401', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"10\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-29 13:13:52\"],\"endTime\":[\"2022-04-29 05:14:52\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 21:55:09');
INSERT INTO `sys_oper_log` VALUES ('402', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"12\"],\"signExperience\":[\"12\"],\"startTime\":[\"22:22:12\"],\"endTime\":[\"22:22:12\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'habit_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignListMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignListMapper.insertSignList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sign_list          ( record_id,                          sign_duration_hour,             sign_duration_minute,             sign_experience )           values ( ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'habit_id\' doesn\'t have a default value\n; Field \'habit_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'habit_id\' doesn\'t have a default value', '2022-04-29 22:22:31');
INSERT INTO `sys_oper_log` VALUES ('403', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"12\"],\"signExperience\":[\"12\"],\"startTime\":[\"22:22:12\"],\"endTime\":[\"22:22:12\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:22:45');
INSERT INTO `sys_oper_log` VALUES ('404', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:29:37');
INSERT INTO `sys_oper_log` VALUES ('405', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"12\"],\"signExperience\":[\"1233\"],\"startTime\":[\"2022-04-29 01:06:24\"],\"endTime\":[\"2022-04-29 10:14:24\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:47:41');
INSERT INTO `sys_oper_log` VALUES ('406', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:47:44');
INSERT INTO `sys_oper_log` VALUES ('407', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:47:46');
INSERT INTO `sys_oper_log` VALUES ('408', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:47:48');
INSERT INTO `sys_oper_log` VALUES ('409', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-04-30\"],\"signDesc\":[\"今日打卡\"],\"signTime\":[\"2022-04-29 22:48:08\"],\"lastTime\":[\"2022-04-29 22:48:08\"],\"signExperience\":[\"玩儿\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:48:32');
INSERT INTO `sys_oper_log` VALUES ('410', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"个人网站\"],\"habitDesc\":[\"编码个人媒体网站\"],\"habitHot\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:49:46');
INSERT INTO `sys_oper_log` VALUES ('411', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感\"],\"startTime\":[\"2022-04-29 13:05:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-29 22:50:24');
INSERT INTO `sys_oper_log` VALUES ('412', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignHabitController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/add', '127.0.0.1', '内网IP', '{\"habitName\":[\"游戏\"],\"habitDesc\":[\"休闲\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 11:14:49');
INSERT INTO `sys_oper_log` VALUES ('413', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:10:08');
INSERT INTO `sys_oper_log` VALUES ('414', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"4\"],\"habitName\":[\"早睡早起\"],\"habitDesc\":[\"早睡早起\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:10:12');
INSERT INTO `sys_oper_log` VALUES ('415', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"6\"],\"habitName\":[\"个人网站\"],\"habitDesc\":[\"编码个人媒体网站\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:10:15');
INSERT INTO `sys_oper_log` VALUES ('416', '定时任务', '1', 'com.ruoyi.quartz.controller.SysJobController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/add', '127.0.0.1', '内网IP', '{\"createBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"task.babitHotTask()\"],\"cronExpression\":[\"0/30 * * * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:25:26');
INSERT INTO `sys_oper_log` VALUES ('417', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"jobGroup\":[\"SYSTEM\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:25:30');
INSERT INTO `sys_oper_log` VALUES ('418', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0/30 * * * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:28:52');
INSERT INTO `sys_oper_log` VALUES ('419', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:28:56');
INSERT INTO `sys_oper_log` VALUES ('420', '调度日志', '3', 'com.ruoyi.quartz.controller.SysJobLogController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/jobLog/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4,3,2,1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:29:28');
INSERT INTO `sys_oper_log` VALUES ('421', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"1\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-30 15:19:59\"],\"endTime\":[\"2022-04-30 15:19:59\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:30:18');
INSERT INTO `sys_oper_log` VALUES ('422', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"3\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"2\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"满意，问题得到解决\"],\"startTime\":[\"2022-04-30 11:11:23\"],\"endTime\":[\"2022-04-30 15:31:23\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:31:52');
INSERT INTO `sys_oper_log` VALUES ('423', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6,8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:35:01');
INSERT INTO `sys_oper_log` VALUES ('424', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"3\"],\"habitId\":[\"7\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"0\"],\"signExperience\":[\"满意\"],\"startTime\":[\"2022-04-30 12:02:14\"],\"endTime\":[\"2022-04-30 13:02:14\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:35:39');
INSERT INTO `sys_oper_log` VALUES ('425', '定时任务', '3', 'com.ruoyi.quartz.controller.SysJobController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:36:58');
INSERT INTO `sys_oper_log` VALUES ('426', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0/50 * * * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:37:14');
INSERT INTO `sys_oper_log` VALUES ('427', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0 */1 * * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:39:09');
INSERT INTO `sys_oper_log` VALUES ('428', '调度日志', '3', 'com.ruoyi.quartz.controller.SysJobLogController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/jobLog/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"26,25,24,23,22,21,20,19,18,17\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:39:20');
INSERT INTO `sys_oper_log` VALUES ('429', '调度日志', '9', 'com.ruoyi.quartz.controller.SysJobLogController.clean()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/jobLog/clean', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:39:24');
INSERT INTO `sys_oper_log` VALUES ('430', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0 0 */1 * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:41:12');
INSERT INTO `sys_oper_log` VALUES ('431', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0 */1 * * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:52:16');
INSERT INTO `sys_oper_log` VALUES ('432', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"3\"],\"habitId\":[\"5\"],\"signDurationHour\":[\"0\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"玩儿\"],\"startTime\":[\"2022-04-30 15:15:23\"],\"endTime\":[\"2022-04-30 15:19:23\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:53:42');
INSERT INTO `sys_oper_log` VALUES ('433', '调度日志', '9', 'com.ruoyi.quartz.controller.SysJobLogController.clean()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/jobLog/clean', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:56:36');
INSERT INTO `sys_oper_log` VALUES ('434', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0  0 */1 * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-04-30 15:56:57');
INSERT INTO `sys_oper_log` VALUES ('435', '调度日志', '9', 'com.ruoyi.quartz.controller.SysJobLogController.clean()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/jobLog/clean', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 15:04:40');
INSERT INTO `sys_oper_log` VALUES ('436', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-05-03\"],\"signDesc\":[\"无意义的一天\"],\"signTime\":[\"2022-05-03 15:04:53\"],\"lastTime\":[\"2022-05-03 15:04:53\"],\"signExperience\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 15:06:14');
INSERT INTO `sys_oper_log` VALUES ('437', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"签到统计\"],\"url\":[\"sign/statistics\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 16:26:36');
INSERT INTO `sys_oper_log` VALUES ('438', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1078\"],\"parentId\":[\"1075\"],\"menuType\":[\"C\"],\"menuName\":[\"签到统计\"],\"url\":[\"sign/statistics\"],\"target\":[\"menuItem\"],\"perms\":[\"sign:statistics:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 16:26:54');
INSERT INTO `sys_oper_log` VALUES ('439', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"4\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"2\"],\"signDurationMinute\":[\"0\"],\"signExperience\":[\"1\"],\"startTime\":[\"2022-05-03 15:15:24\"],\"endTime\":[\"2022-05-03 17:15:24\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 17:45:53');
INSERT INTO `sys_oper_log` VALUES ('440', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"4\"],\"habitId\":[\"7\"],\"signDurationHour\":[\"3\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"2\"],\"startTime\":[\"2022-05-03 11:11:55\"],\"endTime\":[\"2022-05-03 14:11:55\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 17:46:21');
INSERT INTO `sys_oper_log` VALUES ('441', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"4\"],\"habitId\":[\"5\"],\"signDurationHour\":[\"0\"],\"signDurationMinute\":[\"40\"],\"signExperience\":[\"2\"],\"startTime\":[\"2022-05-03 17:10:48\"],\"endTime\":[\"2022-05-03 17:30:48\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 17:47:10');
INSERT INTO `sys_oper_log` VALUES ('442', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0  */1 * * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:03:50');
INSERT INTO `sys_oper_log` VALUES ('443', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式2\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:04:36');
INSERT INTO `sys_oper_log` VALUES ('444', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:04:45');
INSERT INTO `sys_oper_log` VALUES ('445', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"habitId\":[\"5\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"1\"],\"signExperience\":[\"1\"],\"startTime\":[\"2022-05-03 18:05:41\"],\"endTime\":[\"2022-05-03 18:09:41\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:06:00');
INSERT INTO `sys_oper_log` VALUES ('446', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:06:38');
INSERT INTO `sys_oper_log` VALUES ('447', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"],\"updateBy\":[\"suyuan\"],\"jobName\":[\"习惯热度定时任务\"],\"jobGroup\":[\"SYSTEM\"],\"invokeTarget\":[\"babitHotTask.babitHot()\"],\"cronExpression\":[\"0 0 */1 * * ?\"],\"misfirePolicy\":[\"1\"],\"concurrent\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:06:57');
INSERT INTO `sys_oper_log` VALUES ('448', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"3\"],\"habitName\":[\"写作\"],\"habitDesc\":[\"小说、散文创作 \"],\"habitHot\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:07:40');
INSERT INTO `sys_oper_log` VALUES ('449', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"4\"],\"habitName\":[\"早睡早起\"],\"habitDesc\":[\"健康作息\"],\"habitHot\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:07:47');
INSERT INTO `sys_oper_log` VALUES ('450', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"5\"],\"habitName\":[\"读书\"],\"habitDesc\":[\"文学爱好\"],\"habitHot\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:07:55');
INSERT INTO `sys_oper_log` VALUES ('451', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"6\"],\"habitName\":[\"个人网站\"],\"habitDesc\":[\"编码个人媒体网站\"],\"habitHot\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:08:01');
INSERT INTO `sys_oper_log` VALUES ('452', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"7\"],\"habitName\":[\"游戏\"],\"habitDesc\":[\"娱乐休闲\"],\"habitHot\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:08:07');
INSERT INTO `sys_oper_log` VALUES ('453', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:08:17');
INSERT INTO `sys_oper_log` VALUES ('454', '【签到打卡】', '2', 'com.ruoyi.web.controller.sign.SignRecordController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/edit', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"signDate\":[\"2022-04-29\"],\"signDesc\":[\"今日打卡测试修改\"],\"signTime\":[\"2022-04-29\"],\"signExperience\":[\"第一次打卡测试2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:18:51');
INSERT INTO `sys_oper_log` VALUES ('455', '【签到打卡】', '2', 'com.ruoyi.web.controller.sign.SignRecordController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/edit', '127.0.0.1', '内网IP', '{\"recordId\":[\"3\"],\"signDate\":[\"2022-04-30\"],\"signDesc\":[\"今日打卡\"],\"signTime\":[\"2022-04-29\"],\"signExperience\":[\"玩儿3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:19:16');
INSERT INTO `sys_oper_log` VALUES ('456', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-05-03\"],\"signDesc\":[\"1\"],\"signTime\":[\"2022-04-27 18:02:50\"],\"lastTime\":[\"2022-04-28 06:05:50\"],\"signExperience\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:20:01');
INSERT INTO `sys_oper_log` VALUES ('457', '【删除签到打卡】', '3', 'com.ruoyi.web.controller.sign.SignRecordController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 18:20:04');
INSERT INTO `sys_oper_log` VALUES ('458', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:00:22');
INSERT INTO `sys_oper_log` VALUES ('459', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:00:53');
INSERT INTO `sys_oper_log` VALUES ('460', '【删除签到打卡】', '3', 'com.ruoyi.web.controller.sign.SignRecordController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:01:11');
INSERT INTO `sys_oper_log` VALUES ('461', '【签到打卡】', '2', 'com.ruoyi.web.controller.sign.SignRecordController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/edit', '127.0.0.1', '内网IP', '{\"recordId\":[\"2\"],\"signDate\":[\"2022-04-29\"],\"signDesc\":[\"今日打卡测试修改\"],\"signTime\":[\"2022-04-29\"],\"signExperience\":[\"第一次打卡测试\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:01:43');
INSERT INTO `sys_oper_log` VALUES ('462', '【签到打卡】', '2', 'com.ruoyi.web.controller.sign.SignRecordController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/edit', '127.0.0.1', '内网IP', '{\"recordId\":[\"3\"],\"signDate\":[\"2022-04-30\"],\"signDesc\":[\"今日打卡\"],\"signTime\":[\"2022-04-29\"],\"signExperience\":[\"玩儿\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:01:48');
INSERT INTO `sys_oper_log` VALUES ('463', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:17:23');
INSERT INTO `sys_oper_log` VALUES ('464', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:34:35');
INSERT INTO `sys_oper_log` VALUES ('465', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:34:51');
INSERT INTO `sys_oper_log` VALUES ('466', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:35:16');
INSERT INTO `sys_oper_log` VALUES ('467', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:35:23');
INSERT INTO `sys_oper_log` VALUES ('468', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:35:28');
INSERT INTO `sys_oper_log` VALUES ('469', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"9\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"2\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"满意，问题得到解决\"],\"startTime\":[\"2022-04-30 11:11:23\"],\"endTime\":[\"2022-04-30 15:31:23\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:35:49');
INSERT INTO `sys_oper_log` VALUES ('470', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:37:00');
INSERT INTO `sys_oper_log` VALUES ('471', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:37:04');
INSERT INTO `sys_oper_log` VALUES ('472', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:40:12');
INSERT INTO `sys_oper_log` VALUES ('473', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:41:10');
INSERT INTO `sys_oper_log` VALUES ('474', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"7\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:41:25');
INSERT INTO `sys_oper_log` VALUES ('475', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"7\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:41:50');
INSERT INTO `sys_oper_log` VALUES ('476', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"5\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:42:15');
INSERT INTO `sys_oper_log` VALUES ('477', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'写作\' for column \'habit_id\' at row 1\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignListMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignListMapper.updateSignList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sign_list          SET habit_id = ?,             habit_id = ?,             sign_duration_hour = ?,             sign_duration_minute = ?,             sign_experience = ?,             start_time = ?,             end_time = ?          where sign_record_id = ?\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'写作\' for column \'habit_id\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'写作\' for column \'habit_id\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'写作\' for column \'habit_id\' at row 1', '2022-05-03 22:44:17');
INSERT INTO `sys_oper_log` VALUES ('478', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'写作\' for column \'habit_id\' at row 1\r\n### The error may exist in file [D:\\wcb_test\\y_project-RuoYi-master\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\sign\\SignListMapper.xml]\r\n### The error may involve com.ruoyi.sign.mapper.SignListMapper.updateSignList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sign_list          SET habit_id = ?,             habit_id = ?,             sign_duration_hour = ?,             sign_duration_minute = ?,             sign_experience = ?,             start_time = ?,             end_time = ?          where sign_record_id = ?\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'写作\' for column \'habit_id\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'写作\' for column \'habit_id\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'写作\' for column \'habit_id\' at row 1', '2022-05-03 22:46:54');
INSERT INTO `sys_oper_log` VALUES ('479', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:48:05');
INSERT INTO `sys_oper_log` VALUES ('480', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"4\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:48:17');
INSERT INTO `sys_oper_log` VALUES ('481', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:49:28');
INSERT INTO `sys_oper_log` VALUES ('482', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"7\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"很有成就感2\"],\"startTime\":[\"2022-04-29 12:04:54\"],\"endTime\":[\"2022-04-29 22:49:54\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:49:34');
INSERT INTO `sys_oper_log` VALUES ('483', '【请填写功能名称】', '5', 'com.ruoyi.web.controller.sign.SignHabitController.export()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/export', '127.0.0.1', '内网IP', '{\"habitName\":[\"\"],\"habitDesc\":[\"\"],\"habitHot\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"bedcd036-febd-456a-9615-fc2ec4fdabd6_habit.xlsx\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 22:53:24');
INSERT INTO `sys_oper_log` VALUES ('484', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-05-03\"],\"signDesc\":[\"网站完善\"],\"signTime\":[\"2022-05-03 15:04:34\"],\"lastTime\":[\"2022-05-03 23:04:34\"],\"signExperience\":[\"很好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 23:05:32');
INSERT INTO `sys_oper_log` VALUES ('485', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"6\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"4\"],\"signDurationMinute\":[\"5\"],\"signExperience\":[\"达到预期\"],\"startTime\":[\"2022-05-03 15:05:38\"],\"endTime\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 23:06:12');
INSERT INTO `sys_oper_log` VALUES ('486', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 23:08:00');
INSERT INTO `sys_oper_log` VALUES ('487', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignListController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/edit', '127.0.0.1', '内网IP', '{\"signRecordId\":[\"9\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"2\"],\"signDurationMinute\":[\"15\"],\"signExperience\":[\"满意，问题得到解决\"],\"startTime\":[\"2022-04-30 11:11:23\"],\"endTime\":[\"2022-04-30 15:31:23\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-03 23:09:13');
INSERT INTO `sys_oper_log` VALUES ('488', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignHabitController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:31:29');
INSERT INTO `sys_oper_log` VALUES ('489', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:31:48');
INSERT INTO `sys_oper_log` VALUES ('490', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9,10,11\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:32:05');
INSERT INTO `sys_oper_log` VALUES ('491', '【请填写功能名称】', '3', 'com.ruoyi.web.controller.sign.SignListController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:32:10');
INSERT INTO `sys_oper_log` VALUES ('492', '【删除签到打卡】', '3', 'com.ruoyi.web.controller.sign.SignRecordController.remove()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2,3,6\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:32:56');
INSERT INTO `sys_oper_log` VALUES ('493', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-05-04\"],\"signDesc\":[\"正式打卡第一天，五四青年节\"],\"signTime\":[\"2022-05-04 20:33:08\"],\"lastTime\":[\"2022-05-04 20:33:08\"],\"signExperience\":[\"做有志青年\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:34:12');
INSERT INTO `sys_oper_log` VALUES ('494', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:34:28');
INSERT INTO `sys_oper_log` VALUES ('495', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"3\"],\"habitName\":[\"写作\"],\"habitDesc\":[\"小说、散文创作 \"],\"habitHot\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:34:32');
INSERT INTO `sys_oper_log` VALUES ('496', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"5\"],\"habitName\":[\"读书\"],\"habitDesc\":[\"文学爱好\"],\"habitHot\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:34:36');
INSERT INTO `sys_oper_log` VALUES ('497', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"6\"],\"habitName\":[\"个人网站\"],\"habitDesc\":[\"编码个人媒体网站\"],\"habitHot\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:34:40');
INSERT INTO `sys_oper_log` VALUES ('498', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"7\"],\"habitName\":[\"游戏\"],\"habitDesc\":[\"娱乐休闲\"],\"habitHot\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:34:43');
INSERT INTO `sys_oper_log` VALUES ('499', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"7\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"0\"],\"signDurationMinute\":[\"43\"],\"signExperience\":[\"找感觉中\"],\"startTime\":[\"2022-05-04 19:34:48\"],\"endTime\":[\"2022-05-04 20:20:48\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:35:51');
INSERT INTO `sys_oper_log` VALUES ('500', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"7\"],\"habitId\":[\"7\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"颓废\"],\"startTime\":[\"2022-05-04 10:18:56\"],\"endTime\":[\"2022-05-04 11:48:56\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:36:32');
INSERT INTO `sys_oper_log` VALUES ('501', '调度日志', '9', 'com.ruoyi.quartz.controller.SysJobLogController.clean()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/jobLog/clean', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:37:00');
INSERT INTO `sys_oper_log` VALUES ('502', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-04 20:37:05');
INSERT INTO `sys_oper_log` VALUES ('503', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-05-05\"],\"signDesc\":[\"新公司报道\"],\"signTime\":[\"2022-05-05 22:20:41\"],\"lastTime\":[\"2022-05-05 22:20:41\"],\"signExperience\":[\"不加班很好\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-05 22:21:24');
INSERT INTO `sys_oper_log` VALUES ('504', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"8\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"0\"],\"signDurationMinute\":[\"38\"],\"signExperience\":[\"找节奏中\"],\"startTime\":[\"2022-05-05 19:57:30\"],\"endTime\":[\"2022-05-05 20:35:30\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-05 22:23:01');
INSERT INTO `sys_oper_log` VALUES ('505', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-05 22:23:24');
INSERT INTO `sys_oper_log` VALUES ('506', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-05 22:24:29');
INSERT INTO `sys_oper_log` VALUES ('507', '【请填写功能名称】', '2', 'com.ruoyi.web.controller.sign.SignHabitController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/habit/edit', '127.0.0.1', '内网IP', '{\"habitId\":[\"1\"],\"habitName\":[\"跑步\"],\"habitDesc\":[\"健身的一种方式\"],\"habitHot\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-05 22:25:08');
INSERT INTO `sys_oper_log` VALUES ('508', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-05 22:26:19');
INSERT INTO `sys_oper_log` VALUES ('509', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-05-08\"],\"signDesc\":[\"不太愉快的假期\"],\"signTime\":[\"2022-05-08 21:07:23\"],\"lastTime\":[\"2022-05-08 21:07:23\"],\"signExperience\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 21:08:38');
INSERT INTO `sys_oper_log` VALUES ('510', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"9\"],\"habitId\":[\"1\"],\"signDurationHour\":[\"0\"],\"signDurationMinute\":[\"56\"],\"signExperience\":[\"满意\"],\"startTime\":[\"\"],\"endTime\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 21:09:19');
INSERT INTO `sys_oper_log` VALUES ('511', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"9\"],\"habitId\":[\"5\"],\"signDurationHour\":[\"0\"],\"signDurationMinute\":[\"45\"],\"signExperience\":[\"1\"],\"startTime\":[\"\"],\"endTime\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 21:10:58');
INSERT INTO `sys_oper_log` VALUES ('512', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 21:12:16');
INSERT INTO `sys_oper_log` VALUES ('513', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"9\"],\"habitId\":[\"3\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"5\"],\"signExperience\":[\"1\"],\"startTime\":[\"2022-04-27 01:01:04\"],\"endTime\":[\"2022-04-28 02:02:05\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 22:17:59');
INSERT INTO `sys_oper_log` VALUES ('514', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 22:18:10');
INSERT INTO `sys_oper_log` VALUES ('515', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'suyuan', '学芊科技', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-05-08 22:18:53');
INSERT INTO `sys_oper_log` VALUES ('516', '【签到打卡】', '1', 'com.ruoyi.web.controller.sign.SignRecordController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/record/add', '127.0.0.1', '内网IP', '{\"signDate\":[\"2022-10-10\"],\"signDesc\":[\"新需求开发\"],\"signTime\":[\"2022-10-10 09:10:09\"],\"lastTime\":[\"2022-10-10 09:10:09\"],\"signExperience\":[\"奋斗\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-10-10 20:10:42');
INSERT INTO `sys_oper_log` VALUES ('517', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"10\"],\"habitId\":[\"6\"],\"signDurationHour\":[\"2\"],\"signDurationMinute\":[\"30\"],\"signExperience\":[\"奋斗\"],\"startTime\":[\"2022-10-10 08:10:51\"],\"endTime\":[\"2022-10-10 08:50:51\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-10-10 20:11:20');
INSERT INTO `sys_oper_log` VALUES ('518', '【请填写功能名称】', '1', 'com.ruoyi.web.controller.sign.SignListController.addSave()', 'POST', '1', 'suyuan', '学芊科技', '/sign/list/add', '127.0.0.1', '内网IP', '{\"recordId\":[\"10\"],\"habitId\":[\"7\"],\"signDurationHour\":[\"1\"],\"signDurationMinute\":[\"20\"],\"signExperience\":[\"奋斗\"],\"startTime\":[\"2022-10-10 21:13:51\"],\"endTime\":[\"2022-10-10 21:17:51\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-10-10 20:12:11');
INSERT INTO `sys_oper_log` VALUES ('519', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"ry\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-10-10 20:24:42');
INSERT INTO `sys_oper_log` VALUES ('520', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-10-10 20:25:55');
INSERT INTO `sys_oper_log` VALUES ('521', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'suyuan', '学芊科技', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"suyuan\"]}', 'null', '1', '不允许操作超级管理员用户', '2022-10-10 20:26:41');
INSERT INTO `sys_oper_log` VALUES ('522', '重置密码', '2', 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'suyuan', '学芊科技', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"suyuan\"]}', '{\r\n  \"msg\" : \"新密码不能与旧密码相同\",\r\n  \"code\" : 500\r\n}', '0', null, '2022-10-10 20:27:13');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2021-03-04 17:11:08', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2021-03-04 17:11:08', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2021-03-04 17:11:08', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2021-03-04 17:11:08', 'suyuan', '2022-10-10 20:25:55', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '100', 'suyuan', '宿缘', '00', '1396627527@qq.com', '13093692146', '0', '/profile/avatar/2021/04/03/67671082-46fa-4be3-98f8-ea7959e93745.png', 'ec2644d2fcef0c12d104f951bffe81a8', 'ee4b95', '0', '0', '127.0.0.1', '2022-10-10 20:25:31', '2021-03-30 23:36:47', 'admin', '2021-03-04 17:11:08', '', '2022-10-10 20:25:30', '管理员');
INSERT INTO `sys_user` VALUES ('2', '100', 'ry', '宿缘', '00', 'ry@qq.com', '15666666666', '1', '', 'bc562878fe036f6b68044b64903f7083', '4fecf4', '0', '0', '127.0.0.1', '2022-10-10 20:24:53', '2021-03-04 17:11:08', 'admin', '2021-03-04 17:11:08', '', '2022-10-10 20:24:52', '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('cc32c4f5-d246-435d-9f6c-c3e8cbd75bf5', 'suyuan', '学芊科技', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', 'on_line', '2022-10-10 20:25:31', '2022-10-10 20:26:42', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `USER_LOGIN_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户表主键ID',
  `USER_NAME` varchar(64) DEFAULT '' COMMENT '用户名',
  `USER_ID` varchar(32) DEFAULT '' COMMENT '用户账号',
  `USER_SEX` varchar(4) DEFAULT '' COMMENT '性别',
  `USER_PASSWORD` varchar(64) DEFAULT '' COMMENT '密码',
  `USER_STATUS` varchar(4) DEFAULT '' COMMENT '员工状态  ZZ：在职 LZ：离职',
  `SOURCE_NAME` varchar(64) DEFAULT '' COMMENT '渠道名称、业务系统名称',
  `SOURCE_ID` varchar(64) DEFAULT '' COMMENT '业务系统ID',
  `INTERNAL_FLAG` varchar(4) DEFAULT '' COMMENT '是否本部员工  Y 是 N 否',
  `INIT_FLAG` varchar(4) DEFAULT '' COMMENT '首次登录标识  Y 是 N 否',
  `DEPT_ID` varchar(64) DEFAULT '' COMMENT '部门ID',
  `DEPT_NAME` varchar(64) DEFAULT '' COMMENT '部门名称',
  `LATELY_EDIT_TIMES` int(6) DEFAULT NULL,
  `PASSWORD_TIME` timestamp(6) NULL DEFAULT NULL COMMENT '密码更新时间',
  `TOKEN` varchar(64) DEFAULT '' COMMENT '用户登录token',
  `SYS_PERMISSIONS` varchar(255) DEFAULT '' COMMENT '系统权限，配置可使用的系统',
  `ADMIN_FLAG` varchar(4) DEFAULT '' COMMENT '是否管理员   Y 是 N 否',
  `TOKEN_VALID_TIME` timestamp(6) NULL DEFAULT NULL COMMENT 'token有效截止时间',
  `REMARKS` varchar(255) DEFAULT '' COMMENT '备注',
  `CREATED_STAMP` timestamp(6) NULL DEFAULT NULL,
  `CREATED_TX_STAMP` timestamp(6) NULL DEFAULT NULL,
  `LAST_UPDATED_STAMP` timestamp(6) NULL DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_login_pwd_strategy
-- ----------------------------
DROP TABLE IF EXISTS `user_login_pwd_strategy`;
CREATE TABLE `user_login_pwd_strategy` (
  `ID` varchar(20) NOT NULL DEFAULT '',
  `POLICY_DESC` varchar(64) DEFAULT '' COMMENT '策略标识',
  `INIT_FLAG` varchar(4) DEFAULT '' COMMENT '第一次登录是否修改密码  Y 是 N 否',
  `DESCRIBE` varchar(255) DEFAULT '' COMMENT '策略描述',
  `MAX_TIMES` int(6) DEFAULT NULL COMMENT '密码使用最大次数',
  `MAX_DAYS` int(6) DEFAULT NULL COMMENT '密码使用最大天数',
  `USED_TIMES` int(6) DEFAULT NULL COMMENT '不能修改成最近使用的密码次数',
  `TYPE` varchar(255) DEFAULT NULL COMMENT '密码类型（）',
  `FAIL_MAX_TIMES` int(2) DEFAULT NULL COMMENT '密码验证连续失败最大次数',
  `VALID_FLAG` varchar(4) DEFAULT '' COMMENT '是否生效   Y 是 N 否',
  `CREATED_STAMP` timestamp(6) NULL DEFAULT NULL,
  `CREATED_TX_STAMP` timestamp(6) NULL DEFAULT NULL,
  `LAST_UPDATED_STAMP` timestamp(6) NULL DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_pwd_strategy
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_achievement
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_achievement`;
CREATE TABLE `volunteer_achievement` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务取得的成就';

-- ----------------------------
-- Records of volunteer_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_activitys
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_activitys`;
CREATE TABLE `volunteer_activitys` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务相关活动';

-- ----------------------------
-- Records of volunteer_activitys
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_cost_list
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_cost_list`;
CREATE TABLE `volunteer_cost_list` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务费用清单';

-- ----------------------------
-- Records of volunteer_cost_list
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_home
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_home`;
CREATE TABLE `volunteer_home` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volunteer_home
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_lettres
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_lettres`;
CREATE TABLE `volunteer_lettres` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿者寄语-\r\n一切从实际出发-\r\n做人民的志愿者-\r\n我们不做公益，我们只是和所有人在一起，不抛弃、不放弃';

-- ----------------------------
-- Records of volunteer_lettres
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_of_people
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_of_people`;
CREATE TABLE `volunteer_of_people` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人民志愿者';

-- ----------------------------
-- Records of volunteer_of_people
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_rating
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_rating`;
CREATE TABLE `volunteer_rating` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿者评级';

-- ----------------------------
-- Records of volunteer_rating
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_service
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_service`;
CREATE TABLE `volunteer_service` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(64) NOT NULL COMMENT '志愿服务名称',
  `INTRODUCE` varchar(256) NOT NULL COMMENT '志愿服务简介',
  `OBJECTIVE` varchar(256) DEFAULT NULL COMMENT '服务目的',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务主表';

-- ----------------------------
-- Records of volunteer_service
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_service_apply
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_service_apply`;
CREATE TABLE `volunteer_service_apply` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务申请表';

-- ----------------------------
-- Records of volunteer_service_apply
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_service_fail
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_service_fail`;
CREATE TABLE `volunteer_service_fail` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='失败的志愿者服务及排名';

-- ----------------------------
-- Records of volunteer_service_fail
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_service_success
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_service_success`;
CREATE TABLE `volunteer_service_success` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成功的志愿者服务及排名';

-- ----------------------------
-- Records of volunteer_service_success
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_service_summary
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_service_summary`;
CREATE TABLE `volunteer_service_summary` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务总结';

-- ----------------------------
-- Records of volunteer_service_summary
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_servive_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_servive_evaluate`;
CREATE TABLE `volunteer_servive_evaluate` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿服务评价';

-- ----------------------------
-- Records of volunteer_servive_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for volunteer_story
-- ----------------------------
DROP TABLE IF EXISTS `volunteer_story`;
CREATE TABLE `volunteer_story` (
  `ID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优秀志愿者事迹';

-- ----------------------------
-- Records of volunteer_story
-- ----------------------------
