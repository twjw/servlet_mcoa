-- ----------------------------
-- Table structure for adm_department
-- ----------------------------
DROP TABLE IF EXISTS `adm_department`;
CREATE TABLE `adm_department`  (
                                   `department_id` bigint(20) NOT NULL AUTO_INCREMENT,
                                   `department_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                   PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adm_department
-- ----------------------------
INSERT INTO `adm_department` VALUES (1, '總裁辦');
INSERT INTO `adm_department` VALUES (2, '研發部');
INSERT INTO `adm_department` VALUES (3, '市集部');

-- ----------------------------
-- Table structure for adm_employee
-- ----------------------------
DROP TABLE IF EXISTS `adm_employee`;
CREATE TABLE `adm_employee`  (
                                 `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                 `department_id` bigint(20) NOT NULL,
                                 `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                 `level` int(255) NOT NULL,
                                 PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of adm_employee
-- ----------------------------
INSERT INTO `adm_employee` VALUES (1, '張曉濤', 1, '總經理', 8);
INSERT INTO `adm_employee` VALUES (2, '齊紫陌', 2, '部門經理', 7);
INSERT INTO `adm_employee` VALUES (3, '王美美', 2, '資深研發工程師', 6);
INSERT INTO `adm_employee` VALUES (4, '宋彩妮', 2, '研發工程師', 5);
INSERT INTO `adm_employee` VALUES (5, '歐陽峰', 2, '初級研發工程師', 4);
INSERT INTO `adm_employee` VALUES (6, '張世豪', 3, '部門經理', 7);
INSERT INTO `adm_employee` VALUES (7, '王子豪', 3, '大客戶經理', 6);
INSERT INTO `adm_employee` VALUES (8, '段峰', 3, '客戶經理', 5);
INSERT INTO `adm_employee` VALUES (9, '章雪峰', 3, '客戶經理', 4);
INSERT INTO `adm_employee` VALUES (10, '李莉', 3, '見習客戶經理', 3);
