/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : api

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 15/10/2023 22:32:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (6, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\User', 1, 'admin@23cm.cn', '727c0f3f5f69391ce2e1d0fce23127e64c4c203030de9ac1f5a590eec1040165', '[\"*\"]', NULL, NULL, '2023-10-14 03:23:37', '2023-10-14 03:23:37');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\User', 1, 'admin@23cm.cn', 'cd22a361234c0c456286bf3dcdea112468f772d2f9d7c80c9ba0266c867b0ff9', '[\"*\"]', NULL, NULL, '2023-10-14 03:23:33', '2023-10-14 03:23:33');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\User', 1, 'admin@23cm.cn', 'b7ba3d9df089aed410c335c31b1d1ee2bce20b26f9dd1d7551bd68fc6fa53e07', '[\"*\"]', NULL, NULL, '2023-10-14 03:23:15', '2023-10-14 03:23:15');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\User', 1, 'admin@23cm.cn', 'dfd0dd376e4630e2195f1c2b0575e1b05a6ec6cecbe5b53c2835ae8c392605d7', '[\"*\"]', NULL, NULL, '2023-10-14 03:22:55', '2023-10-14 03:22:55');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\User', 1, 'admin@23cm.cn', '5d61c831b7c873133a333ebd07eaba02159988cbb3e984eb061beae31fb2b212', '[\"*\"]', NULL, NULL, '2023-10-14 03:22:27', '2023-10-14 03:22:27');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 1, 'admin@23cm.cn', '34624a161cc4a2c1f083b8c2209e5e27ab2b7c1ea7f4eb6acceeb580124d5250', '[\"*\"]', NULL, NULL, '2023-10-14 03:10:41', '2023-10-14 03:10:41');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 1, 'admin@23cm.cn', '7ff992116fc6b91d1020af740e0c1db42495ffb29323f59e6752aac3a22d0303', '[\"*\"]', NULL, NULL, '2023-10-14 03:09:38', '2023-10-14 03:09:38');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 1, 'admin@23cm.cn', '4deb80bec462849365280335dd38b92a6960c6b5b04edc682ad569b6d34889cf', '[\"*\"]', NULL, NULL, '2023-10-14 02:54:51', '2023-10-14 02:54:51');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\User', 1, 'admin@23cm.cn', '75f84443198db68ebaaab70018dd5ddaf2c886909b9ba0740be31aaf54f6bba8', '[\"*\"]', NULL, NULL, '2023-10-14 03:23:55', '2023-10-14 03:23:55');
INSERT INTO `personal_access_tokens` VALUES (18, 'App\\Models\\User', 1, 'admin@23cm.cn', '1f101661d4093f4543239e2fdef92284c6bc1d7b3fc2209f8a63d710826f9a5b', '[\"*\"]', NULL, NULL, '2023-10-14 03:45:00', '2023-10-14 03:45:00');
INSERT INTO `personal_access_tokens` VALUES (19, 'App\\Models\\User', 1, 'admin@23cm.cn', '434f15930c8d96e668ec535b94716064646f8d6ecf64162c7e7c65aa005a7331', '[\"*\"]', NULL, NULL, '2023-10-14 03:56:05', '2023-10-14 03:56:05');
INSERT INTO `personal_access_tokens` VALUES (20, 'App\\Models\\User', 1, 'admin@23cm.cn', '9842246f7c67203d74f8df0444da8178329085e3cc227d4640fab10f92019d23', '[\"*\"]', NULL, NULL, '2023-10-14 03:56:27', '2023-10-14 03:56:27');
INSERT INTO `personal_access_tokens` VALUES (21, 'App\\Models\\User', 1, 'admin@23cm.cn', '7d665037e00231c46cbe02e348ae63e8793b2e7a7631f32ee1f032d446d21fd8', '[\"*\"]', NULL, NULL, '2023-10-14 13:53:38', '2023-10-14 13:53:38');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\User', 1, 'admin@23cm.cn', '11f0728d900b7d40db2085fcca109f3eeaeb4d50d5b3f261472e03dc5cec6871', '[\"*\"]', NULL, NULL, '2023-10-14 13:54:40', '2023-10-14 13:54:40');
INSERT INTO `personal_access_tokens` VALUES (23, 'App\\Models\\User', 1, 'admin@23cm.cn', 'd2b7c9a086100a1a2d9803c792e5bca395ae8824f9d59d2a405202d4aeaa0431', '[\"*\"]', NULL, NULL, '2023-10-14 13:55:19', '2023-10-14 13:55:19');
INSERT INTO `personal_access_tokens` VALUES (24, 'App\\Models\\User', 1, 'admin@23cm.cn', '4af944f035d05561824383e3b375b086c4b9f869eb309ca4fb6b7e7dc5369ebc', '[\"*\"]', NULL, NULL, '2023-10-14 13:55:47', '2023-10-14 13:55:47');
INSERT INTO `personal_access_tokens` VALUES (25, 'App\\Models\\User', 1, 'admin@23cm.cn', '135af5634e8604594138e025d022c349ac171f392c17154a88514b1760f189ab', '[\"*\"]', NULL, NULL, '2023-10-14 13:59:47', '2023-10-14 13:59:47');
INSERT INTO `personal_access_tokens` VALUES (26, 'App\\Models\\User', 1, 'admin@23cm.cn', '03771cbcba8769b798b3606119966e028ecd91c86fb735f629d595c397ac138f', '[\"*\"]', NULL, NULL, '2023-10-14 14:00:54', '2023-10-14 14:00:54');
INSERT INTO `personal_access_tokens` VALUES (27, 'App\\Models\\User', 1, 'admin@23cm.cn', '2fad3ceefd66235bf567c69a64c49eef3652ceea070ac95c0dbfa4cb78962fc5', '[\"*\"]', NULL, NULL, '2023-10-14 14:01:48', '2023-10-14 14:01:48');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 1, 'admin@23cm.cn', 'b059d5f5057c24602cfc24b48bf9fd1b1ce424bb14ee7c49b29ca8a348537988', '[\"*\"]', NULL, NULL, '2023-10-14 14:02:11', '2023-10-14 14:02:11');
INSERT INTO `personal_access_tokens` VALUES (29, 'App\\Models\\User', 1, 'admin@23cm.cn', '5cffe89e6ba7c045675de38b2d1ea16be19303e63cf196d300212216a6a5c7e9', '[\"*\"]', NULL, NULL, '2023-10-14 14:02:42', '2023-10-14 14:02:42');
INSERT INTO `personal_access_tokens` VALUES (30, 'App\\Models\\User', 1, 'admin@23cm.cn', 'cf66985a9fb30ac937121110ffe1d78a82f011f7e4b1fab9a4fb6fa9acc974c5', '[\"*\"]', NULL, NULL, '2023-10-14 14:07:57', '2023-10-14 14:07:57');
INSERT INTO `personal_access_tokens` VALUES (31, 'App\\Models\\User', 1, 'admin@23cm.cn', '9e75029fe8aeabe79d660717822dbfb8d960774e790e714fb402ce9dbc8e31f0', '[\"*\"]', NULL, NULL, '2023-10-14 14:13:54', '2023-10-14 14:13:54');
INSERT INTO `personal_access_tokens` VALUES (32, 'App\\Models\\User', 1, 'admin@23cm.cn', '80542e353a5953985b2a94a4117313d90daa0ba2add31b1a9e3dea2c8846bc33', '[\"*\"]', NULL, NULL, '2023-10-14 14:14:22', '2023-10-14 14:14:22');
INSERT INTO `personal_access_tokens` VALUES (33, 'App\\Models\\User', 1, 'admin@23cm.cn', 'cd17417702a96ed2f039df1a2fb28a491038b3c1bb4a7f92da333a3975886be5', '[\"*\"]', NULL, NULL, '2023-10-14 14:17:47', '2023-10-14 14:17:47');
INSERT INTO `personal_access_tokens` VALUES (34, 'App\\Models\\User', 1, 'admin@23cm.cn', '8412061e007ba1be2aa53d3c5a2a197e68d291c5163438fcb265fef191f9c29f', '[\"*\"]', NULL, NULL, '2023-10-14 14:19:59', '2023-10-14 14:19:59');
INSERT INTO `personal_access_tokens` VALUES (35, 'App\\Models\\User', 1, 'admin@23cm.cn', 'b21b66b66e1efc3f54629eb3b01a1175b8bae31878c84c1ba7ff6e02ae7ac9b2', '[\"*\"]', NULL, NULL, '2023-10-14 14:21:15', '2023-10-14 14:21:15');
INSERT INTO `personal_access_tokens` VALUES (36, 'App\\Models\\User', 1, 'admin@23cm.cn', '2b9c2eda999a5354ee7de20992d194e5a9f58866c11e72da8848c1fcff939198', '[\"*\"]', NULL, NULL, '2023-10-14 14:27:56', '2023-10-14 14:27:56');
INSERT INTO `personal_access_tokens` VALUES (37, 'App\\Models\\User', 1, 'admin@23cm.cn', 'eaca65fa851598ab172c379973ab311560ea3562508e4bbb8102a73b96a4b0af', '[\"*\"]', NULL, NULL, '2023-10-14 15:21:40', '2023-10-14 15:21:40');
INSERT INTO `personal_access_tokens` VALUES (38, 'App\\Models\\User', 1, 'admin@23cm.cn', '4b9df3ef49de7297cc15c717770a3cdaa834806aadfb3174e84edd74da385b9f', '[\"*\"]', NULL, NULL, '2023-10-14 15:23:14', '2023-10-14 15:23:14');
INSERT INTO `personal_access_tokens` VALUES (39, 'App\\Models\\User', 1, 'admin@23cm.cn', '35ee715965243255ae264a1392c80055d1389f45c23e85c46e80b605118b30c8', '[\"*\"]', NULL, NULL, '2023-10-14 15:23:37', '2023-10-14 15:23:37');
INSERT INTO `personal_access_tokens` VALUES (40, 'App\\Models\\User', 1, 'admin@23cm.cn', '4010f473296498731d634acf0dd2e0ba6f74e3618c92415f43c6d53fcf0bdfd5', '[\"*\"]', NULL, NULL, '2023-10-14 15:26:06', '2023-10-14 15:26:06');
INSERT INTO `personal_access_tokens` VALUES (41, 'App\\Models\\User', 1, 'admin@23cm.cn', 'd9e40d3703f343bc8a95c05aa11a2d9e251ea1dd457cf0cd1c8862a853c55008', '[\"*\"]', NULL, NULL, '2023-10-14 15:26:16', '2023-10-14 15:26:16');
INSERT INTO `personal_access_tokens` VALUES (42, 'App\\Models\\User', 1, 'admin@23cm.cn', 'c2b9483da4f4a52fa75085b7725079cae78c3810e3d53b41205f39ca0d58ad2f', '[\"*\"]', NULL, NULL, '2023-10-14 15:26:41', '2023-10-14 15:26:41');
INSERT INTO `personal_access_tokens` VALUES (43, 'App\\Models\\User', 1, 'admin@23cm.cn', '938ea93cec535715c8e5662da24fccadd44719b9c21117469d728c79d2f1356b', '[\"*\"]', NULL, NULL, '2023-10-14 15:26:58', '2023-10-14 15:26:58');
INSERT INTO `personal_access_tokens` VALUES (44, 'App\\Models\\User', 1, 'admin@23cm.cn', '8b3a34921b83c7c427eb0a473035b24051c3ff99890d40778ee04d663132748b', '[\"*\"]', NULL, NULL, '2023-10-14 15:27:53', '2023-10-14 15:27:53');
INSERT INTO `personal_access_tokens` VALUES (45, 'App\\Models\\User', 1, 'admin@23cm.cn', 'aca115c834300573408dcdfbb347bd50e9a26239013d8ed2d767db0f7249d48a', '[\"*\"]', NULL, NULL, '2023-10-14 15:29:11', '2023-10-14 15:29:11');
INSERT INTO `personal_access_tokens` VALUES (46, 'App\\Models\\User', 1, 'admin@23cm.cn', '92bb002a755d65d64e15ea1fba4e2b792f7f0f3dc0b838917f0fa324e760e40c', '[\"*\"]', NULL, NULL, '2023-10-14 15:29:42', '2023-10-14 15:29:42');
INSERT INTO `personal_access_tokens` VALUES (47, 'App\\Models\\User', 1, 'admin@23cm.cn', '10573afaf6128c8a2f7ae4fbddbc2f8fa15338c577ac7a1f16d34a861ec8d6cc', '[\"*\"]', NULL, NULL, '2023-10-14 15:30:05', '2023-10-14 15:30:05');
INSERT INTO `personal_access_tokens` VALUES (48, 'App\\Models\\User', 1, 'admin@23cm.cn', 'a283d8d90c43bfeef77ea54b3133742284e5d66c862e272dde12c2894b893317', '[\"*\"]', NULL, NULL, '2023-10-15 02:06:17', '2023-10-15 02:06:17');
INSERT INTO `personal_access_tokens` VALUES (49, 'App\\Models\\User', 1, 'admin@23cm.cn', '2c146fe5c04b9b2c253af153b41f55353ab94f6070e3ae437c4aa585e14951ec', '[\"*\"]', NULL, NULL, '2023-10-15 02:11:44', '2023-10-15 02:11:44');
INSERT INTO `personal_access_tokens` VALUES (50, 'App\\Models\\User', 1, 'admin@23cm.cn', '211a15b73166be86a3054034ef4f0f8d41629c1d07cf35f52ef18821728281f1', '[\"*\"]', NULL, NULL, '2023-10-15 02:19:24', '2023-10-15 02:19:24');
INSERT INTO `personal_access_tokens` VALUES (51, 'App\\Models\\User', 1, 'admin@23cm.cn', '83e8335ad519a9216da7bd3dd84547b288f2fbf1e309a42d73e0b644a072b557', '[\"*\"]', NULL, NULL, '2023-10-15 02:23:19', '2023-10-15 02:23:19');
INSERT INTO `personal_access_tokens` VALUES (52, 'App\\Models\\User', 1, 'admin@23cm.cn', '277e8f0a32481104acd6014a0d2b61e8712b71a2d2d0cf60918ae583fc2b6043', '[\"*\"]', NULL, NULL, '2023-10-15 02:26:48', '2023-10-15 02:26:48');
INSERT INTO `personal_access_tokens` VALUES (53, 'App\\Models\\User', 1, 'admin@23cm.cn', '52b042afa0aa85b1bb2d9a4e3750074e4c5741b4ff9a3c13327daa0551ded95d', '[\"*\"]', NULL, NULL, '2023-10-15 02:27:44', '2023-10-15 02:27:44');
INSERT INTO `personal_access_tokens` VALUES (54, 'App\\Models\\User', 1, 'admin@23cm.cn', '5b6f0b7347395a54bd559a5c253c957e4fb4eefd35bf1423926c17ed67bdb699', '[\"*\"]', NULL, NULL, '2023-10-15 02:35:47', '2023-10-15 02:35:47');
INSERT INTO `personal_access_tokens` VALUES (55, 'App\\Models\\User', 1, 'admin@23cm.cn', 'da0797281ad3d3d0e538194ee9586a4018ba5261699616f7c10e7e43340f6f03', '[\"*\"]', NULL, NULL, '2023-10-15 02:40:02', '2023-10-15 02:40:02');
INSERT INTO `personal_access_tokens` VALUES (56, 'App\\Models\\User', 1, 'admin@23cm.cn', '1a03897452e8e4797d96ed3a08204ffc2abed6a27e8c54b59ff1e01ab7db27b3', '[\"*\"]', NULL, NULL, '2023-10-15 06:18:13', '2023-10-15 06:18:13');
INSERT INTO `personal_access_tokens` VALUES (57, 'App\\Models\\User', 1, 'admin@23cm.cn', '676fe4dd573148bd3ccf04020e5f448f7b21952585c2bd6b96cdd7542b1f2dde', '[\"*\"]', NULL, NULL, '2023-10-15 06:25:20', '2023-10-15 06:25:20');
INSERT INTO `personal_access_tokens` VALUES (58, 'App\\Models\\User', 1, 'admin@23cm.cn', 'f968b64fad42fec8b2ed5abbb29d369e35076cf8caa487a6cb408e2887a51b1e', '[\"*\"]', NULL, NULL, '2023-10-15 07:36:04', '2023-10-15 07:36:04');
INSERT INTO `personal_access_tokens` VALUES (59, 'App\\Models\\User', 1, 'admin@23cm.cn', '666a4e27933334bc8b3692f199c5ba4e6c22b85e1e16aac010fa0798423222ef', '[\"*\"]', NULL, NULL, '2023-10-15 07:36:26', '2023-10-15 07:36:26');
INSERT INTO `personal_access_tokens` VALUES (60, 'App\\Models\\User', 1, 'admin@23cm.cn', 'bba0a403bc83d3453201ecea2e95f8e4545a5e6ace0562e79b0f680e07971526', '[\"*\"]', NULL, NULL, '2023-10-15 07:39:30', '2023-10-15 07:39:30');
INSERT INTO `personal_access_tokens` VALUES (61, 'App\\Models\\User', 1, 'admin@23cm.cn', 'cd9c082c733de1c49fd45765ad8b9a05fb538fe06060d5647a34a8820cb7b75c', '[\"*\"]', NULL, NULL, '2023-10-15 08:30:00', '2023-10-15 08:30:00');
INSERT INTO `personal_access_tokens` VALUES (62, 'App\\Models\\User', 1, 'admin@23cm.cn', 'e3d1522923a4d10c9013fe744b5341e4ba75d65b7915ec2aba94c745896dd12d', '[\"*\"]', NULL, NULL, '2023-10-15 08:31:22', '2023-10-15 08:31:22');
INSERT INTO `personal_access_tokens` VALUES (63, 'App\\Models\\User', 1, 'admin@23cm.cn', '53cc7bc95f5e5f418d5fad6c58a3be94e4b7f0c46b2b98750ca0683e97ec4f6f', '[\"*\"]', NULL, NULL, '2023-10-15 13:44:48', '2023-10-15 13:44:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'https://himg.bdimg.com/sys/portraitn/item/public.1.a74a6ba3.4oIZIrLuTb2PPuIVIAfn6A', 'admin@23cm.cn', NULL, '', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
