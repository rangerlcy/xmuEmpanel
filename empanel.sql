/*
Navicat MySQL Data Transfer

Source Server         : SQL
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : empanel

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-05-29 11:46:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `degree`
-- ----------------------------
DROP TABLE IF EXISTS `degree`;
CREATE TABLE `degree` (
  `degree` varchar(200) NOT NULL COMMENT '学位名称',
  `type` varchar(200) DEFAULT NULL COMMENT '学位所属的学历(学士、硕士、博士)',
  PRIMARY KEY (`degree`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of degree
-- ----------------------------
INSERT INTO `degree` VALUES ('中药学硕士', '硕士');
INSERT INTO `degree` VALUES ('临床医学博士', '博士');
INSERT INTO `degree` VALUES ('临床医学硕士', '硕士');
INSERT INTO `degree` VALUES ('会计硕士', '硕士');
INSERT INTO `degree` VALUES ('体育硕士', '硕士');
INSERT INTO `degree` VALUES ('保险硕士', '硕士');
INSERT INTO `degree` VALUES ('公共卫生硕士', '硕士');
INSERT INTO `degree` VALUES ('公共管理硕士', '硕士');
INSERT INTO `degree` VALUES ('兽医博士', '博士');
INSERT INTO `degree` VALUES ('兽医硕士', '硕士');
INSERT INTO `degree` VALUES ('军事学博士', '博士');
INSERT INTO `degree` VALUES ('军事学学士', '学士');
INSERT INTO `degree` VALUES ('军事学硕士', '硕士');
INSERT INTO `degree` VALUES ('军事硕士', '硕士');
INSERT INTO `degree` VALUES ('农业推广硕士', '硕士');
INSERT INTO `degree` VALUES ('农学博士', '博士');
INSERT INTO `degree` VALUES ('农学学士', '学士');
INSERT INTO `degree` VALUES ('农学硕士', '硕士');
INSERT INTO `degree` VALUES ('出版硕士', '硕士');
INSERT INTO `degree` VALUES ('医学博士', '博士');
INSERT INTO `degree` VALUES ('医学学士', '学士');
INSERT INTO `degree` VALUES ('医学硕士', '硕士');
INSERT INTO `degree` VALUES ('历史学博士', '博士');
INSERT INTO `degree` VALUES ('历史学学士', '学士');
INSERT INTO `degree` VALUES ('历史学硕士', '硕士');
INSERT INTO `degree` VALUES ('口腔医学博士', '博士');
INSERT INTO `degree` VALUES ('口腔医学硕士', '硕士');
INSERT INTO `degree` VALUES ('哲学博士', '博士');
INSERT INTO `degree` VALUES ('哲学学士', '学士');
INSERT INTO `degree` VALUES ('哲学硕士', '硕士');
INSERT INTO `degree` VALUES ('国际商务硕士', '硕士');
INSERT INTO `degree` VALUES ('图书情报硕士', '硕士');
INSERT INTO `degree` VALUES ('城市规划硕士', '硕士');
INSERT INTO `degree` VALUES ('审计硕士', '硕士');
INSERT INTO `degree` VALUES ('工商管理硕士', '硕士');
INSERT INTO `degree` VALUES ('工学博士', '博士');
INSERT INTO `degree` VALUES ('工学学士', '学士');
INSERT INTO `degree` VALUES ('工学硕士', '硕士');
INSERT INTO `degree` VALUES ('工程博士', '博士');
INSERT INTO `degree` VALUES ('工程硕士博士', '硕士');
INSERT INTO `degree` VALUES ('工程管理硕士', '硕士');
INSERT INTO `degree` VALUES ('应用心理硕士', '硕士');
INSERT INTO `degree` VALUES ('应用统计硕士', '硕士');
INSERT INTO `degree` VALUES ('建筑学学士', '学士');
INSERT INTO `degree` VALUES ('建筑学硕士', '硕士');
INSERT INTO `degree` VALUES ('护理硕士', '硕士');
INSERT INTO `degree` VALUES ('教育博士', '博士');
INSERT INTO `degree` VALUES ('教育学博士', '博士');
INSERT INTO `degree` VALUES ('教育学学士', '学士');
INSERT INTO `degree` VALUES ('教育学硕士', '硕士');
INSERT INTO `degree` VALUES ('教育硕士', '硕士');
INSERT INTO `degree` VALUES ('文学博士', '博士');
INSERT INTO `degree` VALUES ('文学学士', '学士');
INSERT INTO `degree` VALUES ('文学硕士', '硕士');
INSERT INTO `degree` VALUES ('文物和博物馆硕士', '硕士');
INSERT INTO `degree` VALUES ('新闻与传播硕士', '硕士');
INSERT INTO `degree` VALUES ('旅游管理硕士', '硕士');
INSERT INTO `degree` VALUES ('林业硕士', '硕士');
INSERT INTO `degree` VALUES ('汉语国际教育硕士', '硕士');
INSERT INTO `degree` VALUES ('法学博士', '博士');
INSERT INTO `degree` VALUES ('法学学士', '学士');
INSERT INTO `degree` VALUES ('法学硕士', '硕士');
INSERT INTO `degree` VALUES ('法律硕士', '硕士');
INSERT INTO `degree` VALUES ('理学博士', '博士');
INSERT INTO `degree` VALUES ('理学学士', '学士');
INSERT INTO `degree` VALUES ('理学硕士', '硕士');
INSERT INTO `degree` VALUES ('社会工作硕士', '硕士');
INSERT INTO `degree` VALUES ('税务硕士', '硕士');
INSERT INTO `degree` VALUES ('管理学博士', '博士');
INSERT INTO `degree` VALUES ('管理学学士', '学士');
INSERT INTO `degree` VALUES ('管理学硕士', '硕士');
INSERT INTO `degree` VALUES ('经济学博士', '博士');
INSERT INTO `degree` VALUES ('经济学学士', '学士');
INSERT INTO `degree` VALUES ('经济学硕士', '硕士');
INSERT INTO `degree` VALUES ('翻译硕士', '硕士');
INSERT INTO `degree` VALUES ('艺术学博士', '博士');
INSERT INTO `degree` VALUES ('艺术学学士', '学士');
INSERT INTO `degree` VALUES ('艺术学硕士', '硕士');
INSERT INTO `degree` VALUES ('艺术硕士', '硕士');
INSERT INTO `degree` VALUES ('药学硕士', '硕士');
INSERT INTO `degree` VALUES ('警务硕士', '硕士');
INSERT INTO `degree` VALUES ('资产评估硕士', '硕士');
INSERT INTO `degree` VALUES ('金融硕士', '硕士');
INSERT INTO `degree` VALUES ('风景园林硕士', '硕士');

-- ----------------------------
-- Table structure for `education`
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `id` int(20) NOT NULL,
  `education` varchar(200) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('1', '初中');
INSERT INTO `education` VALUES ('2', '高中');
INSERT INTO `education` VALUES ('3', '中专');
INSERT INTO `education` VALUES ('4', '大专');
INSERT INTO `education` VALUES ('5', '专科');
INSERT INTO `education` VALUES ('6', '本科');
INSERT INTO `education` VALUES ('7', '普通班');
INSERT INTO `education` VALUES ('8', '研究生');

-- ----------------------------
-- Table structure for `empanel`
-- ----------------------------
DROP TABLE IF EXISTS `empanel`;
CREATE TABLE `empanel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `status` varchar(200) DEFAULT NULL COMMENT '状态或流程',
  `type` varchar(200) DEFAULT NULL,
  `flow` varchar(200) DEFAULT NULL COMMENT '当前进行到的流程',
  `start_time` varchar(200) DEFAULT NULL COMMENT '报名开始时间',
  `end_time` varchar(200) DEFAULT NULL COMMENT '报名结束时间',
  `plan` text,
  `avg_max_num` int(11) DEFAULT '1' COMMENT '每人最大可选岗位数量',
  `is_realease` tinyint(4) NOT NULL DEFAULT '0' COMMENT '选任工作是否发布',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除位，若为1则表示该选任工作已经过时无效，是历史选任工作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empanel
-- ----------------------------
INSERT INTO `empanel` VALUES ('1', '2016年1月科级选任', '科级1', '科级选任', '报名阶段', '2016-5-25', '2016-7-10', '选任计划。。。', '1', '1', '0');
INSERT INTO `empanel` VALUES ('2', 'xxx年x月选任', '科级2', '科级选任', '报名阶段', '2016-3-3', '2016-4-2', '不知道写什么', '1', '1', '0');
INSERT INTO `empanel` VALUES ('3', '2020年8月选', '中层1', '中层选任', '报名阶段', '2016-2-1', '2016-2-3', '计划！！！', '1', '1', '0');
INSERT INTO `empanel` VALUES ('4', '2016年暑假选任', '科级1', '科级选任', '报名阶段', '2016-5-21', '2016-9-1', '计划拟任xxx。。', '1', '1', '0');
INSERT INTO `empanel` VALUES ('5', '2016.5系级选任', '系级选任流程2016', '系级选任', '报名阶段', '2016-5-10', '2016-6-19', '这次拟选任5人系级干部', '2', '1', '0');
INSERT INTO `empanel` VALUES ('6', '一些院系系级选任', '系级选任流程2016', '科级选任', '未发布', '2016-9-18', '2016-10-18', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `empanel_job`
-- ----------------------------
DROP TABLE IF EXISTS `empanel_job`;
CREATE TABLE `empanel_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(10) unsigned NOT NULL,
  `job` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `empanel_id` int(11) unsigned NOT NULL,
  `amount` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_id` (`organization_id`),
  KEY `empanel_id` (`empanel_id`),
  CONSTRAINT `empanel_job_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `empanel_job_ibfk_2` FOREIGN KEY (`empanel_id`) REFERENCES `empanel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empanel_job
-- ----------------------------
INSERT INTO `empanel_job` VALUES ('1', '1', '院长', '正处级', '1', '1');
INSERT INTO `empanel_job` VALUES ('2', '2', '实验室主任', '正科级', '1', '5');
INSERT INTO `empanel_job` VALUES ('3', '3', '办公室秘书', '副科级', '1', '2');
INSERT INTO `empanel_job` VALUES ('4', '2', '院长', '处级', '2', '1');
INSERT INTO `empanel_job` VALUES ('5', '1', '科长', '主席', '3', '1');
INSERT INTO `empanel_job` VALUES ('8', '3', '人文办公室主任', '科级', '4', '10');
INSERT INTO `empanel_job` VALUES ('9', '1', '计算机系实验室主任', '科级', '5', '2');
INSERT INTO `empanel_job` VALUES ('10', '1', '自动化系办公室助理', '聘任', '5', '3');

-- ----------------------------
-- Table structure for `empanel__studygroup`
-- ----------------------------
DROP TABLE IF EXISTS `empanel__studygroup`;
CREATE TABLE `empanel__studygroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `study_group_id` int(11) unsigned NOT NULL,
  `empanel_id` int(11) NOT NULL,
  `organization_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `study_group_id` (`study_group_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `empanel__studygroup_ibfk_1` FOREIGN KEY (`study_group_id`) REFERENCES `studygroup` (`id`),
  CONSTRAINT `empanel__studygroup_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='只有临时考察组才有，组织部分配选任工作';

-- ----------------------------
-- Records of empanel__studygroup
-- ----------------------------

-- ----------------------------
-- Table structure for `entryform`
-- ----------------------------
DROP TABLE IF EXISTS `entryform`;
CREATE TABLE `entryform` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `birth` varchar(200) DEFAULT NULL COMMENT '出生年月',
  `nationality` varchar(255) DEFAULT NULL COMMENT '民族',
  `native_place` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `birth_place` varchar(255) DEFAULT NULL COMMENT '出生地',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '照片',
  `join_party_time` varchar(200) DEFAULT NULL COMMENT '入党时间',
  `work_time` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `college_time` varchar(200) DEFAULT NULL COMMENT '入校时间',
  `special_job` varchar(255) DEFAULT NULL COMMENT '专业技术职务',
  `special_skill` varchar(255) DEFAULT NULL COMMENT '特长',
  `full_time_education_record` varchar(255) DEFAULT NULL COMMENT '全日制教育学历',
  `full_time_education_level` varchar(255) DEFAULT NULL COMMENT '全日制教育学位',
  `full_time_education_college` varchar(255) DEFAULT NULL COMMENT '全日制教育毕业院校',
  `incumbency_education_record` varchar(255) DEFAULT NULL,
  `incumbency_education_level` varchar(255) DEFAULT NULL,
  `incumbency_education_college` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '报名邮箱',
  `organization_id` int(10) unsigned DEFAULT NULL,
  `presently_job` varchar(255) DEFAULT NULL COMMENT '现任职务',
  `resume` text COMMENT '简历',
  `punish_reward` text COMMENT '奖惩情况',
  `appraisal_result` text COMMENT '考核结果',
  `appoint_dismiss_reason` text COMMENT '任免理由',
  `empanel_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL COMMENT '党派名称',
  PRIMARY KEY (`id`),
  KEY `empanel` (`empanel_id`),
  KEY `user_id` (`user_id`),
  KEY `organization_id` (`organization_id`),
  CONSTRAINT `entryform_ibfk_1` FOREIGN KEY (`empanel_id`) REFERENCES `empanel` (`id`),
  CONSTRAINT `entryform_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `entryform_ibfk_3` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform
-- ----------------------------
INSERT INTO `entryform` VALUES ('7', 'admin', '男', '1992.4', '景颇族', '广东省-广东市-广县', '湖南省-长沙市-沙县', '/empanel/staff_photo/photo-2016-05-23 23-17-48-096.jpg', '2008.6', '2007.3', '2007.7', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '1', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, null, '7', '中共');
INSERT INTO `entryform` VALUES ('32', 'admin', '男', '1992.4', '景颇族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-21 16-09-34-419.jpg', '2008.6', '2007.3', '2007.7', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '2', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, '2', '7', '中共');
INSERT INTO `entryform` VALUES ('35', 'admin', '男', '1992.4', '景颇族', '广东省-广东市-广县', '湖南省-长沙市-沙县', '/empanel/staff_photo/photo-2016-05-21 16-09-34-419.jpg', '2008.6', '2007.3', '2007.7', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '2', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, '1', '7', '中共');
INSERT INTO `entryform` VALUES ('41', 'admin', '男', '1992.4', '景颇族', '广东省-广东市-广县', '湖南省-长沙市-沙县', '/empanel/staff_photo/photo-2016-05-23 23-17-48-096.jpg', '2008.6', '2007.3', '2007.7', 'asdqwwe', 'czczxw2', '中专', '出版硕士', 'xx21s', '研究生', '农学硕士', 'cds32fdscv', '18850010090', '12345678@163.com', '1', 'asdsqe21s', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zzxasd', 'qwe123as', null, '3', '7', '中共');
INSERT INTO `entryform` VALUES ('42', '教师1', '男', '2005.5', '仫佬族', '湖南省-长沙市-沙县', '广东省-广东市-广县', '/empanel/staff_photo/photo-2016-05-24 12-06-47-992.jpg', '2004.12', '2007.7', '2007.8', '专业', '特长', '本科', '农学博士', '阿斯顿', '本科', '农学硕士', '自行车', '12121212', '10@1.c', '1', '权威', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zds', 'qwe', null, null, '13', '农工');
INSERT INTO `entryform` VALUES ('43', '教师1', '男', '1993.4', '仫佬族', '湖南省-长沙市-沙县', '广东省-广东市-广县', '/empanel/staff_photo/photo-2016-05-24 12-06-47-992.jpg', '1993.6', '1996.7', '1995.4', '专业', '特长', '本科', '农学博士', '阿斯顿', '本科', '农学硕士', '自行车', '12121212', '10@1.c', '1', '权威', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zds', 'qwe', null, '1', '13', '农工');
INSERT INTO `entryform` VALUES ('44', '教师1', '男', '1993.4', '仫佬族', '湖南省-长沙市-沙县', '广东省-广东市-广县', '/empanel/staff_photo/photo-2016-05-24 12-06-47-992.jpg', '1993.6', '1996.7', '1995.4', '专业', '特长', '本科', '农学博士', '阿斯顿', '本科', '农学硕士', '自行车', '12121212', '10@1.c', '1', '权威', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zds', 'qwe', null, '3', '13', '农工');
INSERT INTO `entryform` VALUES ('45', '教职工1', '男', '2003.6', '汉族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-24 22-18-12-010.jpg', '2006.6', '2007.6', '2007.10', '专业技术', '专业特长', '专科', '兽医博士', 'q2ax', '', '', '', '909090', '90908@q.c', '1', 'qwe', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', '', '', null, null, '14', '民盟');
INSERT INTO `entryform` VALUES ('46', '教职工1', '男', '2003.6', '汉族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-24 22-18-12-010.jpg', '2006.6', '2007.6', '2007.10', '专业技术', '专业特长', '专科', '兽医博士', 'q2ax', '', '', '', '909090', '90908@q.c', '1', 'qwe', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', '', '', null, '1', '14', '民盟');
INSERT INTO `entryform` VALUES ('47', '教职工1', '男', '2003.6', '汉族', '广东省-广东市-广县', '福建省-厦门市-厦县', '/empanel/staff_photo/photo-2016-05-24 22-18-12-010.jpg', '2006.6', '2007.6', '2007.10', '专业技术', '专业特长', '专科', '兽医博士', 'q2ax', '', '', '', '909090', '90908@q.c', '1', 'qwe', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', '', '', null, '2', '14', '民盟');
INSERT INTO `entryform` VALUES ('48', '教师1', '男', '1993.4', '仫佬族', '湖南省-长沙市-沙县', '广东省-广东市-广县', '/empanel/staff_photo/photo-2016-05-24 12-06-47-992.jpg', '1993.6', '1996.7', '1995.4', '专业', '特长', '本科', '农学博士', '阿斯顿', '本科', '农学硕士', '自行车', '12121212', '10@1.c', '1', '权威', '请使用下面的格式填写简历\r\n1983.09—1987.07  **大学**系**专业学习，获**学学士学位\r\n1987.09—1990.07  **大学**系**专业研究生学习，获**学硕士学位\r\n1990.09—1993.07  **大学**处科员\r\n1993.08—1998.04  **大学**学院团委副书记 副科级\r\n1998.05—2002.03  **大学**学院团委书记 正科级\r\n2002.03—         **大学**处秘书 正科级（其间：2003.09—2006.07  **大学**系**专业在职研究生学习，获**学博士学位）', 'zds', 'qwe', null, '2', '13', '农工');
INSERT INTO `entryform` VALUES ('49', '职工2', '男', null, '彝族', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '897@w.s', null, null, null, null, null, null, null, '15', null);

-- ----------------------------
-- Table structure for `entryform_family`
-- ----------------------------
DROP TABLE IF EXISTS `entryform_family`;
CREATE TABLE `entryform_family` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appellation` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth` varchar(200) NOT NULL,
  `politics` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `entry_form_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  CONSTRAINT `entryform_family_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform_family
-- ----------------------------
INSERT INTO `entryform_family` VALUES ('79', '天空', 'wqe1', '2008.12', '中共', 'dsf4hgf', '32');
INSERT INTO `entryform_family` VALUES ('86', '天空', 'wqe1', '2008.12', '中共', 'dsf4hgf', '35');
INSERT INTO `entryform_family` VALUES ('88', '天空', 'wqe1', '2008.12', '中共', 'dsf4hgf', '7');
INSERT INTO `entryform_family` VALUES ('89', '天空', 'wqe1', '2008.12', '中共', 'dsf4hgf', '41');

-- ----------------------------
-- Table structure for `entryform_job`
-- ----------------------------
DROP TABLE IF EXISTS `entryform_job`;
CREATE TABLE `entryform_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_form_id` int(10) unsigned NOT NULL,
  `job_id` int(11) unsigned NOT NULL,
  `job_num` int(4) NOT NULL COMMENT '第几志愿, -1表示不报名',
  `is_selected` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `entryform_job_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`),
  CONSTRAINT `entryform_job_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `empanel_job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform_job
-- ----------------------------
INSERT INTO `entryform_job` VALUES ('5', '32', '4', '1', '0');
INSERT INTO `entryform_job` VALUES ('6', '35', '1', '2', '0');
INSERT INTO `entryform_job` VALUES ('7', '35', '2', '1', '0');
INSERT INTO `entryform_job` VALUES ('8', '35', '3', '3', '0');
INSERT INTO `entryform_job` VALUES ('9', '41', '5', '1', '0');
INSERT INTO `entryform_job` VALUES ('10', '43', '1', '1', '0');
INSERT INTO `entryform_job` VALUES ('11', '43', '2', '2', '0');
INSERT INTO `entryform_job` VALUES ('12', '43', '3', '3', '0');
INSERT INTO `entryform_job` VALUES ('13', '44', '5', '1', '0');
INSERT INTO `entryform_job` VALUES ('14', '46', '1', '1', '0');
INSERT INTO `entryform_job` VALUES ('15', '46', '2', '2', '0');
INSERT INTO `entryform_job` VALUES ('16', '46', '3', '3', '0');
INSERT INTO `entryform_job` VALUES ('17', '47', '4', '1', '0');
INSERT INTO `entryform_job` VALUES ('18', '48', '4', '1', '0');

-- ----------------------------
-- Table structure for `entryform_relativemerits`
-- ----------------------------
DROP TABLE IF EXISTS `entryform_relativemerits`;
CREATE TABLE `entryform_relativemerits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_form_id` int(10) unsigned NOT NULL,
  `type` int(4) NOT NULL COMMENT '优点还是缺点',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  CONSTRAINT `entryform_relativemerits_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryform_relativemerits
-- ----------------------------

-- ----------------------------
-- Table structure for `ethnic`
-- ----------------------------
DROP TABLE IF EXISTS `ethnic`;
CREATE TABLE `ethnic` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ethnic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='民族表';

-- ----------------------------
-- Records of ethnic
-- ----------------------------
INSERT INTO `ethnic` VALUES ('1', '汉族');
INSERT INTO `ethnic` VALUES ('2', '蒙古族');
INSERT INTO `ethnic` VALUES ('3', '彝族');
INSERT INTO `ethnic` VALUES ('4', '侗族');
INSERT INTO `ethnic` VALUES ('5', '哈萨克族');
INSERT INTO `ethnic` VALUES ('6', '畲族');
INSERT INTO `ethnic` VALUES ('7', '纳西族');
INSERT INTO `ethnic` VALUES ('8', '仫佬族');
INSERT INTO `ethnic` VALUES ('9', '仡佬族');
INSERT INTO `ethnic` VALUES ('10', '怒族');
INSERT INTO `ethnic` VALUES ('11', '保安族');
INSERT INTO `ethnic` VALUES ('12', '鄂伦春族');
INSERT INTO `ethnic` VALUES ('13', '回族');
INSERT INTO `ethnic` VALUES ('14', '壮族');
INSERT INTO `ethnic` VALUES ('15', '瑶族');
INSERT INTO `ethnic` VALUES ('16', '傣族');
INSERT INTO `ethnic` VALUES ('17', '高山族');
INSERT INTO `ethnic` VALUES ('18', '景颇族');
INSERT INTO `ethnic` VALUES ('19', '羌族');
INSERT INTO `ethnic` VALUES ('20', '锡伯族');
INSERT INTO `ethnic` VALUES ('21', '乌孜别克族');
INSERT INTO `ethnic` VALUES ('22', '裕固族');
INSERT INTO `ethnic` VALUES ('23', '赫哲族');
INSERT INTO `ethnic` VALUES ('24', '藏族');
INSERT INTO `ethnic` VALUES ('25', '布依族');
INSERT INTO `ethnic` VALUES ('26', '白族');
INSERT INTO `ethnic` VALUES ('27', '黎族');
INSERT INTO `ethnic` VALUES ('28', '拉祜族');
INSERT INTO `ethnic` VALUES ('29', '柯尔克孜族');
INSERT INTO `ethnic` VALUES ('30', '布朗族');
INSERT INTO `ethnic` VALUES ('31', '阿昌族');
INSERT INTO `ethnic` VALUES ('32', '俄罗斯族');
INSERT INTO `ethnic` VALUES ('33', '京族');
INSERT INTO `ethnic` VALUES ('34', '门巴族');
INSERT INTO `ethnic` VALUES ('35', '维吾尔族');
INSERT INTO `ethnic` VALUES ('36', '朝鲜族');
INSERT INTO `ethnic` VALUES ('37', '土家族');
INSERT INTO `ethnic` VALUES ('38', '傈僳族');
INSERT INTO `ethnic` VALUES ('39', '水族');
INSERT INTO `ethnic` VALUES ('40', '土族');
INSERT INTO `ethnic` VALUES ('41', '撒拉族');
INSERT INTO `ethnic` VALUES ('42', '普米族');
INSERT INTO `ethnic` VALUES ('43', '鄂温克族');
INSERT INTO `ethnic` VALUES ('44', '塔塔尔族');
INSERT INTO `ethnic` VALUES ('45', '珞巴族');
INSERT INTO `ethnic` VALUES ('46', '苗族');
INSERT INTO `ethnic` VALUES ('47', '满族');
INSERT INTO `ethnic` VALUES ('48', '哈尼族');
INSERT INTO `ethnic` VALUES ('49', '佤族');
INSERT INTO `ethnic` VALUES ('50', '东乡族');
INSERT INTO `ethnic` VALUES ('51', '达斡尔族');
INSERT INTO `ethnic` VALUES ('52', '毛南族');
INSERT INTO `ethnic` VALUES ('53', '塔吉克族');
INSERT INTO `ethnic` VALUES ('54', '德昂族');
INSERT INTO `ethnic` VALUES ('55', '独龙族');
INSERT INTO `ethnic` VALUES ('56', '基诺族');

-- ----------------------------
-- Table structure for `login_user`
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roleId` int(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登陆用户名、密码表';

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES ('admin', 'admin', '1');
INSERT INTO `login_user` VALUES ('admin123', '111111', '5');
INSERT INTO `login_user` VALUES ('org', '111111', '2');
INSERT INTO `login_user` VALUES ('staff1', '111111', '5');
INSERT INTO `login_user` VALUES ('staff2', '111111', '5');
INSERT INTO `login_user` VALUES ('study', '111111', '3');
INSERT INTO `login_user` VALUES ('study2', '111111', '3');
INSERT INTO `login_user` VALUES ('study3', '111111', '3');
INSERT INTO `login_user` VALUES ('teacher1', '111111', '5');
INSERT INTO `login_user` VALUES ('tempstudy', '111111', '4');

-- ----------------------------
-- Table structure for `meetingrecommend`
-- ----------------------------
DROP TABLE IF EXISTS `meetingrecommend`;
CREATE TABLE `meetingrecommend` (
  `id` int(10) unsigned NOT NULL COMMENT '会议推荐表',
  `allocate_id` int(10) unsigned DEFAULT NULL COMMENT '分配任务',
  PRIMARY KEY (`id`),
  KEY `allocate_id` (`allocate_id`),
  CONSTRAINT `meetingrecommend_ibfk_1` FOREIGN KEY (`allocate_id`) REFERENCES `empanel__studygroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meetingrecommend
-- ----------------------------

-- ----------------------------
-- Table structure for `meetingrecommend_state`
-- ----------------------------
DROP TABLE IF EXISTS `meetingrecommend_state`;
CREATE TABLE `meetingrecommend_state` (
  `id` int(11) NOT NULL,
  `entry_form_id` int(10) unsigned NOT NULL,
  `meeting_recommend_id` int(10) unsigned NOT NULL,
  `total` int(4) NOT NULL,
  `morality` int(4) NOT NULL,
  `writting` int(4) NOT NULL,
  `unit` int(4) NOT NULL,
  `fair` int(4) NOT NULL,
  `honest` int(4) NOT NULL,
  `performance` int(4) NOT NULL,
  `recommend` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  KEY `meeting_recommend_id` (`meeting_recommend_id`),
  CONSTRAINT `meetingrecommend_state_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`),
  CONSTRAINT `meetingrecommend_state_ibfk_2` FOREIGN KEY (`meeting_recommend_id`) REFERENCES `meetingrecommend` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meetingrecommend_state
-- ----------------------------

-- ----------------------------
-- Table structure for `organization`
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `del_flag` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '信息科学与技术学院', '0');
INSERT INTO `organization` VALUES ('2', '经济学院', '0');
INSERT INTO `organization` VALUES ('3', '人文学院', '0');
INSERT INTO `organization` VALUES ('4', '海洋学院', '0');

-- ----------------------------
-- Table structure for `party_name`
-- ----------------------------
DROP TABLE IF EXISTS `party_name`;
CREATE TABLE `party_name` (
  `id` int(20) NOT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_name
-- ----------------------------
INSERT INTO `party_name` VALUES ('1', '中共');
INSERT INTO `party_name` VALUES ('2', '民革');
INSERT INTO `party_name` VALUES ('3', '民盟');
INSERT INTO `party_name` VALUES ('4', '民建');
INSERT INTO `party_name` VALUES ('5', '民进');
INSERT INTO `party_name` VALUES ('6', '农工');
INSERT INTO `party_name` VALUES ('7', '致公');
INSERT INTO `party_name` VALUES ('8', '九三');
INSERT INTO `party_name` VALUES ('9', '台盟');
INSERT INTO `party_name` VALUES ('10', '无党派');
INSERT INTO `party_name` VALUES ('11', '群众');

-- ----------------------------
-- Table structure for `place_city`
-- ----------------------------
DROP TABLE IF EXISTS `place_city`;
CREATE TABLE `place_city` (
  `id` int(20) NOT NULL COMMENT '市的id',
  `city` varchar(200) DEFAULT NULL COMMENT '市名',
  `province_id` int(20) DEFAULT NULL COMMENT '省级表id(外键)',
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `place_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_city
-- ----------------------------
INSERT INTO `place_city` VALUES ('1', '长沙市', '1');
INSERT INTO `place_city` VALUES ('2', '厦门市', '2');
INSERT INTO `place_city` VALUES ('3', '广东市', '3');

-- ----------------------------
-- Table structure for `place_province`
-- ----------------------------
DROP TABLE IF EXISTS `place_province`;
CREATE TABLE `place_province` (
  `id` int(20) NOT NULL COMMENT '唯一标识',
  `province` varchar(200) DEFAULT NULL COMMENT '省名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_province
-- ----------------------------
INSERT INTO `place_province` VALUES ('1', '湖南省');
INSERT INTO `place_province` VALUES ('2', '福建省');
INSERT INTO `place_province` VALUES ('3', '广东省');

-- ----------------------------
-- Table structure for `place_town`
-- ----------------------------
DROP TABLE IF EXISTS `place_town`;
CREATE TABLE `place_town` (
  `id` int(20) NOT NULL COMMENT '县id',
  `town` varchar(200) DEFAULT NULL COMMENT '县名',
  `city_id` int(20) DEFAULT NULL COMMENT '市级表id(外键)',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `place_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_town
-- ----------------------------
INSERT INTO `place_town` VALUES ('1', '沙县', '1');
INSERT INTO `place_town` VALUES ('2', '厦县', '2');
INSERT INTO `place_town` VALUES ('3', '广县', '3');

-- ----------------------------
-- Table structure for `studygroup`
-- ----------------------------
DROP TABLE IF EXISTS `studygroup`;
CREATE TABLE `studygroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `is_temp` int(4) NOT NULL,
  `del_flag` int(4) NOT NULL DEFAULT '0',
  `organization_id` int(10) DEFAULT NULL COMMENT '考察组所属单位，临时考察组没有',
  PRIMARY KEY (`id`),
  KEY `FK_USERNAME` (`username`),
  CONSTRAINT `FK_USERNAME` FOREIGN KEY (`username`) REFERENCES `login_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studygroup
-- ----------------------------
INSERT INTO `studygroup` VALUES ('1', '测试考察组', 'study', '0', '0', '1');
INSERT INTO `studygroup` VALUES ('2', '测试考察组2', 'study2', '0', '0', '2');
INSERT INTO `studygroup` VALUES ('5', '赖子强的考察组', 'study3', '0', '0', '4');

-- ----------------------------
-- Table structure for `studygroup_person`
-- ----------------------------
DROP TABLE IF EXISTS `studygroup_person`;
CREATE TABLE `studygroup_person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `study_group_id` int(10) unsigned NOT NULL,
  `study_group_person_store_id` int(10) unsigned NOT NULL,
  `type` varchar(200) NOT NULL COMMENT '这个人是组长、组员、联络员之一',
  PRIMARY KEY (`id`),
  KEY `study_group_id` (`study_group_id`),
  KEY `study_group_person_store` (`study_group_person_store_id`),
  CONSTRAINT `studygroup_person_ibfk_1` FOREIGN KEY (`study_group_id`) REFERENCES `studygroup` (`id`),
  CONSTRAINT `studygroup_person_ibfk_2` FOREIGN KEY (`study_group_person_store_id`) REFERENCES `studygroup_person_store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studygroup_person
-- ----------------------------
INSERT INTO `studygroup_person` VALUES ('1', '1', '1', '联络员');
INSERT INTO `studygroup_person` VALUES ('2', '1', '2', '组长');
INSERT INTO `studygroup_person` VALUES ('3', '1', '3', '组员');
INSERT INTO `studygroup_person` VALUES ('4', '2', '4', '组长');
INSERT INTO `studygroup_person` VALUES ('5', '2', '5', '联络员');
INSERT INTO `studygroup_person` VALUES ('6', '2', '6', '组员');
INSERT INTO `studygroup_person` VALUES ('7', '2', '7', '组员');
INSERT INTO `studygroup_person` VALUES ('8', '2', '8', '组员');
INSERT INTO `studygroup_person` VALUES ('18', '5', '18', '组长');
INSERT INTO `studygroup_person` VALUES ('19', '5', '19', '联络员');
INSERT INTO `studygroup_person` VALUES ('20', '5', '20', '组员');
INSERT INTO `studygroup_person` VALUES ('21', '5', '21', '组员');
INSERT INTO `studygroup_person` VALUES ('22', '5', '22', '组员');

-- ----------------------------
-- Table structure for `studygroup_person_store`
-- ----------------------------
DROP TABLE IF EXISTS `studygroup_person_store`;
CREATE TABLE `studygroup_person_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pre_unit` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_liaison` int(4) NOT NULL,
  `is_temp` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studygroup_person_store
-- ----------------------------
INSERT INTO `studygroup_person_store` VALUES ('1', '张三', '男', null, null, '1234567', '123@163.com', null, null, '1', '0');
INSERT INTO `studygroup_person_store` VALUES ('2', '李四', '男', null, null, '88888', '1@1.com', null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('3', '王五', '女', null, null, '10000', '1@a.com', null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('4', '赖子强', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('5', 'jjk', null, null, null, '18810010001', 'jjk@qq.com', null, null, '1', '0');
INSERT INTO `studygroup_person_store` VALUES ('6', 'jjk1', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('7', 'jjk2', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('8', 'jjk3', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('18', '赖子强', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('19', '赖', null, null, null, '110', 'lzq@qq.com', null, null, '1', '0');
INSERT INTO `studygroup_person_store` VALUES ('20', '赖1', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('21', '赖2', null, null, null, null, null, null, null, '0', '0');
INSERT INTO `studygroup_person_store` VALUES ('22', '赖3', null, null, null, null, null, null, null, '0', '0');

-- ----------------------------
-- Table structure for `sysrole`
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole` (
  `id` int(10) NOT NULL,
  `roleCode` varchar(50) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色表';

-- ----------------------------
-- Records of sysrole
-- ----------------------------
INSERT INTO `sysrole` VALUES ('1', 'admin', '管理员');
INSERT INTO `sysrole` VALUES ('2', 'cadre', '组织部');
INSERT INTO `sysrole` VALUES ('3', 'PSG', '常设考察组');
INSERT INTO `sysrole` VALUES ('4', 'TSG', '临时考察组');
INSERT INTO `sysrole` VALUES ('5', 'staff', '普通员工');

-- ----------------------------
-- Table structure for `talkrecommend`
-- ----------------------------
DROP TABLE IF EXISTS `talkrecommend`;
CREATE TABLE `talkrecommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '谈话对象',
  `job` varchar(255) NOT NULL COMMENT '所在单位及职务、职称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talkrecommend
-- ----------------------------

-- ----------------------------
-- Table structure for `talkrecommend_state`
-- ----------------------------
DROP TABLE IF EXISTS `talkrecommend_state`;
CREATE TABLE `talkrecommend_state` (
  `id` int(10) unsigned NOT NULL,
  `entry_form_id` int(10) unsigned NOT NULL,
  `vote` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_form_id` (`entry_form_id`),
  CONSTRAINT `talkrecommend_state_ibfk_1` FOREIGN KEY (`entry_form_id`) REFERENCES `entryform` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talkrecommend_state
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `del_flag` int(4) DEFAULT '0',
  `login_username` varchar(200) NOT NULL COMMENT '关联到登陆表',
  `identify_num` varchar(200) NOT NULL COMMENT '身份证号码',
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_pk` (`login_username`),
  CONSTRAINT `login_pk` FOREIGN KEY (`login_username`) REFERENCES `login_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', null, 'admin123', '1234561111111111', '12345678@163.com');
INSERT INTO `user` VALUES ('13', null, 'teacher1', '1010101010101011', '10@1.c');
INSERT INTO `user` VALUES ('14', null, 'staff1', '9010212121212121', '90908@q.c');
INSERT INTO `user` VALUES ('15', null, 'staff2', '1020102012012121', '897@w.s');
