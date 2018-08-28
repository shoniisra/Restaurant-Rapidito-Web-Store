-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-08-2018 a las 02:21:41
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `whatrapidito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_address`
--

DROP TABLE IF EXISTS `tbl_address`;
CREATE TABLE IF NOT EXISTS `tbl_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedmodel` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedmodel_id` int(11) DEFAULT NULL,
  `type` smallint(1) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country` (`country`),
  KEY `idx_postal_code` (`postal_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `address1`, `address2`, `city`, `state`, `country`, `postal_code`, `relatedmodel`, `relatedmodel_id`, `type`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, '302', '9A/1, W.E.A, Karol Bagh', 'Ltcga', 'Ecu', 'IN', '110005', 'Person', 1, 1, 1, 1, 1, '2018-08-01 18:14:09', '2018-08-01 18:14:20'),
(2, '302', '9A/1, W.E.A, Karol Bagh', 'Ltcga', 'Ecu', 'IN', '110005', 'Person', 2, 1, 1, 1, 1, '2018-08-01 18:14:20', '2018-08-01 18:14:20'),
(3, 'direccion1', 'direccion2', 'Ltcga', 'Ecu', 'IN', '110005', 'Store', 1, 3, 1, 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(4, 'direccion1', 'direccion2', 'Ltcga', '', 'IN', '110005', 'Store', 1, 2, 1, 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(5, 'direccion1', 'direccion2', 'Ltcga', '', 'IN', '110005', 'Person', 3, 1, 1, 1, 1, '2018-08-01 18:14:33', '2018-08-01 18:14:33'),
(6, 'direccion1', 'direccion2', 'Ltcga', '', 'IN', '110005', 'Person', 4, 1, 1, 1, 1, '2018-08-01 18:14:37', '2018-08-01 18:14:37'),
(7, 'direccion1', 'direccion2', 'Ltcga', '', 'IN', '110005', 'Person', 5, 1, 1, 1, 1, '2018-08-01 18:14:39', '2018-08-01 18:14:39'),
(8, 'qweqweqweqwe', '', 'qweqweqwe', '', 'EC', '122112', 'Person', 6, 1, 1, 0, 1, '2018-08-05 21:12:09', '2018-08-05 21:15:16'),
(9, 'quito', 'ltcga', 'ltcga', 'Chimborazo', 'EC', '123', 'Person', 7, 1, 1, 1, 1, '2018-08-06 00:04:46', '2018-08-06 00:04:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_auth_assignment`
--

DROP TABLE IF EXISTS `tbl_auth_assignment`;
CREATE TABLE IF NOT EXISTS `tbl_auth_assignment` (
  `identity_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `identity_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `permission` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `resource` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  KEY `idx_identity_name` (`identity_name`),
  KEY `idx_identity_type` (`identity_type`),
  KEY `idx_permission` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_auth_assignment`
--

INSERT INTO `tbl_auth_assignment` (`identity_name`, `identity_type`, `permission`, `resource`, `module`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
('anthoro', 'customer', 'customer.update', 'Customer', 'customer', 1, 0, '2018-08-05 21:15:16', NULL),
('anthoro', 'customer', 'customer.view', 'Customer', 'customer', 1, 0, '2018-08-05 21:15:16', NULL),
('anthoro', 'customer', 'customer.change-password', 'Customer', 'customer', 1, 0, '2018-08-05 21:15:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_auth_permission`
--

DROP TABLE IF EXISTS `tbl_auth_permission`;
CREATE TABLE IF NOT EXISTS `tbl_auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `resource` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_permission` (`name`,`module`,`resource`,`alias`),
  KEY `idx_name` (`name`),
  KEY `idx_alias` (`alias`),
  KEY `idx_resource` (`resource`),
  KEY `idx_module` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_auth_permission`
--

INSERT INTO `tbl_auth_permission` (`id`, `name`, `alias`, `resource`, `module`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'access.auth', 'Access Tab', 'AuthModule', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(2, 'auth.managepermissions', 'Manage Permissions', 'AuthModule', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(3, 'group.create', 'Create Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(4, 'group.view', 'View Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(5, 'group.viewother', 'View Others Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(6, 'group.update', 'Update Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(7, 'group.updateother', 'Update Others Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(8, 'group.delete', 'Delete Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(9, 'group.deleteother', 'Delete Others Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(10, 'group.manage', 'Manage Groups', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(11, 'group.bulk-edit', 'Bulk Edit Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(12, 'group.bulk-delete', 'Bulk Delete Group', 'Group', 'auth', 1, 0, '2018-08-01 18:14:09', NULL),
(13, 'access.home', 'Access Tab', 'HomeModule', 'home', 1, 0, '2018-08-01 18:14:09', NULL),
(14, 'access.language', 'Access Tab', 'LanguageModule', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(15, 'language.create', 'Create Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(16, 'language.view', 'View Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(17, 'language.viewother', 'View Others Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(18, 'language.update', 'Update Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(19, 'language.updateother', 'Update Others Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(20, 'language.delete', 'Delete Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(21, 'language.deleteother', 'Delete Others Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(22, 'language.manage', 'Manage Languages', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(23, 'language.bulk-edit', 'Bulk Edit Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(24, 'language.bulk-delete', 'Bulk Delete Language', 'Language', 'language', 1, 0, '2018-08-01 18:14:09', NULL),
(25, 'access.notification', 'Access Tab', 'NotificationModule', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(26, 'notification.delete', 'Delete Notification', 'Notification', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(27, 'notification.manage', 'Manage Notifications', 'Notification', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(28, 'notificationtemplate.create', 'Create Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(29, 'notificationtemplate.view', 'View Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(30, 'notificationtemplate.viewother', 'View Others Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(31, 'notificationtemplate.update', 'Update Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(32, 'notificationtemplate.updateother', 'Update Others Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(33, 'notificationtemplate.delete', 'Delete Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(34, 'notificationtemplate.deleteother', 'Delete Others Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(35, 'notificationtemplate.manage', 'Manage Templates', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(36, 'notificationtemplate.bulk-edit', 'Bulk Edit Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(37, 'notificationtemplate.bulk-delete', 'Bulk Delete Template', 'NotificationTemplate', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(38, 'notificationlayout.create', 'Create Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(39, 'notificationlayout.view', 'View Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(40, 'notificationlayout.viewother', 'View Others Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(41, 'notificationlayout.update', 'Update Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(42, 'notificationlayout.updateother', 'Update Others Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(43, 'notificationlayout.delete', 'Delete Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(44, 'notificationlayout.deleteother', 'Delete Others Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(45, 'notificationlayout.manage', 'Manage Layouts', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(46, 'notificationlayout.bulk-edit', 'Bulk Edit Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(47, 'notificationlayout.bulk-delete', 'Bulk Delete Layout', 'NotificationLayout', 'notification', 1, 0, '2018-08-01 18:14:09', NULL),
(48, 'access.service', 'Access Tab', 'ServiceModule', 'service', 1, 0, '2018-08-01 18:14:09', NULL),
(49, 'service.checksystem', 'System Configuration', 'ServiceModule', 'service', 1, 0, '2018-08-01 18:14:09', NULL),
(50, 'service.rebuildpermissions', 'Rebuild Permissions', 'ServiceModule', 'service', 1, 0, '2018-08-01 18:14:09', NULL),
(51, 'service.rebuildmodulemetadata', 'Rebuild module metadata', 'ServiceModule', 'service', 1, 0, '2018-08-01 18:14:09', NULL),
(52, 'access.settings', 'Access Tab', 'SettingsModule', 'settings', 1, 0, '2018-08-01 18:14:09', NULL),
(53, 'settings.email', 'Email Settings', 'SettingsModule', 'settings', 1, 0, '2018-08-01 18:14:09', NULL),
(54, 'settings.site', 'Site Settings', 'SettingsModule', 'settings', 1, 0, '2018-08-01 18:14:09', NULL),
(55, 'settings.database', 'Database Settings', 'SettingsModule', 'settings', 1, 0, '2018-08-01 18:14:09', NULL),
(56, 'access.users', 'Access Tab', 'UsersModule', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(57, 'user.create', 'Create User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(58, 'user.view', 'View User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(59, 'user.viewother', 'View Others User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(60, 'user.update', 'Update User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(61, 'user.updateother', 'Update Others User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(62, 'user.delete', 'Delete User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(63, 'user.deleteother', 'Delete Others User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(64, 'user.manage', 'Manage Users', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(65, 'user.bulk-edit', 'Bulk Edit User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(66, 'user.bulk-delete', 'Bulk Delete User', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(67, 'user.change-password', 'Change Password', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(68, 'user.change-status', 'Change Status', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(69, 'user.settings', 'Settings', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(70, 'user.change-passwordother', 'Change Others Password', 'User', 'users', 1, 0, '2018-08-01 18:14:09', NULL),
(71, 'access.catalog', 'Access Tab', 'CatalogModule', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(72, 'productcategory.create', 'Create Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(73, 'productcategory.view', 'View Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(74, 'productcategory.viewother', 'View Others Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(75, 'productcategory.update', 'Update Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(76, 'productcategory.updateother', 'Update Others Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(77, 'productcategory.delete', 'Delete Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(78, 'productcategory.deleteother', 'Delete Others Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(79, 'productcategory.manage', 'Manage Product Categories', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(80, 'productcategory.bulk-edit', 'Bulk Edit Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(81, 'productcategory.bulk-delete', 'Bulk Delete Product Category', 'ProductCategory', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(82, 'product.create', 'Create Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(83, 'product.view', 'View Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(84, 'product.viewother', 'View Others Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(85, 'product.update', 'Update Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(86, 'product.updateother', 'Update Others Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(87, 'product.delete', 'Delete Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(88, 'product.deleteother', 'Delete Others Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(89, 'product.manage', 'Manage Products', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(90, 'product.bulk-edit', 'Bulk Edit Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(91, 'product.bulk-delete', 'Bulk Delete Product', 'Product', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(92, 'productreview.delete', 'Delete Review', 'ProductReview', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(93, 'productreview.manage', 'Manage Reviews', 'ProductReview', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(94, 'productreview.approve', 'Approve', 'ProductReview', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(95, 'productreview.spam', 'Spam', 'ProductReview', 'catalog', 1, 0, '2018-08-01 18:14:09', NULL),
(96, 'access.cms', 'Access Tab', 'CmsModule', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(97, 'page.create', 'Create Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(98, 'page.view', 'View Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(99, 'page.viewother', 'View Others Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(100, 'page.update', 'Update Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(101, 'page.updateother', 'Update Others Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(102, 'page.delete', 'Delete Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(103, 'page.deleteother', 'Delete Others Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(104, 'page.manage', 'Manage Pages', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(105, 'page.bulk-edit', 'Bulk Edit Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(106, 'page.bulk-delete', 'Bulk Delete Page', 'Page', 'cms', 1, 0, '2018-08-01 18:14:10', NULL),
(107, 'access.customer', 'Access Tab', 'CustomerModule', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(108, 'customer.create', 'Create Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(109, 'customer.view', 'View Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(110, 'customer.viewother', 'View Others Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(111, 'customer.update', 'Update Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(112, 'customer.delete', 'Delete Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(113, 'customer.deleteother', 'Delete Others Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(114, 'customer.manage', 'Manage Customers', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(115, 'customer.bulk-edit', 'Bulk Edit Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(116, 'customer.bulk-delete', 'Bulk Delete Customer', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(117, 'customer.change-password', 'Change Password', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(118, 'customer.change-status', 'Change Status', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(119, 'customer.change-passwordother', 'Change Others Password', 'Customer', 'customer', 1, 0, '2018-08-01 18:14:10', NULL),
(120, 'access.dataCategories', 'Access Tab', 'DataCategoriesModule', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(121, 'datacategory.create', 'Create Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(122, 'datacategory.view', 'View Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(123, 'datacategory.viewother', 'View Others Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(124, 'datacategory.update', 'Update Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(125, 'datacategory.updateother', 'Update Others Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(126, 'datacategory.delete', 'Delete Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(127, 'datacategory.deleteother', 'Delete Others Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(128, 'datacategory.manage', 'Manage Data Categories', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(129, 'datacategory.bulk-edit', 'Bulk Edit Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(130, 'datacategory.bulk-delete', 'Bulk Delete Data Category', 'DataCategory', 'dataCategories', 1, 0, '2018-08-01 18:14:10', NULL),
(131, 'access.enhancement', 'Access Tab', 'EnhancementModule', 'enhancement', 1, 0, '2018-08-01 18:14:10', NULL),
(132, 'access.extension', 'Access Tab', 'ExtensionModule', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(133, 'extension.update', 'Update Extension', 'Extension', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(134, 'extension.updateother', 'Update Others Extension', 'Extension', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(135, 'extension.delete', 'Delete Extension', 'Extension', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(136, 'extension.deleteother', 'Delete Others Extension', 'Extension', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(137, 'extension.manage', 'Manage Extensions', 'Extension', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(138, 'extension.manageother', 'Manager Others Extension', 'Extension', 'extension', 1, 0, '2018-08-01 18:14:10', NULL),
(139, 'access.localization', 'Access Tab', 'LocalizationModule', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(140, 'city.create', 'Create City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(141, 'city.view', 'View City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(142, 'city.viewother', 'View Others City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(143, 'city.update', 'Update City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(144, 'city.updateother', 'Update Others City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(145, 'city.delete', 'Delete City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(146, 'city.deleteother', 'Delete Others City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(147, 'city.manage', 'Manage Cities', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(148, 'city.bulk-edit', 'Bulk Edit City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(149, 'city.bulk-delete', 'Bulk Delete City', 'City', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(150, 'country.create', 'Create Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(151, 'country.view', 'View Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(152, 'country.viewother', 'View Others Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(153, 'country.update', 'Update Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(154, 'country.updateother', 'Update Others Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(155, 'country.delete', 'Delete Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(156, 'country.deleteother', 'Delete Others Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(157, 'country.manage', 'Manage Countries', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(158, 'country.bulk-edit', 'Bulk Edit Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(159, 'country.bulk-delete', 'Bulk Delete Country', 'Country', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(160, 'currency.create', 'Create Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(161, 'currency.view', 'View Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(162, 'currency.viewother', 'View Others Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(163, 'currency.update', 'Update Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(164, 'currency.updateother', 'Update Others Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(165, 'currency.delete', 'Delete Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(166, 'currency.deleteother', 'Delete Others Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(167, 'currency.manage', 'Manage Currencies', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(168, 'currency.bulk-edit', 'Bulk Edit Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(169, 'currency.bulk-delete', 'Bulk Delete Currency', 'Currency', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(170, 'state.create', 'Create State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(171, 'state.view', 'View State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(172, 'state.viewother', 'View Others State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(173, 'state.update', 'Update State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(174, 'state.updateother', 'Update Others State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(175, 'state.delete', 'Delete State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(176, 'state.deleteother', 'Delete Others State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(177, 'state.manage', 'Manage States', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(178, 'state.bulk-edit', 'Bulk Edit State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(179, 'state.bulk-delete', 'Bulk Delete State', 'State', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(180, 'lengthclass.create', 'Create Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(181, 'lengthclass.view', 'View Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(182, 'lengthclass.viewother', 'View Others Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(183, 'lengthclass.update', 'Update Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(184, 'lengthclass.updateother', 'Update Others Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(185, 'lengthclass.delete', 'Delete Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(186, 'lengthclass.deleteother', 'Delete Others Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(187, 'lengthclass.manage', 'Manage Length Classes', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(188, 'lengthclass.bulk-edit', 'Bulk Edit Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(189, 'lengthclass.bulk-delete', 'Bulk Delete Length Class', 'LengthClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(190, 'weightclass.create', 'Create Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(191, 'weightclass.view', 'View Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(192, 'weightclass.viewother', 'View Others Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(193, 'weightclass.update', 'Update Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(194, 'weightclass.updateother', 'Update Others Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(195, 'weightclass.delete', 'Delete Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(196, 'weightclass.deleteother', 'Delete Others Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(197, 'weightclass.manage', 'Manage Weight Classes', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(198, 'weightclass.bulk-edit', 'Bulk Edit Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(199, 'weightclass.bulk-delete', 'Bulk Delete Weight Class', 'WeightClass', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(200, 'stockstatus.create', 'Create Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(201, 'stockstatus.view', 'View Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(202, 'stockstatus.viewother', 'View Others Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(203, 'stockstatus.update', 'Update Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(204, 'stockstatus.updateother', 'Update Others Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(205, 'stockstatus.delete', 'Delete Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(206, 'stockstatus.deleteother', 'Delete Others Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(207, 'stockstatus.manage', 'Manage Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(208, 'stockstatus.bulk-edit', 'Bulk Edit Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(209, 'stockstatus.bulk-delete', 'Bulk Delete Stock Status', 'StockStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(210, 'orderstatus.create', 'Create Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(211, 'orderstatus.view', 'View Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(212, 'orderstatus.viewother', 'View Others Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(213, 'orderstatus.update', 'Update Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(214, 'orderstatus.updateother', 'Update Others Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(215, 'orderstatus.delete', 'Delete Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(216, 'orderstatus.deleteother', 'Delete Others Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(217, 'orderstatus.manage', 'Manage Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(218, 'orderstatus.bulk-edit', 'Bulk Edit Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(219, 'orderstatus.bulk-delete', 'Bulk Delete Order Status', 'OrderStatus', 'localization', 1, 0, '2018-08-01 18:14:10', NULL),
(220, 'producttaxclass.create', 'Create Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(221, 'producttaxclass.view', 'View Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(222, 'producttaxclass.viewother', 'View Others Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(223, 'producttaxclass.update', 'Update Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(224, 'producttaxclass.updateother', 'Update Others Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(225, 'producttaxclass.delete', 'Delete Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(226, 'producttaxclass.deleteother', 'Delete Others Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(227, 'producttaxclass.manage', 'Manage Product Tax Classes', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(228, 'producttaxclass.bulk-edit', 'Bulk Edit Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(229, 'producttaxclass.bulk-delete', 'Bulk Delete Product Tax Class', 'ProductTaxClass', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(230, 'taxrule.create', 'Create Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(231, 'taxrule.view', 'View Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(232, 'taxrule.viewother', 'View Others Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(233, 'taxrule.update', 'Update Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(234, 'taxrule.updateother', 'Update Others Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(235, 'taxrule.delete', 'Delete Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(236, 'taxrule.deleteother', 'Delete Others Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(237, 'taxrule.manage', 'Manage Tax Rules', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(238, 'taxrule.bulk-edit', 'Bulk Edit Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(239, 'taxrule.bulk-delete', 'Bulk Delete Tax Rule', 'TaxRule', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(240, 'zone.create', 'Create Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(241, 'zone.view', 'View Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(242, 'zone.viewother', 'View Others Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(243, 'zone.update', 'Update Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(244, 'zone.updateother', 'Update Others Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(245, 'zone.delete', 'Delete Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(246, 'zone.deleteother', 'Delete Others Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(247, 'zone.manage', 'Manage Zones', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(248, 'zone.bulk-edit', 'Bulk Edit Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(249, 'zone.bulk-delete', 'Bulk Delete Zone', 'Zone', 'localization/tax', 1, 0, '2018-08-01 18:14:10', NULL),
(250, 'access.manufacturer', 'Access Tab', 'ManufacturerModule', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(251, 'manufacturer.create', 'Create Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(252, 'manufacturer.view', 'View Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(253, 'manufacturer.viewother', 'View Others Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(254, 'manufacturer.update', 'Update Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(255, 'manufacturer.updateother', 'Update Others Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(256, 'manufacturer.delete', 'Delete Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(257, 'manufacturer.deleteother', 'Delete Others Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(258, 'manufacturer.manage', 'Manage Manufacturers', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(259, 'manufacturer.bulk-edit', 'Bulk Edit Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(260, 'manufacturer.bulk-delete', 'Bulk Delete Manufacturer', 'Manufacturer', 'manufacturer', 1, 0, '2018-08-01 18:14:10', NULL),
(261, 'access.marketing', 'Access Tab', 'MarketingModule', 'marketing', 1, 0, '2018-08-01 18:14:10', NULL),
(262, 'marketing.mail', 'Marketing Mails', 'MarketingModule', 'marketing', 1, 0, '2018-08-01 18:14:10', NULL),
(263, 'newsletter.create', 'Create Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(264, 'newsletter.view', 'View Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(265, 'newsletter.viewother', 'View Others Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(266, 'newsletter.update', 'Update Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(267, 'newsletter.updateother', 'Update Others Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(268, 'newsletter.delete', 'Delete Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(269, 'newsletter.deleteother', 'Delete Others Newsletter', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(270, 'newsletter.manage', 'Manage Newsletters', 'Newsletter', 'marketing/newsletter', 1, 0, '2018-08-01 18:14:10', NULL),
(271, 'access.order', 'Access Tab', 'OrderModule', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(272, 'order.create', 'Create Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(273, 'order.view', 'View Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(274, 'order.viewother', 'View Others Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(275, 'order.update', 'Update Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(276, 'order.updateother', 'Update Others Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(277, 'order.delete', 'Delete Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(278, 'order.deleteother', 'Delete Others Order', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(279, 'order.manage', 'Manage Orders', 'Order', 'order', 1, 0, '2018-08-01 18:14:10', NULL),
(280, 'access.payment', 'Access Tab', 'PaymentModule', 'payment', 1, 0, '2018-08-01 18:14:10', NULL),
(281, 'access.shipping', 'Access Tab', 'ShippingModule', 'shipping', 1, 0, '2018-08-01 18:14:10', NULL),
(282, 'access.stores', 'Access Tab', 'StoresModule', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(283, 'store.create', 'Create Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(284, 'store.view', 'View Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(285, 'store.viewother', 'View Others Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(286, 'store.update', 'Update Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(287, 'store.updateother', 'Update Others Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(288, 'store.delete', 'Delete Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(289, 'store.deleteother', 'Delete Others Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(290, 'store.manage', 'Manage Stores', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL),
(291, 'store.bulk-edit', 'Bulk Edit Store', 'Store', 'stores', 1, 0, '2018-08-01 18:14:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cash_on_delivery_transaction`
--

DROP TABLE IF EXISTS `tbl_cash_on_delivery_transaction`;
CREATE TABLE IF NOT EXISTS `tbl_cash_on_delivery_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `payment_status` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `received_date` date NOT NULL,
  `transaction_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_payment_status` (`payment_status`),
  KEY `idx_transaction_id` (`transaction_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
CREATE TABLE IF NOT EXISTS `tbl_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `country_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:02:21'),
(2, 1, 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:02:59'),
(3, 1, 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:03:07'),
(4, 1, 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:03:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_city_translated`
--

DROP TABLE IF EXISTS `tbl_city_translated`;
CREATE TABLE IF NOT EXISTS `tbl_city_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_city_translated`
--

INSERT INTO `tbl_city_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Ambato', 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:02:21'),
(2, 2, 'en-US', 'Latacunga', 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:02:59'),
(3, 3, 'en-US', 'Quito', 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:03:07'),
(4, 4, 'en-US', 'Riobamba', 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:03:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_configuration`
--

DROP TABLE IF EXISTS `tbl_configuration`;
CREATE TABLE IF NOT EXISTS `tbl_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_configuration`
--

INSERT INTO `tbl_configuration` (`id`, `module`, `key`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'application', 'dbAdminUsername', 'root', 1, 1, '2018-08-01 18:14:05', '2018-08-01 18:14:05'),
(2, 'application', 'dbAdminPassword', '', 1, 1, '2018-08-01 18:14:05', '2018-08-01 18:14:05'),
(3, 'application', 'siteName', 'Rapidito', 1, 1, '2018-08-01 18:14:05', '2018-08-06 03:15:55'),
(4, 'application', 'siteDescription', 'Fast Food WebSite', 1, 1, '2018-08-01 18:14:06', '2018-08-06 03:15:55'),
(5, 'application', 'superUsername', 'admin', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(6, 'application', 'superEmail', 'villajohnny@gmail.com', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(7, 'application', 'superPassword', 'admin', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(8, 'application', 'dbHost', 'localhost', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(9, 'application', 'dbPort', '3306', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(10, 'application', 'dbName', 'whatrapidito', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(11, 'application', 'dbUsername', 'user', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(12, 'application', 'dbPassword', 'user', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(13, 'application', 'environment', 'production', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(14, 'application', 'demoData', '1', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(15, 'application', 'timezone', 'America/Bogota', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(16, 'application', 'logo', 'NDkxOWE4YTcat_PRODUCTO RAPIDITO2.png', 1, 1, '2018-08-01 18:14:06', '2018-08-06 03:15:55'),
(17, 'application', 'uploadInstance', NULL, 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(18, 'application', 'enableSchemaCache', '1', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(19, 'application', 'schemaCachingDuration', '3600', 1, 1, '2018-08-01 18:14:06', '2018-08-01 18:14:06'),
(20, 'application', 'appRebuild', '', 1, 1, '2018-08-01 18:14:10', '2018-08-01 18:14:10'),
(21, 'users', 'passwordTokenExpiry', '3600', 1, 1, '2018-08-01 18:14:10', '2018-08-01 18:14:10'),
(22, 'application', 'installTime', '2018-08-01 18:14:40', 1, 1, '2018-08-01 18:14:40', '2018-08-01 18:14:40'),
(23, 'settings', 'emailSettings', 'a:10:{s:8:\"fromName\";s:8:\"Rapidito\";s:11:\"fromAddress\";s:19:\"shoniisra@gmail.com\";s:14:\"replyToAddress\";s:19:\"shoniisra@gmail.com\";s:13:\"sendingMethod\";s:4:\"mail\";s:8:\"smtpHost\";s:14:\"smtp.gmail.com\";s:8:\"smtpPort\";s:2:\"25\";s:12:\"smtpUsername\";s:4:\"user\";s:12:\"smtpPassword\";s:8:\"user123.\";s:8:\"smtpAuth\";i:0;s:8:\"testMode\";s:1:\"1\";}', 1, 1, '2018-08-06 01:42:10', '2018-08-06 01:42:10'),
(24, 'application', 'metaKeywords', 'restaurante\r\ncomida\r\nfastfood\r\nrapidito', 1, 1, '2018-08-06 03:15:55', '2018-08-06 03:15:55'),
(25, 'application', 'metaDescription', 'restaurante\r\ncomida\r\nfastfood\r\nrapidito', 1, 1, '2018-08-06 03:15:55', '2018-08-06 03:15:55'),
(26, 'application', 'siteMaintenance', '0', 1, 1, '2018-08-06 03:15:55', '2018-08-06 03:15:55'),
(27, 'application', 'tagline', 'No te quedes con hambre!', 1, 1, '2018-08-06 03:15:55', '2018-08-06 03:15:55'),
(28, 'application', 'customMaintenanceModeMessage', '', 1, 1, '2018-08-06 03:15:55', '2018-08-06 03:15:55'),
(29, 'application', 'logoAltText', '', 1, 1, '2018-08-06 03:15:55', '2018-08-06 03:15:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postcode_required` smallint(1) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `postcode_required`, `status`, `iso_code_2`, `iso_code_3`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 0, 1, 'IN', 'IND', 1, 1, '2018-08-01 18:14:11', '2018-08-06 01:02:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_country_translated`
--

DROP TABLE IF EXISTS `tbl_country_translated`;
CREATE TABLE IF NOT EXISTS `tbl_country_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address_format` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_country_translated`
--

INSERT INTO `tbl_country_translated` (`id`, `owner_id`, `language`, `name`, `address_format`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Ecuador', '', 1, 1, '2018-08-01 18:14:11', '2018-08-06 01:02:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_currency`
--

DROP TABLE IF EXISTS `tbl_currency`;
CREATE TABLE IF NOT EXISTS `tbl_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(1) DEFAULT NULL,
  `value` decimal(10,2) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_place` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_symbol_left` (`symbol_left`),
  KEY `idx_code` (`code`),
  KEY `idx_symbol_right` (`symbol_right`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `status`, `value`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, '1.00', 'USD', '$', '', '2', 1, 1, '2018-08-01 18:14:12', '2018-08-01 18:14:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_currency_translated`
--

DROP TABLE IF EXISTS `tbl_currency_translated`;
CREATE TABLE IF NOT EXISTS `tbl_currency_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_currency_translated`
--

INSERT INTO `tbl_currency_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'US Dollars', 1, 1, '2018-08-01 18:14:12', '2018-08-01 18:14:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` int(11) NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `timezone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `username`, `unique_id`, `password_reset_token`, `password_hash`, `auth_key`, `status`, `person_id`, `login_ip`, `last_login`, `timezone`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'wholesalecustomer', 10000, NULL, '$2y$13$L8Fo2cupMB9GsjiNdp/0UORZvHHnhZqP3KIOjesPZE/KQl6ycN0kW', 'u4D5hkYAWo_3-WheEoemkjdCmqcaPdty', 1, 3, NULL, NULL, 'Asia/Kolkata', 1, 1, '2018-08-01 18:14:33', '2018-08-01 18:14:33'),
(2, 'retailcustomer', 10001, NULL, '$2y$13$T5Bqrm9gguSOYh1uQJB91eNcadd.MSqWvRjusn3q4dAYYijOIzXF2', 'q-vyVZEf_z1y0NZj_X4tnDuQW3jYs5NT', 1, 4, NULL, NULL, 'Asia/Kolkata', 1, 1, '2018-08-01 18:14:37', '2018-08-01 18:14:37'),
(3, 'defaultcustomer', 10002, NULL, '$2y$13$zFiZHXGx9oAvMQcHIxGPvet867U2OkRkywLMiDOFUKupgTRMVMMT6', '0RzHKETrihaYs8hCsT6hogx2W9HIzFFN', 1, 5, NULL, NULL, 'Asia/Kolkata', 1, 1, '2018-08-01 18:14:39', '2018-08-01 18:14:39'),
(4, 'anthoro', 10003, NULL, '$2y$13$CRQ5xiKvrRBfzxmkvN/N9uJlY2tRiDZs3BtqxiIYNvvqABbkWO4qG', 'Z0SAh8O1WssIvWFsPE21ZCLRxZ3QPplD', 1, 6, '::1', '2018-08-06 14:42:17', 'America/Guayaquil', 0, 1, '2018-08-05 21:12:09', '2018-08-05 21:15:15'),
(5, 'user', 10004, NULL, '$2y$13$Q7ACA7lBywxBQhpIVPAKpez0cEP2ikpJ5kMxHFbeNqgPIzfFfJiYu', 'ICtBxWjo6HYNyje2XhOrCj-dl3ik-7bk', 1, 7, '::1', '2018-08-06 12:33:52', 'America/Guayaquil', 1, 1, '2018-08-06 00:04:45', '2018-08-06 00:04:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer_activity`
--

DROP TABLE IF EXISTS `tbl_customer_activity`;
CREATE TABLE IF NOT EXISTS `tbl_customer_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_customer_activity`
--

INSERT INTO `tbl_customer_activity` (`id`, `customer_id`, `key`, `data`, `ip`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 4, 'register', 'a:2:{s:11:\"customer_id\";i:4;s:4:\"name\";s:15:\"Anthony Cabrera\";}', '::1', 0, 0, '2018-08-05 21:12:11', '2018-08-05 21:12:11'),
(2, 4, 'login', 'a:2:{s:11:\"customer_id\";i:4;s:4:\"name\";s:15:\"Anthony Cabrera\";}', '::1', 4, 4, '2018-08-05 21:15:38', '2018-08-05 21:15:38'),
(3, 5, 'login', 'a:2:{s:11:\"customer_id\";i:5;s:4:\"name\";s:12:\"Daniel Lopez\";}', '::1', 5, 5, '2018-08-06 00:05:00', '2018-08-06 00:05:00'),
(4, 5, 'login', 'a:2:{s:11:\"customer_id\";i:5;s:4:\"name\";s:12:\"Daniel Lopez\";}', '::1', 5, 5, '2018-08-06 12:33:53', '2018-08-06 12:33:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer_download_mapping`
--

DROP TABLE IF EXISTS `tbl_customer_download_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_customer_download_mapping` (
  `customer_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_download_id` (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer_metadata`
--

DROP TABLE IF EXISTS `tbl_customer_metadata`;
CREATE TABLE IF NOT EXISTS `tbl_customer_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8_unicode_ci,
  `wishlist` text COLLATE utf8_unicode_ci,
  `compareproducts` text COLLATE utf8_unicode_ci,
  `currency` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_currency` (`currency`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_customer_metadata`
--

INSERT INTO `tbl_customer_metadata` (`id`, `customer_id`, `cart`, `wishlist`, `compareproducts`, `currency`, `language`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 1, 1, '2018-08-01 18:14:33', '2018-08-01 18:14:33'),
(2, 2, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 1, 1, '2018-08-01 18:14:37', '2018-08-01 18:14:37'),
(3, 3, 'a:0:{}', 'a:0:{}', 'a:0:{}', NULL, NULL, 1, 1, '2018-08-01 18:14:39', '2018-08-01 18:14:39'),
(4, 4, 'a:1:{i:73;a:16:{s:5:\"price\";s:4:\"1.80\";s:12:\"optionsPrice\";i:0;s:4:\"name\";s:16:\"Nuggets de Pollo\";s:15:\"requireShipping\";s:1:\"1\";s:16:\"displayedOptions\";N;s:11:\"optionsData\";s:6:\"a:0:{}\";s:12:\"inputOptions\";s:6:\"a:0:{}\";s:9:\"productId\";s:2:\"73\";s:3:\"qty\";s:1:\"1\";s:5:\"model\";s:2:\"73\";s:9:\"thumbnail\";s:34:\"MDEzMDI3Zmpro_NUGGETS RAPIDITO.png\";s:8:\"itemCode\";s:2:\"73\";s:11:\"stockStatus\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"tax\";s:4:\"0.00\";s:10:\"totalPrice\";d:1.8;}}', 'a:0:{}', 'a:0:{}', 'USD', 'en-US', 0, 4, '2018-08-05 21:12:09', '2018-08-06 09:47:02'),
(5, 5, 'a:4:{i:61;a:16:{s:5:\"price\";s:4:\"0.75\";s:12:\"optionsPrice\";i:0;s:4:\"name\";s:15:\"Coca Cola 44 0z\";s:15:\"requireShipping\";s:1:\"1\";s:16:\"displayedOptions\";N;s:11:\"optionsData\";s:6:\"a:0:{}\";s:12:\"inputOptions\";s:6:\"a:0:{}\";s:9:\"productId\";s:2:\"61\";s:3:\"qty\";s:1:\"1\";s:5:\"model\";s:2:\"61\";s:9:\"thumbnail\";s:32:\"ZjhjNzE2ZWpro_COCA COLA 44oz.png\";s:8:\"itemCode\";s:2:\"61\";s:11:\"stockStatus\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"tax\";s:4:\"0.00\";s:10:\"totalPrice\";s:4:\"0.75\";}i:68;a:16:{s:5:\"price\";s:4:\"1.50\";s:12:\"optionsPrice\";i:0;s:4:\"name\";s:15:\"Jugo de Naranja\";s:15:\"requireShipping\";s:1:\"1\";s:16:\"displayedOptions\";N;s:11:\"optionsData\";s:6:\"a:0:{}\";s:12:\"inputOptions\";s:6:\"a:0:{}\";s:9:\"productId\";s:2:\"68\";s:3:\"qty\";s:1:\"1\";s:5:\"model\";s:2:\"68\";s:9:\"thumbnail\";s:35:\"ZmU3ZGM3NTpro_JUGO NARANJA 22oz.png\";s:8:\"itemCode\";s:2:\"68\";s:11:\"stockStatus\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"tax\";i:0;s:10:\"totalPrice\";s:4:\"1.50\";}i:64;a:16:{s:5:\"price\";s:4:\"1.25\";s:12:\"optionsPrice\";i:0;s:4:\"name\";s:12:\"Pilsener peq\";s:15:\"requireShipping\";s:1:\"1\";s:16:\"displayedOptions\";N;s:11:\"optionsData\";s:6:\"a:0:{}\";s:12:\"inputOptions\";s:6:\"a:0:{}\";s:9:\"productId\";s:2:\"64\";s:3:\"qty\";i:2;s:5:\"model\";s:2:\"64\";s:9:\"thumbnail\";s:39:\"NTRiY2FkMzLATA_PILSENER_2_1024x1024.jpg\";s:8:\"itemCode\";s:2:\"64\";s:11:\"stockStatus\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"tax\";s:4:\"0.00\";s:10:\"totalPrice\";s:4:\"1.25\";}i:57;a:16:{s:5:\"price\";d:1.25;s:12:\"optionsPrice\";i:0;s:4:\"name\";s:19:\"Helado de Chocolate\";s:15:\"requireShipping\";s:1:\"1\";s:16:\"displayedOptions\";N;s:11:\"optionsData\";s:6:\"a:0:{}\";s:12:\"inputOptions\";s:6:\"a:0:{}\";s:9:\"productId\";s:2:\"57\";s:3:\"qty\";i:4;s:5:\"model\";s:2:\"57\";s:9:\"thumbnail\";s:37:\"ZDNjMjUxMTpro_CHOCOLATE ICE CREAM.png\";s:8:\"itemCode\";s:2:\"57\";s:11:\"stockStatus\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"tax\";s:4:\"0.00\";s:10:\"totalPrice\";d:1.25;}}', 'a:1:{i:0;s:2:\"69\";}', 'a:1:{i:0;s:2:\"71\";}', 'USD', 'en-US', 1, 5, '2018-08-06 00:04:46', '2018-08-06 12:49:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer_online`
--

DROP TABLE IF EXISTS `tbl_customer_online`;
CREATE TABLE IF NOT EXISTS `tbl_customer_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `url` varchar(164) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(164) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ip` (`ip`),
  KEY `idx_customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_data_category`
--

DROP TABLE IF EXISTS `tbl_data_category`;
CREATE TABLE IF NOT EXISTS `tbl_data_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(1) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_data_category`
--

INSERT INTO `tbl_data_category` (`id`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-08-01 18:14:16', '2018-08-01 18:14:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_data_category_translated`
--

DROP TABLE IF EXISTS `tbl_data_category_translated`;
CREATE TABLE IF NOT EXISTS `tbl_data_category_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_data_category_translated`
--

INSERT INTO `tbl_data_category_translated` (`id`, `owner_id`, `language`, `name`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Categoria Principal', 'Categoria principal', 1, 1, '2018-08-01 18:14:16', '2018-08-01 18:14:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_extension`
--

DROP TABLE IF EXISTS `tbl_extension`;
CREATE TABLE IF NOT EXISTS `tbl_extension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_version` text COLLATE utf8_unicode_ci,
  `status` smallint(1) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`),
  KEY `idx_status` (`status`),
  KEY `idx_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_extension`
--

INSERT INTO `tbl_extension` (`id`, `category`, `author`, `version`, `product_version`, `status`, `code`, `data`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'payment', 'WhatACart', '1.0', '2.0.0', 0, 'cashondelivery', NULL, 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(2, 'payment', 'WhatACart', '1.0', '2.0.0', 0, 'paypal_standard', NULL, 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(3, 'shipping', 'WhatACart', '1.0', '2.0.0', 0, 'flat', NULL, 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(4, 'shipping', 'WhatACart', '1.0', '2.0.0', 1, 'free', NULL, 1, 1, '2018-08-01 18:14:23', '2018-08-06 00:53:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_extension_translated`
--

DROP TABLE IF EXISTS `tbl_extension_translated`;
CREATE TABLE IF NOT EXISTS `tbl_extension_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_extension_translated`
--

INSERT INTO `tbl_extension_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Cash On Delivery', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(2, 2, 'en-US', 'Paypal Standard', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(3, 3, 'en-US', 'Flat Rate', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(4, 4, 'en-US', 'Free Shipping', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_group`
--

DROP TABLE IF EXISTS `tbl_group`;
CREATE TABLE IF NOT EXISTS `tbl_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `category` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'system',
  `path` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_level` (`level`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `parent_id`, `level`, `status`, `category`, `path`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Administrador', 0, 0, 1, 'system', '1', 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(2, 'General', 0, 0, 1, 'customer', '2', 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(3, 'Publico', 0, 0, 1, 'customer', '3', 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(4, 'Menorista', 0, 0, 1, 'customer', '4', 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_group_member`
--

DROP TABLE IF EXISTS `tbl_group_member`;
CREATE TABLE IF NOT EXISTS `tbl_group_member` (
  `group_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  UNIQUE KEY `idx_group_member` (`group_id`,`member_id`,`member_type`),
  KEY `idx_member_type` (`member_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_group_member`
--

INSERT INTO `tbl_group_member` (`group_id`, `member_id`, `member_type`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 2, 'user', 1, 1, '2018-08-01 18:14:20', '2018-08-01 18:14:20'),
(2, 3, 'customer', 1, 1, '2018-08-01 18:14:39', '2018-08-01 18:14:39'),
(2, 4, 'customer', 1, 1, '2018-08-05 21:15:16', '2018-08-05 21:15:16'),
(2, 5, 'customer', 1, 1, '2018-08-06 00:04:46', '2018-08-06 00:04:46'),
(3, 1, 'customer', 1, 1, '2018-08-01 18:14:33', '2018-08-01 18:14:33'),
(4, 2, 'customer', 1, 1, '2018-08-01 18:14:37', '2018-08-01 18:14:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_invoice`
--

DROP TABLE IF EXISTS `tbl_invoice`;
CREATE TABLE IF NOT EXISTS `tbl_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` int(16) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price_excluding_tax` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `total_items` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_unique_id` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_invoice_translated`
--

DROP TABLE IF EXISTS `tbl_invoice_translated`;
CREATE TABLE IF NOT EXISTS `tbl_invoice_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `status` smallint(1) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_locale` (`locale`),
  KEY `idx_sort_order` (`sort_order`),
  KEY `idx_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `locale`, `image`, `sort_order`, `status`, `code`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'es-Es', 'en-US', '', 1, 1, 'en-US', 1, 1, '2018-08-01 18:14:10', '2018-08-01 18:14:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_length_class`
--

DROP TABLE IF EXISTS `tbl_length_class`;
CREATE TABLE IF NOT EXISTS `tbl_length_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unit` (`unit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_length_class`
--

INSERT INTO `tbl_length_class` (`id`, `unit`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'm', '1.00', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13'),
(2, 'cm', '100.00', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13'),
(3, 'in', '39.37', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_length_class_translated`
--

DROP TABLE IF EXISTS `tbl_length_class_translated`;
CREATE TABLE IF NOT EXISTS `tbl_length_class_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_length_class_translated`
--

INSERT INTO `tbl_length_class_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'metro', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13'),
(2, 2, 'en-US', 'centimetro', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13'),
(3, 3, 'en-US', 'pulgada', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_manufacturer`
--

DROP TABLE IF EXISTS `tbl_manufacturer`;
CREATE TABLE IF NOT EXISTS `tbl_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`id`, `name`, `image`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Pepsi', 'Y2E0NzRiYjprovpepsi.jpg', 1, 1, 1, '2018-08-01 18:14:15', '2018-08-05 23:08:57'),
(3, 'Maggi', 'NmViNDcxMzprovmaggi.png', 1, 1, 1, '2018-08-01 18:14:16', '2018-08-05 23:08:46'),
(4, 'Gustadina', 'NWM4MTZmZmprovgustadina.jpg', 1, 1, 1, '2018-08-01 18:14:16', '2018-08-05 23:08:21'),
(5, 'Frutas Naturales', 'YTgzNjE2Zjcat_FRUTAS.png', 1, 1, 1, '2018-08-05 23:11:11', '2018-08-05 23:11:18'),
(6, 'Especialidad del Chef', 'NGU4ZGQ2MGprovchef.jpg', 1, 1, 1, '2018-08-05 23:12:00', '2018-08-05 23:17:20'),
(8, 'Corneto', 'MzEwZWNhZWprovcorneto.jpg', 1, 1, 1, '2018-08-05 23:19:05', '2018-08-05 23:19:05'),
(9, 'Corona', 'YjJjM2MxOTprovcorona.jpg', 1, 1, 1, '2018-08-05 23:20:30', '2018-08-05 23:20:30'),
(10, 'Nescafe', 'NzQ3NTk0OTprovnescafe.png', 1, 1, 1, '2018-08-05 23:20:50', '2018-08-05 23:20:50'),
(11, 'Comida Organica', 'MDlmY2FhYmprovorganicfood.jpg', 1, 1, 1, '2018-08-05 23:21:19', '2018-08-05 23:21:19'),
(12, 'Pilsener', 'ZTM3YzFiNDprovpilsener.jpg', 1, 1, 1, '2018-08-05 23:22:11', '2018-08-05 23:22:11'),
(13, 'Pinguino', 'NjIyZmJjY2provpinguino.gif', 1, 1, 1, '2018-08-05 23:22:29', '2018-08-05 23:22:29'),
(14, 'Pronaca', 'OWI1ODQxNWprovpronaca.png', 1, 1, 1, '2018-08-05 23:22:47', '2018-08-05 23:22:47'),
(18, 'Cocacola R', 'OTI4NmFhODpovcoke.jpg', 1, 1, 1, '2018-08-05 23:28:36', '2018-08-05 23:29:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_newsletter`
--

DROP TABLE IF EXISTS `tbl_newsletter`;
CREATE TABLE IF NOT EXISTS `tbl_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `subject` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_to` (`to`),
  KEY `idx_subject` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_newsletter_customers`
--

DROP TABLE IF EXISTS `tbl_newsletter_customers`;
CREATE TABLE IF NOT EXISTS `tbl_newsletter_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `email` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_newsletter_translated`
--

DROP TABLE IF EXISTS `tbl_newsletter_translated`;
CREATE TABLE IF NOT EXISTS `tbl_newsletter_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notification`
--

DROP TABLE IF EXISTS `tbl_notification`;
CREATE TABLE IF NOT EXISTS `tbl_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `priority` smallint(1) NOT NULL DEFAULT '1',
  `senddatetime` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_modulename` (`modulename`),
  KEY `idx_type` (`type`),
  KEY `idx_status` (`status`),
  KEY `idx_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `modulename`, `type`, `data`, `status`, `priority`, `senddatetime`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'users', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32323a226d6179616e6b406d6179616e6b73746f72652e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3238323a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e53746f7265204f776e65723c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e73746f72656f776e65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e616263643132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-08-01 18:14:22', 1, 0, '2018-08-01 18:14:22', NULL),
(2, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a33313a2277686f6c6573616c65637573746f6d6572407768617461636172742e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3331353a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e57686f6c6573616c65637573746f6d65722077686f6c6573616c65637573746f6d65726c6173743c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e77686f6c6573616c65637573746f6d65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e77633132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-08-01 18:14:35', 1, 0, '2018-08-01 18:14:35', NULL),
(3, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32383a2272657461696c637573746f6d6572407768617461636172742e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3330363a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e52657461696c637573746f6d65722072657461696c637573746f6d65726c6173743c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e72657461696c637573746f6d65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e72633132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-08-01 18:14:38', 1, 0, '2018-08-01 18:14:38', NULL),
(4, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32393a2264656661756c74637573746f6d6572407768617461636172742e636f6d223b733a373a227375626a656374223b733a33323a224d79204170706c69636174696f6e207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a3330393a223c7461626c653e3c74723e3c74643e66756c6c4e616d653c2f74643e3c74643e44656661756c74637573746f6d65722064656661756c74637573746f6d65726c6173743c2f74643e3c2f74723e3c74723e3c74643e757365726e616d653c2f74643e3c74643e64656661756c74637573746f6d65723c2f74643e3c2f74723e3c74723e3c74643e70617373776f72643c2f74643e3c74643e64633132332140233c2f74643e3c2f74723e3c74723e3c74643e6170706e616d653c2f74643e3c74643e4d79204170706c69636174696f6e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c3c2f74643e3c74643e3c2f74643e3c2f74723e3c74723e3c74643e636f6e6669726d656d61696c4c6162656c3c2f74643e3c74643e3c2f74643e3c2f74723e3c2f7461626c653e223b7d, 0, 1, '2018-08-01 18:14:40', 1, 0, '2018-08-01 18:14:40', NULL),
(5, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32303a22616e74686f726f2e353340676d61696c2e636f6d223b733a373a227375626a656374223b733a32333a22526567697374726172206e7565766f20636c69656e7465223b733a343a22626f6479223b733a3630323a223c703e57656c636f6d6520416e74686f6e7920436162726572612e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c7920617420526170696469746f3c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e20616e74686f726f3c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207177657274793132332e3c2f703e0d0a0d0a506c6561736520636f6e6669726d20796f757220656d61696c20627920636c69636b696e6720746865206c696e6b2062656c6f7720746f20616374697661746520796f7572206163636f756e742e3c62722f3e3c62722f3e0d0a3c6120687265663d27687474703a2f2f6c6f63616c686f73742f72656c656173652d322e302e312f72656c656173652d322e302e312f637573746f6d65722f736974652f76616c69646174652d656d61696c2d616464726573733f686173683d4a444a354a44457a4a454e535554563461557432636c4a435a6e7034625774325469394f4f58564b62466b7964464a705246707a4d304a306358687053566c4f646e5a7851554a69613164504e48464826656d61696c3d616e74686f726f2e353340676d61696c2e636f6d273e436f6e6669726d20796f757220656d61696c206163636f756e743c2f613e3c62722f3e3c62722f3e0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e0d0a0d0a223b7d, 1, 1, '2018-08-05 21:12:11', 1, 0, '2018-08-05 21:12:11', NULL),
(6, 'products', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a363a226a6f686e6e79223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a373a227375626a656374223b733a33393a22526576697369c3b36e2064652050726f647563746f207c20436f636120436f6c6120323220307a223b733a343a22626f6479223b733a3137383a223c703e0d0a2020202048656c6c6f2c3c62722f3e0d0a202020206a6f686e6e792068617320706f737465642061206e657720726576696577206f6e20436f636120436f6c6120323220307a2e0d0a3c2f703e0d0a3c703e0d0a20202020546865207265766965772069733a3c62722f3e0d0a20202020636865766572653c62722f3e3c62722f3e0d0a202020205468616e6b732c3c6272202f3e0d0a2020202053797374656d2041646d696e0d0a3c2f703e223b7d, 1, 1, '2018-08-05 23:23:40', 1, 0, '2018-08-05 23:23:40', NULL),
(7, 'customer', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a31313a2253757065722041646d696e223b733a31313a2266726f6d41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32303a2273686f6e69697372613140676d61696c2e636f6d223b733a373a227375626a656374223b733a32333a22526567697374726172206e7565766f20636c69656e7465223b733a343a22626f6479223b733a3236313a223c703e57656c636f6d652044616e69656c204c6f70657a2e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c7920617420526170696469746f3c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e20757365723c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a20757365723132332e3c2f703e0d0a0d0a0d0a0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e0d0a0d0a223b7d, 1, 1, '2018-08-06 00:04:47', 1, 0, '2018-08-06 00:04:47', NULL),
(8, 'settings', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a383a22526170696469746f223b733a31313a2266726f6d41646472657373223b733a31393a2273686f6e696973726140676d61696c2e636f6d223b733a393a22746f41646472657373223b733a32313a2276696c6c616a6f686e6e7940676d61696c2e636f6d223b733a373a227375626a656374223b733a32363a22526170696469746f207c2044656661756c74205375626a656374223b733a343a22626f6479223b733a313139343a224d6573736167652d49443a203c3763323438623064656337623930633964663533336664326662376463363533406c6f63616c686f73743e0d0a446174653a204d6f6e2c2030362041756720323031382030313a34323a3130202d303530300d0a5375626a6563743a20526170696469746f207c2044656661756c74205375626a6563740d0a46726f6d3a20526170696469746f203c73686f6e696973726140676d61696c2e636f6d3e0d0a546f3a2076696c6c616a6f686e6e7940676d61696c2e636f6d0d0a4d494d452d56657273696f6e3a20312e300d0a436f6e74656e742d547970653a206d756c7469706172742f616c7465726e61746976653b0d0a20626f756e646172793d225f3d5f73776966745f76345f313533333533373733305f65336365366631323439653331336138333639636131306534306365663432355f3d5f220d0a0d0a0d0a2d2d5f3d5f73776966745f76345f313533333533373733305f65336365366631323439653331336138333639636131306534306365663432355f3d5f0d0a436f6e74656e742d547970653a20746578742f706c61696e3b20636861727365743d7574662d380d0a436f6e74656e742d5472616e736665722d456e636f64696e673a2071756f7465642d7072696e7461626c650d0a0d0a6d6573736167655468697320697320612074657374206d6573736167656170706e616d65526170696469746f0d0a0d0a2d2d5f3d5f73776966745f76345f313533333533373733305f65336365366631323439653331336138333639636131306534306365663432355f3d5f0d0a436f6e74656e742d547970653a20746578742f68746d6c3b20636861727365743d7574662d380d0a436f6e74656e742d5472616e736665722d456e636f64696e673a2071756f7465642d7072696e7461626c650d0a0d0a3c21444f43545950452068746d6c205055424c494320222d2f2f5733432f2f445444205848544d4c20312e30205374726963742f2f454e222022687474703a2f2f7777772e77332e6f72673d0d0a2f54522f7868746d6c312f4454442f7868746d6c312d7374726963742e647464223e0d0a3c68746d6c20786d6c6e733d334422687474703a2f2f7777772e77332e6f72672f313939392f3d0d0a7868746d6c223e0d0a3c686561643e0d0a202020203c6d65746120687474702d65717569763d334422436f6e74656e742d547970652220636f6e74656e743d334422746578742f68743d0d0a6d6c3b20636861727365743d33445554462d3822202f3e0d0a202020203c7469746c653e3c2f7469746c653e0d0a202020203c2f686561643e0d0a3c626f64793e0d0a202020203d0d0a202020203c7461626c653e3c74723e3c74643e6d6573736167653c2f74643e3c74643e5468697320697320612074657374206d6573736167653c2f74643e3c2f74723e3c74723e3c74643e3d0d0a6170706e616d653c2f74643e3c74643e526170696469746f3c2f74643e3c2f74723e3c2f7461626c653e202020203c2f626f64793e0d0a3c2f68746d6c3e0d0a0d0a0d0a2d2d5f3d5f73776966745f76345f313533333533373733305f65336365366631323439653331336138333639636131306534306365663432355f3d5f2d2d0d0a223b7d, 1, 1, '2018-08-06 01:42:10', 1, 0, '2018-08-06 01:42:10', NULL),
(9, 'front', 'email', 0x613a353a7b733a383a2266726f6d4e616d65223b733a343a226a75616e223b733a31313a2266726f6d41646472657373223b733a32303a2273686f6e69697372613240676d61696c2e636f6d223b733a393a22746f41646472657373223b733a31393a2273686f6e696973726140676d61696c2e636f6d223b733a373a227375626a656374223b733a31373a226d656e73616a6520646520707275656261223b733a343a22626f6479223b733a3139303a223c7461626c653e3c74723e3c74643e6e616d653c2f74643e3c74643e6a75616e3c2f74643e3c2f74723e3c74723e3c74643e656d61696c3c2f74643e3c74643e73686f6e69697372613240676d61696c2e636f6d3c2f74643e3c2f74723e3c74723e3c74643e7375626a6563743c2f74643e3c74643e6d656e73616a65206465207072756562613c2f74643e3c2f74723e3c74723e3c74643e6d6573736167653c2f74643e3c74643e3131323c2f74643e3c2f74723e3c2f7461626c653e223b7d, 1, 1, '2018-08-06 01:46:48', 1, 0, '2018-08-06 01:46:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notification_layout`
--

DROP TABLE IF EXISTS `tbl_notification_layout`;
CREATE TABLE IF NOT EXISTS `tbl_notification_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notification_layout_translated`
--

DROP TABLE IF EXISTS `tbl_notification_layout_translated`;
CREATE TABLE IF NOT EXISTS `tbl_notification_layout_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notification_template`
--

DROP TABLE IF EXISTS `tbl_notification_template`;
CREATE TABLE IF NOT EXISTS `tbl_notification_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `notifykey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_notifykey` (`notifykey`),
  KEY `idx_type` (`type`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_notification_template`
--

INSERT INTO `tbl_notification_template` (`id`, `type`, `notifykey`, `layout_id`, `status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'email', 'createUser', NULL, 1, 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(2, 'email', 'changepassword', NULL, 1, 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(3, 'email', 'forgotpassword', NULL, 1, 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(4, 'email', 'productReview', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(5, 'email', 'orderCompletion', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(6, 'email', 'orderReceived', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(7, 'email', 'orderUpdate', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(8, 'email', 'sendMail', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(9, 'email', 'sendNewsletter', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(10, 'email', 'createCustomer', NULL, 1, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notification_template_translated`
--

DROP TABLE IF EXISTS `tbl_notification_template_translated`;
CREATE TABLE IF NOT EXISTS `tbl_notification_template_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_subject` (`subject`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_notification_template_translated`
--

INSERT INTO `tbl_notification_template_translated` (`id`, `owner_id`, `language`, `subject`, `content`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Registro Nuevo Usuario', 0x3c703e57656c636f6d65207b7b66756c6c4e616d657d7d2e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c79206174207b7b6170706e616d657d7d3c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e207b7b757365726e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207b7b70617373776f72647d7d3c2f703e0d0a0d0a7b7b636f6e6669726d656d61696c4c6162656c7d7d0d0a7b7b636f6e6669726d656d61696c7d7d0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e, 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(2, 2, 'en-US', 'Contraseña Cambiada', 0x3c703e44656172207b7b66756c6c4e616d657d7d2c203c62722f3e3c62722f3e596f75722070617373776f726420686173206265656e206368616e67656420746f207b7b70617373776f72647d7d2e0d0a3c62722f3e3c62722f3e0d0a5468616e6b733c62722f3e0d0a53797374656d2041646d696e3c2f703e, 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(3, 3, 'en-US', 'Haz olvidado tu contraseña', 0x3c703e44656172207b7b66756c6c4e616d657d7d2c3c62722f3e0d0a596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c62723e0d0a3c7374726f6e673e557365726e616d653a3c2f7374726f6e673e207b7b757365726e616d657d7d3c62723e0d0a3c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207b7b70617373776f72647d7d0d0a3c62722f3e3c62722f3e0d0a5468616e6b733c62723e0d0a53797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-08-01 18:14:11', '2018-08-01 18:14:11'),
(4, 4, 'en-US', 'Revisión de Producto | {{productName}}', 0x3c703e0d0a2020202048656c6c6f2c3c62722f3e0d0a202020207b7b637573746f6d65726e616d657d7d2068617320706f737465642061206e657720726576696577206f6e207b7b70726f647563746e616d657d7d2e0d0a3c2f703e0d0a3c703e0d0a20202020546865207265766965772069733a3c62722f3e0d0a202020207b7b7265766965777d7d3c62722f3e3c62722f3e0d0a202020205468616e6b732c3c6272202f3e0d0a2020202053797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(5, 5, 'en-US', 'Completar la orden', 0x3c703e446561722c207b7b637573746f6d65726e616d657d7d3c2f703e0d0a3c703e0d0a20202020596f7572206f7264657220237b7b6f726465726e756d6265727d7d2070726f63657373696e6720697320636f6d706c65746564206f6e207b7b6f72646572646174657d7d2e0d0a3c2f703e0d0a7b7b6f726465724c696e6b7d7d0d0a3c703e0d0a202020205468616e6b20596f752c203c62722f3e200d0a2020202053797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(6, 6, 'en-US', 'Order Recibida', 0x3c646976207374796c653d2277696474683a2036383070783b223e0d0a20203c70207374796c653d226d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323070783b223e5468616e6b20796f7520666f7220796f757220696e74657265737420696e207b7b73746f72654e616d657d7d2070726f64756374732e20596f7572206f7264657220686173206265656e20726563656976656420616e642077696c6c2062652070726f636573736564206f6e6365207061796d656e7420686173206265656e20636f6e6669726d65642e3c2f703e0d0a20207b7b6f726465724c696e6b7d7d0d0a20203c7461626c65207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b2077696474683a20313030253b20626f726465722d746f703a2031707820736f6c696420234444444444443b20626f726465722d6c6566743a2031707820736f6c696420234444444444443b206d617267696e2d626f74746f6d3a20323070783b223e0d0a202020203c74686561643e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b20626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b206261636b67726f756e642d636f6c6f723a20234546454645463b20666f6e742d7765696768743a20626f6c643b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b20636f6c6f723a20233232323232323b2220636f6c7370616e3d2232223e0d0a2020202020202020202020204f726465722044657461696c730d0a20202020202020203c2f74643e0d0a2020202020203c2f74723e0d0a202020203c2f74686561643e0d0a202020203c74626f64793e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b09626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b223e0d0a202020202020202020203c623e4f726465722049443a3c2f623e207b7b6f7264657249647d7d3c6272202f3e0d0a202020202020202020203c623e44617465206f66204f726465723a3c2f623e207b7b6461746541646465647d7d3c6272202f3e0d0a202020202020202020203c623e5061796d656e74204d6574686f643a3c2f623e207b7b7061796d656e744d6574686f647d7d3c6272202f3e0d0a202020202020202020207b7b7368697070696e674d6574686f647d7d0d0a202020202020202020203c2f74643e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b09626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b223e0d0a202020202020202020203c623e456d61696c3a3c2f623e207b7b656d61696c7d7d3c6272202f3e0d0a202020202020202020203c623e54656c6570686f6e653a3c2f623e207b7b74656c6570686f6e657d7d3c6272202f3e0d0a202020202020202020203c623e5374617475733a3c2f623e207b7b6f726465725374617475737d7d3c6272202f3e0d0a20202020202020203c2f74643e0d0a2020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a20203c2f7461626c653e0d0a20203c7461626c65207374796c653d22626f726465722d636f6c6c617073653a20636f6c6c617073653b2077696474683a20313030253b20626f726465722d746f703a2031707820736f6c696420234444444444443b20626f726465722d6c6566743a2031707820736f6c696420234444444444443b206d617267696e2d626f74746f6d3a20323070783b223e0d0a202020203c74686561643e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b20626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b206261636b67726f756e642d636f6c6f723a20234546454645463b20666f6e742d7765696768743a20626f6c643b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b20636f6c6f723a20233232323232323b223e0d0a20202020202020202020202042696c6c696e6720416464726573730d0a20202020202020203c2f74643e0d0a20202020202020207b7b7368697070696e67416464726573735469746c657d7d0d0a2020202020203c2f74723e0d0a202020203c2f74686561643e0d0a202020203c74626f64793e0d0a2020202020203c74723e0d0a20202020202020203c7464207374796c653d22666f6e742d73697a653a20313270783b09626f726465722d72696768743a2031707820736f6c696420234444444444443b20626f726465722d626f74746f6d3a2031707820736f6c696420234444444444443b20746578742d616c69676e3a206c6566743b2070616464696e673a203770783b223e0d0a2020202020202020202020207b7b7061796d656e74416464726573737d7d0d0a20202020202020203c2f74643e0d0a20202020202020207b7b7368697070696e67416464726573737d7d0d0a2020202020203c2f74723e0d0a202020203c2f74626f64793e0d0a20203c2f7461626c653e0d0a20207b7b6f7264657250726f64756374737d7d0d0a20203c70207374796c653d226d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323070783b223e506c65617365207265706c7920746f20737570706f7274407768617461636172742e636f6d20696620796f75206861766520616e79207175657374696f6e732e3c2f703e0d0a20203c703e0d0a2020202020205468616e6b732c3c62722f3e0d0a20202020202053797374656d2041646d696e0d0a20203c2f703e0d0a3c2f6469763e, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(7, 7, 'en-US', 'Actualice la Orden | {{ordernumber}}', 0x3c703e44656172207b7b637573746f6d65726e616d657d7d2c3c2f703e0d0a3c703e0d0a20202020596f7572206f7264657220237b7b6f726465726e756d6265727d7d20737461747573206f726465726564206f6e207b7b6f72646572646174657d7d20686173206265656e207570646174656420746f207b7b6f726465727374617475737d7d2e0d0a3c2f703e0d0a7b7b6f726465724c696e6b7d7d0d0a3c703e0d0a2020202054686520636f6d6d656e747320666f7220746865206f72646572206172653a3c62722f3e0d0a202020207b7b6f72646572636f6d6d656e74737d7d0d0a3c2f703e0d0a3c703e0d0a202020205468616e6b20596f752c203c62722f3e200d0a2020202053797374656d2041646d696e0d0a3c2f703e, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(8, 8, 'en-US', 'Enviar Email', 0x3c68313e7b7b6170706e616d657d7d3c2f68313e0d0a3c703e0d0a202020203c7374726f6e673e46726f6d3a3c2f7374726f6e673e207b7b73746f72656e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e5375626a6563743a3c2f7374726f6e673e3a207b7b7375626a6563747d7d3c6272202f3e0d0a202020203c7374726f6e673e4d6573736167653a3c2f7374726f6e673e3a207b7b6d6573736167657d7d0d0a3c2f703e, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(9, 9, 'en-US', 'Novedades', 0x3c68313e7b7b6170706e616d657d7d3c2f68313e0d0a3c703e0d0a202020203c7374726f6e673e46726f6d3a3c2f7374726f6e673e207b7b73746f72656e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e5375626a6563743a3c2f7374726f6e673e3a207b7b7375626a6563747d7d3c6272202f3e0d0a202020203c7374726f6e673e4d6573736167653a3c2f7374726f6e673e3a207b7b6d6573736167657d7d0d0a3c2f703e0d0a7b7b756e7375627363726962657d7d, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(10, 10, 'en-US', 'Registrar nuevo cliente', 0x3c703e57656c636f6d65207b7b66756c6c4e616d657d7d2e20596f7572206163636f756e7420686173206265656e2063726561746564207375636365737366756c6c79206174207b7b6170706e616d657d7d3c2f703e0d0a0d0a3c703e596f7572206c6f67696e2064657461696c73206172652061732062656c6f773c6272202f3e3c62722f3e0d0a202020203c7374726f6e673e557365726e616d653a3c2f7374726f6e673e207b7b757365726e616d657d7d3c6272202f3e0d0a202020203c7374726f6e673e50617373776f72643c2f7374726f6e673e3a207b7b70617373776f72647d7d3c2f703e0d0a0d0a7b7b636f6e6669726d656d61696c4c6162656c7d7d0d0a7b7b636f6e6669726d656d61696c7d7d0d0a0d0a5468616e6b732c3c6272202f3e0d0a53797374656d2041646d696e0d0a0d0a, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `shipping` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `shipping_fee` decimal(10,2) DEFAULT '0.00',
  `unique_id` int(11) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `currency_conversion_value` float NOT NULL DEFAULT '1',
  `interface` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_id` (`customer_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_status` (`status`),
  KEY `idx_unique_id` (`unique_id`),
  KEY `idx_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_address_details`
--

DROP TABLE IF EXISTS `tbl_order_address_details`;
CREATE TABLE IF NOT EXISTS `tbl_order_address_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officephone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_firstname` (`firstname`),
  KEY `idx_lastname` (`lastname`),
  KEY `idx_city` (`city`),
  KEY `idx_country` (`country`),
  KEY `idx_postal_code` (`postal_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_history`
--

DROP TABLE IF EXISTS `tbl_order_history`;
CREATE TABLE IF NOT EXISTS `tbl_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `notify_customer` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_history_translated`
--

DROP TABLE IF EXISTS `tbl_order_history_translated`;
CREATE TABLE IF NOT EXISTS `tbl_order_history_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_payment_details`
--

DROP TABLE IF EXISTS `tbl_order_payment_details`;
CREATE TABLE IF NOT EXISTS `tbl_order_payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_including_tax` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_payment_method` (`payment_method`),
  KEY `idx_payment_type` (`payment_type`),
  KEY `idx_total_including_tax` (`total_including_tax`),
  KEY `idx_tax` (`tax`),
  KEY `idx_shipping_fee` (`shipping_fee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_payment_details_translated`
--

DROP TABLE IF EXISTS `tbl_order_payment_details_translated`;
CREATE TABLE IF NOT EXISTS `tbl_order_payment_details_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_payment_transaction_map`
--

DROP TABLE IF EXISTS `tbl_order_payment_transaction_map`;
CREATE TABLE IF NOT EXISTS `tbl_order_payment_transaction_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_record_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_amount` (`amount`),
  KEY `idx_payment_method` (`payment_method`),
  KEY `idx_transaction_record_id` (`transaction_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_product`
--

DROP TABLE IF EXISTS `tbl_order_product`;
CREATE TABLE IF NOT EXISTS `tbl_order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `displayed_options` text COLLATE utf8_unicode_ci,
  `item_code` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `options_price` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_status`
--

DROP TABLE IF EXISTS `tbl_order_status`;
CREATE TABLE IF NOT EXISTS `tbl_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_order_status`
--

INSERT INTO `tbl_order_status` (`id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(2, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(3, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(4, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(5, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(6, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(7, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(8, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(9, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(10, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(11, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(12, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(13, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(14, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_status_translated`
--

DROP TABLE IF EXISTS `tbl_order_status_translated`;
CREATE TABLE IF NOT EXISTS `tbl_order_status_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_order_status_translated`
--

INSERT INTO `tbl_order_status_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Cancelado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(2, 2, 'en-US', 'Cancelado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(3, 3, 'en-US', 'Devolucion', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(4, 4, 'en-US', 'Completado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(5, 5, 'en-US', 'Denegado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(6, 6, 'en-US', 'Expirado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(7, 7, 'en-US', 'Fallido', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(8, 8, 'en-US', 'Pendiente', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(9, 9, 'en-US', 'Procesado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(10, 10, 'en-US', 'Procesando', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(11, 11, 'en-US', 'Reintegrado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(12, 12, 'en-US', 'Invertido', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(13, 13, 'en-US', 'Enviado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(14, 14, 'en-US', 'Anulado', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order_translated`
--

DROP TABLE IF EXISTS `tbl_order_translated`;
CREATE TABLE IF NOT EXISTS `tbl_order_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_comments` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `custom_url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` smallint(1) NOT NULL,
  `path` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `status`, `parent_id`, `custom_url`, `level`, `path`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 0, '', 0, '1', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:19:47'),
(2, 1, 0, '', 0, '2', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:23:48'),
(3, 1, 0, '', 0, '3', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:28:03'),
(4, 1, 0, '', 0, '4', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:31:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_page_translated`
--

DROP TABLE IF EXISTS `tbl_page_translated`;
CREATE TABLE IF NOT EXISTS `tbl_page_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `menuitem` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `summary` text COLLATE utf8_unicode_ci,
  `metakeywords` text COLLATE utf8_unicode_ci,
  `metadescription` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_page_translated`
--

INSERT INTO `tbl_page_translated` (`id`, `owner_id`, `language`, `name`, `alias`, `menuitem`, `content`, `summary`, `metakeywords`, `metadescription`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Sobre Nosotros', 'about-us', 'About Us', '<p style=\"margin-bottom: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(2, 2, 2);\"><font style=\"vertical-align: inherit;\"><font style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Disfruta de un ambiente agradable como si estuvieses en casa, nuestro objetivo es brindar un buen servicio al momento de comer.&nbsp;</font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font face=\"Open Sans, Arial, sans-serif\">Nuestra ubicación en las afueras de la </font><font face=\"Arial Black\">Universidad de las Fuerzas Armadas Espe</font><font face=\"Open Sans, Arial, sans-serif\">, donde ofrecemos un ambiente tranquilo, fresco, y único.</font></font></font></font></font></font><font style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; vertical-align: inherit;\">&nbsp;</font><font style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"></font></font></font></p><p style=\"margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(2, 2, 2); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><b>Rapidito! </b></font></font>&nbsp;</font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">es un restaurante moderno, donde puedes disfrutar las comidas alitas, las mejores hamburguesas y muchísimos platos más. </font></font>&nbsp;</font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nuestro menú es una mezcla de sabores y platillos del sudoeste de los Estados Unidos. </font></font>&nbsp;</font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Además, puedes disfrutar de publicaciones únicas que no se encuentran en ningún otro lugar.</font></font></font></font></font></font></p>\r\n\r\n', '<p style=\"margin-bottom: 0px; padding: 0px 0px 1em; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(2, 2, 2); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Disfruta de un ambiente agradable como si estuvieses en casa, nuestro objetivo es brindar un buen servicio al momento de comer.</font></font></font></font></p>', 'sobre nosotros\r\nabout us', 'about us description', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:19:47'),
(2, 2, 'en-US', 'Información de Entrega', 'delivery-info', 'Información de Entrega', '<p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Los pedidos se pueden hace</font></font></span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">r:</font></font></strong></span></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px 0px 0px 60px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">_En el restaurante</font></font></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px 0px 0px 60px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">_Por teléfono 962 818 568</font></font></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px 0px 0px 60px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">_Por correo a atencionalcliente@rapidito.com</font></font></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Los pedidos se deben hacer como </font></font><span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: inherit;\">&nbsp;<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">mínimo 30 minutos antes de su recolección</font></font></strong></span>&nbsp;<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> para poder planificar su elaboración.</font></font></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">El pago se hace por adelantado.</font></font></span></strong></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">En el momento del pedido se fijará la hora de la recogida que será el máximo las 22: 00h. </font><font style=\"vertical-align: inherit;\">del día.</font></font></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">NO HAY ENTREGA A DOMICILIO</font></font></span></strong><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> : todos los pedidos deben recogerse en el restaurante.</font></font></p><p style=\"margin-top: 0.85em; margin-bottom: 0.85em; padding: 0px; border: 0px rgb(198, 201, 209); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Droid Sans&quot;, HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(94, 94, 94);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Junto a pedido se entregarán las </font><span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: inherit;\"><font style=\"vertical-align: inherit;\">instrucciones para ultimar las elaboraciones.</font></strong></span></font>&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font: inherit; vertical-align: baseline; color: rgb(0, 128, 128);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(198, 201, 209); font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: inherit;\"><font style=\"vertical-align: inherit;\"></font></strong></span></p>', 'Información de Pedidos a Domicilio', 'Información de Entrega', 'Información de Entrega description', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:23:48'),
(3, 3, 'en-US', 'Politica de Privacidad', 'privacy-policy', 'Politica de Privacidad', '<p style=\"background: rgb(247, 246, 241); border: 0px; margin-bottom: 20px; padding: 0px; vertical-align: baseline; font-size: 17px; line-height: 1.7em; color: rgb(55, 51, 44); font-family: Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">En cumplimiento de lo establecido en el artículo 5 de la Ley Orgánica 15/1999, de 13 de diciembre, de Protección de Datos de Carácter Personal (en adelante, \"LOPD\"), RAPIDITO la información que los datos de carácter personal que nos proporcionamos a través de nuestra página web, así como los datos a los que&nbsp;</font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> RAPIDITO</font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> &nbsp;accedió como consecuencia de su navegación, consulta, o documento realizado a través de la página web de RAPIDITO&nbsp;cuyos nombres son responsables RAPIDITO, Los derechos de acceso, rectificación, cancelación y oposición al usuario de los datos personales, en los términos y condiciones previstos en la propia LOPD, en Avd. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Jijona, 37. 03560 El Campello (Alicante).</font></font></font></p><p style=\"background: rgb(247, 246, 241); border: 0px; margin-bottom: 20px; padding: 0px; vertical-align: baseline; font-size: 17px; line-height: 1.7em; color: rgb(55, 51, 44); font-family: Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Le rogamos que nos comuniquemos con una forma de producto RAPIDITO&nbsp;que cambia de sus datos de forma que la información se encuentre dentro de los archivos de RAPIDITO&nbsp;esté en todo momento actualizado y no contenga errores. </font><font style=\"vertical-align: inherit;\">Asimismo, con la aceptación de la presente Aviso Legal y Política de Privacidad, Usted reconoce que la información y los datos facilitados en RAPIDITO&nbsp;son exactos y veraces.</font></font></p><p style=\"background: rgb(247, 246, 241); border: 0px; margin-bottom: 20px; padding: 0px; vertical-align: baseline; font-size: 17px; line-height: 1.7em; color: rgb(55, 51, 44); font-family: Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">La no cumplimentación o la cumplimentación parcial de los datos de carácter personal solicitados en cualquier tipo de pago electrónico puede suponer que RAPIDITO&nbsp;no sea posible atender su solicitud</font></font></p><p style=\"background: rgb(247, 246, 241); border: 0px; margin-bottom: 20px; padding: 0px; vertical-align: baseline; font-size: 17px; line-height: 1.7em; color: rgb(55, 51, 44); font-family: Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Los datos de carácter personal que le proporcionó a RAPIDITO&nbsp;se tratarán con la finalidad de prestarle los servicios que usted puede solicitar, en particular, los servicios prestados a través de la página web de RAPIDITO&nbsp;así como informarle sobre productos y servicios , y, en general, información del carácter comercial que pueda resultar de su interés.</font></font></p><p style=\"background: rgb(247, 246, 241); border: 0px; margin-bottom: 20px; padding: 0px; vertical-align: baseline; font-size: 17px; line-height: 1.7em; color: rgb(55, 51, 44); font-family: Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Asimismo, RAPIDITO&nbsp;la información de la página web de RAPIDITO&nbsp;puede tener instaladas cookies en sus sistemas. </font><font style=\"vertical-align: inherit;\">Las cookies son pequeños archivos de texto que el navegador tiene dentro del disco duro de su computadora. </font><font style=\"vertical-align: inherit;\">Cuando usted navega a través de la página web de RAPIDITO&nbsp;el servidor de RAPIDITO&nbsp;podrá reconocer la cookie y proporcionar información sobre su última visita. </font><font style=\"vertical-align: inherit;\">La mayoría de los navegadores admiten el uso de cookies de forma automática, pero puede configurarlo en su navegador para que se pueda abrir y abrir en la pantalla de su computadora.</font></font></p><p style=\"background: rgb(247, 246, 241); border: 0px; margin-bottom: 20px; padding: 0px; vertical-align: baseline; font-size: 17px; line-height: 1.7em; color: rgb(55, 51, 44); font-family: Arial, sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">RAPIDITO, la información que tiene las medidas necesarias para garantizar la seguridad de la propiedad y las organizaciones necesarias para garantizar la seguridad de sus datos de carácter personal y evitar su alteración, pérdida, tratamiento y / o acceso no autorizado, la cuenta del estado de la propiedad tecnología, la naturaleza de los datos almacenados y los riesgos a los que están expuestos, la proveniencia de la acción humana o del medio físico o natural. </font><font style=\"vertical-align: inherit;\">Todo ello de acuerdo con lo previsto en el artículo 9 LOPD y en el Real Decreto 994/1999, de 11 de junio, por el que se aprueba el Reglamento de medidas de seguridad de los archivos automatizados que contengan datos de carácter personal.</font></font></p>', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Politica de Privacidad</font></font>', 'Politica de Privacidad', 'Politica de Privacidad description', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:28:03'),
(4, 4, 'en-US', 'Términos y Condiciones', 'terms', 'Términos y Condiciones', '<p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\">0. El usuario visitante de la página web http://www.restauranterapidito.com tiene la obligación de leer las condiciones de la prestación del servicio que se detallan en este texto, de manera que asume estas como válidas en la prestación del servicio.<br></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">1. Objetivos de la página web http://www.restauranterapidito.com: La página web es explotada económicamente a través de la venta de los servicios y productos que se publican en sus páginas.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2. Condiciones de uso del contenido y servicios prestados en esta página web:</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2.1.- No está permitida la reproducción de los contenidos (de tipo) publicado en http://www.restauranterapidito.com sin el consentimiento expreso del autor de dicha web. </font><font style=\"vertical-align: inherit;\">En este caso hablamos de textos, gráficos, código fuente, y otro contenido contenido que se puede descargar desde esta página web.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2.2.- En esta página web existen algunos contenidos de terceros. </font><font style=\"vertical-align: inherit;\">En cualquiera de los casos, y siempre que sea, el respeto de los derechos de autor y las leyes del derecho de autor, sí o cualquier problema relacionado con cualquier material publicado en esta web, se ruega que se pongan en contacto a través del correo electrónico: info @ restauranterapidito.com y el contenido se ha retirado (con ser comprobado) con la máxima celeridad posible, ya que es intención primera el respeto por los derechos de autor y el trabajo ajeno.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2.3.- El autor de esta web no se hace responsable del uso del uso que se puede hacer en esta página web (http://www.restauranterapidito.com).</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2.4.- La página web http://www.restauranterapidito.com es financiada y explotada económicamente a través de la venta de los productos y servicios expuestos en la misma.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2.5.- El propietario de http://www.restauranterapidito.com no se hace responsable del mal funcionamiento del sistema o servicio prestado en esta página web, aunque siempre se quiso y trabaja para ofrecer el mejor servicio.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">2.6.- En esta página web (http://www.restauranterapidito.com) NO existe contenido ilegales (pornografía infantil, apología del terrorismo, y otro tipo de contenido ilegal).</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">En caso de que esta página (http://www.restauranterapidito.com) contenga foros y comentarios:</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3. Condiciones de uso del contenido y servicios prestados en los foros y comentarios de http://www.restauranterapidito.com:</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3.1.- El uso de estos foros y comentarios está reservado únicamente como \"tablón de mensajes\" entre usuarios y cliente. </font><font style=\"vertical-align: inherit;\">No está permitido hacer uso del foro de http://www.restauranterapidito.com para realizar correos no deseados, publicidad fuera de tema, captar direcciones de e-mail o cualquier tipo de acción ilegal.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3.2.- http://www.restauranterapidito.com no es responsable de las opiniones vertidas en estos foros y comentarios, y es responsabilidad total de los autores de las mismas.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3.3.- http://www.restauranterapidito.com se reserva el derecho de anular, cancelar, borrar o denegar el acceso a un usuario que incumple cualquier regla legal y / o moral.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3.4.- http://www.restauranterapidito.com no almacena (ni comercializa con) ningún tipo de dato vertido en estos foros y comentarios con caracter comercial o similar. </font><font style=\"vertical-align: inherit;\">Los mensajes y todos los datos están almacenados, lo cual es para el único servicio al que está destinado el foro, que es el servicio de información y servicio entre profesionales.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3.5.- Está prohibida la reproducción de los contenidos del foro y comentarios de http://www.restauranterapidito.com sin previa autorización.</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3.6.- Para cualquier cuestión al respecto, debe ponerse en contacto con la dirección de correo electrónico info@restauranterapidito.com</font></font></p><p style=\"padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 20px; color: rgb(65, 64, 64); font-family: Georgia, &quot;Times New Roman&quot;, Times, serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">AVISO DE PRIVACIDAD </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Aviso Legal. </font><font style=\"vertical-align: inherit;\">En cumplimiento de la Ley de Servicios de la Sociedad de la Información y de Correo Electrónico y de la Ley Orgánica de Protección de Datos, las comunicaciones que lo envían y los datos incluidos en esta página, forman parte de un archivo automatizado con la finalidad de mantener relaciones comerciales y / o comerciales. </font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Si lo desea puede ejercer sus derechos de acceso, rectificación, oposición y cancelación de datos, dirigiéndose al destino del Fichero, Restaurante&nbsp;</font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">&nbsp;rapidito SL,&nbsp; o, mediante correo electrónico a la dirección, info @ restauranterapidito</font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">.com.</font></font></p>', 'Terms & condition summary', 'Términos y Condiciones', 'Términos y Condiciones', 1, 1, '2018-08-01 18:14:16', '2018-08-06 01:31:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paypal_standard_transaction`
--

DROP TABLE IF EXISTS `tbl_paypal_standard_transaction`;
CREATE TABLE IF NOT EXISTS `tbl_paypal_standard_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `payment_status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `received_date` date NOT NULL,
  `transaction_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_payment_status` (`payment_status`),
  KEY `idx_transaction_id` (`transaction_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_person`
--

DROP TABLE IF EXISTS `tbl_person`;
CREATE TABLE IF NOT EXISTS `tbl_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_person`
--

INSERT INTO `tbl_person` (`id`, `firstname`, `lastname`, `mobilephone`, `email`, `avatar`, `profile_image`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Super', 'Admin', '', 'villajohnny@gmail.com', NULL, NULL, 1, 1, '2018-08-01 18:14:08', '2018-08-01 18:14:08'),
(2, 'Store', 'Owner', NULL, 'mayank@mayankstore.com', NULL, NULL, 1, 1, '2018-08-01 18:14:18', '2018-08-01 18:14:18'),
(3, 'Wholesalecustomer', 'wholesalecustomerlast', NULL, 'wholesalecustomer@whatacart.com', NULL, NULL, 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(4, 'Retailcustomer', 'retailcustomerlast', NULL, 'retailcustomer@whatacart.com', NULL, NULL, 1, 1, '2018-08-01 18:14:36', '2018-08-01 18:14:36'),
(5, 'Defaultcustomer', 'defaultcustomerlast', NULL, 'defaultcustomer@whatacart.com', NULL, NULL, 1, 1, '2018-08-01 18:14:38', '2018-08-01 18:14:38'),
(6, 'Anthony', 'Cabrera', '', 'anthoro.53@gmail.com', NULL, '', 0, 1, '2018-08-05 21:12:07', '2018-08-05 21:15:15'),
(7, 'Daniel', 'Lopez', '', 'shoniisra1@gmail.com', NULL, 'Nzc4NTE2Mmuser1.jpg', 1, 1, '2018-08-06 00:04:44', '2018-08-06 00:04:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(1) DEFAULT '1',
  `model` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `buy_price` decimal(10,2) DEFAULT '0.00',
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL,
  `sku` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `initial_quantity` int(11) DEFAULT NULL,
  `tax_class_id` int(11) DEFAULT NULL,
  `minimum_quantity` int(11) DEFAULT NULL,
  `subtract_stock` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_status` smallint(1) DEFAULT NULL,
  `requires_shipping` smallint(1) DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `is_featured` smallint(1) DEFAULT NULL,
  `location` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `length_class` int(11) DEFAULT NULL,
  `weight_class` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `upc` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jan` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mpn` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_model` (`model`),
  KEY `idx_price` (`price`),
  KEY `idx_status` (`status`),
  KEY `idx_quantity` (`quantity`),
  KEY `idx_sku` (`sku`),
  KEY `idx_stock_status` (`stock_status`),
  KEY `idx_available_date` (`available_date`),
  KEY `idx_manufacturer` (`manufacturer`),
  KEY `idx_tax_class_id` (`tax_class_id`),
  KEY `idx_location` (`location`),
  KEY `idx_length` (`length`),
  KEY `idx_width` (`width`),
  KEY `idx_height` (`height`),
  KEY `idx_length_class` (`length_class`),
  KEY `idx_weight_class` (`weight_class`),
  KEY `idx_buy_price` (`buy_price`),
  KEY `idx_initial_quantity` (`initial_quantity`),
  KEY `idx_type` (`type`),
  KEY `idx_hits` (`hits`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `type`, `model`, `price`, `buy_price`, `image`, `status`, `sku`, `quantity`, `initial_quantity`, `tax_class_id`, `minimum_quantity`, `subtract_stock`, `stock_status`, `requires_shipping`, `available_date`, `manufacturer`, `is_featured`, `location`, `length`, `width`, `height`, `date_available`, `weight`, `length_class`, `weight_class`, `hits`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(56, 1, '', '0.35', '0.00', 'YzRkZjI0OTpro_COCA COLA 22oz.png', 1, '001', 1, NULL, NULL, 1, '1', 1, 1, NULL, 18, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 6, '', '', '', '', '', 1, 1, '2018-08-03 08:05:08', '2018-08-06 02:53:52'),
(57, 1, '', '1.25', '0.00', 'ZDNjMjUxMTpro_CHOCOLATE ICE CREAM.png', 1, 'postre001', 1, NULL, 1, 1, '1', 1, 1, NULL, 13, 0, '', NULL, NULL, NULL, NULL, NULL, 3, 1, 9, '', '', '', '', '', 1, 1, '2018-08-05 23:49:21', '2018-08-05 23:49:21'),
(58, 1, '', '1.25', '0.00', 'ODFkNjJhMjpro_VAINILLA ICE CREAM.png', 1, 'vainilla', 1, NULL, 1, 1, '1', 1, 1, NULL, 8, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(59, 1, '', '2.99', '0.00', 'ZjU5M2Y0MGpostre_chocolate_avellana.jpg', 1, 'POSCHOCOAVELLANA', 1, NULL, 1, 1, '1', 1, 1, NULL, 8, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 02:53:01', '2018-08-06 02:53:01'),
(60, 1, '', '0.45', '0.00', 'ZTk1NGZhMmpro_COCA COLA 30oz.png', 1, '002', 1, NULL, 1, 1, '1', 1, 1, NULL, 18, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 02:56:04', '2018-08-06 02:56:04'),
(61, 1, '', '0.75', '0.00', 'ZjhjNzE2ZWpro_COCA COLA 44oz.png', 1, '003', 1, NULL, 1, 1, '1', 1, 1, NULL, 18, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(62, 1, '', '0.65', '0.00', 'YmE0ODBlMmpro_COCA COLA ZERO 22oz.png', 1, '004', 1, NULL, 1, 1, '1', 1, 1, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(63, 1, '', '1.40', '0.00', 'ZDgwYWE5Yzpro_pilsenerpeq.jpg', 1, '005', 1, NULL, 1, 1, '1', 1, 1, NULL, 12, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '', '', '', '', '', 1, 1, '2018-08-06 02:59:49', '2018-08-06 02:59:49'),
(64, 1, '', '1.25', '0.00', 'NTRiY2FkMzLATA_PILSENER_2_1024x1024.jpg', 1, '005', 1, NULL, 1, 1, '1', 1, 1, NULL, 12, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(65, 1, '', '1.25', '0.00', 'ZWNiODA0NDPILSENLICHT_1_1024x1024.jpg', 1, '006', 1, NULL, NULL, 1, '1', 1, 1, NULL, 12, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '', '', '', '', '', 1, 1, '2018-08-06 03:05:24', '2018-08-06 03:05:24'),
(66, 1, '', '1.75', '0.00', 'NjYxNDI2Njcorona1.jpg', 1, '007', 1, NULL, NULL, 1, '1', 1, 1, NULL, 9, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 03:06:59', '2018-08-06 03:11:06'),
(67, 1, '', '1.35', '0.00', 'MTdiNjEwOTcorona2.jpg', 1, '009', 1, NULL, NULL, 1, '1', 1, 1, NULL, 9, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 03:09:23', '2018-08-06 03:10:29'),
(68, 1, '', '1.50', '0.00', 'ZmU3ZGM3NTpro_JUGO NARANJA 22oz.png', 1, '010', 1, NULL, NULL, 1, '1', 1, 1, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 03:12:48', '2018-08-06 03:12:48'),
(69, 1, '', '3.50', '0.00', 'NDdmZjQwOTpro_HAMBURGUESA GIGANTE.png', 1, '011', 1, NULL, 1, 1, '1', 1, 1, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '', '', '', '', '', 1, 1, '2018-08-06 09:15:56', '2018-08-06 09:15:56'),
(70, 1, '', '2.99', '0.00', 'MjMxN2U5Nzpro_HAMBURGUESA MEDIUN.png', 1, '011', 1, NULL, 1, 1, '1', 1, 1, NULL, 6, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '', '', '', '', '', 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(71, 1, '', '1.50', '0.00', 'ZGNjYjdjNWpro_HAMBURGUESA LITTLE.png', 1, '012', 1, NULL, 1, 1, '1', 1, 1, NULL, 6, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(72, 1, '', '1.50', '0.00', 'ODU2N2FhMDpro_HOTDOG XXX.png', 1, '013', 1, NULL, 1, 1, '1', 1, 1, NULL, 6, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(73, 1, '', '1.80', '0.00', 'MDEzMDI3Zmpro_NUGGETS RAPIDITO.png', 1, '014', 1, NULL, 1, 1, '1', 1, 1, NULL, 6, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(74, 1, '', '1.35', '0.00', 'OWUzYTY3M2pro_NACHOS CON QUESO.png', 1, '014', 1, NULL, 1, 1, '1', 1, 1, NULL, 6, 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '', '', '', '', '', 1, 1, '2018-08-06 09:31:10', '2018-08-06 09:31:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_attribute`
--

DROP TABLE IF EXISTS `tbl_product_attribute`;
CREATE TABLE IF NOT EXISTS `tbl_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `attribute_group` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sort_order` (`sort_order`),
  KEY `idx_attribute_group` (`attribute_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_attribute`
--

INSERT INTO `tbl_product_attribute` (`id`, `sort_order`, `attribute_group`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(2, 1, 1, 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_attribute_group`
--

DROP TABLE IF EXISTS `tbl_product_attribute_group`;
CREATE TABLE IF NOT EXISTS `tbl_product_attribute_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_attribute_group`
--

INSERT INTO `tbl_product_attribute_group` (`id`, `sort_order`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(2, 2, 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_attribute_group_translated`
--

DROP TABLE IF EXISTS `tbl_product_attribute_group_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_attribute_group_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_attribute_group_translated`
--

INSERT INTO `tbl_product_attribute_group_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Memory', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(2, 2, 'en-US', 'Motherboard', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_attribute_mapping`
--

DROP TABLE IF EXISTS `tbl_product_attribute_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_product_attribute_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_attribute_id` (`attribute_id`),
  KEY `idx_attribute_value` (`attribute_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_attribute_translated`
--

DROP TABLE IF EXISTS `tbl_product_attribute_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_attribute_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_attribute_translated`
--

INSERT INTO `tbl_product_attribute_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Clockspeed', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23'),
(2, 2, 'en-US', 'Fan Speed', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_category`
--

DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `displayintopmenu` smallint(1) DEFAULT NULL,
  `data_category_id` int(11) NOT NULL,
  `code` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_status` (`status`),
  KEY `idx_data_category_id` (`data_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `image`, `parent_id`, `level`, `status`, `displayintopmenu`, `data_category_id`, `code`, `path`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(2, 'NmI2Y2Y1Nmsliderphoto-1.png', 0, 0, 1, 1, 1, 'CR', '2', 1, 1, '2018-08-01 18:14:23', '2018-08-05 23:33:07'),
(5, 'MjAwMjNjMjdescarga.jpg', 0, 0, 1, 1, 1, 'DT', '5', 1, 1, '2018-08-03 07:45:53', '2018-08-03 08:51:16'),
(6, 'OWIwODI0Mjcat_REFRESCOS.png', 0, 0, 1, 1, 1, 'CM', '6', 1, 1, '2018-08-03 07:48:21', '2018-08-03 07:53:07'),
(7, 'NjhkYWNmMWcat_FRUTAS.png', 0, 0, 1, 1, 1, 'POSTRE', '7', 1, 1, '2018-08-05 23:32:26', '2018-08-06 02:39:07'),
(8, 'MTMxYzEwMGcat_SALSAS.png', 5, 1, 1, 0, 1, 'SALSAS', '5/8', 1, 1, '2018-08-05 23:34:43', '2018-08-05 23:34:43'),
(9, 'Zjk2ZjliN2cat_JUGOS NATURALES.png', 6, 1, 1, 1, 1, 'JUGO', '6/9', 1, 1, '2018-08-06 02:40:29', '2018-08-06 03:01:23'),
(10, 'OTM1NGJhMDcat_REFRESCOS.png', 6, 1, 1, 1, 1, 'COLA', '6/10', 1, 1, '2018-08-06 02:41:58', '2018-08-06 03:01:12'),
(11, 'NGQ3YzBmMTcat_cerveza.jpg', 6, 1, 1, 1, 1, 'BEER', '6/11', 1, 1, '2018-08-06 02:43:49', '2018-08-06 03:00:41'),
(12, 'ZmU5MTk5N21509615048_727318_1509617190_noticia_normal.jpg', 2, 1, 1, 1, 1, 'HAMBURG', '2/12', 1, 1, '2018-08-06 07:45:50', '2018-08-06 07:45:50'),
(13, 'YjIwMGVmMGmaxresdefault.jpg', 2, 1, 1, 1, 1, 'ALITAS', '2/13', 1, 1, '2018-08-06 07:47:00', '2018-08-06 07:47:00'),
(14, 'NzE1OGI5OTmaxresdefault.jpg', 2, 1, 1, 1, 1, 'OTROS', '2/14', 1, 1, '2018-08-06 09:26:15', '2018-08-06 09:26:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_category_mapping`
--

DROP TABLE IF EXISTS `tbl_product_category_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_product_category_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `data_category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  KEY `idx_product_id` (`product_id`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_data_category_id` (`data_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_category_mapping`
--

INSERT INTO `tbl_product_category_mapping` (`product_id`, `category_id`, `data_category_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(57, 7, 1, 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22'),
(58, 7, 1, 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(59, 7, 1, 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(56, 6, 1, 1, 1, '2018-08-06 02:53:52', '2018-08-06 02:53:52'),
(56, 10, 1, 1, 1, '2018-08-06 02:53:52', '2018-08-06 02:53:52'),
(60, 6, 1, 1, 1, '2018-08-06 02:56:05', '2018-08-06 02:56:05'),
(60, 10, 1, 1, 1, '2018-08-06 02:56:05', '2018-08-06 02:56:05'),
(61, 6, 1, 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(61, 10, 1, 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(62, 6, 1, 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(62, 10, 1, 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(63, 6, 1, 1, 1, '2018-08-06 02:59:49', '2018-08-06 02:59:49'),
(63, 11, 1, 1, 1, '2018-08-06 02:59:49', '2018-08-06 02:59:49'),
(64, 6, 1, 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(64, 11, 1, 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(65, 6, 1, 1, 1, '2018-08-06 03:05:24', '2018-08-06 03:05:24'),
(65, 11, 1, 1, 1, '2018-08-06 03:05:24', '2018-08-06 03:05:24'),
(67, 6, 1, 1, 1, '2018-08-06 03:10:29', '2018-08-06 03:10:29'),
(67, 11, 1, 1, 1, '2018-08-06 03:10:29', '2018-08-06 03:10:29'),
(66, 6, 1, 1, 1, '2018-08-06 03:11:06', '2018-08-06 03:11:06'),
(66, 11, 1, 1, 1, '2018-08-06 03:11:06', '2018-08-06 03:11:06'),
(68, 6, 1, 1, 1, '2018-08-06 03:12:48', '2018-08-06 03:12:48'),
(68, 9, 1, 1, 1, '2018-08-06 03:12:48', '2018-08-06 03:12:48'),
(69, 2, 1, 1, 1, '2018-08-06 09:15:56', '2018-08-06 09:15:56'),
(69, 12, 1, 1, 1, '2018-08-06 09:15:56', '2018-08-06 09:15:56'),
(70, 2, 1, 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(70, 12, 1, 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(71, 2, 1, 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(71, 12, 1, 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(72, 2, 1, 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(72, 14, 1, 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(73, 2, 1, 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(73, 14, 1, 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(73, 5, 1, 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(74, 2, 1, 1, 1, '2018-08-06 09:31:10', '2018-08-06 09:31:10'),
(74, 14, 1, 1, 1, '2018-08-06 09:31:10', '2018-08-06 09:31:10'),
(74, 5, 1, 1, 1, '2018-08-06 09:31:11', '2018-08-06 09:31:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_category_translated`
--

DROP TABLE IF EXISTS `tbl_product_category_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_category_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadescription` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_id` (`id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_category_translated`
--

INSERT INTO `tbl_product_category_translated` (`id`, `owner_id`, `language`, `name`, `alias`, `metakeywords`, `metadescription`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(2, 2, 'en-US', 'Combos Rapiditos', 'combos-rapiditos', '', '', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Los mejores combos. A los mejores precios</font></font></font></font>', 1, 1, '2018-08-01 18:14:23', '2018-08-03 08:46:47'),
(5, 5, 'en-US', 'Porciones', 'porciones', '', '', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Gustos extra para el antojo</font></font></p>', 1, 1, '2018-08-03 07:45:53', '2018-08-03 08:51:16'),
(6, 6, 'en-US', 'Bebidas', 'bebidas', '', '', 'Rapidito', 1, 1, '2018-08-03 07:48:21', '2018-08-03 07:53:07'),
(7, 7, 'en-US', 'Postres', 'postres', 'dulces\r\nhelados\r\nfrutas\r\npostres', 'dulces\r\nhelados\r\nfrutas\r\npostres', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Disfruta el lado dulce de la vida!</font></font></p>', 1, 1, '2018-08-05 23:32:26', '2018-08-06 02:39:07'),
(8, 8, 'en-US', 'Salsas', 'salsas', 'salsas', '', '', 1, 1, '2018-08-05 23:34:43', '2018-08-05 23:34:43'),
(9, 9, 'en-US', 'Jugos Naturales', 'jugos-naturales', 'refrescos \r\njugos\r\nfrutas', 'refrescos \r\njugos\r\nfrutas', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">realmente refrescantes</font></font></p>', 1, 1, '2018-08-06 02:40:29', '2018-08-06 02:40:29'),
(10, 10, 'en-US', 'Gaseosas', 'gaseosas', 'jugos\r\ncolas\r\nrefrescos\r\ngaseosa', 'jugos\r\ncolas\r\nrefrescos\r\ngaseosa', '<p>Ideal para acompañar tus comidas</p>', 1, 1, '2018-08-06 02:41:58', '2018-08-06 02:41:58'),
(11, 11, 'en-US', 'Cerveza', 'cerveza', 'cerveza de trigo', 'cerveza de trigo', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">cerveza de trigo</font></font></p>', 1, 1, '2018-08-06 02:43:50', '2018-08-06 02:43:50'),
(12, 12, 'en-US', 'Hamburguesas', 'hamburguesas', 'hamburguesas', 'hamburguesas', '<p>Deliciosas Hamburguesas hechas al carbón.</p>', 1, 1, '2018-08-06 07:45:51', '2018-08-06 07:45:51'),
(13, 13, 'en-US', 'Alitas BBQ', 'alitas-bbq', 'alitas bbq', 'alitas bbq', '<p>Alitas Crugientes bañadas en salsa bbq.</p>', 1, 1, '2018-08-06 07:47:00', '2018-08-06 07:47:00'),
(14, 14, 'en-US', 'Otros', 'otros', 'Otros', 'Otros', 'Otros', 1, 1, '2018-08-06 09:26:15', '2018-08-06 09:26:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_discount`
--

DROP TABLE IF EXISTS `tbl_product_discount`;
CREATE TABLE IF NOT EXISTS `tbl_product_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_quantity` (`quantity`),
  KEY `idx_priority` (`priority`),
  KEY `idx_price` (`price`),
  KEY `idx_start_datetime` (`start_datetime`),
  KEY `idx_end_datetime` (`end_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_download`
--

DROP TABLE IF EXISTS `tbl_product_download`;
CREATE TABLE IF NOT EXISTS `tbl_product_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_downloads` int(10) DEFAULT '0',
  `number_of_days` int(10) DEFAULT '0',
  `size` double DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_download_mapping`
--

DROP TABLE IF EXISTS `tbl_product_download_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_product_download_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL,
  `download_option` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  KEY `idx_product_id` (`product_id`),
  KEY `idx_download_id` (`download_id`),
  KEY `idx_download_option` (`download_option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_download_translated`
--

DROP TABLE IF EXISTS `tbl_product_download_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_download_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_image`
--

DROP TABLE IF EXISTS `tbl_product_image`;
CREATE TABLE IF NOT EXISTS `tbl_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`id`, `product_id`, `image`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 56, 'NWQ0NGQ5MTpro_COCA COLA 22oz.png', 1, 1, '2018-08-03 08:05:08', '2018-08-03 08:05:08'),
(2, 57, 'MTFlYjFhYzchocolateicecream.jpg', 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_image_translated`
--

DROP TABLE IF EXISTS `tbl_product_image_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_image_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_caption` (`caption`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_image_translated`
--

INSERT INTO `tbl_product_image_translated` (`id`, `owner_id`, `language`, `caption`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Coca cola 22 oz', 1, 1, '2018-08-03 08:05:08', '2018-08-03 08:05:08'),
(2, 2, 'en-US', 'helado de chocolate y cono de galleta', 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_option`
--

DROP TABLE IF EXISTS `tbl_product_option`;
CREATE TABLE IF NOT EXISTS `tbl_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_option`
--

INSERT INTO `tbl_product_option` (`id`, `type`, `url`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'checkbox', NULL, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(2, 'radio', NULL, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(3, 'select', NULL, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_option_mapping`
--

DROP TABLE IF EXISTS `tbl_product_option_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_product_option_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `required` smallint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_option_id` (`option_id`),
  KEY `idx_required` (`required`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_option_mapping_details`
--

DROP TABLE IF EXISTS `tbl_product_option_mapping_details`;
CREATE TABLE IF NOT EXISTS `tbl_product_option_mapping_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapping_id` int(11) NOT NULL,
  `option_value_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `subtract_stock` smallint(1) NOT NULL,
  `price_prefix` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `weight_prefix` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mapping_id` (`mapping_id`),
  KEY `idx_option_value_id` (`option_value_id`),
  KEY `idx_quantity` (`quantity`),
  KEY `idx_price_prefix` (`price_prefix`),
  KEY `idx_price` (`price`),
  KEY `idx_weight_prefix` (`weight_prefix`),
  KEY `idx_weight` (`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_option_mapping_details`
--

INSERT INTO `tbl_product_option_mapping_details` (`id`, `mapping_id`, `option_value_id`, `quantity`, `subtract_stock`, `price_prefix`, `price`, `weight_prefix`, `weight`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, '1', 1, 1, '+', '5.00', '+', '0.00', 1, 1, '2018-08-01 18:14:31', '2018-08-01 18:14:31'),
(2, 1, '2', 1, 1, '+', '10.00', '+', '0.00', 1, 1, '2018-08-01 18:14:31', '2018-08-01 18:14:31'),
(3, 2, '4', 1, 1, '+', '10.00', '+', '0.00', 1, 1, '2018-08-01 18:14:31', '2018-08-01 18:14:31'),
(4, 2, '5', 1, 1, '+', '15.00', '+', '0.00', 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(5, 3, '8', 1, 1, '+', '20.00', '+', '0.00', 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32'),
(6, 3, '9', 1, 1, '+', '25.00', '+', '0.00', 1, 1, '2018-08-01 18:14:32', '2018-08-01 18:14:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_option_translated`
--

DROP TABLE IF EXISTS `tbl_product_option_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_option_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_display_name` (`display_name`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_option_translated`
--

INSERT INTO `tbl_product_option_translated` (`id`, `owner_id`, `language`, `name`, `display_name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Color', 'color', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(2, 2, 'en-US', 'Size', 'size', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(3, 3, 'en-US', 'Resolution', 'resolution', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_option_value`
--

DROP TABLE IF EXISTS `tbl_product_option_value`;
CREATE TABLE IF NOT EXISTS `tbl_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_option_id` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_option_value`
--

INSERT INTO `tbl_product_option_value` (`id`, `option_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(2, 1, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(3, 1, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(4, 2, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(5, 2, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(6, 2, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(7, 2, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(8, 3, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(9, 3, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(10, 3, 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_option_value_translated`
--

DROP TABLE IF EXISTS `tbl_product_option_value_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_option_value_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_value` (`value`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_option_value_translated`
--

INSERT INTO `tbl_product_option_value_translated` (`id`, `owner_id`, `language`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Grey', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(2, 2, 'en-US', 'Silver', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(3, 3, 'en-US', 'Black', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(4, 4, 'en-US', 'L', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(5, 5, 'en-US', 'M', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(6, 6, 'en-US', 'XL', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(7, 7, 'en-US', 'S', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(8, 8, 'en-US', '4MP', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(9, 9, 'en-US', '8MP', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24'),
(10, 10, 'en-US', '10MP', 1, 1, '2018-08-01 18:14:24', '2018-08-01 18:14:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_rating`
--

DROP TABLE IF EXISTS `tbl_product_rating`;
CREATE TABLE IF NOT EXISTS `tbl_product_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` decimal(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_rating` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_related_product_mapping`
--

DROP TABLE IF EXISTS `tbl_product_related_product_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_product_related_product_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `related_product_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  KEY `idx_product_id` (`product_id`),
  KEY `idx_related_product_id` (`related_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_related_product_mapping`
--

INSERT INTO `tbl_product_related_product_mapping` (`product_id`, `related_product_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(58, 57, 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(59, 57, 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(60, 56, 1, 1, '2018-08-06 02:56:05', '2018-08-06 02:56:05'),
(61, 56, 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(61, 60, 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(62, 56, 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(62, 60, 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(62, 61, 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(64, 63, 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(65, 63, 1, 1, '2018-08-06 03:05:24', '2018-08-06 03:05:24'),
(65, 64, 1, 1, '2018-08-06 03:05:24', '2018-08-06 03:05:24'),
(67, 64, 1, 1, '2018-08-06 03:10:29', '2018-08-06 03:10:29'),
(67, 66, 1, 1, '2018-08-06 03:10:29', '2018-08-06 03:10:29'),
(66, 63, 1, 1, '2018-08-06 03:11:06', '2018-08-06 03:11:06'),
(66, 64, 1, 1, '2018-08-06 03:11:06', '2018-08-06 03:11:06'),
(66, 65, 1, 1, '2018-08-06 03:11:06', '2018-08-06 03:11:06'),
(70, 69, 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(71, 69, 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(71, 70, 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(72, 71, 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(73, 70, 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(73, 72, 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(74, 70, 1, 1, '2018-08-06 09:31:11', '2018-08-06 09:31:11'),
(74, 71, 1, 1, '2018-08-06 09:31:11', '2018-08-06 09:31:11'),
(74, 72, 1, 1, '2018-08-06 09:31:11', '2018-08-06 09:31:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_review`
--

DROP TABLE IF EXISTS `tbl_product_review`;
CREATE TABLE IF NOT EXISTS `tbl_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(1) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_review`
--

INSERT INTO `tbl_product_review` (`id`, `name`, `status`, `product_id`, `email`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'johnny', 2, 56, 'villajohnny@gmail.com', 0, 1, '2018-08-05 23:23:40', '2018-08-05 23:24:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_review_translated`
--

DROP TABLE IF EXISTS `tbl_product_review_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_review_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_review_translated`
--

INSERT INTO `tbl_product_review_translated` (`id`, `owner_id`, `language`, `review`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'chevere', 0, 0, '2018-08-05 23:23:40', '2018-08-05 23:23:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_special`
--

DROP TABLE IF EXISTS `tbl_product_special`;
CREATE TABLE IF NOT EXISTS `tbl_product_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `priority` int(2) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_priority` (`priority`),
  KEY `idx_price` (`price`),
  KEY `idx_start_datetime` (`start_datetime`),
  KEY `idx_end_datetime` (`end_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_tag_mapping`
--

DROP TABLE IF EXISTS `tbl_product_tag_mapping`;
CREATE TABLE IF NOT EXISTS `tbl_product_tag_mapping` (
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  KEY `idx_product_id` (`product_id`),
  KEY `idx_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_tag_mapping`
--

INSERT INTO `tbl_product_tag_mapping` (`product_id`, `tag_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(57, 1, 0, 0, NULL, NULL),
(57, 2, 0, 0, NULL, NULL),
(57, 3, 0, 0, NULL, NULL),
(58, 1, 0, 0, NULL, NULL),
(58, 4, 0, 0, NULL, NULL),
(58, 5, 0, 0, NULL, NULL),
(59, 2, 0, 0, NULL, NULL),
(59, 1, 0, 0, NULL, NULL),
(59, 6, 0, 0, NULL, NULL),
(59, 7, 0, 0, NULL, NULL),
(59, 8, 0, 0, NULL, NULL),
(59, 9, 0, 0, NULL, NULL),
(61, 10, 0, 0, NULL, NULL),
(62, 11, 0, 0, NULL, NULL),
(64, 12, 0, 0, NULL, NULL),
(69, 13, 0, 0, NULL, NULL),
(70, 14, 0, 0, NULL, NULL),
(71, 15, 0, 0, NULL, NULL),
(72, 16, 0, 0, NULL, NULL),
(73, 17, 0, 0, NULL, NULL),
(74, 18, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_tax_class`
--

DROP TABLE IF EXISTS `tbl_product_tax_class`;
CREATE TABLE IF NOT EXISTS `tbl_product_tax_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_tax_class`
--

INSERT INTO `tbl_product_tax_class` (`id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '2018-08-01 18:14:15', '2018-08-06 01:08:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_tax_class_translated`
--

DROP TABLE IF EXISTS `tbl_product_tax_class_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_tax_class_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(164) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_tax_class_translated`
--

INSERT INTO `tbl_product_tax_class_translated` (`id`, `owner_id`, `language`, `name`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Impuesto Regular', 'Applied to goods on which tax has to be applied', 1, 1, '2018-08-01 18:14:15', '2018-08-06 01:06:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_translated`
--

DROP TABLE IF EXISTS `tbl_product_translated`;
CREATE TABLE IF NOT EXISTS `tbl_product_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `metakeywords` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadescription` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_product_translated`
--

INSERT INTO `tbl_product_translated` (`id`, `owner_id`, `language`, `name`, `alias`, `metakeywords`, `metadescription`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(56, 56, 'en-US', 'Coca Cola 22 0z', 'coca-cola-22-0z', '', '', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Coca Cola company</font></font>', 1, 1, '2018-08-03 08:05:08', '2018-08-03 08:05:08'),
(57, 57, 'en-US', 'Helado de Chocolate', 'helado-de-chocolate', 'helado\r\nchocolate', 'Helado con sabor a chocolate natural o artificial', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Helado con sabor a chocolate natural o artificial</font></font>', 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22'),
(58, 58, 'en-US', 'Helado de Vainilla', 'helado-de-vainilla', 'helado\r\nvainilla\r\npostres', 'helado de vainilla', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Helado de vainilla</font></font></p>', 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(59, 59, 'en-US', 'Postre Chocolate', 'postre-chocolate', 'postre chocolate avellana', 'postre chocolate avellana', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">pagostre de chocolate y avellana con fresas y crema chantillie</font></font></p>', 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(60, 60, 'en-US', 'Coca Cola 30 0z', 'coca-cola-30-0z', 'Coca Cola 30 0z', 'Coca Cola 30 0z', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Coca Cola 30 0z</font></font><br></p>', 1, 1, '2018-08-06 02:56:05', '2018-08-06 02:56:05'),
(61, 61, 'en-US', 'Coca Cola 44 0z', 'coca-cola-44-0z', 'coca-cola-44-0z', 'coca-cola-44-0z', '<p>coca-cola-44-0z<br></p>', 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(62, 62, 'en-US', 'Coca Cola  ZERO 22 0z', 'coca-cola--zero-22-0z', 'Coca Cola  ZERO 22 0z', 'Coca Cola  ZERO 22 0z', '<p>Coca Cola&nbsp; ZERO 22 0z<br></p>', 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(63, 63, 'en-US', 'Pilsener mediana', 'pilsener-mediana', 'pilsener-mediana', 'pilsener-mediana', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">pilsener-mediana</font></font><br></p>', 1, 1, '2018-08-06 02:59:49', '2018-08-06 02:59:49'),
(64, 64, 'en-US', 'Pilsener peq', 'pilsener-peq', 'Pilsener peq', 'Pilsener peq', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Pilsener pequeña</font></font><br></p>', 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(65, 65, 'en-US', 'Pilsener light', 'pilsener-light', '', '', '<p><span style=\"font-size: 12px;\">Pilsener light</span><br></p>', 1, 1, '2018-08-06 03:05:24', '2018-08-06 03:05:24'),
(66, 66, 'en-US', 'Corona Med', 'corona-med', '', '', '<p><span style=\"font-size: 12px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Corona Medianda</font></font></span><br></p>', 1, 1, '2018-08-06 03:06:59', '2018-08-06 03:06:59'),
(67, 67, 'en-US', 'Corona peq', 'corona-peq', 'Corona peq', 'Corona peq', '<p><span style=\"font-size: 12px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Corona pequeña</font></font></span><br></p>', 1, 1, '2018-08-06 03:09:23', '2018-08-06 03:09:23'),
(68, 68, 'en-US', 'Jugo de Naranja', 'jugo-de-naranja', '', '', '<p><span style=\"font-size: 12px;\">Jugo de Naranja</span><br></p>', 1, 1, '2018-08-06 03:12:48', '2018-08-06 03:12:48'),
(69, 69, 'en-US', 'Hamburguesa Gigante', 'hamburguesa-gigante', 'Hamburguesa Gigante', 'Hamburguesa Gigante', '<p>Hamburguesa Gigante<br></p>', 1, 1, '2018-08-06 09:15:56', '2018-08-06 09:15:56'),
(70, 70, 'en-US', 'Hamburguesa Mediana', 'hamburguesa-mediana', 'Hamburguesa Mediana', 'Hamburguesa Mediana', '<p>Hamburguesa Mediana&nbsp;<br></p>', 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(71, 71, 'en-US', 'Hamburguesa Pequeña', 'hamburguesa-peque-a', 'Hamburguesa Pequeña', 'Hamburguesa Pequeña', '<p>Hamburguesa Pequeña<br></p>', 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(72, 72, 'en-US', 'Hot Dog', 'hot-dog', 'Hot Dog', 'Hot Dog', '<p>Hot Dog<br></p>', 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(73, 73, 'en-US', 'Nuggets de Pollo', 'nuggets-de-pollo', 'Nuggets de Pollo', 'Nuggets de Pollo', '<p>Nuggets de Pollo<br></p>', 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(74, 74, 'en-US', 'Nachos', 'nachos', 'Nachos', 'Nachos', '<p>Nachos con Queso</p>', 1, 1, '2018-08-06 09:31:10', '2018-08-06 09:31:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sequence`
--

DROP TABLE IF EXISTS `tbl_sequence`;
CREATE TABLE IF NOT EXISTS `tbl_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_sequence_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `customer_sequence_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `order_sequence_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_invoice_sequence_no` (`invoice_sequence_no`),
  KEY `idx_customer_sequence_no` (`customer_sequence_no`),
  KEY `idx_order_sequence_no` (`order_sequence_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_sequence`
--

INSERT INTO `tbl_sequence` (`id`, `invoice_sequence_no`, `customer_sequence_no`, `order_sequence_no`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, '0', '10004', '0', 1, 1, '2018-08-01 18:14:23', '2018-08-01 18:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_session`
--

DROP TABLE IF EXISTS `tbl_session`;
CREATE TABLE IF NOT EXISTS `tbl_session` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_state`
--

DROP TABLE IF EXISTS `tbl_state`;
CREATE TABLE IF NOT EXISTS `tbl_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_country` (`country_id`),
  KEY `idx_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `country_id`, `status`, `code`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, 'DE', 1, 1, '2018-08-01 18:14:11', '2018-08-06 01:04:22'),
(4, 1, 1, 'MN', 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:04:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_state_translated`
--

DROP TABLE IF EXISTS `tbl_state_translated`;
CREATE TABLE IF NOT EXISTS `tbl_state_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_state_translated`
--

INSERT INTO `tbl_state_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Tungurahua', 1, 1, '2018-08-01 18:14:11', '2018-08-06 01:04:22'),
(4, 4, 'en-US', 'Pichicha', 1, 1, '2018-08-01 18:14:12', '2018-08-06 01:04:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_stock_status`
--

DROP TABLE IF EXISTS `tbl_stock_status`;
CREATE TABLE IF NOT EXISTS `tbl_stock_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_stock_status`
--

INSERT INTO `tbl_stock_status` (`id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(2, 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_stock_status_translated`
--

DROP TABLE IF EXISTS `tbl_stock_status_translated`;
CREATE TABLE IF NOT EXISTS `tbl_stock_status_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_stock_status_translated`
--

INSERT INTO `tbl_stock_status_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'In Stock', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14'),
(2, 2, 'en-US', 'Out Of Stock', 1, 1, '2018-08-01 18:14:14', '2018-08-01 18:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_store`
--

DROP TABLE IF EXISTS `tbl_store`;
CREATE TABLE IF NOT EXISTS `tbl_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) NOT NULL,
  `data_category_id` int(11) NOT NULL,
  `is_default` smallint(1) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL,
  `theme` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_data_category_id` (`data_category_id`),
  KEY `idx_theme` (`theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_store`
--

INSERT INTO `tbl_store` (`id`, `url`, `status`, `data_category_id`, `is_default`, `owner_id`, `theme`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'http://teststore.org', 1, 1, 0, 2, NULL, 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_store_configuration`
--

DROP TABLE IF EXISTS `tbl_store_configuration`;
CREATE TABLE IF NOT EXISTS `tbl_store_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_store_code_key` (`store_id`,`code`,`key`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_category` (`category`),
  KEY `idx_code` (`code`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_store_configuration`
--

INSERT INTO `tbl_store_configuration` (`id`, `store_id`, `category`, `code`, `key`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'storeconfig', 'storesettings', 'invoice_prefix', '#', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(2, 1, 'storeconfig', 'storesettings', 'catalog_items_per_page', '8', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(3, 1, 'storeconfig', 'storesettings', 'list_description_limit', '100', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(4, 1, 'storeconfig', 'storesettings', 'display_price_with_tax', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(5, 1, 'storeconfig', 'storesettings', 'tax_calculation_based_on', 'billing', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(6, 1, 'storeconfig', 'storesettings', 'guest_checkout', '0', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(7, 1, 'storeconfig', 'storesettings', 'order_status', '8', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(8, 1, 'storeconfig', 'storesettings', 'display_stock', '0', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(9, 1, 'storeconfig', 'storesettings', 'customer_online', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(10, 1, 'storeconfig', 'storesettings', 'default_customer_group', '2', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(11, 1, 'storeconfig', 'storesettings', 'allow_reviews', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(12, 1, 'storeconfig', 'storesettings', 'allow_guest_reviews', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(13, 1, 'storeconfig', 'storesettings', 'show_out_of_stock_warning', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(14, 1, 'storeconfig', 'storesettings', 'allow_out_of_stock_checkout', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(15, 1, 'storeconfig', 'storesettings', 'allow_wishlist', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(16, 1, 'storeconfig', 'storesettings', 'allow_compare_products', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(17, 1, 'storeconfig', 'storesettings', 'customer_prefix', '#', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(18, 1, 'storeconfig', 'storesettings', 'order_prefix', '#', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(19, 1, 'storeconfig', 'storesettings', 'display_weight', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(20, 1, 'storeconfig', 'storesettings', 'display_dimensions', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(21, 1, 'storeconfig', 'storelocal', 'country', 'IN', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(22, 1, 'storeconfig', 'storelocal', 'timezone', 'Asia/Kolkata', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(23, 1, 'storeconfig', 'storelocal', 'state', 'Haryana', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(24, 1, 'storeconfig', 'storelocal', 'currency', 'USD', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(25, 1, 'storeconfig', 'storelocal', 'length_class', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(26, 1, 'storeconfig', 'storelocal', 'weight_class', '1', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(27, 1, 'storeconfig', 'storelocal', 'language', 'en-US', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(28, 1, 'storeconfig', 'storeimage', 'store_logo', '', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(29, 1, 'storeconfig', 'storeimage', 'icon', '', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(30, 1, 'storeconfig', 'storeimage', 'category_image_width', '90', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(31, 1, 'storeconfig', 'storeimage', 'category_image_height', '90', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(32, 1, 'storeconfig', 'storeimage', 'product_list_image_width', '150', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(33, 1, 'storeconfig', 'storeimage', 'product_list_image_height', '150', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(34, 1, 'storeconfig', 'storeimage', 'related_product_image_width', '80', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(35, 1, 'storeconfig', 'storeimage', 'related_product_image_height', '80', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(36, 1, 'storeconfig', 'storeimage', 'compare_image_width', '90', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(37, 1, 'storeconfig', 'storeimage', 'compare_image_height', '90', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(38, 1, 'storeconfig', 'storeimage', 'wishlist_image_width', '47', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(39, 1, 'storeconfig', 'storeimage', 'wishlist_image_height', '47', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(40, 1, 'storeconfig', 'storeimage', 'cart_image_width', '47', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(41, 1, 'storeconfig', 'storeimage', 'cart_image_height', '47', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(42, 1, 'storeconfig', 'storeimage', 'store_image_width', '47', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(43, 1, 'storeconfig', 'storeimage', 'store_image_height', '47', 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22'),
(44, 1, 'payment', 'paypal_standard', 'business_email', 'villajohnny@gmail.com', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:50'),
(45, 1, 'payment', 'paypal_standard', 'return_url', '/payment/paypal_standard/site/return', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:50'),
(46, 1, 'payment', 'paypal_standard', 'cancel_url', '/payment/paypal_standard/site/cancel', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:50'),
(47, 1, 'payment', 'paypal_standard', 'notify_url', '/payment/paypal_standard/site/notify', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:50'),
(48, 1, 'payment', 'paypal_standard', 'sandbox', '1', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:50'),
(49, 1, 'payment', 'paypal_standard', 'transactionType', 'sale', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:50'),
(50, 1, 'payment', 'paypal_standard_orderstatus_map', 'canceled_reversal_status', '1', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:51'),
(51, 1, 'payment', 'paypal_standard_orderstatus_map', 'completed_status', '4', 1, 1, '2018-08-05 23:58:44', '2018-08-06 12:36:51'),
(52, 1, 'payment', 'paypal_standard_orderstatus_map', 'denied_status', '5', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(53, 1, 'payment', 'paypal_standard_orderstatus_map', 'expired_status', '6', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(54, 1, 'payment', 'paypal_standard_orderstatus_map', 'failed_status', '7', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(55, 1, 'payment', 'paypal_standard_orderstatus_map', 'pending_status', '8', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(56, 1, 'payment', 'paypal_standard_orderstatus_map', 'processed_status', '9', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(57, 1, 'payment', 'paypal_standard_orderstatus_map', 'refunded_status', '3', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(58, 1, 'payment', 'paypal_standard_orderstatus_map', 'reversed_status', '12', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(59, 1, 'payment', 'paypal_standard_orderstatus_map', 'voided_status', '14', 1, 1, '2018-08-05 23:58:45', '2018-08-06 12:36:51'),
(60, 1, 'payment', 'cashondelivery', 'order_status', '2', 1, 1, '2018-08-06 00:52:21', '2018-08-06 12:37:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_store_translated`
--

DROP TABLE IF EXISTS `tbl_store_translated`;
CREATE TABLE IF NOT EXISTS `tbl_store_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `metakeywords` text COLLATE utf8_unicode_ci,
  `metadescription` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_store_translated`
--

INSERT INTO `tbl_store_translated` (`id`, `owner_id`, `language`, `name`, `description`, `metakeywords`, `metadescription`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Default', 'This is test store set up with the application', NULL, NULL, 1, 1, '2018-08-01 18:14:22', '2018-08-01 18:14:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tag`
--

DROP TABLE IF EXISTS `tbl_tag`;
CREATE TABLE IF NOT EXISTS `tbl_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_frequency` (`frequency`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tag`
--

INSERT INTO `tbl_tag` (`id`, `frequency`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 3, 1, 1, '2018-08-05 23:49:22', '2018-08-06 02:53:01'),
(2, 2, 1, 1, '2018-08-05 23:49:22', '2018-08-06 02:53:01'),
(3, 1, 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22'),
(4, 1, 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(5, 1, 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(6, 1, 1, 1, '2018-08-06 02:53:01', '2018-08-06 02:53:01'),
(7, 1, 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(8, 1, 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(9, 1, 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(10, 1, 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(11, 1, 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(12, 1, 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(13, 1, 1, 1, '2018-08-06 09:15:56', '2018-08-06 09:15:56'),
(14, 1, 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(15, 1, 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(16, 1, 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(17, 1, 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(18, 1, 1, 1, '2018-08-06 09:31:10', '2018-08-06 09:31:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tag_translated`
--

DROP TABLE IF EXISTS `tbl_tag_translated`;
CREATE TABLE IF NOT EXISTS `tbl_tag_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tag_translated`
--

INSERT INTO `tbl_tag_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'helado', 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22'),
(2, 2, 'en-US', 'chocolate', 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22'),
(3, 3, 'en-US', 'postre', 1, 1, '2018-08-05 23:49:22', '2018-08-05 23:49:22'),
(4, 4, 'en-US', 'vainilla', 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(5, 5, 'en-US', 'postres', 1, 1, '2018-08-06 02:30:58', '2018-08-06 02:30:58'),
(6, 6, 'en-US', 'fresa', 1, 1, '2018-08-06 02:53:01', '2018-08-06 02:53:01'),
(7, 7, 'en-US', 'frutas', 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(8, 8, 'en-US', 'postre chocolate avellana', 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(9, 9, 'en-US', 'avellana', 1, 1, '2018-08-06 02:53:02', '2018-08-06 02:53:02'),
(10, 10, 'en-US', 'coca-cola-44-0z', 1, 1, '2018-08-06 02:57:13', '2018-08-06 02:57:13'),
(11, 11, 'en-US', 'Coca Cola ZERO 22 0z', 1, 1, '2018-08-06 02:58:16', '2018-08-06 02:58:16'),
(12, 12, 'en-US', 'Pilsener peq', 1, 1, '2018-08-06 03:03:58', '2018-08-06 03:03:58'),
(13, 13, 'en-US', 'Hamburguesa Gigante', 1, 1, '2018-08-06 09:15:56', '2018-08-06 09:15:56'),
(14, 14, 'en-US', 'Hamburguesa Mediana', 1, 1, '2018-08-06 09:18:06', '2018-08-06 09:18:06'),
(15, 15, 'en-US', 'Hamburguesa Pequeña', 1, 1, '2018-08-06 09:19:10', '2018-08-06 09:19:10'),
(16, 16, 'en-US', 'Hot Dog', 1, 1, '2018-08-06 09:27:44', '2018-08-06 09:27:44'),
(17, 17, 'en-US', 'Nuggets de Pollo', 1, 1, '2018-08-06 09:29:26', '2018-08-06 09:29:26'),
(18, 18, 'en-US', 'Nachos', 1, 1, '2018-08-06 09:31:10', '2018-08-06 09:31:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tax_rule`
--

DROP TABLE IF EXISTS `tbl_tax_rule`;
CREATE TABLE IF NOT EXISTS `tbl_tax_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `based_on` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_based_on` (`based_on`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tax_rule`
--

INSERT INTO `tbl_tax_rule` (`id`, `based_on`, `type`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'shipping', 'percent', '0', 1, 1, '2018-08-01 18:14:15', '2018-08-06 01:09:46'),
(2, 'billing', 'percent', '0', 1, 1, '2018-08-01 18:14:15', '2018-08-06 01:10:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tax_rule_details`
--

DROP TABLE IF EXISTS `tbl_tax_rule_details`;
CREATE TABLE IF NOT EXISTS `tbl_tax_rule_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rule_id` int(11) NOT NULL,
  `product_tax_class_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_tax_class_id` (`product_tax_class_id`),
  KEY `idx_customer_group_id` (`customer_group_id`),
  KEY `idx_tax_rule_id` (`tax_rule_id`),
  KEY `idx_tax_zone_id` (`tax_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tax_rule_details`
--

INSERT INTO `tbl_tax_rule_details` (`id`, `tax_rule_id`, `product_tax_class_id`, `customer_group_id`, `tax_zone_id`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(7, 1, 1, 2, 1, 1, 1, '2018-08-06 01:09:46', '2018-08-06 01:09:46'),
(8, 1, 1, 3, 1, 1, 1, '2018-08-06 01:09:46', '2018-08-06 01:09:46'),
(9, 1, 1, 4, 1, 1, 1, '2018-08-06 01:09:46', '2018-08-06 01:09:46'),
(13, 2, 1, 2, 1, 1, 1, '2018-08-06 01:10:53', '2018-08-06 01:10:53'),
(14, 2, 1, 3, 1, 1, 1, '2018-08-06 01:10:53', '2018-08-06 01:10:53'),
(15, 2, 1, 4, 1, 1, 1, '2018-08-06 01:10:53', '2018-08-06 01:10:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tax_rule_translated`
--

DROP TABLE IF EXISTS `tbl_tax_rule_translated`;
CREATE TABLE IF NOT EXISTS `tbl_tax_rule_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tax_rule_translated`
--

INSERT INTO `tbl_tax_rule_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Impuesto de Venta', 1, 1, '2018-08-01 18:14:15', '2018-08-06 01:09:46'),
(2, 2, 'en-US', 'Impuesto de Servicio', 1, 1, '2018-08-01 18:14:15', '2018-08-06 01:10:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `timezone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  UNIQUE KEY `idx_person_id` (`person_id`),
  KEY `idx_status` (`status`),
  KEY `idx_timezone` (`timezone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password_reset_token`, `password_hash`, `auth_key`, `status`, `person_id`, `login_ip`, `last_login`, `timezone`, `type`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'admin', NULL, '$2y$13$OiKwc8kihkydiU.LJoUT3O4y6rKNRYvR6Dt4a3f1W74s/pLBLqSMi', 'NDhIzNy3k1QgjX1oRepU1v055IC6_jUb', 1, 1, '::1', '2018-08-07 02:02:20', 'America/Bogota', 'system', 1, 1, '2018-08-01 18:14:09', '2018-08-01 18:14:09'),
(2, 'storeowner', NULL, '$2y$13$x9ufuhh1/CT0kW5uev/8kuPrJMJAgEFnA2wVktUHudaQeHlWGOR.O', 'BW1AEhpUXuvN2hnfPCwGmDJkJWgaLVmG', 1, 2, NULL, NULL, 'Asia/Kolkata', 'system', 1, 1, '2018-08-01 18:14:19', '2018-08-01 18:14:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_weight_class`
--

DROP TABLE IF EXISTS `tbl_weight_class`;
CREATE TABLE IF NOT EXISTS `tbl_weight_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unit` (`unit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_weight_class`
--

INSERT INTO `tbl_weight_class` (`id`, `unit`, `value`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'kg', '1.00', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_weight_class_translated`
--

DROP TABLE IF EXISTS `tbl_weight_class_translated`;
CREATE TABLE IF NOT EXISTS `tbl_weight_class_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_weight_class_translated`
--

INSERT INTO `tbl_weight_class_translated` (`id`, `owner_id`, `language`, `name`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Kilogram', 1, 1, '2018-08-01 18:14:13', '2018-08-01 18:14:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_zone`
--

DROP TABLE IF EXISTS `tbl_zone`;
CREATE TABLE IF NOT EXISTS `tbl_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `zip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_zip_range` smallint(1) DEFAULT NULL,
  `from_zip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_zip` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country_id` (`country_id`),
  KEY `idx_state_id` (`state_id`),
  KEY `idx_zip` (`zip`),
  KEY `idx_is_zip_range` (`is_zip_range`),
  KEY `idx_from_zip` (`from_zip`),
  KEY `idx_to_zip` (`to_zip`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_zone`
--

INSERT INTO `tbl_zone` (`id`, `country_id`, `state_id`, `zip`, `is_zip_range`, `from_zip`, `to_zip`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 1, '110005', 0, '', '', 1, 1, '2018-08-01 18:14:14', '2018-08-06 01:07:52'),
(2, 1, 4, '*', 1, '781000', '781010', 1, 1, '2018-08-01 18:14:14', '2018-08-06 01:08:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_zone_translated`
--

DROP TABLE IF EXISTS `tbl_zone_translated`;
CREATE TABLE IF NOT EXISTS `tbl_zone_translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner_id` (`owner_id`),
  KEY `idx_language` (`language`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_zone_translated`
--

INSERT INTO `tbl_zone_translated` (`id`, `owner_id`, `language`, `name`, `description`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1, 'en-US', 'Zona Centro', 'Zona centro de Ecuador', 1, 1, '2018-08-01 18:14:14', '2018-08-06 01:07:52'),
(2, 2, 'en-US', 'Zona Norte', 'Capital del pais', 1, 1, '2018-08-01 18:14:14', '2018-08-06 01:08:22');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_cash_on_delivery_transaction`
--
ALTER TABLE `tbl_cash_on_delivery_transaction`
  ADD CONSTRAINT `fk_tbl_cash_on_delivery_transaction_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_city_translated`
--
ALTER TABLE `tbl_city_translated`
  ADD CONSTRAINT `fk_tbl_city_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_country_translated`
--
ALTER TABLE `tbl_country_translated`
  ADD CONSTRAINT `fk_tbl_country_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_currency_translated`
--
ALTER TABLE `tbl_currency_translated`
  ADD CONSTRAINT `fk_tbl_currency_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_data_category_translated`
--
ALTER TABLE `tbl_data_category_translated`
  ADD CONSTRAINT `fk_tbl_data_category_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_data_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_extension_translated`
--
ALTER TABLE `tbl_extension_translated`
  ADD CONSTRAINT `fk_tbl_extension_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_extension` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD CONSTRAINT `fk_tbl_invoice_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_invoice_translated`
--
ALTER TABLE `tbl_invoice_translated`
  ADD CONSTRAINT `fk_tbl_invoice_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_length_class_translated`
--
ALTER TABLE `tbl_length_class_translated`
  ADD CONSTRAINT `fk_tbl_length_class_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_length_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_newsletter_translated`
--
ALTER TABLE `tbl_newsletter_translated`
  ADD CONSTRAINT `fk_tbl_newsletter_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_newsletter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_notification_layout_translated`
--
ALTER TABLE `tbl_notification_layout_translated`
  ADD CONSTRAINT `fk_tbl_notification_layout_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_notification_layout` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_notification_template_translated`
--
ALTER TABLE `tbl_notification_template_translated`
  ADD CONSTRAINT `fk_tbl_notification_template_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_notification_template` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_address_details`
--
ALTER TABLE `tbl_order_address_details`
  ADD CONSTRAINT `fk_tbl_order_address_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_history`
--
ALTER TABLE `tbl_order_history`
  ADD CONSTRAINT `fk_tbl_order_history_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_history_translated`
--
ALTER TABLE `tbl_order_history_translated`
  ADD CONSTRAINT `fk_tbl_order_history_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_payment_details`
--
ALTER TABLE `tbl_order_payment_details`
  ADD CONSTRAINT `fk_tbl_order_payment_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_payment_details_translated`
--
ALTER TABLE `tbl_order_payment_details_translated`
  ADD CONSTRAINT `fk_tbl_order_payment_details_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order_payment_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_payment_transaction_map`
--
ALTER TABLE `tbl_order_payment_transaction_map`
  ADD CONSTRAINT `fk_tbl_order_payment_transaction_map_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD CONSTRAINT `fk_tbl_order_product_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_status_translated`
--
ALTER TABLE `tbl_order_status_translated`
  ADD CONSTRAINT `fk_tbl_order_status_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_order_translated`
--
ALTER TABLE `tbl_order_translated`
  ADD CONSTRAINT `fk_tbl_order_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_page_translated`
--
ALTER TABLE `tbl_page_translated`
  ADD CONSTRAINT `fk_tbl_page_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_paypal_standard_transaction`
--
ALTER TABLE `tbl_paypal_standard_transaction`
  ADD CONSTRAINT `fk_tbl_paypal_standard_transaction_order_id` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_attribute_group_translated`
--
ALTER TABLE `tbl_product_attribute_group_translated`
  ADD CONSTRAINT `fk_tbl_product_attribute_group_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_attribute_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_attribute_mapping`
--
ALTER TABLE `tbl_product_attribute_mapping`
  ADD CONSTRAINT `fk_tbl_product_attribute_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_attribute_translated`
--
ALTER TABLE `tbl_product_attribute_translated`
  ADD CONSTRAINT `fk_tbl_product_attribute_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_category_mapping`
--
ALTER TABLE `tbl_product_category_mapping`
  ADD CONSTRAINT `fk_tbl_product_category_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_category_translated`
--
ALTER TABLE `tbl_product_category_translated`
  ADD CONSTRAINT `fk_tbl_product_category_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_discount`
--
ALTER TABLE `tbl_product_discount`
  ADD CONSTRAINT `fk_tbl_product_discount_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_download_mapping`
--
ALTER TABLE `tbl_product_download_mapping`
  ADD CONSTRAINT `fk_tbl_product_download_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_download_translated`
--
ALTER TABLE `tbl_product_download_translated`
  ADD CONSTRAINT `fk_tbl_product_download_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_download` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD CONSTRAINT `fk_tbl_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_image_translated`
--
ALTER TABLE `tbl_product_image_translated`
  ADD CONSTRAINT `fk_tbl_product_image_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_option_mapping`
--
ALTER TABLE `tbl_product_option_mapping`
  ADD CONSTRAINT `fk_tbl_product_option_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_option_translated`
--
ALTER TABLE `tbl_product_option_translated`
  ADD CONSTRAINT `fk_tbl_product_option_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_option_value_translated`
--
ALTER TABLE `tbl_product_option_value_translated`
  ADD CONSTRAINT `fk_tbl_product_option_value_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_option_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_rating`
--
ALTER TABLE `tbl_product_rating`
  ADD CONSTRAINT `fk_tbl_product_rating_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_related_product_mapping`
--
ALTER TABLE `tbl_product_related_product_mapping`
  ADD CONSTRAINT `fk_tbl_product_related_product_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_review`
--
ALTER TABLE `tbl_product_review`
  ADD CONSTRAINT `fk_tbl_product_review_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_review_translated`
--
ALTER TABLE `tbl_product_review_translated`
  ADD CONSTRAINT `fk_tbl_product_review_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  ADD CONSTRAINT `fk_tbl_product_special_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_tag_mapping`
--
ALTER TABLE `tbl_product_tag_mapping`
  ADD CONSTRAINT `fk_tbl_product_tag_mapping_product_id` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_product_tax_class_translated`
--
ALTER TABLE `tbl_product_tax_class_translated`
  ADD CONSTRAINT `fk_tbl_product_tax_class_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product_tax_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_product_translated`
--
ALTER TABLE `tbl_product_translated`
  ADD CONSTRAINT `fk_tbl_product_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_state_translated`
--
ALTER TABLE `tbl_state_translated`
  ADD CONSTRAINT `fk_tbl_state_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_stock_status_translated`
--
ALTER TABLE `tbl_stock_status_translated`
  ADD CONSTRAINT `fk_tbl_stock_status_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_stock_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_store_translated`
--
ALTER TABLE `tbl_store_translated`
  ADD CONSTRAINT `fk_tbl_store_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_tag_translated`
--
ALTER TABLE `tbl_tag_translated`
  ADD CONSTRAINT `fk_tbl_tag_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_tax_rule_translated`
--
ALTER TABLE `tbl_tax_rule_translated`
  ADD CONSTRAINT `fk_tbl_tax_rule_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_tax_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_weight_class_translated`
--
ALTER TABLE `tbl_weight_class_translated`
  ADD CONSTRAINT `fk_tbl_weight_class_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_weight_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_zone_translated`
--
ALTER TABLE `tbl_zone_translated`
  ADD CONSTRAINT `fk_tbl_zone_translated_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `tbl_zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
