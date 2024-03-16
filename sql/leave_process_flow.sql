-- ----------------------------
-- Table structure for adm_leave_form
-- ----------------------------
DROP TABLE IF EXISTS `adm_leave_form`;
CREATE TABLE `adm_leave_form`  (
                                   `form_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '請假單編號',
                                   `employee_id` bigint(20) NOT NULL COMMENT '員工編號',
                                   `form_type` int(255) NOT NULL COMMENT '請假類型 1-事假 2-病假 3-工傷假 4-婚假 5-產假 6-喪假',
                                   `start_time` datetime(0) NOT NULL COMMENT '請假起始時間',
                                   `end_time` datetime(0) NOT NULL COMMENT '請假結束時間',
                                   `reason` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '請假事由',
                                   `create_time` datetime(0) NOT NULL COMMENT '創建時間',
                                   `state` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'processing-正在批准 approved-批准已通過 refused-批准被駁回',
                                   PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for adm_process_flow
-- ----------------------------
DROP TABLE IF EXISTS `adm_process_flow`;
CREATE TABLE `adm_process_flow`  (
                                     `process_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '處理工作編號',
                                     `form_id` bigint(20) NOT NULL COMMENT '表單編號',
                                     `operator_id` bigint(20) NOT NULL COMMENT '經辦人編號',
                                     `action` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'apply-申請 audit-審批',
                                     `result` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'approved-同意 refused-駁回',
                                     `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '審批意見',
                                     `create_time` datetime(0) NOT NULL COMMENT '創建時間',
                                     `audit_time` datetime(0) NULL DEFAULT NULL COMMENT '審批時間',
                                     `order_no` int(11) NOT NULL COMMENT '任務序號',
                                     `state` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ready-準備 process-正在處理 complete-處理完成 cancel-取消',
                                     `is_last` int(255) NOT NULL COMMENT '是否最後節點,0-否 1-是',
                                     PRIMARY KEY (`process_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
                               `notice_id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `receiver_id` bigint(20) NOT NULL,
                               `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                               `create_time` datetime(0) NOT NULL,
                               PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
