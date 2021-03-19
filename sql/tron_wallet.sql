/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : tron_wallet

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 19/03/2021 19:01:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'tron_address', '钱包地址表', NULL, NULL, 'TronAddress', 'crud', 'com.dadsunion.tron', 'tron', 'address', '地址管理', 'l8oo8l', '0', '/', '{\"parentMenuId\":2003}', 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01', NULL);
INSERT INTO `gen_table` VALUES (2, 'tron_block', '区块高度记录表', NULL, NULL, 'TronBlock', 'crud', 'com.dadsunion.tron', 'tron', 'blockheight', '区块高度', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2021-03-05 15:26:54', '', '2021-03-05 18:54:35', NULL);
INSERT INTO `gen_table` VALUES (11, 'tron_chain_record', '波场链上交互信息', NULL, NULL, 'TronChainRecord', 'crud', 'com.dadsunion.tron', 'tron', 'chain', '波场链上交互信息', 'l8oo8l', '0', '/', '{}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45', NULL);
INSERT INTO `gen_table` VALUES (12, 'tron_coin_type', '币种管理', NULL, NULL, 'TronCoinType', 'crud', 'com.dadsunion.tron', 'tron', 'cointype', '币种管理', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53', NULL);
INSERT INTO `gen_table` VALUES (13, 'tron_collect_record', '归集记录', NULL, NULL, 'TronCollectRecord', 'crud', 'com.dadsunion.tron', 'tron', 'collect', '归集记录', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2003\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01', NULL);
INSERT INTO `gen_table` VALUES (14, 'tron_consume_record', '消耗记录', NULL, NULL, 'TronConsumeRecord', 'crud', 'com.dadsunion.tron', 'tron', 'consume', '消耗记录', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2005\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09', NULL);
INSERT INTO `gen_table` VALUES (15, 'tron_recharge_record', '充值记录', NULL, NULL, 'TronRechargeRecord', 'crud', 'com.dadsunion.tron', 'tron', 'recharge', '充值记录', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2003\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17', NULL);
INSERT INTO `gen_table` VALUES (16, 'tron_system_address', '系统地址', NULL, NULL, 'TronSystemAddress', 'crud', 'com.dadsunion.tron', 'tron', 'sysaddress', '系统地址', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:26', NULL);
INSERT INTO `gen_table` VALUES (17, 'tron_unfreeze_record', '冻结解冻记录', NULL, NULL, 'TronUnfreezeRecord', 'crud', 'com.dadsunion.tron', 'tron', 'unfreeze', '冻结解冻记录', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2005\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39', NULL);
INSERT INTO `gen_table` VALUES (18, 'tron_withdraw_record', '提现记录', NULL, NULL, 'TronWithdrawRecord', 'crud', 'com.dadsunion.tron', 'tron', 'withdraw', '提现记录', 'l8oo8l', '0', '/', '{\"parentMenuId\":\"2004\"}', 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (2, '1', 'user_id', '用户ID', 'varchar(32)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (3, '1', 'address', '地址', 'varchar(64)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (4, '1', 'activated', '是否已激活，0.未激活，1.已激活', 'tinyint(1)', 'Integer', 'activated', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (5, '1', 'secretkey', '秘钥', 'varchar(255)', 'String', 'secretkey', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (6, '1', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (7, '1', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 15:49:01');
INSERT INTO `gen_table_column` VALUES (8, '2', 'block', '区块高度', 'tinyint(20)', 'Long', 'block', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:26:54', '', '2021-03-05 18:54:35');
INSERT INTO `gen_table_column` VALUES (78, '11', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (79, '11', 'type', '类型，1.转账，2.带宽，3流量，4.合约', 'tinyint(1)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (80, '11', 'height', '区块高度', 'bigint(11)', 'Long', 'height', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (81, '11', 'contract_addr', '合约地址', 'varchar(64)', 'String', 'contractAddr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (82, '11', 'from', '发送地址', 'varchar(64)', 'String', 'from', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (83, '11', 'to', '目标地址', 'varchar(64)', 'String', 'to', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (84, '11', 'amount', '金额，没有小数位', 'bigint(50)', 'Long', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (85, '11', 'bandwidth', '消耗带宽', 'bigint(50)', 'Long', 'bandwidth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (86, '11', 'energy', '消耗能量', 'bigint(50)', 'Long', 'energy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (87, '11', 'born_trx', '消耗trx', 'decimal(50,20)', 'BigDecimal', 'bornTrx', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (88, '11', 'block_info', '区块信息', 'varchar(255)', 'String', 'blockInfo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (89, '11', 'state', '状态，1.已发送，2.打包中，3.成功，4，失败', 'int(1)', 'Integer', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (90, '11', 'err_msg', '失败信息', 'varchar(255)', 'String', 'errMsg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (91, '11', 'related_id', '关联ID', 'bigint(11)', 'Long', 'relatedId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (92, '11', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:45');
INSERT INTO `gen_table_column` VALUES (93, '12', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (94, '12', 'symbol', '代币符号（唯一）', 'varchar(20)', 'String', 'symbol', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (95, '12', 'type', '类型：0.主币,1.TRC10,2.TRC20', 'int(2)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (96, '12', 'is_master', '是否主币', 'tinyint(1)', 'Integer', 'isMaster', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (97, '12', 'name', '币种名称', 'varchar(20)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (98, '12', 'contract_addr', '合约地址', 'varchar(64)', 'String', 'contractAddr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (99, '12', 'scale', '小数位', 'int(2)', 'Integer', 'scale', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:08:53');
INSERT INTO `gen_table_column` VALUES (100, '13', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (101, '13', 'recharge_id', '充值记录ID', 'bigint(11)', 'Long', 'rechargeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (102, '13', 'recharge_chain_id', '充值链上ID', 'bigint(11)', 'Long', 'rechargeChainId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (103, '13', 'collect_chain_id', '归集ID', 'bigint(11)', 'Long', 'collectChainId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (104, '13', 'amount', NULL, 'decimal(50,20)', 'BigDecimal', 'amount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (105, '13', 'from', '来源地址，用户平台地址', 'varchar(64)', 'String', 'from', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (106, '13', 'to', '目标地址', 'varchar(64)', 'String', 'to', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (107, '13', 'state', '状态：0.待归集，1.归集中，2.归集完成，3.归集失败', 'tinyint(1)', 'Integer', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (108, '13', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (109, '13', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:01');
INSERT INTO `gen_table_column` VALUES (110, '14', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (111, '14', 'chain_id', '链上记录', 'bigint(11)', 'Long', 'chainId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (112, '14', 'from', '消耗地址', 'varchar(64)', 'String', 'from', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (113, '14', 'to', '目标地址', 'varchar(64)', 'String', 'to', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (114, '14', 'type', '类型：1.激活，2.获取带宽，3.获取能量', 'int(2)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (115, '14', 'state', '状态：0.待处理，1.处理中，2.处理完成', 'int(2)', 'Integer', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (116, '14', 'count', '消耗数量', 'decimal(50,20)', 'BigDecimal', 'count', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (117, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (118, '14', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:09');
INSERT INTO `gen_table_column` VALUES (119, '15', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (120, '15', 'from', '来源地址', 'varchar(64)', 'String', 'from', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (121, '15', 'to', '用户平台地址', 'varchar(64)', 'String', 'to', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (122, '15', 'amount', '金额', 'decimal(50,20)', 'BigDecimal', 'amount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (123, '15', 'state', '状态，0.待归集，1.已归集', 'tinyint(1)', 'Integer', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (124, '15', 'symbol', '币种符号', 'varchar(20)', 'String', 'symbol', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (125, '15', 'chain_id', '链上关联ID', 'bigint(20)', 'Long', 'chainId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (126, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (127, '15', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:17');
INSERT INTO `gen_table_column` VALUES (128, '16', 'id', NULL, 'int(8)', 'Integer', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:26');
INSERT INTO `gen_table_column` VALUES (129, '16', 'address', '系统地址', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:26');
INSERT INTO `gen_table_column` VALUES (130, '16', 'type', '地址类型', 'varchar(10)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:26');
INSERT INTO `gen_table_column` VALUES (131, '17', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (132, '17', 'address', '地址', 'varchar(64)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (133, '17', 'type', '类型：1.带宽，2.能量', 'int(2)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (134, '17', 'direct', '方向：0.冻结、1.解冻', 'tinyint(1)', 'Integer', 'direct', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (135, '17', 'state', '状态：0.待处理，1.处理中，2.处理完毕', 'int(2)', 'Integer', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (136, '17', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (137, '17', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:39');
INSERT INTO `gen_table_column` VALUES (138, '18', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (139, '18', 'from', '来源地址', 'varchar(64)', 'String', 'from', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (140, '18', 'to', '用户平台地址', 'varchar(64)', 'String', 'to', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (141, '18', 'amount', '金额', 'decimal(50,20)', 'BigDecimal', 'amount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (142, '18', 'state', '状态，0.待发起，1.处理中，2.成功，3.失败', 'tinyint(1)', 'Integer', 'state', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (143, '18', 'symbol', '币种符号', 'varchar(20)', 'String', 'symbol', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (144, '18', 'chain_id', '链上交互ID', 'bigint(11)', 'Long', 'chainId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (145, '18', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');
INSERT INTO `gen_table_column` VALUES (146, '18', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-03-05 15:54:44', '', '2021-03-05 16:09:47');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', '* 1/0 * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME5', 'SYSTEM', '0/1 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
INSERT INTO `qrtz_fired_triggers` VALUES ('RuoyiScheduler', 'DESKTOP-ERL40MD16160700603971616070060410', 'TASK_CLASS_NAME5', 'SYSTEM', 'DESKTOP-ERL40MD1616070060397', 1616070120003, 1616070120000, 5, 'EXECUTING', 'TASK_CLASS_NAME5', 'SYSTEM', '1', '0');

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.dadsunion.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E64616473756E696F6E2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E64616473756E696F6E2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178008670D078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.dadsunion.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E64616473756E696F6E2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E64616473756E696F6E2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178008670D078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.dadsunion.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E64616473756E696F6E2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E64616473756E696F6E2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178008670D078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', NULL, 'com.dadsunion.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E64616473756E696F6E2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E64616473756E696F6E2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017844042A7878707400007070707400013174000D2A20312F30202A202A202A203F74001577697468647261775461736B2E776974686472617774000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000474000CE68F90E78EB0E4BBBBE58AA174000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME5', 'SYSTEM', NULL, 'com.dadsunion.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720022636F6D2E64616473756E696F6E2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E64616473756E696F6E2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000178446E562878707400007070707400013174000D302F31202A202A202A202A203F74001273796E63426C6F636B5461736B2E73796E6374000653595354454D7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000005740012E58CBAE59D97E689ABE68F8FE4BBBBE58AA174000133740001307800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-ERL40MD1616070060397', 1616070114483, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1616070060000, -1, 5, 'PAUSED', 'CRON', 1616070060000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1616070060000, -1, 5, 'PAUSED', 'CRON', 1616070060000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1616070060000, -1, 5, 'PAUSED', 'CRON', 1616070060000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'SYSTEM', 'TASK_CLASS_NAME4', 'SYSTEM', NULL, 1616072460000, -1, 5, 'PAUSED', 'CRON', 1616070060000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME5', 'SYSTEM', 'TASK_CLASS_NAME5', 'SYSTEM', NULL, 1616070121000, 1616070120000, 5, 'BLOCKED', 'CRON', 1616070060000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-03-05 11:55:14', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-03-05 11:55:14', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-03-05 11:55:14', '', NULL, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-03-05 11:55:14', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-03-05 11:55:14', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-03-05 11:55:14', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-03-05 11:55:14', '', NULL, '');
INSERT INTO `sys_job` VALUES (4, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '* 1/0 * * * ?', '3', '1', '1', 'admin', '2021-03-18 14:27:07', 'admin', '2021-03-18 14:27:30', '');
INSERT INTO `sys_job` VALUES (5, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '0/1 * * * * ?', '3', '1', '0', 'admin', '2021-03-18 16:23:05', 'admin', '2021-03-18 19:32:49', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1755 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：59毫秒', '0', '', '2021-03-18 14:27:40');
INSERT INTO `sys_job_log` VALUES (2, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：998559毫秒', '0', '', '2021-03-18 14:44:36');
INSERT INTO `sys_job_log` VALUES (3, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：42168毫秒', '0', '', '2021-03-18 14:46:48');
INSERT INTO `sys_job_log` VALUES (4, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：13729毫秒', '0', '', '2021-03-18 15:01:32');
INSERT INTO `sys_job_log` VALUES (5, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：182103毫秒', '0', '', '2021-03-18 15:10:30');
INSERT INTO `sys_job_log` VALUES (6, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：12663毫秒', '0', '', '2021-03-18 15:16:59');
INSERT INTO `sys_job_log` VALUES (7, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：24214毫秒', '0', '', '2021-03-18 15:41:26');
INSERT INTO `sys_job_log` VALUES (8, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：6709毫秒', '0', '', '2021-03-18 15:43:06');
INSERT INTO `sys_job_log` VALUES (9, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：175070毫秒', '0', '', '2021-03-18 15:47:50');
INSERT INTO `sys_job_log` VALUES (10, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：6291毫秒', '0', '', '2021-03-18 15:48:38');
INSERT INTO `sys_job_log` VALUES (11, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：5487毫秒', '0', '', '2021-03-18 15:55:22');
INSERT INTO `sys_job_log` VALUES (12, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：140914毫秒', '0', '', '2021-03-18 16:04:10');
INSERT INTO `sys_job_log` VALUES (13, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：4637毫秒', '0', '', '2021-03-18 16:08:47');
INSERT INTO `sys_job_log` VALUES (14, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：4885毫秒', '0', '', '2021-03-18 16:12:39');
INSERT INTO `sys_job_log` VALUES (15, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：34894毫秒', '0', '', '2021-03-18 16:14:51');
INSERT INTO `sys_job_log` VALUES (16, '提现任务', 'SYSTEM', 'withdrawTask.withdraw', '提现任务 总共耗时：65788毫秒', '0', '', '2021-03-18 16:20:49');
INSERT INTO `sys_job_log` VALUES (17, '区块扫描任务', 'SYSTEM', 'syncBlockTask.start', '区块扫描任务 总共耗时：37186毫秒', '0', '', '2021-03-18 16:23:53');
INSERT INTO `sys_job_log` VALUES (18, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：6毫秒', '1', 'java.lang.IllegalAccessException: Class com.dadsunion.quartz.util.JobInvokeUtil can not access a member of class com.dadsunion.tron.task.SyncBlockTask with modifiers \"\"\r\n	at sun.reflect.Reflection.ensureMemberAccess(Reflection.java:102)\r\n	at java.lang.reflect.AccessibleObject.slowCheckMemberAccess(AccessibleObject.java:296)\r\n	at java.lang.reflect.AccessibleObject.checkAccess(AccessibleObject.java:288)\r\n	at java.lang.reflect.Method.invoke(Method.java:491)\r\n	at com.dadsunion.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:61)\r\n	at com.dadsunion.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.dadsunion.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.dadsunion.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:44)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-03-18 16:28:08');
INSERT INTO `sys_job_log` VALUES (19, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：19823毫秒', '0', '', '2021-03-18 16:30:06');
INSERT INTO `sys_job_log` VALUES (20, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：130066毫秒', '0', '', '2021-03-18 16:32:40');
INSERT INTO `sys_job_log` VALUES (21, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：157200毫秒', '0', '', '2021-03-18 16:36:24');
INSERT INTO `sys_job_log` VALUES (22, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：59952毫秒', '0', '', '2021-03-18 16:38:53');
INSERT INTO `sys_job_log` VALUES (23, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：12518毫秒', '0', '', '2021-03-18 16:42:05');
INSERT INTO `sys_job_log` VALUES (24, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：218742毫秒', '0', '', '2021-03-18 16:46:56');
INSERT INTO `sys_job_log` VALUES (25, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：19082毫秒', '0', '', '2021-03-18 16:48:08');
INSERT INTO `sys_job_log` VALUES (26, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4774毫秒', '0', '', '2021-03-18 16:48:37');
INSERT INTO `sys_job_log` VALUES (27, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：95345毫秒', '0', '', '2021-03-18 16:52:33');
INSERT INTO `sys_job_log` VALUES (28, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：29219毫秒', '0', '', '2021-03-18 16:53:59');
INSERT INTO `sys_job_log` VALUES (29, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：7330毫秒', '0', '', '2021-03-18 16:55:34');
INSERT INTO `sys_job_log` VALUES (30, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1172毫秒', '0', '', '2021-03-18 16:55:35');
INSERT INTO `sys_job_log` VALUES (31, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 16:55:36');
INSERT INTO `sys_job_log` VALUES (32, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：502毫秒', '0', '', '2021-03-18 16:55:37');
INSERT INTO `sys_job_log` VALUES (33, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 16:55:39');
INSERT INTO `sys_job_log` VALUES (34, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 16:55:42');
INSERT INTO `sys_job_log` VALUES (35, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 16:55:45');
INSERT INTO `sys_job_log` VALUES (36, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：916毫秒', '0', '', '2021-03-18 16:55:48');
INSERT INTO `sys_job_log` VALUES (37, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 16:55:51');
INSERT INTO `sys_job_log` VALUES (38, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 16:55:54');
INSERT INTO `sys_job_log` VALUES (39, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 16:55:57');
INSERT INTO `sys_job_log` VALUES (40, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 16:56:00');
INSERT INTO `sys_job_log` VALUES (41, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2531毫秒', '0', '', '2021-03-18 16:56:05');
INSERT INTO `sys_job_log` VALUES (42, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：939毫秒', '0', '', '2021-03-18 16:56:06');
INSERT INTO `sys_job_log` VALUES (43, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：750毫秒', '0', '', '2021-03-18 16:56:09');
INSERT INTO `sys_job_log` VALUES (44, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：731毫秒', '0', '', '2021-03-18 16:56:12');
INSERT INTO `sys_job_log` VALUES (45, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 16:56:15');
INSERT INTO `sys_job_log` VALUES (46, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 16:56:18');
INSERT INTO `sys_job_log` VALUES (47, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 16:56:21');
INSERT INTO `sys_job_log` VALUES (48, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 16:56:24');
INSERT INTO `sys_job_log` VALUES (49, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 16:56:27');
INSERT INTO `sys_job_log` VALUES (50, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 16:56:30');
INSERT INTO `sys_job_log` VALUES (51, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 16:56:33');
INSERT INTO `sys_job_log` VALUES (52, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 16:56:36');
INSERT INTO `sys_job_log` VALUES (53, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 16:56:39');
INSERT INTO `sys_job_log` VALUES (54, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：477毫秒', '0', '', '2021-03-18 16:56:42');
INSERT INTO `sys_job_log` VALUES (55, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 16:56:45');
INSERT INTO `sys_job_log` VALUES (56, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 16:56:48');
INSERT INTO `sys_job_log` VALUES (57, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 16:56:51');
INSERT INTO `sys_job_log` VALUES (58, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 16:56:54');
INSERT INTO `sys_job_log` VALUES (59, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 16:56:57');
INSERT INTO `sys_job_log` VALUES (60, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 16:57:00');
INSERT INTO `sys_job_log` VALUES (61, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 16:57:03');
INSERT INTO `sys_job_log` VALUES (62, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 16:57:06');
INSERT INTO `sys_job_log` VALUES (63, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 16:57:09');
INSERT INTO `sys_job_log` VALUES (64, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 16:57:12');
INSERT INTO `sys_job_log` VALUES (65, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 16:57:15');
INSERT INTO `sys_job_log` VALUES (66, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 16:57:18');
INSERT INTO `sys_job_log` VALUES (67, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 16:57:21');
INSERT INTO `sys_job_log` VALUES (68, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 16:57:24');
INSERT INTO `sys_job_log` VALUES (69, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：29638毫秒', '0', '', '2021-03-18 16:57:56');
INSERT INTO `sys_job_log` VALUES (70, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4055毫秒', '0', '', '2021-03-18 17:04:05');
INSERT INTO `sys_job_log` VALUES (71, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1856毫秒', '0', '', '2021-03-18 17:04:07');
INSERT INTO `sys_job_log` VALUES (72, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:04:07');
INSERT INTO `sys_job_log` VALUES (73, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:04:07');
INSERT INTO `sys_job_log` VALUES (74, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 17:04:08');
INSERT INTO `sys_job_log` VALUES (75, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:04:09');
INSERT INTO `sys_job_log` VALUES (76, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:04:12');
INSERT INTO `sys_job_log` VALUES (77, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：7455毫秒', '0', '', '2021-03-18 17:04:22');
INSERT INTO `sys_job_log` VALUES (78, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：952毫秒', '0', '', '2021-03-18 17:04:23');
INSERT INTO `sys_job_log` VALUES (79, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:04:23');
INSERT INTO `sys_job_log` VALUES (80, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 17:04:24');
INSERT INTO `sys_job_log` VALUES (81, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：710毫秒', '0', '', '2021-03-18 17:04:27');
INSERT INTO `sys_job_log` VALUES (82, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:04:30');
INSERT INTO `sys_job_log` VALUES (83, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:04:33');
INSERT INTO `sys_job_log` VALUES (84, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:04:36');
INSERT INTO `sys_job_log` VALUES (85, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:04:39');
INSERT INTO `sys_job_log` VALUES (86, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:04:42');
INSERT INTO `sys_job_log` VALUES (87, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:04:45');
INSERT INTO `sys_job_log` VALUES (88, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:04:48');
INSERT INTO `sys_job_log` VALUES (89, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：469毫秒', '0', '', '2021-03-18 17:04:51');
INSERT INTO `sys_job_log` VALUES (90, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：218577毫秒', '0', '', '2021-03-18 17:08:32');
INSERT INTO `sys_job_log` VALUES (91, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：32102毫秒', '0', '', '2021-03-18 17:09:11');
INSERT INTO `sys_job_log` VALUES (92, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：18089毫秒', '0', '', '2021-03-18 17:09:33');
INSERT INTO `sys_job_log` VALUES (93, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1851毫秒', '0', '', '2021-03-18 17:10:06');
INSERT INTO `sys_job_log` VALUES (94, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：718毫秒', '0', '', '2021-03-18 17:10:06');
INSERT INTO `sys_job_log` VALUES (95, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:10:07');
INSERT INTO `sys_job_log` VALUES (96, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:10:07');
INSERT INTO `sys_job_log` VALUES (97, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 17:10:09');
INSERT INTO `sys_job_log` VALUES (98, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1165毫秒', '0', '', '2021-03-18 17:10:13');
INSERT INTO `sys_job_log` VALUES (99, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:10:15');
INSERT INTO `sys_job_log` VALUES (100, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 17:10:18');
INSERT INTO `sys_job_log` VALUES (101, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:10:21');
INSERT INTO `sys_job_log` VALUES (102, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:10:24');
INSERT INTO `sys_job_log` VALUES (103, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 17:10:27');
INSERT INTO `sys_job_log` VALUES (104, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 17:10:30');
INSERT INTO `sys_job_log` VALUES (105, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:10:33');
INSERT INTO `sys_job_log` VALUES (106, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:10:36');
INSERT INTO `sys_job_log` VALUES (107, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:10:39');
INSERT INTO `sys_job_log` VALUES (108, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:10:42');
INSERT INTO `sys_job_log` VALUES (109, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:10:45');
INSERT INTO `sys_job_log` VALUES (110, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:10:48');
INSERT INTO `sys_job_log` VALUES (111, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:10:51');
INSERT INTO `sys_job_log` VALUES (112, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:10:54');
INSERT INTO `sys_job_log` VALUES (113, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：11363毫秒', '0', '', '2021-03-18 17:11:08');
INSERT INTO `sys_job_log` VALUES (114, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：141816毫秒', '0', '', '2021-03-18 17:13:30');
INSERT INTO `sys_job_log` VALUES (115, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：8309毫秒', '0', '', '2021-03-18 17:13:50');
INSERT INTO `sys_job_log` VALUES (116, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：49674毫秒', '0', '', '2021-03-18 17:14:40');
INSERT INTO `sys_job_log` VALUES (117, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：7565毫秒', '0', '', '2021-03-18 17:14:49');
INSERT INTO `sys_job_log` VALUES (118, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：23077毫秒', '0', '', '2021-03-18 17:15:41');
INSERT INTO `sys_job_log` VALUES (119, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1945毫秒', '0', '', '2021-03-18 17:15:46');
INSERT INTO `sys_job_log` VALUES (120, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:15:48');
INSERT INTO `sys_job_log` VALUES (121, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:15:51');
INSERT INTO `sys_job_log` VALUES (122, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:15:54');
INSERT INTO `sys_job_log` VALUES (123, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:15:57');
INSERT INTO `sys_job_log` VALUES (124, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1687毫秒', '0', '', '2021-03-18 17:16:01');
INSERT INTO `sys_job_log` VALUES (125, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 17:16:03');
INSERT INTO `sys_job_log` VALUES (126, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：469毫秒', '0', '', '2021-03-18 17:16:06');
INSERT INTO `sys_job_log` VALUES (127, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 17:16:09');
INSERT INTO `sys_job_log` VALUES (128, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:16:12');
INSERT INTO `sys_job_log` VALUES (129, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:16:15');
INSERT INTO `sys_job_log` VALUES (130, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:16:18');
INSERT INTO `sys_job_log` VALUES (131, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:16:21');
INSERT INTO `sys_job_log` VALUES (132, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:16:24');
INSERT INTO `sys_job_log` VALUES (133, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:16:27');
INSERT INTO `sys_job_log` VALUES (134, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:16:30');
INSERT INTO `sys_job_log` VALUES (135, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:16:33');
INSERT INTO `sys_job_log` VALUES (136, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:16:36');
INSERT INTO `sys_job_log` VALUES (137, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：947毫秒', '0', '', '2021-03-18 17:16:39');
INSERT INTO `sys_job_log` VALUES (138, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4270毫秒', '0', '', '2021-03-18 17:16:46');
INSERT INTO `sys_job_log` VALUES (139, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:16:46');
INSERT INTO `sys_job_log` VALUES (140, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:16:48');
INSERT INTO `sys_job_log` VALUES (141, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:16:51');
INSERT INTO `sys_job_log` VALUES (142, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:16:54');
INSERT INTO `sys_job_log` VALUES (143, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:16:57');
INSERT INTO `sys_job_log` VALUES (144, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:17:00');
INSERT INTO `sys_job_log` VALUES (145, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：11230毫秒', '0', '', '2021-03-18 17:17:14');
INSERT INTO `sys_job_log` VALUES (146, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1163毫秒', '0', '', '2021-03-18 17:17:15');
INSERT INTO `sys_job_log` VALUES (147, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：534毫秒', '0', '', '2021-03-18 17:17:15');
INSERT INTO `sys_job_log` VALUES (148, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:17:16');
INSERT INTO `sys_job_log` VALUES (149, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:17:16');
INSERT INTO `sys_job_log` VALUES (150, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:17:18');
INSERT INTO `sys_job_log` VALUES (151, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:17:21');
INSERT INTO `sys_job_log` VALUES (152, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:17:24');
INSERT INTO `sys_job_log` VALUES (153, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:17:27');
INSERT INTO `sys_job_log` VALUES (154, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:17:30');
INSERT INTO `sys_job_log` VALUES (155, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:17:33');
INSERT INTO `sys_job_log` VALUES (156, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 17:17:36');
INSERT INTO `sys_job_log` VALUES (157, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1651毫秒', '0', '', '2021-03-18 17:17:40');
INSERT INTO `sys_job_log` VALUES (158, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 17:17:42');
INSERT INTO `sys_job_log` VALUES (159, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:17:45');
INSERT INTO `sys_job_log` VALUES (160, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:17:48');
INSERT INTO `sys_job_log` VALUES (161, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:17:51');
INSERT INTO `sys_job_log` VALUES (162, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2397毫秒', '0', '', '2021-03-18 17:19:35');
INSERT INTO `sys_job_log` VALUES (163, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:19:36');
INSERT INTO `sys_job_log` VALUES (164, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:19:39');
INSERT INTO `sys_job_log` VALUES (165, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:19:42');
INSERT INTO `sys_job_log` VALUES (166, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:19:45');
INSERT INTO `sys_job_log` VALUES (167, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:19:48');
INSERT INTO `sys_job_log` VALUES (168, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:19:51');
INSERT INTO `sys_job_log` VALUES (169, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：7037毫秒', '0', '', '2021-03-18 17:20:01');
INSERT INTO `sys_job_log` VALUES (170, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1176毫秒', '0', '', '2021-03-18 17:20:02');
INSERT INTO `sys_job_log` VALUES (171, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 17:20:02');
INSERT INTO `sys_job_log` VALUES (172, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:20:03');
INSERT INTO `sys_job_log` VALUES (173, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:20:06');
INSERT INTO `sys_job_log` VALUES (174, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:20:09');
INSERT INTO `sys_job_log` VALUES (175, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:20:12');
INSERT INTO `sys_job_log` VALUES (176, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:20:15');
INSERT INTO `sys_job_log` VALUES (177, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 17:20:18');
INSERT INTO `sys_job_log` VALUES (178, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:20:21');
INSERT INTO `sys_job_log` VALUES (179, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:20:24');
INSERT INTO `sys_job_log` VALUES (180, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 17:20:27');
INSERT INTO `sys_job_log` VALUES (181, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：712毫秒', '0', '', '2021-03-18 17:20:30');
INSERT INTO `sys_job_log` VALUES (182, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 17:20:33');
INSERT INTO `sys_job_log` VALUES (183, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2477毫秒', '0', '', '2021-03-18 17:24:41');
INSERT INTO `sys_job_log` VALUES (184, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:24:42');
INSERT INTO `sys_job_log` VALUES (185, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:24:45');
INSERT INTO `sys_job_log` VALUES (186, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:24:48');
INSERT INTO `sys_job_log` VALUES (187, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:24:51');
INSERT INTO `sys_job_log` VALUES (188, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:24:54');
INSERT INTO `sys_job_log` VALUES (189, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:24:57');
INSERT INTO `sys_job_log` VALUES (190, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:25:00');
INSERT INTO `sys_job_log` VALUES (191, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：477毫秒', '0', '', '2021-03-18 17:25:03');
INSERT INTO `sys_job_log` VALUES (192, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 17:25:06');
INSERT INTO `sys_job_log` VALUES (193, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:25:09');
INSERT INTO `sys_job_log` VALUES (194, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:25:12');
INSERT INTO `sys_job_log` VALUES (195, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:25:15');
INSERT INTO `sys_job_log` VALUES (196, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:25:18');
INSERT INTO `sys_job_log` VALUES (197, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3470毫秒', '0', '', '2021-03-18 17:26:21');
INSERT INTO `sys_job_log` VALUES (198, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:26:21');
INSERT INTO `sys_job_log` VALUES (199, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:26:24');
INSERT INTO `sys_job_log` VALUES (200, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:26:27');
INSERT INTO `sys_job_log` VALUES (201, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:26:30');
INSERT INTO `sys_job_log` VALUES (202, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:26:33');
INSERT INTO `sys_job_log` VALUES (203, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:26:36');
INSERT INTO `sys_job_log` VALUES (204, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：10619毫秒', '0', '', '2021-03-18 17:26:49');
INSERT INTO `sys_job_log` VALUES (205, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1186毫秒', '0', '', '2021-03-18 17:26:50');
INSERT INTO `sys_job_log` VALUES (206, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2041毫秒', '0', '', '2021-03-18 17:26:52');
INSERT INTO `sys_job_log` VALUES (207, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1914毫秒', '0', '', '2021-03-18 17:26:54');
INSERT INTO `sys_job_log` VALUES (208, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:26:55');
INSERT INTO `sys_job_log` VALUES (209, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:26:55');
INSERT INTO `sys_job_log` VALUES (210, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:26:57');
INSERT INTO `sys_job_log` VALUES (211, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：465毫秒', '0', '', '2021-03-18 17:27:00');
INSERT INTO `sys_job_log` VALUES (212, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:27:03');
INSERT INTO `sys_job_log` VALUES (213, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:27:06');
INSERT INTO `sys_job_log` VALUES (214, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：468毫秒', '0', '', '2021-03-18 17:27:09');
INSERT INTO `sys_job_log` VALUES (215, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 17:27:12');
INSERT INTO `sys_job_log` VALUES (216, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：945毫秒', '0', '', '2021-03-18 17:27:15');
INSERT INTO `sys_job_log` VALUES (217, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:27:18');
INSERT INTO `sys_job_log` VALUES (218, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:27:21');
INSERT INTO `sys_job_log` VALUES (219, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:27:24');
INSERT INTO `sys_job_log` VALUES (220, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:27:27');
INSERT INTO `sys_job_log` VALUES (221, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:27:30');
INSERT INTO `sys_job_log` VALUES (222, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：266毫秒', '0', '', '2021-03-18 17:27:33');
INSERT INTO `sys_job_log` VALUES (223, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:27:36');
INSERT INTO `sys_job_log` VALUES (224, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:27:39');
INSERT INTO `sys_job_log` VALUES (225, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1380毫秒', '0', '', '2021-03-18 17:27:43');
INSERT INTO `sys_job_log` VALUES (226, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2319毫秒', '0', '', '2021-03-18 17:27:47');
INSERT INTO `sys_job_log` VALUES (227, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 17:27:48');
INSERT INTO `sys_job_log` VALUES (228, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2462毫秒', '0', '', '2021-03-18 17:27:53');
INSERT INTO `sys_job_log` VALUES (229, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：472毫秒', '0', '', '2021-03-18 17:27:54');
INSERT INTO `sys_job_log` VALUES (230, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 17:27:57');
INSERT INTO `sys_job_log` VALUES (231, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 17:28:00');
INSERT INTO `sys_job_log` VALUES (232, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:28:03');
INSERT INTO `sys_job_log` VALUES (233, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：472毫秒', '0', '', '2021-03-18 17:28:06');
INSERT INTO `sys_job_log` VALUES (234, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 17:28:09');
INSERT INTO `sys_job_log` VALUES (235, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：12815毫秒', '0', '', '2021-03-18 17:28:58');
INSERT INTO `sys_job_log` VALUES (236, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1947毫秒', '0', '', '2021-03-18 17:29:13');
INSERT INTO `sys_job_log` VALUES (237, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1205毫秒', '0', '', '2021-03-18 17:29:16');
INSERT INTO `sys_job_log` VALUES (238, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:29:18');
INSERT INTO `sys_job_log` VALUES (239, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:29:21');
INSERT INTO `sys_job_log` VALUES (240, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:29:24');
INSERT INTO `sys_job_log` VALUES (241, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：993毫秒', '0', '', '2021-03-18 17:29:28');
INSERT INTO `sys_job_log` VALUES (242, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:29:30');
INSERT INTO `sys_job_log` VALUES (243, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：468毫秒', '0', '', '2021-03-18 17:29:33');
INSERT INTO `sys_job_log` VALUES (244, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:29:36');
INSERT INTO `sys_job_log` VALUES (245, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 17:29:39');
INSERT INTO `sys_job_log` VALUES (246, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：503毫秒', '0', '', '2021-03-18 17:29:42');
INSERT INTO `sys_job_log` VALUES (247, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：934毫秒', '0', '', '2021-03-18 17:29:45');
INSERT INTO `sys_job_log` VALUES (248, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 17:29:48');
INSERT INTO `sys_job_log` VALUES (249, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:29:51');
INSERT INTO `sys_job_log` VALUES (250, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:29:54');
INSERT INTO `sys_job_log` VALUES (251, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：265毫秒', '0', '', '2021-03-18 17:29:57');
INSERT INTO `sys_job_log` VALUES (252, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:30:00');
INSERT INTO `sys_job_log` VALUES (253, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:30:03');
INSERT INTO `sys_job_log` VALUES (254, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1380毫秒', '0', '', '2021-03-18 17:30:07');
INSERT INTO `sys_job_log` VALUES (255, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 17:30:09');
INSERT INTO `sys_job_log` VALUES (256, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1720毫秒', '0', '', '2021-03-18 17:30:13');
INSERT INTO `sys_job_log` VALUES (257, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1646毫秒', '0', '', '2021-03-18 17:30:16');
INSERT INTO `sys_job_log` VALUES (258, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：697毫秒', '0', '', '2021-03-18 17:30:18');
INSERT INTO `sys_job_log` VALUES (259, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：469毫秒', '0', '', '2021-03-18 17:30:21');
INSERT INTO `sys_job_log` VALUES (260, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 17:30:24');
INSERT INTO `sys_job_log` VALUES (261, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:30:27');
INSERT INTO `sys_job_log` VALUES (262, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 17:30:30');
INSERT INTO `sys_job_log` VALUES (263, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：963毫秒', '0', '', '2021-03-18 17:30:33');
INSERT INTO `sys_job_log` VALUES (264, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:30:36');
INSERT INTO `sys_job_log` VALUES (265, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1152毫秒', '0', '', '2021-03-18 17:30:40');
INSERT INTO `sys_job_log` VALUES (266, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：701毫秒', '0', '', '2021-03-18 17:30:42');
INSERT INTO `sys_job_log` VALUES (267, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1175毫秒', '0', '', '2021-03-18 17:30:46');
INSERT INTO `sys_job_log` VALUES (268, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:30:48');
INSERT INTO `sys_job_log` VALUES (269, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:30:51');
INSERT INTO `sys_job_log` VALUES (270, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:30:54');
INSERT INTO `sys_job_log` VALUES (271, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:30:57');
INSERT INTO `sys_job_log` VALUES (272, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:31:00');
INSERT INTO `sys_job_log` VALUES (273, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:31:03');
INSERT INTO `sys_job_log` VALUES (274, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:31:06');
INSERT INTO `sys_job_log` VALUES (275, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1371毫秒', '0', '', '2021-03-18 17:31:10');
INSERT INTO `sys_job_log` VALUES (276, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 17:31:12');
INSERT INTO `sys_job_log` VALUES (277, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1165毫秒', '0', '', '2021-03-18 17:31:16');
INSERT INTO `sys_job_log` VALUES (278, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 17:31:18');
INSERT INTO `sys_job_log` VALUES (279, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:31:21');
INSERT INTO `sys_job_log` VALUES (280, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:31:24');
INSERT INTO `sys_job_log` VALUES (281, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2450毫秒', '0', '', '2021-03-18 17:32:50');
INSERT INTO `sys_job_log` VALUES (282, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 17:32:51');
INSERT INTO `sys_job_log` VALUES (283, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2484毫秒', '0', '', '2021-03-18 17:32:56');
INSERT INTO `sys_job_log` VALUES (284, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：524毫秒', '0', '', '2021-03-18 17:32:57');
INSERT INTO `sys_job_log` VALUES (285, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 17:33:00');
INSERT INTO `sys_job_log` VALUES (286, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 17:33:03');
INSERT INTO `sys_job_log` VALUES (287, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1363毫秒', '0', '', '2021-03-18 17:33:07');
INSERT INTO `sys_job_log` VALUES (288, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1590毫秒', '0', '', '2021-03-18 17:33:10');
INSERT INTO `sys_job_log` VALUES (289, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：704毫秒', '0', '', '2021-03-18 17:33:12');
INSERT INTO `sys_job_log` VALUES (290, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 17:33:15');
INSERT INTO `sys_job_log` VALUES (291, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：706毫秒', '0', '', '2021-03-18 17:33:18');
INSERT INTO `sys_job_log` VALUES (292, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：718毫秒', '0', '', '2021-03-18 17:33:21');
INSERT INTO `sys_job_log` VALUES (293, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1588毫秒', '0', '', '2021-03-18 17:33:25');
INSERT INTO `sys_job_log` VALUES (294, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：469毫秒', '0', '', '2021-03-18 17:33:27');
INSERT INTO `sys_job_log` VALUES (295, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:33:30');
INSERT INTO `sys_job_log` VALUES (296, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:33:33');
INSERT INTO `sys_job_log` VALUES (297, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:33:36');
INSERT INTO `sys_job_log` VALUES (298, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:33:39');
INSERT INTO `sys_job_log` VALUES (299, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:33:42');
INSERT INTO `sys_job_log` VALUES (300, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:33:45');
INSERT INTO `sys_job_log` VALUES (301, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:33:48');
INSERT INTO `sys_job_log` VALUES (302, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 17:33:51');
INSERT INTO `sys_job_log` VALUES (303, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：954毫秒', '0', '', '2021-03-18 17:33:54');
INSERT INTO `sys_job_log` VALUES (304, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:33:57');
INSERT INTO `sys_job_log` VALUES (305, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:34:00');
INSERT INTO `sys_job_log` VALUES (306, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:34:03');
INSERT INTO `sys_job_log` VALUES (307, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:34:06');
INSERT INTO `sys_job_log` VALUES (308, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:34:09');
INSERT INTO `sys_job_log` VALUES (309, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:34:12');
INSERT INTO `sys_job_log` VALUES (310, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:34:15');
INSERT INTO `sys_job_log` VALUES (311, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:34:18');
INSERT INTO `sys_job_log` VALUES (312, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：469毫秒', '0', '', '2021-03-18 17:34:21');
INSERT INTO `sys_job_log` VALUES (313, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：714毫秒', '0', '', '2021-03-18 17:34:24');
INSERT INTO `sys_job_log` VALUES (314, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:34:27');
INSERT INTO `sys_job_log` VALUES (315, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 17:34:30');
INSERT INTO `sys_job_log` VALUES (316, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:34:33');
INSERT INTO `sys_job_log` VALUES (317, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:34:36');
INSERT INTO `sys_job_log` VALUES (318, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:34:39');
INSERT INTO `sys_job_log` VALUES (319, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:34:42');
INSERT INTO `sys_job_log` VALUES (320, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:34:45');
INSERT INTO `sys_job_log` VALUES (321, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 17:34:48');
INSERT INTO `sys_job_log` VALUES (322, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1143毫秒', '0', '', '2021-03-18 17:34:52');
INSERT INTO `sys_job_log` VALUES (323, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2497毫秒', '0', '', '2021-03-18 17:36:08');
INSERT INTO `sys_job_log` VALUES (324, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:36:09');
INSERT INTO `sys_job_log` VALUES (325, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1156毫秒', '0', '', '2021-03-18 17:36:13');
INSERT INTO `sys_job_log` VALUES (326, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:36:15');
INSERT INTO `sys_job_log` VALUES (327, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:36:18');
INSERT INTO `sys_job_log` VALUES (328, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:36:21');
INSERT INTO `sys_job_log` VALUES (329, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:36:24');
INSERT INTO `sys_job_log` VALUES (330, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:36:27');
INSERT INTO `sys_job_log` VALUES (331, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:36:30');
INSERT INTO `sys_job_log` VALUES (332, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:36:33');
INSERT INTO `sys_job_log` VALUES (333, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:36:36');
INSERT INTO `sys_job_log` VALUES (334, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:36:39');
INSERT INTO `sys_job_log` VALUES (335, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：710毫秒', '0', '', '2021-03-18 17:36:42');
INSERT INTO `sys_job_log` VALUES (336, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:36:45');
INSERT INTO `sys_job_log` VALUES (337, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 17:36:48');
INSERT INTO `sys_job_log` VALUES (338, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:36:51');
INSERT INTO `sys_job_log` VALUES (339, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1126毫秒', '0', '', '2021-03-18 17:36:55');
INSERT INTO `sys_job_log` VALUES (340, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:36:57');
INSERT INTO `sys_job_log` VALUES (341, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:37:00');
INSERT INTO `sys_job_log` VALUES (342, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:37:03');
INSERT INTO `sys_job_log` VALUES (343, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 17:37:06');
INSERT INTO `sys_job_log` VALUES (344, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：921毫秒', '0', '', '2021-03-18 17:37:09');
INSERT INTO `sys_job_log` VALUES (345, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2578毫秒', '0', '', '2021-03-18 17:37:14');
INSERT INTO `sys_job_log` VALUES (346, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：470毫秒', '0', '', '2021-03-18 17:37:15');
INSERT INTO `sys_job_log` VALUES (347, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：472毫秒', '0', '', '2021-03-18 17:37:18');
INSERT INTO `sys_job_log` VALUES (348, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:37:21');
INSERT INTO `sys_job_log` VALUES (349, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：468毫秒', '0', '', '2021-03-18 17:37:24');
INSERT INTO `sys_job_log` VALUES (350, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：469毫秒', '0', '', '2021-03-18 17:37:27');
INSERT INTO `sys_job_log` VALUES (351, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:37:30');
INSERT INTO `sys_job_log` VALUES (352, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:37:33');
INSERT INTO `sys_job_log` VALUES (353, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:37:36');
INSERT INTO `sys_job_log` VALUES (354, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:37:39');
INSERT INTO `sys_job_log` VALUES (355, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：928毫秒', '0', '', '2021-03-18 17:37:42');
INSERT INTO `sys_job_log` VALUES (356, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：369毫秒', '0', '', '2021-03-18 17:37:45');
INSERT INTO `sys_job_log` VALUES (357, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:37:48');
INSERT INTO `sys_job_log` VALUES (358, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:37:51');
INSERT INTO `sys_job_log` VALUES (359, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:37:54');
INSERT INTO `sys_job_log` VALUES (360, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:37:57');
INSERT INTO `sys_job_log` VALUES (361, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:38:00');
INSERT INTO `sys_job_log` VALUES (362, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:38:03');
INSERT INTO `sys_job_log` VALUES (363, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 17:38:06');
INSERT INTO `sys_job_log` VALUES (364, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 17:38:09');
INSERT INTO `sys_job_log` VALUES (365, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：937毫秒', '0', '', '2021-03-18 17:38:12');
INSERT INTO `sys_job_log` VALUES (366, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：465毫秒', '0', '', '2021-03-18 17:38:15');
INSERT INTO `sys_job_log` VALUES (367, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:38:18');
INSERT INTO `sys_job_log` VALUES (368, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:38:21');
INSERT INTO `sys_job_log` VALUES (369, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:38:24');
INSERT INTO `sys_job_log` VALUES (370, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:38:27');
INSERT INTO `sys_job_log` VALUES (371, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:38:30');
INSERT INTO `sys_job_log` VALUES (372, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1846毫秒', '0', '', '2021-03-18 17:38:34');
INSERT INTO `sys_job_log` VALUES (373, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 17:38:36');
INSERT INTO `sys_job_log` VALUES (374, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：9215毫秒', '0', '', '2021-03-18 17:41:54');
INSERT INTO `sys_job_log` VALUES (375, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1184毫秒', '0', '', '2021-03-18 17:41:55');
INSERT INTO `sys_job_log` VALUES (376, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：500毫秒', '0', '', '2021-03-18 17:41:56');
INSERT INTO `sys_job_log` VALUES (377, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:41:56');
INSERT INTO `sys_job_log` VALUES (378, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:41:57');
INSERT INTO `sys_job_log` VALUES (379, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:42:00');
INSERT INTO `sys_job_log` VALUES (380, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:42:03');
INSERT INTO `sys_job_log` VALUES (381, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:42:06');
INSERT INTO `sys_job_log` VALUES (382, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:42:09');
INSERT INTO `sys_job_log` VALUES (383, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:42:12');
INSERT INTO `sys_job_log` VALUES (384, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：27101毫秒', '0', '', '2021-03-18 17:44:17');
INSERT INTO `sys_job_log` VALUES (385, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1180毫秒', '0', '', '2021-03-18 17:44:28');
INSERT INTO `sys_job_log` VALUES (386, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：500毫秒', '0', '', '2021-03-18 17:44:30');
INSERT INTO `sys_job_log` VALUES (387, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 17:44:33');
INSERT INTO `sys_job_log` VALUES (388, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1192毫秒', '0', '', '2021-03-18 17:44:37');
INSERT INTO `sys_job_log` VALUES (389, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 17:44:39');
INSERT INTO `sys_job_log` VALUES (390, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 17:44:42');
INSERT INTO `sys_job_log` VALUES (391, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:44:45');
INSERT INTO `sys_job_log` VALUES (392, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:44:48');
INSERT INTO `sys_job_log` VALUES (393, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:44:51');
INSERT INTO `sys_job_log` VALUES (394, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 17:44:54');
INSERT INTO `sys_job_log` VALUES (395, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 17:44:57');
INSERT INTO `sys_job_log` VALUES (396, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：715毫秒', '0', '', '2021-03-18 17:45:00');
INSERT INTO `sys_job_log` VALUES (397, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1854毫秒', '0', '', '2021-03-18 17:45:04');
INSERT INTO `sys_job_log` VALUES (398, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1188毫秒', '0', '', '2021-03-18 17:45:07');
INSERT INTO `sys_job_log` VALUES (399, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：468毫秒', '0', '', '2021-03-18 17:45:09');
INSERT INTO `sys_job_log` VALUES (400, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:45:12');
INSERT INTO `sys_job_log` VALUES (401, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:45:15');
INSERT INTO `sys_job_log` VALUES (402, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:45:18');
INSERT INTO `sys_job_log` VALUES (403, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1366毫秒', '0', '', '2021-03-18 17:45:22');
INSERT INTO `sys_job_log` VALUES (404, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 17:45:24');
INSERT INTO `sys_job_log` VALUES (405, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：711毫秒', '0', '', '2021-03-18 17:45:27');
INSERT INTO `sys_job_log` VALUES (406, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：953毫秒', '0', '', '2021-03-18 17:45:30');
INSERT INTO `sys_job_log` VALUES (407, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:45:33');
INSERT INTO `sys_job_log` VALUES (408, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:45:36');
INSERT INTO `sys_job_log` VALUES (409, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:45:39');
INSERT INTO `sys_job_log` VALUES (410, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1140毫秒', '0', '', '2021-03-18 17:45:43');
INSERT INTO `sys_job_log` VALUES (411, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 17:45:45');
INSERT INTO `sys_job_log` VALUES (412, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 17:45:48');
INSERT INTO `sys_job_log` VALUES (413, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:45:51');
INSERT INTO `sys_job_log` VALUES (414, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:45:54');
INSERT INTO `sys_job_log` VALUES (415, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 17:45:57');
INSERT INTO `sys_job_log` VALUES (416, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1372毫秒', '0', '', '2021-03-18 17:46:01');
INSERT INTO `sys_job_log` VALUES (417, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:46:03');
INSERT INTO `sys_job_log` VALUES (418, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 17:46:06');
INSERT INTO `sys_job_log` VALUES (419, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:46:09');
INSERT INTO `sys_job_log` VALUES (420, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 17:46:12');
INSERT INTO `sys_job_log` VALUES (421, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:46:15');
INSERT INTO `sys_job_log` VALUES (422, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:46:18');
INSERT INTO `sys_job_log` VALUES (423, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：312967毫秒', '0', '', '2021-03-18 17:51:34');
INSERT INTO `sys_job_log` VALUES (424, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：5365毫秒', '0', '', '2021-03-18 17:52:14');
INSERT INTO `sys_job_log` VALUES (425, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1187毫秒', '0', '', '2021-03-18 17:52:15');
INSERT INTO `sys_job_log` VALUES (426, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 17:52:16');
INSERT INTO `sys_job_log` VALUES (427, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:52:16');
INSERT INTO `sys_job_log` VALUES (428, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:52:16');
INSERT INTO `sys_job_log` VALUES (429, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:52:18');
INSERT INTO `sys_job_log` VALUES (430, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:52:21');
INSERT INTO `sys_job_log` VALUES (431, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:52:24');
INSERT INTO `sys_job_log` VALUES (432, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:52:27');
INSERT INTO `sys_job_log` VALUES (433, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:52:30');
INSERT INTO `sys_job_log` VALUES (434, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:52:33');
INSERT INTO `sys_job_log` VALUES (435, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 17:52:36');
INSERT INTO `sys_job_log` VALUES (436, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 17:52:39');
INSERT INTO `sys_job_log` VALUES (437, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:52:42');
INSERT INTO `sys_job_log` VALUES (438, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:52:45');
INSERT INTO `sys_job_log` VALUES (439, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:52:48');
INSERT INTO `sys_job_log` VALUES (440, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:52:51');
INSERT INTO `sys_job_log` VALUES (441, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:52:54');
INSERT INTO `sys_job_log` VALUES (442, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:52:57');
INSERT INTO `sys_job_log` VALUES (443, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:53:00');
INSERT INTO `sys_job_log` VALUES (444, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 17:53:03');
INSERT INTO `sys_job_log` VALUES (445, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 17:53:06');
INSERT INTO `sys_job_log` VALUES (446, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 17:53:09');
INSERT INTO `sys_job_log` VALUES (447, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:53:12');
INSERT INTO `sys_job_log` VALUES (448, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:53:15');
INSERT INTO `sys_job_log` VALUES (449, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:53:18');
INSERT INTO `sys_job_log` VALUES (450, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:53:21');
INSERT INTO `sys_job_log` VALUES (451, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:53:24');
INSERT INTO `sys_job_log` VALUES (452, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:53:27');
INSERT INTO `sys_job_log` VALUES (453, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:53:30');
INSERT INTO `sys_job_log` VALUES (454, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:53:33');
INSERT INTO `sys_job_log` VALUES (455, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:53:36');
INSERT INTO `sys_job_log` VALUES (456, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 17:53:39');
INSERT INTO `sys_job_log` VALUES (457, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:53:42');
INSERT INTO `sys_job_log` VALUES (458, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:53:45');
INSERT INTO `sys_job_log` VALUES (459, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:53:48');
INSERT INTO `sys_job_log` VALUES (460, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 17:53:51');
INSERT INTO `sys_job_log` VALUES (461, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:53:54');
INSERT INTO `sys_job_log` VALUES (462, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:53:57');
INSERT INTO `sys_job_log` VALUES (463, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：95466毫秒', '0', '', '2021-03-18 17:55:35');
INSERT INTO `sys_job_log` VALUES (464, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：22880毫秒', '0', '', '2021-03-18 17:56:35');
INSERT INTO `sys_job_log` VALUES (465, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1722毫秒', '0', '', '2021-03-18 17:56:40');
INSERT INTO `sys_job_log` VALUES (466, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 17:56:42');
INSERT INTO `sys_job_log` VALUES (467, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:56:45');
INSERT INTO `sys_job_log` VALUES (468, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:56:48');
INSERT INTO `sys_job_log` VALUES (469, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 17:56:51');
INSERT INTO `sys_job_log` VALUES (470, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:56:54');
INSERT INTO `sys_job_log` VALUES (471, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:56:57');
INSERT INTO `sys_job_log` VALUES (472, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 17:57:00');
INSERT INTO `sys_job_log` VALUES (473, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:57:03');
INSERT INTO `sys_job_log` VALUES (474, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 17:57:06');
INSERT INTO `sys_job_log` VALUES (475, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 17:57:09');
INSERT INTO `sys_job_log` VALUES (476, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1380毫秒', '0', '', '2021-03-18 17:57:13');
INSERT INTO `sys_job_log` VALUES (477, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:57:15');
INSERT INTO `sys_job_log` VALUES (478, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:57:18');
INSERT INTO `sys_job_log` VALUES (479, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:57:21');
INSERT INTO `sys_job_log` VALUES (480, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:57:24');
INSERT INTO `sys_job_log` VALUES (481, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:57:27');
INSERT INTO `sys_job_log` VALUES (482, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:57:30');
INSERT INTO `sys_job_log` VALUES (483, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 17:57:33');
INSERT INTO `sys_job_log` VALUES (484, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 17:57:36');
INSERT INTO `sys_job_log` VALUES (485, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：477毫秒', '0', '', '2021-03-18 17:57:39');
INSERT INTO `sys_job_log` VALUES (486, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1173毫秒', '0', '', '2021-03-18 17:57:43');
INSERT INTO `sys_job_log` VALUES (487, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 17:57:45');
INSERT INTO `sys_job_log` VALUES (488, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:57:48');
INSERT INTO `sys_job_log` VALUES (489, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:57:51');
INSERT INTO `sys_job_log` VALUES (490, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1896毫秒', '0', '', '2021-03-18 17:58:47');
INSERT INTO `sys_job_log` VALUES (491, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 17:58:48');
INSERT INTO `sys_job_log` VALUES (492, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 17:58:48');
INSERT INTO `sys_job_log` VALUES (493, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 17:58:48');
INSERT INTO `sys_job_log` VALUES (494, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:58:51');
INSERT INTO `sys_job_log` VALUES (495, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:58:54');
INSERT INTO `sys_job_log` VALUES (496, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:58:57');
INSERT INTO `sys_job_log` VALUES (497, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:59:00');
INSERT INTO `sys_job_log` VALUES (498, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 17:59:03');
INSERT INTO `sys_job_log` VALUES (499, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：405毫秒', '0', '', '2021-03-18 17:59:06');
INSERT INTO `sys_job_log` VALUES (500, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:59:09');
INSERT INTO `sys_job_log` VALUES (501, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：472毫秒', '0', '', '2021-03-18 17:59:12');
INSERT INTO `sys_job_log` VALUES (502, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 17:59:15');
INSERT INTO `sys_job_log` VALUES (503, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 17:59:18');
INSERT INTO `sys_job_log` VALUES (504, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 17:59:21');
INSERT INTO `sys_job_log` VALUES (505, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:59:24');
INSERT INTO `sys_job_log` VALUES (506, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 17:59:27');
INSERT INTO `sys_job_log` VALUES (507, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 17:59:30');
INSERT INTO `sys_job_log` VALUES (508, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:59:33');
INSERT INTO `sys_job_log` VALUES (509, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 17:59:36');
INSERT INTO `sys_job_log` VALUES (510, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 17:59:39');
INSERT INTO `sys_job_log` VALUES (511, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 17:59:42');
INSERT INTO `sys_job_log` VALUES (512, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：715毫秒', '0', '', '2021-03-18 17:59:45');
INSERT INTO `sys_job_log` VALUES (513, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 17:59:48');
INSERT INTO `sys_job_log` VALUES (514, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 17:59:51');
INSERT INTO `sys_job_log` VALUES (515, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1116毫秒', '0', '', '2021-03-18 17:59:55');
INSERT INTO `sys_job_log` VALUES (516, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 17:59:57');
INSERT INTO `sys_job_log` VALUES (517, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:00:00');
INSERT INTO `sys_job_log` VALUES (518, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 18:00:03');
INSERT INTO `sys_job_log` VALUES (519, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:00:06');
INSERT INTO `sys_job_log` VALUES (520, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：468毫秒', '0', '', '2021-03-18 18:00:09');
INSERT INTO `sys_job_log` VALUES (521, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：468毫秒', '0', '', '2021-03-18 18:00:12');
INSERT INTO `sys_job_log` VALUES (522, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：934毫秒', '0', '', '2021-03-18 18:00:15');
INSERT INTO `sys_job_log` VALUES (523, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 18:00:18');
INSERT INTO `sys_job_log` VALUES (524, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 18:00:21');
INSERT INTO `sys_job_log` VALUES (525, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：237毫秒', '0', '', '2021-03-18 18:00:24');
INSERT INTO `sys_job_log` VALUES (526, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：238毫秒', '0', '', '2021-03-18 18:00:27');
INSERT INTO `sys_job_log` VALUES (527, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:00:30');
INSERT INTO `sys_job_log` VALUES (528, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1775毫秒', '0', '', '2021-03-18 18:46:20');
INSERT INTO `sys_job_log` VALUES (529, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 18:46:20');
INSERT INTO `sys_job_log` VALUES (530, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：476毫秒', '0', '', '2021-03-18 18:46:21');
INSERT INTO `sys_job_log` VALUES (531, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:46:21');
INSERT INTO `sys_job_log` VALUES (532, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 18:46:24');
INSERT INTO `sys_job_log` VALUES (533, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:46:27');
INSERT INTO `sys_job_log` VALUES (534, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 18:46:30');
INSERT INTO `sys_job_log` VALUES (535, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 18:46:33');
INSERT INTO `sys_job_log` VALUES (536, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:46:36');
INSERT INTO `sys_job_log` VALUES (537, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 18:46:39');
INSERT INTO `sys_job_log` VALUES (538, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:46:42');
INSERT INTO `sys_job_log` VALUES (539, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:46:45');
INSERT INTO `sys_job_log` VALUES (540, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1790毫秒', '0', '', '2021-03-18 18:46:49');
INSERT INTO `sys_job_log` VALUES (541, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：472毫秒', '0', '', '2021-03-18 18:46:51');
INSERT INTO `sys_job_log` VALUES (542, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:46:54');
INSERT INTO `sys_job_log` VALUES (543, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:46:57');
INSERT INTO `sys_job_log` VALUES (544, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 18:47:00');
INSERT INTO `sys_job_log` VALUES (545, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:47:03');
INSERT INTO `sys_job_log` VALUES (546, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:06');
INSERT INTO `sys_job_log` VALUES (547, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：271毫秒', '0', '', '2021-03-18 18:47:09');
INSERT INTO `sys_job_log` VALUES (548, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 18:47:12');
INSERT INTO `sys_job_log` VALUES (549, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:15');
INSERT INTO `sys_job_log` VALUES (550, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：935毫秒', '0', '', '2021-03-18 18:47:18');
INSERT INTO `sys_job_log` VALUES (551, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:21');
INSERT INTO `sys_job_log` VALUES (552, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:24');
INSERT INTO `sys_job_log` VALUES (553, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2429毫秒', '0', '', '2021-03-18 18:47:29');
INSERT INTO `sys_job_log` VALUES (554, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 18:47:30');
INSERT INTO `sys_job_log` VALUES (555, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:33');
INSERT INTO `sys_job_log` VALUES (556, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 18:47:36');
INSERT INTO `sys_job_log` VALUES (557, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 18:47:39');
INSERT INTO `sys_job_log` VALUES (558, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:42');
INSERT INTO `sys_job_log` VALUES (559, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1807毫秒', '0', '', '2021-03-18 18:47:46');
INSERT INTO `sys_job_log` VALUES (560, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1170毫秒', '0', '', '2021-03-18 18:47:49');
INSERT INTO `sys_job_log` VALUES (561, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 18:47:51');
INSERT INTO `sys_job_log` VALUES (562, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:47:54');
INSERT INTO `sys_job_log` VALUES (563, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:47:57');
INSERT INTO `sys_job_log` VALUES (564, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:48:00');
INSERT INTO `sys_job_log` VALUES (565, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:48:03');
INSERT INTO `sys_job_log` VALUES (566, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:48:06');
INSERT INTO `sys_job_log` VALUES (567, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:48:09');
INSERT INTO `sys_job_log` VALUES (568, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 18:48:12');
INSERT INTO `sys_job_log` VALUES (569, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 18:48:15');
INSERT INTO `sys_job_log` VALUES (570, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：948毫秒', '0', '', '2021-03-18 18:48:18');
INSERT INTO `sys_job_log` VALUES (571, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:48:21');
INSERT INTO `sys_job_log` VALUES (572, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:48:24');
INSERT INTO `sys_job_log` VALUES (573, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 18:48:27');
INSERT INTO `sys_job_log` VALUES (574, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 18:48:30');
INSERT INTO `sys_job_log` VALUES (575, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:48:33');
INSERT INTO `sys_job_log` VALUES (576, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:48:36');
INSERT INTO `sys_job_log` VALUES (577, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:48:39');
INSERT INTO `sys_job_log` VALUES (578, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 18:48:42');
INSERT INTO `sys_job_log` VALUES (579, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：471毫秒', '0', '', '2021-03-18 18:48:45');
INSERT INTO `sys_job_log` VALUES (580, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：706毫秒', '0', '', '2021-03-18 18:48:48');
INSERT INTO `sys_job_log` VALUES (581, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:48:51');
INSERT INTO `sys_job_log` VALUES (582, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 18:48:54');
INSERT INTO `sys_job_log` VALUES (583, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:48:57');
INSERT INTO `sys_job_log` VALUES (584, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:49:00');
INSERT INTO `sys_job_log` VALUES (585, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：241毫秒', '0', '', '2021-03-18 18:49:03');
INSERT INTO `sys_job_log` VALUES (586, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 18:49:06');
INSERT INTO `sys_job_log` VALUES (587, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：239毫秒', '0', '', '2021-03-18 18:49:09');
INSERT INTO `sys_job_log` VALUES (588, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 18:49:12');
INSERT INTO `sys_job_log` VALUES (589, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：465毫秒', '0', '', '2021-03-18 18:49:15');
INSERT INTO `sys_job_log` VALUES (590, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：710毫秒', '0', '', '2021-03-18 18:49:18');
INSERT INTO `sys_job_log` VALUES (591, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 18:49:21');
INSERT INTO `sys_job_log` VALUES (592, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 18:49:24');
INSERT INTO `sys_job_log` VALUES (593, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:49:27');
INSERT INTO `sys_job_log` VALUES (594, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 18:49:30');
INSERT INTO `sys_job_log` VALUES (595, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:49:33');
INSERT INTO `sys_job_log` VALUES (596, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：240毫秒', '0', '', '2021-03-18 18:49:36');
INSERT INTO `sys_job_log` VALUES (597, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 18:49:39');
INSERT INTO `sys_job_log` VALUES (598, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:49:42');
INSERT INTO `sys_job_log` VALUES (599, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：471毫秒', '0', '', '2021-03-18 18:49:45');
INSERT INTO `sys_job_log` VALUES (600, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：699毫秒', '0', '', '2021-03-18 18:49:48');
INSERT INTO `sys_job_log` VALUES (601, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:49:51');
INSERT INTO `sys_job_log` VALUES (602, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 18:49:54');
INSERT INTO `sys_job_log` VALUES (603, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:49:57');
INSERT INTO `sys_job_log` VALUES (604, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:50:00');
INSERT INTO `sys_job_log` VALUES (605, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:50:03');
INSERT INTO `sys_job_log` VALUES (606, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:50:06');
INSERT INTO `sys_job_log` VALUES (607, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:50:09');
INSERT INTO `sys_job_log` VALUES (608, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：339毫秒', '0', '', '2021-03-18 18:50:12');
INSERT INTO `sys_job_log` VALUES (609, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：671毫秒', '0', '', '2021-03-18 18:50:15');
INSERT INTO `sys_job_log` VALUES (610, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：743毫秒', '0', '', '2021-03-18 18:50:18');
INSERT INTO `sys_job_log` VALUES (611, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 18:50:21');
INSERT INTO `sys_job_log` VALUES (612, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 18:50:24');
INSERT INTO `sys_job_log` VALUES (613, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2041毫秒', '0', '', '2021-03-18 18:51:14');
INSERT INTO `sys_job_log` VALUES (614, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 18:51:15');
INSERT INTO `sys_job_log` VALUES (615, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:51:15');
INSERT INTO `sys_job_log` VALUES (616, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 18:51:15');
INSERT INTO `sys_job_log` VALUES (617, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：728毫秒', '0', '', '2021-03-18 18:51:18');
INSERT INTO `sys_job_log` VALUES (618, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 18:51:21');
INSERT INTO `sys_job_log` VALUES (619, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：711毫秒', '0', '', '2021-03-18 18:51:24');
INSERT INTO `sys_job_log` VALUES (620, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 18:51:27');
INSERT INTO `sys_job_log` VALUES (621, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3054毫秒', '0', '', '2021-03-18 18:51:33');
INSERT INTO `sys_job_log` VALUES (622, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 18:51:33');
INSERT INTO `sys_job_log` VALUES (623, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 18:51:36');
INSERT INTO `sys_job_log` VALUES (624, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 18:51:39');
INSERT INTO `sys_job_log` VALUES (625, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 18:51:42');
INSERT INTO `sys_job_log` VALUES (626, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：919毫秒', '0', '', '2021-03-18 18:51:45');
INSERT INTO `sys_job_log` VALUES (627, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1617毫秒', '0', '', '2021-03-18 18:51:49');
INSERT INTO `sys_job_log` VALUES (628, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：715毫秒', '0', '', '2021-03-18 18:51:51');
INSERT INTO `sys_job_log` VALUES (629, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1392毫秒', '0', '', '2021-03-18 18:51:55');
INSERT INTO `sys_job_log` VALUES (630, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 18:51:57');
INSERT INTO `sys_job_log` VALUES (631, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 18:52:00');
INSERT INTO `sys_job_log` VALUES (632, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：746毫秒', '0', '', '2021-03-18 18:52:03');
INSERT INTO `sys_job_log` VALUES (633, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 18:52:06');
INSERT INTO `sys_job_log` VALUES (634, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 18:52:09');
INSERT INTO `sys_job_log` VALUES (635, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 18:52:12');
INSERT INTO `sys_job_log` VALUES (636, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1346毫秒', '0', '', '2021-03-18 18:52:16');
INSERT INTO `sys_job_log` VALUES (637, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：472毫秒', '0', '', '2021-03-18 18:52:18');
INSERT INTO `sys_job_log` VALUES (638, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：716毫秒', '0', '', '2021-03-18 18:52:21');
INSERT INTO `sys_job_log` VALUES (639, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1154毫秒', '0', '', '2021-03-18 18:52:25');
INSERT INTO `sys_job_log` VALUES (640, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 18:52:27');
INSERT INTO `sys_job_log` VALUES (641, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 18:52:30');
INSERT INTO `sys_job_log` VALUES (642, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:52:33');
INSERT INTO `sys_job_log` VALUES (643, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 18:52:36');
INSERT INTO `sys_job_log` VALUES (644, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 18:52:39');
INSERT INTO `sys_job_log` VALUES (645, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：474毫秒', '0', '', '2021-03-18 18:52:42');
INSERT INTO `sys_job_log` VALUES (646, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：180637毫秒', '0', '', '2021-03-18 18:56:13');
INSERT INTO `sys_job_log` VALUES (647, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：119035毫秒', '0', '', '2021-03-18 18:58:45');
INSERT INTO `sys_job_log` VALUES (648, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：95955毫秒', '0', '', '2021-03-18 19:00:55');
INSERT INTO `sys_job_log` VALUES (649, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：991毫秒', '0', '', '2021-03-18 19:01:10');
INSERT INTO `sys_job_log` VALUES (650, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:01:12');
INSERT INTO `sys_job_log` VALUES (651, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1875毫秒', '0', '', '2021-03-18 19:02:10');
INSERT INTO `sys_job_log` VALUES (652, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：262毫秒', '0', '', '2021-03-18 19:02:11');
INSERT INTO `sys_job_log` VALUES (653, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:02:11');
INSERT INTO `sys_job_log` VALUES (654, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:02:12');
INSERT INTO `sys_job_log` VALUES (655, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：733毫秒', '0', '', '2021-03-18 19:02:15');
INSERT INTO `sys_job_log` VALUES (656, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:02:18');
INSERT INTO `sys_job_log` VALUES (657, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：956毫秒', '0', '', '2021-03-18 19:02:21');
INSERT INTO `sys_job_log` VALUES (658, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:02:24');
INSERT INTO `sys_job_log` VALUES (659, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2353毫秒', '0', '', '2021-03-18 19:02:29');
INSERT INTO `sys_job_log` VALUES (660, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:02:30');
INSERT INTO `sys_job_log` VALUES (661, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:02:33');
INSERT INTO `sys_job_log` VALUES (662, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:02:36');
INSERT INTO `sys_job_log` VALUES (663, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：271毫秒', '0', '', '2021-03-18 19:02:39');
INSERT INTO `sys_job_log` VALUES (664, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 19:02:42');
INSERT INTO `sys_job_log` VALUES (665, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:02:45');
INSERT INTO `sys_job_log` VALUES (666, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：775毫秒', '0', '', '2021-03-18 19:02:48');
INSERT INTO `sys_job_log` VALUES (667, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1888毫秒', '0', '', '2021-03-18 19:02:52');
INSERT INTO `sys_job_log` VALUES (668, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1622毫秒', '0', '', '2021-03-18 19:02:55');
INSERT INTO `sys_job_log` VALUES (669, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1895毫秒', '0', '', '2021-03-18 19:03:25');
INSERT INTO `sys_job_log` VALUES (670, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:03:26');
INSERT INTO `sys_job_log` VALUES (671, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：686毫秒', '0', '', '2021-03-18 19:03:26');
INSERT INTO `sys_job_log` VALUES (672, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:03:27');
INSERT INTO `sys_job_log` VALUES (673, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：725毫秒', '0', '', '2021-03-18 19:03:30');
INSERT INTO `sys_job_log` VALUES (674, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:03:33');
INSERT INTO `sys_job_log` VALUES (675, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1147毫秒', '0', '', '2021-03-18 19:03:37');
INSERT INTO `sys_job_log` VALUES (676, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 19:03:39');
INSERT INTO `sys_job_log` VALUES (677, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1829毫秒', '0', '', '2021-03-18 19:04:47');
INSERT INTO `sys_job_log` VALUES (678, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1422毫秒', '0', '', '2021-03-18 19:04:48');
INSERT INTO `sys_job_log` VALUES (679, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:04:49');
INSERT INTO `sys_job_log` VALUES (680, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:04:49');
INSERT INTO `sys_job_log` VALUES (681, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：964毫秒', '0', '', '2021-03-18 19:04:51');
INSERT INTO `sys_job_log` VALUES (682, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：753毫秒', '0', '', '2021-03-18 19:04:54');
INSERT INTO `sys_job_log` VALUES (683, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2101毫秒', '0', '', '2021-03-18 19:04:59');
INSERT INTO `sys_job_log` VALUES (684, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:05:00');
INSERT INTO `sys_job_log` VALUES (685, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3245毫秒', '0', '', '2021-03-18 19:05:06');
INSERT INTO `sys_job_log` VALUES (686, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:05:06');
INSERT INTO `sys_job_log` VALUES (687, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：264毫秒', '0', '', '2021-03-18 19:05:09');
INSERT INTO `sys_job_log` VALUES (688, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:05:12');
INSERT INTO `sys_job_log` VALUES (689, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:05:15');
INSERT INTO `sys_job_log` VALUES (690, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:05:18');
INSERT INTO `sys_job_log` VALUES (691, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:05:21');
INSERT INTO `sys_job_log` VALUES (692, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:05:24');
INSERT INTO `sys_job_log` VALUES (693, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：726毫秒', '0', '', '2021-03-18 19:05:27');
INSERT INTO `sys_job_log` VALUES (694, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 19:05:30');
INSERT INTO `sys_job_log` VALUES (695, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:05:33');
INSERT INTO `sys_job_log` VALUES (696, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：267毫秒', '0', '', '2021-03-18 19:05:36');
INSERT INTO `sys_job_log` VALUES (697, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：275毫秒', '0', '', '2021-03-18 19:05:39');
INSERT INTO `sys_job_log` VALUES (698, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:05:42');
INSERT INTO `sys_job_log` VALUES (699, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:05:45');
INSERT INTO `sys_job_log` VALUES (700, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:05:48');
INSERT INTO `sys_job_log` VALUES (701, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:05:51');
INSERT INTO `sys_job_log` VALUES (702, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:05:54');
INSERT INTO `sys_job_log` VALUES (703, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：766毫秒', '0', '', '2021-03-18 19:05:57');
INSERT INTO `sys_job_log` VALUES (704, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:06:00');
INSERT INTO `sys_job_log` VALUES (705, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:06:03');
INSERT INTO `sys_job_log` VALUES (706, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：265毫秒', '0', '', '2021-03-18 19:06:06');
INSERT INTO `sys_job_log` VALUES (707, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:06:09');
INSERT INTO `sys_job_log` VALUES (708, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:06:12');
INSERT INTO `sys_job_log` VALUES (709, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:06:15');
INSERT INTO `sys_job_log` VALUES (710, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:06:18');
INSERT INTO `sys_job_log` VALUES (711, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:06:21');
INSERT INTO `sys_job_log` VALUES (712, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:06:24');
INSERT INTO `sys_job_log` VALUES (713, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2043毫秒', '0', '', '2021-03-18 19:06:29');
INSERT INTO `sys_job_log` VALUES (714, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 19:06:30');
INSERT INTO `sys_job_log` VALUES (715, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：269毫秒', '0', '', '2021-03-18 19:06:33');
INSERT INTO `sys_job_log` VALUES (716, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:06:36');
INSERT INTO `sys_job_log` VALUES (717, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 19:06:39');
INSERT INTO `sys_job_log` VALUES (718, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:06:42');
INSERT INTO `sys_job_log` VALUES (719, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:06:45');
INSERT INTO `sys_job_log` VALUES (720, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:06:48');
INSERT INTO `sys_job_log` VALUES (721, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:06:51');
INSERT INTO `sys_job_log` VALUES (722, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:06:54');
INSERT INTO `sys_job_log` VALUES (723, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：713毫秒', '0', '', '2021-03-18 19:06:57');
INSERT INTO `sys_job_log` VALUES (724, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:07:00');
INSERT INTO `sys_job_log` VALUES (725, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:07:03');
INSERT INTO `sys_job_log` VALUES (726, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:07:06');
INSERT INTO `sys_job_log` VALUES (727, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:07:09');
INSERT INTO `sys_job_log` VALUES (728, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:07:12');
INSERT INTO `sys_job_log` VALUES (729, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:07:15');
INSERT INTO `sys_job_log` VALUES (730, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:07:18');
INSERT INTO `sys_job_log` VALUES (731, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:07:21');
INSERT INTO `sys_job_log` VALUES (732, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 19:07:24');
INSERT INTO `sys_job_log` VALUES (733, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：734毫秒', '0', '', '2021-03-18 19:07:27');
INSERT INTO `sys_job_log` VALUES (734, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:07:30');
INSERT INTO `sys_job_log` VALUES (735, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:07:33');
INSERT INTO `sys_job_log` VALUES (736, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:07:36');
INSERT INTO `sys_job_log` VALUES (737, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:07:39');
INSERT INTO `sys_job_log` VALUES (738, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:07:42');
INSERT INTO `sys_job_log` VALUES (739, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:07:45');
INSERT INTO `sys_job_log` VALUES (740, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:07:48');
INSERT INTO `sys_job_log` VALUES (741, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:07:51');
INSERT INTO `sys_job_log` VALUES (742, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:07:54');
INSERT INTO `sys_job_log` VALUES (743, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1845毫秒', '0', '', '2021-03-18 19:07:58');
INSERT INTO `sys_job_log` VALUES (744, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：477毫秒', '0', '', '2021-03-18 19:08:00');
INSERT INTO `sys_job_log` VALUES (745, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:08:03');
INSERT INTO `sys_job_log` VALUES (746, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:08:06');
INSERT INTO `sys_job_log` VALUES (747, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:08:09');
INSERT INTO `sys_job_log` VALUES (748, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:08:12');
INSERT INTO `sys_job_log` VALUES (749, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:08:15');
INSERT INTO `sys_job_log` VALUES (750, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:08:18');
INSERT INTO `sys_job_log` VALUES (751, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2692毫秒', '0', '', '2021-03-18 19:08:23');
INSERT INTO `sys_job_log` VALUES (752, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：957毫秒', '0', '', '2021-03-18 19:08:24');
INSERT INTO `sys_job_log` VALUES (753, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1182毫秒', '0', '', '2021-03-18 19:08:28');
INSERT INTO `sys_job_log` VALUES (754, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:08:30');
INSERT INTO `sys_job_log` VALUES (755, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:08:33');
INSERT INTO `sys_job_log` VALUES (756, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:08:36');
INSERT INTO `sys_job_log` VALUES (757, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:08:39');
INSERT INTO `sys_job_log` VALUES (758, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:08:42');
INSERT INTO `sys_job_log` VALUES (759, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:08:45');
INSERT INTO `sys_job_log` VALUES (760, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:08:48');
INSERT INTO `sys_job_log` VALUES (761, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:08:51');
INSERT INTO `sys_job_log` VALUES (762, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:08:54');
INSERT INTO `sys_job_log` VALUES (763, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：956毫秒', '0', '', '2021-03-18 19:08:57');
INSERT INTO `sys_job_log` VALUES (764, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1574毫秒', '0', '', '2021-03-18 19:09:01');
INSERT INTO `sys_job_log` VALUES (765, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1841毫秒', '0', '', '2021-03-18 19:09:04');
INSERT INTO `sys_job_log` VALUES (766, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 19:09:06');
INSERT INTO `sys_job_log` VALUES (767, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：477毫秒', '0', '', '2021-03-18 19:09:09');
INSERT INTO `sys_job_log` VALUES (768, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:09:12');
INSERT INTO `sys_job_log` VALUES (769, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:09:15');
INSERT INTO `sys_job_log` VALUES (770, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:09:18');
INSERT INTO `sys_job_log` VALUES (771, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:09:21');
INSERT INTO `sys_job_log` VALUES (772, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2041毫秒', '0', '', '2021-03-18 19:09:26');
INSERT INTO `sys_job_log` VALUES (773, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1416毫秒', '0', '', '2021-03-18 19:09:28');
INSERT INTO `sys_job_log` VALUES (774, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：925毫秒', '0', '', '2021-03-18 19:09:30');
INSERT INTO `sys_job_log` VALUES (775, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:09:33');
INSERT INTO `sys_job_log` VALUES (776, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：980毫秒', '0', '', '2021-03-18 19:09:36');
INSERT INTO `sys_job_log` VALUES (777, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:09:39');
INSERT INTO `sys_job_log` VALUES (778, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:09:42');
INSERT INTO `sys_job_log` VALUES (779, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:09:45');
INSERT INTO `sys_job_log` VALUES (780, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:09:48');
INSERT INTO `sys_job_log` VALUES (781, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 19:09:51');
INSERT INTO `sys_job_log` VALUES (782, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 19:09:54');
INSERT INTO `sys_job_log` VALUES (783, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 19:09:57');
INSERT INTO `sys_job_log` VALUES (784, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:10:00');
INSERT INTO `sys_job_log` VALUES (785, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 19:10:03');
INSERT INTO `sys_job_log` VALUES (786, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：266毫秒', '0', '', '2021-03-18 19:10:06');
INSERT INTO `sys_job_log` VALUES (787, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:10:09');
INSERT INTO `sys_job_log` VALUES (788, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:10:12');
INSERT INTO `sys_job_log` VALUES (789, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:10:15');
INSERT INTO `sys_job_log` VALUES (790, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:10:18');
INSERT INTO `sys_job_log` VALUES (791, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:10:21');
INSERT INTO `sys_job_log` VALUES (792, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:10:24');
INSERT INTO `sys_job_log` VALUES (793, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:10:27');
INSERT INTO `sys_job_log` VALUES (794, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 19:10:30');
INSERT INTO `sys_job_log` VALUES (795, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：242毫秒', '0', '', '2021-03-18 19:10:33');
INSERT INTO `sys_job_log` VALUES (796, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:10:36');
INSERT INTO `sys_job_log` VALUES (797, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:10:39');
INSERT INTO `sys_job_log` VALUES (798, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:10:42');
INSERT INTO `sys_job_log` VALUES (799, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:10:45');
INSERT INTO `sys_job_log` VALUES (800, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 19:10:48');
INSERT INTO `sys_job_log` VALUES (801, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:10:51');
INSERT INTO `sys_job_log` VALUES (802, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:10:54');
INSERT INTO `sys_job_log` VALUES (803, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:10:57');
INSERT INTO `sys_job_log` VALUES (804, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:11:00');
INSERT INTO `sys_job_log` VALUES (805, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：270毫秒', '0', '', '2021-03-18 19:11:03');
INSERT INTO `sys_job_log` VALUES (806, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:11:06');
INSERT INTO `sys_job_log` VALUES (807, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:11:09');
INSERT INTO `sys_job_log` VALUES (808, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:11:12');
INSERT INTO `sys_job_log` VALUES (809, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:11:15');
INSERT INTO `sys_job_log` VALUES (810, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:11:18');
INSERT INTO `sys_job_log` VALUES (811, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:11:21');
INSERT INTO `sys_job_log` VALUES (812, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:11:24');
INSERT INTO `sys_job_log` VALUES (813, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：506毫秒', '0', '', '2021-03-18 19:11:27');
INSERT INTO `sys_job_log` VALUES (814, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:11:30');
INSERT INTO `sys_job_log` VALUES (815, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:11:33');
INSERT INTO `sys_job_log` VALUES (816, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：263毫秒', '0', '', '2021-03-18 19:11:36');
INSERT INTO `sys_job_log` VALUES (817, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：268毫秒', '0', '', '2021-03-18 19:11:39');
INSERT INTO `sys_job_log` VALUES (818, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:11:42');
INSERT INTO `sys_job_log` VALUES (819, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:11:45');
INSERT INTO `sys_job_log` VALUES (820, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:11:48');
INSERT INTO `sys_job_log` VALUES (821, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1571毫秒', '0', '', '2021-03-18 19:11:52');
INSERT INTO `sys_job_log` VALUES (822, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:11:54');
INSERT INTO `sys_job_log` VALUES (823, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：948毫秒', '0', '', '2021-03-18 19:11:57');
INSERT INTO `sys_job_log` VALUES (824, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：274毫秒', '0', '', '2021-03-18 19:12:00');
INSERT INTO `sys_job_log` VALUES (825, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:12:03');
INSERT INTO `sys_job_log` VALUES (826, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:12:06');
INSERT INTO `sys_job_log` VALUES (827, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:12:09');
INSERT INTO `sys_job_log` VALUES (828, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:12:12');
INSERT INTO `sys_job_log` VALUES (829, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:12:15');
INSERT INTO `sys_job_log` VALUES (830, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:12:18');
INSERT INTO `sys_job_log` VALUES (831, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2451毫秒', '0', '', '2021-03-18 19:12:23');
INSERT INTO `sys_job_log` VALUES (832, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 19:12:24');
INSERT INTO `sys_job_log` VALUES (833, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：953毫秒', '0', '', '2021-03-18 19:12:27');
INSERT INTO `sys_job_log` VALUES (834, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:12:30');
INSERT INTO `sys_job_log` VALUES (835, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:12:33');
INSERT INTO `sys_job_log` VALUES (836, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:12:36');
INSERT INTO `sys_job_log` VALUES (837, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:12:39');
INSERT INTO `sys_job_log` VALUES (838, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:12:42');
INSERT INTO `sys_job_log` VALUES (839, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 19:12:45');
INSERT INTO `sys_job_log` VALUES (840, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:12:48');
INSERT INTO `sys_job_log` VALUES (841, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:12:51');
INSERT INTO `sys_job_log` VALUES (842, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 19:12:54');
INSERT INTO `sys_job_log` VALUES (843, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：949毫秒', '0', '', '2021-03-18 19:12:57');
INSERT INTO `sys_job_log` VALUES (844, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:13:00');
INSERT INTO `sys_job_log` VALUES (845, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 19:13:03');
INSERT INTO `sys_job_log` VALUES (846, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:13:06');
INSERT INTO `sys_job_log` VALUES (847, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：243毫秒', '0', '', '2021-03-18 19:13:09');
INSERT INTO `sys_job_log` VALUES (848, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1700毫秒', '0', '', '2021-03-18 19:14:51');
INSERT INTO `sys_job_log` VALUES (849, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:14:51');
INSERT INTO `sys_job_log` VALUES (850, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:14:52');
INSERT INTO `sys_job_log` VALUES (851, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:14:54');
INSERT INTO `sys_job_log` VALUES (852, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:14:57');
INSERT INTO `sys_job_log` VALUES (853, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：275毫秒', '0', '', '2021-03-18 19:15:00');
INSERT INTO `sys_job_log` VALUES (854, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：746毫秒', '0', '', '2021-03-18 19:15:03');
INSERT INTO `sys_job_log` VALUES (855, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:15:06');
INSERT INTO `sys_job_log` VALUES (856, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:15:09');
INSERT INTO `sys_job_log` VALUES (857, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:15:12');
INSERT INTO `sys_job_log` VALUES (858, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:15:15');
INSERT INTO `sys_job_log` VALUES (859, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:15:18');
INSERT INTO `sys_job_log` VALUES (860, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：264毫秒', '0', '', '2021-03-18 19:15:21');
INSERT INTO `sys_job_log` VALUES (861, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:15:24');
INSERT INTO `sys_job_log` VALUES (862, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:15:27');
INSERT INTO `sys_job_log` VALUES (863, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:15:30');
INSERT INTO `sys_job_log` VALUES (864, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:15:33');
INSERT INTO `sys_job_log` VALUES (865, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 19:15:36');
INSERT INTO `sys_job_log` VALUES (866, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:15:39');
INSERT INTO `sys_job_log` VALUES (867, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：262毫秒', '0', '', '2021-03-18 19:15:42');
INSERT INTO `sys_job_log` VALUES (868, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：266毫秒', '0', '', '2021-03-18 19:15:45');
INSERT INTO `sys_job_log` VALUES (869, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1210毫秒', '0', '', '2021-03-18 19:15:49');
INSERT INTO `sys_job_log` VALUES (870, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：38554毫秒', '0', '', '2021-03-18 19:16:29');
INSERT INTO `sys_job_log` VALUES (871, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：963毫秒', '0', '', '2021-03-18 19:16:39');
INSERT INTO `sys_job_log` VALUES (872, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：545毫秒', '0', '', '2021-03-18 19:16:42');
INSERT INTO `sys_job_log` VALUES (873, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：499毫秒', '0', '', '2021-03-18 19:16:45');
INSERT INTO `sys_job_log` VALUES (874, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：728毫秒', '0', '', '2021-03-18 19:16:48');
INSERT INTO `sys_job_log` VALUES (875, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:16:51');
INSERT INTO `sys_job_log` VALUES (876, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:16:54');
INSERT INTO `sys_job_log` VALUES (877, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:16:57');
INSERT INTO `sys_job_log` VALUES (878, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:17:00');
INSERT INTO `sys_job_log` VALUES (879, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:17:03');
INSERT INTO `sys_job_log` VALUES (880, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:17:06');
INSERT INTO `sys_job_log` VALUES (881, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:17:09');
INSERT INTO `sys_job_log` VALUES (882, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:17:12');
INSERT INTO `sys_job_log` VALUES (883, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：512毫秒', '0', '', '2021-03-18 19:17:15');
INSERT INTO `sys_job_log` VALUES (884, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:17:18');
INSERT INTO `sys_job_log` VALUES (885, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1154毫秒', '0', '', '2021-03-18 19:17:22');
INSERT INTO `sys_job_log` VALUES (886, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:17:24');
INSERT INTO `sys_job_log` VALUES (887, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：263毫秒', '0', '', '2021-03-18 19:17:27');
INSERT INTO `sys_job_log` VALUES (888, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：268毫秒', '0', '', '2021-03-18 19:17:30');
INSERT INTO `sys_job_log` VALUES (889, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:17:33');
INSERT INTO `sys_job_log` VALUES (890, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2306毫秒', '0', '', '2021-03-18 19:17:38');
INSERT INTO `sys_job_log` VALUES (891, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：729毫秒', '0', '', '2021-03-18 19:17:39');
INSERT INTO `sys_job_log` VALUES (892, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：718毫秒', '0', '', '2021-03-18 19:17:42');
INSERT INTO `sys_job_log` VALUES (893, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 19:17:45');
INSERT INTO `sys_job_log` VALUES (894, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：267毫秒', '0', '', '2021-03-18 19:17:48');
INSERT INTO `sys_job_log` VALUES (895, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:17:51');
INSERT INTO `sys_job_log` VALUES (896, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:17:54');
INSERT INTO `sys_job_log` VALUES (897, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:17:57');
INSERT INTO `sys_job_log` VALUES (898, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:18:00');
INSERT INTO `sys_job_log` VALUES (899, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:18:03');
INSERT INTO `sys_job_log` VALUES (900, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:18:06');
INSERT INTO `sys_job_log` VALUES (901, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 19:18:09');
INSERT INTO `sys_job_log` VALUES (902, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1459毫秒', '0', '', '2021-03-18 19:18:13');
INSERT INTO `sys_job_log` VALUES (903, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:18:15');
INSERT INTO `sys_job_log` VALUES (904, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:18:18');
INSERT INTO `sys_job_log` VALUES (905, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:18:21');
INSERT INTO `sys_job_log` VALUES (906, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:18:24');
INSERT INTO `sys_job_log` VALUES (907, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:18:27');
INSERT INTO `sys_job_log` VALUES (908, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:18:30');
INSERT INTO `sys_job_log` VALUES (909, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:18:33');
INSERT INTO `sys_job_log` VALUES (910, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:18:36');
INSERT INTO `sys_job_log` VALUES (911, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:18:39');
INSERT INTO `sys_job_log` VALUES (912, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：965毫秒', '0', '', '2021-03-18 19:18:42');
INSERT INTO `sys_job_log` VALUES (913, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:18:45');
INSERT INTO `sys_job_log` VALUES (914, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:18:48');
INSERT INTO `sys_job_log` VALUES (915, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:18:51');
INSERT INTO `sys_job_log` VALUES (916, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:18:54');
INSERT INTO `sys_job_log` VALUES (917, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1390毫秒', '0', '', '2021-03-18 19:18:58');
INSERT INTO `sys_job_log` VALUES (918, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:19:00');
INSERT INTO `sys_job_log` VALUES (919, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 19:19:03');
INSERT INTO `sys_job_log` VALUES (920, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:19:06');
INSERT INTO `sys_job_log` VALUES (921, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：507毫秒', '0', '', '2021-03-18 19:19:09');
INSERT INTO `sys_job_log` VALUES (922, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：964毫秒', '0', '', '2021-03-18 19:19:12');
INSERT INTO `sys_job_log` VALUES (923, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:19:15');
INSERT INTO `sys_job_log` VALUES (924, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:19:18');
INSERT INTO `sys_job_log` VALUES (925, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:19:21');
INSERT INTO `sys_job_log` VALUES (926, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 19:19:24');
INSERT INTO `sys_job_log` VALUES (927, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:19:27');
INSERT INTO `sys_job_log` VALUES (928, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：264毫秒', '0', '', '2021-03-18 19:19:30');
INSERT INTO `sys_job_log` VALUES (929, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:19:33');
INSERT INTO `sys_job_log` VALUES (930, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:19:36');
INSERT INTO `sys_job_log` VALUES (931, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：724毫秒', '0', '', '2021-03-18 19:19:39');
INSERT INTO `sys_job_log` VALUES (932, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：958毫秒', '0', '', '2021-03-18 19:19:42');
INSERT INTO `sys_job_log` VALUES (933, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 19:19:45');
INSERT INTO `sys_job_log` VALUES (934, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:19:48');
INSERT INTO `sys_job_log` VALUES (935, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:19:51');
INSERT INTO `sys_job_log` VALUES (936, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1204毫秒', '0', '', '2021-03-18 19:19:55');
INSERT INTO `sys_job_log` VALUES (937, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:19:57');
INSERT INTO `sys_job_log` VALUES (938, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:20:00');
INSERT INTO `sys_job_log` VALUES (939, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:20:03');
INSERT INTO `sys_job_log` VALUES (940, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:20:06');
INSERT INTO `sys_job_log` VALUES (941, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 19:20:09');
INSERT INTO `sys_job_log` VALUES (942, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：953毫秒', '0', '', '2021-03-18 19:20:12');
INSERT INTO `sys_job_log` VALUES (943, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1724毫秒', '0', '', '2021-03-18 19:21:16');
INSERT INTO `sys_job_log` VALUES (944, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:21:16');
INSERT INTO `sys_job_log` VALUES (945, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 19:21:17');
INSERT INTO `sys_job_log` VALUES (946, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：734毫秒', '0', '', '2021-03-18 19:21:18');
INSERT INTO `sys_job_log` VALUES (947, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:21:21');
INSERT INTO `sys_job_log` VALUES (948, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：264毫秒', '0', '', '2021-03-18 19:21:24');
INSERT INTO `sys_job_log` VALUES (949, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:21:27');
INSERT INTO `sys_job_log` VALUES (950, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：265毫秒', '0', '', '2021-03-18 19:21:30');
INSERT INTO `sys_job_log` VALUES (951, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:21:33');
INSERT INTO `sys_job_log` VALUES (952, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:21:36');
INSERT INTO `sys_job_log` VALUES (953, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:21:39');
INSERT INTO `sys_job_log` VALUES (954, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 19:21:42');
INSERT INTO `sys_job_log` VALUES (955, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:21:45');
INSERT INTO `sys_job_log` VALUES (956, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：735毫秒', '0', '', '2021-03-18 19:21:48');
INSERT INTO `sys_job_log` VALUES (957, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:21:51');
INSERT INTO `sys_job_log` VALUES (958, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:21:54');
INSERT INTO `sys_job_log` VALUES (959, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:21:57');
INSERT INTO `sys_job_log` VALUES (960, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：267毫秒', '0', '', '2021-03-18 19:22:00');
INSERT INTO `sys_job_log` VALUES (961, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:22:03');
INSERT INTO `sys_job_log` VALUES (962, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1639毫秒', '0', '', '2021-03-18 19:22:07');
INSERT INTO `sys_job_log` VALUES (963, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：511毫秒', '0', '', '2021-03-18 19:22:09');
INSERT INTO `sys_job_log` VALUES (964, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：731毫秒', '0', '', '2021-03-18 19:22:12');
INSERT INTO `sys_job_log` VALUES (965, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:22:15');
INSERT INTO `sys_job_log` VALUES (966, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：267毫秒', '0', '', '2021-03-18 19:22:18');
INSERT INTO `sys_job_log` VALUES (967, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:22:21');
INSERT INTO `sys_job_log` VALUES (968, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:22:24');
INSERT INTO `sys_job_log` VALUES (969, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:22:27');
INSERT INTO `sys_job_log` VALUES (970, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：266毫秒', '0', '', '2021-03-18 19:22:30');
INSERT INTO `sys_job_log` VALUES (971, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:22:33');
INSERT INTO `sys_job_log` VALUES (972, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:22:36');
INSERT INTO `sys_job_log` VALUES (973, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:22:39');
INSERT INTO `sys_job_log` VALUES (974, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：730毫秒', '0', '', '2021-03-18 19:22:42');
INSERT INTO `sys_job_log` VALUES (975, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1151毫秒', '0', '', '2021-03-18 19:22:46');
INSERT INTO `sys_job_log` VALUES (976, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:22:48');
INSERT INTO `sys_job_log` VALUES (977, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:22:51');
INSERT INTO `sys_job_log` VALUES (978, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:22:54');
INSERT INTO `sys_job_log` VALUES (979, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：514毫秒', '0', '', '2021-03-18 19:22:57');
INSERT INTO `sys_job_log` VALUES (980, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:23:00');
INSERT INTO `sys_job_log` VALUES (981, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:23:03');
INSERT INTO `sys_job_log` VALUES (982, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:23:06');
INSERT INTO `sys_job_log` VALUES (983, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：14毫秒', '0', '', '2021-03-18 19:23:09');
INSERT INTO `sys_job_log` VALUES (984, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1462毫秒', '0', '', '2021-03-18 19:23:13');
INSERT INTO `sys_job_log` VALUES (985, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:23:15');
INSERT INTO `sys_job_log` VALUES (986, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：246毫秒', '0', '', '2021-03-18 19:23:18');
INSERT INTO `sys_job_log` VALUES (987, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:23:21');
INSERT INTO `sys_job_log` VALUES (988, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:23:24');
INSERT INTO `sys_job_log` VALUES (989, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:23:27');
INSERT INTO `sys_job_log` VALUES (990, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:23:30');
INSERT INTO `sys_job_log` VALUES (991, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:23:33');
INSERT INTO `sys_job_log` VALUES (992, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：279毫秒', '0', '', '2021-03-18 19:23:36');
INSERT INTO `sys_job_log` VALUES (993, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：731毫秒', '0', '', '2021-03-18 19:23:39');
INSERT INTO `sys_job_log` VALUES (994, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：732毫秒', '0', '', '2021-03-18 19:23:42');
INSERT INTO `sys_job_log` VALUES (995, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 19:23:45');
INSERT INTO `sys_job_log` VALUES (996, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：244毫秒', '0', '', '2021-03-18 19:23:48');
INSERT INTO `sys_job_log` VALUES (997, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:23:51');
INSERT INTO `sys_job_log` VALUES (998, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:23:54');
INSERT INTO `sys_job_log` VALUES (999, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：247毫秒', '0', '', '2021-03-18 19:23:57');
INSERT INTO `sys_job_log` VALUES (1000, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:24:00');
INSERT INTO `sys_job_log` VALUES (1001, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 19:24:03');
INSERT INTO `sys_job_log` VALUES (1002, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:24:06');
INSERT INTO `sys_job_log` VALUES (1003, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：504毫秒', '0', '', '2021-03-18 19:24:09');
INSERT INTO `sys_job_log` VALUES (1004, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：732毫秒', '0', '', '2021-03-18 19:24:12');
INSERT INTO `sys_job_log` VALUES (1005, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:24:15');
INSERT INTO `sys_job_log` VALUES (1006, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:24:18');
INSERT INTO `sys_job_log` VALUES (1007, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:24:21');
INSERT INTO `sys_job_log` VALUES (1008, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:24:24');
INSERT INTO `sys_job_log` VALUES (1009, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:24:27');
INSERT INTO `sys_job_log` VALUES (1010, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:24:30');
INSERT INTO `sys_job_log` VALUES (1011, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:24:33');
INSERT INTO `sys_job_log` VALUES (1012, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1593毫秒', '0', '', '2021-03-18 19:24:37');
INSERT INTO `sys_job_log` VALUES (1013, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 19:24:39');
INSERT INTO `sys_job_log` VALUES (1014, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1471毫秒', '0', '', '2021-03-18 19:24:43');
INSERT INTO `sys_job_log` VALUES (1015, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:24:45');
INSERT INTO `sys_job_log` VALUES (1016, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:24:48');
INSERT INTO `sys_job_log` VALUES (1017, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:24:51');
INSERT INTO `sys_job_log` VALUES (1018, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4毫秒', '0', '', '2021-03-18 19:24:54');
INSERT INTO `sys_job_log` VALUES (1019, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：970毫秒', '0', '', '2021-03-18 19:24:57');
INSERT INTO `sys_job_log` VALUES (1020, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：271毫秒', '0', '', '2021-03-18 19:25:00');
INSERT INTO `sys_job_log` VALUES (1021, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:25:03');
INSERT INTO `sys_job_log` VALUES (1022, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:25:06');
INSERT INTO `sys_job_log` VALUES (1023, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 19:25:09');
INSERT INTO `sys_job_log` VALUES (1024, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：733毫秒', '0', '', '2021-03-18 19:25:12');
INSERT INTO `sys_job_log` VALUES (1025, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:25:15');
INSERT INTO `sys_job_log` VALUES (1026, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:25:18');
INSERT INTO `sys_job_log` VALUES (1027, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:25:21');
INSERT INTO `sys_job_log` VALUES (1028, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:25:24');
INSERT INTO `sys_job_log` VALUES (1029, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:25:27');
INSERT INTO `sys_job_log` VALUES (1030, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:25:30');
INSERT INTO `sys_job_log` VALUES (1031, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:25:33');
INSERT INTO `sys_job_log` VALUES (1032, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:25:36');
INSERT INTO `sys_job_log` VALUES (1033, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:25:39');
INSERT INTO `sys_job_log` VALUES (1034, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1027毫秒', '0', '', '2021-03-18 19:25:43');
INSERT INTO `sys_job_log` VALUES (1035, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:25:45');
INSERT INTO `sys_job_log` VALUES (1036, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:25:48');
INSERT INTO `sys_job_log` VALUES (1037, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:25:51');
INSERT INTO `sys_job_log` VALUES (1038, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:25:54');
INSERT INTO `sys_job_log` VALUES (1039, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:25:57');
INSERT INTO `sys_job_log` VALUES (1040, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 19:26:00');
INSERT INTO `sys_job_log` VALUES (1041, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1216毫秒', '0', '', '2021-03-18 19:26:04');
INSERT INTO `sys_job_log` VALUES (1042, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:26:06');
INSERT INTO `sys_job_log` VALUES (1043, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1452毫秒', '0', '', '2021-03-18 19:26:10');
INSERT INTO `sys_job_log` VALUES (1044, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：735毫秒', '0', '', '2021-03-18 19:26:12');
INSERT INTO `sys_job_log` VALUES (1045, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：962毫秒', '0', '', '2021-03-18 19:26:15');
INSERT INTO `sys_job_log` VALUES (1046, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:26:18');
INSERT INTO `sys_job_log` VALUES (1047, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：496毫秒', '0', '', '2021-03-18 19:26:21');
INSERT INTO `sys_job_log` VALUES (1048, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:26:24');
INSERT INTO `sys_job_log` VALUES (1049, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1705毫秒', '0', '', '2021-03-18 19:26:28');
INSERT INTO `sys_job_log` VALUES (1050, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:26:30');
INSERT INTO `sys_job_log` VALUES (1051, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:26:33');
INSERT INTO `sys_job_log` VALUES (1052, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:26:36');
INSERT INTO `sys_job_log` VALUES (1053, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：5毫秒', '0', '', '2021-03-18 19:26:39');
INSERT INTO `sys_job_log` VALUES (1054, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1462毫秒', '0', '', '2021-03-18 19:26:43');
INSERT INTO `sys_job_log` VALUES (1055, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：267毫秒', '0', '', '2021-03-18 19:26:45');
INSERT INTO `sys_job_log` VALUES (1056, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:26:48');
INSERT INTO `sys_job_log` VALUES (1057, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:26:51');
INSERT INTO `sys_job_log` VALUES (1058, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:26:54');
INSERT INTO `sys_job_log` VALUES (1059, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:26:57');
INSERT INTO `sys_job_log` VALUES (1060, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:27:00');
INSERT INTO `sys_job_log` VALUES (1061, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:27:03');
INSERT INTO `sys_job_log` VALUES (1062, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1410毫秒', '0', '', '2021-03-18 19:27:07');
INSERT INTO `sys_job_log` VALUES (1063, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：504毫秒', '0', '', '2021-03-18 19:27:09');
INSERT INTO `sys_job_log` VALUES (1064, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 19:27:12');
INSERT INTO `sys_job_log` VALUES (1065, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:27:15');
INSERT INTO `sys_job_log` VALUES (1066, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:27:18');
INSERT INTO `sys_job_log` VALUES (1067, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:27:21');
INSERT INTO `sys_job_log` VALUES (1068, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1155毫秒', '0', '', '2021-03-18 19:27:25');
INSERT INTO `sys_job_log` VALUES (1069, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:27:27');
INSERT INTO `sys_job_log` VALUES (1070, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:27:30');
INSERT INTO `sys_job_log` VALUES (1071, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:27:33');
INSERT INTO `sys_job_log` VALUES (1072, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:27:36');
INSERT INTO `sys_job_log` VALUES (1073, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：502毫秒', '0', '', '2021-03-18 19:27:39');
INSERT INTO `sys_job_log` VALUES (1074, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：734毫秒', '0', '', '2021-03-18 19:27:42');
INSERT INTO `sys_job_log` VALUES (1075, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:27:45');
INSERT INTO `sys_job_log` VALUES (1076, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:27:48');
INSERT INTO `sys_job_log` VALUES (1077, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:27:51');
INSERT INTO `sys_job_log` VALUES (1078, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:27:54');
INSERT INTO `sys_job_log` VALUES (1079, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:27:57');
INSERT INTO `sys_job_log` VALUES (1080, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：266毫秒', '0', '', '2021-03-18 19:28:00');
INSERT INTO `sys_job_log` VALUES (1081, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 19:28:03');
INSERT INTO `sys_job_log` VALUES (1082, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:28:06');
INSERT INTO `sys_job_log` VALUES (1083, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：724毫秒', '0', '', '2021-03-18 19:28:09');
INSERT INTO `sys_job_log` VALUES (1084, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1468毫秒', '0', '', '2021-03-18 19:28:13');
INSERT INTO `sys_job_log` VALUES (1085, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：267毫秒', '0', '', '2021-03-18 19:28:15');
INSERT INTO `sys_job_log` VALUES (1086, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:28:18');
INSERT INTO `sys_job_log` VALUES (1087, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:28:21');
INSERT INTO `sys_job_log` VALUES (1088, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：5毫秒', '0', '', '2021-03-18 19:28:24');
INSERT INTO `sys_job_log` VALUES (1089, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：961毫秒', '0', '', '2021-03-18 19:28:27');
INSERT INTO `sys_job_log` VALUES (1090, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:28:30');
INSERT INTO `sys_job_log` VALUES (1091, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:28:33');
INSERT INTO `sys_job_log` VALUES (1092, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:28:36');
INSERT INTO `sys_job_log` VALUES (1093, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：496毫秒', '0', '', '2021-03-18 19:28:39');
INSERT INTO `sys_job_log` VALUES (1094, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：729毫秒', '0', '', '2021-03-18 19:28:42');
INSERT INTO `sys_job_log` VALUES (1095, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:28:45');
INSERT INTO `sys_job_log` VALUES (1096, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:28:48');
INSERT INTO `sys_job_log` VALUES (1097, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：497毫秒', '0', '', '2021-03-18 19:28:51');
INSERT INTO `sys_job_log` VALUES (1098, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:28:54');
INSERT INTO `sys_job_log` VALUES (1099, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：496毫秒', '0', '', '2021-03-18 19:28:57');
INSERT INTO `sys_job_log` VALUES (1100, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:29:00');
INSERT INTO `sys_job_log` VALUES (1101, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:29:03');
INSERT INTO `sys_job_log` VALUES (1102, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1594毫秒', '0', '', '2021-03-18 19:29:07');
INSERT INTO `sys_job_log` VALUES (1103, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：517毫秒', '0', '', '2021-03-18 19:29:09');
INSERT INTO `sys_job_log` VALUES (1104, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：731毫秒', '0', '', '2021-03-18 19:29:12');
INSERT INTO `sys_job_log` VALUES (1105, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：963毫秒', '0', '', '2021-03-18 19:29:15');
INSERT INTO `sys_job_log` VALUES (1106, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:29:18');
INSERT INTO `sys_job_log` VALUES (1107, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:29:21');
INSERT INTO `sys_job_log` VALUES (1108, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:29:24');
INSERT INTO `sys_job_log` VALUES (1109, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:29:27');
INSERT INTO `sys_job_log` VALUES (1110, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：279毫秒', '0', '', '2021-03-18 19:29:30');
INSERT INTO `sys_job_log` VALUES (1111, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:29:33');
INSERT INTO `sys_job_log` VALUES (1112, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:29:36');
INSERT INTO `sys_job_log` VALUES (1113, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：496毫秒', '0', '', '2021-03-18 19:29:39');
INSERT INTO `sys_job_log` VALUES (1114, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1697毫秒', '0', '', '2021-03-18 19:29:43');
INSERT INTO `sys_job_log` VALUES (1115, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:29:45');
INSERT INTO `sys_job_log` VALUES (1116, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:29:48');
INSERT INTO `sys_job_log` VALUES (1117, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：263毫秒', '0', '', '2021-03-18 19:29:51');
INSERT INTO `sys_job_log` VALUES (1118, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:29:54');
INSERT INTO `sys_job_log` VALUES (1119, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3535毫秒', '0', '', '2021-03-18 19:30:00');
INSERT INTO `sys_job_log` VALUES (1120, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:30:00');
INSERT INTO `sys_job_log` VALUES (1121, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:30:03');
INSERT INTO `sys_job_log` VALUES (1122, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:30:06');
INSERT INTO `sys_job_log` VALUES (1123, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：7毫秒', '0', '', '2021-03-18 19:30:09');
INSERT INTO `sys_job_log` VALUES (1124, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1212毫秒', '0', '', '2021-03-18 19:30:13');
INSERT INTO `sys_job_log` VALUES (1125, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 19:30:15');
INSERT INTO `sys_job_log` VALUES (1126, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:30:18');
INSERT INTO `sys_job_log` VALUES (1127, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:30:21');
INSERT INTO `sys_job_log` VALUES (1128, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:30:24');
INSERT INTO `sys_job_log` VALUES (1129, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:30:27');
INSERT INTO `sys_job_log` VALUES (1130, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:30:30');
INSERT INTO `sys_job_log` VALUES (1131, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:30:33');
INSERT INTO `sys_job_log` VALUES (1132, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:30:36');
INSERT INTO `sys_job_log` VALUES (1133, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：504毫秒', '0', '', '2021-03-18 19:30:39');
INSERT INTO `sys_job_log` VALUES (1134, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 19:30:42');
INSERT INTO `sys_job_log` VALUES (1135, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 19:30:45');
INSERT INTO `sys_job_log` VALUES (1136, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:30:48');
INSERT INTO `sys_job_log` VALUES (1137, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:30:51');
INSERT INTO `sys_job_log` VALUES (1138, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:30:54');
INSERT INTO `sys_job_log` VALUES (1139, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:30:57');
INSERT INTO `sys_job_log` VALUES (1140, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1156毫秒', '0', '', '2021-03-18 19:31:01');
INSERT INTO `sys_job_log` VALUES (1141, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:31:03');
INSERT INTO `sys_job_log` VALUES (1142, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:31:06');
INSERT INTO `sys_job_log` VALUES (1143, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：503毫秒', '0', '', '2021-03-18 19:31:09');
INSERT INTO `sys_job_log` VALUES (1144, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：734毫秒', '0', '', '2021-03-18 19:31:12');
INSERT INTO `sys_job_log` VALUES (1145, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:31:15');
INSERT INTO `sys_job_log` VALUES (1146, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:31:18');
INSERT INTO `sys_job_log` VALUES (1147, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:31:21');
INSERT INTO `sys_job_log` VALUES (1148, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:31:24');
INSERT INTO `sys_job_log` VALUES (1149, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:31:27');
INSERT INTO `sys_job_log` VALUES (1150, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:31:30');
INSERT INTO `sys_job_log` VALUES (1151, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:31:33');
INSERT INTO `sys_job_log` VALUES (1152, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:31:36');
INSERT INTO `sys_job_log` VALUES (1153, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：499毫秒', '0', '', '2021-03-18 19:31:39');
INSERT INTO `sys_job_log` VALUES (1154, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 19:31:42');
INSERT INTO `sys_job_log` VALUES (1155, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3728毫秒', '0', '', '2021-03-18 19:31:48');
INSERT INTO `sys_job_log` VALUES (1156, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2058毫秒', '0', '', '2021-03-18 19:31:50');
INSERT INTO `sys_job_log` VALUES (1157, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2106毫秒', '0', '', '2021-03-18 19:31:53');
INSERT INTO `sys_job_log` VALUES (1158, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:31:54');
INSERT INTO `sys_job_log` VALUES (1159, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：6毫秒', '0', '', '2021-03-18 19:31:57');
INSERT INTO `sys_job_log` VALUES (1160, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1478毫秒', '0', '', '2021-03-18 19:32:01');
INSERT INTO `sys_job_log` VALUES (1161, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2244毫秒', '0', '', '2021-03-18 19:32:05');
INSERT INTO `sys_job_log` VALUES (1162, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1197毫秒', '0', '', '2021-03-18 19:32:07');
INSERT INTO `sys_job_log` VALUES (1163, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：720毫秒', '0', '', '2021-03-18 19:32:09');
INSERT INTO `sys_job_log` VALUES (1164, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:32:12');
INSERT INTO `sys_job_log` VALUES (1165, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:32:15');
INSERT INTO `sys_job_log` VALUES (1166, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 19:32:18');
INSERT INTO `sys_job_log` VALUES (1167, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:32:21');
INSERT INTO `sys_job_log` VALUES (1168, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:32:24');
INSERT INTO `sys_job_log` VALUES (1169, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 19:32:27');
INSERT INTO `sys_job_log` VALUES (1170, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：520毫秒', '0', '', '2021-03-18 19:32:30');
INSERT INTO `sys_job_log` VALUES (1171, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：966毫秒', '0', '', '2021-03-18 19:32:33');
INSERT INTO `sys_job_log` VALUES (1172, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1429毫秒', '0', '', '2021-03-18 19:32:37');
INSERT INTO `sys_job_log` VALUES (1173, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:32:39');
INSERT INTO `sys_job_log` VALUES (1174, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:32:42');
INSERT INTO `sys_job_log` VALUES (1175, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:32:45');
INSERT INTO `sys_job_log` VALUES (1176, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 19:32:48');
INSERT INTO `sys_job_log` VALUES (1177, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:32:50');
INSERT INTO `sys_job_log` VALUES (1178, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:32:50');
INSERT INTO `sys_job_log` VALUES (1179, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:32:51');
INSERT INTO `sys_job_log` VALUES (1180, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1151毫秒', '0', '', '2021-03-18 19:32:53');
INSERT INTO `sys_job_log` VALUES (1181, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：729毫秒', '0', '', '2021-03-18 19:32:53');
INSERT INTO `sys_job_log` VALUES (1182, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1005毫秒', '0', '', '2021-03-18 19:32:55');
INSERT INTO `sys_job_log` VALUES (1183, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:32:55');
INSERT INTO `sys_job_log` VALUES (1184, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 19:32:56');
INSERT INTO `sys_job_log` VALUES (1185, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:32:57');
INSERT INTO `sys_job_log` VALUES (1186, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:32:58');
INSERT INTO `sys_job_log` VALUES (1187, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:32:59');
INSERT INTO `sys_job_log` VALUES (1188, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2938毫秒', '0', '', '2021-03-18 19:33:02');
INSERT INTO `sys_job_log` VALUES (1189, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1194毫秒', '0', '', '2021-03-18 19:33:04');
INSERT INTO `sys_job_log` VALUES (1190, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:33:04');
INSERT INTO `sys_job_log` VALUES (1191, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：999毫秒', '0', '', '2021-03-18 19:33:05');
INSERT INTO `sys_job_log` VALUES (1192, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：6毫秒', '0', '', '2021-03-18 19:33:05');
INSERT INTO `sys_job_log` VALUES (1193, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1156毫秒', '0', '', '2021-03-18 19:33:06');
INSERT INTO `sys_job_log` VALUES (1194, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：714毫秒', '0', '', '2021-03-18 19:33:07');
INSERT INTO `sys_job_log` VALUES (1195, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:33:08');
INSERT INTO `sys_job_log` VALUES (1196, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:33:08');
INSERT INTO `sys_job_log` VALUES (1197, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 19:33:09');
INSERT INTO `sys_job_log` VALUES (1198, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:33:10');
INSERT INTO `sys_job_log` VALUES (1199, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:33:11');
INSERT INTO `sys_job_log` VALUES (1200, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:33:12');
INSERT INTO `sys_job_log` VALUES (1201, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：731毫秒', '0', '', '2021-03-18 19:33:13');
INSERT INTO `sys_job_log` VALUES (1202, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：732毫秒', '0', '', '2021-03-18 19:33:14');
INSERT INTO `sys_job_log` VALUES (1203, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 19:33:15');
INSERT INTO `sys_job_log` VALUES (1204, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:33:16');
INSERT INTO `sys_job_log` VALUES (1205, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:33:17');
INSERT INTO `sys_job_log` VALUES (1206, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:33:18');
INSERT INTO `sys_job_log` VALUES (1207, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:33:19');
INSERT INTO `sys_job_log` VALUES (1208, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:33:20');
INSERT INTO `sys_job_log` VALUES (1209, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 19:33:21');
INSERT INTO `sys_job_log` VALUES (1210, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 19:33:22');
INSERT INTO `sys_job_log` VALUES (1211, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：961毫秒', '0', '', '2021-03-18 19:33:23');
INSERT INTO `sys_job_log` VALUES (1212, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1196毫秒', '0', '', '2021-03-18 19:33:25');
INSERT INTO `sys_job_log` VALUES (1213, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：734毫秒', '0', '', '2021-03-18 19:33:26');
INSERT INTO `sys_job_log` VALUES (1214, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:33:26');
INSERT INTO `sys_job_log` VALUES (1215, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1636毫秒', '0', '', '2021-03-18 19:33:28');
INSERT INTO `sys_job_log` VALUES (1216, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2306毫秒', '0', '', '2021-03-18 19:33:30');
INSERT INTO `sys_job_log` VALUES (1217, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2毫秒', '0', '', '2021-03-18 19:33:30');
INSERT INTO `sys_job_log` VALUES (1218, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:33:31');
INSERT INTO `sys_job_log` VALUES (1219, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:33:32');
INSERT INTO `sys_job_log` VALUES (1220, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:33:32');
INSERT INTO `sys_job_log` VALUES (1221, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：964毫秒', '0', '', '2021-03-18 19:33:33');
INSERT INTO `sys_job_log` VALUES (1222, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2109毫秒', '0', '', '2021-03-18 19:33:36');
INSERT INTO `sys_job_log` VALUES (1223, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 19:33:36');
INSERT INTO `sys_job_log` VALUES (1224, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1352毫秒', '0', '', '2021-03-18 19:33:37');
INSERT INTO `sys_job_log` VALUES (1225, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：963毫秒', '0', '', '2021-03-18 19:33:38');
INSERT INTO `sys_job_log` VALUES (1226, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 19:33:39');
INSERT INTO `sys_job_log` VALUES (1227, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：977毫秒', '0', '', '2021-03-18 19:33:40');
INSERT INTO `sys_job_log` VALUES (1228, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1197毫秒', '0', '', '2021-03-18 19:33:41');
INSERT INTO `sys_job_log` VALUES (1229, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：582毫秒', '0', '', '2021-03-18 19:33:42');
INSERT INTO `sys_job_log` VALUES (1230, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1382毫秒', '0', '', '2021-03-18 19:33:43');
INSERT INTO `sys_job_log` VALUES (1231, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2060毫秒', '0', '', '2021-03-18 19:33:45');
INSERT INTO `sys_job_log` VALUES (1232, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：528毫秒', '0', '', '2021-03-18 19:33:46');
INSERT INTO `sys_job_log` VALUES (1233, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 19:33:46');
INSERT INTO `sys_job_log` VALUES (1234, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1497毫秒', '0', '', '2021-03-18 19:33:48');
INSERT INTO `sys_job_log` VALUES (1235, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：11713毫秒', '0', '', '2021-03-18 19:34:00');
INSERT INTO `sys_job_log` VALUES (1236, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1167毫秒', '0', '', '2021-03-18 19:34:04');
INSERT INTO `sys_job_log` VALUES (1237, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：400毫秒', '0', '', '2021-03-18 19:34:04');
INSERT INTO `sys_job_log` VALUES (1238, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：8938毫秒', '0', '', '2021-03-18 19:34:13');
INSERT INTO `sys_job_log` VALUES (1239, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:13');
INSERT INTO `sys_job_log` VALUES (1240, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:13');
INSERT INTO `sys_job_log` VALUES (1241, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1242, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1243, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1244, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1245, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1246, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1247, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:14');
INSERT INTO `sys_job_log` VALUES (1248, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:15');
INSERT INTO `sys_job_log` VALUES (1249, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:16');
INSERT INTO `sys_job_log` VALUES (1250, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:17');
INSERT INTO `sys_job_log` VALUES (1251, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:18');
INSERT INTO `sys_job_log` VALUES (1252, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1毫秒', '0', '', '2021-03-18 19:34:19');
INSERT INTO `sys_job_log` VALUES (1253, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：0毫秒', '0', '', '2021-03-18 19:34:20');
INSERT INTO `sys_job_log` VALUES (1254, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：33384毫秒', '0', '', '2021-03-18 19:34:54');
INSERT INTO `sys_job_log` VALUES (1255, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：8902毫秒', '0', '', '2021-03-18 19:35:11');
INSERT INTO `sys_job_log` VALUES (1256, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：964毫秒', '0', '', '2021-03-18 19:35:13');
INSERT INTO `sys_job_log` VALUES (1257, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:35:13');
INSERT INTO `sys_job_log` VALUES (1258, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:13');
INSERT INTO `sys_job_log` VALUES (1259, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:14');
INSERT INTO `sys_job_log` VALUES (1260, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:35:14');
INSERT INTO `sys_job_log` VALUES (1261, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:35:14');
INSERT INTO `sys_job_log` VALUES (1262, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1193毫秒', '0', '', '2021-03-18 19:35:15');
INSERT INTO `sys_job_log` VALUES (1263, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 19:35:16');
INSERT INTO `sys_job_log` VALUES (1264, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：721毫秒', '0', '', '2021-03-18 19:35:17');
INSERT INTO `sys_job_log` VALUES (1265, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 19:35:17');
INSERT INTO `sys_job_log` VALUES (1266, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:18');
INSERT INTO `sys_job_log` VALUES (1267, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:35:18');
INSERT INTO `sys_job_log` VALUES (1268, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:35:18');
INSERT INTO `sys_job_log` VALUES (1269, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:35:18');
INSERT INTO `sys_job_log` VALUES (1270, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:19');
INSERT INTO `sys_job_log` VALUES (1271, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:35:19');
INSERT INTO `sys_job_log` VALUES (1272, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:20');
INSERT INTO `sys_job_log` VALUES (1273, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：505毫秒', '0', '', '2021-03-18 19:35:21');
INSERT INTO `sys_job_log` VALUES (1274, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 19:35:22');
INSERT INTO `sys_job_log` VALUES (1275, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:23');
INSERT INTO `sys_job_log` VALUES (1276, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:35:24');
INSERT INTO `sys_job_log` VALUES (1277, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：500毫秒', '0', '', '2021-03-18 19:35:25');
INSERT INTO `sys_job_log` VALUES (1278, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:35:26');
INSERT INTO `sys_job_log` VALUES (1279, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:35:27');
INSERT INTO `sys_job_log` VALUES (1280, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1385毫秒', '0', '', '2021-03-18 19:35:29');
INSERT INTO `sys_job_log` VALUES (1281, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4毫秒', '0', '', '2021-03-18 19:35:29');
INSERT INTO `sys_job_log` VALUES (1282, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:35:30');
INSERT INTO `sys_job_log` VALUES (1283, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 19:35:31');
INSERT INTO `sys_job_log` VALUES (1284, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1677毫秒', '0', '', '2021-03-18 19:35:33');
INSERT INTO `sys_job_log` VALUES (1285, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:35:34');
INSERT INTO `sys_job_log` VALUES (1286, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：501毫秒', '0', '', '2021-03-18 19:35:34');
INSERT INTO `sys_job_log` VALUES (1287, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：735毫秒', '0', '', '2021-03-18 19:35:35');
INSERT INTO `sys_job_log` VALUES (1288, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:35:36');
INSERT INTO `sys_job_log` VALUES (1289, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：502毫秒', '0', '', '2021-03-18 19:35:37');
INSERT INTO `sys_job_log` VALUES (1290, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 19:35:38');
INSERT INTO `sys_job_log` VALUES (1291, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:35:39');
INSERT INTO `sys_job_log` VALUES (1292, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：886毫秒', '0', '', '2021-03-18 19:35:40');
INSERT INTO `sys_job_log` VALUES (1293, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：497毫秒', '0', '', '2021-03-18 19:35:41');
INSERT INTO `sys_job_log` VALUES (1294, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：9866毫秒', '0', '', '2021-03-18 19:35:51');
INSERT INTO `sys_job_log` VALUES (1295, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3271毫秒', '0', '', '2021-03-18 19:35:55');
INSERT INTO `sys_job_log` VALUES (1296, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1201毫秒', '0', '', '2021-03-18 19:35:56');
INSERT INTO `sys_job_log` VALUES (1297, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 19:35:56');
INSERT INTO `sys_job_log` VALUES (1298, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:35:57');
INSERT INTO `sys_job_log` VALUES (1299, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：497毫秒', '0', '', '2021-03-18 19:35:57');
INSERT INTO `sys_job_log` VALUES (1300, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:35:58');
INSERT INTO `sys_job_log` VALUES (1301, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:35:58');
INSERT INTO `sys_job_log` VALUES (1302, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:35:59');
INSERT INTO `sys_job_log` VALUES (1303, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2700毫秒', '0', '', '2021-03-18 19:36:02');
INSERT INTO `sys_job_log` VALUES (1304, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:36:02');
INSERT INTO `sys_job_log` VALUES (1305, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：529毫秒', '0', '', '2021-03-18 19:36:03');
INSERT INTO `sys_job_log` VALUES (1306, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:36:03');
INSERT INTO `sys_job_log` VALUES (1307, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:36:04');
INSERT INTO `sys_job_log` VALUES (1308, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 19:36:04');
INSERT INTO `sys_job_log` VALUES (1309, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 19:36:05');
INSERT INTO `sys_job_log` VALUES (1310, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:36:05');
INSERT INTO `sys_job_log` VALUES (1311, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:36:06');
INSERT INTO `sys_job_log` VALUES (1312, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 19:36:06');
INSERT INTO `sys_job_log` VALUES (1313, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 19:36:07');
INSERT INTO `sys_job_log` VALUES (1314, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：93616毫秒', '0', '', '2021-03-18 19:37:40');
INSERT INTO `sys_job_log` VALUES (1315, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1207毫秒', '0', '', '2021-03-18 19:37:52');
INSERT INTO `sys_job_log` VALUES (1316, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2278毫秒', '0', '', '2021-03-18 19:37:54');
INSERT INTO `sys_job_log` VALUES (1317, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 19:37:54');
INSERT INTO `sys_job_log` VALUES (1318, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:37:55');
INSERT INTO `sys_job_log` VALUES (1319, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 19:37:55');
INSERT INTO `sys_job_log` VALUES (1320, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1408毫秒', '0', '', '2021-03-18 19:37:57');
INSERT INTO `sys_job_log` VALUES (1321, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 19:37:57');
INSERT INTO `sys_job_log` VALUES (1322, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1192毫秒', '0', '', '2021-03-18 19:37:59');
INSERT INTO `sys_job_log` VALUES (1323, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:37:59');
INSERT INTO `sys_job_log` VALUES (1324, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1669毫秒', '0', '', '2021-03-18 19:38:01');
INSERT INTO `sys_job_log` VALUES (1325, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 19:38:01');
INSERT INTO `sys_job_log` VALUES (1326, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:38:02');
INSERT INTO `sys_job_log` VALUES (1327, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:38:03');
INSERT INTO `sys_job_log` VALUES (1328, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 19:38:04');
INSERT INTO `sys_job_log` VALUES (1329, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：504毫秒', '0', '', '2021-03-18 19:38:05');
INSERT INTO `sys_job_log` VALUES (1330, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：751毫秒', '0', '', '2021-03-18 19:38:06');
INSERT INTO `sys_job_log` VALUES (1331, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：734毫秒', '0', '', '2021-03-18 19:38:07');
INSERT INTO `sys_job_log` VALUES (1332, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1203毫秒', '0', '', '2021-03-18 19:38:09');
INSERT INTO `sys_job_log` VALUES (1333, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4096毫秒', '0', '', '2021-03-18 19:38:13');
INSERT INTO `sys_job_log` VALUES (1334, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：10毫秒', '0', '', '2021-03-18 19:38:13');
INSERT INTO `sys_job_log` VALUES (1335, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3510毫秒', '0', '', '2021-03-18 19:38:16');
INSERT INTO `sys_job_log` VALUES (1336, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：969毫秒', '0', '', '2021-03-18 19:38:17');
INSERT INTO `sys_job_log` VALUES (1337, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 19:38:18');
INSERT INTO `sys_job_log` VALUES (1338, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 19:38:18');
INSERT INTO `sys_job_log` VALUES (1339, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:38:19');
INSERT INTO `sys_job_log` VALUES (1340, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 19:38:19');
INSERT INTO `sys_job_log` VALUES (1341, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：735毫秒', '0', '', '2021-03-18 19:38:20');
INSERT INTO `sys_job_log` VALUES (1342, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：983毫秒', '0', '', '2021-03-18 19:38:21');
INSERT INTO `sys_job_log` VALUES (1343, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1219毫秒', '0', '', '2021-03-18 19:38:23');
INSERT INTO `sys_job_log` VALUES (1344, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 19:38:23');
INSERT INTO `sys_job_log` VALUES (1345, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1214毫秒', '0', '', '2021-03-18 19:38:24');
INSERT INTO `sys_job_log` VALUES (1346, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1618毫秒', '0', '', '2021-03-18 19:38:26');
INSERT INTO `sys_job_log` VALUES (1347, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 19:38:26');
INSERT INTO `sys_job_log` VALUES (1348, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4857毫秒', '0', '', '2021-03-18 19:38:31');
INSERT INTO `sys_job_log` VALUES (1349, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3484毫秒', '0', '', '2021-03-18 19:38:35');
INSERT INTO `sys_job_log` VALUES (1350, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2543毫秒', '0', '', '2021-03-18 19:38:37');
INSERT INTO `sys_job_log` VALUES (1351, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：717毫秒', '0', '', '2021-03-18 19:38:38');
INSERT INTO `sys_job_log` VALUES (1352, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：721毫秒', '0', '', '2021-03-18 19:38:39');
INSERT INTO `sys_job_log` VALUES (1353, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：997毫秒', '0', '', '2021-03-18 19:38:40');
INSERT INTO `sys_job_log` VALUES (1354, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4196毫秒', '0', '', '2021-03-18 19:38:44');
INSERT INTO `sys_job_log` VALUES (1355, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：960毫秒', '0', '', '2021-03-18 19:38:51');
INSERT INTO `sys_job_log` VALUES (1356, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4070毫秒', '0', '', '2021-03-18 19:38:56');
INSERT INTO `sys_job_log` VALUES (1357, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：966毫秒', '0', '', '2021-03-18 19:38:57');
INSERT INTO `sys_job_log` VALUES (1358, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：966毫秒', '0', '', '2021-03-18 19:38:58');
INSERT INTO `sys_job_log` VALUES (1359, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:38:58');
INSERT INTO `sys_job_log` VALUES (1360, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 19:38:59');
INSERT INTO `sys_job_log` VALUES (1361, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 19:38:59');
INSERT INTO `sys_job_log` VALUES (1362, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3482毫秒', '0', '', '2021-03-18 19:39:03');
INSERT INTO `sys_job_log` VALUES (1363, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3251毫秒', '0', '', '2021-03-18 19:39:06');
INSERT INTO `sys_job_log` VALUES (1364, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 19:39:06');
INSERT INTO `sys_job_log` VALUES (1365, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2336毫秒', '0', '', '2021-03-18 19:39:09');
INSERT INTO `sys_job_log` VALUES (1366, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 19:39:09');
INSERT INTO `sys_job_log` VALUES (1367, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3484毫秒', '0', '', '2021-03-18 19:39:13');
INSERT INTO `sys_job_log` VALUES (1368, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3484毫秒', '0', '', '2021-03-18 19:39:16');
INSERT INTO `sys_job_log` VALUES (1369, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3483毫秒', '0', '', '2021-03-18 19:39:20');
INSERT INTO `sys_job_log` VALUES (1370, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3954毫秒', '0', '', '2021-03-18 19:39:30');
INSERT INTO `sys_job_log` VALUES (1371, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3252毫秒', '0', '', '2021-03-18 19:39:34');
INSERT INTO `sys_job_log` VALUES (1372, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3250毫秒', '0', '', '2021-03-18 19:39:37');
INSERT INTO `sys_job_log` VALUES (1373, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3251毫秒', '0', '', '2021-03-18 19:39:40');
INSERT INTO `sys_job_log` VALUES (1374, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3250毫秒', '0', '', '2021-03-18 19:39:44');
INSERT INTO `sys_job_log` VALUES (1375, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4502毫秒', '0', '', '2021-03-18 19:39:55');
INSERT INTO `sys_job_log` VALUES (1376, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：497毫秒', '0', '', '2021-03-18 19:39:56');
INSERT INTO `sys_job_log` VALUES (1377, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 19:39:56');
INSERT INTO `sys_job_log` VALUES (1378, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 19:39:57');
INSERT INTO `sys_job_log` VALUES (1379, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 19:39:57');
INSERT INTO `sys_job_log` VALUES (1380, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：956毫秒', '0', '', '2021-03-18 19:39:58');
INSERT INTO `sys_job_log` VALUES (1381, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 19:39:59');
INSERT INTO `sys_job_log` VALUES (1382, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 19:39:59');
INSERT INTO `sys_job_log` VALUES (1383, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:40:00');
INSERT INTO `sys_job_log` VALUES (1384, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：496毫秒', '0', '', '2021-03-18 19:40:00');
INSERT INTO `sys_job_log` VALUES (1385, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 19:40:01');
INSERT INTO `sys_job_log` VALUES (1386, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 19:40:02');
INSERT INTO `sys_job_log` VALUES (1387, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 19:40:03');
INSERT INTO `sys_job_log` VALUES (1388, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 19:40:04');
INSERT INTO `sys_job_log` VALUES (1389, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：945毫秒', '0', '', '2021-03-18 19:40:05');
INSERT INTO `sys_job_log` VALUES (1390, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 19:40:06');
INSERT INTO `sys_job_log` VALUES (1391, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：524毫秒', '0', '', '2021-03-18 19:40:07');
INSERT INTO `sys_job_log` VALUES (1392, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:40:08');
INSERT INTO `sys_job_log` VALUES (1393, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 19:40:09');
INSERT INTO `sys_job_log` VALUES (1394, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 19:40:10');
INSERT INTO `sys_job_log` VALUES (1395, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:40:11');
INSERT INTO `sys_job_log` VALUES (1396, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：492毫秒', '0', '', '2021-03-18 19:40:12');
INSERT INTO `sys_job_log` VALUES (1397, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 19:40:13');
INSERT INTO `sys_job_log` VALUES (1398, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2145毫秒', '0', '', '2021-03-18 19:40:16');
INSERT INTO `sys_job_log` VALUES (1399, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：5400毫秒', '0', '', '2021-03-18 19:40:21');
INSERT INTO `sys_job_log` VALUES (1400, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4418毫秒', '0', '', '2021-03-18 19:40:26');
INSERT INTO `sys_job_log` VALUES (1401, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4175毫秒', '0', '', '2021-03-18 19:40:30');
INSERT INTO `sys_job_log` VALUES (1402, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4644毫秒', '0', '', '2021-03-18 19:40:43');
INSERT INTO `sys_job_log` VALUES (1403, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4221毫秒', '0', '', '2021-03-18 19:40:47');
INSERT INTO `sys_job_log` VALUES (1404, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3950毫秒', '0', '', '2021-03-18 19:40:51');
INSERT INTO `sys_job_log` VALUES (1405, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：712毫秒', '0', '', '2021-03-18 19:40:52');
INSERT INTO `sys_job_log` VALUES (1406, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：950毫秒', '0', '', '2021-03-18 19:40:53');
INSERT INTO `sys_job_log` VALUES (1407, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:40:53');
INSERT INTO `sys_job_log` VALUES (1408, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:40:54');
INSERT INTO `sys_job_log` VALUES (1409, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:40:54');
INSERT INTO `sys_job_log` VALUES (1410, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：440毫秒', '0', '', '2021-03-18 19:40:54');
INSERT INTO `sys_job_log` VALUES (1411, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：248毫秒', '0', '', '2021-03-18 19:40:55');
INSERT INTO `sys_job_log` VALUES (1412, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：440毫秒', '0', '', '2021-03-18 19:40:55');
INSERT INTO `sys_job_log` VALUES (1413, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：245毫秒', '0', '', '2021-03-18 19:40:55');
INSERT INTO `sys_job_log` VALUES (1414, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1369毫秒', '0', '', '2021-03-18 19:40:57');
INSERT INTO `sys_job_log` VALUES (1415, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：708毫秒', '0', '', '2021-03-18 19:40:57');
INSERT INTO `sys_job_log` VALUES (1416, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1180毫秒', '0', '', '2021-03-18 19:40:59');
INSERT INTO `sys_job_log` VALUES (1417, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 19:40:59');
INSERT INTO `sys_job_log` VALUES (1418, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 19:41:00');
INSERT INTO `sys_job_log` VALUES (1419, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:41:00');
INSERT INTO `sys_job_log` VALUES (1420, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：268毫秒', '0', '', '2021-03-18 19:41:00');
INSERT INTO `sys_job_log` VALUES (1421, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 19:41:00');
INSERT INTO `sys_job_log` VALUES (1422, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：11毫秒', '0', '', '2021-03-18 19:41:00');
INSERT INTO `sys_job_log` VALUES (1423, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 19:41:01');
INSERT INTO `sys_job_log` VALUES (1424, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1223毫秒', '0', '', '2021-03-18 19:41:02');
INSERT INTO `sys_job_log` VALUES (1425, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 19:41:03');
INSERT INTO `sys_job_log` VALUES (1426, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 19:41:03');
INSERT INTO `sys_job_log` VALUES (1427, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 19:41:04');
INSERT INTO `sys_job_log` VALUES (1428, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:41:05');
INSERT INTO `sys_job_log` VALUES (1429, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：473毫秒', '0', '', '2021-03-18 19:41:06');
INSERT INTO `sys_job_log` VALUES (1430, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 19:41:07');
INSERT INTO `sys_job_log` VALUES (1431, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：475毫秒', '0', '', '2021-03-18 19:41:08');
INSERT INTO `sys_job_log` VALUES (1432, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 19:41:09');
INSERT INTO `sys_job_log` VALUES (1433, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2252毫秒', '0', '', '2021-03-18 19:41:12');
INSERT INTO `sys_job_log` VALUES (1434, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1416毫秒', '0', '', '2021-03-18 19:41:13');
INSERT INTO `sys_job_log` VALUES (1435, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2591毫秒', '0', '', '2021-03-18 19:41:16');
INSERT INTO `sys_job_log` VALUES (1436, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:41:16');
INSERT INTO `sys_job_log` VALUES (1437, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 19:41:17');
INSERT INTO `sys_job_log` VALUES (1438, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1143毫秒', '0', '', '2021-03-18 19:41:18');
INSERT INTO `sys_job_log` VALUES (1439, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4毫秒', '0', '', '2021-03-18 19:41:18');
INSERT INTO `sys_job_log` VALUES (1440, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1185毫秒', '0', '', '2021-03-18 19:41:20');
INSERT INTO `sys_job_log` VALUES (1441, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：709毫秒', '0', '', '2021-03-18 19:41:20');
INSERT INTO `sys_job_log` VALUES (1442, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：953毫秒', '0', '', '2021-03-18 19:41:21');
INSERT INTO `sys_job_log` VALUES (1443, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1634毫秒', '0', '', '2021-03-18 19:41:23');
INSERT INTO `sys_job_log` VALUES (1444, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 19:41:23');
INSERT INTO `sys_job_log` VALUES (1445, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：954毫秒', '0', '', '2021-03-18 19:41:24');
INSERT INTO `sys_job_log` VALUES (1446, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 19:41:25');
INSERT INTO `sys_job_log` VALUES (1447, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 19:41:25');
INSERT INTO `sys_job_log` VALUES (1448, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:41:26');
INSERT INTO `sys_job_log` VALUES (1449, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3478毫秒', '0', '', '2021-03-18 19:41:29');
INSERT INTO `sys_job_log` VALUES (1450, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3473毫秒', '0', '', '2021-03-18 19:41:33');
INSERT INTO `sys_job_log` VALUES (1451, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：478毫秒', '0', '', '2021-03-18 19:41:33');
INSERT INTO `sys_job_log` VALUES (1452, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：970毫秒', '0', '', '2021-03-18 19:41:34');
INSERT INTO `sys_job_log` VALUES (1453, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：480毫秒', '0', '', '2021-03-18 19:41:35');
INSERT INTO `sys_job_log` VALUES (1454, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3477毫秒', '0', '', '2021-03-18 19:41:38');
INSERT INTO `sys_job_log` VALUES (1455, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3246毫秒', '0', '', '2021-03-18 19:41:42');
INSERT INTO `sys_job_log` VALUES (1456, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 19:41:42');
INSERT INTO `sys_job_log` VALUES (1457, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：959毫秒', '0', '', '2021-03-18 19:41:43');
INSERT INTO `sys_job_log` VALUES (1458, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：951毫秒', '0', '', '2021-03-18 19:41:44');
INSERT INTO `sys_job_log` VALUES (1459, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：5505毫秒', '0', '', '2021-03-18 19:41:50');
INSERT INTO `sys_job_log` VALUES (1460, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4375毫秒', '0', '', '2021-03-18 19:41:55');
INSERT INTO `sys_job_log` VALUES (1461, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：950毫秒', '0', '', '2021-03-18 19:41:56');
INSERT INTO `sys_job_log` VALUES (1462, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：959毫秒', '0', '', '2021-03-18 19:41:57');
INSERT INTO `sys_job_log` VALUES (1463, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1642毫秒', '0', '', '2021-03-18 19:41:59');
INSERT INTO `sys_job_log` VALUES (1464, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：708毫秒', '0', '', '2021-03-18 19:41:59');
INSERT INTO `sys_job_log` VALUES (1465, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：708毫秒', '0', '', '2021-03-18 19:42:00');
INSERT INTO `sys_job_log` VALUES (1466, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3476毫秒', '0', '', '2021-03-18 19:42:03');
INSERT INTO `sys_job_log` VALUES (1467, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 19:42:04');
INSERT INTO `sys_job_log` VALUES (1468, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:42:04');
INSERT INTO `sys_job_log` VALUES (1469, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3478毫秒', '0', '', '2021-03-18 19:42:08');
INSERT INTO `sys_job_log` VALUES (1470, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3707毫秒', '0', '', '2021-03-18 19:42:12');
INSERT INTO `sys_job_log` VALUES (1471, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2492毫秒', '0', '', '2021-03-18 19:42:14');
INSERT INTO `sys_job_log` VALUES (1472, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1226毫秒', '0', '', '2021-03-18 19:42:15');
INSERT INTO `sys_job_log` VALUES (1473, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 19:42:16');
INSERT INTO `sys_job_log` VALUES (1474, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：479毫秒', '0', '', '2021-03-18 19:42:16');
INSERT INTO `sys_job_log` VALUES (1475, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4572毫秒', '0', '', '2021-03-18 19:42:21');
INSERT INTO `sys_job_log` VALUES (1476, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：138648毫秒', '0', '', '2021-03-18 19:45:42');
INSERT INTO `sys_job_log` VALUES (1477, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：80479毫秒', '0', '', '2021-03-18 19:47:09');
INSERT INTO `sys_job_log` VALUES (1478, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：883317毫秒', '0', '', '2021-03-18 20:02:26');
INSERT INTO `sys_job_log` VALUES (1479, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：25872毫秒', '0', '', '2021-03-18 20:03:30');
INSERT INTO `sys_job_log` VALUES (1480, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：76581毫秒', '0', '', '2021-03-18 20:07:56');
INSERT INTO `sys_job_log` VALUES (1481, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：83828毫秒', '0', '', '2021-03-18 20:09:27');
INSERT INTO `sys_job_log` VALUES (1482, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3149毫秒', '0', '', '2021-03-18 20:10:17');
INSERT INTO `sys_job_log` VALUES (1483, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 20:10:18');
INSERT INTO `sys_job_log` VALUES (1484, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：505毫秒', '0', '', '2021-03-18 20:10:18');
INSERT INTO `sys_job_log` VALUES (1485, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1181毫秒', '0', '', '2021-03-18 20:10:20');
INSERT INTO `sys_job_log` VALUES (1486, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:10:20');
INSERT INTO `sys_job_log` VALUES (1487, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:10:20');
INSERT INTO `sys_job_log` VALUES (1488, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1161毫秒', '0', '', '2021-03-18 20:10:21');
INSERT INTO `sys_job_log` VALUES (1489, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:10:22');
INSERT INTO `sys_job_log` VALUES (1490, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 20:10:22');
INSERT INTO `sys_job_log` VALUES (1491, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:10:22');
INSERT INTO `sys_job_log` VALUES (1492, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:10:23');
INSERT INTO `sys_job_log` VALUES (1493, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:10:23');
INSERT INTO `sys_job_log` VALUES (1494, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：964毫秒', '0', '', '2021-03-18 20:10:24');
INSERT INTO `sys_job_log` VALUES (1495, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:10:25');
INSERT INTO `sys_job_log` VALUES (1496, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:10:25');
INSERT INTO `sys_job_log` VALUES (1497, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 20:10:25');
INSERT INTO `sys_job_log` VALUES (1498, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:10:25');
INSERT INTO `sys_job_log` VALUES (1499, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1252毫秒', '0', '', '2021-03-18 20:10:27');
INSERT INTO `sys_job_log` VALUES (1500, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：737毫秒', '0', '', '2021-03-18 20:10:28');
INSERT INTO `sys_job_log` VALUES (1501, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:10:28');
INSERT INTO `sys_job_log` VALUES (1502, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：953毫秒', '0', '', '2021-03-18 20:10:29');
INSERT INTO `sys_job_log` VALUES (1503, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：269毫秒', '0', '', '2021-03-18 20:10:29');
INSERT INTO `sys_job_log` VALUES (1504, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 20:10:30');
INSERT INTO `sys_job_log` VALUES (1505, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:10:30');
INSERT INTO `sys_job_log` VALUES (1506, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 20:10:31');
INSERT INTO `sys_job_log` VALUES (1507, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：915毫秒', '0', '', '2021-03-18 20:10:32');
INSERT INTO `sys_job_log` VALUES (1508, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：497毫秒', '0', '', '2021-03-18 20:10:33');
INSERT INTO `sys_job_log` VALUES (1509, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:10:34');
INSERT INTO `sys_job_log` VALUES (1510, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1823毫秒', '0', '', '2021-03-18 20:10:36');
INSERT INTO `sys_job_log` VALUES (1511, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1844毫秒', '0', '', '2021-03-18 20:10:38');
INSERT INTO `sys_job_log` VALUES (1512, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2803毫秒', '0', '', '2021-03-18 20:10:41');
INSERT INTO `sys_job_log` VALUES (1513, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:10:42');
INSERT INTO `sys_job_log` VALUES (1514, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 20:10:42');
INSERT INTO `sys_job_log` VALUES (1515, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：489毫秒', '0', '', '2021-03-18 20:10:43');
INSERT INTO `sys_job_log` VALUES (1516, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：513毫秒', '0', '', '2021-03-18 20:10:43');
INSERT INTO `sys_job_log` VALUES (1517, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:10:44');
INSERT INTO `sys_job_log` VALUES (1518, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 20:10:44');
INSERT INTO `sys_job_log` VALUES (1519, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:10:44');
INSERT INTO `sys_job_log` VALUES (1520, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：249毫秒', '0', '', '2021-03-18 20:10:45');
INSERT INTO `sys_job_log` VALUES (1521, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：788毫秒', '0', '', '2021-03-18 20:10:46');
INSERT INTO `sys_job_log` VALUES (1522, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：952毫秒', '0', '', '2021-03-18 20:10:47');
INSERT INTO `sys_job_log` VALUES (1523, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:10:48');
INSERT INTO `sys_job_log` VALUES (1524, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：251毫秒', '0', '', '2021-03-18 20:10:49');
INSERT INTO `sys_job_log` VALUES (1525, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 20:10:50');
INSERT INTO `sys_job_log` VALUES (1526, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1656毫秒', '0', '', '2021-03-18 20:10:52');
INSERT INTO `sys_job_log` VALUES (1527, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 20:10:53');
INSERT INTO `sys_job_log` VALUES (1528, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:10:53');
INSERT INTO `sys_job_log` VALUES (1529, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 20:10:54');
INSERT INTO `sys_job_log` VALUES (1530, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1145毫秒', '0', '', '2021-03-18 20:13:53');
INSERT INTO `sys_job_log` VALUES (1531, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 20:13:53');
INSERT INTO `sys_job_log` VALUES (1532, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:13:53');
INSERT INTO `sys_job_log` VALUES (1533, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:13:54');
INSERT INTO `sys_job_log` VALUES (1534, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 20:13:54');
INSERT INTO `sys_job_log` VALUES (1535, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：257毫秒', '0', '', '2021-03-18 20:13:54');
INSERT INTO `sys_job_log` VALUES (1536, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1179毫秒', '0', '', '2021-03-18 20:13:55');
INSERT INTO `sys_job_log` VALUES (1537, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：504毫秒', '0', '', '2021-03-18 20:13:56');
INSERT INTO `sys_job_log` VALUES (1538, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：980毫秒', '0', '', '2021-03-18 20:13:57');
INSERT INTO `sys_job_log` VALUES (1539, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：776毫秒', '0', '', '2021-03-18 20:13:58');
INSERT INTO `sys_job_log` VALUES (1540, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1203毫秒', '0', '', '2021-03-18 20:13:59');
INSERT INTO `sys_job_log` VALUES (1541, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 20:13:59');
INSERT INTO `sys_job_log` VALUES (1542, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:14:00');
INSERT INTO `sys_job_log` VALUES (1543, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1190毫秒', '0', '', '2021-03-18 20:14:01');
INSERT INTO `sys_job_log` VALUES (1544, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:14:01');
INSERT INTO `sys_job_log` VALUES (1545, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:14:02');
INSERT INTO `sys_job_log` VALUES (1546, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：263毫秒', '0', '', '2021-03-18 20:14:02');
INSERT INTO `sys_job_log` VALUES (1547, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:14:03');
INSERT INTO `sys_job_log` VALUES (1548, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 20:14:03');
INSERT INTO `sys_job_log` VALUES (1549, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：741毫秒', '0', '', '2021-03-18 20:14:04');
INSERT INTO `sys_job_log` VALUES (1550, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3489毫秒', '0', '', '2021-03-18 20:14:07');
INSERT INTO `sys_job_log` VALUES (1551, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：719毫秒', '0', '', '2021-03-18 20:14:08');
INSERT INTO `sys_job_log` VALUES (1552, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1463毫秒', '0', '', '2021-03-18 20:14:10');
INSERT INTO `sys_job_log` VALUES (1553, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1687毫秒', '0', '', '2021-03-18 20:14:11');
INSERT INTO `sys_job_log` VALUES (1554, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1226毫秒', '0', '', '2021-03-18 20:14:13');
INSERT INTO `sys_job_log` VALUES (1555, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：527毫秒', '0', '', '2021-03-18 20:14:13');
INSERT INTO `sys_job_log` VALUES (1556, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 20:14:14');
INSERT INTO `sys_job_log` VALUES (1557, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:14:15');
INSERT INTO `sys_job_log` VALUES (1558, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:14:15');
INSERT INTO `sys_job_log` VALUES (1559, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 20:14:16');
INSERT INTO `sys_job_log` VALUES (1560, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1200毫秒', '0', '', '2021-03-18 20:14:17');
INSERT INTO `sys_job_log` VALUES (1561, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：495毫秒', '0', '', '2021-03-18 20:14:17');
INSERT INTO `sys_job_log` VALUES (1562, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:14:18');
INSERT INTO `sys_job_log` VALUES (1563, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:14:18');
INSERT INTO `sys_job_log` VALUES (1564, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:14:19');
INSERT INTO `sys_job_log` VALUES (1565, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:14:19');
INSERT INTO `sys_job_log` VALUES (1566, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:14:19');
INSERT INTO `sys_job_log` VALUES (1567, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:14:20');
INSERT INTO `sys_job_log` VALUES (1568, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:14:21');
INSERT INTO `sys_job_log` VALUES (1569, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：732毫秒', '0', '', '2021-03-18 20:14:22');
INSERT INTO `sys_job_log` VALUES (1570, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：963毫秒', '0', '', '2021-03-18 20:14:23');
INSERT INTO `sys_job_log` VALUES (1571, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：782毫秒', '0', '', '2021-03-18 20:14:24');
INSERT INTO `sys_job_log` VALUES (1572, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:14:25');
INSERT INTO `sys_job_log` VALUES (1573, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:14:26');
INSERT INTO `sys_job_log` VALUES (1574, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:14:27');
INSERT INTO `sys_job_log` VALUES (1575, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1453毫秒', '0', '', '2021-03-18 20:14:29');
INSERT INTO `sys_job_log` VALUES (1576, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：760毫秒', '0', '', '2021-03-18 20:14:30');
INSERT INTO `sys_job_log` VALUES (1577, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1394毫秒', '0', '', '2021-03-18 20:14:32');
INSERT INTO `sys_job_log` VALUES (1578, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：760毫秒', '0', '', '2021-03-18 20:14:32');
INSERT INTO `sys_job_log` VALUES (1579, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1027毫秒', '0', '', '2021-03-18 20:14:33');
INSERT INTO `sys_job_log` VALUES (1580, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3394毫秒', '0', '', '2021-03-18 20:15:13');
INSERT INTO `sys_job_log` VALUES (1581, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1723毫秒', '0', '', '2021-03-18 20:15:14');
INSERT INTO `sys_job_log` VALUES (1582, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1199毫秒', '0', '', '2021-03-18 20:15:16');
INSERT INTO `sys_job_log` VALUES (1583, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2629毫秒', '0', '', '2021-03-18 20:15:24');
INSERT INTO `sys_job_log` VALUES (1584, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 20:15:24');
INSERT INTO `sys_job_log` VALUES (1585, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:15:25');
INSERT INTO `sys_job_log` VALUES (1586, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:15:25');
INSERT INTO `sys_job_log` VALUES (1587, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：259毫秒', '0', '', '2021-03-18 20:15:26');
INSERT INTO `sys_job_log` VALUES (1588, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1187毫秒', '0', '', '2021-03-18 20:15:28');
INSERT INTO `sys_job_log` VALUES (1589, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:15:28');
INSERT INTO `sys_job_log` VALUES (1590, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3030毫秒', '0', '', '2021-03-18 20:15:32');
INSERT INTO `sys_job_log` VALUES (1591, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：803毫秒', '0', '', '2021-03-18 20:15:32');
INSERT INTO `sys_job_log` VALUES (1592, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2402毫秒', '0', '', '2021-03-18 20:15:35');
INSERT INTO `sys_job_log` VALUES (1593, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2564毫秒', '0', '', '2021-03-18 20:15:37');
INSERT INTO `sys_job_log` VALUES (1594, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1507毫秒', '0', '', '2021-03-18 20:15:39');
INSERT INTO `sys_job_log` VALUES (1595, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：718毫秒', '0', '', '2021-03-18 20:15:40');
INSERT INTO `sys_job_log` VALUES (1596, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:15:40');
INSERT INTO `sys_job_log` VALUES (1597, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:15:41');
INSERT INTO `sys_job_log` VALUES (1598, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：974毫秒', '0', '', '2021-03-18 20:15:42');
INSERT INTO `sys_job_log` VALUES (1599, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:15:42');
INSERT INTO `sys_job_log` VALUES (1600, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：987毫秒', '0', '', '2021-03-18 20:15:43');
INSERT INTO `sys_job_log` VALUES (1601, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:15:44');
INSERT INTO `sys_job_log` VALUES (1602, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1382毫秒', '0', '', '2021-03-18 20:15:45');
INSERT INTO `sys_job_log` VALUES (1603, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 20:15:46');
INSERT INTO `sys_job_log` VALUES (1604, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:15:46');
INSERT INTO `sys_job_log` VALUES (1605, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4648毫秒', '0', '', '2021-03-18 20:15:51');
INSERT INTO `sys_job_log` VALUES (1606, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：525毫秒', '0', '', '2021-03-18 20:15:52');
INSERT INTO `sys_job_log` VALUES (1607, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 20:15:52');
INSERT INTO `sys_job_log` VALUES (1608, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:15:53');
INSERT INTO `sys_job_log` VALUES (1609, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：719毫秒', '0', '', '2021-03-18 20:15:53');
INSERT INTO `sys_job_log` VALUES (1610, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1199毫秒', '0', '', '2021-03-18 20:15:55');
INSERT INTO `sys_job_log` VALUES (1611, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:15:55');
INSERT INTO `sys_job_log` VALUES (1612, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:15:55');
INSERT INTO `sys_job_log` VALUES (1613, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:15:56');
INSERT INTO `sys_job_log` VALUES (1614, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：823毫秒', '0', '', '2021-03-18 20:15:57');
INSERT INTO `sys_job_log` VALUES (1615, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 20:15:57');
INSERT INTO `sys_job_log` VALUES (1616, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:15:57');
INSERT INTO `sys_job_log` VALUES (1617, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:15:58');
INSERT INTO `sys_job_log` VALUES (1618, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:15:58');
INSERT INTO `sys_job_log` VALUES (1619, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：512毫秒', '0', '', '2021-03-18 20:15:59');
INSERT INTO `sys_job_log` VALUES (1620, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：972毫秒', '0', '', '2021-03-18 20:16:00');
INSERT INTO `sys_job_log` VALUES (1621, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:16:00');
INSERT INTO `sys_job_log` VALUES (1622, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:16:01');
INSERT INTO `sys_job_log` VALUES (1623, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：681毫秒', '0', '', '2021-03-18 20:17:00');
INSERT INTO `sys_job_log` VALUES (1624, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：499毫秒', '0', '', '2021-03-18 20:17:01');
INSERT INTO `sys_job_log` VALUES (1625, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：736毫秒', '0', '', '2021-03-18 20:17:02');
INSERT INTO `sys_job_log` VALUES (1626, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1897毫秒', '0', '', '2021-03-18 20:17:04');
INSERT INTO `sys_job_log` VALUES (1627, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2403毫秒', '0', '', '2021-03-18 20:17:06');
INSERT INTO `sys_job_log` VALUES (1628, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：529毫秒', '0', '', '2021-03-18 20:17:07');
INSERT INTO `sys_job_log` VALUES (1629, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:07');
INSERT INTO `sys_job_log` VALUES (1630, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:17:08');
INSERT INTO `sys_job_log` VALUES (1631, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1631毫秒', '0', '', '2021-03-18 20:17:09');
INSERT INTO `sys_job_log` VALUES (1632, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：719毫秒', '0', '', '2021-03-18 20:17:10');
INSERT INTO `sys_job_log` VALUES (1633, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 20:17:11');
INSERT INTO `sys_job_log` VALUES (1634, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：765毫秒', '0', '', '2021-03-18 20:17:12');
INSERT INTO `sys_job_log` VALUES (1635, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2835毫秒', '0', '', '2021-03-18 20:17:15');
INSERT INTO `sys_job_log` VALUES (1636, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:15');
INSERT INTO `sys_job_log` VALUES (1637, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:17:15');
INSERT INTO `sys_job_log` VALUES (1638, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:17:16');
INSERT INTO `sys_job_log` VALUES (1639, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 20:17:16');
INSERT INTO `sys_job_log` VALUES (1640, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1385毫秒', '0', '', '2021-03-18 20:17:17');
INSERT INTO `sys_job_log` VALUES (1641, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1521毫秒', '0', '', '2021-03-18 20:17:19');
INSERT INTO `sys_job_log` VALUES (1642, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：733毫秒', '0', '', '2021-03-18 20:17:20');
INSERT INTO `sys_job_log` VALUES (1643, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1206毫秒', '0', '', '2021-03-18 20:17:21');
INSERT INTO `sys_job_log` VALUES (1644, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：542毫秒', '0', '', '2021-03-18 20:17:22');
INSERT INTO `sys_job_log` VALUES (1645, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 20:17:22');
INSERT INTO `sys_job_log` VALUES (1646, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 20:17:22');
INSERT INTO `sys_job_log` VALUES (1647, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:17:23');
INSERT INTO `sys_job_log` VALUES (1648, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:17:23');
INSERT INTO `sys_job_log` VALUES (1649, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:24');
INSERT INTO `sys_job_log` VALUES (1650, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:17:24');
INSERT INTO `sys_job_log` VALUES (1651, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：565毫秒', '0', '', '2021-03-18 20:17:25');
INSERT INTO `sys_job_log` VALUES (1652, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：719毫秒', '0', '', '2021-03-18 20:17:26');
INSERT INTO `sys_job_log` VALUES (1653, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1420毫秒', '0', '', '2021-03-18 20:17:27');
INSERT INTO `sys_job_log` VALUES (1654, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:28');
INSERT INTO `sys_job_log` VALUES (1655, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:17:28');
INSERT INTO `sys_job_log` VALUES (1656, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:17:29');
INSERT INTO `sys_job_log` VALUES (1657, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1833毫秒', '0', '', '2021-03-18 20:17:30');
INSERT INTO `sys_job_log` VALUES (1658, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:17:31');
INSERT INTO `sys_job_log` VALUES (1659, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:31');
INSERT INTO `sys_job_log` VALUES (1660, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:17:32');
INSERT INTO `sys_job_log` VALUES (1661, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:17:32');
INSERT INTO `sys_job_log` VALUES (1662, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：786毫秒', '0', '', '2021-03-18 20:17:33');
INSERT INTO `sys_job_log` VALUES (1663, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：739毫秒', '0', '', '2021-03-18 20:17:34');
INSERT INTO `sys_job_log` VALUES (1664, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:17:34');
INSERT INTO `sys_job_log` VALUES (1665, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:35');
INSERT INTO `sys_job_log` VALUES (1666, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1382毫秒', '0', '', '2021-03-18 20:17:37');
INSERT INTO `sys_job_log` VALUES (1667, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 20:17:37');
INSERT INTO `sys_job_log` VALUES (1668, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:38');
INSERT INTO `sys_job_log` VALUES (1669, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:39');
INSERT INTO `sys_job_log` VALUES (1670, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:17:40');
INSERT INTO `sys_job_log` VALUES (1671, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:17:41');
INSERT INTO `sys_job_log` VALUES (1672, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1891毫秒', '0', '', '2021-03-18 20:17:43');
INSERT INTO `sys_job_log` VALUES (1673, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2794毫秒', '0', '', '2021-03-18 20:17:46');
INSERT INTO `sys_job_log` VALUES (1674, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:17:47');
INSERT INTO `sys_job_log` VALUES (1675, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：250毫秒', '0', '', '2021-03-18 20:17:47');
INSERT INTO `sys_job_log` VALUES (1676, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：4080毫秒', '0', '', '2021-03-18 20:17:51');
INSERT INTO `sys_job_log` VALUES (1677, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 20:17:52');
INSERT INTO `sys_job_log` VALUES (1678, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1445毫秒', '0', '', '2021-03-18 20:17:53');
INSERT INTO `sys_job_log` VALUES (1679, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1630毫秒', '0', '', '2021-03-18 20:17:55');
INSERT INTO `sys_job_log` VALUES (1680, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1369毫秒', '0', '', '2021-03-18 20:20:21');
INSERT INTO `sys_job_log` VALUES (1681, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:20:22');
INSERT INTO `sys_job_log` VALUES (1682, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1662毫秒', '0', '', '2021-03-18 20:20:23');
INSERT INTO `sys_job_log` VALUES (1683, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1688毫秒', '0', '', '2021-03-18 20:20:25');
INSERT INTO `sys_job_log` VALUES (1684, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:20:26');
INSERT INTO `sys_job_log` VALUES (1685, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1854毫秒', '0', '', '2021-03-18 20:20:28');
INSERT INTO `sys_job_log` VALUES (1686, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：525毫秒', '0', '', '2021-03-18 20:20:28');
INSERT INTO `sys_job_log` VALUES (1687, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：483毫秒', '0', '', '2021-03-18 20:20:29');
INSERT INTO `sys_job_log` VALUES (1688, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：481毫秒', '0', '', '2021-03-18 20:20:29');
INSERT INTO `sys_job_log` VALUES (1689, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：727毫秒', '0', '', '2021-03-18 20:20:30');
INSERT INTO `sys_job_log` VALUES (1690, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：960毫秒', '0', '', '2021-03-18 20:20:31');
INSERT INTO `sys_job_log` VALUES (1691, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:20:31');
INSERT INTO `sys_job_log` VALUES (1692, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:20:32');
INSERT INTO `sys_job_log` VALUES (1693, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：714毫秒', '0', '', '2021-03-18 20:20:32');
INSERT INTO `sys_job_log` VALUES (1694, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：482毫秒', '0', '', '2021-03-18 20:20:33');
INSERT INTO `sys_job_log` VALUES (1695, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：901毫秒', '0', '', '2021-03-18 20:21:10');
INSERT INTO `sys_job_log` VALUES (1696, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：494毫秒', '0', '', '2021-03-18 20:21:11');
INSERT INTO `sys_job_log` VALUES (1697, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1438毫秒', '0', '', '2021-03-18 20:21:12');
INSERT INTO `sys_job_log` VALUES (1698, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：488毫秒', '0', '', '2021-03-18 20:21:13');
INSERT INTO `sys_job_log` VALUES (1699, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：256毫秒', '0', '', '2021-03-18 20:21:13');
INSERT INTO `sys_job_log` VALUES (1700, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 20:21:13');
INSERT INTO `sys_job_log` VALUES (1701, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:21:13');
INSERT INTO `sys_job_log` VALUES (1702, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1408毫秒', '0', '', '2021-03-18 20:21:15');
INSERT INTO `sys_job_log` VALUES (1703, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:21:15');
INSERT INTO `sys_job_log` VALUES (1704, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1437毫秒', '0', '', '2021-03-18 20:21:17');
INSERT INTO `sys_job_log` VALUES (1705, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2548毫秒', '0', '', '2021-03-18 20:21:19');
INSERT INTO `sys_job_log` VALUES (1706, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：798毫秒', '0', '', '2021-03-18 20:21:20');
INSERT INTO `sys_job_log` VALUES (1707, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2822毫秒', '0', '', '2021-03-18 20:21:23');
INSERT INTO `sys_job_log` VALUES (1708, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:21:24');
INSERT INTO `sys_job_log` VALUES (1709, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:21:24');
INSERT INTO `sys_job_log` VALUES (1710, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:21:24');
INSERT INTO `sys_job_log` VALUES (1711, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:21:25');
INSERT INTO `sys_job_log` VALUES (1712, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:21:25');
INSERT INTO `sys_job_log` VALUES (1713, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：960毫秒', '0', '', '2021-03-18 20:21:26');
INSERT INTO `sys_job_log` VALUES (1714, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：723毫秒', '0', '', '2021-03-18 20:21:27');
INSERT INTO `sys_job_log` VALUES (1715, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：970毫秒', '0', '', '2021-03-18 20:21:28');
INSERT INTO `sys_job_log` VALUES (1716, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:21:28');
INSERT INTO `sys_job_log` VALUES (1717, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:21:28');
INSERT INTO `sys_job_log` VALUES (1718, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:21:29');
INSERT INTO `sys_job_log` VALUES (1719, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:21:29');
INSERT INTO `sys_job_log` VALUES (1720, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:21:29');
INSERT INTO `sys_job_log` VALUES (1721, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:21:29');
INSERT INTO `sys_job_log` VALUES (1722, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:21:30');
INSERT INTO `sys_job_log` VALUES (1723, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：258毫秒', '0', '', '2021-03-18 20:21:30');
INSERT INTO `sys_job_log` VALUES (1724, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：493毫秒', '0', '', '2021-03-18 20:21:31');
INSERT INTO `sys_job_log` VALUES (1725, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：975毫秒', '0', '', '2021-03-18 20:21:32');
INSERT INTO `sys_job_log` VALUES (1726, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：253毫秒', '0', '', '2021-03-18 20:21:32');
INSERT INTO `sys_job_log` VALUES (1727, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：255毫秒', '0', '', '2021-03-18 20:21:32');
INSERT INTO `sys_job_log` VALUES (1728, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:21:33');
INSERT INTO `sys_job_log` VALUES (1729, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：261毫秒', '0', '', '2021-03-18 20:21:34');
INSERT INTO `sys_job_log` VALUES (1730, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:21:35');
INSERT INTO `sys_job_log` VALUES (1731, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：260毫秒', '0', '', '2021-03-18 20:21:36');
INSERT INTO `sys_job_log` VALUES (1732, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：254毫秒', '0', '', '2021-03-18 20:21:37');
INSERT INTO `sys_job_log` VALUES (1733, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：252毫秒', '0', '', '2021-03-18 20:21:38');
INSERT INTO `sys_job_log` VALUES (1734, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1606毫秒', '0', '', '2021-03-18 20:21:40');
INSERT INTO `sys_job_log` VALUES (1735, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：3342毫秒', '0', '', '2021-03-18 20:21:43');
INSERT INTO `sys_job_log` VALUES (1736, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：717毫秒', '0', '', '2021-03-18 20:21:44');
INSERT INTO `sys_job_log` VALUES (1737, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：484毫秒', '0', '', '2021-03-18 20:21:45');
INSERT INTO `sys_job_log` VALUES (1738, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：498毫秒', '0', '', '2021-03-18 20:21:45');
INSERT INTO `sys_job_log` VALUES (1739, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：722毫秒', '0', '', '2021-03-18 20:21:46');
INSERT INTO `sys_job_log` VALUES (1740, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1209毫秒', '0', '', '2021-03-18 20:21:47');
INSERT INTO `sys_job_log` VALUES (1741, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:21:48');
INSERT INTO `sys_job_log` VALUES (1742, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:21:48');
INSERT INTO `sys_job_log` VALUES (1743, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：2925毫秒', '0', '', '2021-03-18 20:21:51');
INSERT INTO `sys_job_log` VALUES (1744, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：997毫秒', '0', '', '2021-03-18 20:21:52');
INSERT INTO `sys_job_log` VALUES (1745, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：1700毫秒', '0', '', '2021-03-18 20:21:54');
INSERT INTO `sys_job_log` VALUES (1746, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：732毫秒', '0', '', '2021-03-18 20:21:55');
INSERT INTO `sys_job_log` VALUES (1747, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：485毫秒', '0', '', '2021-03-18 20:21:55');
INSERT INTO `sys_job_log` VALUES (1748, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：727毫秒', '0', '', '2021-03-18 20:21:56');
INSERT INTO `sys_job_log` VALUES (1749, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:21:56');
INSERT INTO `sys_job_log` VALUES (1750, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:21:57');
INSERT INTO `sys_job_log` VALUES (1751, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：486毫秒', '0', '', '2021-03-18 20:21:58');
INSERT INTO `sys_job_log` VALUES (1752, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：491毫秒', '0', '', '2021-03-18 20:21:58');
INSERT INTO `sys_job_log` VALUES (1753, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：487毫秒', '0', '', '2021-03-18 20:21:59');
INSERT INTO `sys_job_log` VALUES (1754, '区块扫描任务', 'SYSTEM', 'syncBlockTask.sync', '区块扫描任务 总共耗时：490毫秒', '0', '', '2021-03-18 20:21:59');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-05 15:24:31');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-05 17:58:39');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-05 18:16:10');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-03-18 14:13:51');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-03-18 14:14:04');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-03-18 14:14:10');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-03-18 14:14:23');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-03-18 14:14:29');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2021-03-18 14:23:27');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-18 14:23:32');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-03-18 19:32:33');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2072 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-03-05 11:55:13', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-03-05 11:55:13', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-03-05 11:55:13', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-03-05 11:55:13', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-03-05 11:55:13', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-03-05 11:55:13', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-03-05 11:55:13', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-03-05 11:55:13', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-03-05 11:55:13', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-03-05 11:55:13', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-03-05 11:55:13', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-03-05 11:55:13', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-03-05 11:55:13', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-03-05 11:55:13', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-03-05 11:55:13', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-03-05 11:55:13', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-03-05 11:55:13', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-03-05 11:55:13', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-03-05 11:55:13', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-03-05 11:55:13', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-03-05 11:55:13', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-03-05 11:55:13', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '波场配置', 0, 1, 'config', NULL, 1, 0, 'M', '0', '0', '', 'form', 'admin', '2021-03-05 15:36:30', 'admin', '2021-03-05 15:37:00', '');
INSERT INTO `sys_menu` VALUES (2001, '币种设置', 2000, 1, 'cointype', NULL, 1, 0, 'M', '0', '0', NULL, 'money', 'admin', '2021-03-05 15:38:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '系统地址', 2000, 2, 'system', NULL, 1, 0, 'M', '0', '0', '', 'cascader', 'admin', '2021-03-05 15:39:14', 'admin', '2021-03-05 15:39:26', '');
INSERT INTO `sys_menu` VALUES (2003, '充值管理', 0, 4, 'recharge', NULL, 1, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-03-05 15:41:27', 'admin', '2021-03-05 15:43:54', '');
INSERT INTO `sys_menu` VALUES (2004, '提现管理', 0, 5, 'withdraw', NULL, 1, 0, 'M', '0', '0', '', 'upload', 'admin', '2021-03-05 15:42:21', 'admin', '2021-03-05 15:44:02', '');
INSERT INTO `sys_menu` VALUES (2005, '消耗管理', 0, 6, 'consume', NULL, 1, 0, 'M', '0', '0', NULL, 'exit-fullscreen', 'admin', '2021-03-05 16:00:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '地址管理', 2003, 1, 'address', 'tron/address/index', 1, 0, 'C', '0', '0', 'tron:address:list', '#', 'admin', '2021-03-05 18:40:11', '', NULL, '地址管理菜单');
INSERT INTO `sys_menu` VALUES (2007, '地址管理查询', 2006, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:address:query', '#', 'admin', '2021-03-05 18:40:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '地址管理新增', 2006, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:address:add', '#', 'admin', '2021-03-05 18:40:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '地址管理修改', 2006, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:address:edit', '#', 'admin', '2021-03-05 18:40:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '地址管理删除', 2006, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:address:remove', '#', 'admin', '2021-03-05 18:40:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '地址管理导出', 2006, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:address:export', '#', 'admin', '2021-03-05 18:40:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '区块高度', 2000, 1, 'block-height', 'tron/block-height/index', 1, 0, 'C', '0', '0', 'tron:block-height:list', '#', 'admin', '2021-03-05 18:40:51', '', NULL, '区块高度菜单');
INSERT INTO `sys_menu` VALUES (2013, '区块高度查询', 2012, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:block-height:query', '#', 'admin', '2021-03-05 18:40:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '区块高度新增', 2012, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:block-height:add', '#', 'admin', '2021-03-05 18:40:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '区块高度修改', 2012, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:block-height:edit', '#', 'admin', '2021-03-05 18:40:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '区块高度删除', 2012, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:block-height:remove', '#', 'admin', '2021-03-05 18:40:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '区块高度导出', 2012, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:block-height:export', '#', 'admin', '2021-03-05 18:40:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '波场链上交互信息', 3, 1, 'chain', 'tron/chain/index', 1, 0, 'C', '0', '0', 'tron:chain:list', '#', 'admin', '2021-03-05 18:40:58', '', NULL, '波场链上交互信息菜单');
INSERT INTO `sys_menu` VALUES (2019, '波场链上交互信息查询', 2018, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:chain:query', '#', 'admin', '2021-03-05 18:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '波场链上交互信息新增', 2018, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:chain:add', '#', 'admin', '2021-03-05 18:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '波场链上交互信息修改', 2018, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:chain:edit', '#', 'admin', '2021-03-05 18:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '波场链上交互信息删除', 2018, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:chain:remove', '#', 'admin', '2021-03-05 18:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '波场链上交互信息导出', 2018, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:chain:export', '#', 'admin', '2021-03-05 18:40:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '币种管理', 2000, 1, 'cointype', 'tron/cointype/index', 1, 0, 'C', '0', '0', 'tron:cointype:list', '#', 'admin', '2021-03-05 18:41:06', '', NULL, '币种管理菜单');
INSERT INTO `sys_menu` VALUES (2025, '币种管理查询', 2024, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:cointype:query', '#', 'admin', '2021-03-05 18:41:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '币种管理新增', 2024, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:cointype:add', '#', 'admin', '2021-03-05 18:41:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '币种管理修改', 2024, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:cointype:edit', '#', 'admin', '2021-03-05 18:41:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '币种管理删除', 2024, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:cointype:remove', '#', 'admin', '2021-03-05 18:41:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '币种管理导出', 2024, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:cointype:export', '#', 'admin', '2021-03-05 18:41:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '归集记录', 2003, 1, 'collect', 'tron/collect/index', 1, 0, 'C', '0', '0', 'tron:collect:list', '#', 'admin', '2021-03-05 18:41:12', '', NULL, '归集记录菜单');
INSERT INTO `sys_menu` VALUES (2031, '归集记录查询', 2030, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:collect:query', '#', 'admin', '2021-03-05 18:41:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '归集记录新增', 2030, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:collect:add', '#', 'admin', '2021-03-05 18:41:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '归集记录修改', 2030, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:collect:edit', '#', 'admin', '2021-03-05 18:41:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '归集记录删除', 2030, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:collect:remove', '#', 'admin', '2021-03-05 18:41:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '归集记录导出', 2030, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:collect:export', '#', 'admin', '2021-03-05 18:41:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '消耗记录', 2005, 1, 'consume', 'tron/consume/index', 1, 0, 'C', '0', '0', 'tron:consume:list', '#', 'admin', '2021-03-05 18:41:38', '', NULL, '消耗记录菜单');
INSERT INTO `sys_menu` VALUES (2037, '消耗记录查询', 2036, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:consume:query', '#', 'admin', '2021-03-05 18:41:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '消耗记录新增', 2036, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:consume:add', '#', 'admin', '2021-03-05 18:41:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '消耗记录修改', 2036, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:consume:edit', '#', 'admin', '2021-03-05 18:41:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '消耗记录删除', 2036, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:consume:remove', '#', 'admin', '2021-03-05 18:41:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '消耗记录导出', 2036, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:consume:export', '#', 'admin', '2021-03-05 18:41:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '充值记录', 2003, 1, 'recharge', 'tron/recharge/index', 1, 0, 'C', '0', '0', 'tron:recharge:list', '#', 'admin', '2021-03-05 18:41:45', '', NULL, '充值记录菜单');
INSERT INTO `sys_menu` VALUES (2043, '充值记录查询', 2042, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:recharge:query', '#', 'admin', '2021-03-05 18:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '充值记录新增', 2042, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:recharge:add', '#', 'admin', '2021-03-05 18:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '充值记录修改', 2042, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:recharge:edit', '#', 'admin', '2021-03-05 18:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '充值记录删除', 2042, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:recharge:remove', '#', 'admin', '2021-03-05 18:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '充值记录导出', 2042, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:recharge:export', '#', 'admin', '2021-03-05 18:41:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '系统地址', 2000, 1, 'sysaddress', 'tron/sysaddress/index', 1, 0, 'C', '0', '0', 'tron:sysaddress:list', '#', 'admin', '2021-03-05 18:41:51', '', NULL, '系统地址菜单');
INSERT INTO `sys_menu` VALUES (2049, '系统地址查询', 2048, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:sysaddress:query', '#', 'admin', '2021-03-05 18:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '系统地址新增', 2048, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:sysaddress:add', '#', 'admin', '2021-03-05 18:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '系统地址修改', 2048, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:sysaddress:edit', '#', 'admin', '2021-03-05 18:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '系统地址删除', 2048, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:sysaddress:remove', '#', 'admin', '2021-03-05 18:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '系统地址导出', 2048, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:sysaddress:export', '#', 'admin', '2021-03-05 18:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '冻结解冻记录', 2005, 1, 'unfreeze', 'tron/unfreeze/index', 1, 0, 'C', '0', '0', 'tron:unfreeze:list', '#', 'admin', '2021-03-05 18:41:56', '', NULL, '冻结解冻记录菜单');
INSERT INTO `sys_menu` VALUES (2055, '冻结解冻记录查询', 2054, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:unfreeze:query', '#', 'admin', '2021-03-05 18:41:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '冻结解冻记录新增', 2054, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:unfreeze:add', '#', 'admin', '2021-03-05 18:41:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '冻结解冻记录修改', 2054, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:unfreeze:edit', '#', 'admin', '2021-03-05 18:41:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '冻结解冻记录删除', 2054, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:unfreeze:remove', '#', 'admin', '2021-03-05 18:41:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '冻结解冻记录导出', 2054, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:unfreeze:export', '#', 'admin', '2021-03-05 18:41:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '提现记录', 2004, 1, 'withdraw', 'tron/withdraw/index', 1, 0, 'C', '0', '0', 'tron:withdraw:list', '#', 'admin', '2021-03-05 18:42:02', '', NULL, '提现记录菜单');
INSERT INTO `sys_menu` VALUES (2061, '提现记录查询', 2060, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:withdraw:query', '#', 'admin', '2021-03-05 18:42:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '提现记录新增', 2060, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:withdraw:add', '#', 'admin', '2021-03-05 18:42:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '提现记录修改', 2060, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:withdraw:edit', '#', 'admin', '2021-03-05 18:42:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '提现记录删除', 2060, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:withdraw:remove', '#', 'admin', '2021-03-05 18:42:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '提现记录导出', 2060, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:withdraw:export', '#', 'admin', '2021-03-05 18:42:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '区块高度', 2000, 1, 'blockheight', 'tron/blockheight/index', 1, 0, 'C', '0', '0', 'tron:blockheight:list', '#', 'admin', '2021-03-05 18:57:13', '', NULL, '区块高度菜单');
INSERT INTO `sys_menu` VALUES (2067, '区块高度查询', 2066, 1, '#', '', 1, 0, 'F', '0', '0', 'tron:blockheight:query', '#', 'admin', '2021-03-05 18:57:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '区块高度新增', 2066, 2, '#', '', 1, 0, 'F', '0', '0', 'tron:blockheight:add', '#', 'admin', '2021-03-05 18:57:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '区块高度修改', 2066, 3, '#', '', 1, 0, 'F', '0', '0', 'tron:blockheight:edit', '#', 'admin', '2021-03-05 18:57:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '区块高度删除', 2066, 4, '#', '', 1, 0, 'F', '0', '0', 'tron:blockheight:remove', '#', 'admin', '2021-03-05 18:57:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '区块高度导出', 2066, 5, '#', '', 1, 0, 'F', '0', '0', 'tron:blockheight:export', '#', 'admin', '2021-03-05 18:57:13', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-03-05 11:55:14', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-03-05 11:55:14', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tron_address,tron_block,tron_chain_record,tron_coin_type,tron_collect_record,tron_consume_record,tron_recharge_record,tron_system_address,tron_unfreeze_record,tron_withdraw_record', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:26:54');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 15:27:03');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"波场配置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"/pages/tron/config\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:36:30');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"form\",\"orderNum\":\"1\",\"menuName\":\"波场配置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"config\",\"children\":[],\"createTime\":1614929790000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:37:00');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"money\",\"orderNum\":\"1\",\"menuName\":\"币种设置\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"cointype\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:38:04');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"cascader\",\"orderNum\":\"2\",\"menuName\":\"系统地址\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"system\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:39:14');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"cascader\",\"orderNum\":\"2\",\"menuName\":\"系统地址\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1614929954000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:39:26');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"2\",\"menuName\":\"充值管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"recharge\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:41:27');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"upload\",\"orderNum\":\"3\",\"menuName\":\"提现管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"withdraw\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:42:21');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-03-05 15:42:43');
INSERT INTO `sys_oper_log` VALUES (110, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1614916513000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[4],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2021-03-05 15:43:11');
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1614916513000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1056,1058,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:43:19');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:43:24');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"充值管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"recharge\",\"children\":[],\"createTime\":1614930087000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:43:54');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"upload\",\"orderNum\":\"5\",\"menuName\":\"提现管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"withdraw\",\"children\":[],\"createTime\":1614930141000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:44:02');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614929214000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614929214000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"Address\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"地址\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614929214000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"address\"},{\"capJavaField\":\"Activated\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"activated\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"是否已激活，0.未激活，1.已激活\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1)\",\"creat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:49:01');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Block\",\"usableColumn\":false,\"columnId\":8,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"block\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区块高度\",\"isQuery\":\"1\",\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614929214000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"block\"}],\"businessName\":\"block-height\",\"moduleName\":\"tron\",\"className\":\"TronBlock\",\"tableName\":\"tron_block\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.tron\",\"functionName\":\"区块高度\",\"tree\":false,\"tableComment\":\"区块高度记录表\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":2,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:50:01');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/3,4,5,6,7,8,9,10', '127.0.0.1', '内网IP', '{tableIds=3,4,5,6,7,8,9,10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:54:31');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'tron_chain_record,tron_coin_type,tron_collect_record,tron_consume_record,tron_recharge_record,tron_system_address,tron_unfreeze_record,tron_withdraw_record', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:54:44');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":78,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":11,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":79,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型，1.转账，2.带宽，3流量，4.合约\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"Height\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"height\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区块高度\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"height\"},{\"capJavaField\":\"ContractAddr\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"contractAddr\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"合约地址\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:55:22');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":93,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":12,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Symbol\",\"usableColumn\":false,\"columnId\":94,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"symbol\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"代币符号（唯一）\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"symbol\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":95,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型：0.主币,1.TRC10,2.TRC20\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(2)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"IsMaster\",\"usableColumn\":false,\"columnId\":96,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"isMaster\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"是否主币\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1)\",\"creat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:55:57');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":13,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"RechargeId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"rechargeId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"充值记录ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"recharge_id\"},{\"capJavaField\":\"RechargeChainId\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"rechargeChainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"充值链上ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"recharge_chain_id\"},{\"capJavaField\":\"CollectChainId\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"collectChainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"归集ID\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"colum', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 15:56:22');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"exit-fullscreen\",\"orderNum\":\"6\",\"menuName\":\"消耗管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"consume\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:00:13');
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ChainId\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"chainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"链上记录\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"chain_id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消耗地址\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":113,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"目标地址\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:00:31');
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931231000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ChainId\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"chainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"链上记录\",\"isQuery\":\"1\",\"updateTime\":1614931231000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"chain_id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消耗地址\",\"isQuery\":\"1\",\"updateTime\":1614931231000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":113,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"目标地址\",\"isQuery\":\"1\",\"updateTime\":1614931231000,\"sort\":4,\"list\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:00:43');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":119,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":15,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":120,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源地址\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":121,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户平台地址\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"to\"},{\"capJavaField\":\"Amount\",\"usableColumn\":false,\"columnId\":122,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"amount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"金额\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"BigDecimal\",\"queryType\":\"EQ\",\"columnType\":\"decimal(50,20)\",\"createBy\":\"admin\",\"isPk\":\"0', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:01:53');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931243000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ChainId\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"chainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"链上记录\",\"isQuery\":\"1\",\"updateTime\":1614931243000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"chain_id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消耗地址\",\"isQuery\":\"1\",\"updateTime\":1614931243000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":113,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"目标地址\",\"isQuery\":\"1\",\"updateTime\":1614931243000,\"sort\":4,\"list\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:02:05');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":128,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(8)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":16,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Address\",\"usableColumn\":false,\"columnId\":129,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"系统地址\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":16,\"pk\":false,\"columnName\":\"address\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":130,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"地址类型\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":16,\"pk\":false,\"columnName\":\"type\"}],\"businessName\":\"sysaddress\",\"moduleName\":\"tron\",\"className\":\"TronSystemAddress\",\"tableName\":\"tron_system_address\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":2000}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.tron\",\"functionName\":\"系统地址\",\"tree\":false,\"tableComment\":\"系统地址\",\"params\":{\"parentMenuId\":2000},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":16,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:02:57');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":131,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":17,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Address\",\"usableColumn\":false,\"columnId\":132,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"地址\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":17,\"pk\":false,\"columnName\":\"address\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":133,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型：1.带宽，2.能量\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(2)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":17,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"Direct\",\"usableColumn\":false,\"columnId\":134,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"direct\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"方向：0.冻结、1.解冻\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1)\",\"createBy\":\"admin\",\"isPk', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:03:48');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":138,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":18,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":139,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源地址\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":140,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户平台地址\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"to\"},{\"capJavaField\":\"Amount\",\"usableColumn\":false,\"columnId\":141,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"amount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"金额\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"BigDecimal\",\"queryType\":\"EQ\",\"columnType\":\"decimal(50,20)\",\"createBy\":\"admin\",\"isPk\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:04:18');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":138,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931458000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":18,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":139,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源地址\",\"isQuery\":\"1\",\"updateTime\":1614931458000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":140,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户平台地址\",\"isQuery\":\"1\",\"updateTime\":1614931458000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"to\"},{\"capJavaField\":\"Amount\",\"usableColumn\":false,\"columnId\":141,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"amount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"金额\",\"isQuery\":\"1\",\"updateTime\":1614931458000,\"sort\":4,\"list\":true,\"p', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:05:48');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":119,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931313000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":15,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":120,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源地址\",\"isQuery\":\"1\",\"updateTime\":1614931313000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":121,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户平台地址\",\"isQuery\":\"1\",\"updateTime\":1614931313000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"to\"},{\"capJavaField\":\"Amount\",\"usableColumn\":false,\"columnId\":122,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"amount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"金额\",\"isQuery\":\"1\",\"updateTime\":1614931313000,\"sort\":4,\"list\":true,\"pa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:06:24');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931325000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ChainId\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"chainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"链上记录\",\"isQuery\":\"1\",\"updateTime\":1614931325000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"chain_id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消耗地址\",\"isQuery\":\"1\",\"updateTime\":1614931325000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":113,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"目标地址\",\"isQuery\":\"1\",\"updateTime\":1614931325000,\"sort\":4,\"list\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:06:36');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":78,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614930922000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":11,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":79,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型，1.转账，2.带宽，3流量，4.合约\",\"isQuery\":\"1\",\"updateTime\":1614930922000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"Height\",\"usableColumn\":false,\"columnId\":80,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"height\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区块高度\",\"isQuery\":\"1\",\"updateTime\":1614930922000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":11,\"pk\":false,\"columnName\":\"height\"},{\"capJavaField\":\"ContractAddr\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"contractAddr\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"合约地址\",\"isQuery\":\"1\",\"updateTime\":1614930922000,\"sor', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:08:46');
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":93,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614930957000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":12,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Symbol\",\"usableColumn\":false,\"columnId\":94,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"symbol\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"代币符号（唯一）\",\"isQuery\":\"1\",\"updateTime\":1614930957000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"symbol\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":95,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型：0.主币,1.TRC10,2.TRC20\",\"isQuery\":\"1\",\"updateTime\":1614930957000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(2)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":12,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"IsMaster\",\"usableColumn\":false,\"columnId\":96,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"isMaster\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"是否主币\",\"isQuery\":\"1\",\"updateTime\":16149309', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:08:53');
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":100,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614930982000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":13,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"RechargeId\",\"usableColumn\":false,\"columnId\":101,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"rechargeId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"充值记录ID\",\"isQuery\":\"1\",\"updateTime\":1614930982000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"recharge_id\"},{\"capJavaField\":\"RechargeChainId\",\"usableColumn\":false,\"columnId\":102,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"rechargeChainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"充值链上ID\",\"isQuery\":\"1\",\"updateTime\":1614930982000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":13,\"pk\":false,\"columnName\":\"recharge_chain_id\"},{\"capJavaField\":\"CollectChainId\",\"usableColumn\":false,\"columnId\":103,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"collectChainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"归集ID\",\"isQue', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:09:01');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931596000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":14,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ChainId\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"chainId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"链上记录\",\"isQuery\":\"1\",\"updateTime\":1614931596000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"chain_id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"消耗地址\",\"isQuery\":\"1\",\"updateTime\":1614931596000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":14,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":113,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"目标地址\",\"isQuery\":\"1\",\"updateTime\":1614931596000,\"sort\":4,\"list\":tr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:09:09');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":119,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931584000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":15,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":120,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源地址\",\"isQuery\":\"1\",\"updateTime\":1614931584000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":121,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户平台地址\",\"isQuery\":\"1\",\"updateTime\":1614931584000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":15,\"pk\":false,\"columnName\":\"to\"},{\"capJavaField\":\"Amount\",\"usableColumn\":false,\"columnId\":122,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"amount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"金额\",\"isQuery\":\"1\",\"updateTime\":1614931584000,\"sort\":4,\"list\":true,\"p', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:09:17');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":128,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931377000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(8)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":16,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Address\",\"usableColumn\":false,\"columnId\":129,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"系统地址\",\"isQuery\":\"1\",\"updateTime\":1614931377000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":16,\"pk\":false,\"columnName\":\"address\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":130,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"地址类型\",\"isQuery\":\"1\",\"updateTime\":1614931377000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":16,\"pk\":false,\"columnName\":\"type\"}],\"businessName\":\"sysaddress\",\"moduleName\":\"tron\",\"className\":\"TronSystemAddress\",\"tableName\":\"tron_system_address\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.tron\",\"functionName\":\"系统地址\",\"tree\":false,\"tableComment\":\"系统地址\",\"params\":{\"parentMenuId\":\"2000\"},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:09:26');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":131,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931428000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":17,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Address\",\"usableColumn\":false,\"columnId\":132,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"address\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"地址\",\"isQuery\":\"1\",\"updateTime\":1614931428000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":17,\"pk\":false,\"columnName\":\"address\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":133,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型：1.带宽，2.能量\",\"isQuery\":\"1\",\"updateTime\":1614931428000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(2)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":17,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"Direct\",\"usableColumn\":false,\"columnId\":134,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"direct\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"方向：0.冻结、1.解冻\",\"isQuery\":\"1\",\"updateTime\":1614931428000,\"sort\":4,\"li', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:09:39');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":138,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1614931548000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1614930884000,\"tableId\":18,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"From\",\"usableColumn\":false,\"columnId\":139,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"from\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源地址\",\"isQuery\":\"1\",\"updateTime\":1614931548000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"from\"},{\"capJavaField\":\"To\",\"usableColumn\":false,\"columnId\":140,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"to\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户平台地址\",\"isQuery\":\"1\",\"updateTime\":1614931548000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614930884000,\"isEdit\":\"1\",\"tableId\":18,\"pk\":false,\"columnName\":\"to\"},{\"capJavaField\":\"Amount\",\"usableColumn\":false,\"columnId\":141,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"amount\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"金额\",\"isQuery\":\"1\",\"updateTime\":1614931548000,\"sort\":4,\"list\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 16:09:47');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 16:09:53');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 8, 'com.dadsunion.tron.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 18:00:41');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 8, 'com.dadsunion.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 18:16:22');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.dadsunion.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 18:17:30');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 8, 'com.dadsunion.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 18:22:15');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.dadsunion.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"l8oo8l\",\"columns\":[{\"capJavaField\":\"Block\",\"usableColumn\":false,\"columnId\":8,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"block\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区块高度\",\"isQuery\":\"1\",\"updateTime\":1614930601000,\"sort\":1,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1614929214000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"block\"}],\"businessName\":\"blockheight\",\"moduleName\":\"tron\",\"className\":\"TronBlock\",\"tableName\":\"tron_block\",\"crud\":true,\"options\":\"{\\\"parentMenuId\\\":\\\"2000\\\"}\",\"genType\":\"0\",\"packageName\":\"com.dadsunion.tron\",\"functionName\":\"区块高度\",\"tree\":false,\"tableComment\":\"区块高度记录表\",\"params\":{\"parentMenuId\":\"2000\"},\"tplCategory\":\"crud\",\"parentMenuId\":\"2000\",\"tableId\":2,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-05 18:54:35');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.dadsunion.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-03-05 18:54:42');
INSERT INTO `sys_oper_log` VALUES (148, '定时任务', 1, 'com.dadsunion.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"提现任务\",\"concurrent\":\"1\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"0 * * * * ?\",\"jobId\":4,\"createBy\":\"admin\",\"nextValidTime\":1616048880000,\"invokeTarget\":\"withdrawTask.withdraw\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 14:27:07');
INSERT INTO `sys_oper_log` VALUES (149, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"提现任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"* 1/0 * * * ?\",\"jobId\":4,\"createBy\":\"admin\",\"nextValidTime\":1616050860000,\"createTime\":1616048827000,\"updateBy\":\"admin\",\"invokeTarget\":\"withdrawTask.withdraw\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 14:27:30');
INSERT INTO `sys_oper_log` VALUES (150, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 14:27:40');
INSERT INTO `sys_oper_log` VALUES (151, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 14:27:57');
INSERT INTO `sys_oper_log` VALUES (152, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 14:45:49');
INSERT INTO `sys_oper_log` VALUES (153, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:01:01');
INSERT INTO `sys_oper_log` VALUES (154, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:07:14');
INSERT INTO `sys_oper_log` VALUES (155, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:16:27');
INSERT INTO `sys_oper_log` VALUES (156, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:41:02');
INSERT INTO `sys_oper_log` VALUES (157, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:43:00');
INSERT INTO `sys_oper_log` VALUES (158, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:44:33');
INSERT INTO `sys_oper_log` VALUES (159, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:48:31');
INSERT INTO `sys_oper_log` VALUES (160, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 15:54:58');
INSERT INTO `sys_oper_log` VALUES (161, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:01:49');
INSERT INTO `sys_oper_log` VALUES (162, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:08:42');
INSERT INTO `sys_oper_log` VALUES (163, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:12:22');
INSERT INTO `sys_oper_log` VALUES (164, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:14:16');
INSERT INTO `sys_oper_log` VALUES (165, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:19:43');
INSERT INTO `sys_oper_log` VALUES (166, '定时任务', 1, 'com.dadsunion.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"区块扫描任务\",\"concurrent\":\"1\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"3/0 * * * * ?\",\"jobId\":5,\"createBy\":\"admin\",\"nextValidTime\":1616055843000,\"invokeTarget\":\"syncBlockTask.start\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:23:05');
INSERT INTO `sys_oper_log` VALUES (167, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:23:16');
INSERT INTO `sys_oper_log` VALUES (168, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"区块扫描任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"3/0 * * * * ?\",\"jobId\":5,\"createBy\":\"admin\",\"nextValidTime\":1616056023000,\"createTime\":1616055785000,\"updateBy\":\"admin\",\"invokeTarget\":\"syncBlockTask.sync\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:26:39');
INSERT INTO `sys_oper_log` VALUES (169, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:27:49');
INSERT INTO `sys_oper_log` VALUES (170, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:29:24');
INSERT INTO `sys_oper_log` VALUES (171, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"区块扫描任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"0/3 * * * * ?\",\"jobId\":5,\"createBy\":\"admin\",\"nextValidTime\":1616056209000,\"createTime\":1616055785000,\"updateBy\":\"admin\",\"invokeTarget\":\"syncBlockTask.sync\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', 'null', 1, 'Unable to unschedule trigger [DEFAULT.MT_rv99cv4gklcm] while deleting job [SYSTEM.TASK_CLASS_NAME5]', '2021-03-18 16:30:06');
INSERT INTO `sys_oper_log` VALUES (172, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"区块扫描任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"0/3 * * * * ?\",\"jobId\":5,\"createBy\":\"admin\",\"nextValidTime\":1616056212000,\"createTime\":1616055785000,\"updateBy\":\"admin\",\"invokeTarget\":\"syncBlockTask.sync\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:30:09');
INSERT INTO `sys_oper_log` VALUES (173, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:30:52');
INSERT INTO `sys_oper_log` VALUES (174, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:33:23');
INSERT INTO `sys_oper_log` VALUES (175, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:37:40');
INSERT INTO `sys_oper_log` VALUES (176, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:41:52');
INSERT INTO `sys_oper_log` VALUES (177, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:42:54');
INSERT INTO `sys_oper_log` VALUES (178, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:47:48');
INSERT INTO `sys_oper_log` VALUES (179, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:48:32');
INSERT INTO `sys_oper_log` VALUES (180, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:50:57');
INSERT INTO `sys_oper_log` VALUES (181, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"SYSTEM\",\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:53:12');
INSERT INTO `sys_oper_log` VALUES (182, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":5,\"misfirePolicy\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 16:55:02');
INSERT INTO `sys_oper_log` VALUES (183, '定时任务', 2, 'com.dadsunion.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"区块扫描任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"0/1 * * * * ?\",\"jobId\":5,\"createBy\":\"admin\",\"nextValidTime\":1616067170000,\"createTime\":1616055785000,\"updateBy\":\"admin\",\"invokeTarget\":\"syncBlockTask.sync\",\"misfirePolicy\":\"3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-03-18 19:32:49');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-03-05 11:55:13', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-03-05 11:55:13', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-03-05 11:55:13', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-03-05 11:55:13', 'admin', '2021-03-05 15:43:19', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-03-05 11:55:13', 'admin', '2021-03-05 11:55:13', '', NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-03-05 11:55:13', 'admin', '2021-03-05 11:55:13', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tron_address
-- ----------------------------
DROP TABLE IF EXISTS `tron_address`;
CREATE TABLE `tron_address`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `activated` tinyint(1) NOT NULL COMMENT '是否已激活，0.未激活，1.已激活',
  `secretkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '秘钥',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `address`(`address`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钱包地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_address
-- ----------------------------
INSERT INTO `tron_address` VALUES (1, '123123', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', 0, '5b26cf7572a4a4ba0932fcc0bfdcb5787ba4da92e9af87867d7b9d64b50799e0', '2021-03-11 15:42:53', NULL);
INSERT INTO `tron_address` VALUES (2, '123456', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 0, '11b9793d2955ae586e76df974a244f6b73966aa549ea87e326e560103c015e5f', '2021-03-18 16:13:53', NULL);

-- ----------------------------
-- Table structure for tron_block
-- ----------------------------
DROP TABLE IF EXISTS `tron_block`;
CREATE TABLE `tron_block`  (
  `block` bigint(20) NULL DEFAULT NULL COMMENT '区块高度',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '波场区块信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_block
-- ----------------------------
INSERT INTO `tron_block` VALUES (14354444, '2021-03-18 20:21:43');

-- ----------------------------
-- Table structure for tron_chain_record
-- ----------------------------
DROP TABLE IF EXISTS `tron_chain_record`;
CREATE TABLE `tron_chain_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '业务类型：1.充值、2.提现、3.归集',
  `chain_type` tinyint(1) NOT NULL COMMENT '链上类型，1.转账，2.合约',
  `height` bigint(11) NULL DEFAULT NULL COMMENT '区块高度',
  `contract_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合约地址',
  `from_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发送地址',
  `to_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目标地址',
  `symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` bigint(50) NULL DEFAULT NULL COMMENT '金额，没有小数位',
  `bandwidth` bigint(50) NULL DEFAULT NULL COMMENT '消耗带宽',
  `energy` bigint(50) NULL DEFAULT NULL COMMENT '消耗能量',
  `trx_fee` decimal(50, 20) NULL DEFAULT NULL COMMENT '消耗trx',
  `hash` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易hash，链上每笔交易的唯一标识',
  `block_info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '区块信息',
  `state` int(1) NOT NULL COMMENT '状态，1.已发送，2.打包中，3.成功，4，失败',
  `loss_st` int(1) NULL DEFAULT NULL COMMENT '消耗状态：0.未同步，1.已同步',
  `err_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失败信息',
  `related_id` bigint(11) NULL DEFAULT NULL COMMENT '关联ID',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `chain_time` datetime(0) NULL DEFAULT NULL COMMENT '链上记录的时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '波场链上交互信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_chain_record
-- ----------------------------
INSERT INTO `tron_chain_record` VALUES (1, 2, 1, NULL, NULL, '321', '123123', 'trx', 6, NULL, NULL, NULL, NULL, NULL, 4, NULL, '未知异常，invalid input', 1, '用户提币', NULL, '2021-03-18 15:48:38', NULL);
INSERT INTO `tron_chain_record` VALUES (2, 2, 1, NULL, NULL, '321', '123123', 'trx', 6, NULL, NULL, NULL, NULL, NULL, 4, NULL, '未知异常，invalid input', 1, '用户提币', NULL, '2021-03-18 15:55:22', NULL);
INSERT INTO `tron_chain_record` VALUES (3, 2, 1, NULL, NULL, '321', '123123', 'trx', 1000000, NULL, NULL, NULL, NULL, NULL, 4, NULL, '未知异常，invalid input', 2, '用户提币', NULL, '2021-03-18 16:04:10', NULL);
INSERT INTO `tron_chain_record` VALUES (4, 2, 1, NULL, NULL, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', '123123', 'trx', 1000000, NULL, NULL, NULL, NULL, NULL, 4, NULL, '参数异常，invalid input', 3, '用户提币', NULL, '2021-03-18 16:08:47', NULL);
INSERT INTO `tron_chain_record` VALUES (5, 2, 1, NULL, NULL, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', '123123', 'trx', 1000000, NULL, NULL, NULL, NULL, NULL, 4, NULL, '参数异常，invalid input', 4, '用户提币', NULL, '2021-03-18 16:12:38', NULL);
INSERT INTO `tron_chain_record` VALUES (6, 2, 1, NULL, NULL, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 'trx', 1000000, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'contract validate error : Validate TransferContract error, balance is not sufficient.', 5, '用户提币', NULL, '2021-03-18 16:14:51', NULL);
INSERT INTO `tron_chain_record` VALUES (7, 2, 1, 14350471, NULL, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 'trx', 1000000, NULL, NULL, NULL, '667ec621dbb166d5b0e023b281ef1a512fe62e711705745aabecc59af0a36b8e', '{\"blockID\":\"0000000000daf887e54be505514aea7bafd599e45b1199387decef90023975e4\",\"block_header\":{\"raw_data\":{\"number\":14350471,\"txTrieRoot\":\"1c86031c602d0b6219f720c597666e7a07c93cf1bba6aaf5d270d8d5dd70eb6c\",\"witness_address\":\"41435e56262ec59362cd3fe683fed14c060a5930a9\",\"parentHash\":\"0000000000daf886d0cdae09b17df3b92501edd1310510061bb84863ac0c8900\",\"version\":20,\"timestamp\":1616055591000},\"witness_signature\":\"655a2ea1f6830671c28cf95c3379ee9ca1ffc935b534eb1553114fbf8a1449ec1985167018d21c35cabd15acb3205b6f1beb2c87efe41693f58b1d024ef9e9ee00\"},\"transactions\":[{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"20c8771aad7f8dd83f13d6ac2088cbca0573807c78c11857e7c5bd2b137410a01ee49c145e164597261aa8838bd69c42914455d2b2a988263c38d92260551ef901\"],\"txID\":\"f915a04e3c6825374b11015032247e237de204b3afc2b0586f88b71e58f7bf6d\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":4000000,\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"to_address\":\"415364d60ca4f2f23ce61553fdba2f615aa8968236\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f885\",\"ref_block_hash\":\"1d6811bbf2af6367\",\"expiration\":1616055645000,\"timestamp\":1616055587698},\"raw_data_hex\":\"0a02f88522081d6811bbf2af636740c8e6b0a3842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215415364d60ca4f2f23ce61553fdba2f615aa8968236188092f40170f2a6ada3842f\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"1d16f012d2d6207d95137875de7820cf2696c34ed5a2a77d0d3c995f4e68ad52531d6704623cd9954daca24ba95321c747c812932ca39db5aa02f94676b2a60a00\"],\"txID\":\"d3d42e04d2aa6af6530ca99cc5da491972277896cb750ae48822dad3b0a5db50\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"data\":\"a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f4240\",\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"contract_address\":\"414e1c7e7a971741d8543d9906add1f19ad8194b54\"},\"type_url\":\"type.googleapis.com/protocol.TriggerSmartContract\"},\"type\":\"TriggerSmartContract\"}],\"ref_block_bytes\":\"f885\",\"ref_block_hash\":\"1d6811bbf2af6367\",\"expiration\":1616055645000,\"fee_limit\":5000000,\"timestamp\":1616055588295},\"raw_data_hex\":\"0a02f88522081d6811bbf2af636740c8e6b0a3842f5aae01081f12a9010a31747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e54726967676572536d617274436f6e747261637412740a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215414e1c7e7a971741d8543d9906add1f19ad8194b542244a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f424070c7abada3842f9001c096b102\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"5fa5a42ed521a2b6fb7ee4c5bb79adce8e3f828a4619f9ae0d214edb75f4605446d7114acedc412a294ed9b3bf54053cd0814f9bfc347b1c81d9dac9b58c15bb00\"],\"txID\":\"667ec621dbb166d5b0e023b281ef1a512fe62e711705745aabecc59af0a36b8e\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":1000000,\"owner_address\":\"41080f679f03733e13004e99ff336e3d66a6ec33f3\",\"to_address\":\"418d09319377ce616e8b8a057b833f045921200b75\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f886\",\"ref_block_hash\":\"d0cdae09b17df3b9\",\"expiration\":1616091588000,\"fee_limit\":10000000,\"timestamp\":1616055586087},\"raw_data_hex\":\"0a02f8862208d0cdae09b17df3b940a0cbc2b4842f5a67080112630a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412320a1541080f679f03733e13004e99ff336e3d66a6ec33f31215418d09319377ce616e8b8a057b833f045921200b7518c0843d70a79aada3842f900180ade204\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"bf9578724debe14731efdb98deb692763d14cc1e523d50fbea7258d43a1d5ed5581d1597e3f42634b3dab99e514a018683e47d7cf9847345fdf65fa5a36611dd00\"],\"txID\":\"528a09e3a6939ae2bd941225bc206459df0308ca5daff1affd7e3b6f091e09e1\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":4000000,\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"to_address\":\"415364d60ca4f2f23ce61553fdba2f615aa8968236\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f885\",\"ref_block_hash\":\"1d6811bbf2af6367\",\"expiration\":1616055645000,\"timestamp\":1616055588725},\"raw_data_hex\":\"0a02f88522081d6811bbf2af636740c8e6b0a3842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215415364d60ca4f2f23ce61553fdba2f615aa8968236188092f40170f5aeada3842f\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"f1ddee36c4310e52172ec5f1671f8528fefeb3b81040e69a134ad7ae581f172247718bfac9211f40076878ed3c8b6f74e3460939976cb217b84ca7d6e54b284600\"],\"txID\":\"ce50e5095956b8912f0f65a6867e75e14a3b01c3de458af10cb740159e8b2f85\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"data\":\"a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f4240\",\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"contract_address\":\"414e1c7e7a971741d8543d9906add1f19ad8194b54\"},\"type_url\":\"type.googleapis.com/protocol.TriggerSmartContract\"},\"type\":\"TriggerSmartContract\"}],\"ref_block_bytes\":\"f886\",\"ref_block_hash\":\"d0cdae09b17df3b9\",\"expiration\":1616055648000,\"fee_limit\":5000000,\"timestamp\":1616055589334},\"raw_data_hex\":\"0a02f8862208d0cdae09b17df3b94080feb0a3842f5aae01081f12a9010a31747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e54726967676572536d617274436f6e747261637412740a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215414e1c7e7a971741d8543d9906add1f19ad8194b542244a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f424070d6b3ada3842f9001c096b102\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"e28843be64533b6c736c0811f9876335e3ce3aee34787b82bd26504632dffaea0a80380e8fe9d606f7d999500d2bed3a9a139cc03e27c6b0c6f72181bc5b11b001\"],\"txID\":\"ec142af5f753c0dcdae8f860f035176dd00fda4da6e7d2d47bfba489439d09fd\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":4000000,\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"to_address\":\"415364d60ca4f2f23ce61553fdba2f615aa8968236\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f886\",\"ref_block_hash\":\"d0cdae09b17df3b9\",\"expiration\":1616055648000,\"timestamp\":1616055589759},\"raw_data_hex\":\"0a02f8862208d0cdae09b17df3b94080feb0a3842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215415364d60ca4f2f23ce61553fdba2f615aa8968236188092f40170ffb6ada3842f\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"30f25fe5b1b391f55dca395aa023a2614f038ccc56f0747d0fce7a6dbe89635e1584922ca4117cdcd65622e731c488d1708f07ddd3c0691b6fffb80e02bd39b301\"],\"txID\":\"5beb0e071b7df2d3a57f5956339c1a2573e28fc6d5da5fdf50ac81621bc04e25\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"data\":\"a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f4240\",\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"contract_address\":\"414e1c7e7a971741d8543d9906add1f19ad8194b54\"},\"type_url\":\"type.googleapis.com/protocol.TriggerSmartContract\"},\"type\":\"TriggerSmartContract\"}],\"ref_block_bytes\":\"f886\",\"ref_block_hash\":\"d0cdae09b17df3b9\",\"expiration\":1616055648000,\"fee_limit\":5000000,\"timestamp\":1616055590380},\"raw_data_hex\":\"0a02f8862208d0cdae09b17df3b94080feb0a3842f5aae01081f12a9010a31747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e54726967676572536d617274436f6e747261637412740a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215414e1c7e7a971741d8543d9906add1f19ad8194b542244a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f424070ecbbada3842f9001c096b102\"}]}\n', 3, NULL, NULL, 6, '用户提币', NULL, '2021-03-18 16:20:43', '2021-03-18 19:05:12');
INSERT INTO `tron_chain_record` VALUES (8, 2, 1, 14350489, NULL, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 'trx', 1000000, NULL, NULL, NULL, 'e29a7314be1098d8cb8bd693a7be06d1e1321111c016e3eb1d08f61e3b48e577', '{\"blockID\":\"0000000000daf89919f6c8b280e45ae06589e740f74d8ab37f531f121775d14e\",\"block_header\":{\"raw_data\":{\"number\":14350489,\"txTrieRoot\":\"f6aca414e5a5c0dcf6c43f2e14b8717403696138bdcd6c87a9aeba99a6c4fc04\",\"witness_address\":\"4177d23bfda6ae7f75dc5c612f31d6f403493ddc70\",\"parentHash\":\"0000000000daf898b79a156e0092ead4caf4b25b84744fa6888667bf4d658260\",\"version\":20,\"timestamp\":1616055651000},\"witness_signature\":\"2e0e233e46f5d27806a4b2223de8d827c1d8999b49386b8079258054dcb28509046a9ba9a5121180cb1c62d9c9e4d0cfc8af0531cf92a39f17ab390f8e502b2901\"},\"transactions\":[{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"4590fa8f592915b07b757a0a26281f5c922b9a349ce717998423476d21ca08c64d7b33f3691295f2358651301f4ba032c9d877ed8a9a2688cc9227657d16d7b601\"],\"txID\":\"b207e242ea17cda7fc3eec69c22874d336053d459248ee20ae5c3d86ad1509e0\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":4000000,\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"to_address\":\"415364d60ca4f2f23ce61553fdba2f615aa8968236\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f897\",\"ref_block_hash\":\"e3ca9346086fa048\",\"expiration\":1616055705000,\"timestamp\":1616055648076},\"raw_data_hex\":\"0a02f8972208e3ca9346086fa04840a8bbb4a3842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215415364d60ca4f2f23ce61553fdba2f615aa8968236188092f40170ccfeb0a3842f\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"635d525b55ab027d2da96f2f07139294e0072d6d94cfe6bfb5643e93af49ce622b8f4f64edf369e79f824fb4f8f96b16321e2a44c55d5f7089d080ea7fe6e34800\"],\"txID\":\"e29a7314be1098d8cb8bd693a7be06d1e1321111c016e3eb1d08f61e3b48e577\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":1000000,\"owner_address\":\"41080f679f03733e13004e99ff336e3d66a6ec33f3\",\"to_address\":\"418d09319377ce616e8b8a057b833f045921200b75\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f897\",\"ref_block_hash\":\"e3ca9346086fa048\",\"expiration\":1616091645000,\"fee_limit\":10000000,\"timestamp\":1616055645891},\"raw_data_hex\":\"0a02f8972208e3ca9346086fa04840c888c6b4842f5a67080112630a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412320a1541080f679f03733e13004e99ff336e3d66a6ec33f31215418d09319377ce616e8b8a057b833f045921200b7518c0843d70c3edb0a3842f900180ade204\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"d26957fdee3abab11979ebd050b2cffb15d0724271818053800bc7bda329fe3638a593d455ed3436e48eb5a2b5d53527c35596fd58a91f35cd9514400dab286a00\"],\"txID\":\"1383a2aa4802b7f7ea6dd5b29f302eb49ee27b1b16a927019037ebbfee6749aa\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"data\":\"a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f4240\",\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"contract_address\":\"414e1c7e7a971741d8543d9906add1f19ad8194b54\"},\"type_url\":\"type.googleapis.com/protocol.TriggerSmartContract\"},\"type\":\"TriggerSmartContract\"}],\"ref_block_bytes\":\"f897\",\"ref_block_hash\":\"e3ca9346086fa048\",\"expiration\":1616055705000,\"fee_limit\":5000000,\"timestamp\":1616055648093},\"raw_data_hex\":\"0a02f8972208e3ca9346086fa04840a8bbb4a3842f5aae01081f12a9010a31747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e54726967676572536d617274436f6e747261637412740a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215414e1c7e7a971741d8543d9906add1f19ad8194b542244a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f424070ddfeb0a3842f9001c096b102\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"7828c8df9914ad9475829056f1ba7cc3aec1040f9f216bfba413581bfb53c5b453ba6aefa7e883010a3fd86affd3ebe631d08ad3955fab158de0aeec317d489401\"],\"txID\":\"f5bdb0a1e75956a1c747144984578f2d98770fd26074b41732cc53f8b5e596c2\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"data\":\"a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f4240\",\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"contract_address\":\"414e1c7e7a971741d8543d9906add1f19ad8194b54\"},\"type_url\":\"type.googleapis.com/protocol.TriggerSmartContract\"},\"type\":\"TriggerSmartContract\"}],\"ref_block_bytes\":\"f898\",\"ref_block_hash\":\"b79a156e0092ead4\",\"expiration\":1616055708000,\"fee_limit\":5000000,\"timestamp\":1616055649135},\"raw_data_hex\":\"0a02f8982208b79a156e0092ead440e0d2b4a3842f5aae01081f12a9010a31747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e54726967676572536d617274436f6e747261637412740a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215414e1c7e7a971741d8543d9906add1f19ad8194b542244a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f424070ef86b1a3842f9001c096b102\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"af3f4a428228ba94c22258cedc38cdb7cf87857acb5d71c3729b20d8ad702b54132838c4bcaba3acdcc5cf25d2fd325f5de35117f82d866fb2c3647696540b2101\"],\"txID\":\"b6a0c77e16852b897449008ea2573184317a0380a1c0fc250c0bae36da1e086a\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":4000000,\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"to_address\":\"415364d60ca4f2f23ce61553fdba2f615aa8968236\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f898\",\"ref_block_hash\":\"b79a156e0092ead4\",\"expiration\":1616055708000,\"timestamp\":1616055649117},\"raw_data_hex\":\"0a02f8982208b79a156e0092ead440e0d2b4a3842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215415364d60ca4f2f23ce61553fdba2f615aa8968236188092f40170dd86b1a3842f\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"0107dc6d7d4d2b5da5169bd0e9e60c71ad63db414c98fefd5c32866782c1e07f71e27fc4d589b10164fb7ff25aeb07ed1e41a720e1ebd64e1eb58ca336ad431c00\"],\"txID\":\"bc729419a6367c176ab4d9c716ece77532b49c0ee51c7d317213dc08ee488c33\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":4000000,\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"to_address\":\"415364d60ca4f2f23ce61553fdba2f615aa8968236\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"f898\",\"ref_block_hash\":\"b79a156e0092ead4\",\"expiration\":1616055708000,\"timestamp\":1616055650176},\"raw_data_hex\":\"0a02f8982208b79a156e0092ead440e0d2b4a3842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215415364d60ca4f2f23ce61553fdba2f615aa8968236188092f40170808fb1a3842f\"},{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"e9b4ed9d5ad2a4317a0236b217085ca3bcae17c3bb6c8f5b8f8553ec5defebaa4631b762221170f285384b3a11604b280bc226dbd4bd5bfaa50066656b3d323f01\"],\"txID\":\"0fb79a4c3d558a7e7a2885c648ee8a9b18b16b415f13d052d442019fb7ba481f\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"data\":\"a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f4240\",\"owner_address\":\"410601bbf5758abf5033fabf60125b4cb28e7b954a\",\"contract_address\":\"414e1c7e7a971741d8543d9906add1f19ad8194b54\"},\"type_url\":\"type.googleapis.com/protocol.TriggerSmartContract\"},\"type\":\"TriggerSmartContract\"}],\"ref_block_bytes\":\"f898\",\"ref_block_hash\":\"b79a156e0092ead4\",\"expiration\":1616055708000,\"fee_limit\":5000000,\"timestamp\":1616055650185},\"raw_data_hex\":\"0a02f8982208b79a156e0092ead440e0d2b4a3842f5aae01081f12a9010a31747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e54726967676572536d617274436f6e747261637412740a15410601bbf5758abf5033fabf60125b4cb28e7b954a1215414e1c7e7a971741d8543d9906add1f19ad8194b542244a9059cbb0000000000000000000000415364d60ca4f2f23ce61553fdba2f615aa896823600000000000000000000000000000000000000000000000000000000000f424070898fb1a3842f9001c096b102\"}]}\n', 3, NULL, NULL, 7, '用户提币', NULL, '2021-03-18 16:20:49', '2021-03-18 19:13:11');
INSERT INTO `tron_chain_record` VALUES (11, 1, 1, 14354404, NULL, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 'trx', 2220000, NULL, NULL, NULL, '3adf982eefea1acfb789cff68eed11b0752b39ee6f816d2f52ae860a4fc8b21c', '{\"ret\":[{\"contractRet\":\"SUCCESS\"}],\"signature\":[\"470387525c940b342f13d7cbb5faa053c05e6828898bda688d84f5d7d02263a9aecdf87f1824c963d5795af4f9ff599cfa11b883481474c85dde0b475b1abbd500\"],\"txID\":\"3adf982eefea1acfb789cff68eed11b0752b39ee6f816d2f52ae860a4fc8b21c\",\"raw_data\":{\"contract\":[{\"parameter\":{\"value\":{\"amount\":2220000,\"owner_address\":\"41080f679f03733e13004e99ff336e3d66a6ec33f3\",\"to_address\":\"418d09319377ce616e8b8a057b833f045921200b75\"},\"type_url\":\"type.googleapis.com/protocol.TransferContract\"},\"type\":\"TransferContract\"}],\"ref_block_bytes\":\"07e2\",\"ref_block_hash\":\"70dcc7e2f38333e8\",\"expiration\":1616067603000,\"timestamp\":1616067545329},\"raw_data_hex\":\"0a0207e2220870dcc7e2f38333e840b8d48aa9842f5a68080112640a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412330a1541080f679f03733e13004e99ff336e3d66a6ec33f31215418d09319377ce616e8b8a057b833f045921200b7518e0bf870170f19187a9842f\"}', 3, NULL, NULL, 4, '充值', '2021-03-18 19:40:03', '2021-03-18 20:21:10', NULL);

-- ----------------------------
-- Table structure for tron_coin_type
-- ----------------------------
DROP TABLE IF EXISTS `tron_coin_type`;
CREATE TABLE `tron_coin_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代币符号（唯一）',
  `type` int(2) NOT NULL COMMENT '类型：0.主币,1.TRC10,2.TRC20',
  `is_master` tinyint(1) NOT NULL COMMENT '是否主币',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种名称',
  `contract_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合约地址',
  `scale` int(2) NULL DEFAULT NULL COMMENT '小数位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '币种管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_coin_type
-- ----------------------------
INSERT INTO `tron_coin_type` VALUES (1, 'trx', 1, 1, 'TRX', NULL, 6);
INSERT INTO `tron_coin_type` VALUES (2, 'usdj', 3, 0, 'USDJ', 'TLBaRhANQoJFTqre9Nf1mjuwNWjCJeYqUL', NULL);

-- ----------------------------
-- Table structure for tron_collect_record
-- ----------------------------
DROP TABLE IF EXISTS `tron_collect_record`;
CREATE TABLE `tron_collect_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `recharge_id` bigint(11) NOT NULL COMMENT '充值记录ID',
  `recharge_chain_id` bigint(11) NOT NULL COMMENT '充值链上ID',
  `collect_chain_id` bigint(11) NULL DEFAULT NULL COMMENT '归集ID',
  `amount` decimal(50, 20) NULL DEFAULT NULL,
  `symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `from_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源地址，用户平台地址',
  `to_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标地址',
  `state` tinyint(1) NOT NULL COMMENT '状态：0.待归集，1.归集中，2.归集完成，3.归集失败',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '归集记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_collect_record
-- ----------------------------
INSERT INTO `tron_collect_record` VALUES (1, 4, 11, NULL, 2.22000000000000000000, 'trx', 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'TE6ycCfv9b8ovuxRCmpQzYjbzsnfPYS6e9', 0, '2021-03-18 20:21:18', NULL);

-- ----------------------------
-- Table structure for tron_consume_record
-- ----------------------------
DROP TABLE IF EXISTS `tron_consume_record`;
CREATE TABLE `tron_consume_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `chain_id` bigint(11) NOT NULL COMMENT '链上记录',
  `from` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消耗地址',
  `to` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目标地址',
  `type` int(2) NOT NULL COMMENT '类型：1.激活，2.获取带宽，3.获取能量',
  `state` int(2) NOT NULL COMMENT '状态：0.待处理，1.处理中，2.处理完成',
  `count` decimal(50, 20) NULL DEFAULT NULL COMMENT '消耗数量',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消耗记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tron_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `tron_recharge_record`;
CREATE TABLE `tron_recharge_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `from_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来源地址',
  `to_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户平台地址',
  `amount` decimal(50, 20) NOT NULL COMMENT '金额',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0.待归集，1.已归集',
  `notify_st` tinyint(1) NULL DEFAULT 0 COMMENT '回调状态：0.未回调，1.已回调',
  `symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种符号',
  `chain_id` bigint(20) NULL DEFAULT NULL COMMENT '链上关联ID',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_recharge_record
-- ----------------------------
INSERT INTO `tron_recharge_record` VALUES (4, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 2.22000000000000000000, 0, 0, 'trx', 11, '2021-03-18 20:21:10', '2021-03-18 20:21:10');

-- ----------------------------
-- Table structure for tron_system_address
-- ----------------------------
DROP TABLE IF EXISTS `tron_system_address`;
CREATE TABLE `tron_system_address`  (
  `id` int(8) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统地址',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址类型',
  `private_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钱包秘钥',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_system_address
-- ----------------------------
INSERT INTO `tron_system_address` VALUES (1, 'TE6ycCfv9b8ovuxRCmpQzYjbzsnfPYS6e9', 'cold', 'e24035f63918d5878cb8629e5a2666798a3912e19e09e79162fe0cb2ead40b43');
INSERT INTO `tron_system_address` VALUES (2, 'TAhprwEQ5cWMmpY1M7PgvmXUjyLorHojX8', 'withdraw', '7df3a45fa4f24a61c0d0e3bc3e21ebef39fbcce70a016d1b3c6785529559797e');
INSERT INTO `tron_system_address` VALUES (3, 'TGBifXQE1AascsPhS3eomU3jVeiDaWHBR6', 'consume', '977b75872be4ff229b2c707aa35be91e8613ae4a69ce35885780217fbd15a613');

-- ----------------------------
-- Table structure for tron_unfreeze_record
-- ----------------------------
DROP TABLE IF EXISTS `tron_unfreeze_record`;
CREATE TABLE `tron_unfreeze_record`  (
  `id` bigint(11) NOT NULL,
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `type` int(2) NULL DEFAULT NULL COMMENT '类型：1.带宽，2.能量',
  `direct` tinyint(1) NOT NULL COMMENT '方向：0.冻结、1.解冻',
  `state` int(2) NOT NULL COMMENT '状态：0.待处理，1.处理中，2.处理完毕',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '冻结解冻记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tron_withdraw_record
-- ----------------------------
DROP TABLE IF EXISTS `tron_withdraw_record`;
CREATE TABLE `tron_withdraw_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `request_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提现编号：发起提现的唯一标识',
  `symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '币种符号',
  `from_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来源地址',
  `to_addr` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户平台地址',
  `chain_id` bigint(11) NULL DEFAULT NULL COMMENT '链上交互ID',
  `amount` decimal(50, 20) NOT NULL COMMENT '金额',
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，0.待发起，1.处理中，2.成功，3.失败',
  `err_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '错误信息',
  `notify_st` tinyint(1) NULL DEFAULT 0 COMMENT '回调状态，0.未回调，1.回调成功，2.回调失败',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `request_no`(`request_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '提现记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tron_withdraw_record
-- ----------------------------
INSERT INTO `tron_withdraw_record` VALUES (1, '123123', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', '123123', NULL, 1.00000000000000000000, 3, '请求异常，请检查参数', 0, '2021-03-18 12:21:49', '2021-03-18 15:55:18');
INSERT INTO `tron_withdraw_record` VALUES (2, '1616054489', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', '123123', NULL, 1.00000000000000000000, 3, '请求异常，请检查参数', 0, '2021-03-18 16:01:29', '2021-03-18 16:01:50');
INSERT INTO `tron_withdraw_record` VALUES (3, '1616054878', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', '123123', NULL, 1.00000000000000000000, 3, '请求异常，请检查参数', 0, '2021-03-18 16:07:58', '2021-03-18 16:08:43');
INSERT INTO `tron_withdraw_record` VALUES (4, '1616055153', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', '123123', 5, 1.00000000000000000000, 3, '请求异常，请检查参数', 0, '2021-03-18 16:12:32', '2021-03-18 16:12:39');
INSERT INTO `tron_withdraw_record` VALUES (5, '1616055250', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 6, 1.00000000000000000000, 1, NULL, 0, '2021-03-18 16:14:09', '2021-03-18 16:14:51');
INSERT INTO `tron_withdraw_record` VALUES (6, '1616055554', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 7, 1.00000000000000000000, 2, NULL, 0, '2021-03-18 16:19:14', '2021-03-18 19:05:21');
INSERT INTO `tron_withdraw_record` VALUES (7, '1616055571', 'trx', 'TUJE9Djz4LmK2tDt3uimXkB5YknY47hKg2', 'TNpwHtn7JDmvA49dCPBqJFbscZPt97cSH2', 8, 1.00000000000000000000, 2, NULL, 0, '2021-03-18 16:19:31', '2021-03-18 19:13:11');

SET FOREIGN_KEY_CHECKS = 1;
