/*
 Navicat Premium Data Transfer

 Source Server         : railway
 Source Server Type    : PostgreSQL
 Source Server Version : 160000 (160000)
 Source Host           : viaduct.proxy.rlwy.net:25617
 Source Catalog        : windows_practice
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160000 (160000)
 File Encoding         : 65001

 Date: 16/05/2024 14:12:19
*/


-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_advantage_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_advantage_id_seq";
CREATE SEQUENCE "public"."windows_advantage_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_order_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_order_id_seq";
CREATE SEQUENCE "public"."windows_order_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_product_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_product_id_seq";
CREATE SEQUENCE "public"."windows_product_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_productphoto_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_productphoto_id_seq";
CREATE SEQUENCE "public"."windows_productphoto_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_user_groups_id_seq";
CREATE SEQUENCE "public"."windows_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_user_id_seq";
CREATE SEQUENCE "public"."windows_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for windows_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."windows_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."windows_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO "public"."auth_permission" VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO "public"."auth_permission" VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO "public"."auth_permission" VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO "public"."auth_permission" VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO "public"."auth_permission" VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO "public"."auth_permission" VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO "public"."auth_permission" VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO "public"."auth_permission" VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO "public"."auth_permission" VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO "public"."auth_permission" VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO "public"."auth_permission" VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO "public"."auth_permission" VALUES (13, 4, 'add_contenttype', 'Can add content type');
INSERT INTO "public"."auth_permission" VALUES (14, 4, 'change_contenttype', 'Can change content type');
INSERT INTO "public"."auth_permission" VALUES (15, 4, 'delete_contenttype', 'Can delete content type');
INSERT INTO "public"."auth_permission" VALUES (16, 4, 'view_contenttype', 'Can view content type');
INSERT INTO "public"."auth_permission" VALUES (17, 5, 'add_session', 'Can add session');
INSERT INTO "public"."auth_permission" VALUES (18, 5, 'change_session', 'Can change session');
INSERT INTO "public"."auth_permission" VALUES (19, 5, 'delete_session', 'Can delete session');
INSERT INTO "public"."auth_permission" VALUES (20, 5, 'view_session', 'Can view session');
INSERT INTO "public"."auth_permission" VALUES (21, 6, 'add_product', 'Can add product');
INSERT INTO "public"."auth_permission" VALUES (22, 6, 'change_product', 'Can change product');
INSERT INTO "public"."auth_permission" VALUES (23, 6, 'delete_product', 'Can delete product');
INSERT INTO "public"."auth_permission" VALUES (24, 6, 'view_product', 'Can view product');
INSERT INTO "public"."auth_permission" VALUES (25, 7, 'add_user', 'Can add user');
INSERT INTO "public"."auth_permission" VALUES (26, 7, 'change_user', 'Can change user');
INSERT INTO "public"."auth_permission" VALUES (27, 7, 'delete_user', 'Can delete user');
INSERT INTO "public"."auth_permission" VALUES (28, 7, 'view_user', 'Can view user');
INSERT INTO "public"."auth_permission" VALUES (29, 8, 'add_order', 'Can add order');
INSERT INTO "public"."auth_permission" VALUES (30, 8, 'change_order', 'Can change order');
INSERT INTO "public"."auth_permission" VALUES (31, 8, 'delete_order', 'Can delete order');
INSERT INTO "public"."auth_permission" VALUES (32, 8, 'view_order', 'Can view order');
INSERT INTO "public"."auth_permission" VALUES (33, 9, 'add_iteminorder', 'Can add item in order');
INSERT INTO "public"."auth_permission" VALUES (34, 9, 'change_iteminorder', 'Can change item in order');
INSERT INTO "public"."auth_permission" VALUES (35, 9, 'delete_iteminorder', 'Can delete item in order');
INSERT INTO "public"."auth_permission" VALUES (36, 9, 'view_iteminorder', 'Can view item in order');
INSERT INTO "public"."auth_permission" VALUES (37, 10, 'add_characteristic', 'Can add characteristic');
INSERT INTO "public"."auth_permission" VALUES (38, 10, 'change_characteristic', 'Can change characteristic');
INSERT INTO "public"."auth_permission" VALUES (39, 10, 'delete_characteristic', 'Can delete characteristic');
INSERT INTO "public"."auth_permission" VALUES (40, 10, 'view_characteristic', 'Can view characteristic');
INSERT INTO "public"."auth_permission" VALUES (41, 11, 'add_advantage', 'Can add Преимущество');
INSERT INTO "public"."auth_permission" VALUES (42, 11, 'change_advantage', 'Can change Преимущество');
INSERT INTO "public"."auth_permission" VALUES (43, 11, 'delete_advantage', 'Can delete Преимущество');
INSERT INTO "public"."auth_permission" VALUES (44, 11, 'view_advantage', 'Can view Преимущество');
INSERT INTO "public"."auth_permission" VALUES (45, 12, 'add_productphoto', 'Can add Фото товара');
INSERT INTO "public"."auth_permission" VALUES (46, 12, 'change_productphoto', 'Can change Фото товара');
INSERT INTO "public"."auth_permission" VALUES (47, 12, 'delete_productphoto', 'Can delete Фото товара');
INSERT INTO "public"."auth_permission" VALUES (48, 12, 'view_productphoto', 'Can view Фото товара');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
  "id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int4 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int8 NOT NULL,
  "action_time" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "public"."django_admin_log" VALUES (1, '1', 'Макс Тарасов ', 2, '[{"changed": {"fields": ["\u0418\u043c\u044f", "\u0424\u0430\u043c\u0438\u043b\u0438\u044f"]}}]', 7, 1, '2024-05-09 19:40:25.52819');
