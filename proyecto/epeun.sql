-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-06-2023 a las 00:59:28
-- Versión del servidor: 10.3.35-MariaDB
-- Versión de PHP: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `epeun`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add causa', 7, 'add_causa'),
(26, 'Can change causa', 7, 'change_causa'),
(27, 'Can delete causa', 7, 'delete_causa'),
(28, 'Can view causa', 7, 'view_causa'),
(29, 'Can add efecto', 8, 'add_efecto'),
(30, 'Can change efecto', 8, 'change_efecto'),
(31, 'Can delete efecto', 8, 'delete_efecto'),
(32, 'Can view efecto', 8, 'view_efecto'),
(33, 'Can add registro', 9, 'add_registro'),
(34, 'Can change registro', 9, 'change_registro'),
(35, 'Can delete registro', 9, 'delete_registro'),
(36, 'Can view registro', 9, 'view_registro'),
(37, 'Can add universidad', 10, 'add_universidad'),
(38, 'Can change universidad', 10, 'change_universidad'),
(39, 'Can delete universidad', 10, 'delete_universidad'),
(40, 'Can view universidad', 10, 'view_universidad'),
(41, 'Can add administrador', 11, 'add_administrador'),
(42, 'Can change administrador', 11, 'change_administrador'),
(43, 'Can delete administrador', 11, 'delete_administrador'),
(44, 'Can view administrador', 11, 'view_administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$NeKIhUUWzUrRTQx7fpiwxz$dltGMAE7nmb0ALi6wis1V+G05fU8+JjtxW8kLS65z8U=', '2023-06-03 23:39:46.988583', 1, 'admin', '', '', '', 1, 1, '2023-05-28 23:43:41.260010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-28 23:44:57.816301', 'mascencio', 'Manuel Ascencio ', 1, '[{\"added\": {}}]', 11, 1),
(2, '2023-05-28 23:45:31.468631', 'rguzman', 'Raul Guzman ', 1, '[{\"added\": {}}]', 11, 1),
(3, '2023-05-28 23:46:28.684849', 'carranza', 'Ivan Carranza ', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-05-28 23:46:59.676521', 'Tecnólogica', 'Causa object (Tecnólogica)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-05-28 23:47:34.557919', 'Económica', 'Económica ', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-05-28 23:47:44.216456', 'Social', 'Social ', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-05-28 23:48:02.808186', 'Salud físca y emocional', 'Salud físca y emocional ', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-05-28 23:48:17.686161', 'Academica', 'Academica ', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-05-30 23:40:54.441833', 'privada', 'Universidad object (privada)', 1, '[{\"added\": {}}]', 10, 1),
(10, '2023-05-30 23:41:09.433634', 'publica', 'Universidad object (publica)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2023-05-30 23:49:41.818107', '1', 'Registro object (1)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-05-30 23:57:08.568949', '2', 'Deserción economica, cantidad: 1500, año:2021,  tipo universidad: publica ', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-05-30 23:57:50.565011', '3', 'Deserción economica, cantidad: 1600, año:2022,  tipo universidad: publica ', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-05-30 23:58:15.241116', '4', 'Deserción economica, cantidad: 1400, año:2021,  tipo universidad: privada ', 1, '[{\"added\": {}}]', 9, 1),
(15, '2023-05-31 00:04:38.511041', '5', 'Deserción economica, cantidad: 1200, año:2022,  tipo universidad: privada ', 1, '[{\"added\": {}}]', 9, 1),
(16, '2023-05-31 17:57:11.390644', '6', 'Deserción economica, cantidad: 500, año:2020,  tipo universidad: privada ', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-06-02 04:04:34.413189', 'rguzman', 'Raul Guzman ', 2, '[]', 11, 1),
(18, '2023-06-03 02:22:12.161711', 'Tecnológica', 'Tecnológica ', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 7, 1),
(19, '2023-06-03 02:22:29.767574', 'Salud física y emocional', 'Salud física y emocional ', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 7, 1),
(20, '2023-06-03 02:22:46.196638', 'Académica', 'Académica ', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 7, 1),
(21, '2023-06-03 02:23:48.130080', 'Salud físca y emocional', 'Salud físca y emocional ', 3, '', 7, 1),
(22, '2023-06-03 02:24:45.710001', '7', 'Deserción Tecnológica, cantidad: 2000, año:2021,  tipo universidad: publica  Causa: Tecnólogica ', 1, '[{\"added\": {}}]', 9, 1),
(23, '2023-06-03 02:25:03.394973', 'Tecnológica', 'Tecnológica ', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 7, 1),
(24, '2023-06-03 02:25:24.135505', 'Tecnológica', 'Tecnológica ', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 7, 1),
(25, '2023-06-03 02:25:36.159829', 'Tecnólogica', 'Tecnólogica ', 3, '', 7, 1),
(26, '2023-06-03 02:25:51.712300', 'Tecnológica', 'Tecnológica ', 1, '[{\"added\": {}}]', 7, 1),
(27, '2023-06-03 02:26:31.710628', '8', 'Deserción Tecnológica, cantidad: 2000, año:2020,  tipo universidad: publica  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(28, '2023-06-03 02:29:32.467985', '9', 'Deserción Tecnológica, cantidad: 1500, año:2020,  tipo universidad: privada  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(29, '2023-06-03 02:29:56.286123', '10', 'Deserción Tecnológica, cantidad: 1500, año:2021,  tipo universidad: publica  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-06-03 02:30:19.660344', '11', 'Deserción Tecnológica, cantidad: 500, año:2021,  tipo universidad: privada  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(31, '2023-06-03 02:30:48.917363', '12', 'Deserción Tecnológica, cantidad: 1400, año:2022,  tipo universidad: publica  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(32, '2023-06-03 02:31:09.954217', '13', 'Deserción Tecnológica, cantidad: 1600, año:2022,  tipo universidad: privada  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(33, '2023-06-03 02:55:51.822788', '14', 'Deserción Academica, cantidad: 4000, año:2020,  tipo universidad: publica  Causa: Academica ', 1, '[{\"added\": {}}]', 9, 1),
(34, '2023-06-03 04:22:19.766230', '15', 'Deserción Tecnológica, cantidad: 400, año:2021,  tipo universidad: publica  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(35, '2023-06-03 05:16:53.787308', '16', 'Nuevo Ingreso, cantidad: 500, año:2021,  tipo universidad: privada  Causa: Academica ', 1, '[{\"added\": {}}]', 9, 1),
(36, '2023-06-03 05:17:22.657802', '17', 'Nuevo Ingreso, cantidad: 1200, año:2020,  tipo universidad: publica  Causa: Academica ', 1, '[{\"added\": {}}]', 9, 1),
(37, '2023-06-03 05:31:26.589842', '17', 'Nuevo Ingreso, cantidad: 1200, año:2021,  tipo universidad: publica  Causa: Academica ', 2, '[{\"changed\": {\"fields\": [\"Ano\"]}}]', 9, 1),
(38, '2023-06-03 05:38:01.768629', '18', 'Recursos Digitales, cantidad: 1500, año:2021,  tipo universidad: privada  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1),
(39, '2023-06-03 05:49:25.293457', '19', 'Recursos Digitales, cantidad: 2021, año:2021,  tipo universidad: publica  Causa: Tecnológica ', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'epeun', 'administrador'),
(7, 'epeun', 'causa'),
(8, 'epeun', 'efecto'),
(9, 'epeun', 'registro'),
(10, 'epeun', 'universidad'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-28 23:27:57.789652'),
(2, 'auth', '0001_initial', '2023-05-28 23:27:59.299908'),
(3, 'admin', '0001_initial', '2023-05-28 23:27:59.668798'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-28 23:27:59.679614'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-28 23:27:59.692850'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-28 23:27:59.935367'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-28 23:28:00.070547'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-28 23:28:00.091662'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-28 23:28:00.111797'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-28 23:28:00.207470'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-28 23:28:00.215467'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-28 23:28:00.227464'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-28 23:28:00.379140'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-28 23:28:00.554172'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-28 23:28:00.574980'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-28 23:28:00.596977'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-28 23:28:00.754817'),
(18, 'sessions', '0001_initial', '2023-05-28 23:28:00.852699'),
(19, 'epeun', '0001_initial', '2023-05-28 23:28:18.135883'),
(20, 'epeun', '0002_alter_efecto_descripcion', '2023-06-03 21:40:27.384344'),
(21, 'epeun', '0003_alter_efecto_tema', '2023-06-03 21:50:15.182019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5fj2mby9cut7qxihayjaoky9s8duh0bl', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q5aGv:RIz0bkRsesgFVfi1cafMLF-x8d9Lk5uDwDCVAzrSQ4o', '2023-06-17 23:02:57.436552'),
('ga7l9pl4lrf4hwte1p4jpj7imbbe1ynw', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q48vi:9ScTgN94J1i27cfWASoNkBciga5xHGmU0tOPlyvWoUc', '2023-06-13 23:39:06.339852'),
('gb0hg6dmxypc1wk39nf2n70thkqifklo', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q5Yim:ipHFrQTp8VGMrh8dtBtsfpocahsyyhyWGJzNOK5rYIQ', '2023-06-17 21:23:36.399341'),
('gl42o7qdsf29miazi0eggen3upkwmr45', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q4w1N:J22uu1VNg2WjzGcEk1qlVsXEC2BCe8wH-YzCBlwXNso', '2023-06-16 04:04:13.668759'),
('h5yndswkj1b0ps99kzvy5kk0am9uya9u', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q3Q3c:FuBnZWqfC2aelMJ1b_y6Kx6JY6BC5pwgaoEOxwTkOb8', '2023-06-11 23:44:16.086041'),
('lv92h24x3j4qdul4z0mdwwfysonjki1o', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q5XWd:VY5xBFrhialMgHdb8Uyo7sOsyVFjq5iSbLlO36xVC9k', '2023-06-17 20:06:59.985336'),
('p1fsiqkx6of87y8ec6pccb38xaaz3tg1', '.eJxVjMsOwiAUBf-FtSEClwIu3fsNzX2gVA0kpV0Z_12bdKHbMzPnpUZclzKuPc_jJOqkjDr8boT8yHUDcsd6a5pbXeaJ9KbonXZ9aZKf5939OyjYy7dGcuhSBJfAWh48sA9AEAKhsCGhCMGymAyGfQTO18QOjXfGDccQRb0_2jE3mw:1q5Gqa:SBBIesQaAH_k5kTT3vzA2-slisCkgVYtNY4v560Fu3c', '2023-06-17 02:18:28.732011');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epeun_administrador`
--

CREATE TABLE `epeun_administrador` (
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `epeun_administrador`
--

INSERT INTO `epeun_administrador` (`nombre`, `email`, `usuario`, `password`) VALUES
('Ivan Carranza', 'CS21024', 'carranza', '1234'),
('Manuel Ascencio', 'aa21050@ues.edu.sv', 'mascencio', '1234'),
('Raul Guzman', 'GS21008@ues.edu.sv', 'rguzman', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epeun_causa`
--

CREATE TABLE `epeun_causa` (
  `tipo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `epeun_causa`
--

INSERT INTO `epeun_causa` (`tipo`, `usuario_id`) VALUES
('Salud física y emocional', 'carranza'),
('Tecnológica', 'carranza'),
('Academica', 'mascencio'),
('Económica', 'mascencio'),
('Social', 'rguzman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epeun_efecto`
--

CREATE TABLE `epeun_efecto` (
  `idefecto` int(11) NOT NULL,
  `tema` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `epeun_efecto`
--

INSERT INTO `epeun_efecto` (`idefecto`, `tema`, `descripcion`, `tipo_id`) VALUES
(69, 'Desafíos tecnológicos', 'La transición a la educación en línea pudo haber presentado desafíos tecnológicos para algunos estudiantes en El Salvador. Esto incluye la necesidad de adaptarse a nuevas plataformas digitales, problemas de conectividad a Internet y la falta de acceso a dispositivos electrónicos adecuados.', 'Tecnológica'),
(71, 'Dificultades para adaptarse a nuevas plataformas y herramientas digitales', 'La situación económica adversa durante la pandemia pudo haber dificultado el pago de la matrícula universitaria y otros gastos relacionados en El Salvador. Esto podría haber generado desafíos financieros y la necesidad de buscar alternativas para financiar la educación.', 'Tecnológica'),
(72, 'Acceso limitado a dispositivos y conexión a Intern', 'No todos los estudiantes en El Salvador pueden haber tenido acceso a dispositivos electrónicos y conexión a Internet confiable para participar en la educación en línea. Esto pudo haber generado desigualdades en el acceso a la educación y limitado la participación activa de algunos estudiantes.', 'Tecnológica'),
(73, 'Transición a la educación en línea', 'Las universidades en El Salvador se vieron obligadas a realizar una transición rápida hacia la educación en línea como medida para garantizar la continuidad educativa durante la pandemia. Esto implicó que los estudiantes tuvieran que adaptarse rápidamente a plataformas digitales y métodos de aprendizaje en línea.', 'Academica'),
(74, 'Interrupción de proyectos de investigación y pasantías', 'La pandemia pudo haber interrumpido o retrasado proyectos de investigación y pasantías universitarias en El Salvador. Las restricciones de movilidad y el cierre de empresas y organizaciones dificultaron la realización de actividades prácticas y el acceso a recursos necesarios para llevar a cabo investigaciones y pasantías.', 'Academica'),
(75, 'Dificultad para acceder a recursos de aprendizaje en línea', 'Algunos estudiantes en El Salvador pueden haber enfrentado dificultades para acceder a recursos de aprendizaje en línea debido a la falta de acceso a Internet confiable o dispositivos electrónicos adecuados. Esto podría haber generado desigualdades en el acceso a la educación durante la pandemia.', 'Academica'),
(76, 'Menor interacción con profesores y compañeros de clase', 'La educación en línea pudo haber reducido la interacción directa entre profesores y estudiantes, así como la interacción entre los propios estudiantes en El Salvador. Esto podría haber afectado la comunicación efectiva, la resolución de dudas y la colaboración en proyectos académicos.', 'Academica'),
(77, 'Dificultades económicas', 'La pandemia pudo haber generado dificultades económicas para algunos estudiantes universitarios en El Salvador y sus familias. La pérdida de empleos, la reducción de ingresos y la inestabilidad económica en general pueden haber afectado la capacidad de los estudiantes para cubrir los gastos universitarios y cumplir con sus responsabilidades financieras.', 'Económica'),
(78, 'Pérdida de empleos a tiempo parcial', 'Muchos estudiantes en El Salvador dependen de empleos a tiempo parcial para financiar sus estudios y gastos personales. Sin embargo, la pandemia y las restricciones impuestas pueden haber llevado a la pérdida de empleos en varios sectores, lo que dificultó aún más la situación financiera de los estudiantes.', 'Económica'),
(79, 'Dificultad para pagar la matrícula y cubrir los gastos universitarios', 'La situación económica adversa durante la pandemia pudo haber dificultado el pago de la matrícula universitaria y otros gastos relacionados en El Salvador. Esto podría haber generado desafíos financieros y la necesidad de buscar alternativas para financiar la educación.', 'Económica'),
(80, 'Falta de interacción social', 'La educación en línea y las medidas de distanciamiento social pueden haber resultado en una falta de interacción social entre los estudiantes universitarios en El Salvador. La ausencia de encuentros presenciales, eventos en el campus y actividades sociales pudo haber impactado negativamente el bienestar emocional y la sensación de comunidad estudiantil.', 'Social'),
(81, 'Limitaciones en la experiencia universitaria', 'Los estudiantes universitarios en El Salvador pueden haber experimentado limitaciones en su experiencia educativa debido a la falta de acceso a instalaciones universitarias, como bibliotecas, laboratorios y espacios de estudio. Esto podría haber afectado la calidad de la enseñanza y el aprendizaje práctico.', 'Social'),
(82, 'Pérdida de eventos y actividades estudiantiles', 'Muchos eventos y actividades estudiantiles, como conferencias, ferias universitarias y actividades deportivas, pueden haber sido cancelados o trasladados a entornos virtuales en El Salvador. Esto pudo haber resultado en la pérdida de oportunidades de participación  y desarrollo personal.', 'Social'),
(83, 'Dificultad para establecer nuevas amistades y redes de apoyo', 'La falta de interacción social presencial durante la pandemia pudo haber dificultado el establecimiento de nuevas amistades y redes de apoyo entre los estudiantes universitarios en El Salvador. Las oportunidades para conocer a nuevos compañeros de clase y establecer conexiones personales se vieron limitadas', 'Social'),
(84, 'Impacto en la salud física y menta', 'La pandemia y los efectos asociados, como el estrés, la preocupación y los cambios en el estilo de vida, pueden haber tenido un impacto en la salud física y mental de los estudiantes universitarios en El Salvador. La falta de actividad física, el aislamiento social y las preocupaciones relacionadas con la salud pudieron haber contribuido a problemas de salud física y mental', 'Salud física y emocional'),
(85, 'Mayor estrés y preocupación por la salud personal y de los seres queridos', 'La pandemia pudo haber aumentado los niveles de estrés y preocupación entre los estudiantes universitarios en El Salvador en relación con su propia salud y la de sus seres queridos. El temor a contraer el virus y la incertidumbre sobre el futuro pueden haber afectado el bienestar emocional y mental de los estudiantes.', 'Salud física y emocional'),
(86, 'Dificultades para acceder a servicios de atención médica y recursos de salud', 'Durante la pandemia, algunas dificultades para acceder a servicios de atención médica y recursos de salud en El Salvador pueden haber surgido. Esto pudo haber limitado la capacidad de los estudiantes para recibir el apoyo necesario y acceder a servicios de salud mental y física.', 'Salud física y emocional'),
(87, 'Estrés y ansiedad', 'Las circunstancias excepcionales causadas por la pandemia pueden haber aumentado los niveles de estrés y ansiedad entre los estudiantes universitarios en El Salvador. La incertidumbre académica, la adaptación a nuevas formas de aprendizaje y los desafíos personales pueden haber contribuido a un mayor estrés y ansiedad', 'Salud física y emocional'),
(88, 'Impacto en la salud mental', 'La pandemia y los cambios asociados en la vida universitaria pueden haber tenido un impacto significativo en la salud mental de los estudiantes en El Salvador. La falta de interacción social, el estrés académico y la incertidumbre sobre el futuro pueden haber contribuido a problemas de salud mental, como la depresión, la ansiedad y la sensación de soledad.', 'Salud física y emocional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epeun_registro`
--

CREATE TABLE `epeun_registro` (
  `idregistro` int(11) NOT NULL,
  `nombreregistro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `tipo_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoU_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `epeun_registro`
--

INSERT INTO `epeun_registro` (`idregistro`, `nombreregistro`, `cantidad`, `ano`, `tipo_id`, `tipoU_id`) VALUES
(3, 'Deserción economica', 1640, 2021, 'Económica', 'publica'),
(4, 'Deserción economica', 1400, 2021, 'Económica', 'privada'),
(5, 'Deserción economica', 500, 2020, 'Económica', 'publica'),
(6, 'Deserción economica', 300, 2020, 'Económica', 'privada'),
(8, 'Deserción Tecnológica', 2000, 2020, 'Tecnológica', 'publica'),
(9, 'Deserción Tecnológica', 1500, 2020, 'Tecnológica', 'privada'),
(10, 'Deserción Tecnológica', 1500, 2021, 'Tecnológica', 'publica'),
(11, 'Deserción Tecnológica', 500, 2021, 'Tecnológica', 'privada'),
(12, 'Deserción Tecnológica', 1400, 2022, 'Tecnológica', 'publica'),
(13, 'Deserción Tecnológica', 1600, 2022, 'Tecnológica', 'privada'),
(14, 'Deserción Academica', 1100, 2020, 'Academica', 'publica'),
(15, 'Deserción Tecnológica', 2600, 2023, 'Tecnológica', 'publica'),
(18, 'Recursos Digitales', 1500, 2021, 'Tecnológica', 'privada'),
(19, 'Recursos Digitales', 2021, 2021, 'Tecnológica', 'publica'),
(20, 'Deserción Económica', 3100, 2023, 'Económica', 'publica'),
(21, 'Deserción Económica', 2400, 2023, 'Económica', 'privada'),
(22, 'Recursos Tecnológicos', 3000, 2020, 'Tecnológica', 'publica'),
(23, 'Recursos Tecnológicos', 5000, 2020, 'Tecnológica', 'privada'),
(24, 'Recursos Tecnológicos', 2500, 2021, 'Tecnológica', 'publica'),
(25, 'Recursos Tecnológicos', 5100, 2021, 'Tecnológica', 'privada'),
(26, 'Recursos Tecnológicos', 3100, 2020, 'Tecnológica', 'publica'),
(27, 'Recursos Tecnológicos', 6100, 2022, 'Tecnológica', 'privada'),
(28, 'Recursos Tecnológicos', 2500, 2023, 'Tecnológica', 'publica'),
(29, 'Recursos Tecnológicos', 6500, 2023, 'Tecnológica', 'privada'),
(30, 'Deserción Tecnológica', 1000, 2023, 'Tecnológica', 'privada'),
(31, 'Recursos Tecnológicos', 3500, 2022, 'Tecnológica', 'publica'),
(32, 'Deserción Social', 500, 2020, 'Social', 'publica'),
(33, 'Deserción Social', 300, 2020, 'Social', 'privada'),
(34, 'Deserción Social', 600, 2021, 'Social', 'publica'),
(35, 'Deserción Social', 250, 2021, 'Social', 'privada'),
(36, 'Deserción Social', 1000, 2022, 'Social', 'publica'),
(37, 'Deserción Social', 310, 2022, 'Social', 'privada'),
(38, 'Deserción Social', 1200, 2023, 'Social', 'publica'),
(39, 'Deserción Social', 256, 2023, 'Social', 'privada'),
(40, 'Deserción Académica', 500, 2020, 'Academica', 'privada'),
(41, 'Deserción Académica', 1500, 2021, 'Academica', 'publica'),
(42, 'Deserción Académica', 700, 2021, 'Academica', 'privada'),
(43, 'Deserción Académica', 1300, 2022, 'Academica', 'publica'),
(44, 'Deserción Académica', 500, 2022, 'Academica', 'privada'),
(45, 'Deserción Académica', 2011, 2023, 'Academica', 'publica'),
(46, 'Deserción Académica', 750, 2023, 'Academica', 'privada'),
(47, 'Nuevo Ingreso', 12663, 2020, 'Academica', 'publica'),
(48, 'Nuevo Ingreso', 7565, 2020, 'Academica', 'privada'),
(49, 'Nuevo Ingreso', 10820, 2021, 'Academica', 'publica'),
(50, 'Nuevo Ingreso', 8000, 2021, 'Academica', 'privada'),
(51, 'Nuevo Ingreso', 10685, 2022, 'Academica', 'publica'),
(52, 'Nuevo Ingreso', 7750, 2022, 'Academica', 'privada'),
(53, 'Nuevo Ingreso', 10721, 2023, 'Academica', 'publica'),
(54, 'Nuevo Ingreso', 8256, 2023, 'Academica', 'privada'),
(55, 'Deserción Económica', 3500, 2022, 'Económica', 'publica'),
(56, 'Deserción Económica', 1635, 2022, 'Económica', 'privada'),
(57, 'Deserción Salud', 300, 2020, 'Salud física y emocional', 'publica'),
(58, 'Deserción Salud', 156, 2020, 'Salud física y emocional', 'privada'),
(59, 'Deserción Salud', 695, 2021, 'Salud física y emocional', 'publica'),
(60, 'Deserción Salud', 426, 2022, 'Salud física y emocional', 'publica'),
(61, 'Deserción Salud', 289, 2021, 'Salud física y emocional', 'privada'),
(62, 'Deserción Salud', 310, 2022, 'Salud física y emocional', 'privada'),
(63, 'Deserción Salud', 498, 2023, 'Salud física y emocional', 'publica'),
(64, 'Deserción Salud', 278, 2023, 'Salud física y emocional', 'privada'),
(65, 'Fallecidos', 22, 2020, 'Salud física y emocional', 'publica'),
(66, 'Fallecidos', 15, 2020, 'Salud física y emocional', 'privada'),
(67, 'Fallecidos', 17, 2021, 'Salud física y emocional', 'publica'),
(68, 'Fallecidos', 12, 2021, 'Salud física y emocional', 'privada'),
(69, 'Fallecidos', 6, 2022, 'Salud física y emocional', 'publica'),
(70, 'Fallecidos', 4, 2022, 'Salud física y emocional', 'privada'),
(71, 'Fallecidos', 3, 2023, 'Salud física y emocional', 'publica'),
(72, 'Fallecidos', 4, 2023, 'Salud física y emocional', 'privada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epeun_universidad`
--

CREATE TABLE `epeun_universidad` (
  `tipou` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `epeun_universidad`
--

INSERT INTO `epeun_universidad` (`tipou`) VALUES
('privada'),
('publica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `epeun_administrador`
--
ALTER TABLE `epeun_administrador`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `epeun_causa`
--
ALTER TABLE `epeun_causa`
  ADD PRIMARY KEY (`tipo`),
  ADD KEY `epeun_causa_usuario_id_6eae046f_fk_epeun_administrador_usuario` (`usuario_id`);

--
-- Indices de la tabla `epeun_efecto`
--
ALTER TABLE `epeun_efecto`
  ADD PRIMARY KEY (`idefecto`),
  ADD KEY `epeun_efecto_tipo_id_d19c7e1c_fk_epeun_causa_tipo` (`tipo_id`);

--
-- Indices de la tabla `epeun_registro`
--
ALTER TABLE `epeun_registro`
  ADD PRIMARY KEY (`idregistro`),
  ADD KEY `epeun_registro_tipo_id_552d053e_fk_epeun_causa_tipo` (`tipo_id`),
  ADD KEY `epeun_registro_tipoU_id_e9ef0472_fk_epeun_universidad_tipou` (`tipoU_id`);

--
-- Indices de la tabla `epeun_universidad`
--
ALTER TABLE `epeun_universidad`
  ADD PRIMARY KEY (`tipou`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `epeun_efecto`
--
ALTER TABLE `epeun_efecto`
  MODIFY `idefecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `epeun_registro`
--
ALTER TABLE `epeun_registro`
  MODIFY `idregistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `epeun_causa`
--
ALTER TABLE `epeun_causa`
  ADD CONSTRAINT `epeun_causa_usuario_id_6eae046f_fk_epeun_administrador_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `epeun_administrador` (`usuario`);

--
-- Filtros para la tabla `epeun_efecto`
--
ALTER TABLE `epeun_efecto`
  ADD CONSTRAINT `epeun_efecto_tipo_id_d19c7e1c_fk_epeun_causa_tipo` FOREIGN KEY (`tipo_id`) REFERENCES `epeun_causa` (`tipo`);

--
-- Filtros para la tabla `epeun_registro`
--
ALTER TABLE `epeun_registro`
  ADD CONSTRAINT `epeun_registro_tipoU_id_e9ef0472_fk_epeun_universidad_tipou` FOREIGN KEY (`tipoU_id`) REFERENCES `epeun_universidad` (`tipou`),
  ADD CONSTRAINT `epeun_registro_tipo_id_552d053e_fk_epeun_causa_tipo` FOREIGN KEY (`tipo_id`) REFERENCES `epeun_causa` (`tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
