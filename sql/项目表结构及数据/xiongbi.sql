/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : xiongbi

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 15/07/2024 15:54:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chart
-- ----------------------------
DROP TABLE IF EXISTS `chart`;
CREATE TABLE `chart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图表名称',
  `goal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '分析目标',
  `chartData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图表数据',
  `chartType` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图表类型',
  `genChart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '生成的图表数据',
  `genResult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '生成的分析结论',
  `userId` bigint NULL DEFAULT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wait' COMMENT 'wait,running,succeed,failed',
  `execMessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '执行信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1812753597031944195 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '图表信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chart
-- ----------------------------
INSERT INTO `chart` VALUES (1810230110627217409, '测试', '我想分析xxx', '[{\"月份\": 6}]', '柱状图', NULL, NULL, 1810223528833114114, '2024-07-08 16:31:05', '2024-07-14 22:19:09', 1, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812397314051338241, '用户增长表', '详细分析用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"toolbox\": {\n    \"feature\": {\n      \"saveAsImage\": {}\n    }\n  },\n  \"grid\": {\n    \"left\": \"3%\",\n    \"right\": \"4%\",\n    \"bottom\": \"3%\",\n    \"containLabel\": true\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"boundaryGap\": false,\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"line\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20],\n      \"markPoint\": {\n        \"data\": [\n          { \"type\": \"max\", \"name\": \"最大值\" },\n          { \"type\": \"min\", \"name\": \"最小值\" }\n        ]\n      },\n      \"markLine\": {\n        \"data\": [\n          { \"type\": \"average\", \"name\": \"平均值\" }\n        ]\n      }\n    }\n  ]\n}', '根据所提供的数据分析，以下是一些明确的结论：\n- 用户数在1号至3号期间保持稳定的增长，从10人增加到30人。\n- 在4号时，用户数有一个显著的跳跃，增加到90人，这可能是由于某些推广活动或者特殊事件的影响。\n- 5号用户数突然下降到0，这需要进一步的调查来确定原因，可能是数据收集的误差或者实际的用户流失。\n- 6号和7号用户数恢复到10人和20人，表明可能存在某种程度的用户回升策略或者自然回弹。\n- 整体来看，除了5号异常值外，用户数呈现增长趋势，但增长率波动较大。\n- 平均用户数为30人，表明在所提供的数据范围内，平均每天有30个用户。', 1810223528833114114, '2024-07-14 16:02:47', '2024-07-14 22:19:09', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812405696120418305, '用户增长表', '详细分析用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"grid\": {\n    \"left\": \"3%\",\n    \"right\": \"4%\",\n    \"bottom\": \"3%\",\n    \"containLabel\": true\n  },\n  \"toolbox\": {\n    \"feature\": {\n      \"saveAsImage\": {}\n    }\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"boundaryGap\": false,\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"line\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20],\n      \"markPoint\": {\n        \"data\": [\n          { \"type\": \"max\", \"name\": \"最大值\" },\n          { \"type\": \"min\", \"name\": \"最小值\" }\n        ]\n      },\n      \"markLine\": {\n        \"data\": [\n          { \"type\": \"average\", \"name\": \"平均值\" }\n        ]\n      }\n    }\n  ]\n}', '根据所提供的数据，我们可以得出以下结论：\n\n- 用户数在1号到4号期间呈现出快速增长的趋势，特别是在4号达到了峰值，用户数为90。\n- 然而，在5号用户数突然下降到0，这可能是由于数据收集错误或者某种特殊事件导致的。\n- 从6号开始，用户数又恢复到了较为平稳的增长趋势，但并未达到4号时的峰值。\n- 平均来看，用户数的增长趋势是向上的，尽管5号的数据点可能影响了整体的平均值。\n- 需要进一步分析4号和5号之间发生的事件，以确定用户数激增和骤降的具体原因。', 1810223528833114114, '2024-07-14 16:36:05', '2024-07-14 22:19:09', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812408258085187585, '用户增长表', '详细分析用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"toolbox\": {\n    \"feature\": {\n      \"saveAsImage\": {}\n    }\n  },\n  \"grid\": {\n    \"left\": \"3%\",\n    \"right\": \"4%\",\n    \"bottom\": \"3%\",\n    \"containLabel\": true\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"boundaryGap\": false,\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"line\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20],\n      \"areaStyle\": {}\n    }\n  ]\n}', '根据提供的用户增长数据，我们可以得出以下结论：\n\n- 用户数在1号到4号期间呈现出稳步增长的趋势，其中4号达到峰值，用户数为90。\n- 然而，在5号时，用户数出现了显著下降至0，这可能是由于某种异常情况或数据收集错误。\n- 经过5号的低谷后，6号和7号用户数又恢复到了10和20，表明可能存在某种恢复或回弹的迹象。\n\n需要进一步分析或调查的是：\n- 4号到5号用户数的巨大下降，需要确认是数据错误还是实际情况，并找出背后的原因。\n- 考虑到数据的波动性，可以进一步研究是否存在周期性或事件驱动的影响因素。\n\n请注意，这些结论仅基于提供的数据，并且没有考虑到其他可能的因素或更深入的数据分析。', 1810223528833114114, '2024-07-14 16:46:16', '2024-07-14 22:19:09', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812417864383524866, '用户增长情况表', '详细分析用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '柱状图', '{\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"bar\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20]\n    }\n  ]\n}', '根据提供的数据，我们可以得出以下结论：\n\n- 用户数在1号至4号期间呈现增长趋势，其中4号达到最高点，用户数为90。\n- 从5号开始，用户数急剧下降至0，可能是由于某种异常情况导致。\n- 6号和7号用户数有所回升，但并未恢复到4号的高点。\n\n此外，这种波动可能需要进一步的分析来探究背后的原因，例如市场营销活动、季节性因素或者系统故障等。如果需要更深入的分析，可能需要更多的数据或上下文信息。', 1810223528833114114, '2024-07-14 17:24:26', '2024-07-14 22:19:09', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812418122228363266, '用户增长情况表', '详细分析用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '堆叠图', '{\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"bar\",\n      \"stack\": \"总量\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20]\n    }\n  ]\n}', '根据提供的数据，我们可以得出以下结论：\n\n- 用户数在1号至4号期间呈现增长趋势，特别是在4号达到了峰值，增加了90个用户。\n- 然而，在5号用户数出现了显著下降，减少了所有之前累积的用户，这可能是由于某种异常情况，如数据丢失或系统故障。\n- 从6号开始，用户数又恢复了一定的增长，但增长速度不如之前。\n- 从整体趋势来看，除了5号的数据异常外，用户数总体上呈现出稳步增长的趋势。\n\n需要注意的是，5号的数据异常可能需要进一步的调查来确认原因，以确保数据的准确性。', 1810223528833114114, '2024-07-14 17:25:28', '2024-07-14 22:19:09', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812663707137208321, '用户增长情况表', '详细分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"title\": {\n    \"text\": \"用户增长情况分析\",\n    \"left\": \"center\"\n  },\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\",\n    \"name\": \"用户数\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户增长\",\n      \"type\": \"line\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20]\n    }\n  ]\n}', '根据数据分析，我们可以观察到以下趋势：\n\n- 用户数从1号到3号持续增长，从10增长到30。\n- 在4号时，用户数有一个显著的激增，达到了90，可能是由于某些推广活动或者特殊事件的发生。\n- 然而，在5号时，用户数突然降到了0，这可能是由于数据收集错误或者网站服务中断等原因。\n- 从6号和7号的数据来看，用户数又恢复到了先前的增长趋势，但并未达到4号的峰值。\n\n这表明网站在初期和后期都有稳定的增长，但需要进一步调查5号用户数为0的原因，并关注4号激增的原因以复制成功的推广策略。同时，建议对数据进行更深入的分析，以确认这些趋势背后的具体因素。', 1810223528833114114, '2024-07-15 09:41:20', '2024-07-15 09:42:43', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812665228474183682, '2024年7月15日09:47:01', '详细分析用户增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"grid\": {\n    \"left\": \"3%\",\n    \"right\": \"4%\",\n    \"bottom\": \"3%\",\n    \"containLabel\": true\n  },\n  \"toolbox\": {\n    \"feature\": {\n      \"saveAsImage\": {}\n    }\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"boundaryGap\": false,\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"line\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20],\n      \"areaStyle\": {}\n    }\n  ]\n}', '根据提供的数据分析，我们可以看到以下趋势：\n\n1. 用户数从1号到3号持续增长，从10增加到30。\n2. 在4号时，用户数有一个显著的跳跃，增加到90，这可能是由于某些推广活动或者特殊事件的发生。\n3. 然而，在5号时，用户数突然降为0，这可能是由于数据收集的错误或者某个严重的问题导致用户流失。\n4. 从6号开始，用户数又恢复到10，并保持稳定增长到20。\n\n需要关注的是5号用户数为0的情况，这需要进一步的调查来确定背后的原因。此外，从整体趋势来看，除了5号异常点外，用户数呈现一个增长的趋势，表明策略或产品可能对用户有一定的吸引力。', 1810223528833114114, '2024-07-15 09:47:22', '2024-07-15 09:47:34', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812753121829883905, '2024年7月15日15:36:03', '详细分析网站用户的增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"backgroundColor\": \"#fff\",\n  \"title\": {\n    \"text\": \"网站用户增长情况\",\n    \"left\": \"center\",\n    \"top\": \"top\"\n  },\n  \"tooltip\": {\n    \"trigger\": \"axis\"\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"],\n    \"name\": \"日期\"\n  },\n  \"yAxis\": {\n    \"type\": \"value\",\n    \"name\": \"用户数\"\n  },\n  \"series\": [\n    {\n      \"data\": [10, 20, 30, 90, 0, 10, 20],\n      \"type\": \"line\",\n      \"name\": \"用户数\"\n    }\n  ]\n}', '根据数据分析，我们可以观察到以下情况：\n\n- 用户数在1号至3号期间呈现稳定的增长，从10人增加至30人。\n- 在4号时，用户数有显著的增长，达到了90人，这可能是由于某些推广活动或特殊事件的发生。\n- 然而，在5号时，用户数突然降为0，这需要进一步分析以确定原因，可能是因为数据收集错误或者是网站出现了技术问题。\n- 从6号和7号的数据来看，用户数恢复到了10和20人，但是没有恢复到4号的高峰水平。\n\n这些数据表明，网站用户增长存在波动，需要针对异常数据点进行深入分析，并采取相应的策略来稳定和提升用户数。', 1810223528833114114, '2024-07-15 15:36:38', '2024-07-15 15:36:50', 0, 'succeed', NULL);
INSERT INTO `chart` VALUES (1812753597031944194, '2024年7月15日15:38:17', '详细分析网站用户增长情况', '日期,用户数\n1号,10\n2号,20\n3号,30\n4号,90\n5号,0\n6号,10\n7号,20\n', '折线图', '{\n  \"legend\": {\n    \"data\": [\"用户数\"]\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [\n    {\n      \"name\": \"用户数\",\n      \"type\": \"line\",\n      \"data\": [10, 20, 30, 90, 0, 10, 20]\n    }\n  ]\n}', '根据提供的数据分析，我们可以得出以下结论：\n\n1. 网站用户数在1号至3号期间呈现稳步增长，从10增长到30。\n2. 在4号时，用户数有一个显著的跳跃，从30增长到90，可能是由于某些推广活动或者特殊事件的发生。\n3. 然而，在5号时，用户数急剧下降至0，这可能是数据收集错误或系统故障导致的异常情况，需要进一步调查确认。\n4. 从6号开始，用户数又恢复到之前稳步增长的趋势，从10开始逐步增长到20。\n\n建议针对5号出现的异常数据进行深入分析，以确定其原因，并考虑在4号用户数激增的时期采取的策略是否可以复用，以促进用户持续增长。', 1810223528833114114, '2024-07-15 15:38:31', '2024-07-15 15:38:41', 0, 'succeed', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userAccount`(`userAccount` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1812330088505978883 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1810223528833114114, 'dingjiaxiong', '36c8e9015dc8fa1a07f91947b602e18b', '丁家雄', 'https://avatars.githubusercontent.com/u/61930795?v=4', 'admin', '2024-07-08 16:04:56', '2024-07-08 16:06:07', 0);
INSERT INTO `user` VALUES (1812330088505978882, 'dingding', '36c8e9015dc8fa1a07f91947b602e18b', NULL, NULL, 'user', '2024-07-14 11:35:39', '2024-07-14 11:35:39', 0);

SET FOREIGN_KEY_CHECKS = 1;
