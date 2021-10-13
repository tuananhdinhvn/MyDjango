-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 04:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangoweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add pollsapp form', 7, 'add_pollsappform'),
(26, 'Can change pollsapp form', 7, 'change_pollsappform'),
(27, 'Can delete pollsapp form', 7, 'delete_pollsappform'),
(28, 'Can view pollsapp form', 7, 'view_pollsappform'),
(29, 'Can add shipping address', 8, 'add_shippingaddress'),
(30, 'Can change shipping address', 8, 'change_shippingaddress'),
(31, 'Can delete shipping address', 8, 'delete_shippingaddress'),
(32, 'Can view shipping address', 8, 'view_shippingaddress'),
(33, 'Can add customer', 9, 'add_customer'),
(34, 'Can change customer', 9, 'change_customer'),
(35, 'Can delete customer', 9, 'delete_customer'),
(36, 'Can view customer', 9, 'view_customer'),
(37, 'Can add order item', 10, 'add_orderitem'),
(38, 'Can change order item', 10, 'change_orderitem'),
(39, 'Can delete order item', 10, 'delete_orderitem'),
(40, 'Can view order item', 10, 'view_orderitem'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add guest', 13, 'add_guest'),
(50, 'Can change guest', 13, 'change_guest'),
(51, 'Can delete guest', 13, 'delete_guest'),
(52, 'Can view guest', 13, 'view_guest');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$V1fyCbrTL2I1ZaNbGnL43F$NnTOekyCwOsclTu6c5pvNYSRiiLo7OTHy02djhD7YOQ=', '2021-10-13 04:27:07.450976', 1, 'tad', '', '', 'tuananh@gmail.com', 1, 1, '2021-10-01 16:15:53.999612'),
(2, 'pbkdf2_sha256$260000$oVHRr3NoJJxxLdTNAeb7Ux$A9O6uor69p0+Qdp5XPghcN2GIAQWMwQSLKzaHlw2EPg=', '2021-10-01 16:17:31.000000', 1, 'tuananhdinh.vn@gmail.com', 'Đinh', 'Anh', 'tuananhdinh.vn@gmail.com', 0, 1, '2021-10-01 16:17:05.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-01 16:17:06.165019', '2', 'tuananhdinh', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-10-01 16:17:33.481827', '2', 'tuananhdinh.vn@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Email address\", \"Superuser status\", \"User permissions\", \"Last login\"]}}]', 4, 1),
(3, '2021-10-01 16:20:40.258432', '2', 'tuananhdinh', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-10-06 03:51:37.325440', '1', 'customer 1', 1, '[{\"added\": {}}]', 9, 1),
(5, '2021-10-06 03:54:01.417696', '1', 'product 1', 1, '[{\"added\": {}}]', 11, 1),
(6, '2021-10-06 03:54:12.911221', '2', 'product 2', 1, '[{\"added\": {}}]', 11, 1),
(7, '2021-10-06 03:54:23.589892', '3', 'product 3', 1, '[{\"added\": {}}]', 11, 1),
(8, '2021-10-06 03:54:33.534028', '4', 'product 4', 1, '[{\"added\": {}}]', 11, 1),
(9, '2021-10-06 03:54:43.228949', '5', 'product 5', 1, '[{\"added\": {}}]', 11, 1),
(10, '2021-10-06 03:54:53.169368', '6', 'product 6', 1, '[{\"added\": {}}]', 11, 1),
(11, '2021-10-06 05:59:54.563366', '1', 'product 1', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(12, '2021-10-06 06:11:28.878668', '2', 'product 2', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(13, '2021-10-06 06:12:44.239025', '5', 'product 5', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(14, '2021-10-06 06:14:00.591302', '3', 'product 3', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(15, '2021-10-06 06:21:36.016436', '1', 'product 1', 2, '[]', 11, 1),
(16, '2021-10-06 06:21:41.552160', '2', 'product 2', 2, '[]', 11, 1),
(17, '2021-10-06 06:21:46.781866', '3', 'product 3', 2, '[]', 11, 1),
(18, '2021-10-06 06:21:55.188269', '4', 'product 4', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(19, '2021-10-06 06:22:01.636465', '5', 'product 5', 2, '[]', 11, 1),
(20, '2021-10-06 06:22:09.193726', '6', 'product 6', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(21, '2021-10-06 06:27:57.463423', '6', 'product 6', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(22, '2021-10-06 06:28:27.319227', '6', 'product 6', 2, '[]', 11, 1),
(23, '2021-10-06 06:28:41.777256', '6', 'product 6', 2, '[]', 11, 1),
(24, '2021-10-06 06:28:54.534929', '6', 'product 6', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(25, '2021-10-08 05:49:06.980583', '8', 'demo form 2', 3, '', 11, 1),
(26, '2021-10-08 05:49:11.520311', '7', 'product form demo', 3, '', 11, 1),
(27, '2021-10-08 05:49:16.676591', '6', 'product 6', 3, '', 11, 1),
(28, '2021-10-08 06:40:53.048974', '13', 'product four', 3, '', 11, 1),
(29, '2021-10-08 06:40:53.056970', '12', 'demo form', 3, '', 11, 1),
(30, '2021-10-08 06:40:53.069963', '11', 'demo final', 3, '', 11, 1),
(31, '2021-10-08 06:40:53.074958', '10', 'product form demo', 3, '', 11, 1),
(32, '2021-10-08 06:40:53.080956', '9', 'product form demo', 3, '', 11, 1),
(33, '2021-10-08 06:40:53.088949', '4', 'product four', 3, '', 11, 1),
(34, '2021-10-09 04:23:28.708352', '19', 'data 4', 3, '', 11, 1),
(35, '2021-10-09 04:23:28.749325', '18', 'data 3', 3, '', 11, 1),
(36, '2021-10-09 04:23:28.762323', '17', 'datda', 3, '', 11, 1),
(37, '2021-10-09 04:23:28.781307', '16', 'final data', 3, '', 11, 1),
(38, '2021-10-09 04:23:28.789303', '15', 'final data', 3, '', 11, 1),
(39, '2021-10-09 04:23:28.795297', '14', 'ajax demo', 3, '', 11, 1),
(40, '2021-10-09 05:01:59.397050', '27', 'alo 2', 3, '', 11, 1),
(41, '2021-10-09 05:01:59.404827', '26', 'alo alo', 3, '', 11, 1),
(42, '2021-10-09 05:01:59.408386', '25', 'dddd', 3, '', 11, 1),
(43, '2021-10-09 05:01:59.411766', '24', 'sasa', 3, '', 11, 1),
(44, '2021-10-09 05:01:59.415025', '23', 'data 3', 3, '', 11, 1),
(45, '2021-10-09 05:01:59.418676', '22', 'data 2', 3, '', 11, 1),
(46, '2021-10-09 05:01:59.429111', '21', 'data 1', 3, '', 11, 1),
(47, '2021-10-09 05:01:59.432646', '20', 'data 5', 3, '', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'polls', 'pollsappform'),
(6, 'sessions', 'session'),
(9, 'store', 'customer'),
(13, 'store', 'guest'),
(12, 'store', 'order'),
(10, 'store', 'orderitem'),
(11, 'store', 'product'),
(8, 'store', 'shippingaddress');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-01 15:26:20.682410'),
(2, 'auth', '0001_initial', '2021-10-01 15:26:22.566990'),
(3, 'admin', '0001_initial', '2021-10-01 15:26:22.987991'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-01 15:26:23.021969'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-01 15:26:23.048952'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-01 15:26:23.309754'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-01 15:26:23.455094'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-01 15:26:23.607954'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-01 15:26:23.639938'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-01 15:26:23.780771'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-01 15:26:23.790252'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-01 15:26:23.846217'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-01 15:26:23.907181'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-01 15:26:23.971137'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-01 15:26:24.274506'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-01 15:26:24.309816'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-01 15:26:24.365784'),
(18, 'polls', '0001_initial', '2021-10-01 15:26:24.452440'),
(19, 'sessions', '0001_initial', '2021-10-01 15:26:24.543789'),
(20, 'store', '0001_initial', '2021-10-06 03:40:25.053402'),
(21, 'store', '0002_product_image', '2021-10-06 05:58:23.315825'),
(22, 'store', '0003_guest', '2021-10-13 09:28:42.393832');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8vb2zpsjxaobuvoz4wopy1r17yuknrp4', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1mYi0B:5PshxskKA7ukWcM2bnHcf5JQzyz_q_1fF9YkME3ruu8', '2021-10-22 05:00:59.304310'),
('ldc3acwrnj1vrcwkyecc0ir0kry44g4u', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1mWLCp:dNzvu5ZEtHeZodQQT4GqtzEd4ktiZq6JTiPPjktMfDI', '2021-10-15 16:16:15.450835'),
('o9645hamf7rwazji5d9vkv8xwly5js9j', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1mWvKW:66EmGg7J9cmTd9cL1D6dt8i_YhoCrqZ4OR--WWEAMBg', '2021-10-17 06:50:36.515488'),
('qu6dcdj4oktu8fsl2f5qsvlhf0ptvxfx', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1mWiWp:v1lgiS4t1Gw-PLoJ1U70D7QJNU4N6iOLQDz-k1hxTB8', '2021-10-16 17:10:27.230951'),
('s511lwyu4ciodpr4s7x3kbf1tivkbf0v', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1maVr9:4IdX3gH2KTHh3gqmOfdmlAFBg9a6t1mH9zndYxiCmoM', '2021-10-27 04:27:07.457979'),
('w107it6lao4frvdxd26c4tqr00hmu1yr', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1mWean:rqVd8WdASinoPlqYbg-49uTpdE0YLAfafJz-RFgPukY', '2021-10-16 12:58:17.659919'),
('wscup41j3dpjf0yaz14n90cvmxf49hrw', '.eJxVjEsOwjAMBe-SNYoak7gJS_acoXJshxRQKvWzQtwdVeoCtm9m3tsMtK112Badh1HMxThz-t0y8VPbDuRB7T5Znto6j9nuij3oYm-T6Ot6uH8HlZa61xCgB-zIJw0BxDNSdJA7kpRFSzx7Fk5FI4bSeexzxJILBwZERWc-X-QpOEA:1mWvNc:DlJai5Is_sFH_57WH-FYB4UIWHqnGe7MQTJKn4GDttE', '2021-10-17 06:53:48.644254');

-- --------------------------------------------------------

--
-- Table structure for table `polls_pollsappform`
--

CREATE TABLE `polls_pollsappform` (
  `id` bigint(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `polls_pollsappform`
--

INSERT INTO `polls_pollsappform` (`id`, `username`, `email`, `body`) VALUES
(2, 'tuananhdinh', 'tuananhdinh.vn@gmail.com', '164654');

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`id`, `name`, `email`, `user_id`) VALUES
(1, 'customer 1', 'abc@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_guest`
--

CREATE TABLE `store_guest` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `digital` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `price`, `digital`, `image`) VALUES
(1, 'product one', 22.23, 1, '72e6c56a0afde0a3b9ec.jpg'),
(3, 'product 3', 56.36, 1, 'natural_LFaQLAr.jpg'),
(5, 'product 5', 77.65, 1, 'natural.jpg'),
(28, 'ajax demo', 23.35, 1, ''),
(29, 'demo 2', 36.65, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `store_shippingaddress`
--

CREATE TABLE `store_shippingaddress` (
  `id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `polls_pollsappform`
--
ALTER TABLE `polls_pollsappform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `store_guest`
--
ALTER TABLE `store_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`);

--
-- Indexes for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_shippingaddress_customer_id_66e362a6_fk_store_customer_id` (`customer_id`),
  ADD KEY `store_shippingaddress_order_id_e6decfbb_fk_store_order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `polls_pollsappform`
--
ALTER TABLE `polls_pollsappform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_customer`
--
ALTER TABLE `store_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_guest`
--
ALTER TABLE `store_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD CONSTRAINT `store_customer_user_id_04276401_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`);

--
-- Constraints for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_shippingaddress`
--
ALTER TABLE `store_shippingaddress`
  ADD CONSTRAINT `store_shippingaddress_customer_id_66e362a6_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  ADD CONSTRAINT `store_shippingaddress_order_id_e6decfbb_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