INSERT INTO "public"."django_admin_log" VALUES (2, '1', 'Простое окно', 1, '[{"added": {}}]', 6, 1, '2024-05-09 19:55:02.335401');
INSERT INTO "public"."django_admin_log" VALUES (3, '1', 'Простое окно', 2, '[{"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041f\u0440\u043e\u0444\u0438\u043b\u044c: Euroline"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0426\u0432\u0435\u0442\u0430 \u0443\u043f\u043b\u043e\u0442\u043d\u0435\u043d\u0438\u0439: \u041a\u0430\u0440\u0430\u043c\u0435\u043b\u044c, \u0447\u0451\u0440\u043d\u044b\u0439, \u0441\u0435\u0440\u044b\u0439"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043a\u0430\u043c\u0435\u0440: 3"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041c\u043e\u043d\u0442\u0430\u0436\u043d\u0430\u044f \u0448\u0438\u0440\u0438\u043d\u0430 (\u043c\u043c): 58"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0412\u044b\u0441\u043e\u0442\u0430 \u0444\u0430\u043b\u044c\u0446\u0430, \u043c\u043c: 18"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0418\u0441\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f: \u0411\u0435\u043b\u043e\u0435, \u0446\u0432\u0435\u0442\u043d\u043e\u0435"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041c\u0430\u0442\u0435\u0440\u0438\u0430\u043b \u0443\u043f\u043b\u043e\u0442\u043d\u0435\u043d\u0438\u0439: \u0410\u0420\u0422\u041a, \u0421\u0438\u043b\u0438\u043a\u043e\u043d"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0422\u0438\u043f \u0441\u0442\u0435\u043a\u043b\u043e\u043f\u0430\u043a\u0435\u0442\u0430: \u041e\u0434\u043d\u043e\u043a\u0430\u043c\u0435\u0440\u043d\u044b\u0439/\u0434\u0432\u0443\u0445\u043a\u0430\u043c\u0435\u0440\u043d\u044b\u0439 \u2013 \u0434\u043b\u044f \u0442\u0435\u043f\u043b\u044b\u0445 \u0438 \u0445\u043e\u0440\u043e\u0448\u043e \u043e\u0442\u0430\u043f\u043b\u0438\u0432\u0430\u0435\u043c\u044b\u0445 \u0434\u043e\u043c\u043e\u0432"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0421\u043e\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435 \u0442\u0435\u043f\u043b\u043e\u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0435 (\u0441 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u043c \u0430\u0440\u043c\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435\u043c), \u043c\u00b2\u0421/\u0412\u0442: 0,77"}}, {"added": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0412\u044b\u0441\u043e\u0442\u0430 \u043a\u043e\u043c\u0431\u0438\u043d\u0430\u0446\u0438\u0438 \u0440\u0430\u043c\u0430-\u0441\u0442\u0432\u043e\u0440\u043a\u0430 \u0432 \u0441\u0432\u0435\u0442\u043e\u0432\u043e\u043c \u043f\u0440\u043e\u0435\u043c\u0435 (\u0442\u0438\u043f\u043e\u0432\u043e\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442): 113"}}]', 6, 1, '2024-05-09 19:57:21.167778');
INSERT INTO "public"."django_admin_log" VALUES (4, '1', 'Простое окно', 2, '[{"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041f\u0440\u043e\u0444\u0438\u043b\u044c: Euroline"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0426\u0432\u0435\u0442\u0430 \u0443\u043f\u043b\u043e\u0442\u043d\u0435\u043d\u0438\u0439: \u041a\u0430\u0440\u0430\u043c\u0435\u043b\u044c, \u0447\u0451\u0440\u043d\u044b\u0439, \u0441\u0435\u0440\u044b\u0439"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043a\u0430\u043c\u0435\u0440: 3"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041c\u043e\u043d\u0442\u0430\u0436\u043d\u0430\u044f \u0448\u0438\u0440\u0438\u043d\u0430 (\u043c\u043c): 58"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0412\u044b\u0441\u043e\u0442\u0430 \u0444\u0430\u043b\u044c\u0446\u0430, \u043c\u043c: 18"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0418\u0441\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f: \u0411\u0435\u043b\u043e\u0435, \u0446\u0432\u0435\u0442\u043d\u043e\u0435"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u041c\u0430\u0442\u0435\u0440\u0438\u0430\u043b \u0443\u043f\u043b\u043e\u0442\u043d\u0435\u043d\u0438\u0439: \u0410\u0420\u0422\u041a, \u0421\u0438\u043b\u0438\u043a\u043e\u043d"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0422\u0438\u043f \u0441\u0442\u0435\u043a\u043b\u043e\u043f\u0430\u043a\u0435\u0442\u0430: \u041e\u0434\u043d\u043e\u043a\u0430\u043c\u0435\u0440\u043d\u044b\u0439/\u0434\u0432\u0443\u0445\u043a\u0430\u043c\u0435\u0440\u043d\u044b\u0439 \u2013 \u0434\u043b\u044f \u0442\u0435\u043f\u043b\u044b\u0445 \u0438 \u0445\u043e\u0440\u043e\u0448\u043e \u043e\u0442\u0430\u043f\u043b\u0438\u0432\u0430\u0435\u043c\u044b\u0445 \u0434\u043e\u043c\u043e\u0432"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0421\u043e\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435 \u0442\u0435\u043f\u043b\u043e\u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0435 (\u0441 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u043c \u0430\u0440\u043c\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435\u043c), \u043c\u00b2\u0421/\u0412\u0442: 0,77"}}, {"deleted": {"name": "\u0425\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430", "object": "\u0412\u044b\u0441\u043e\u0442\u0430 \u043a\u043e\u043c\u0431\u0438\u043d\u0430\u0446\u0438\u0438 \u0440\u0430\u043c\u0430-\u0441\u0442\u0432\u043e\u0440\u043a\u0430 \u0432 \u0441\u0432\u0435\u0442\u043e\u0432\u043e\u043c \u043f\u0440\u043e\u0435\u043c\u0435 (\u0442\u0438\u043f\u043e\u0432\u043e\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442): 113"}}]', 6, 1, '2024-05-09 19:58:53.028143');
INSERT INTO "public"."django_admin_log" VALUES (5, '1', 'Простое окно', 2, '[{"changed": {"fields": ["\u041f\u0440\u043e\u0444\u0438\u043b\u044c", "\u0426\u0432\u0435\u0442\u0430 \u0443\u043f\u043b\u043e\u0442\u043d\u0435\u043d\u0438\u0439", "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043a\u0430\u043c\u0435\u0440", "\u041c\u043e\u043d\u0442\u0430\u0436\u043d\u0430\u044f \u0448\u0438\u0440\u0438\u043d\u0430, \u043c\u043c", "\u0412\u044b\u0441\u043e\u0442\u0430 \u0444\u0430\u043b\u044c\u0446\u0430, \u043c\u043c", "\u0418\u0441\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f", "\u041c\u0430\u0442\u0435\u0440\u0438\u0430\u043b \u0443\u043f\u043b\u043e\u0442\u043d\u0435\u043d\u0438\u0439", "\u0422\u0438\u043f \u0441\u0442\u0435\u043a\u043b\u043e\u043f\u0430\u043a\u0435\u0442\u0430", "\u0421\u043e\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435 \u0442\u0435\u043f\u043b\u043e\u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0435 (\u0441 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u043c \u0430\u0440\u043c\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435\u043c), \u043c\u00b2\u0421/\u0412\u0442", "\u0412\u044b\u0441\u043e\u0442\u0430 \u043a\u043e\u043c\u0431\u0438\u043d\u0430\u0446\u0438\u0438 \u0440\u0430\u043c\u0430-\u0441\u0442\u0432\u043e\u0440\u043a\u0430 \u0432 \u0441\u0432\u0435\u0442\u043e\u0432\u043e\u043c \u043f\u0440\u043e\u0435\u043c\u0435 (\u0442\u0438\u043f\u043e\u0432\u043e\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442)"]}}]', 6, 1, '2024-05-09 20:04:16.19502');
INSERT INTO "public"."django_admin_log" VALUES (6, '1', 'Простое окно', 3, '', 6, 1, '2024-05-09 20:10:47.901463');
INSERT INTO "public"."django_admin_log" VALUES (7, '2', 'Простое окно', 1, '[{"added": {}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u041d\u0430\u0434\u0435\u0436\u043d\u043e\u0441\u0442\u044c"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0424\u0443\u0440\u043d\u0438\u0442\u0443\u0440\u0430"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u042d\u043d\u0435\u0440\u0433\u043e\u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"}}]', 6, 1, '2024-05-10 10:52:39.027689');
INSERT INTO "public"."django_admin_log" VALUES (8, '3', 'Энергоэффективное окно', 1, '[{"added": {}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0421\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0422\u0435\u043f\u043b\u043e\u0441\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0435"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u042d\u043a\u043e\u043d\u043e\u043c\u0438\u0447\u043d\u043e\u0441\u0442\u044c"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0422\u0451\u043f\u043b\u0430\u044f \u0440\u0430\u043c\u043a\u0430"}}]', 6, 1, '2024-05-10 10:57:03.125276');
INSERT INTO "public"."django_admin_log" VALUES (9, '4', 'Окно с солнцезащитой', 1, '[{"added": {}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u042d\u043d\u0435\u0440\u0433\u043e\u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0423\u043f\u043b\u043e\u0442\u043d\u0438\u0442\u0435\u043b\u0438"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0421\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c"}}]', 6, 1, '2024-05-10 10:59:33.071957');
INSERT INTO "public"."django_admin_log" VALUES (10, '5', 'Окно с защитой от шума', 1, '[{"added": {}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0428\u0443\u043c\u043e\u0438\u0437\u043e\u043b\u044f\u0446\u0438\u044f"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u041c\u043d\u043e\u0433\u043e\u043a\u0430\u043c\u0435\u0440\u043d\u0430\u044f \u0438\u0437\u043e\u043b\u044f\u0446\u0438\u044f"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0424\u0443\u0440\u043d\u0438\u0442\u0443\u0440\u0430"}}]', 6, 1, '2024-05-10 11:02:16.315729');
INSERT INTO "public"."django_admin_log" VALUES (11, '6', 'Противовзломные окна', 1, '[{"added": {}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u041d\u0430\u0434\u0435\u0436\u043d\u043e\u0441\u0442\u044c"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0410\u043d\u0442\u0438\u0432\u0430\u043d\u0434\u0430\u043b\u044c\u043d\u044b\u0439 \u0441\u0442\u0435\u043a\u043b\u043e\u043f\u0430\u043a\u0435\u0442"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u0432\u0437\u043b\u043e\u043c\u043d\u0430\u044f \u0444\u0443\u0440\u043d\u0438\u0442\u0443\u0440\u0430"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0423\u0441\u0438\u043b\u0435\u043d\u043d\u044b\u0439 \u041f\u0412\u0425-\u043f\u0440\u043e\u0444\u0438\u043b\u044c \u043e\u043a\u043e\u043d\u043d\u043e\u0439 \u0440\u0430\u043c\u044b."}}]', 6, 1, '2024-05-10 11:05:14.617474');
INSERT INTO "public"."django_admin_log" VALUES (12, '7', 'Окно для детской', 1, '[{"added": {}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u0424\u0443\u0440\u043d\u0438\u0442\u0443\u0440\u0430"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u041c\u043d\u043e\u0433\u043e\u0441\u043b\u043e\u0439\u043d\u043e\u0435 \u0441\u0442\u0435\u043a\u043b\u043e"}}, {"added": {"name": "\u041f\u0440\u0435\u0438\u043c\u0443\u0449\u0435\u0441\u0442\u0432\u043e", "object": "\u042d\u043d\u0435\u0440\u0433\u043e\u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"}}]', 6, 1, '2024-05-10 11:07:02.691747');
INSERT INTO "public"."django_admin_log" VALUES (13, '2', 'Простое окно', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:27:37.237932');
INSERT INTO "public"."django_admin_log" VALUES (14, '3', 'Энергоэффективное окно', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:30:04.51069');
INSERT INTO "public"."django_admin_log" VALUES (15, '4', 'Окно с солнцезащитой', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:30:13.700534');
INSERT INTO "public"."django_admin_log" VALUES (16, '5', 'Окно с защитой от шума', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:30:22.011101');
INSERT INTO "public"."django_admin_log" VALUES (17, '6', 'Противовзломные окна', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:30:41.141316');
INSERT INTO "public"."django_admin_log" VALUES (18, '3', 'Энергоэффективное окно', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:30:55.570565');
INSERT INTO "public"."django_admin_log" VALUES (19, '3', 'Энергоэффективное окно', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:31:04.562551');
INSERT INTO "public"."django_admin_log" VALUES (20, '4', 'Окно с солнцезащитой', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:31:13.107039');
INSERT INTO "public"."django_admin_log" VALUES (21, '5', 'Окно с защитой от шума', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:31:17.906588');
INSERT INTO "public"."django_admin_log" VALUES (22, '6', 'Противовзломные окна', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:31:22.287586');
INSERT INTO "public"."django_admin_log" VALUES (23, '7', 'Окно для детской', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 13:31:37.156046');
INSERT INTO "public"."django_admin_log" VALUES (24, '7', 'Окно для детской', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-10 17:14:42.911664');
INSERT INTO "public"."django_admin_log" VALUES (25, '35', 'Новый | Подбор | 1 | 24', 3, '', 8, 1, '2024-05-15 07:24:52.185784');
INSERT INTO "public"."django_admin_log" VALUES (26, '34', 'Новый | Звонок | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.189303');
INSERT INTO "public"."django_admin_log" VALUES (27, '33', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.192629');
INSERT INTO "public"."django_admin_log" VALUES (28, '32', 'Новый | Подбор | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.195592');
INSERT INTO "public"."django_admin_log" VALUES (29, '31', 'Новый | Подбор | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.198635');
INSERT INTO "public"."django_admin_log" VALUES (30, '30', 'Новый | Подбор | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.203671');
INSERT INTO "public"."django_admin_log" VALUES (31, '29', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.206671');
INSERT INTO "public"."django_admin_log" VALUES (32, '28', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.230437');
INSERT INTO "public"."django_admin_log" VALUES (33, '27', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.235439');
INSERT INTO "public"."django_admin_log" VALUES (34, '26', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.240453');
INSERT INTO "public"."django_admin_log" VALUES (35, '25', 'Новый | Подбор | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.243453');
INSERT INTO "public"."django_admin_log" VALUES (36, '24', 'Новый | Звонок | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.246855');
INSERT INTO "public"."django_admin_log" VALUES (37, '23', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.25041');
INSERT INTO "public"."django_admin_log" VALUES (38, '22', 'Новый | Подбор | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.25341');
INSERT INTO "public"."django_admin_log" VALUES (39, '21', 'Новый | Подбор | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.256409');
INSERT INTO "public"."django_admin_log" VALUES (40, '20', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.260158');
INSERT INTO "public"."django_admin_log" VALUES (41, '19', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.263411');
INSERT INTO "public"."django_admin_log" VALUES (42, '18', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.266383');
INSERT INTO "public"."django_admin_log" VALUES (43, '17', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.270432');
INSERT INTO "public"."django_admin_log" VALUES (44, '16', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.273939');
INSERT INTO "public"."django_admin_log" VALUES (45, '15', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.277402');
INSERT INTO "public"."django_admin_log" VALUES (46, '14', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.280619');
INSERT INTO "public"."django_admin_log" VALUES (47, '13', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.283619');
INSERT INTO "public"."django_admin_log" VALUES (48, '12', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.28762');
INSERT INTO "public"."django_admin_log" VALUES (49, '11', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.291677');
INSERT INTO "public"."django_admin_log" VALUES (50, '10', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.294628');
INSERT INTO "public"."django_admin_log" VALUES (51, '9', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.299192');
INSERT INTO "public"."django_admin_log" VALUES (52, '8', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.303623');
INSERT INTO "public"."django_admin_log" VALUES (53, '7', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.307627');
INSERT INTO "public"."django_admin_log" VALUES (54, '6', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.310969');
INSERT INTO "public"."django_admin_log" VALUES (55, '5', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.313969');
INSERT INTO "public"."django_admin_log" VALUES (56, '4', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.316969');
INSERT INTO "public"."django_admin_log" VALUES (57, '3', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.32149');
INSERT INTO "public"."django_admin_log" VALUES (58, '2', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.324909');
INSERT INTO "public"."django_admin_log" VALUES (59, '1', 'Новый | Консультация | 1 | 2', 3, '', 8, 1, '2024-05-15 07:24:52.328415');
INSERT INTO "public"."django_admin_log" VALUES (60, '36', 'Новый | Звонок | 1 | 2', 1, '[{"added": {}}]', 8, 1, '2024-05-15 07:27:56.234984');
INSERT INTO "public"."django_admin_log" VALUES (61, '6', 'Противовзломные окна', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (1)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (2)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (3)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (4)"}}]', 6, 1, '2024-05-15 07:58:00.930327');
INSERT INTO "public"."django_admin_log" VALUES (70, '38', 'Новый заказ на Звонок от Максим из г. Вологда', 2, '[]', 8, 1, '2024-05-15 12:40:39.823089');
INSERT INTO "public"."django_admin_log" VALUES (62, '6', 'Противовзломные окна', 2, '[{"deleted": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (None)"}}, {"deleted": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (None)"}}, {"deleted": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (None)"}}, {"deleted": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (None)"}}]', 6, 1, '2024-05-15 07:58:42.08676');
INSERT INTO "public"."django_admin_log" VALUES (63, '2', 'Простое окно', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (5)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (6)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (7)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (8)"}}]', 6, 1, '2024-05-15 07:59:08.680924');
INSERT INTO "public"."django_admin_log" VALUES (64, '3', 'Энергоэффективное окно', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (9)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (10)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (11)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (12)"}}]', 6, 1, '2024-05-15 07:59:39.50017');
INSERT INTO "public"."django_admin_log" VALUES (65, '4', 'Окно с солнцезащитой', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (13)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (14)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (15)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (16)"}}]', 6, 1, '2024-05-15 08:00:20.352572');
INSERT INTO "public"."django_admin_log" VALUES (66, '5', 'Окно с защитой от шума', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (17)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (18)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (19)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (20)"}}]', 6, 1, '2024-05-15 08:01:03.980759');
INSERT INTO "public"."django_admin_log" VALUES (67, '6', 'Противовзломные окна', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (21)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (22)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (23)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (24)"}}]', 6, 1, '2024-05-15 08:02:05.383536');
INSERT INTO "public"."django_admin_log" VALUES (68, '7', 'Окно для детской', 2, '[{"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (25)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (26)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (27)"}}, {"added": {"name": "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u044f \u0442\u043e\u0432\u0430\u0440\u0430", "object": "ProductPhoto object (28)"}}]', 6, 1, '2024-05-15 08:02:34.248316');
INSERT INTO "public"."django_admin_log" VALUES (71, '37', 'Выполненный заказ на Звонок от Николай из г. Москва', 2, '[{"changed": {"fields": ["\u0413\u043e\u0440\u043e\u0434 \u043a\u043b\u0438\u0435\u043d\u0442\u0430", "\u0418\u043c\u044f \u043a\u043b\u0438\u0435\u043d\u0442\u0430", "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043a\u043b\u0438\u0435\u043d\u0442\u0430", "\u0421\u0442\u0430\u0442\u0443\u0441"]}}]', 8, 1, '2024-05-15 12:41:54.699008');
INSERT INTO "public"."django_admin_log" VALUES (72, '36', 'Отмененный заказ на Замер от Дмитрий из г. Москва', 2, '[{"changed": {"fields": ["\u0422\u0438\u043f \u0437\u0430\u043a\u0430\u0437\u0430", "\u0413\u043e\u0440\u043e\u0434 \u043a\u043b\u0438\u0435\u043d\u0442\u0430", "\u0418\u043c\u044f \u043a\u043b\u0438\u0435\u043d\u0442\u0430", "\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043a\u043b\u0438\u0435\u043d\u0442\u0430", "\u041f\u043e\u0436\u0435\u043b\u0430\u043d\u0438\u044f", "\u0421\u0442\u0430\u0442\u0443\u0441"]}}]', 8, 1, '2024-05-15 12:42:39.48738');
INSERT INTO "public"."django_admin_log" VALUES (73, '2', 'Простое окно 123', 2, '[{"changed": {"fields": ["\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-15 12:43:07.089011');
INSERT INTO "public"."django_admin_log" VALUES (74, '2', 'Простое окно', 2, '[{"changed": {"fields": ["\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"]}}]', 6, 1, '2024-05-15 12:43:17.437438');
INSERT INTO "public"."django_admin_log" VALUES (75, '40', 'Новый заказ на Замер от dimas из г. oppa', 2, '[{"changed": {"fields": ["\u0422\u0435\u043b\u0435\u0444\u043e\u043d \u043a\u043b\u0438\u0435\u043d\u0442\u0430"]}}]', 8, 1, '2024-05-16 06:53:08.223662');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (5, 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES (6, 'windows', 'product');
INSERT INTO "public"."django_content_type" VALUES (7, 'windows', 'user');
INSERT INTO "public"."django_content_type" VALUES (8, 'windows', 'order');
INSERT INTO "public"."django_content_type" VALUES (9, 'windows', 'iteminorder');
INSERT INTO "public"."django_content_type" VALUES (10, 'windows', 'characteristic');
INSERT INTO "public"."django_content_type" VALUES (11, 'windows', 'advantage');
INSERT INTO "public"."django_content_type" VALUES (12, 'windows', 'productphoto');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int4 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2024-05-09 19:39:33.99911');
INSERT INTO "public"."django_migrations" VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2024-05-09 19:39:34.008479');
INSERT INTO "public"."django_migrations" VALUES (3, 'auth', '0001_initial', '2024-05-09 19:39:34.022321');
INSERT INTO "public"."django_migrations" VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2024-05-09 19:39:34.030898');
INSERT INTO "public"."django_migrations" VALUES (5, 'auth', '0003_alter_user_email_max_length', '2024-05-09 19:39:34.039128');
INSERT INTO "public"."django_migrations" VALUES (6, 'auth', '0004_alter_user_username_opts', '2024-05-09 19:39:34.045186');
INSERT INTO "public"."django_migrations" VALUES (7, 'auth', '0005_alter_user_last_login_null', '2024-05-09 19:39:34.051691');
INSERT INTO "public"."django_migrations" VALUES (8, 'auth', '0006_require_contenttypes_0002', '2024-05-09 19:39:34.054689');
INSERT INTO "public"."django_migrations" VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2024-05-09 19:39:34.060196');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0008_alter_user_username_max_length', '2024-05-09 19:39:34.06653');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2024-05-09 19:39:34.074051');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0010_alter_group_name_max_length', '2024-05-09 19:39:34.081554');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0011_update_proxy_permissions', '2024-05-09 19:39:34.087553');
INSERT INTO "public"."django_migrations" VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2024-05-09 19:39:34.094067');
INSERT INTO "public"."django_migrations" VALUES (15, 'windows', '0001_initial', '2024-05-09 19:39:34.136116');
INSERT INTO "public"."django_migrations" VALUES (16, 'admin', '0001_initial', '2024-05-09 19:39:34.151245');
INSERT INTO "public"."django_migrations" VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2024-05-09 19:39:34.165083');
INSERT INTO "public"."django_migrations" VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-09 19:39:34.174182');
INSERT INTO "public"."django_migrations" VALUES (19, 'sessions', '0001_initial', '2024-05-09 19:39:34.184689');
INSERT INTO "public"."django_migrations" VALUES (20, 'windows', '0002_alter_iteminorder_options_alter_order_options_and_more', '2024-05-09 20:03:06.18071');
INSERT INTO "public"."django_migrations" VALUES (21, 'windows', '0003_advantage', '2024-05-09 20:11:00.269593');
INSERT INTO "public"."django_migrations" VALUES (22, 'windows', '0004_product_description', '2024-05-10 13:24:22.059678');
INSERT INTO "public"."django_migrations" VALUES (23, 'windows', '0005_alter_product_description', '2024-05-10 13:29:55.695532');
INSERT INTO "public"."django_migrations" VALUES (24, 'windows', '0006_remove_order_products_remove_order_date_and_more', '2024-05-14 17:24:36.340749');
INSERT INTO "public"."django_migrations" VALUES (25, 'windows', '0007_alter_order_type', '2024-05-14 17:24:36.350258');
INSERT INTO "public"."django_migrations" VALUES (26, 'windows', '0008_order_status', '2024-05-14 20:54:22.073681');
INSERT INTO "public"."django_migrations" VALUES (27, 'windows', '0009_productphoto', '2024-05-15 07:53:55.510339');
INSERT INTO "public"."django_migrations" VALUES (28, 'windows', '0010_alter_productphoto_options', '2024-05-15 12:33:48.088909');
INSERT INTO "public"."django_migrations" VALUES (29, 'windows', '0011_alter_order_phone', '2024-05-15 12:33:49.075533');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamp(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('6crhpl5isnbmo1n4h9jfxgo8ucbzjxrl', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s59ca:fAR_lOwQhACpDaOgdSURa83hKQwskxdndgXvDx2bBB8', '2024-05-23 19:40:04.073632');
INSERT INTO "public"."django_session" VALUES ('udf9wcjrcoiy0w6jeuwmhj8cnvfn2fav', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s5TpC:oLGg8CEaZF8p3Yrw8Amc2sUANgh0hvskAWJpvmKtOvg', '2024-05-24 17:14:26.676194');
INSERT INTO "public"."django_session" VALUES ('ykuj67pys0n00v550w4wutay85nd7u9r', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s6bIt:Y8asd6VdQOtHiUYcecaHNO3tuuA43K2V1Q_zW_diF5Y', '2024-05-27 19:25:43.267807');
INSERT INTO "public"."django_session" VALUES ('njq4alblejrzxzx04rknz4i3hz5md2xp', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s7Byl:vLup-XsTk1z5fvXxAan4CQuZJiL-bjQtvdJgMoalUEk', '2024-05-29 10:35:23.1489');
INSERT INTO "public"."django_session" VALUES ('tdvtsyyjbsrzt7ma4x8lbpsm8shn8ffs', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s7DOY:h5adW1C4_wqVdcZXxZ5dKYKLXKld-D9HYe4lZEzckhA', '2024-05-29 12:06:06.273864');
INSERT INTO "public"."django_session" VALUES ('hmcms9uwygnv7p24f08o4r6rckjtadbd', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s7Uyq:NLxJmBf5woMChF7ei-hjehWLe0_yWImiP6WKLSvk-54', '2024-05-30 06:52:44.593059');
INSERT INTO "public"."django_session" VALUES ('m83craea4ksem1jujw4qoz6mwhnjq2o8', '.eJxVjMsOwiAQRf-FtSGF4enSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2Ol3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtbAAEy55wQddIEWilDk3VFGm9JGOlQGCgKdXFeTyoSCJIJfPFS2MLeH9GgN0w:1s7VBx:JOdB-EwJV6Ec7m79c31e_q6M0LUJnA0R3xcoZ3mZcHI', '2024-05-30 07:06:17.576589');

-- ----------------------------
-- Table structure for windows_advantage
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_advantage";
CREATE TABLE "public"."windows_advantage" (
  "id" int4 NOT NULL DEFAULT nextval('windows_advantage_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of windows_advantage
-- ----------------------------
INSERT INTO "public"."windows_advantage" VALUES (1, 'Надежность', 'Классическая стабильная пятикамерная система оконных профилей с превосходными изолирующими характеристиками.', 2);
INSERT INTO "public"."windows_advantage" VALUES (2, 'Фурнитура', 'Окна хорошего качества должны открываться и закрываться без проблем в любое время года, защищать от пыли и звуков улицы. Этой цели служит современная качественная фурнитура.', 2);
INSERT INTO "public"."windows_advantage" VALUES (3, 'Энергоэффективность', 'Современный энергосберегающий стеклопакет за счет особого инновационного напыления, нанесенного на внутреннюю поверхность стекла сохраняет тепло в помещении.', 2);
INSERT INTO "public"."windows_advantage" VALUES (4, 'Современный профиль', 'Системная платформа SOFTLINE 82 предлагает оптимальную базовую монтажную ширину, позволяющую эффективно использовать энергоэффективные окна, соответствующие современным требованиям в области энергосбережения как в новых постройках, так и в зданиях, подвергающихся реновации.', 3);
INSERT INTO "public"."windows_advantage" VALUES (5, 'Теплосбережение', 'Способность удерживать тепло приобретается за счет особого инновационного напыления, нанесенного на внутреннюю поверхность стекла. Его действие подобно зеркалу. Соприкасаясь с «тепловым» излучением, которое исходит от отопительных приборов, оно противодействует его движению и направляет обратно. Излучаемое тепло остаётся в помещении и необходимость в интенсивности отопления снижается практически вдвое. Напыление невидимо для человеческого глаза, но прекрасно пропускает в помещение видимую часть солнечного спектра.', 3);
INSERT INTO "public"."windows_advantage" VALUES (6, 'Экономичность', 'Энергоэффективное окно не только удерживает тепло, но и способствует снижению расходов на отопление. Кроме этого, отпадает необходимость приобретать мощные обогревательные приборы, а это тоже, в свою очередь, оптимизирует затраты.', 3);
INSERT INTO "public"."windows_advantage" VALUES (7, 'Тёплая рамка', 'Это дистанционная пластиковая рамка, которая в отличие от традиционной алюминиевой, обладает меньшей теплопроводностью. Поэтому в местах соприкосновения такой рамки со стеклами при значительном понижении температуры за окном не образуется наледь, а, следовательно, исключается промерзание стеклопакета. Кроме того, на стеклопакетах с «тёплой» рамкой значительно снижен риск выпадения конденсата.', 3);
INSERT INTO "public"."windows_advantage" VALUES (8, 'Энергоэффективность', 'Мультифункциональное стекло благодаря инновационному напылению, которое не воспринимает человеческий глаз, отражает энергию в обе стороны, поэтому надежно защищает помещение не только от излишнего тепла в летние дни, но и сохраняет тепло внутри помещения зимой. При этом видимую, полезную для человека часть спектра солнечного света это стекло беспрепятственно пропускает, что очень важно в пасмурную погоду. Зимой данная опция помогает экономить на обогреве, сберегая в помещении тепло. В знойные дни она сохраняет прохладу и снижает расходы электроэнергии, затрачиваемой на кондиционирование.', 4);
INSERT INTO "public"."windows_advantage" VALUES (9, 'Уплотнители', 'Качественные уплотнения из современных материалов обеспечивают высокие изолирующие свойства конструкции как в жаркое, так и в холодное время года.', 4);
INSERT INTO "public"."windows_advantage" VALUES (10, 'Современный профиль', 'Классическая стабильная пятикамерная система оконных профилей с превосходными изолирующими характеристиками.', 4);
INSERT INTO "public"."windows_advantage" VALUES (11, 'Шумоизоляция', 'Высокая шумоизоляция классической системы пятикамерных профилей обеспечивает тишину и спокойствие Вашего дома.', 5);
INSERT INTO "public"."windows_advantage" VALUES (12, 'Многокамерная изоляция', 'Шумозащитные стеклопакеты за счет применения стекол и дистанционной рамки разной ширины снижают пропускную способность звука и гасят как низкочастотные (движение автомобильного потока и сигналы транспорта), так и высокочастотные шумы (строительно-дорожные работы, голоса, звучащие через динамики и т.д.).', 5);
INSERT INTO "public"."windows_advantage" VALUES (13, 'Фурнитура', 'Звукоизолирующие достоинства многокамерного профиля и шумозащитного стеклопакета проявятся только в сочетании с грамотно подобранной фурнитурой.', 5);
INSERT INTO "public"."windows_advantage" VALUES (14, 'Надежность', 'Классическая стабильная пятикамерная система оконных профилей с превосходными изолирующими характеристиками.', 6);
INSERT INTO "public"."windows_advantage" VALUES (15, 'Антивандальный стеклопакет', 'Ударопрочные стеклопакеты изготавливаются из специального стекла «триплекс». Это сочетание нескольких стекол, соединенных воедино специальным методом. Триплекс обладает особой стойкостью к ударам и разрушению, а кроме этого, препятствует разлету осколков, если стекло разобьется.', 6);
INSERT INTO "public"."windows_advantage" VALUES (16, 'Противовзломная фурнитура', 'Специальная фурнитура обеспечивает взломостойкость за счет применения устойчивых к взлому технических решений. Нет необходимости устанавливать на окна решётки, защитные жалюзи, рольставни и иные защитные элементы. Усиленные петли выдерживают большие нагрузки. Дополнительные запоры по периметру рамы препятствуют открыванию окна, если злоумышленник преодолел основные замки.', 6);
INSERT INTO "public"."windows_advantage" VALUES (17, 'Усиленный ПВХ-профиль оконной рамы.', 'Использование специальных армирующих усилителей обеспечивает высокую стабильность конструкций. Специальная накладка не позволяет взломщику просверлить отверстие напротив ручки и повернуть её снаружи. Запорные цапфы грибовидной формы на створке окна невозможно открыть монтировкой.', 6);
INSERT INTO "public"."windows_advantage" VALUES (18, 'Фурнитура', 'Чтобы ребёнок не смог самостоятельно открыть окно и не выпал наружу, на окно устанавливается специальная защитная фурнитура. К ней относится детский замок.', 7);
INSERT INTO "public"."windows_advantage" VALUES (19, 'Многослойное стекло', 'Чтобы ребёнок не смог самостоятельно открыть окно и не выпал наружу, на окно устанавливается специальная защитная фурнитура. К ней относится детский замок.', 7);
INSERT INTO "public"."windows_advantage" VALUES (20, 'Энергоэффективность', 'В детской нужно поддерживать комфортный микроклимат и избегать сквозняков.', 7);

-- ----------------------------
-- Table structure for windows_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_order";
CREATE TABLE "public"."windows_order" (
  "id" int4 NOT NULL DEFAULT nextval('windows_order_id_seq'::regclass),
  "city" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(12) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "wishes" text COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of windows_order
-- ----------------------------
INSERT INTO "public"."windows_order" VALUES (38, 'Вологда', 'Максим', '+79005402253', 'call', '', 'new');
INSERT INTO "public"."windows_order" VALUES (37, 'Москва', 'Николай', '+12321312312', 'call', '4', 'done');
INSERT INTO "public"."windows_order" VALUES (36, 'Москва', 'Дмитрий', '+12312312312', 'measure', '', 'canceled');
INSERT INTO "public"."windows_order" VALUES (40, 'oppa', 'dimas', '899999999999', 'measure', 'Хочу замер на окно адрес бурдж халифа этаж 67 дубай', 'new');

-- ----------------------------
-- Table structure for windows_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_product";
CREATE TABLE "public"."windows_product" (
  "id" int4 NOT NULL DEFAULT nextval('windows_product_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "date" timestamp(6) NOT NULL,
  "photo_file" varchar(255) COLLATE "pg_catalog"."default",
  "cameras" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "colors" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "fulfillment" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "glass_unit" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "height" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "material" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "montage" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "profile" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "rebate" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "resistance" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of windows_product
-- ----------------------------
INSERT INTO "public"."windows_product" VALUES (3, 'Энергоэффективное окно', '2024-05-10 10:57:03.121752', 'Xwd9z_energa.webp', '7/6', 'Карамель, чёрный, серый', 'Белое, цветное', 'Двухкамерный энергосберегающий стеклопакет', '124', 'АРТК, ТРЕ (коэкструдированный)', '82', 'Softline 82', '25', '1,12', 'пластиковое окно, каждый компонент которого вносит вклад в энергосбережение. Теплосбережение и солнцезащита достигаются за счет напыления на внутренней поверхности стекла. Энергосберегающие окна помогают экономить на отоплении зимой и кондиционировании летом.');
INSERT INTO "public"."windows_product" VALUES (4, 'Окно с солнцезащитой', '2024-05-10 10:59:33.065435', 'zzXfH_shutterstock1108469714asdf.webp', '5', 'Чёрный, карамель, серый', 'Белое, цветное', 'Мультифункциональный солнцезащитный стеклопакет', '118', 'АРТК, Силикон', '70', 'Softline', '21', '0,94', 'солнцезащитные окна на ПВХ-профиле сохраняют комфортную температуру в помещении во время летней жары и помогают сэкономить на кондиционировании. Специальное покрытие поглощает или отражает солнечные лучи. Рефлективные стекла работаю лучше, чем жалюзи: в комнате с такими окнами температура ниже примерно на 5 градусов.');
INSERT INTO "public"."windows_product" VALUES (5, 'Окно с защитой от шума', '2024-05-10 11:02:16.311204', 'zHbw5_noise.webp', '5', 'Чёрный, карамель, серый', 'Белое, цветное', 'Антирезонансный шумозащитный стеклопакет', '118', 'АРТК, Силикон', '70', 'Softline', '21', '0,94', 'мы рекомендуем это решение для квартир и коттеджей, находящихся в непосредственной близости от автомагистралей, дорог с оживлённым движением, аэропортов и прочих источников шума.');
INSERT INTO "public"."windows_product" VALUES (6, 'Противовзломные окна', '2024-05-10 11:05:14.613473', 'gJEuf_protivz.webp', '5', 'Чёрный, карамель, серый', 'Белое, цветное', 'Однокамерный стеклопакет с использованием триплекса', '118', 'АРТК, Силикон', '70', 'Softline', '21', '0,94', 'конструкция из антивандального стеклопакета, усиленного ПВХ-профиля и специальной фурнитуры. Такое окно обеспечивает защиту от проникновения злоумышленников в квартиру.');
INSERT INTO "public"."windows_product" VALUES (7, 'Окно для детской', '2024-05-10 11:07:02.688239', 'cCt1j_deti.webp', '5', 'Чёрный, карамель, серый', 'Белое, цветное', 'Двухкамерный энергосберегающий стеклопакет', '118', 'АРТК, Силикон', '70', 'Softline', '21', '0,94', 'это специальное окно сделает детскую комнату максимально безопасной. Окно открывается только на проветривание. Для полного открытия окна необходим ключ.');
INSERT INTO "public"."windows_product" VALUES (2, 'Простое окно', '2024-05-10 04:52:39.016181', 'Hl1IL_prostoe.webp', '3', 'Карамель, чёрный, серый', 'Белое, цветное', 'Однокамерный/двухкамерный – для теплых и хорошо отапливаемых домов', '113', 'АРТК, Силикон', '58', 'Euroline', '18', '0,77', 'типовое и недорогое решение для остекления квартиры или дома. В нем нет усложняющих и удорожающих изготовление элементов. Как правило, такое окно имеет прямоугольную форму, стандартный дизайн и белый цвет.');

-- ----------------------------
-- Table structure for windows_productphoto
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_productphoto";
CREATE TABLE "public"."windows_productphoto" (
  "id" int4 NOT NULL DEFAULT nextval('windows_productphoto_id_seq'::regclass),
  "photo" varchar(255) COLLATE "pg_catalog"."default",
  "product_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of windows_productphoto
-- ----------------------------
INSERT INTO "public"."windows_productphoto" VALUES (5, 'tw0uF_okna_9.webp', 2);
INSERT INTO "public"."windows_productphoto" VALUES (6, 'Ioozd_okna_10.webp', 2);
INSERT INTO "public"."windows_productphoto" VALUES (7, 'ijVio_okna_11.webp', 2);
INSERT INTO "public"."windows_productphoto" VALUES (8, 'eW8Sn_okna_18.webp', 2);
INSERT INTO "public"."windows_productphoto" VALUES (9, '9fai2_Softline82_4.webp', 3);
INSERT INTO "public"."windows_productphoto" VALUES (10, 'wDVlu_Softline82_5.webp', 3);
INSERT INTO "public"."windows_productphoto" VALUES (11, 'eRgiL_Softline82_6.webp', 3);
INSERT INTO "public"."windows_productphoto" VALUES (12, 'Derd0_Softline82_1.webp', 3);
INSERT INTO "public"."windows_productphoto" VALUES (13, 'xOFmF_shutterstock_1771846094.webp', 4);
INSERT INTO "public"."windows_productphoto" VALUES (14, '0Y7wo_shutterstock_1824025490.webp', 4);
INSERT INTO "public"."windows_productphoto" VALUES (15, 'F6vO4_shutterstock_1933623767.webp', 4);
INSERT INTO "public"."windows_productphoto" VALUES (16, 'qEFnq_shutterstock_655956577.webp', 4);
INSERT INTO "public"."windows_productphoto" VALUES (17, 'CKNV0_shutterstock_1854696208.webp', 5);
INSERT INTO "public"."windows_productphoto" VALUES (18, 'd3THr_shutterstock_1963682737.webp', 5);
INSERT INTO "public"."windows_productphoto" VALUES (19, 'aNno7_shutterstock_2195034981.webp', 5);
INSERT INTO "public"."windows_productphoto" VALUES (20, '4lzJk_shutterstock_2128582007.webp', 5);
INSERT INTO "public"."windows_productphoto" VALUES (21, '8zI5v_5.webp', 6);
INSERT INTO "public"."windows_productphoto" VALUES (22, 'Ju4Kv_6.webp', 6);
INSERT INTO "public"."windows_productphoto" VALUES (23, 'bFiBh_7.webp', 6);
INSERT INTO "public"."windows_productphoto" VALUES (24, '5hv5t_2.webp', 6);
INSERT INTO "public"."windows_productphoto" VALUES (25, '6C4y2_shutterstock_164051252.webp', 7);
INSERT INTO "public"."windows_productphoto" VALUES (26, 'RzDUt_shutterstock_413858854.webp', 7);
INSERT INTO "public"."windows_productphoto" VALUES (27, 'dcBMI_shutterstock_758948863.webp', 7);
INSERT INTO "public"."windows_productphoto" VALUES (28, '21jfr_shutterstock_2145026805.webp', 7);

-- ----------------------------
-- Table structure for windows_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_user";
CREATE TABLE "public"."windows_user" (
  "id" int4 NOT NULL DEFAULT nextval('windows_user_id_seq'::regclass),
  "last_login" timestamp(6),
  "is_superuser" int4 NOT NULL,
  "first_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" int4 NOT NULL,
  "is_active" int4 NOT NULL,
  "date_joined" timestamp(6) NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "surname" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "patronymic" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "role" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of windows_user
-- ----------------------------
INSERT INTO "public"."windows_user" VALUES (1, '2024-05-16 07:06:17.514884', 1, '', '', 1, 1, '2024-05-09 19:40:01', 'Макс', 'Тарасов', '', 'admin', 'pbkdf2_sha256$720000$3NWcJjyjcqfCEf3UgUrZih$AjqDYVGJqlSJEGGGfywYNtsp18LiVxoRVt0BYC+DWis=', 'a', 'user');

-- ----------------------------
-- Table structure for windows_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_user_groups";
CREATE TABLE "public"."windows_user_groups" (
  "id" int4 NOT NULL DEFAULT nextval('windows_user_groups_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of windows_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for windows_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."windows_user_user_permissions";
CREATE TABLE "public"."windows_user_user_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('windows_user_user_permissions_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of windows_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 75, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 29, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_advantage_id_seq"
OWNED BY "public"."windows_advantage"."id";
SELECT setval('"public"."windows_advantage_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_order_id_seq"
OWNED BY "public"."windows_order"."id";
SELECT setval('"public"."windows_order_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_product_id_seq"
OWNED BY "public"."windows_product"."id";
SELECT setval('"public"."windows_product_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_productphoto_id_seq"
OWNED BY "public"."windows_productphoto"."id";
SELECT setval('"public"."windows_productphoto_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_user_groups_id_seq"
OWNED BY "public"."windows_user_groups"."id";
SELECT setval('"public"."windows_user_groups_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_user_id_seq"
OWNED BY "public"."windows_user"."id";
SELECT setval('"public"."windows_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."windows_user_user_permissions_id_seq"
OWNED BY "public"."windows_user_user_permissions"."id";
SELECT setval('"public"."windows_user_user_permissions_id_seq"', 1, false);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "codename" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK (action_flag > 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_content_type
-- ----------------------------
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "public"."django_content_type" USING btree (
  "app_label" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "model" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree (
  "expire_date" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Indexes structure for table windows_advantage
-- ----------------------------
CREATE INDEX "windows_advantage_product_id_ac4fc707" ON "public"."windows_advantage" USING btree (
  "product_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table windows_advantage
-- ----------------------------
ALTER TABLE "public"."windows_advantage" ADD CONSTRAINT "windows_advantage_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table windows_order
-- ----------------------------
ALTER TABLE "public"."windows_order" ADD CONSTRAINT "windows_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table windows_product
-- ----------------------------
ALTER TABLE "public"."windows_product" ADD CONSTRAINT "windows_product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table windows_productphoto
-- ----------------------------
CREATE INDEX "windows_productphoto_product_id_83fd4409" ON "public"."windows_productphoto" USING btree (
  "product_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table windows_productphoto
-- ----------------------------
ALTER TABLE "public"."windows_productphoto" ADD CONSTRAINT "windows_productphoto_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table windows_user
-- ----------------------------
ALTER TABLE "public"."windows_user" ADD CONSTRAINT "windows_user_username_key" UNIQUE ("username");
ALTER TABLE "public"."windows_user" ADD CONSTRAINT "windows_user_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table windows_user
-- ----------------------------
ALTER TABLE "public"."windows_user" ADD CONSTRAINT "windows_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table windows_user_groups
-- ----------------------------
CREATE INDEX "windows_user_groups_group_id_d8a3be9f" ON "public"."windows_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "windows_user_groups_user_id_663d5316" ON "public"."windows_user_groups" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "windows_user_groups_user_id_group_id_10310deb_uniq" ON "public"."windows_user_groups" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table windows_user_groups
-- ----------------------------
ALTER TABLE "public"."windows_user_groups" ADD CONSTRAINT "windows_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table windows_user_user_permissions
-- ----------------------------
CREATE INDEX "windows_user_user_permissions_permission_id_c462a47b" ON "public"."windows_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "windows_user_user_permissions_user_id_4a8ab3fe" ON "public"."windows_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "windows_user_user_permissions_user_id_permission_id_30ddffe4_un" ON "public"."windows_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table windows_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."windows_user_user_permissions" ADD CONSTRAINT "windows_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_fkey" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_fkey" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table windows_advantage
-- ----------------------------
ALTER TABLE "public"."windows_advantage" ADD CONSTRAINT "windows_advantage_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."windows_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table windows_productphoto
-- ----------------------------
ALTER TABLE "public"."windows_productphoto" ADD CONSTRAINT "windows_productphoto_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."windows_product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table windows_user_groups
-- ----------------------------
ALTER TABLE "public"."windows_user_groups" ADD CONSTRAINT "windows_user_groups_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."windows_user_groups" ADD CONSTRAINT "windows_user_groups_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."windows_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table windows_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."windows_user_user_permissions" ADD CONSTRAINT "windows_user_user_permissions_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."windows_user_user_permissions" ADD CONSTRAINT "windows_user_user_permissions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."windows_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
