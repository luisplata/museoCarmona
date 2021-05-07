-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2020 a las 04:12:47
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `museocarmona_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img_mobile` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `img_mobile`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1/2020-10/image_1.jpg', 'uploads/1/2020-10/image_1.jpg', 'activo', '2020-10-08 01:24:59', '2020-10-08 06:30:22'),
(2, 'uploads/1/2020-10/image_2.jpg', 'uploads/1/2020-10/image_2.jpg', 'activo', '2020-10-08 01:32:01', NULL),
(3, 'uploads/1/2020-10/image_3.jpg', 'uploads/1/2020-10/image_3.jpg', 'activo', '2020-10-08 01:32:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_expositions`
--

CREATE TABLE `category_expositions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `category_expositions`
--

INSERT INTO `category_expositions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Exposiciones Individuales', 'activo', '2020-10-08 01:25:31', NULL),
(2, 'Exposiciones Colectivas', 'activo', '2020-10-08 01:25:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_projects`
--

CREATE TABLE `category_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `category_projects`
--

INSERT INTO `category_projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pinturas', 'activo', '2020-10-08 01:32:30', NULL),
(2, 'Cuadros de acero', 'activo', '2020-10-08 01:32:31', NULL),
(3, 'Esculturas', 'activo', '2020-10-08 01:32:31', NULL),
(4, 'Jarrones', 'activo', '2020-10-08 01:32:32', NULL),
(5, 'Vitrales', 'activo', '2020-10-08 01:32:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-10-03 21:54:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2020-10-03 21:55:07', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2020-10-08 05:53:33', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Actualizar información Informacion en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-info-circle</td></tr><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-10-08 06:20:41', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/banner/edit-save/1', 'Actualizar información  en Banner', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>img</td><td></td><td>uploads/1/2020-10/1.jpg</td></tr><tr><td>img_mobile</td><td></td><td>uploads/1/2020-10/1.jpg</td></tr></tbody></table>', 1, '2020-10-08 06:30:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Banner', 'Route', 'AdminBannerControllerGetIndex', NULL, 'fa fa-image', 0, 1, 0, 1, 1, '2020-10-08 05:54:49', NULL),
(2, 'Categoria Proyectos', 'Route', 'AdminCategoryProjectsControllerGetIndex', NULL, 'fa fa-th-list', 0, 1, 0, 1, 2, '2020-10-08 05:56:54', NULL),
(3, 'Iconos Informacion', 'Route', 'AdminIconsInfoControllerGetIndex', NULL, 'fa fa-list-alt', 0, 1, 0, 1, 3, '2020-10-08 05:58:30', NULL),
(4, 'Web Informacion', 'Route', 'AdminWebInfoControllerGetIndex', NULL, 'fa fa-text-width', 0, 1, 0, 1, 4, '2020-10-08 06:00:16', NULL),
(5, 'Imagenes Esculturas', 'Route', 'AdminImageSculpturesControllerGetIndex', NULL, 'fa fa-file-image-o', 0, 1, 0, 1, 5, '2020-10-08 06:03:31', NULL),
(6, 'Servicios', 'Route', 'AdminServicesControllerGetIndex', NULL, 'fa fa-list', 0, 1, 0, 1, 6, '2020-10-08 06:05:02', NULL),
(7, 'Proyectos', 'Route', 'AdminProjectsControllerGetIndex', NULL, 'fa fa-list-ul', 0, 1, 0, 1, 7, '2020-10-08 06:06:59', NULL),
(8, 'Año Exposiciones', 'Route', 'AdminYearExpositionsControllerGetIndex', NULL, 'fa fa-list-ol', 0, 1, 0, 1, 8, '2020-10-08 06:10:06', NULL),
(9, 'Exposiciones', 'Route', 'AdminExpositionsControllerGetIndex', NULL, 'fa fa-angellist', 0, 1, 0, 1, 9, '2020-10-08 06:11:29', NULL),
(10, 'Obras', 'Route', 'AdminWorksControllerGetIndex', NULL, 'fa fa-indent', 0, 1, 0, 1, 10, '2020-10-08 06:15:15', NULL),
(11, 'Newsletter', 'Route', 'AdminNewsletterControllerGetIndex', NULL, 'fa fa-hacker-news', 0, 1, 0, 1, 11, '2020-10-08 06:17:32', NULL),
(12, 'Informacion', 'Route', 'AdminInfoControllerGetIndex', 'normal', 'fa fa-info-circle', 0, 1, 0, 1, 12, '2020-10-08 06:18:21', '2020-10-08 06:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(13, 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notificaciones', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(2, 'Privilegios', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(3, 'Privilegios & Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(4, 'Gestión de usuarios', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-10-03 21:54:38', NULL, NULL),
(5, 'Ajustes', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(6, 'Generador de Módulos', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(7, 'Gestión de Menús', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(8, 'Plantillas de Correo', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(9, 'Generador de Estadísticas', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(10, 'Generador de API', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(11, 'Log de Accesos (Usuarios)', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-10-03 21:54:38', NULL, NULL),
(12, 'Banner', 'fa fa-image', 'banner', 'banner', 'AdminBannerController', 0, 0, '2020-10-08 05:54:49', NULL, NULL),
(13, 'Categoria Proyectos', 'fa fa-th-list', 'category_projects', 'category_projects', 'AdminCategoryProjectsController', 0, 0, '2020-10-08 05:56:54', NULL, NULL),
(14, 'Iconos Informacion', 'fa fa-list-alt', 'icons_info', 'icons_info', 'AdminIconsInfoController', 0, 0, '2020-10-08 05:58:30', NULL, NULL),
(15, 'Web Informacion', 'fa fa-text-width', 'web_info', 'web_info', 'AdminWebInfoController', 0, 0, '2020-10-08 06:00:16', NULL, NULL),
(16, 'Imagenes Esculturas', 'fa fa-file-image-o', 'image_sculptures', 'image_sculptures', 'AdminImageSculpturesController', 0, 0, '2020-10-08 06:03:30', NULL, NULL),
(17, 'Servicios', 'fa fa-list', 'services', 'services', 'AdminServicesController', 0, 0, '2020-10-08 06:05:01', NULL, NULL),
(18, 'Proyectos', 'fa fa-list-ul', 'projects', 'projects', 'AdminProjectsController', 0, 0, '2020-10-08 06:06:59', NULL, NULL),
(19, 'Año Exposiciones', 'fa fa-list-ol', 'year_expositions', 'year_expositions', 'AdminYearExpositionsController', 0, 0, '2020-10-08 06:10:06', NULL, NULL),
(20, 'Exposiciones', 'fa fa-angellist', 'expositions', 'expositions', 'AdminExpositionsController', 0, 0, '2020-10-08 06:11:29', NULL, NULL),
(21, 'Obras', 'fa fa-indent', 'works', 'works', 'AdminWorksController', 0, 0, '2020-10-08 06:15:14', NULL, NULL),
(22, 'Newsletter', 'fa fa-hacker-news', 'newsletter', 'newsletter', 'AdminNewsletterController', 0, 0, '2020-10-08 06:17:32', NULL, NULL),
(23, 'Informacion', 'fa fa-glass', 'info', 'info', 'AdminInfoController', 0, 0, '2020-10-08 06:18:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-10-03 21:54:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-10-03 21:54:38', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-10-03 21:54:38', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-10-03 21:54:39', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-10-03 21:54:39', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-10-03 21:54:39', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-10-03 21:54:39', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-10-03 21:54:39', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-10-03 21:54:39', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-10-03 21:54:39', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-10-03 21:54:39', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-10-03 21:54:40', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-10-03 21:54:40', NULL, 'Estilo de página de registro', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-10-03 21:54:40', NULL, 'Estilo de página de registro', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Estilo de página de registro', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Correo', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Correo', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Correo', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-10-03 21:54:40', NULL, 'Ajustes de Correo', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Correo', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Correo', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2020-10-03 21:54:40', NULL, 'Ajustes de Aplicaciones', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$O42T86Ib2HIpBK9u/m0XWel.BN4ZIUjXKvO9kHqfOR5UT7CNxYjee', 1, '2020-10-03 21:54:38', NULL, 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expositions`
--

CREATE TABLE `expositions` (
  `id` int(11) NOT NULL,
  `category_expositions_id` int(11) DEFAULT NULL,
  `year_expositions_id` int(11) DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `place` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `expositions`
--

INSERT INTO `expositions` (`id`, `category_expositions_id`, `year_expositions_id`, `city`, `country`, `place`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Cartagena', 'Colombia', 'Museo de arte, Moderno', 'activo', '2020-10-08 01:35:44', NULL),
(2, 1, 1, 'Cartagena', 'Colombia', 'Museo de arte, Moderno', 'activo', '2020-10-08 01:35:45', NULL),
(3, 1, 1, 'C. Panama', 'Panama', 'Museo de arte, Contemporaneo', 'activo', '2020-10-08 01:35:46', NULL),
(4, 1, 1, 'Bogota', 'Colombia', 'Calle de la cultura, Corporación del arte', 'activo', '2020-10-08 01:35:47', NULL),
(5, 1, 1, 'Medellin', 'Colombia', 'Instituto de recreación y Cultura', 'activo', '2020-10-08 01:35:47', NULL),
(6, 1, 1, 'Cartagena', 'Colombia', 'Imagina, Alianza Colombo Francesa', 'activo', '2020-10-08 01:35:49', NULL),
(7, 1, 2, 'Cartagena', 'Colombia', 'Museo Naval', 'activo', '2020-10-08 01:35:48', NULL),
(8, 1, 2, 'Houston Texas', 'USA', 'Art International', 'activo', '2020-10-08 01:35:49', NULL),
(9, 1, 2, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:50', NULL),
(10, 1, 2, 'C. Panama', 'Panama', 'Galeria Habitante', 'activo', '2020-10-08 01:35:50', NULL),
(11, 1, 3, 'Cartagena', 'Colombia', 'Museo Naval', 'activo', '2020-10-08 01:35:51', NULL),
(12, 1, 4, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:51', NULL),
(13, 1, 4, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:52', NULL),
(14, 1, 4, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:53', NULL),
(15, 1, 4, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:53', NULL),
(16, 1, 4, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:54', NULL),
(17, 1, 5, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:55', NULL),
(18, 1, 5, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:55', NULL),
(19, 1, 5, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:56', NULL),
(20, 1, 5, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:57', NULL),
(21, 2, 5, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:58', NULL),
(22, 2, 6, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:58', NULL),
(23, 2, 6, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:35:59', NULL),
(24, 2, 6, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:36:00', NULL),
(25, 2, 6, 'Bogota', 'Colombia', 'Fenalco', 'activo', '2020-10-08 01:36:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icons_info`
--

CREATE TABLE `icons_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `icons_info`
--

INSERT INTO `icons_info` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Correo', 'uploads/1/2020-10/icon_1.png', '2020-10-08 01:41:41', NULL),
(2, 'Horario', 'uploads/1/2020-10/icon_2.png', '2020-10-08 01:41:42', NULL),
(3, 'Ubicación', 'uploads/1/2020-10/icon_3.png', '2020-10-08 01:41:43', NULL),
(4, 'Teléfonos', 'uploads/1/2020-10/icon_4.png', '2020-10-08 01:41:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image_sculptures`
--

CREATE TABLE `image_sculptures` (
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `image_sculptures`
--

INSERT INTO `image_sculptures` (`id`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1/2020-10/sculpture_1.jpg', 'activo', '2020-10-08 01:43:35', NULL),
(2, 'uploads/1/2020-10/sculpture_2.jpg', 'activo', '2020-10-08 01:43:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `whastapp` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `call` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `hours` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `days` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `city` varchar(300) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `phone_2` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `latitud` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `longitud` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`id`, `whastapp`, `call`, `facebook`, `instagram`, `mail`, `hours`, `days`, `address`, `city`, `phone`, `phone_2`, `latitud`, `longitud`, `created_at`, `updated_at`) VALUES
(1, '3024136600', '3024136600', 'https://www.facebook.com/', 'https://www.instagram.com/', 'info@museocarmona.com', 'De 10:00 a.m a 10:00 p.m', 'De martes a domingo', 'Carrera 2 # 36 - 86', 'Centro histórico de Cartagena, Playa de la artillería - cuartel de la artillería, carrera 2da', '(+57) 302 413 6600', '(+57) 315 7312 843', '11.007218', '-74.819991', '2020-10-03 16:46:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `mail` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`id`, `mail`, `created_at`, `updated_at`) VALUES
(1, 'hsmadera18@gmail.com', '2020-10-08 01:46:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `category_projects_id` int(11) DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modal` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `year` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `category_projects_id`, `img`, `modal`, `title`, `subtitle`, `year`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'uploads/1/2020-10/project_1.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Prueba', 'Subtitle', '1996', 'activo', '2020-10-08 01:47:42', NULL),
(2, 3, 'uploads/1/2020-10/project_2.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Prueba', 'Subtitle', '1997', 'activo', '2020-10-08 01:47:43', NULL),
(3, 4, 'uploads/1/2020-10/project_3.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Prueba', 'Subtitle', '1998', 'activo', '2020-10-08 01:47:44', NULL),
(4, 5, 'uploads/1/2020-10/project_4.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Prueba', 'Subtitle', '1999', 'activo', '2020-10-08 01:47:45', NULL),
(5, 1, 'uploads/1/2020-10/project_1.jpg', 'uploads/1/2020-10/project_modal.jpg', 'La', 'Chismosa', '1999', 'activo', '2020-10-08 01:47:45', NULL),
(6, 1, 'uploads/1/2020-10/project_2.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Última cena', 'En Cartagena', '2000', 'activo', '2020-10-08 01:47:46', NULL),
(7, 1, 'uploads/1/2020-10/project_3.jpg', 'uploads/1/2020-10/project_modal.jpg', '', 'Huellas', '2000', 'activo', '2020-10-08 01:47:46', NULL),
(8, 1, 'uploads/1/2020-10/project_4.jpg', 'uploads/1/2020-10/project_modal.jpg', '', 'Gaiteros', '2000', 'activo', '2020-10-08 01:47:47', NULL),
(9, 1, 'uploads/1/2020-10/project_5.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Negocios', 'Bicentenarios', '2000', 'activo', '2020-10-08 01:47:48', NULL),
(10, 1, 'uploads/1/2020-10/project_6.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Ferias &', 'Fiestas 1', '2000', 'activo', '2020-10-08 01:47:48', NULL),
(11, 1, 'uploads/1/2020-10/project_7.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Ferias &', 'Fiestas 2', '2000', 'activo', '2020-10-08 01:47:49', NULL),
(12, 1, 'uploads/1/2020-10/project_8.jpg', 'uploads/1/2020-10/project_modal.jpg', '', 'Propuesta', '2005', 'activo', '2020-10-08 01:47:50', NULL),
(13, 1, 'uploads/1/2020-10/project_8.jpg', 'uploads/1/2020-10/project_modal.jpg', '', 'Propuesta', '2005', 'activo', '2020-10-08 01:47:50', NULL),
(14, 1, 'uploads/1/2020-10/project_7.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Ferias &', 'Fiestas 2', '2005', 'activo', '2020-10-08 01:47:51', NULL),
(15, 1, 'uploads/1/2020-10/project_6.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Ferias &', 'Fiestas 1', '2005', 'activo', '2020-10-08 01:47:52', NULL),
(16, 1, 'uploads/1/2020-10/project_5.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Negocios', 'Bicentenarios', '2005', 'activo', '2020-10-08 01:47:52', NULL),
(17, 1, 'uploads/1/2020-10/project_4.jpg', 'uploads/1/2020-10/project_modal.jpg', '', 'Gaiteros', '2005', 'activo', '2020-10-08 01:47:53', NULL),
(18, 1, 'uploads/1/2020-10/project_3.jpg', 'uploads/1/2020-10/project_modal.jpg', '', 'Huellas', '2018', 'activo', '2020-10-08 01:47:53', NULL),
(19, 1, 'uploads/1/2020-10/project_2.jpg', 'uploads/1/2020-10/project_modal.jpg', 'Última cena', 'En Cartagena', '2018', 'activo', '2020-10-08 01:47:54', NULL),
(20, 1, 'uploads/1/2020-10/project_1.jpg', 'uploads/1/2020-10/project_modal.jpg', 'La', 'Chismosa', '2018', 'activo', '2020-10-08 01:47:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `text` varchar(500) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `name`, `text`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Restaurante y Bar', 'Gastronomía Caribe, Mediterránea e Italiana y un Bar con Café, Jugos Naturales, Cocteles y todo tipo de licores, además de comidas.', 'uploads/1/2020-10/service_1.png', 'activo', '2020-10-08 01:56:35', NULL),
(2, 'Obras de arte, Carmona', '', 'uploads/1/2020-10/service_2.png', 'activo', '2020-10-08 01:56:36', NULL),
(3, 'Experiencias lúdicas', 'Pinturas, Danzas, juegos, cine.', 'uploads/1/2020-10/service_3.png', 'activo', '2020-10-08 01:56:36', NULL),
(4, 'Eventos, conferencias y conservatorios', 'Historia, arte, literatura y música.', 'uploads/1/2020-10/service_4.png', 'activo', '2020-10-08 01:56:37', NULL),
(5, 'Productos merchandising', 'Productos relacionados con las obras del autor.', 'uploads/1/2020-10/service_5.png', 'activo', '2020-10-08 01:56:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `web_info`
--

CREATE TABLE `web_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `web_info`
--

INSERT INTO `web_info` (`id`, `name`, `title`, `subtitle`, `text`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Nosotros', 'Museo', 'Carmona', 'El Museo Carmona es un lugar lleno de realismo mágico y arte, que te lleva en un viaje por el tiempo en el que puedes conocer la belleza de la cultura cartagenera.\r\n\r\nAbrimos nuestras puertas en la Ciudad Amurallada de Cartagena de Indias para exponer de forma permanente las obras del maestro y escultor Edgardo Carmona Vergara quien logra expresar la cotidianidad e idiosincrasia caribe a través de sus pinturas y esculturas ensambladas en acero. ⁣\r\n\r\nEl edificio donde estamos establecidos fue construido en tiempo de la conquista y fue el Cuartel de la Artillería, donde se alojaron buena parte de las tropas establecidas en Cartagena para la defensa de la ciudad. Se adecua con fines militares en algún punto del siglo XVII. Esto aún se expresa a través de la estructura aporticada de su fachada y su construcción en general. La edificación fue usada con diversos fines, dándole mayor peso histórico y cultural a las actividades milicianas y a las ocupaciones agrarias.\r\n\r\nEl Cuartel de la Artillería sigue en pie en el Centro Histórico, en el barrio Nuestra Señora de la Merced, frente al Baluarte de Santa Cruz. En la actualidad funciona allí el Museo de Arte Carmona, notables restaurantes como La Girolata y Palo Santo, y el Club Fragma, lugar de esparcimiento y diversión.', 'uploads/1/2020-10/about_image.jpg', '2020-10-08 02:07:07', NULL),
(2, 'Biografía', 'Edgardo', 'Carmona Vergara', 'Escultor, pintor y dibujante, nació en la ciudad de Cartagena de Indias, Colombia.\r\n\r\nCon sus aceros ha explorado desde adentro y desde afuera los universos humanos, no solo con el rigor técnico de quien doméstica metales para convertirlos en arte, sino también con el rigor estético con el que ha sabido retratar cuerpos y retratar espíritus. El resultado: criaturas capaces de sugerir diálogos en la mirada de todos los espectadores, aprendices y consagrados, advenedizos o no, que en cualquier estación de la vida, se detienen a conversar con estos personajes conmovedores, cuya presencia llega a convertirse en fascinación poética.\r\n\r\nSus primeras pinturas en vinilo y óleo, datan de la década del 60, así como sus primeras esculturas de acero, cobre y sus derivados, a partir de los años 70. Su primera Exposición de esculturas fue en el año 1.999, en el Museo de Arte Moderno de Cartagena, de allí pasó al Museo de Arte Contemporáneo de Panamá, y al Claustro-museo Oberhessiches en Giessen - Alemania. A partir de allí, su obra ha hecho un recorrido muy amplio por diferentes museos y ciudades de Alemania, Italia, Eslovenia, Francia, Estados Unidos, Panamá y Colombia.\r\n\r\nCursó dibujo, pintura y modelado en la Academia Alberdi, realizó estudios en Administración de Empresas e Ingeniería Mecánica, está cursando una maestría en Interiorismo y Diseño de Muebles, recibió un Doctorado Honoris Causa en Gestión Cultural y trabajó por muchos años en el área metalmecánica como diseñador de herramientas y equipos, y como constructor de edificios y plantas industriales en estructuras de acero, lo que le ha dejado un vasto conocimiento del metal, que conjuntado a una profunda sensibilidad artística, y a su manejo del dibujo, técnicas como el acrílico, óleo, cerámica y otros, le han permitido realizar un trabajo de incuestionable valor artístico, con un estilo original y único.\r\n\r\nEntre los años 1.980 y 1.983, escribió y publicó artículos quincenales sobre temas sociales y económicos para el periódico “El Espectador”, de circulación nacional en su país. Anteriormente había ilustrado con sus dibujos algunos libros, uno sobre dialéctica de la Universidad Nacional de Colombia, y otros de Matemáticas escritos por su padre.', 'uploads/1/2020-10/biography_image.jpg', '2020-10-08 02:07:05', NULL),
(3, 'Procesos', 'Elaboración', 'Esculturas', '1. Técnica escultórica\r\n\r\nLa técnica de la escultura de Carmona, se denomina “Ensamblaje en Acero”, ya que consiste en la elaboración de múltiples partes o elementos en acero estructural, tales como varillas, tubos y láminas compradas en ferreterías.\r\n\r\nA manera de ejemplo, el brazo de un personaje consta de una mano de cinco dedos construidos en varilla, o pedazos de varilla, donde el meñique tiene un diámetro y longitud menores, y el pulgar tiene un diámetro mayor que los demás. Adicionalmente la palma de la mano es una platina recortada y conformada, y el brazo y antebrazo son pedazos de tubo cortados, soldados y armados de acuerdo a la actitud que se pretende dar al personaje.\r\n\r\n2. Proceso creativo\r\n\r\nNace con una idea que involucra un personaje y sus vivencias claramente identificados por el escultor en su parte emotiva y espiritual, a través de la interacción con ese personaje por un periodo de tiempo, lo que le permite asimilar su espíritu, sus expresiones y sus actitudes vitales.\r\n\r\nA partir de esa idea clara desde el punto de vista emocional y estético, el escultor produce entre seis y diez dibujos sobre la situación planteada con los personajes, y pasa a la etapa de taller donde se inicia la elaboración de los elementos o partes pre-estimadas o pre-diseñadas en el papel, de las cuales una buena parte son ajustadas y ensambladas pretenciosamente hasta lograr la forma y el lenguaje, como parámetros fundamentales dentro del espíritu perfeccionista del escultor.\r\n\r\nUna vez concluida esta etapa y ya pre-ensamblada la escultura completa, el escultor se sumerge en una etapa de contemplación de su obra, en horas generalmente nocturnas y en solitario, en donde consigue establecer un diálogo estimulado por la correlación entre las zonas emitidas y receptivas frente a su creación, logrando depurar la intencionalidad y el carácter de sus imágenes.', NULL, '2020-10-08 02:07:06', NULL),
(4, NULL, 'Servicios', 'Museo Carmona', NULL, 'uploads/1/2020-10/service_image.jpg', '2020-10-08 02:02:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `place` text COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `img`, `details`, `place`, `city`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1/2020-10/work_1.jpg', '* Dieciocho (18) Obras Monumentales Figurativas y Cuatro (4) Obras Monumentales Abstractas instaladas en el Centro de la Ciudad', 'Centro de la ciudad', 'Estados unidos', 'Fort Meyers (Florida)', 'activo', '2020-10-08 02:09:52', NULL),
(2, 'uploads/1/2020-10/work_1.jpg', '* Dieciocho (18) Obras Monumentales Figurativas y Cuatro (4) Obras Monumentales Abstractas instaladas en el Centro de la Ciudad', 'Centro de la ciudad', 'Estados unidos', 'Fort Meyers (Florida)', 'activo', '2020-10-08 02:09:53', NULL),
(3, 'uploads/1/2020-10/work_1.jpg', '* Dieciocho (18) Obras Monumentales Figurativas y Cuatro (4) Obras Monumentales Abstractas instaladas en el Centro de la Ciudad', 'Centro de la ciudad', 'Estados unidos', 'Fort Meyers (Florida)', 'activo', '2020-10-08 02:09:53', NULL),
(4, 'uploads/1/2020-10/work_1.jpg', '* Dieciocho (18) Obras Monumentales Figurativas y Cuatro (4) Obras Monumentales Abstractas instaladas en el Centro de la Ciudad', 'Centro de la ciudad', 'Estados unidos', 'Fort Meyers (Florida)', 'activo', '2020-10-08 02:09:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `year_expositions`
--

CREATE TABLE `year_expositions` (
  `id` int(11) NOT NULL,
  `name` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `year_expositions`
--

INSERT INTO `year_expositions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1999, 'activo', '2020-10-08 01:34:08', NULL),
(2, 2000, 'activo', '2020-10-08 01:34:09', NULL),
(3, 2001, 'activo', '2020-10-08 01:34:10', NULL),
(4, 2002, 'activo', '2020-10-08 01:34:10', NULL),
(5, 2003, 'activo', '2020-10-08 01:34:11', NULL),
(6, 2004, 'activo', '2020-10-08 01:34:11', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category_expositions`
--
ALTER TABLE `category_expositions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category_projects`
--
ALTER TABLE `category_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expositions`
--
ALTER TABLE `expositions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `icons_info`
--
ALTER TABLE `icons_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `image_sculptures`
--
ALTER TABLE `image_sculptures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `web_info`
--
ALTER TABLE `web_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `year_expositions`
--
ALTER TABLE `year_expositions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `category_expositions`
--
ALTER TABLE `category_expositions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `category_projects`
--
ALTER TABLE `category_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `expositions`
--
ALTER TABLE `expositions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `icons_info`
--
ALTER TABLE `icons_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `image_sculptures`
--
ALTER TABLE `image_sculptures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `web_info`
--
ALTER TABLE `web_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `year_expositions`
--
ALTER TABLE `year_expositions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
