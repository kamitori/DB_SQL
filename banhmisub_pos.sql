-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2017 at 05:07 AM
-- Server version: 5.5.46-MariaDB
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhmisub_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `active`, `created_at`, `updated_at`) VALUES
(1, 'kei', 'hth.tung90@gmail.com', '$2a$08$ObaqMqi6qqcgFsJ99Uu8jO2uOxrBX5EHRKKE.QOFKr.Pj0WC/5r2K', 1, '0000-00-00 00:00:00', '2015-09-23 20:40:51'),
(10, 'admin', 'admin', '$2a$08$UJIfGqV9BbR8qFJt9p19feoBaIC2FgZ2ZQ.ok5iDFIiplkp1kgGES', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'John Phan', 'john@anvydigital.com', '$2a$08$rp8VQGwtfOWVpB7AQp10meyjKxIUqRmRqPzD5djXDTEpSaYVh1atu', 1, '2015-10-12 14:27:26', '2016-08-05 00:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT '1',
  `position` tinyint(4) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `order_no`, `position`, `created_at`, `updated_at`) VALUES
(3, 'images/banners/banner 02_01-11-15.jpg', 'banh_mi_subs', 1, 1, '2015-09-30 03:06:40', '2015-11-01 20:20:23'),
(5, 'images/banners/banner02_12-11-15.jpg', '/banh_mi_subs?key=chicken%20sate%20sub', 0, 1, '2015-11-12 17:19:04', '2016-09-24 16:23:08'),
(6, 'images/banners/coffee_06-05-16.jpg', '', 0, 4, '2015-11-12 23:55:14', '2016-05-06 14:34:26'),
(8, 'images/banners/stake sub_06-05-16.jpg', '', 0, 4, '2016-05-06 14:13:44', '2016-05-06 15:50:07'),
(9, 'images/banners/cater_06-05-16.jpg', '', 0, 4, '2016-05-06 15:59:48', '2016-05-06 15:59:48'),
(11, 'images/banners/boba_19-05-16.png', '', 3, 5, '2016-05-19 21:54:34', '2016-05-19 21:58:26'),
(12, 'images/banners/catering_19-05-16.png', '', 1, 5, '2016-05-19 21:54:36', '2016-05-19 22:02:03'),
(13, 'images/banners/stake_19-05-16.png', '', 2, 5, '2016-05-19 21:57:03', '2016-05-19 21:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(10) NOT NULL,
  `cf_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cf_value` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `cf_key`, `cf_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about_footer', '<p><br></p>', 1, '0000-00-00 00:00:00', '2016-04-01 19:34:30'),
(2, 'option_group', '\r\n\r\n{"1":"VEGGIE","2":"MEAT","3":"CHEESE","4":"SIZE","5":"OTHER"}\r\n\r\n', 1, '0000-00-00 00:00:00', '2015-10-27 20:28:49'),
(3, 'list_unit', '[{"name":"Unit","data":["Piece","Loaf","Part"]},{"name":"Weight","data":["Kg","Grams","Grains","Pounds","Ounces"]},{"name":"Size","data":["Inches","Feet","Cm","Sq.in","Sq.ft","Sq.cm"]}]', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_logins`
--

CREATE TABLE `failed_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` char(15) NOT NULL,
  `attempted` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `failed_logins`
--

INSERT INTO `failed_logins` (`id`, `admin_id`, `ip_address`, `attempted`, `created_at`, `updated_at`) VALUES
(1, 0, '14.169.115.98', 65535, '2015-09-28 07:53:19', '2015-09-28 07:53:19'),
(2, 0, '14.169.115.98', 65535, '2015-09-28 07:54:56', '2015-09-28 07:54:56'),
(3, 10, '115.73.33.87', 65535, '2015-09-29 13:08:51', '2015-09-29 13:08:51'),
(4, 10, '115.73.33.87', 65535, '2015-09-29 13:08:55', '2015-09-29 13:08:55'),
(5, 10, '14.169.115.98', 65535, '2015-10-06 01:19:03', '2015-10-06 01:19:03'),
(6, 0, '205.206.177.129', 65535, '2015-10-12 14:24:21', '2015-10-12 14:24:21'),
(7, 0, '205.206.177.129', 65535, '2015-10-12 14:24:25', '2015-10-12 14:24:25'),
(8, 10, '142.59.28.103', 65535, '2015-11-29 17:20:02', '2015-11-29 17:20:02'),
(9, 11, '198.53.126.78', 65535, '2016-01-16 23:25:20', '2016-01-16 23:25:20'),
(10, 11, '198.53.126.78', 65535, '2016-01-16 23:25:24', '2016-01-16 23:25:24'),
(11, 0, '50.99.42.73', 65535, '2016-03-24 16:05:30', '2016-03-24 16:05:30'),
(12, 0, '50.99.42.73', 65535, '2016-03-24 16:05:34', '2016-03-24 16:05:34'),
(13, 10, '50.99.42.73', 65535, '2016-03-24 16:05:42', '2016-03-24 16:05:42'),
(14, 10, '50.99.42.73', 65535, '2016-03-24 16:05:46', '2016-03-24 16:05:46'),
(15, 10, '50.99.42.73', 65535, '2016-03-24 16:07:02', '2016-03-24 16:07:02'),
(16, 10, '50.99.42.73', 65535, '2016-03-24 16:07:06', '2016-03-24 16:07:06'),
(17, 0, '50.99.42.73', 65535, '2016-03-24 17:33:10', '2016-03-24 17:33:10'),
(18, 0, '50.99.42.73', 65535, '2016-03-24 17:33:14', '2016-03-24 17:33:14'),
(19, 10, '50.99.42.73', 65535, '2016-03-24 17:41:57', '2016-03-24 17:41:57'),
(20, 10, '50.99.42.73', 65535, '2016-03-24 17:42:01', '2016-03-24 17:42:01'),
(21, 0, '50.99.42.73', 65535, '2016-03-29 00:10:44', '2016-03-29 00:10:44'),
(22, 0, '50.99.42.73', 65535, '2016-03-29 00:11:07', '2016-03-29 00:11:07'),
(23, 0, '50.99.42.73', 65535, '2016-03-29 00:11:11', '2016-03-29 00:11:11'),
(24, 11, '50.99.42.73', 65535, '2016-03-29 00:11:36', '2016-03-29 00:11:36'),
(25, 11, '50.99.42.73', 65535, '2016-03-29 00:11:40', '2016-03-29 00:11:40'),
(26, 11, '50.99.42.73', 65535, '2016-03-29 00:11:47', '2016-03-29 00:11:47'),
(27, 10, '50.99.42.73', 65535, '2016-03-29 02:01:44', '2016-03-29 02:01:44'),
(28, 10, '50.99.42.73', 65535, '2016-03-29 02:01:48', '2016-03-29 02:01:48'),
(29, 10, '14.186.180.96', 65535, '2016-03-29 02:05:58', '2016-03-29 02:05:58'),
(30, 10, '14.186.180.96', 65535, '2016-03-29 02:06:09', '2016-03-29 02:06:09'),
(31, 10, '14.186.180.96', 65535, '2016-03-29 02:06:13', '2016-03-29 02:06:13'),
(32, 10, '14.186.180.96', 65535, '2016-03-29 03:10:43', '2016-03-29 03:10:43'),
(33, 10, '14.186.180.96', 65535, '2016-03-29 03:19:05', '2016-03-29 03:19:05'),
(34, 10, '14.186.180.96', 65535, '2016-03-30 01:47:38', '2016-03-30 01:47:38'),
(35, 10, '27.77.116.46', 65535, '2016-04-08 16:01:54', '2016-04-08 16:01:54'),
(36, 10, '27.77.116.46', 65535, '2016-04-08 16:01:58', '2016-04-08 16:01:58'),
(37, 10, '27.77.116.46', 65535, '2016-04-08 16:02:06', '2016-04-08 16:02:06'),
(38, 10, '27.77.116.46', 65535, '2016-04-08 16:02:10', '2016-04-08 16:02:10'),
(39, 0, '50.99.42.73', 65535, '2016-04-14 00:08:33', '2016-04-14 00:08:33'),
(40, 10, '50.99.42.73', 65535, '2016-04-14 00:09:00', '2016-04-14 00:09:00'),
(41, 10, '50.99.42.73', 65535, '2016-04-14 00:09:04', '2016-04-14 00:09:04'),
(42, 10, '50.99.42.73', 65535, '2016-04-14 00:09:18', '2016-04-14 00:09:18'),
(43, 10, '50.99.42.73', 65535, '2016-04-14 00:09:22', '2016-04-14 00:09:22'),
(44, 10, '50.99.42.73', 65535, '2016-04-14 00:09:31', '2016-04-14 00:09:31'),
(45, 10, '50.99.42.73', 65535, '2016-04-14 00:09:35', '2016-04-14 00:09:35'),
(46, 0, '50.99.42.73', 65535, '2016-04-14 14:50:23', '2016-04-14 14:50:23'),
(47, 10, '174.0.26.72', 65535, '2016-04-22 04:56:59', '2016-04-22 04:56:59'),
(48, 10, '174.0.26.72', 65535, '2016-04-22 04:57:03', '2016-04-22 04:57:03'),
(49, 10, '174.0.26.72', 65535, '2016-04-22 04:57:07', '2016-04-22 04:57:07'),
(50, 10, '174.0.26.72', 65535, '2016-04-22 04:57:18', '2016-04-22 04:57:18'),
(51, 10, '174.0.26.72', 65535, '2016-04-22 04:57:23', '2016-04-22 04:57:23'),
(52, 10, '174.0.26.72', 65535, '2016-04-27 05:46:47', '2016-04-27 05:46:47'),
(53, 10, '174.0.26.72', 65535, '2016-04-27 05:46:51', '2016-04-27 05:46:51'),
(54, 0, '50.99.42.73', 65535, '2016-05-06 13:48:00', '2016-05-06 13:48:00'),
(55, 10, '68.146.182.46', 65535, '2016-05-20 22:23:25', '2016-05-20 22:23:25'),
(56, 10, '14.186.183.52', 65535, '2016-05-25 02:06:33', '2016-05-25 02:06:33'),
(57, 10, '174.0.26.72', 65535, '2016-05-26 05:19:34', '2016-05-26 05:19:34'),
(58, 10, '174.0.26.72', 65535, '2016-05-26 05:19:38', '2016-05-26 05:19:38'),
(59, 10, '68.146.182.46', 65535, '2016-06-01 14:28:26', '2016-06-01 14:28:26'),
(60, 10, '68.146.182.46', 65535, '2016-06-01 14:28:31', '2016-06-01 14:28:31'),
(61, 10, '68.146.182.46', 65535, '2016-06-04 19:13:54', '2016-06-04 19:13:54'),
(62, 10, '68.146.182.46', 65535, '2016-06-04 19:13:59', '2016-06-04 19:13:59'),
(63, 0, '50.99.42.73', 65535, '2016-06-08 16:27:40', '2016-06-08 16:27:40'),
(64, 10, '50.99.42.73', 65535, '2016-06-08 16:27:51', '2016-06-08 16:27:51'),
(65, 10, '50.99.42.73', 65535, '2016-06-08 16:27:55', '2016-06-08 16:27:55'),
(66, 10, '50.99.42.73', 65535, '2016-06-08 16:28:01', '2016-06-08 16:28:01'),
(67, 10, '50.99.42.73', 65535, '2016-06-08 16:28:05', '2016-06-08 16:28:05'),
(68, 0, '50.99.42.73', 65535, '2016-06-08 17:15:24', '2016-06-08 17:15:24'),
(69, 0, '50.99.42.73', 65535, '2016-06-08 17:15:28', '2016-06-08 17:15:28'),
(70, 0, '50.99.42.73', 65535, '2016-06-09 15:58:24', '2016-06-09 15:58:24'),
(71, 0, '50.99.42.73', 65535, '2016-06-09 15:58:28', '2016-06-09 15:58:28'),
(72, 0, '50.99.42.73', 65535, '2016-06-09 22:11:46', '2016-06-09 22:11:46'),
(73, 0, '50.99.42.73', 65535, '2016-06-09 22:11:50', '2016-06-09 22:11:50'),
(74, 0, '50.99.42.73', 65535, '2016-06-10 14:27:15', '2016-06-10 14:27:15'),
(75, 0, '50.99.42.73', 65535, '2016-06-10 14:27:19', '2016-06-10 14:27:19'),
(76, 0, '50.99.42.73', 65535, '2016-06-10 14:27:23', '2016-06-10 14:27:23'),
(77, 0, '50.99.42.73', 65535, '2016-06-10 14:27:28', '2016-06-10 14:27:28'),
(78, 0, '50.99.42.73', 65535, '2016-06-10 14:27:42', '2016-06-10 14:27:42'),
(79, 0, '50.99.42.73', 65535, '2016-06-10 14:27:46', '2016-06-10 14:27:46'),
(80, 10, '68.146.182.46', 65535, '2016-06-14 03:45:43', '2016-06-14 03:45:43'),
(81, 10, '14.186.151.192', 65535, '2016-06-16 04:03:48', '2016-06-16 04:03:48'),
(82, 10, '14.186.151.192', 65535, '2016-07-02 04:18:30', '2016-07-02 04:18:30'),
(83, 10, '14.186.151.192', 65535, '2016-07-02 04:18:34', '2016-07-02 04:18:34'),
(84, 10, '14.186.151.192', 65535, '2016-07-02 04:18:43', '2016-07-02 04:18:43'),
(85, 10, '14.186.151.192', 65535, '2016-07-02 04:18:54', '2016-07-02 04:18:54'),
(86, 10, '14.186.151.192', 65535, '2016-07-02 04:19:37', '2016-07-02 04:19:37'),
(87, 10, '14.186.151.192', 65535, '2016-07-02 04:19:58', '2016-07-02 04:19:58'),
(88, 10, '14.186.151.192', 65535, '2016-07-02 05:13:03', '2016-07-02 05:13:03'),
(89, 10, '14.186.151.192', 65535, '2016-07-02 05:13:23', '2016-07-02 05:13:23'),
(90, 10, '68.146.182.46', 65535, '2016-07-02 17:26:47', '2016-07-02 17:26:47'),
(91, 10, '68.146.182.46', 65535, '2016-07-02 17:26:51', '2016-07-02 17:26:51'),
(92, 0, '68.146.182.46', 65535, '2016-07-03 17:37:38', '2016-07-03 17:37:38'),
(93, 0, '68.146.182.46', 65535, '2016-07-03 17:37:53', '2016-07-03 17:37:53'),
(94, 0, '68.146.182.46', 65535, '2016-07-03 17:39:09', '2016-07-03 17:39:09'),
(95, 0, '68.146.182.46', 65535, '2016-07-03 17:39:31', '2016-07-03 17:39:31'),
(96, 0, '68.146.182.46', 65535, '2016-07-03 17:39:46', '2016-07-03 17:39:46'),
(97, 0, '68.146.182.46', 65535, '2016-07-03 17:40:04', '2016-07-03 17:40:04'),
(98, 0, '68.146.182.46', 65535, '2016-07-03 17:40:22', '2016-07-03 17:40:22'),
(99, 0, '68.146.182.46', 65535, '2016-07-03 17:40:37', '2016-07-03 17:40:37'),
(100, 0, '68.146.182.46', 65535, '2016-07-03 17:40:41', '2016-07-03 17:40:41'),
(101, 0, '68.146.182.46', 65535, '2016-07-03 17:40:45', '2016-07-03 17:40:45'),
(102, 0, '68.146.182.46', 65535, '2016-07-03 17:40:49', '2016-07-03 17:40:49'),
(103, 10, '50.99.42.73', 65535, '2016-07-04 21:15:12', '2016-07-04 21:15:12'),
(104, 10, '14.186.151.192', 65535, '2016-07-05 04:55:13', '2016-07-05 04:55:13'),
(105, 0, '68.146.182.46', 65535, '2016-07-27 00:31:24', '2016-07-27 00:31:24'),
(106, 0, '68.146.182.46', 65535, '2016-07-27 00:31:35', '2016-07-27 00:31:35'),
(107, 0, '68.146.182.46', 65535, '2016-07-27 00:31:39', '2016-07-27 00:31:39'),
(108, 0, '68.146.182.46', 65535, '2016-07-27 00:31:44', '2016-07-27 00:31:44'),
(109, 0, '50.99.42.73', 65535, '2016-08-08 16:18:24', '2016-08-08 16:18:24'),
(110, 0, '50.99.42.73', 65535, '2016-08-08 16:18:28', '2016-08-08 16:18:28'),
(111, 0, '50.99.42.73', 65535, '2016-08-08 16:18:37', '2016-08-08 16:18:37'),
(112, 0, '50.99.42.73', 65535, '2016-08-08 21:57:35', '2016-08-08 21:57:35'),
(113, 10, '50.99.42.73', 65535, '2016-08-08 21:58:00', '2016-08-08 21:58:00'),
(114, 0, '50.99.42.73', 65535, '2016-08-10 20:50:41', '2016-08-10 20:50:41'),
(115, 0, '50.99.42.73', 65535, '2016-08-10 20:50:50', '2016-08-10 20:50:50'),
(116, 0, '50.99.42.73', 65535, '2016-08-10 20:51:50', '2016-08-10 20:51:50'),
(117, 0, '50.99.42.73', 65535, '2016-08-12 22:05:52', '2016-08-12 22:05:52'),
(118, 0, '50.99.42.73', 65535, '2016-08-12 22:05:56', '2016-08-12 22:05:56'),
(119, 0, '50.99.42.73', 65535, '2016-08-12 22:06:02', '2016-08-12 22:06:02'),
(120, 0, '50.99.42.73', 65535, '2016-08-12 22:06:12', '2016-08-12 22:06:12'),
(121, 0, '50.99.42.73', 65535, '2016-08-12 22:07:50', '2016-08-12 22:07:50'),
(122, 0, '50.99.42.73', 65535, '2016-08-12 22:07:54', '2016-08-12 22:07:54'),
(123, 0, '50.99.42.73', 65535, '2016-08-16 17:09:26', '2016-08-16 17:09:26'),
(124, 0, '50.99.42.73', 65535, '2016-08-16 17:09:30', '2016-08-16 17:09:30'),
(125, 0, '50.99.42.73', 65535, '2016-08-17 15:10:18', '2016-08-17 15:10:18'),
(126, 0, '50.99.42.73', 65535, '2016-08-17 15:10:22', '2016-08-17 15:10:22'),
(127, 0, '50.99.42.73', 65535, '2016-08-17 15:10:27', '2016-08-17 15:10:27'),
(128, 10, '14.186.241.34', 65535, '2016-09-30 01:24:26', '2016-09-30 01:24:26'),
(129, 10, '115.77.49.21', 65535, '2016-12-03 07:40:11', '2016-12-03 07:40:11'),
(130, 0, '50.99.42.160', 65535, '2017-02-24 19:23:50', '2017-02-24 19:23:50'),
(131, 10, '50.99.42.160', 65535, '2017-02-24 19:23:59', '2017-02-24 19:23:59'),
(132, 10, '50.99.42.160', 65535, '2017-02-24 19:24:03', '2017-02-24 19:24:03'),
(133, 10, '50.99.42.160', 65535, '2017-02-24 19:24:13', '2017-02-24 19:24:13'),
(134, 10, '50.99.42.160', 65535, '2017-02-24 19:24:17', '2017-02-24 19:24:17'),
(135, 10, '50.99.42.160', 65535, '2017-02-24 19:24:26', '2017-02-24 19:24:26'),
(136, 10, '50.99.42.160', 65535, '2017-02-24 19:24:30', '2017-02-24 19:24:30'),
(137, 10, '50.99.42.160', 65535, '2017-02-24 19:24:51', '2017-02-24 19:24:51'),
(138, 10, '50.99.42.160', 65535, '2017-02-24 19:24:55', '2017-02-24 19:24:55'),
(139, 10, '50.99.42.160', 65535, '2017-02-24 19:24:59', '2017-02-24 19:24:59'),
(140, 10, '50.99.42.160', 65535, '2017-02-24 19:25:08', '2017-02-24 19:25:08'),
(141, 10, '50.99.42.160', 65535, '2017-02-24 19:25:12', '2017-02-24 19:25:12'),
(142, 10, '50.99.42.160', 65535, '2017-02-24 19:25:17', '2017-02-24 19:25:17'),
(143, 10, '50.99.42.160', 65535, '2017-02-24 19:25:21', '2017-02-24 19:25:21'),
(144, 10, '14.187.63.168', 65535, '2017-03-02 02:09:35', '2017-03-02 02:09:35'),
(145, 10, '14.187.63.168', 65535, '2017-03-02 02:09:39', '2017-03-02 02:09:39'),
(146, 10, '27.64.65.85', 65535, '2017-03-30 15:19:01', '2017-03-30 15:19:01'),
(147, 10, '50.99.42.160', 65535, '2017-05-18 15:24:01', '2017-05-18 15:24:01'),
(148, 10, '50.99.42.160', 65535, '2017-05-18 15:24:05', '2017-05-18 15:24:05'),
(149, 10, '50.99.42.160', 65535, '2017-05-18 15:24:09', '2017-05-18 15:24:09'),
(150, 10, '50.99.42.160', 65535, '2017-05-18 15:24:14', '2017-05-18 15:24:14'),
(151, 10, '50.99.42.160', 65535, '2017-05-18 15:24:18', '2017-05-18 15:24:18'),
(152, 10, '50.99.42.160', 65535, '2017-05-23 15:14:45', '2017-05-23 15:14:45'),
(153, 10, '50.99.42.160', 65535, '2017-05-23 15:14:49', '2017-05-23 15:14:49'),
(154, 10, '14.186.135.231', 65535, '2017-05-24 02:24:48', '2017-05-24 02:24:48'),
(155, 10, '14.186.135.231', 65535, '2017-05-24 02:24:52', '2017-05-24 02:24:52'),
(156, 0, '70.77.93.39', 65535, '2017-05-24 18:32:04', '2017-05-24 18:32:04'),
(157, 0, '70.77.93.39', 65535, '2017-05-24 18:32:08', '2017-05-24 18:32:08'),
(158, 0, '70.77.93.39', 65535, '2017-05-24 18:32:12', '2017-05-24 18:32:12'),
(159, 0, '70.77.93.39', 65535, '2017-05-24 18:32:16', '2017-05-24 18:32:16'),
(160, 0, '70.77.93.39', 65535, '2017-05-24 18:32:20', '2017-05-24 18:32:20'),
(161, 0, '70.77.93.39', 65535, '2017-05-24 18:32:24', '2017-05-24 18:32:24'),
(162, 0, '70.77.93.39', 65535, '2017-05-24 18:32:28', '2017-05-24 18:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_group` int(10) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `price` float(9,2) DEFAULT '0.00',
  `sold_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oum` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userId` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `status` int(3) DEFAULT '1',
  `type` int(2) NOT NULL DEFAULT '1',
  `totalPrice` float NOT NULL DEFAULT '0',
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customerId` int(11) NOT NULL DEFAULT '0',
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalTax` float NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unitprice` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '$0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantity` int(5) NOT NULL,
  `orderId` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  `categoryId` int(11) NOT NULL DEFAULT '0',
  `categoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT '0',
  `totalprice` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '$0.00',
  `tax` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `order_no` int(10) NOT NULL DEFAULT '1',
  `image` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desciption` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `short_name`, `summary`, `content`, `category_id`, `order_no`, `image`, `meta_title`, `meta_desciption`, `created_at`, `updated_at`) VALUES
(2, 'Our Story', 'our-story', NULL, '<div class="main_wrap" style="background:none;">\n	<h1>Our Story</h1>\n	<h2>Since 1958</h2>\n	<div class="white_block rounded-5">\n		<div class="block row">\n			<div class="col-md-8 col-xs-8">\n				<h2 style="color:#222;text-align: left">The Legacy of Pizza Hut began in 1958,</h2>\n	<h3 style="color:#222;text-align: left;font-size: 22px;">when two college students from Wichita, Kansas, Frank and Dan Carney; were approached by a family friend with the idea of opening a pizza parlor.</h3>\n			</div>\n			<div class="col-md-4 col-xs-4 text-right">\n				<img src="http://banhmisub.anvyonline.com/images/products/test%20011.02-10-15.jpg" alt="" style="max-height: 120px;">\n			</div>\n		</div>\n	</div>\n	<div class="grey_block rounded-5" style="margin-top: -10px;">\n		<h2 style="color:#222;text-align: left">Although the concept was relatively new to many Americans at that time, the brothers quickly saw the potential of this new enterprise.</h2>\n		<p>After borrowing $600(US) from their mother, they purchased some second-hand equipment and rented a small building on a busy intersection in their home town. The result of their entrepreneurial efforts was the first Pizza Hut® restaurant, and the foundation for what would become the largest and most successful pizza restaurant in the world.</p>\n		<p>Pizza Hut® is a division of YUM! Brands Inc. and has more than 300 units in Canada, 7,200 units in the U.S. and 3,000 units in more than 86 other countries.</p>\n		<p>YUM! Brands Inc. is the parent company to two other segment leaders, Taco Bell and KFC. When combined with Pizza Hut®, these organizations make up the world’s largest restaurant group.</p>\n		<p>For more information about YUM!, visit <a href="www.yum.com">www.yum.com</a>.</p>\n		<p>Pizza Hut gift cards are available in any denominations and are reloadable at participating Pizza Hut Canada locations.</p>\n	</div>\n</div>', 6, 1, NULL, '', NULL, '2015-10-04 19:09:23', '2015-10-04 19:10:49'),
(3, 'Careers', 'careers', NULL, '', 6, 3, NULL, '', NULL, '2015-10-04 19:14:42', '2015-10-04 19:14:42'),
(4, 'Create an Account', 'create-an-account', NULL, '', 7, 1, NULL, '', NULL, '2015-10-06 01:35:52', '2015-10-06 01:35:52'),
(5, 'Sign In', 'sign-in', NULL, '', 7, 2, NULL, '', NULL, '2015-10-06 01:38:42', '2015-10-06 01:38:42'),
(6, 'Contact Us', 'contact-us', NULL, '', 8, 1, NULL, '', NULL, '2015-10-06 01:43:42', '2015-10-06 01:43:42'),
(7, 'Find a BanhMiSub', 'find-a-banhmisub', NULL, '', 8, 1, NULL, '', NULL, '2015-10-06 01:45:55', '2015-10-06 01:45:55'),
(8, 'Catering', 'catering', NULL, '', 8, 1, NULL, '', NULL, '2015-10-06 01:57:37', '2015-10-06 01:57:37'),
(9, 'Terms of Use', 'terms-of-use', NULL, '', 9, 1, NULL, '', NULL, '2015-10-06 01:58:13', '2015-10-06 01:58:13'),
(10, 'Privacy Policy', 'privacy-policy', NULL, '', 9, 1, NULL, '', NULL, '2015-10-06 01:58:29', '2015-10-06 01:58:29'),
(12, 'Ingredient Listing', 'ingredient-listing', '', '', 10, 1, NULL, '', NULL, '2015-10-06 01:59:15', '2015-10-06 01:59:15'),
(13, 'Make It Great', 'make-it-great', NULL, '', 11, 1, NULL, '', NULL, '2015-10-06 01:59:58', '2015-10-06 01:59:58'),
(14, 'Why Us', 'why-us', NULL, '', 11, 1, NULL, '', NULL, '2015-10-06 02:00:28', '2015-10-06 02:00:28'),
(15, 'FAQ', 'faq', NULL, '', 11, 1, NULL, '', NULL, '2015-10-06 02:00:41', '2015-10-06 02:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `price` float DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '1',
  `order_no` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `short_name`, `description`, `image`, `meta_title`, `meta_description`, `parent_id`, `position`, `order_no`, `created_at`, `updated_at`) VALUES
(1, 'Feature Promo', 'feature-promo', 'Meat Bread', 'images/product-categories/sand-ve.18-10-15.png', '', '', 0, 1, 1, '2015-09-29 13:17:18', '2015-10-18 17:05:31'),
(2, 'Banh Mi SUBS', 'banh-mi-subs', 'Bread Soup', 'images/product-categories/l_518856232_banh-mi-xa-xiu.18-10-15.png', '', '', 0, 1, 2, '2015-09-29 23:35:41', '2015-10-25 04:32:02'),
(3, 'Sides', 'sides', 'Original Bread', 'images/product-categories/onion_rings_box.18-10-15.png', 'Original Bread', 'Original Bread', 0, 1, 4, '2015-09-29 23:36:45', '2015-10-25 04:32:40'),
(4, 'Drinks', 'drinks', 'Egg bread', 'images/product-categories/coke_6__cans.18-10-15.png', 'Egg bread', 'Egg bread', 0, 1, 5, '2015-09-29 23:38:11', '2015-10-25 04:33:05'),
(5, 'Catering', 'catering', 'Drinks', 'images/product-categories/classicwings.18-10-15.png', 'Drinks', 'Drinks', 0, 1, 6, '2015-09-29 23:39:05', '2015-10-25 04:33:36'),
(6, 'About Us', 'about-us', '', NULL, '', '', 0, 2, 7, '2015-10-04 15:51:19', '2015-10-25 04:34:15'),
(7, 'My Account', 'my-account', '', NULL, '', '', 0, 2, 8, '2015-10-04 15:59:47', '2015-10-25 04:34:35'),
(8, 'Customer Service', 'customer-service', '', NULL, '', '', 0, 2, 10, '2015-10-04 16:06:07', '2015-10-25 04:35:24'),
(9, 'Policies', 'policies', '', NULL, '', '', 0, 2, 11, '2015-10-04 16:14:24', '2015-10-25 04:35:40'),
(10, 'Nutrition', 'nutrition', '', NULL, '', '', 0, 2, 12, '2015-10-04 17:06:37', '2015-10-25 04:36:02'),
(11, 'Become a Franchisee', 'become-a-franchisee', '', NULL, '', '', 0, 2, 14, '2015-10-04 17:09:16', '2015-10-25 04:36:13'),
(12, 'Our Story', 'our-story', '', NULL, '', '', 0, 0, 9, '2015-10-04 17:17:15', '2015-10-25 04:34:59'),
(13, 'Appetizers', 'appetizers', '', 'images/product-categories/s_l_d.18-10-15.png', '', '', 0, 1, 3, '2015-10-18 17:09:54', '2015-10-25 04:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE `product_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `weight` float(9,2) DEFAULT NULL,
  `amount` float(9,2) DEFAULT NULL,
  `custom_price` float(9,2) DEFAULT '0.00',
  `total` float(9,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `success_logins`
--

CREATE TABLE `success_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `ip_address` char(15) NOT NULL,
  `user_agent` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `success_logins`
--

INSERT INTO `success_logins` (`id`, `admin_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', '2015-09-21 21:12:35', '2015-09-21 21:12:35'),
(2, 1, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', '2015-09-22 03:07:08', '2015-09-22 03:07:08'),
(3, 1, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', '2015-09-23 02:47:56', '2015-09-23 02:47:56'),
(4, 1, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', '2015-09-23 20:14:33', '2015-09-23 20:14:33'),
(5, 1, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', '2015-09-24 03:16:13', '2015-09-24 03:16:13'),
(6, 1, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', '2015-09-28 07:15:32', '2015-09-28 07:15:32'),
(7, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', '2015-09-28 07:57:32', '2015-09-28 07:57:32'),
(8, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-28 08:17:51', '2015-09-28 08:17:51'),
(9, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 01:32:55', '2015-09-29 01:32:55'),
(10, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', '2015-09-29 03:25:49', '2015-09-29 03:25:49'),
(11, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:53:32', '2015-09-29 03:53:32'),
(12, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:53:33', '2015-09-29 03:53:33'),
(13, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:53:57', '2015-09-29 03:53:57'),
(14, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:54:04', '2015-09-29 03:54:04'),
(15, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:54:04', '2015-09-29 03:54:04'),
(16, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:54:04', '2015-09-29 03:54:04'),
(17, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:54:05', '2015-09-29 03:54:05'),
(18, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:54:05', '2015-09-29 03:54:05'),
(19, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:54:05', '2015-09-29 03:54:05'),
(20, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:55:15', '2015-09-29 03:55:15'),
(21, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:55:16', '2015-09-29 03:55:16'),
(22, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:55:17', '2015-09-29 03:55:17'),
(23, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:55:17', '2015-09-29 03:55:17'),
(24, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:55:17', '2015-09-29 03:55:17'),
(25, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 03:55:17', '2015-09-29 03:55:17'),
(26, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 04:11:31', '2015-09-29 04:11:31'),
(27, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 04:12:27', '2015-09-29 04:12:27'),
(28, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 07:08:59', '2015-09-29 07:08:59'),
(29, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 08:48:04', '2015-09-29 08:48:04'),
(30, 10, '115.73.33.87', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 13:09:23', '2015-09-29 13:09:23'),
(31, 10, '115.73.33.87', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 13:50:27', '2015-09-29 13:50:27'),
(32, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', '2015-09-29 21:49:59', '2015-09-29 21:49:59'),
(33, 10, '115.73.33.87', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-29 23:21:04', '2015-09-29 23:21:04'),
(34, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-30 01:01:55', '2015-09-30 01:01:55'),
(35, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-09-30 03:04:07', '2015-09-30 03:04:07'),
(36, 10, '115.73.8.122', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-01 14:08:24', '2015-10-01 14:08:24'),
(37, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-01 17:03:42', '2015-10-01 17:03:42'),
(38, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-02 01:20:10', '2015-10-02 01:20:10'),
(39, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-02 13:10:12', '2015-10-02 13:10:12'),
(40, 10, '115.73.128.218', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-02 14:11:01', '2015-10-02 14:11:01'),
(41, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-03 01:24:48', '2015-10-03 01:24:48'),
(42, 10, '115.73.138.167', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-03 15:37:05', '2015-10-03 15:37:05'),
(43, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 01:40:45', '2015-10-04 01:40:45'),
(44, 10, '115.73.138.167', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 08:19:11', '2015-10-04 08:19:11'),
(45, 10, '115.73.138.167', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 09:47:02', '2015-10-04 09:47:02'),
(46, 10, '115.73.138.167', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 09:47:03', '2015-10-04 09:47:03'),
(47, 10, '115.73.34.91', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 14:04:51', '2015-10-04 14:04:51'),
(48, 10, '115.73.34.91', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 15:27:36', '2015-10-04 15:27:36'),
(49, 10, '115.73.34.91', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 17:05:37', '2015-10-04 17:05:37'),
(50, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-04 17:08:35', '2015-10-04 17:08:35'),
(51, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', '2015-10-04 21:34:47', '2015-10-04 21:34:47'),
(52, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 02:25:28', '2015-10-05 02:25:28'),
(53, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 03:53:23', '2015-10-05 03:53:23'),
(54, 1, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 04:22:37', '2015-10-05 04:22:37'),
(55, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 08:14:14', '2015-10-05 08:14:14'),
(56, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 09:25:57', '2015-10-05 09:25:57'),
(57, 10, '115.73.41.179', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 15:19:50', '2015-10-05 15:19:50'),
(58, 10, '115.73.41.179', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 17:13:38', '2015-10-05 17:13:38'),
(59, 10, '115.73.41.179', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-05 17:13:39', '2015-10-05 17:13:39'),
(60, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-06 01:19:15', '2015-10-06 01:19:15'),
(61, 10, '115.73.41.179', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-06 13:41:52', '2015-10-06 13:41:52'),
(62, 10, '115.73.41.179', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-06 15:09:25', '2015-10-06 15:09:25'),
(63, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-06 22:48:54', '2015-10-06 22:48:54'),
(64, 10, '14.169.115.98', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-07 01:08:51', '2015-10-07 01:08:51'),
(65, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-12 14:24:37', '2015-10-12 14:24:37'),
(66, 11, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '2015-10-12 14:27:58', '2015-10-12 14:27:58'),
(67, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-17 16:49:37', '2015-10-17 16:49:37'),
(68, 10, '115.76.148.84', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-18 16:53:05', '2015-10-18 16:53:05'),
(69, 10, '14.169.40.209', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-19 06:08:55', '2015-10-19 06:08:55'),
(70, 10, '115.76.148.84', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-19 15:03:10', '2015-10-19 15:03:10'),
(71, 10, '14.169.40.209', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-20 01:05:55', '2015-10-20 01:05:55'),
(72, 1, '14.169.40.209', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-21 02:02:27', '2015-10-21 02:02:27'),
(73, 1, '14.169.40.209', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-21 03:34:17', '2015-10-21 03:34:17'),
(74, 1, '14.169.40.209', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-21 07:44:46', '2015-10-21 07:44:46'),
(75, 10, '115.76.148.84', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-21 18:10:58', '2015-10-21 18:10:58'),
(76, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-25 04:25:33', '2015-10-25 04:25:33'),
(77, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '2015-10-27 03:34:34', '2015-10-27 03:34:34'),
(78, 10, '27.74.237.155', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-27 19:43:27', '2015-10-27 19:43:27'),
(79, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-28 02:18:35', '2015-10-28 02:18:35'),
(80, 1, '14.169.75.226', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-28 02:22:11', '2015-10-28 02:22:11'),
(81, 1, '14.169.75.226', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-28 03:35:52', '2015-10-28 03:35:52'),
(82, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-30 03:03:33', '2015-10-30 03:03:33'),
(83, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-31 20:29:08', '2015-10-31 20:29:08'),
(84, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-10-31 23:10:35', '2015-10-31 23:10:35'),
(85, 10, '27.74.237.155', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-01 03:13:15', '2015-11-01 03:13:15'),
(86, 10, '27.74.237.155', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-01 05:54:31', '2015-11-01 05:54:31'),
(87, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-01 18:32:43', '2015-11-01 18:32:43'),
(88, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-01 20:01:51', '2015-11-01 20:01:51'),
(89, 10, '205.206.177.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-01 21:03:16', '2015-11-01 21:03:16'),
(90, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-02 01:37:53', '2015-11-02 01:37:53'),
(91, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-03 01:52:14', '2015-11-03 01:52:14'),
(92, 1, '14.169.75.226', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-03 04:07:19', '2015-11-03 04:07:19'),
(93, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-04 01:47:34', '2015-11-04 01:47:34'),
(94, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-06 06:50:30', '2015-11-06 06:50:30'),
(95, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-06 08:21:57', '2015-11-06 08:21:57'),
(96, 10, '14.169.75.226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-07 01:20:48', '2015-11-07 01:20:48'),
(97, 10, '171.233.202.128', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', '2015-11-12 17:17:24', '2015-11-12 17:17:24'),
(98, 10, '171.233.202.128', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', '2015-11-12 23:55:00', '2015-11-12 23:55:00'),
(99, 10, '142.59.28.103', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', '2015-11-29 17:20:14', '2015-11-29 17:20:14'),
(100, 10, '142.59.28.103', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', '2015-12-12 22:43:34', '2015-12-12 22:43:34'),
(101, 10, '75.158.56.212', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', '2016-01-06 00:28:26', '2016-01-06 00:28:26'),
(102, 10, '198.53.126.78', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36', '2016-01-16 23:25:28', '2016-01-16 23:25:28'),
(103, 10, '198.53.126.78', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36', '2016-01-17 00:38:57', '2016-01-17 00:38:57'),
(104, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-09 02:22:03', '2016-03-09 02:22:03'),
(105, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-24 17:41:16', '2016-03-24 17:41:16'),
(106, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-24 17:42:06', '2016-03-24 17:42:06'),
(107, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-24 17:57:15', '2016-03-24 17:57:15'),
(108, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-28 19:54:00', '2016-03-28 19:54:00'),
(109, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 01:20:11', '2016-03-29 01:20:11'),
(110, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 01:20:12', '2016-03-29 01:20:12'),
(111, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 01:48:15', '2016-03-29 01:48:15'),
(112, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 02:01:59', '2016-03-29 02:01:59'),
(113, 10, '14.186.180.96', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 02:06:18', '2016-03-29 02:06:18'),
(114, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 04:02:14', '2016-03-29 04:02:14'),
(115, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 13:51:02', '2016-03-29 13:51:02'),
(116, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-29 14:46:53', '2016-03-29 14:46:53'),
(117, 10, '14.186.180.96', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-30 01:47:48', '2016-03-30 01:47:48'),
(118, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', '2016-04-02 00:11:45', '2016-04-02 00:11:45'),
(119, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', '2016-04-02 22:55:23', '2016-04-02 22:55:23'),
(120, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', '2016-04-07 01:56:52', '2016-04-07 01:56:52'),
(121, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', '2016-04-07 04:22:49', '2016-04-07 04:22:49'),
(122, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', '2016-04-08 04:08:35', '2016-04-08 04:08:35'),
(123, 10, '27.77.116.46', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', '2016-04-08 16:02:17', '2016-04-08 16:02:17'),
(124, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-13 00:37:08', '2016-04-13 00:37:08'),
(125, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-14 14:50:53', '2016-04-14 14:50:53'),
(126, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-21 03:16:02', '2016-04-21 03:16:02'),
(127, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-21 04:07:20', '2016-04-21 04:07:20'),
(128, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-21 12:27:18', '2016-04-21 12:27:18'),
(129, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-21 14:24:49', '2016-04-21 14:24:49'),
(130, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-22 04:57:50', '2016-04-22 04:57:50'),
(131, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-26 00:01:01', '2016-04-26 00:01:01'),
(132, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-27 05:46:57', '2016-04-27 05:46:57'),
(133, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-06 13:48:09', '2016-05-06 13:48:09'),
(134, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-09 13:28:29', '2016-05-09 13:28:29'),
(135, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-10 04:42:18', '2016-05-10 04:42:18'),
(136, 10, '115.77.149.229', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-10 17:06:46', '2016-05-10 17:06:46'),
(137, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-18 09:10:26', '2016-05-18 09:10:26'),
(138, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 01:38:30', '2016-05-19 01:38:30'),
(139, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 01:52:31', '2016-05-19 01:52:31'),
(140, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 02:55:31', '2016-05-19 02:55:31'),
(141, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 04:19:52', '2016-05-19 04:19:52'),
(142, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 04:30:35', '2016-05-19 04:30:35'),
(143, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 15:47:31', '2016-05-19 15:47:31'),
(144, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 20:43:54', '2016-05-19 20:43:54'),
(145, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-20 16:52:23', '2016-05-20 16:52:23'),
(146, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-21 02:19:28', '2016-05-21 02:19:28'),
(147, 10, '14.186.183.52', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-24 03:47:11', '2016-05-24 03:47:11'),
(148, 10, '14.186.183.52', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-25 02:06:40', '2016-05-25 02:06:40'),
(149, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-26 05:19:46', '2016-05-26 05:19:46'),
(150, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-01 14:28:39', '2016-06-01 14:28:39'),
(151, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-04 19:14:07', '2016-06-04 19:14:07'),
(152, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-07 15:44:10', '2016-06-07 15:44:10'),
(153, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-08 16:28:12', '2016-06-08 16:28:12'),
(154, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-08 17:15:33', '2016-06-08 17:15:33'),
(155, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-09 15:58:56', '2016-06-09 15:58:56'),
(156, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-10 14:27:54', '2016-06-10 14:27:54'),
(157, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-10 17:16:01', '2016-06-10 17:16:01'),
(158, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 15:04:13', '2016-06-13 15:04:13'),
(159, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 03:46:00', '2016-06-14 03:46:00'),
(160, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 21:23:55', '2016-06-14 21:23:55'),
(161, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 21:39:09', '2016-06-14 21:39:09'),
(162, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 04:03:56', '2016-06-16 04:03:56'),
(163, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 05:19:12', '2016-06-17 05:19:12'),
(164, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-23 16:28:59', '2016-06-23 16:28:59'),
(165, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-02 05:13:38', '2016-07-02 05:13:38'),
(166, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-02 17:26:57', '2016-07-02 17:26:57'),
(167, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-02 17:34:00', '2016-07-02 17:34:00'),
(168, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-03 16:34:03', '2016-07-03 16:34:03'),
(169, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-03 16:34:04', '2016-07-03 16:34:04'),
(170, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-04 00:52:40', '2016-07-04 00:52:40'),
(171, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-04 00:52:41', '2016-07-04 00:52:41'),
(172, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-04 21:15:24', '2016-07-04 21:15:24'),
(173, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-05 04:55:33', '2016-07-05 04:55:33'),
(174, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-05 05:11:32', '2016-07-05 05:11:32'),
(175, 10, '14.187.54.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-09 02:32:29', '2016-07-09 02:32:29'),
(176, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-16 00:08:36', '2016-07-16 00:08:36'),
(177, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36', '2016-07-27 00:31:52', '2016-07-27 00:31:52'),
(178, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-29 02:39:48', '2016-07-29 02:39:48'),
(179, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-08-04 23:19:38', '2016-08-04 23:19:38'),
(180, 11, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-08-05 00:25:46', '2016-08-05 00:25:46'),
(181, 10, '113.172.6.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36', '2016-08-06 04:21:34', '2016-08-06 04:21:34'),
(182, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-08-08 16:18:46', '2016-08-08 16:18:46'),
(183, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.82 Safari/537.36', '2016-08-08 17:02:59', '2016-08-08 17:02:59'),
(184, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-08-08 21:58:22', '2016-08-08 21:58:22'),
(185, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-08-11 15:49:13', '2016-08-11 15:49:13'),
(186, 10, '204.191.108.127', 'Mozilla/5.0 (iPad; CPU OS 9_3_3 like Mac OS X) AppleWebKit/601.1 (KHTML, like Gecko) CriOS/52.0.2743.84 Mobile/13G34 Saf', '2016-08-12 03:20:55', '2016-08-12 03:20:55'),
(187, 10, '50.99.42.73', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', '2016-08-12 22:08:00', '2016-08-12 22:08:00'),
(188, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-09-24 15:59:04', '2016-09-24 15:59:04'),
(189, 10, '14.186.241.34', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-09-30 01:24:36', '2016-09-30 01:24:36'),
(190, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '2016-10-31 18:25:04', '2016-10-31 18:25:04'),
(191, 10, '115.77.49.21', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-12-03 07:40:20', '2016-12-03 07:40:20'),
(192, 10, '14.186.208.204', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 02:07:13', '2017-01-11 02:07:13'),
(193, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-23 00:23:18', '2017-01-23 00:23:18'),
(194, 10, '14.186.208.204', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-25 02:47:32', '2017-01-25 02:47:32'),
(195, 10, '14.187.63.168', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-02 02:09:46', '2017-03-02 02:09:46'),
(196, 10, '27.64.65.85', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-30 15:19:11', '2017-03-30 15:19:11'),
(197, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 00:53:38', '2017-05-18 00:53:38'),
(198, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 15:24:13', '2017-05-18 15:24:13'),
(199, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 15:24:13', '2017-05-18 15:24:13'),
(200, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 15:24:25', '2017-05-18 15:24:25'),
(201, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 22:40:07', '2017-05-18 22:40:07'),
(202, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 04:29:12', '2017-05-19 04:29:12'),
(203, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 08:51:55', '2017-05-19 08:51:55'),
(204, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 08:55:39', '2017-05-19 08:55:39'),
(205, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 09:06:17', '2017-05-19 09:06:17'),
(206, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 09:07:36', '2017-05-19 09:07:36'),
(207, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 09:14:15', '2017-05-19 09:14:15'),
(208, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 09:20:56', '2017-05-19 09:20:56'),
(209, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 09:52:38', '2017-05-19 09:52:38'),
(210, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-19 15:00:48', '2017-05-19 15:00:48'),
(211, 10, '70.77.93.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-19 16:49:15', '2017-05-19 16:49:15'),
(212, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-20 04:44:42', '2017-05-20 04:44:42'),
(213, 10, '113.172.27.132', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-22 03:58:53', '2017-05-22 03:58:53'),
(214, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-23 15:14:56', '2017-05-23 15:14:56'),
(215, 10, '14.186.135.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-24 02:25:05', '2017-05-24 02:25:05'),
(216, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-25 15:02:26', '2017-05-25 15:02:26'),
(217, 10, '14.186.135.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-26 01:38:21', '2017-05-26 01:38:21'),
(218, 10, '14.186.135.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-29 07:25:03', '2017-05-29 07:25:03'),
(219, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-29 14:44:42', '2017-05-29 14:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subscribe` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `facebook_id` text COLLATE utf8_unicode_ci,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(3) DEFAULT '1',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poscode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `birthday`, `subscribe`, `active`, `created_at`, `updated_at`, `facebook_id`, `fullname`, `phone`, `gender`, `address1`, `address2`, `address3`, `poscode`, `city`, `state`, `country`) VALUES
(1, 'nmtri44@gmail.com', '$2a$08$2uTGoS6QwqhIG7oseiZ3ROj24TV7XsKM5zLeABCkkSFNmtz..9o3i', 'Kami', 'Tori', '4-4', 0, 1, '2015-10-01 04:35:02', '2015-10-01 04:35:02', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'test@anvy.com', '$2a$08$WjfOucCHxaQYpc1WlJ8pKuv/Y3qt7T5OPcAdhwwYdzsV9eD9lNCeq', 'Test', 'Test', '1-5', 1, 1, '2015-10-02 09:59:00', '2015-10-02 09:59:00', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'john@anvydigital.com', '$2a$08$6iIjTVgkEJuQYj8njNXYs.rfHTizPm9csXhlwKAGtWha4mgA41ZKi', 'John', 'Phan', '1-3', 0, 1, '2015-10-07 13:16:31', '2015-10-07 13:16:31', '', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'hunglmkpc044@gmail.com', '$2a$08$vJwUVxc1CkxsbjCg6NMUOONqQloJ5HDvzBxIP2oE2ucoHHg9ueWGS', 'hung', 'lam', '1-9', 1, 1, '2015-11-05 02:23:46', '2015-11-05 02:23:46', '', 'hung lam', '01269567885', 1, 'dada dadsadsad', NULL, NULL, 'a12a', 'dadsa', 'AB', 'CA'),
(7, 'kami_tori@yahoo.com', '$2a$08$0f7F17XQf9AGK4zNcuGUvOoNOWJrF1ZlimAwBbOL9SZysqPxQyVVK', 'Trí', 'Nguyễn Minh', '4-4', 1, 1, '2015-11-06 04:02:59', '2015-11-06 04:02:59', '360478117478552', 'Trí Nguyễn Minh', '123456', 1, '332/44B Phan Văn Trị', NULL, NULL, '12312312', 'Hồ Chí Minh', 'YT', 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `product_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '$',
  `expries` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `limited` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `name`, `value`, `product_type`, `type`, `expries`, `active`, `deleted`, `created_at`, `updated_at`, `limited`) VALUES
(2, '5AK044R7LX', 0, 'all', '$', '2016-05-19 06:00:00', 1, 0, '2016-05-19 02:40:31', '2016-05-19 03:20:38', 1),
(4, 'less10', 10, 'all', '%', '2016-05-31 06:00:00', 1, 0, '2016-05-19 04:43:51', '2016-05-19 04:43:51', 1),
(5, 'c2', 0.34, 'all', '$', '2016-05-26 06:00:00', 1, 0, '2016-05-19 21:15:22', '2016-05-19 21:17:23', 1),
(7, 'b10', 10, 'all', '%', '2016-12-31 07:00:00', 1, 0, '2016-06-04 19:15:27', '2016-06-04 19:15:27', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cf_key_2` (`cf_key`),
  ADD KEY `cf_key` (`cf_key`);

--
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD KEY `name` (`name`,`short_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `short_name_2` (`short_name`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `short_name` (`short_name`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `short_name` (`short_name`),
  ADD KEY `short_name_2` (`short_name`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `success_logins`
--
ALTER TABLE `success_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `email_2` (`email`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `success_logins`
--
ALTER TABLE `success_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
