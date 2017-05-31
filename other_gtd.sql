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
-- Database: `other_gtd`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `billing_address` int(1) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `first_name`, `last_name`, `company`, `address1`, `address2`, `city`, `country_id`, `province_id`, `user_id`, `type`, `zipcode`, `phone`, `default`, `created_by`, `updated_by`, `created_at`, `updated_at`, `billing_address`, `email`, `note`) VALUES
(1, 'Jared', 'Ali', 'Evolution Multimedia', '2213 - 26th Street SW', '', 'Calgary', 'CA', 'AB', 6, 'User', 'T3E 2A4', '403.606.6025', 1, 0, 0, '2015-06-02 17:12:59', '2015-06-02 17:12:59', 0, NULL, NULL),
(2, 'ton', 'va', '', ' 3016-10 ave ne ', '', 'calgary', 'CA', 'AB', 0, '', 'T2A6A3', '4032912244', 0, 0, 0, '2015-06-24 19:20:51', '2015-06-24 19:20:51', 0, NULL, NULL),
(3, 'ton', 'va', '', ' 3016-10 ave ne ', '', 'calgary', 'CA', 'AB', 0, '', 'T2A6A3', '4032912244', 0, 0, 0, '2015-06-24 19:20:51', '2015-06-24 19:20:51', 0, NULL, NULL),
(4, 'ton', 'v', '', '', '', 'calgary', 'CA', 'AB', 0, '', 't2a6a3', '4032912244', 0, 0, 0, '2015-06-24 20:46:01', '2015-06-24 20:46:01', 0, NULL, NULL),
(5, 'ton', 'v', '', '3016 10 ave ne', '', 'calgary', 'CA', 'AB', 0, '', 't2a6a3', '4032912244', 0, 0, 0, '2015-06-24 20:46:01', '2015-06-24 20:46:01', 0, NULL, NULL),
(6, 'ton', 'va', '', ' 3016 10 ave ne ', '', 'calgary', 'CA', 'AB', 0, '', 't3s4d5', '4032912244', 0, 0, 0, '2015-06-25 15:02:40', '2015-06-25 15:02:40', 0, NULL, NULL),
(7, 'ton', 'va', '', ' 3016 10 ave ne ', '', 'calgary', 'CA', 'AB', 0, '', 't3s4d5', '4032912244', 0, 0, 0, '2015-06-25 15:02:40', '2015-06-25 15:02:40', 0, NULL, NULL),
(8, 'ton', 'v', 'anvy', '3016 10 ave ne ', '', 'calgary', 'CA', 'AB', 7, 'User', '5F4RD4', '4032912244', 1, 0, 0, '2015-06-25 15:04:08', '2015-06-25 15:04:08', 0, NULL, NULL),
(9, 'Tam', 'Nguyen', 'Anvy', '', '', 'Calgary', 'CA', 'AB', 11, 'User', '', '', 0, 0, 0, '2017-01-31 20:11:48', '2017-01-31 20:11:48', 0, NULL, NULL),
(10, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-01-31 22:15:06', '2017-01-31 22:15:06', 0, NULL, NULL),
(11, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 12, '', 'T2B1W3', '6044457029', 1, 0, 0, '2017-01-31 22:15:06', '2017-01-31 22:15:06', 0, NULL, NULL),
(12, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-02-09 21:13:18', '2017-02-09 21:13:18', 0, NULL, NULL),
(13, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-02-09 21:13:18', '2017-02-09 21:13:18', 0, NULL, NULL),
(14, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-02-15 19:05:24', '2017-02-15 19:05:24', 0, NULL, NULL),
(15, 'Tam ', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-02-15 19:05:24', '2017-02-15 19:05:24', 0, NULL, NULL),
(16, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-02-15 19:06:06', '2017-02-15 19:06:06', 0, NULL, NULL),
(17, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-02-15 19:06:06', '2017-02-15 19:06:06', 0, NULL, NULL),
(18, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-10 21:00:31', '2017-03-10 21:00:31', 0, NULL, NULL),
(19, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-10 21:00:31', '2017-03-10 21:00:31', 0, NULL, NULL),
(20, '', '', '', '', '', '', '0', '0', 13, 'User', '', '', 0, 0, 0, '2017-03-10 22:20:59', '2017-03-17 22:20:24', 0, NULL, NULL),
(21, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 13, 'User', 'T2B1W3', '6044457029', 1, 0, 0, '2017-03-16 20:56:10', '2017-03-17 22:20:24', 0, NULL, NULL),
(22, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'BC', 13, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-16 20:56:23', '2017-03-17 22:20:24', 0, NULL, NULL),
(23, 'hung', 'lam', 'anvydigital', '62C nguyen hong', '', 'Ho Chi Minh', 'VN', '0', 14, 'User', '90000', '0976723656', 1, 0, 0, '2017-03-17 06:47:50', '2017-03-17 06:48:33', 0, 'hunglmkpc044@gmail.com', 'This is a test'),
(24, 'hung ', 'lam', 'anvydigital', 'ben canada', '', 'Ho Chi Minh', 'VN', '0', 14, 'User', '789456', '123456789', 0, 0, 0, '2017-03-17 06:48:28', '2017-03-17 06:48:33', 1, 'hunglmkpc044@gmail.com', ''),
(25, 'Tam', 'Nguyen', '', '10001 Dove Close SE', '', 'Calgary', 'CA', '0', 13, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-17 22:20:10', '2017-03-17 22:20:24', 1, 'tam@anvydigital.com', ''),
(26, 'hung', 'lam', 'anvydigital viet nam', '62C Nguyen Hong', '', 'Ho Chi Minh', 'VN', 'AB', 17, 'User', '90000', '0976723656', 1, 0, 0, '2017-03-18 00:03:35', '2017-03-18 00:34:59', 0, 'hunglmkpc044@gmail.com', 'this is a test'),
(27, 'hung', 'lam', 'anvydigital canada', 'Aberta', '', 'Ho Chi Minh', 'VN', '0', 17, 'User', 'Z12ASB', '0976723656', 0, 0, 0, '2017-03-18 00:04:20', '2017-03-18 00:34:59', 1, 'hunglmkpc044@gmail.com', ''),
(28, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 13, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-20 16:44:34', '2017-03-20 16:44:34', 0, '', ''),
(29, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 18, 'User', 'T2B1W3', '6044457029', 1, 0, 0, '2017-03-20 16:48:53', '2017-04-12 17:31:50', 1, 'tomnguyen2601@gmail.com', ''),
(32, 'Tom', 'Nguyen', 'Anvydigital', '26 DoverCliffe Close SE', '', 'CALGARY', 'CA', 'AB', 19, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-20 19:12:58', '2017-03-20 19:12:58', 0, 'tam@anvydigital.com', ''),
(33, 'tom', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 19, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-20 19:13:11', '2017-03-20 19:13:11', 1, 'tomnguyen2601@gmail.com', ''),
(36, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-21 20:54:29', '2017-03-21 20:54:29', 0, NULL, NULL),
(37, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-21 20:54:29', '2017-03-21 20:54:29', 0, NULL, NULL),
(38, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-21 20:54:32', '2017-03-21 20:54:32', 0, NULL, NULL),
(39, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-21 20:54:32', '2017-03-21 20:54:32', 0, NULL, NULL),
(40, '', '', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-22 11:45:11', '2017-03-22 11:45:11', 0, NULL, NULL),
(41, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 16:53:25', '2017-03-22 16:53:25', 0, NULL, NULL),
(42, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 16:53:25', '2017-03-22 16:53:25', 0, NULL, NULL),
(43, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 17:48:53', '2017-03-22 17:48:53', 0, NULL, NULL),
(44, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 17:48:53', '2017-03-22 17:48:53', 0, NULL, NULL),
(45, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 21:46:25', '2017-03-22 21:46:25', 0, NULL, NULL),
(46, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 21:46:25', '2017-03-22 21:46:25', 0, NULL, NULL),
(47, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 22:20:24', '2017-03-22 22:20:24', 0, NULL, NULL),
(48, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 22:20:24', '2017-03-22 22:20:24', 0, NULL, NULL),
(49, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 22:31:35', '2017-03-22 22:31:35', 0, NULL, NULL),
(50, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-22 22:31:35', '2017-03-22 22:31:35', 0, NULL, NULL),
(51, 'Tam', 'Nguyen', '', '73 17th Close SE', '', 'Calgary', 'CA', 'AB', 21, 'User', 'T2B1W3', '6044457029', 1, 0, 0, '2017-03-23 18:02:41', '2017-03-23 18:03:52', 0, 'tomnguyen2601@gmail.com', ''),
(52, 'Duy ', 'Le', '', '81 4st SE', '42 8st NW', 'calgary', 'CA', '0', 21, 'User', 't3w3r1', '951353232', 0, 0, 0, '2017-03-23 18:03:39', '2017-03-23 18:03:52', 1, 'duy@gmail.com', ''),
(53, 'Tam', 'Nguyen', '', '73 17th Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '951353232', 0, 0, 0, '2017-03-23 18:08:03', '2017-03-23 18:08:03', 0, NULL, NULL),
(54, 'Duy ', 'Le', '', '81 4st SE 42 8st NW', '', 'calgary', 'CA', '0', 22, '', 't3w3r1', '951353232', 1, 0, 0, '2017-03-23 18:08:03', '2017-03-23 18:08:03', 0, NULL, NULL),
(55, '', '', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-23 23:10:35', '2017-03-23 23:10:35', 0, NULL, NULL),
(56, '', '', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-23 23:10:46', '2017-03-23 23:10:46', 0, NULL, NULL),
(57, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-23 23:18:18', '2017-03-23 23:18:18', 0, NULL, NULL),
(58, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-23 23:18:18', '2017-03-23 23:18:18', 0, NULL, NULL),
(59, 'asdf', 'sd', 'asdf', 'asdf', 'sadf', 'sdf', 'US', 'AL', 16, 'User', 'asdf', 'sdf', 0, 0, 0, '2017-03-24 00:04:35', '2017-03-24 00:04:35', 0, 'asdf', 'sdf'),
(60, 'hung', 'lam', '', '2/1212', '', 'dada', 'CA', '', 0, '', 'adaaddad', '1234567', 0, 0, 0, '2017-03-24 05:37:23', '2017-03-24 05:37:23', 0, NULL, NULL),
(61, 'ddada', 'dadadd', '', ' addada', '', 'dadadada', 'CA', '0', 23, '', '', '1234567', 1, 0, 0, '2017-03-24 05:37:23', '2017-03-24 05:37:23', 0, NULL, NULL),
(62, 'adada', 'dadda', '', 'dadda', '', 'dadadad', 'CA', '', 0, '', 'dadadda', '1212121', 0, 0, 0, '2017-03-24 05:39:02', '2017-03-24 05:39:02', 0, NULL, NULL),
(63, 'adadada', 'dadda', '', ' dadadada', '', 'dadada', 'CA', '0', 24, '', '', '1212121', 1, 0, 0, '2017-03-24 05:39:02', '2017-03-24 05:39:02', 0, NULL, NULL),
(69, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 26, 'User', 'T2B1W3', '', 0, 0, 0, '2017-03-24 17:59:08', '2017-03-24 17:59:08', 1, 'tam@anvydigital.com', ''),
(70, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 26, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-24 17:59:17', '2017-03-24 17:59:17', 0, 'tam@anvydigital.com', ''),
(71, '', '', '', '', '', '', '0', '0', 26, 'User', '', '', 0, 0, 0, '2017-03-24 18:00:42', '2017-03-24 18:00:42', 0, '', ''),
(72, '', '', '', '', '', '', '0', '0', 26, 'User', '', '', 0, 0, 0, '2017-03-24 18:01:07', '2017-03-24 18:01:07', 0, '', ''),
(73, '', 'a', '', '', '', '', '0', '0', 26, 'User', '', '', 0, 0, 0, '2017-03-24 18:01:15', '2017-03-24 18:01:15', 0, '', ''),
(74, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 27, 'User', 'T2B1W3', '6044457029', 1, 0, 0, '2017-03-24 18:05:40', '2017-03-24 18:07:21', 0, 'tomnguyen2601@gmail.com', ''),
(75, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 27, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-24 18:05:51', '2017-03-24 18:07:21', 1, 'tam@anvydigital.com', ''),
(76, '', '', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-24 18:26:24', '2017-03-24 18:26:24', 0, NULL, NULL),
(77, '', '', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-24 18:26:42', '2017-03-24 18:26:42', 0, NULL, NULL),
(79, 'lâm minh', 'Hung', '', '2/15/22', '', 'Ho Chi Minh', 'VN', '', 0, '', '677', '976723656', 0, 0, 0, '2017-03-27 07:48:34', '2017-03-27 07:48:34', 0, NULL, NULL),
(80, 'hung', 'Hung', '', '', '', 'Ho Chi Minh', 'CA', '0', 30, '', '', '976723656', 1, 0, 0, '2017-03-27 07:48:34', '2017-03-27 07:48:34', 0, NULL, NULL),
(81, '', '', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-27 09:24:07', '2017-03-27 09:24:07', 0, NULL, NULL),
(82, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 18, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-27 17:23:50', '2017-04-12 17:31:50', 0, 'tomnguyen2601@gmail.com', ''),
(85, 'Tam', 'Nguyen', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-27 18:15:09', '2017-03-27 18:15:09', 0, NULL, NULL),
(86, 'Tam', 'Nguyen', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-27 18:15:15', '2017-03-27 18:15:15', 0, NULL, NULL),
(87, 'Tam', 'Nguyen', '', '', '', '', 'CA', '', 0, '', '', '', 0, 0, 0, '2017-03-27 18:15:19', '2017-03-27 18:15:19', 0, NULL, NULL),
(88, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-28 17:10:11', '2017-03-28 17:10:11', 0, NULL, NULL),
(89, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-28 17:10:11', '2017-03-28 17:10:11', 0, NULL, NULL),
(90, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-28 17:14:55', '2017-03-28 17:14:55', 0, NULL, NULL),
(91, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-28 17:14:55', '2017-03-28 17:14:55', 0, NULL, NULL),
(92, 'hung', 'lam', '', 'hunglam', '', '1990', 'CA', '', 0, '', '12121', '1212121', 0, 0, 0, '2017-03-28 23:56:21', '2017-03-28 23:56:21', 0, NULL, NULL),
(93, 'dad', 'dadada', '', ' adadad', '', 'adadada', 'CA', '0', 36, '', 'dadada', '1212121', 1, 0, 0, '2017-03-28 23:56:21', '2017-03-28 23:56:21', 0, NULL, NULL),
(94, 'Tam', 'tasas', '', 'sa ', '', 'CALGARY', 'CA', '', 0, '', '', '6044457029', 0, 0, 0, '2017-03-29 17:33:28', '2017-03-29 17:33:28', 0, NULL, NULL),
(95, 'Tam', 'tasas', '', 'sa ', '', 'aca', 'CA', 'ON', 0, '', '', '6044457029', 0, 0, 0, '2017-03-29 17:33:28', '2017-03-29 17:33:28', 0, NULL, NULL),
(96, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 17:40:00', '2017-03-29 17:40:00', 0, NULL, NULL),
(97, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 17:40:00', '2017-03-29 17:40:00', 0, NULL, NULL),
(98, 'Tam', 'Nguyen', '', 'asd', '', 'asd', 'CA', '', 0, '', '', '664455', 0, 0, 0, '2017-03-29 17:43:47', '2017-03-29 17:43:47', 0, NULL, NULL),
(99, 'Tam', 'Nguyen', '', 'asd', '', 'asd', 'CA', 'PE', 38, '', '', '664455', 1, 0, 0, '2017-03-29 17:43:47', '2017-03-29 17:43:47', 0, NULL, NULL),
(100, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 18:08:24', '2017-03-29 18:08:24', 0, NULL, NULL),
(101, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 18:08:24', '2017-03-29 18:08:24', 0, NULL, NULL),
(102, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 18:29:31', '2017-03-29 18:29:31', 0, NULL, NULL),
(103, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 18:29:31', '2017-03-29 18:29:31', 0, NULL, NULL),
(104, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 23:57:10', '2017-03-29 23:57:10', 0, NULL, NULL),
(105, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-29 23:57:10', '2017-03-29 23:57:10', 0, NULL, NULL),
(106, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 16:53:41', '2017-03-30 16:53:41', 0, NULL, NULL),
(107, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 16:53:41', '2017-03-30 16:53:41', 0, NULL, NULL),
(108, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:15', '2017-03-30 17:15:15', 0, NULL, NULL),
(109, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:15', '2017-03-30 17:15:15', 0, NULL, NULL),
(110, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:21', '2017-03-30 17:15:21', 0, NULL, NULL),
(111, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:21', '2017-03-30 17:15:21', 0, NULL, NULL),
(112, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:24', '2017-03-30 17:15:24', 0, NULL, NULL),
(113, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:24', '2017-03-30 17:15:24', 0, NULL, NULL),
(114, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:26', '2017-03-30 17:15:26', 0, NULL, NULL),
(115, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:15:26', '2017-03-30 17:15:26', 0, NULL, NULL),
(116, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:16:20', '2017-03-30 17:16:20', 0, NULL, NULL),
(117, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:16:20', '2017-03-30 17:16:20', 0, NULL, NULL),
(118, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:16:28', '2017-03-30 17:16:28', 0, NULL, NULL),
(119, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:16:28', '2017-03-30 17:16:28', 0, NULL, NULL),
(120, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:16:57', '2017-03-30 17:16:57', 0, NULL, NULL),
(121, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-30 17:16:57', '2017-03-30 17:16:57', 0, NULL, NULL),
(122, 'Tom', 'Nguyen', 'Anvy', '81 Augusta Drive', '', 'calgary', 'CA', 'AB', 39, 'User', '', '604112456', 1, 0, 0, '2017-03-30 17:18:54', '2017-03-30 17:19:02', 0, 'tomkevin@gmail.com', ''),
(123, 'Tom', 'Nguyen', 'Anvy', '471 Carlon Drive', '', 'Vancouver', 'CA', '0', 39, 'User', '', '604112456', 0, 0, 0, '2017-03-30 17:18:56', '2017-03-30 17:19:02', 1, 'tomkevin@gmail.com', ''),
(124, 'Tom', 'Nguyen', '', '471 Carlon Drive', '', 'Vancouver', 'CA', '', 0, '', '', '604112456', 0, 0, 0, '2017-03-30 18:53:44', '2017-03-30 18:53:44', 0, NULL, NULL),
(125, 'Tom', 'Nguyen', '', '471 Carlon Drive', '', 'Vancouver', 'CA', 'PE', 40, '', '', '604112456', 1, 0, 0, '2017-03-30 18:53:44', '2017-03-30 18:53:44', 0, NULL, NULL),
(126, 'hung', 'lam', 'anvydigital', '62C nguyen hong', '', 'Ho Chi Minh', 'VN', '0', 14, 'User', '90000', '0976723656', 0, 0, 0, '2017-03-31 03:08:32', '2017-03-31 03:08:32', 0, 'hung@anvydigital.com', ''),
(127, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:25:41', '2017-03-31 18:25:41', 0, NULL, NULL),
(128, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:25:41', '2017-03-31 18:25:41', 0, NULL, NULL),
(129, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:38:40', '2017-03-31 18:38:40', 0, NULL, NULL),
(130, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:38:40', '2017-03-31 18:38:40', 0, NULL, NULL),
(131, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:38:58', '2017-03-31 18:38:58', 0, NULL, NULL),
(132, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:38:58', '2017-03-31 18:38:58', 0, NULL, NULL),
(133, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:48:28', '2017-03-31 18:48:28', 0, NULL, NULL),
(134, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-03-31 18:48:28', '2017-03-31 18:48:28', 0, NULL, NULL),
(135, 'hung', 'lam', '', '62C nguyen hong', '', 'Ho Chi Minh', 'CA', '0', 0, '', '90000', '123456789', 0, 0, 0, '2017-04-01 00:56:15', '2017-04-01 00:56:15', 0, NULL, NULL),
(136, 'hung', 'lam', '', '62C nguyen hong', '', 'Ho Chi Minh', 'CA', 'PE', 0, '', '90000', '123456789', 0, 0, 0, '2017-04-01 00:56:15', '2017-04-01 00:56:15', 0, NULL, NULL),
(137, 'hung ', 'lam', '', 'ben canada', '', 'Ho Chi Minh', 'VN', '0', 0, '', '789456', '123456789', 0, 0, 0, '2017-04-01 01:08:17', '2017-04-01 01:08:17', 0, NULL, NULL),
(138, 'hung ', 'lam', '', 'ben canada', '', 'Ho Chi Minh', 'VN', '0', 0, '', '789456', '123456789', 0, 0, 0, '2017-04-01 01:08:17', '2017-04-01 01:08:17', 0, NULL, NULL),
(139, 'hung', 'lam', '', '62C nguyen hong', '', 'Ho Chi Minh', 'VN', '0', 0, '', '90000', '123456789', 0, 0, 0, '2017-04-01 01:14:31', '2017-04-01 01:14:31', 0, NULL, NULL),
(140, 'hung', 'lam', '', '62C nguyen hong', '', 'Ho Chi Minh', 'VN', '0', 0, '', '90000', '123456789', 0, 0, 0, '2017-04-01 01:14:31', '2017-04-01 01:14:31', 0, NULL, NULL),
(141, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-03 17:49:23', '2017-04-03 17:49:23', 0, NULL, NULL),
(142, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-03 17:49:23', '2017-04-03 17:49:23', 0, NULL, NULL),
(143, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-03 20:36:50', '2017-04-03 20:36:50', 0, NULL, NULL),
(144, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'AB', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-03 20:36:50', '2017-04-03 20:36:50', 0, NULL, NULL),
(145, 'hung', 'lam', '', '62C nguyen hong', '', 'Ho Chi Minh', 'CA', '0', 0, '', '90000', '123456789', 0, 0, 0, '2017-04-04 00:25:25', '2017-04-04 00:25:25', 0, NULL, NULL),
(146, 'hung', 'lam', '', '62C nguyen hong', '', 'Ho Chi Minh', 'CA', 'PE', 0, '', '90000', '123456789', 0, 0, 0, '2017-04-04 00:25:25', '2017-04-04 00:25:25', 0, NULL, NULL),
(147, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-04 15:21:22', '2017-04-04 15:21:22', 0, NULL, NULL),
(148, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-04 15:21:22', '2017-04-04 15:21:22', 0, NULL, NULL),
(149, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', 'PE', 45, 'User', 'T2B1W3', '6044457029', 1, 0, 0, '2017-04-04 19:13:32', '2017-04-04 19:13:39', 0, 'anvydigital2017@gmail.com', ''),
(150, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 45, 'User', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-04 19:13:36', '2017-04-04 19:13:39', 1, 'anvydigital2017@gmail.com', ''),
(151, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-04 19:13:56', '2017-04-04 19:13:56', 0, NULL, NULL),
(152, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-04 19:13:56', '2017-04-04 19:13:56', 0, NULL, NULL),
(153, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-05 16:33:29', '2017-04-05 16:33:29', 0, NULL, NULL),
(154, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-05 16:33:29', '2017-04-05 16:33:29', 0, NULL, NULL),
(155, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-06 17:30:35', '2017-04-06 17:30:35', 0, NULL, NULL),
(156, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-06 17:30:35', '2017-04-06 17:30:35', 0, NULL, NULL),
(157, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-08 00:36:09', '2017-04-08 00:36:09', 0, NULL, NULL),
(158, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-08 00:36:09', '2017-04-08 00:36:09', 0, NULL, NULL),
(159, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-08 00:36:44', '2017-04-08 00:36:44', 0, NULL, NULL),
(160, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-08 00:36:44', '2017-04-08 00:36:44', 0, NULL, NULL),
(161, 'hung', 'lam', '', '62C nguyen hong', '', 'hcm', 'VN', '0', 0, '', 'dadada', '122121', 0, 0, 0, '2017-04-11 02:45:43', '2017-04-11 02:45:43', 0, NULL, NULL),
(162, 'hung lam', 'dada', '', 'dada', '', 'dadada', 'VN', '0', 0, '', 'dadada', '122121', 0, 0, 0, '2017-04-11 02:45:43', '2017-04-11 02:45:43', 0, NULL, NULL),
(163, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-19 20:26:18', '2017-04-19 20:26:18', 0, NULL, NULL),
(164, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-19 20:26:18', '2017-04-19 20:26:18', 0, NULL, NULL),
(165, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-19 20:30:42', '2017-04-19 20:30:42', 0, NULL, NULL),
(166, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-19 20:30:42', '2017-04-19 20:30:42', 0, NULL, NULL),
(167, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-25 01:47:48', '2017-04-25 01:47:48', 0, NULL, NULL),
(168, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-25 01:47:48', '2017-04-25 01:47:48', 0, NULL, NULL),
(169, '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, '2017-04-27 01:37:57', '2017-04-27 01:37:57', 0, NULL, NULL),
(170, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-27 01:38:07', '2017-04-27 01:38:07', 0, NULL, NULL),
(171, 'Tam', 'Nguyen', '', '26 DoverCliffe Close SE26 DoverCliffe Close SE ', '', 'Calgary', 'CA', '0', 0, '', 'T2B1W3', '6044457029', 0, 0, 0, '2017-04-27 01:38:07', '2017-04-27 01:38:07', 0, NULL, NULL),
(172, '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, '2017-04-27 01:38:43', '2017-04-27 01:38:43', 0, NULL, NULL),
(173, 'dad', 'adadada', '', 'dada', '', 'dadadad', 'CA', '0', 0, '', '', '12121', 0, 0, 0, '2017-04-27 01:39:27', '2017-04-27 01:39:27', 0, NULL, NULL),
(174, 'dad', 'adadad', '', 'adad', '', 'adadadadada', 'CA', '0', 0, '', 'dadada', '12121', 0, 0, 0, '2017-04-27 01:39:27', '2017-04-27 01:39:27', 0, NULL, NULL),
(175, '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, '2017-04-27 02:19:25', '2017-04-27 02:19:25', 0, NULL, NULL),
(176, '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, '2017-05-08 22:55:00', '2017-05-08 22:55:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `password`, `role_id`, `remember_token`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'kei', '', 'hth.tung90@gmail.com', '$2y$10$BmaQ3kXgtNOggigyrDwDk.SoIapGVj6uzxA4lgkcF56Pq8DTYlg92', 1, 'AYAJbrNXwIJ1CwiuFvy44d4muF0ZNENF4q0uqFIIfYMAEQMuDx7z973yqAHq', 1, 0, 1, '2015-04-16 14:26:56', '2017-01-17 02:36:54'),
(2, 'vu', '', 'vu.nguyen@gmail.com', '$2y$10$C8mW/HHqKj.XDCa29FwxROYoDKA6YNS8ssp.yHw1iebhv9Gl3HOCi', 1, NULL, 1, 0, 1, '2015-04-16 14:26:56', '2015-04-22 09:33:20'),
(3, 'tri', '', 'tri@mail.com', '$2y$10$C8mW/HHqKj.XDCa29FwxROYoDKA6YNS8ssp.yHw1iebhv9Gl3HOCi', 1, 'vF9f6ZpsR4QZsq7WYHiu3vyH2xb5P4L4pCUJy4Cl8v62Rtdi21YW2feba134', 1, 0, 1, '2015-04-16 14:26:56', '2015-04-21 11:17:26'),
(4, 'hung', '', 'hung@mail.com', '$2y$10$C8mW/HHqKj.XDCa29FwxROYoDKA6YNS8ssp.yHw1iebhv9Gl3HOCi', 1, NULL, 1, 0, 1, '2015-04-16 14:26:56', '2015-04-21 11:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_configs`
--

CREATE TABLE `admin_configs` (
  `id` mediumint(8) NOT NULL,
  `name` longtext,
  `key_id` varchar(255) NOT NULL,
  `key_value` longtext,
  `type` tinyint(1) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `modified_by` int(5) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_configs`
--

INSERT INTO `admin_configs` (`id`, `name`, `key_id`, `key_value`, `type`, `created_date`, `modified_date`, `created_by`, `modified_by`, `active`, `deleted`) VALUES
(1, 'Email system', 'email_system', 'abc@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(2, 'Current postal code', 'postal_code', 'T1X1E1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(3, 'Facebook APP ID', 'facebook_app_id', '1553326401585117', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(4, 'Flickr App ID', 'flickr_app_id', '24fdd4da6151132517c7d4572c29d1f0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(5, 'Flickr App Secret', 'flickr_app_secret', '58db44a1386f0b4e', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(7, 'Dropbox App ID', 'dropbox_app_id', '4h5nj85dysuxe3s', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(8, 'Google Drive App ID', 'googledrive_app_id', '365201913259-q8c6sjbl3obmflk3a5cv9sjcele4gerj.apps.googleusercontent.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(9, 'Skydrive App ID', 'skydrive_app_id', '0000000048149D20', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `order_no`, `active`, `type`, `link`, `created_by`, `updated_by`, `created_at`, `updated_at`, `description`) VALUES
(3, 'Banner 1', 1, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-17 19:26:10', NULL),
(4, 'Banner 2', 2, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2015-05-30 14:11:17', NULL),
(5, 'Banner 3', 3, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-17 19:26:07', NULL),
(6, 'Banner 4', 5, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-17 19:26:04', NULL),
(7, 'Banner 5', 6, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-17 19:26:02', NULL),
(8, 'Banner 6', 0, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-21 20:25:20', NULL),
(9, 'Banner 7', 7, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-17 19:25:50', NULL),
(10, 'Banner 8', 8, 0, 'small banner', '', 0, 0, '0000-00-00 00:00:00', '2017-03-21 18:37:04', NULL),
(12, 'Banner 9', 9, 0, NULL, '', 0, 0, '0000-00-00 00:00:00', '2017-03-17 19:25:53', NULL),
(20, 'ImageGalaBox', 1, 1, NULL, '', 0, 0, '2017-03-17 19:25:01', '2017-03-17 19:25:01', NULL),
(21, 'Best Selling Product', 1, 1, 'small banner', 'http://vi1.anvyonline.com/collections/indoor-signage/image-gala-box', 0, 0, '2017-03-21 18:26:10', '2017-03-22 18:27:33', NULL),
(22, 'Imagegala', 1, 1, NULL, '', 0, 0, '2017-03-21 20:36:17', '2017-03-21 20:36:33', NULL),
(41, 'Image Stylor', 1, 1, NULL, '', 0, 0, '2017-04-05 15:54:40', '2017-04-07 01:16:56', 'this is a test');

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

CREATE TABLE `box` (
  `id` int(5) NOT NULL,
  `width` int(100) NOT NULL,
  `height` int(100) NOT NULL,
  `coor_x` int(100) NOT NULL,
  `coor_y` int(100) NOT NULL,
  `layout_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `width`, `height`, `coor_x`, `coor_y`, `layout_id`) VALUES
(19, 220, 100, 0, 0, 3),
(20, 300, 200, 250, 100, 3),
(27, 100, 120, 134, 280, 2),
(28, 200, 100, 400, 300, 2),
(29, 120, 200, 273, 200, 2),
(30, 100, 100, 50, 50, 2),
(31, 100, 100, 160, 160, 2),
(36, 100, 100, 10, 10, 1),
(37, 100, 100, 120, 20, 1),
(39, 0, 0, 0, 0, 1),
(40, 100, 100, 7, 179, 1),
(41, 100, 100, 169, 184, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pinerest_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `short_name`, `meta_title`, `meta_description`, `order_no`, `parent_id`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`, `pinerest_url`) VALUES
(17, 'Alloy Image Box', 'alloy-image-box', NULL, '', 3, 0, 33, 0, 0, 3, '0000-00-00 00:00:00', '2017-03-21 20:28:12', NULL),
(18, 'Acrylic Photo', 'acrylic-photo', NULL, '', 4, 0, 32, 0, 0, 3, '0000-00-00 00:00:00', '2017-03-21 20:28:09', NULL),
(19, 'Wood Prints', 'wood-prints', NULL, '', 6, 0, 31, 0, 0, 3, '0000-00-00 00:00:00', '2017-03-21 19:38:04', NULL),
(21, 'Shaped ImageStylor Canvas', 'shaped-imagestylor-canvas', NULL, '', 2, 0, 30, 0, 8, 3, '0000-00-00 00:00:00', '2017-03-21 20:28:05', NULL),
(28, 'ImageStyle', 'imagestyle', NULL, '', 5, 0, 29, 0, 8, 3, '0000-00-00 00:00:00', '2017-03-21 20:28:14', NULL),
(29, 'Wall Collage', 'wall-collage', NULL, '', 10, 0, 28, 1, 8, 3, '0000-00-00 00:00:00', '2015-05-28 01:30:31', NULL),
(30, 'Canvas Prints', 'canvas-prints', NULL, '', 0, 18, 27, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-17 12:54:00', NULL),
(36, 'Tri-Photo HBL', 'triphoto-hbl', NULL, '', 8, 0, 26, 0, 8, 3, '0000-00-00 00:00:00', '2017-03-21 20:28:20', NULL),
(37, 'Smart Plaque', 'smart-plaque', NULL, '', 7, 0, 25, 0, 8, 3, '0000-00-00 00:00:00', '2017-03-21 20:28:18', NULL),
(42, 'Graphic Prints Collection', 'graphic-prints-collection', NULL, '', 0, 0, 24, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-17 12:53:50', NULL),
(43, 'Wall Splits', 'wall-splits', NULL, '', 9, 0, 23, 1, 8, 3, '0000-00-00 00:00:00', '2015-05-28 01:30:08', NULL),
(47, 'Paper Prints', 'paper-prints', '', '', 1, 17, 0, 0, 8, 3, '0000-00-00 00:00:00', '2015-05-30 14:26:08', NULL),
(49, 'Greeting Cards', 'greeting-cards', NULL, '', 1, 37, 21, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-17 12:53:38', NULL),
(51, 'Indoor Signage', 'indoor-signage', 'Decor your interior', 'Decor your interior', 1, 0, 20, 1, 8, 3, '0000-00-00 00:00:00', '2017-04-01 02:20:23', 'https://www.pinterest.com/anvydigital/projects-ideas-indoor-signage/'),
(52, 'Triangle Wall Collage', 'triangle-wall-collage', '', '', 0, 29, 64, 0, 8, 3, '0000-00-00 00:00:00', '2017-03-21 20:27:57', NULL),
(53, 'Tritych ImageStylor Canvas Clusters', 'tritych-imagestylor-canvas-clusters', NULL, '', 0, 0, 18, 1, 8, 3, '0000-00-00 00:00:00', '2015-05-28 01:29:55', NULL),
(56, '4 Square Imagestylor Canvas Cluster', '4-square-imagestylor-canvas-cluster', NULL, '', 1, 0, 17, 1, 8, 3, '0000-00-00 00:00:00', '2015-05-28 01:30:14', NULL),
(57, 'Modern Imagestylor Canvas Cluster', 'modern-imagestylor-canvas-cluster', '', '', 3, 0, 16, 1, 8, 3, '0000-00-00 00:00:00', '2015-06-16 17:44:49', NULL),
(58, 'Stair Climber ImageStylor Canvas Clusters', 'stair-climber-imagestylor-canvas-clusters', NULL, '', 4, 0, 15, 1, 8, 3, '0000-00-00 00:00:00', '2015-05-28 01:30:51', NULL),
(59, 'Pizza Images ', 'pizza-images', 'Images display followed Pizza shape', 'Pizza Shapes image on Wall', 1, 0, 0, 0, 0, 0, '2017-02-16 18:21:19', '2017-03-21 19:41:36', NULL),
(62, 'Home Décor', 'home-decor', '', '', 1, 0, 68, 1, 0, 0, '2017-03-27 20:55:44', '2017-03-30 18:20:17', NULL),
(63, 'Graduation Celebration', 'graduation-celebration', '', '', 1, 62, 71, 1, 0, 0, '2017-03-27 20:56:39', '2017-03-30 18:25:46', NULL),
(64, 'To Your Loved Ones', 'to-your-loved-ones', '', '', 1, 62, 72, 1, 0, 0, '2017-03-27 20:58:28', '2017-03-30 18:40:35', NULL),
(65, 'Wedding Memoir', 'wedding-memoir', '', '', 1, 62, 73, 1, 0, 0, '2017-03-27 20:58:47', '2017-03-30 18:30:06', NULL),
(66, 'Photography Collection', 'photography-collection', '', '', 1, 62, 74, 1, 0, 0, '2017-03-27 20:59:05', '2017-03-30 18:23:05', NULL),
(67, 'Hobby Walls', 'hobby-walls', '', '', 1, 62, 75, 1, 0, 0, '2017-03-27 20:59:15', '2017-03-30 18:49:32', NULL),
(68, 'Holiday Gifts', 'holiday-gifts', '', '', 1, 62, 76, 1, 0, 0, '2017-03-27 20:59:38', '2017-03-27 22:44:20', NULL),
(69, 'Commercial Décor', 'commercial-decor', '', '', 1, 0, 77, 1, 0, 0, '2017-03-27 20:59:53', '2017-03-30 18:29:14', NULL),
(70, 'Gallery & Art Shops', 'gallery-art-shops', '', '', 1, 69, 78, 1, 0, 0, '2017-03-27 21:02:54', '2017-03-27 21:05:01', NULL),
(71, 'Retail Promotions', 'retail-promotions', '', '', 1, 69, 79, 1, 0, 0, '2017-03-27 21:03:20', '2017-03-30 18:47:11', NULL),
(72, 'Trade Show Events', 'trade-show-events', '', '', 1, 69, 80, 1, 0, 0, '2017-03-27 21:03:32', '2017-03-30 18:35:48', NULL),
(73, 'Real Estate Show Homes', 'real-estate-show-homes', '', '', 1, 69, 81, 1, 0, 0, '2017-03-27 21:03:44', '2017-03-30 18:36:58', NULL),
(74, 'Office Walls', 'office-walls', '', '', 1, 69, 82, 1, 0, 0, '2017-03-27 21:03:57', '2017-03-30 18:42:23', NULL),
(75, 'Architecture Design', 'architecture-design', '', '', 1, 69, 83, 1, 0, 0, '2017-03-27 21:04:13', '2017-03-30 18:48:27', NULL),
(76, 'Schools & Colleges Open House', 'schools-colleges-open-house', '', '', 1, 69, 84, 1, 0, 0, '2017-03-27 21:04:29', '2017-03-30 18:38:56', NULL),
(77, 'Community Marketplaces', 'community-marketplaces', '', '', 1, 69, 85, 1, 0, 0, '2017-03-27 21:04:38', '2017-03-30 18:51:40', NULL),
(79, 'Popular Product', 'popular-product', '', '', 1, 0, 86, 0, 0, 0, '2017-03-30 17:55:47', '2017-03-30 18:52:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `province_code` varchar(20) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `publish` tinyint(1) DEFAULT '1',
  `orderno` int(11) DEFAULT NULL,
  `taxval` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `short_name`, `zipcode`, `province_code`, `country_id`, `publish`, `orderno`, `taxval`) VALUES
(2, 'Yukon', 'yukon', '30002', 'YT', 1, 1, 2, 5),
(3, 'Saskatchewan', 'saskatchewan', '30003', 'SK', 1, 1, 3, 5),
(4, 'Prince Edward Island', 'prince-edward-island', '30004', 'QC', 1, 1, 4, 14),
(5, 'Quebec', 'quebec', '30005', 'PE', 1, 1, 5, 14.975),
(6, 'Ontario', 'ontario', '30006', 'ON', 1, 1, 6, 13),
(7, 'Nunavut', 'nunavut', '30007', 'NU', 1, 1, 7, 5),
(8, 'Northwest Territories', 'northwest-territories', '30008', 'NT', 1, 1, 8, 5),
(9, 'Newfoundland-Labrador', 'newfoundland-labrador', '30009', 'NL', 1, 1, 9, 13),
(10, 'New Brunswick', 'new-brunswick', '30010', 'NB', 1, 1, 10, 13),
(11, 'Manitoba', 'manitoba', '3009', 'MB', 1, 1, 11, 12),
(12, 'British Columbia', 'british-columbia', '3010', 'BC', 1, 1, 12, 5),
(13, 'Alberta', 'alberta', '3011', 'AB', 1, 1, 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `configures`
--

CREATE TABLE `configures` (
  `id` int(10) UNSIGNED NOT NULL,
  `cname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ckey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cvalue` text COLLATE utf8_unicode_ci NOT NULL,
  `cdescription` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configures`
--

INSERT INTO `configures` (`id`, `cname`, `ckey`, `cvalue`, `cdescription`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Title Site', 'title_site', 'Display Graphic Solutions', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2017-03-16 22:17:14'),
(2, 'Meta Description', 'meta_description', 'www.anvydigital.com', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2015-04-16 14:27:04'),
(3, 'Main Logo', 'main_logo', 'assets/images/logos/artboard-1-copy.02-03-17.png', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2017-03-02 08:05:33'),
(4, 'VI Format', 'vi_format', '2', NULL, 1, 0, 3, '2015-04-16 14:27:04', '2015-04-20 13:24:48'),
(5, 'Instagram App ID', 'instagram_app_id', 'f6b31259ea3d4f8489da2e137cec4c34', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2015-04-16 14:27:04'),
(6, 'Skydrive App ID', 'skydrive_app_id', '0000000040149C21', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2017-02-20 06:05:23'),
(7, 'Google Drive App ID', 'googledrive_app_id', '1008320040839-ffmfr0uuheo5ojg0ima3qe5p8dpsdfou.apps.googleusercontent.com', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2017-02-20 05:20:49'),
(8, 'Dropbox App ID', 'dropbox_app_id', 'vyh3daz5bgngl8w', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2017-02-20 05:29:00'),
(9, 'Flickr App Secret', 'flickr_app_secret', '58db44a1386f0b4e', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2015-04-16 14:27:04'),
(10, 'Flickr App ID', 'flickr_app_id', '24fdd4da6151132517c7d4572c29d1f0', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2015-04-16 14:27:04'),
(11, 'Facebook APP ID', 'facebook_app_id', '265304853892131', NULL, 1, 0, 0, '2015-04-16 14:27:04', '2017-02-17 01:51:42'),
(12, 'Google Drive Email', 'google_drive_email', '590750925671-qkiep6bvosvpmeespk2sjls8177bsbe9@developer.gserviceaccount.com', NULL, 1, 0, 0, '2015-05-30 04:54:43', '2015-05-30 04:54:43'),
(13, 'Google Drive Key File', 'google_drive_key_file', '/home/other/domains/vi.anvyonline.com/app/files/google_drive_key_file.p12', NULL, 1, 0, 0, '2015-05-30 04:56:36', '2015-05-30 04:56:36'),
(14, 'System Margin', 'margin', '20', NULL, 1, 0, 0, '2015-06-02 03:00:03', '2015-06-02 03:06:47'),
(15, 'Background 1', 'background', 'http://vi.anvyonline.com/assets/images/background-1b6c4998efbc1045452e47dc9e15dd99.jpg', NULL, 1, 0, 0, '2015-06-15 08:13:04', '2015-06-15 08:13:04'),
(16, 'Background 2', 'background', 'http://vi.anvyonline.com/assets/images/background-f6884f3c1217a3d2c1aa33eff175681f.jpg', NULL, 1, 0, 0, '2015-06-15 08:13:39', '2015-06-15 08:13:39'),
(17, 'Google Analytic ID', 'google_analytic_id', 'UA-62240241-2', NULL, 1, 0, 0, '2015-06-23 05:06:02', '2015-06-23 05:06:02'),
(18, 'Signup Newsletter Emails', 'signup-newsletter-emails', 'newsletter@anvydigital.com', NULL, 1, 1, 1, '2016-07-04 07:58:54', '2016-07-05 19:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `contact_message` text COLLATE utf8_unicode_ci,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Default',
  `content` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imageables`
--

CREATE TABLE `imageables` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `option` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `imageables`
--

INSERT INTO `imageables` (`id`, `image_id`, `imageable_id`, `imageable_type`, `option`) VALUES
(1, 1, 50, 'Product', '{"main":1, "view":[]}'),
(2, 2, 69, 'Product', '{"main":1, "view":[]}'),
(3, 3, 70, 'Product', '{"main":1,"view":[]}'),
(4, 4, 71, 'Product', '{"main":1, "view":[]}'),
(5, 5, 72, 'Product', '{"main":1,"view":[]}'),
(144, 161, 253, 'Product', '{"main":0,"back":1,"view":[],"square":0,"2d":0}'),
(7, 7, 75, 'Product', '{"main":1, "view":[]}'),
(8, 8, 77, 'Product', '{"main":1, "view":[]}'),
(9, 9, 79, 'Product', '{"main":1, "view":[]}'),
(10, 10, 80, 'Product', '{"main":1, "view":[]}'),
(11, 11, 81, 'Product', '{"main":1,"back":0,"view":[]}'),
(12, 12, 90, 'Product', '{"main":1, "view":[]}'),
(13, 13, 95, 'Product', '{"main":1, "view":[]}'),
(14, 14, 96, 'Product', '{"main":1, "view":[]}'),
(15, 15, 187, 'Product', '{"main":1, "view":[]}'),
(16, 16, 188, 'Product', '{"main":1,"back":0,"view":[]}'),
(17, 17, 189, 'Product', '{"main":1,"view":[]}'),
(18, 18, 190, 'Product', '{"main":1,"back":0,"view":[]}'),
(19, 19, 191, 'Product', '{"main":1,"view":[]}'),
(20, 20, 193, 'Product', '{"main":1, "view":[]}'),
(21, 21, 195, 'Product', '{"main":1,"view":[]}'),
(22, 22, 196, 'Product', '{"main":1,"view":[]}'),
(23, 23, 197, 'Product', '{"main":1,"view":[]}'),
(24, 24, 198, 'Product', '{"main":1, "view":[]}'),
(25, 25, 199, 'Product', '{"main":1,"view":[]}'),
(26, 26, 201, 'Product', '{"main":1,"view":[]}'),
(27, 27, 202, 'Product', '{"main":1,"view":[]}'),
(28, 28, 203, 'Product', '{"main":1, "view":[]}'),
(29, 29, 204, 'Product', '{"main":1, "view":[]}'),
(30, 30, 205, 'Product', '{"main":1, "view":[]}'),
(31, 31, 206, 'Product', '{"main":1, "view":[]}'),
(32, 32, 207, 'Product', '{"main":1, "view":[]}'),
(33, 33, 209, 'Product', '{"main":1, "view":[]}'),
(34, 34, 210, 'Product', '{"main":1, "view":[]}'),
(35, 35, 211, 'Product', '{"main":1, "view":[]}'),
(36, 36, 212, 'Product', '{"main":1, "view":[]}'),
(37, 37, 213, 'Product', '{"main":1, "view":[]}'),
(38, 38, 214, 'Product', '{"main":1, "view":[]}'),
(39, 39, 215, 'Product', '{"main":1, "view":[]}'),
(40, 40, 216, 'Product', '{"main":1, "view":[]}'),
(41, 41, 217, 'Product', '{"main":1, "view":[]}'),
(42, 42, 218, 'Product', '{"main":1, "view":[]}'),
(43, 43, 219, 'Product', '{"main":1, "view":[]}'),
(44, 44, 220, 'Product', '{"main":1, "view":[]}'),
(45, 45, 221, 'Product', '{"main":1, "view":[]}'),
(46, 46, 222, 'Product', '{"main":1, "view":[]}'),
(47, 47, 223, 'Product', '{"main":1, "view":[]}'),
(48, 48, 224, 'Product', '{"main":1, "view":[]}'),
(49, 49, 225, 'Product', '{"main":1, "view":[]}'),
(50, 50, 226, 'Product', '{"main":1, "view":[]}'),
(51, 51, 227, 'Product', '{"main":1, "view":[]}'),
(52, 52, 228, 'Product', '{"main":1, "view":[]}'),
(53, 53, 229, 'Product', '{"main":1,"back":0,"view":[]}'),
(54, 54, 230, 'Product', '{"main":1, "view":[]}'),
(55, 55, 231, 'Product', '{"main":1, "view":[]}'),
(56, 56, 232, 'Product', '{"main":1, "view":[]}'),
(57, 57, 233, 'Product', '{"main":1, "view":[]}'),
(58, 58, 234, 'Product', '{"main":1, "view":[]}'),
(59, 59, 235, 'Product', '{"main":1, "view":[]}'),
(60, 60, 236, 'Product', '{"main":1, "view":[]}'),
(61, 61, 237, 'Product', '{"main":1, "view":[]}'),
(62, 62, 238, 'Product', '{"main":1, "view":[]}'),
(63, 63, 239, 'Product', '{"main":1, "view":[]}'),
(64, 64, 240, 'Product', '{"main":1, "view":[]}'),
(65, 65, 241, 'Product', '{"main":1, "view":[]}'),
(66, 66, 242, 'Product', '{"main":1, "view":[]}'),
(67, 67, 243, 'Product', '{"main":1, "view":[]}'),
(68, 68, 244, 'Product', '{"main":1, "view":[]}'),
(69, 69, 245, 'Product', '{"main":1,"view":[]}'),
(70, 70, 69, 'Product', '{"main":0, "view":[]}'),
(71, 71, 72, 'Product', '{"main":0,"view":[]}'),
(146, 164, 81, 'Product', '{"main":0,"back":1,"view":["24"]}'),
(73, 73, 189, 'Product', '{"main":0,"view":[]}'),
(74, 74, 191, 'Product', '{"main":0,"view":[]}'),
(75, 75, 195, 'Product', '{"main":0,"view":[]}'),
(76, 76, 196, 'Product', '{"main":0,"view":[]}'),
(77, 77, 198, 'Product', '{"main":0, "view":[]}'),
(78, 78, 198, 'Product', '{"main":0, "view":[]}'),
(79, 79, 3, 'Banner', NULL),
(80, 80, 4, 'Banner', NULL),
(81, 81, 5, 'Banner', NULL),
(82, 82, 6, 'Banner', NULL),
(83, 83, 7, 'Banner', NULL),
(84, 84, 8, 'Banner', NULL),
(85, 85, 9, 'Banner', NULL),
(86, 86, 10, 'Banner', NULL),
(87, 87, 12, 'Banner', NULL),
(88, 88, 29, 'ProductCategory', NULL),
(89, 89, 42, 'ProductCategory', NULL),
(90, 90, 43, 'ProductCategory', NULL),
(91, 91, 52, 'ProductCategory', NULL),
(104, 104, 57, 'ProductCategory', NULL),
(93, 93, 0, 'Other', 'tree,hour,green'),
(94, 94, 0, 'Other', 'china,chunk'),
(95, 95, 0, 'Other', 'grass,tree'),
(96, 96, 0, 'Other', 'flower,sky'),
(97, 97, 0, 'Other', 'green,spa,tree'),
(98, 98, 0, 'Other', NULL),
(99, 99, 0, 'Other', NULL),
(100, 100, 0, 'Other', NULL),
(101, 101, 0, 'Other', 'new car,car'),
(102, 102, 0, 'Other', 'new car'),
(103, 103, 0, 'Other', NULL),
(130, 146, 190, 'Product', '{"main":0,"back":0,"view":[]}'),
(110, 123, 188, 'Product', '{"main":0,"back":1,"view":[]}'),
(111, 124, 229, 'Product', '{"main":0,"back":1,"view":[]}'),
(143, 160, 253, 'Product', '{"main":0,"back":1,"view":["24"],"square":0,"2d":0}'),
(145, 166, 253, 'Product', '{"main":0,"back":1,"view":["25"],"square":0,"2d":0}'),
(142, 162, 253, 'Product', '{"main":1,"back":0,"view":[],"square":0,"2d":0}'),
(120, 133, 20, 'Banner', NULL),
(131, 147, 190, 'Product', '{"main":0,"back":0,"view":[]}'),
(132, 148, 21, 'Banner', NULL),
(133, 149, 22, 'Banner', NULL),
(136, 152, 252, 'Product', '{"main":1,"back":0,"view":[],"square":0}'),
(137, 154, 252, 'Product', '{"main":0,"back":0,"view":[],"square":0}'),
(138, 155, 252, 'Product', '{"main":0,"back":0,"view":[],"square":0}'),
(139, 156, 252, 'Product', '{"main":0,"back":1,"view":[],"square":0}'),
(147, 165, 81, 'Product', '{"main":0,"back":1,"view":["25"]}'),
(148, 167, 253, 'Product', '{"main":0,"back":0,"view":[],"square":0,"2d":0}'),
(163, 182, 65, 'ProductCategory', NULL),
(154, 173, 68, 'ProductCategory', NULL),
(155, 174, 253, 'Product', '{"main":0,"back":0,"view":[],"square":0,"2d":1}'),
(156, 175, 51, 'ProductCategory', NULL),
(159, 178, 62, 'ProductCategory', NULL),
(160, 179, 66, 'ProductCategory', NULL),
(161, 180, 63, 'ProductCategory', NULL),
(162, 181, 69, 'ProductCategory', NULL),
(164, 183, 72, 'ProductCategory', NULL),
(165, 184, 73, 'ProductCategory', NULL),
(166, 185, 76, 'ProductCategory', NULL),
(167, 186, 64, 'ProductCategory', NULL),
(168, 187, 74, 'ProductCategory', NULL),
(169, 188, 71, 'ProductCategory', NULL),
(170, 189, 75, 'ProductCategory', NULL),
(171, 190, 67, 'ProductCategory', NULL),
(172, 191, 77, 'ProductCategory', NULL),
(186, 205, 41, 'Banner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local',
  `file_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `store`, `file_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'assets/images/products/trapedzoid-webpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'assets/images/products/right-triangle-webpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'assets/images/products/equilateral-triangle-webpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'assets/images/products/diamond-webpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'assets/images/products/hexagon-standingpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'assets/images/products/comment-sizepng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'assets/images/products/10x15i.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'assets/images/products/7x7b.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'assets/images/products/para2.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'assets/images/products/16x20-main.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'assets/images/products/3x2-2.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'assets/images/products/carpediem.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'assets/images/products/somekind.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'assets/images/products/16x20-b.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'assets/images/products/whitealloy-boxpng_e7f7ae0b876507c28f18d4acaadd375e.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'assets/images/products/alloy-brushpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'assets/images/products/triangles-splitpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'assets/images/products/smart-plaque-11x14-webpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'assets/images/products/flower-canvas-splitpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'assets/images/products/rhombuspng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'assets/images/products/rhombus-right-trianglespng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'assets/images/products/3-sq-diamondpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'assets/images/products/diamond-centre-rhombus-flatpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'assets/images/products/hbl-side-viewpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'assets/images/products/trapezoid-trianglepng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'assets/images/products/single-pyramidpng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'assets/images/products/vertical-droppng.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'assets/images/products/2001jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'assets/images/products/2002jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'assets/images/products/2003jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'assets/images/products/2004jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'assets/images/products/2005jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'assets/images/products/2042jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'assets/images/products/2006jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'assets/images/products/2007jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'assets/images/products/2008jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'assets/images/products/2009jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'assets/images/products/2010jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'assets/images/products/2011jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'assets/images/products/2012jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'assets/images/products/2013jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'assets/images/products/2014jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'assets/images/products/2015jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'assets/images/products/2016jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'assets/images/products/2017jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'assets/images/products/2018jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'assets/images/products/2019jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'assets/images/products/2020jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'assets/images/products/2021jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'assets/images/products/2022jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'assets/images/products/2023jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'assets/images/products/2024jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'assets/images/products/2025jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'assets/images/products/2026jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'assets/images/products/2027jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'assets/images/products/2028jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'assets/images/products/2029jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'assets/images/products/2030jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'assets/images/products/2031jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'assets/images/products/2032jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'assets/images/products/2033jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'assets/images/products/2034jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'assets/images/products/2035jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'assets/images/products/2036jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'assets/images/products/2037jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'assets/images/products/2038jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'assets/images/products/2039jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'assets/images/products/2040jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'assets/images/products/2041jpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'assets/images/products/right-triangle-imagestylor-canvas.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'assets/images/products/hexagon-imagestylor-canvas.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'assets/images/products/canvas-mirrorjpg_e6267bbc4d2733f1f45509acc7ff84d7.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'assets/images/products/double-pyramid.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'assets/images/products/flower-split.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'assets/images/products/.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'assets/images/products/3-square-diamond.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'assets/images/products/.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'assets/images/products/triphoto-hbl.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'assets/images/banners/13802307191380228628acrylicphoto(1).jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'assets/images/banners/1401849733Canvas Wrap.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'assets/images/banners/1380132886Alloy-Box.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'assets/images/banners/1379697201Triptych I2.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'assets/images/banners/1379696370Modern II.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'assets/images/banners/1380042004imagestyle.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'assets/images/banners/differentjpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'assets/images/banners/triangles-dont-bind-yourself-webjpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'assets/images/banners/sp-home-bannerjpg_c62235cdf2e396b0fcffa49abf5f0f65.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'assets/images/product_categories/clusters_parquet_400px.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'assets/images/product_categories/graphic prints3.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'assets/images/product_categories/sample split1.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'assets/images/product_categories/imagestylor-trianglejpg.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'assets/images/product_categories/.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'assets/images/libs/desktop-backgrounds-nature-42.27-05-15-1432720193.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'assets/images/libs/chinese-nature-backgrounds-copy.27-05-15-1432720195.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'assets/images/libs/field-meadow-flowers-blooming-summer-sun-nature-background-wallpaper.27-05-15-1432720202.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'assets/images/libs/spring-desktop-background-03111888-25.27-05-15-1432720203.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'assets/images/libs/6952312-background-hd-nature.27-05-15-1432720205.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'assets/images/libs/testting.27-05-15-1432720460.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'assets/images/libs/penguins.27-05-15-1432742909.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'assets/images/libs/tulips.27-05-15-1432746419.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'assets/images/libs/mazda-kaan-futuristic-electric-car-e1-racer-2025.28-05-15-1432865102.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'assets/images/libs/maserati-granturismo-s-back-maserati-wallpaper-car-wallpaper-1920x1080.28-05-15-1432865103.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '', 'google-drive', '0Byj0Jps1sJfHcGVMUklNMW00bzA', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'assets/images/product_categories/2rect-2sq.16-06-15.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'assets/images/products/market-mall-image-tex220-08-15.30-01-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'assets/images/products/2041jpg.30-01-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'assets/images/products/ralph-klein-park-canvas223-09-15.30-01-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'assets/images/products/ralph-klein-park-canvas223-09-15.30-01-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'assets/images/products/gala.15-02-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'assets/images/products/gala.15-02-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'assets/images/products/gala.15-02-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'assets/images/logos/artboard-1-copy.02-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'assets/images/products/images.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'assets/images/products/natural-image-download-in-high-quality.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'assets/images/products/natural-image-download-in-high-quality.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'assets/images/products/images.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'assets/images/products/natural-image-download-in-high-quality.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'assets/images/products/images.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'assets/images/products/images.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'assets/images/products/natural-image-download-in-high-quality.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'assets/images/products/natural-image-download-in-high-quality.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'assets/images/products/images.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'assets/images/products/natural-image-download-in-high-quality.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'assets/images/products/images.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'assets/images/products/pic1.16-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'assets/images/banners/artboard-1.17-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'assets/images/products/galabox.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'assets/images/products/galabox-02.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'assets/images/products/galabox-vertical-03.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'assets/images/products/galabox-vertical-03.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'assets/images/products/galabox-02.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'assets/images/products/galabox-vertical-03.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'assets/images/products/galabox-vertical-03.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'assets/images/products/galabox-vertical-03.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'assets/images/products/galabox-vuong-04.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'assets/images/products/galabox-horizontal-05.17-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'assets/images/products/galabox.20-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'assets/images/products/keyhole-galabox.20-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'assets/images/products/images.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'assets/images/products/natural-image-download-in-high-quality.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'assets/images/banners/banner-promotion-03.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'assets/images/banners/g3.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'assets/images/products/asset-2.21-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'assets/images/products/asset-1.21-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'assets/images/products/760.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'assets/images/products/images.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'assets/images/products/natural-image-download-in-high-quality.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'assets/images/products/images.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'assets/images/products/combo1.21-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'assets/images/products/galga-box.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'assets/images/products/galga-box-back.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'assets/images/products/asset-3.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'assets/images/products/asset-2.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'assets/images/products/asset-1.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'assets/images/products/galga-box-1.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'assets/images/products/galga-box-back-1.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'assets/images/products/asset-2.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'assets/images/products/asset-1.22-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'assets/images/products/asset-3.24-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'assets/images/products/galga-box-back-1.24-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'assets/images/product_categories/category-wedding.27-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'assets/images/product_categories/category-wedding.27-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'assets/images/product_categories/category-wedding2.27-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'assets/images/product_categories/category-holidaygifts.27-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'assets/images/product_categories/category-holidaygifts.27-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'assets/images/product_categories/category-holidaygifts.27-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'assets/images/products/bg-preview.30-03-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'assets/images/product_categories/indoor.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'assets/images/product_categories/homedecor.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'assets/images/product_categories/home2.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'assets/images/product_categories/homedecor.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'assets/images/product_categories/photo.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'assets/images/product_categories/graduation.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'assets/images/product_categories/commer.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'assets/images/product_categories/wedding.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'assets/images/product_categories/trade.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'assets/images/product_categories/house.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'assets/images/product_categories/school.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'assets/images/product_categories/loveone.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'assets/images/product_categories/office.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'assets/images/product_categories/retail.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'assets/images/product_categories/achi.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'assets/images/product_categories/hobby.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'assets/images/product_categories/com.30-03-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'assets/images/banners/artboard-1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'assets/images/banners/artboard-1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'assets/images/banners/big-banners-slideshow1.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'assets/images/banners/artboard-1w.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'assets/images/banners/artboard-1w.04-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'assets/images/banners/artboard-1w.05-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'assets/images/banners/artboard-1w.05-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'assets/images/banners/artboard-1w.05-04-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE `layout` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(5) NOT NULL,
  `modified_by` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`id`, `name`, `active`, `created_by`, `modified_by`) VALUES
(1, 'layout 1', 1, 10, 10),
(2, 'layout 2', 1, 10, 10),
(3, 'layout 3', 1, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `wall_size_h` float(8,2) NOT NULL DEFAULT '0.00',
  `wall_size_w` float(8,2) NOT NULL DEFAULT '0.00',
  `current_zoom` float(8,2) NOT NULL DEFAULT '1.00',
  `svg_file` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `name`, `wall_size_h`, `wall_size_w`, `current_zoom`, `svg_file`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '2042', 59.00, 86.00, 1.00, 'assets/svg/71e09b16e21f7b6919bbfc43f6a5b2f0-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:31:38'),
(3, '2001', 16.00, 62.00, 1.00, 'assets/svg/d0fb963ff976f9c37fc81fe03c21ea7b-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:31:24'),
(4, '2002', 16.00, 62.00, 1.00, 'assets/svg/4ba29b9f9e5732ed33761840f4ba6c53-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:30:36'),
(5, '2003', 20.00, 76.00, 1.00, 'assets/svg/a591024321c5e2bdbd23ed35f0574dde-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:30:52'),
(6, '2004', 20.00, 76.00, 1.00, 'assets/svg/b8b4b727d6f5d1b61fff7be687f7970f-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:30:18'),
(7, 'test', 24.00, 100.00, 1.00, 'assets/svg/098f6bcd4621d373cade4e832627b4f6-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:29:17'),
(8, '2005', 20.00, 76.00, 1.00, 'assets/svg/d47268e9db2e9aa3827bba3afb7ff94a-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:29:04'),
(9, '2006', 20.00, 76.00, 1.00, 'assets/svg/ea5a486c712a91e48443cd802642223d-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:28:50'),
(10, '2007', 35.00, 43.00, 1.00, 'assets/svg/a00e5eb0973d24649a4a920fc53d9564-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:28:34'),
(11, '2008', 35.00, 43.00, 1.00, 'assets/svg/ef8446f35513a8d6aa2308357a268a7e-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:28:19'),
(12, '2009', 24.00, 54.00, 1.00, 'assets/svg/f1981e4bd8a0d6d8462016d2fc6276b3-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:28:08'),
(13, '2010', 43.00, 53.00, 1.00, 'assets/svg/d7a84628c025d30f7b2c52c958767e76-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:26:24'),
(14, '2011', 43.00, 53.00, 1.00, 'assets/svg/c8758b517083196f05ac29810b924aca-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:27:34'),
(15, '2012', 30.00, 66.00, 1.00, 'assets/svg/253614bbac999b38b5b60cae531c4969-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:26:38'),
(16, '2013', 35.00, 35.00, 1.00, 'assets/svg/8038da89e49ac5eabb489cfc6cea9fc1-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:27:47'),
(17, '2014', 43.00, 43.00, 1.00, 'assets/svg/cee8d6b7ce52554fd70354e37bbf44a2-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:27:24'),
(18, '2015', 16.00, 73.00, 1.00, 'assets/svg/65d2ea03425887a717c435081cfc5dbb-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:27:12'),
(19, '2016', 20.00, 89.00, 1.00, 'assets/svg/95192c98732387165bf8e396c0f2dad2-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:27:00'),
(20, '2017', 73.00, 16.00, 1.00, 'assets/svg/8d8818c8e140c64c743113f563cf750f-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:26:47'),
(21, '2018', 89.00, 20.00, 1.00, 'assets/svg/84ddfb34126fc3a48ee38d7044e87276-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:26:12'),
(22, '2019', 35.00, 54.00, 1.00, 'assets/svg/ea6b2efbdd4255a9f1b3bbc6399b58f4-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:58'),
(23, '2020', 43.00, 66.00, 1.00, 'assets/svg/7b7a53e239400a13bd6be6c91c4f6c4e-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:48'),
(24, '2021', 54.00, 35.00, 1.00, 'assets/svg/05a5cf06982ba7892ed2a6d38fe832d6-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:37'),
(25, '2022', 66.00, 43.00, 1.00, 'assets/svg/3a824154b16ed7dab899bf000b80eeee-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:27'),
(26, '2023', 35.00, 62.00, 1.00, 'assets/svg/5531a5834816222280f20d1ef9e95f69-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:18'),
(27, '2024', 35.00, 62.00, 1.00, 'assets/svg/07811dc6c422334ce36a09ff5cd6fe71-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:07'),
(28, '2025', 35.00, 62.00, 1.00, 'assets/svg/312351bff07989769097660a56395065-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:25:00'),
(29, '2026', 35.00, 62.00, 1.00, 'assets/svg/c92a10324374fac681719d63979d00fe-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:24:52'),
(30, '2027', 35.00, 54.00, 1.00, 'assets/svg/9f62b8625f914a002496335037e9ad97-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:24:44'),
(31, '2028', 35.00, 70.00, 1.00, 'assets/svg/d860edd1dd83b36f02ce52bde626c653-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:24:37'),
(32, '2029', 35.00, 70.00, 1.00, 'assets/svg/093b60fd0557804c8ba0cbf1453da22f-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:24:28'),
(33, '2030', 43.00, 62.00, 1.00, 'assets/svg/2d579dc29360d8bbfbb4aa541de5afa9-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:22:52'),
(34, '2031', 43.00, 76.00, 1.00, 'assets/svg/88ef51f0bf911e452e8dbb1d807a81ab-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:23:48'),
(35, '2032', 43.00, 76.00, 1.00, 'assets/svg/5352696a9ca3397beb79f116f3a33991-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:24:04'),
(36, '2033', 43.00, 76.00, 1.00, 'assets/svg/a5a61717dddc3501cfdf7a4e22d7dbaa-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:23:29'),
(37, '2034', 43.00, 86.00, 1.00, 'assets/svg/d198bd736a97e7cecfdf8f4f2027ef80-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:23:03'),
(38, '2035', 53.00, 76.00, 1.00, 'assets/svg/2b0f658cbffd284984fb11d90254081f-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:24:15'),
(39, '2036', 43.00, 76.00, 1.00, 'assets/svg/f48c04ffab49ff0e5d1176244fdfb65c-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:23:17'),
(40, '2037', 43.00, 66.00, 1.00, 'assets/svg/23d2e1578544b172cca332ff74bddf5f-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:22:39'),
(41, '2038', 43.00, 86.00, 1.00, 'assets/svg/2557911c1bf75c2b643afb4ecbfc8ec2-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:22:15'),
(42, '2039', 49.00, 70.00, 1.00, 'assets/svg/a48564053b3c7b54800246348c7fa4a0-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:21:58'),
(43, '2040', 49.00, 70.00, 1.00, 'assets/svg/4c144c47ecba6f8318128703ca9e2601-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:15:22'),
(44, '2041', 59.00, 86.00, 1.00, 'assets/svg/89885ff2c83a10305ee08bd507c1049c-layout.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-06-24 03:22:30'),
(47, 'SINGLE PYRAMID', 60.00, 60.00, 1.00, 'assets/svg/aff4d874136af599586f32baed3a8b93-layout.svg', 1, 0, 0, '2015-06-17 10:03:30', '2015-06-18 07:42:46'),
(48, '3 Square Diamond', 80.00, 80.00, 1.00, 'assets/svg/9511f8ec7f08bad4fa0bd75589f35bc9-layout.svg', 1, 0, 0, '2015-06-17 10:36:04', '2015-06-18 07:50:46'),
(49, 'Rhombus and Right Triangle', 37.50, 68.00, 1.00, 'assets/svg/0a5e4db65746826c3beaeb4025d08c72-layout.svg', 1, 0, 0, '2015-06-17 10:36:31', '2015-06-25 08:35:57'),
(51, 'TRAPEDZOID AND TRIANGLES.', 30.00, 50.00, 1.00, 'assets/svg/e67c672987ff91fc261bb038b21bbe00-layout.svg', 1, 0, 0, '2015-06-17 12:42:42', '2015-06-18 03:40:59'),
(52, 'SQUARE CENTRE RHOMBUS SPREAD', 55.00, 200.00, 1.00, 'assets/svg/c9cba806afd9e5f814fc0cbff780d716-layout.svg', 1, 0, 0, '2015-06-18 03:15:50', '2015-06-19 02:40:27'),
(53, 'Vertical Drop', 50.00, 20.00, 1.00, 'assets/svg/234c3d2e550f53fcbc1567f429df90a1-layout.svg', 1, 0, 0, '2015-06-18 03:31:26', '2015-06-18 03:36:17'),
(54, 'Flower Split', 80.00, 80.00, 1.00, 'assets/svg/f4e4eb3c5ecdab2c583a30a033ad0dcf-layout.svg', 1, 0, 0, '2015-06-18 07:36:49', '2015-06-18 07:39:42'),
(55, 'DOUBLE PYRAMID', 80.00, 80.00, 1.00, 'assets/svg/6f542506ee2d6609321840c69c045011-layout.svg', 1, 0, 0, '2015-06-18 08:24:51', '2015-06-18 08:24:51'),
(58, 'test1', 10.00, 10.00, 1.00, 'assets/svg/5a105e8b9d40e1329780d62ea2265d8a-layout.svg', 1, 0, 0, '2017-02-15 18:19:18', '2017-02-15 19:24:47'),
(59, 'test2', 10.00, 10.00, 1.00, 'assets/svg/ad0234829205b9033196ba818f7a872b-layout.svg', 1, 0, 0, '2017-02-15 19:27:18', '2017-02-16 17:42:11'),
(60, 'Pizza Bundle - TEst', 10.00, 10.00, 1.00, 'assets/svg/7e631a257cd2715e305e0ea6310392ae-layout.svg', 1, 0, 0, '2017-02-16 18:28:44', '2017-02-21 01:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `layout_details`
--

CREATE TABLE `layout_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `width` float(8,2) NOT NULL DEFAULT '0.00',
  `height` float(8,2) NOT NULL DEFAULT '0.00',
  `coor_x` float(8,2) NOT NULL DEFAULT '0.00',
  `coor_y` float(8,2) NOT NULL DEFAULT '0.00',
  `d` text COLLATE utf8_unicode_ci,
  `empty` tinyint(1) DEFAULT '0',
  `layout_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout_details`
--

INSERT INTO `layout_details` (`id`, `width`, `height`, `coor_x`, `coor_y`, `d`, `empty`, `layout_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 30.00, 20.00, 0.00, 37.14, 'M0 484.2372741699219L254.23728942871094 484.2372741699219L254.23728942871094 314.7457580566406L0 314.7457580566406Z ', 0, 2, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:33'),
(2, 24.00, 16.00, 0.00, 0.00, 'M0 258.06451416015625L387.0967712402344 258.06451416015625L387.0967712402344 0L0 0Z ', 0, 4, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:47'),
(3, 24.00, 16.00, 38.00, 0.00, 'M612.9031982421875 258.06451416015625L1000 258.06451416015625L1000 0L612.9031982421875 0Z ', 0, 3, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:42'),
(4, 20.00, 20.00, 9.99, 13.97, 'M84.66101837158203 287.88134765625L254.1525421142578 287.88134765625L254.1525421142578 118.38983154296875L84.66101837158203 118.38983154296875Z ', 0, 2, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:33'),
(5, 30.00, 20.00, 56.00, 1.15, 'M474.5762634277344 179.23728942871094L728.8135375976562 179.23728942871094L728.8135375976562 9.745762825012207L474.5762634277344 9.745762825012207Z ', 0, 2, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:33'),
(6, 16.00, 16.00, 0.00, 0.00, 'M0 258.06451416015625L258.06451416015625 258.06451416015625L258.06451416015625 0L0 0Z ', 0, 3, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:42'),
(7, 16.00, 16.00, 19.00, 0.00, 'M306.45159912109375 258.06451416015625L564.51611328125 258.06451416015625L564.51611328125 0L306.45159912109375 0Z ', 0, 3, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:42'),
(8, 16.00, 16.00, 26.78, 0.00, 'M431.93548583984375 258.06451416015625L690 258.06451416015625L690 0L431.93548583984375 0Z ', 0, 4, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:47'),
(9, 16.00, 16.00, 46.00, 0.00, 'M741.9354858398438 258.06451416015625L1000 258.06451416015625L1000 0L741.9354858398438 0Z ', 0, 4, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:47'),
(10, 20.00, 20.00, 0.00, 0.00, 'M0 263.15789794921875L263.15789794921875 263.15789794921875L263.15789794921875 0L0 0Z ', 0, 5, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:53'),
(11, 30.00, 20.00, 22.93, 0.00, 'M301.7105407714844 263.15789794921875L696.4473876953125 263.15789794921875L696.4473876953125 0L301.7105407714844 0Z ', 0, 5, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:53'),
(12, 20.00, 20.00, 56.00, 0.00, 'M736.8421020507812 263.15789794921875L1000 263.15789794921875L1000 0L736.8421020507812 0Z ', 0, 5, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:53'),
(13, 20.00, 20.00, 0.00, 0.00, 'M0 263.15789794921875L263.15789794921875 263.15789794921875L263.15789794921875 0L0 0Z ', 0, 6, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:59'),
(14, 20.00, 20.00, 23.18, 0.00, 'M305 263.15789794921875L568.1578979492188 263.15789794921875L568.1578979492188 0L305 0Z ', 0, 6, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:59'),
(15, 30.00, 20.00, 46.00, 0.00, 'M605.26318359375 263.15789794921875L1000 263.15789794921875L1000 0L605.26318359375 0Z ', 0, 6, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:59'),
(16, 20.00, 20.00, 56.00, 24.15, 'M474.5762634277344 374.1525573730469L644.0678100585938 374.1525573730469L644.0678100585938 204.6610107421875L474.5762634277344 204.6610107421875Z ', 0, 2, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:33'),
(17, 20.00, 30.00, 32.92, 13.97, 'M278.9830627441406 372.6271057128906L448.4745788574219 372.6271057128906L448.4745788574219 118.38983154296875L278.9830627441406 118.38983154296875Z ', 0, 2, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:33'),
(21, 20.00, 10.00, 2.00, 2.00, 'M20 120L220 120L220 20L20 20Z ', 0, 7, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:07'),
(22, 30.00, 20.00, 0.00, 0.00, 'M0 263.15789794921875L394.7368469238281 263.15789794921875L394.7368469238281 0L0 0Z ', 0, 8, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:15'),
(23, 20.00, 20.00, 33.00, 0.00, 'M434.2105407714844 263.15789794921875L697.368408203125 263.15789794921875L697.368408203125 0L434.2105407714844 0Z ', 0, 8, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:15'),
(24, 20.00, 20.00, 56.00, 0.00, 'M736.8421020507812 263.15789794921875L1000 263.15789794921875L1000 0L736.8421020507812 0Z ', 0, 8, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:15'),
(25, 20.00, 20.00, 0.00, 0.00, 'M0 263.15789794921875L263.15789794921875 263.15789794921875L263.15789794921875 0L0 0Z ', 0, 9, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:25'),
(26, 30.00, 20.00, 23.00, 0.00, 'M302.631591796875 263.15789794921875L697.368408203125 263.15789794921875L697.368408203125 0L302.631591796875 0Z ', 0, 9, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:25'),
(27, 20.00, 20.00, 56.00, 0.00, 'M736.8421020507812 263.15789794921875L1000 263.15789794921875L1000 0L736.8421020507812 0Z ', 0, 9, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:25'),
(28, 16.00, 16.00, 0.00, 0.00, 'M0 228.57142639160156L228.57142639160156 228.57142639160156L228.57142639160156 0L0 0Z ', 0, 10, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:32'),
(29, 24.00, 16.00, 19.00, 9.50, 'M271.4285583496094 364.28570556640625L614.2857055664062 364.28570556640625L614.2857055664062 135.7142791748047L271.4285583496094 135.7142791748047Z ', 0, 10, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:33'),
(30, 16.00, 16.00, 0.00, 19.00, 'M0 500L228.57142639160156 500L228.57142639160156 271.4285583496094L0 271.4285583496094Z ', 0, 10, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:33'),
(31, 24.00, 16.00, 0.00, 9.50, 'M0 364.28570556640625L342.8571472167969 364.28570556640625L342.8571472167969 135.7142791748047L0 135.7142791748047Z ', 0, 11, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:39'),
(32, 16.00, 16.00, 27.00, 0.00, 'M385.71429443359375 228.57142639160156L614.2857055664062 228.57142639160156L614.2857055664062 0L385.71429443359375 0Z ', 0, 11, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:39'),
(33, 16.00, 16.00, 27.00, 19.00, 'M385.71429443359375 500L614.2857055664062 500L614.2857055664062 271.4285583496094L385.71429443359375 271.4285583496094Z ', 0, 11, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:39'),
(34, 16.00, 16.00, 0.00, 4.00, 'M0 370.370361328125L296.2962951660156 370.370361328125L296.2962951660156 74.0740737915039L0 74.0740737915039Z ', 0, 12, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:44'),
(35, 16.00, 24.00, 19.00, 0.00, 'M351.8518371582031 444.4444580078125L648.1481323242188 444.4444580078125L648.1481323242188 0L351.8518371582031 0Z ', 0, 12, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:44'),
(36, 16.00, 16.00, 38.00, 4.00, 'M703.7036743164062 370.370361328125L1000 370.370361328125L1000 74.0740737915039L703.7036743164062 74.0740737915039Z ', 0, 12, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:44'),
(37, 30.00, 20.00, 0.00, 11.50, 'M0 366.2790832519531L348.83721923828125 366.2790832519531L348.83721923828125 133.72093200683594L0 133.72093200683594Z ', 0, 13, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:52'),
(38, 20.00, 20.00, 33.00, 0.00, 'M383.7209167480469 232.55813598632812L616.279052734375 232.55813598632812L616.279052734375 0L383.7209167480469 0Z ', 0, 13, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:52'),
(39, 20.00, 20.00, 33.00, 23.00, 'M383.7209167480469 500L616.279052734375 500L616.279052734375 267.4418640136719L383.7209167480469 267.4418640136719Z ', 0, 13, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:03:52'),
(40, 20.00, 20.00, 0.00, 0.00, 'M0 232.55813598632812L232.55813598632812 232.55813598632812L232.55813598632812 0L0 0Z ', 0, 14, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:02'),
(41, 20.00, 20.00, 0.00, 23.00, 'M0 500L232.55813598632812 500L232.55813598632812 267.4418640136719L0 267.4418640136719Z ', 0, 14, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:02'),
(42, 30.00, 20.00, 23.00, 11.50, 'M267.4418640136719 366.2790832519531L616.279052734375 366.2790832519531L616.279052734375 133.72093200683594L267.4418640136719 133.72093200683594Z ', 0, 14, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:02'),
(43, 20.00, 20.00, 0.00, 5.00, 'M0 378.7878723144531L303.0303039550781 378.7878723144531L303.0303039550781 75.75757598876953L0 75.75757598876953Z ', 0, 15, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:11'),
(44, 20.00, 30.00, 23.00, 0.00, 'M348.48486328125 454.5454406738281L651.51513671875 454.5454406738281L651.51513671875 0L348.48486328125 0Z ', 0, 15, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:11'),
(45, 20.00, 20.00, 46.00, 5.00, 'M696.9697265625 378.7878723144531L1000 378.7878723144531L1000 75.75757598876953L696.9697265625 75.75757598876953Z ', 0, 15, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:11'),
(46, 16.00, 16.00, 0.00, 0.00, 'M0 228.57142639160156L228.57142639160156 228.57142639160156L228.57142639160156 0L0 0Z ', 0, 16, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:16'),
(47, 16.00, 16.00, 0.00, 19.00, 'M0 500L228.57142639160156 500L228.57142639160156 271.4285583496094L0 271.4285583496094Z ', 0, 16, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:16'),
(48, 16.00, 16.00, 19.00, 0.00, 'M271.4285583496094 228.57142639160156L500 228.57142639160156L500 0L271.4285583496094 0Z ', 0, 16, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:16'),
(49, 16.00, 16.00, 19.00, 19.00, 'M271.4285583496094 500L500 500L500 271.4285583496094L271.4285583496094 271.4285583496094Z ', 0, 16, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:16'),
(50, 20.00, 20.00, 0.00, 0.00, 'M0 232.55813598632812L232.55813598632812 232.55813598632812L232.55813598632812 0L0 0Z ', 0, 17, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:23'),
(51, 20.00, 20.00, 0.00, 23.00, 'M0 500L232.55813598632812 500L232.55813598632812 267.4418640136719L0 267.4418640136719Z ', 0, 17, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:23'),
(52, 20.00, 20.00, 23.00, 0.00, 'M267.4418640136719 232.55813598632812L500 232.55813598632812L500 0L267.4418640136719 0Z ', 0, 17, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:23'),
(53, 20.00, 20.00, 23.00, 23.00, 'M267.4418640136719 500L500 500L500 267.4418640136719L267.4418640136719 267.4418640136719Z ', 0, 17, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:23'),
(54, 16.00, 16.00, 0.00, 0.00, 'M0 219.17808532714844L219.17808532714844 219.17808532714844L219.17808532714844 0L0 0Z ', 0, 18, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:31'),
(55, 16.00, 16.00, 19.00, 0.00, 'M260.27398681640625 219.17808532714844L479.4520568847656 219.17808532714844L479.4520568847656 0L260.27398681640625 0Z ', 0, 18, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:31'),
(56, 16.00, 16.00, 38.00, 0.00, 'M520.5479736328125 219.17808532714844L739.7260131835938 219.17808532714844L739.7260131835938 0L520.5479736328125 0Z ', 0, 18, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:31'),
(57, 16.00, 16.00, 57.00, 0.00, 'M780.8218994140625 219.17808532714844L1000 219.17808532714844L1000 0L780.8218994140625 0Z ', 0, 18, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:31'),
(58, 20.00, 20.00, 0.00, 0.00, 'M0 224.71910095214844L224.71910095214844 224.71910095214844L224.71910095214844 0L0 0Z ', 0, 19, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:38'),
(59, 20.00, 20.00, 23.00, 0.00, 'M258.4269714355469 224.71910095214844L483.14605712890625 224.71910095214844L483.14605712890625 0L258.4269714355469 0Z ', 0, 19, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:38'),
(60, 20.00, 20.00, 46.00, 0.00, 'M516.8539428710938 224.71910095214844L741.5730590820312 224.71910095214844L741.5730590820312 0L516.8539428710938 0Z ', 0, 19, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:38'),
(61, 20.00, 20.00, 69.00, 0.00, 'M775.2808837890625 224.71910095214844L1000 224.71910095214844L1000 0L775.2808837890625 0Z ', 0, 19, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:38'),
(62, 16.00, 16.00, 0.00, 0.00, 'M0 109.58904266357422L109.58904266357422 109.58904266357422L109.58904266357422 0L0 0Z ', 0, 20, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:42'),
(63, 16.00, 16.00, 0.00, 19.00, 'M0 239.7260284423828L109.58904266357422 239.7260284423828L109.58904266357422 130.13699340820312L0 130.13699340820312Z ', 0, 20, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:42'),
(64, 16.00, 16.00, 0.00, 38.00, 'M0 369.8630065917969L109.58904266357422 369.8630065917969L109.58904266357422 260.27398681640625L0 260.27398681640625Z ', 0, 20, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:42'),
(65, 16.00, 16.00, 0.00, 57.00, 'M0 500L109.58904266357422 500L109.58904266357422 390.41094970703125L0 390.41094970703125Z ', 0, 20, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:42'),
(66, 20.00, 20.00, 0.00, 0.00, 'M0 112.35955047607422L112.35955047607422 112.35955047607422L112.35955047607422 0L0 0Z ', 0, 21, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:59'),
(67, 20.00, 20.00, 0.00, 23.00, 'M0 241.57302856445312L112.35955047607422 241.57302856445312L112.35955047607422 129.21348571777344L0 129.21348571777344Z ', 0, 21, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:59'),
(68, 20.00, 20.00, 0.00, 46.00, 'M0 370.7865295410156L112.35955047607422 370.7865295410156L112.35955047607422 258.4269714355469L0 258.4269714355469Z ', 0, 21, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:59'),
(69, 20.00, 20.00, 0.00, 69.00, 'M0 500L112.35955047607422 500L112.35955047607422 387.64044189453125L0 387.64044189453125Z ', 0, 21, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:04:59'),
(70, 16.00, 16.00, 0.00, 9.50, 'M0 364.28570556640625L228.57142639160156 364.28570556640625L228.57142639160156 135.7142791748047L0 135.7142791748047Z ', 0, 22, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:14'),
(71, 16.00, 16.00, 19.00, 19.00, 'M271.4285583496094 500L500 500L500 271.4285583496094L271.4285583496094 271.4285583496094Z ', 0, 22, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:14'),
(72, 16.00, 16.00, 19.00, 0.00, 'M271.4285583496094 228.57142639160156L500 228.57142639160156L500 0L271.4285583496094 0Z ', 0, 22, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:14'),
(73, 16.00, 16.00, 38.00, 9.50, 'M542.8571166992188 364.28570556640625L771.4285888671875 364.28570556640625L771.4285888671875 135.7142791748047L542.8571166992188 135.7142791748047Z ', 0, 22, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:14'),
(74, 20.00, 20.00, 0.00, 11.50, 'M0 366.2790832519531L232.55813598632812 366.2790832519531L232.55813598632812 133.72093200683594L0 133.72093200683594Z ', 0, 23, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:25'),
(75, 20.00, 20.00, 23.00, 0.00, 'M267.4418640136719 232.55813598632812L500 232.55813598632812L500 0L267.4418640136719 0Z ', 0, 23, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:25'),
(76, 20.00, 20.00, 23.00, 23.00, 'M267.4418640136719 500L500 500L500 267.4418640136719L267.4418640136719 267.4418640136719Z ', 0, 23, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:25'),
(77, 20.00, 20.00, 46.00, 11.50, 'M534.8837280273438 366.2790832519531L767.4418334960938 366.2790832519531L767.4418334960938 133.72093200683594L534.8837280273438 133.72093200683594Z ', 0, 23, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:25'),
(78, 16.00, 16.00, 0.00, 19.00, 'M0 324.0740661621094L148.1481475830078 324.0740661621094L148.1481475830078 175.92591857910156L0 175.92591857910156Z ', 0, 24, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:31'),
(79, 16.00, 16.00, 9.50, 0.00, 'M87.96295928955078 148.1481475830078L236.11111450195312 148.1481475830078L236.11111450195312 0L87.96295928955078 0Z ', 0, 24, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:31'),
(80, 16.00, 16.00, 19.00, 19.00, 'M175.92591857910156 324.0740661621094L324.0740661621094 324.0740661621094L324.0740661621094 175.92591857910156L175.92591857910156 175.92591857910156Z ', 0, 24, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:31'),
(81, 16.00, 16.00, 9.50, 38.00, 'M87.96295928955078 500L236.11111450195312 500L236.11111450195312 351.8518371582031L87.96295928955078 351.8518371582031Z ', 0, 24, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:31'),
(82, 20.00, 20.00, 11.50, 0.00, 'M87.1212158203125 151.51515197753906L238.63636779785156 151.51515197753906L238.63636779785156 0L87.1212158203125 0Z ', 0, 25, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:42'),
(83, 20.00, 20.00, 0.00, 23.00, 'M0 325.757568359375L151.51515197753906 325.757568359375L151.51515197753906 174.242431640625L0 174.242431640625Z ', 0, 25, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:42'),
(84, 20.00, 20.00, 23.00, 23.00, 'M174.242431640625 325.757568359375L325.757568359375 325.757568359375L325.757568359375 174.242431640625L174.242431640625 174.242431640625Z ', 0, 25, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:42'),
(85, 20.00, 20.00, 11.50, 46.00, 'M87.1212158203125 500L238.63636779785156 500L238.63636779785156 348.48486328125L87.1212158203125 348.48486328125Z ', 0, 25, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:42'),
(86, 16.00, 24.00, 0.00, 11.00, 'M0 500L228.57142639160156 500L228.57142639160156 157.14285278320312L0 157.14285278320312Z ', 0, 26, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:46'),
(87, 16.00, 16.00, 19.00, 0.00, 'M271.4285583496094 228.57142639160156L500 228.57142639160156L500 0L271.4285583496094 0Z ', 0, 26, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:46'),
(88, 24.00, 16.00, 19.00, 19.00, 'M271.4285583496094 500L614.2857055664062 500L614.2857055664062 271.4285583496094L271.4285583496094 271.4285583496094Z ', 0, 26, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:46'),
(89, 16.00, 16.00, 46.00, 19.00, 'M657.1428833007812 500L885.7142944335938 500L885.7142944335938 271.4285583496094L657.1428833007812 271.4285583496094Z ', 0, 26, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:47'),
(90, 16.00, 16.00, 0.00, 19.00, 'M0 500L228.57142639160156 500L228.57142639160156 271.4285583496094L0 271.4285583496094Z ', 0, 27, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:52'),
(91, 24.00, 16.00, 19.00, 19.00, 'M271.4285583496094 500L614.2857055664062 500L614.2857055664062 271.4285583496094L271.4285583496094 271.4285583496094Z ', 0, 27, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:52'),
(92, 16.00, 16.00, 27.00, 0.00, 'M385.71429443359375 228.57142639160156L614.2857055664062 228.57142639160156L614.2857055664062 0L385.71429443359375 0Z ', 0, 27, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:52'),
(93, 16.00, 24.00, 46.00, 11.00, 'M657.1428833007812 500L885.7142944335938 500L885.7142944335938 157.14285278320312L657.1428833007812 157.14285278320312Z ', 0, 27, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:52'),
(94, 16.00, 16.00, 0.00, 0.00, 'M0 228.57142639160156L228.57142639160156 228.57142639160156L228.57142639160156 0L0 0Z ', 0, 28, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:58'),
(95, 16.00, 16.00, 0.00, 19.00, 'M0 500L228.57142639160156 500L228.57142639160156 271.4285583496094L0 271.4285583496094Z ', 0, 28, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:58'),
(96, 16.00, 24.00, 19.00, 5.50, 'M271.4285583496094 421.4285583496094L500 421.4285583496094L500 78.57142639160156L271.4285583496094 78.57142639160156Z ', 0, 28, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:58'),
(97, 24.00, 16.00, 38.00, 9.50, 'M542.8571166992188 364.28570556640625L885.7142944335938 364.28570556640625L885.7142944335938 135.7142791748047L542.8571166992188 135.7142791748047Z ', 0, 28, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:05:58'),
(98, 24.00, 16.00, 0.00, 9.50, 'M0 364.28570556640625L342.8571472167969 364.28570556640625L342.8571472167969 135.7142791748047L0 135.7142791748047Z ', 0, 29, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:02'),
(99, 16.00, 24.00, 27.00, 5.50, 'M385.71429443359375 421.4285583496094L614.2857055664062 421.4285583496094L614.2857055664062 78.57142639160156L385.71429443359375 78.57142639160156Z ', 0, 29, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:03'),
(100, 16.00, 16.00, 46.00, 0.00, 'M657.1428833007812 228.57142639160156L885.7142944335938 228.57142639160156L885.7142944335938 0L657.1428833007812 0Z ', 0, 29, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:03'),
(101, 16.00, 16.00, 46.00, 19.00, 'M657.1428833007812 500L885.7142944335938 500L885.7142944335938 271.4285583496094L657.1428833007812 271.4285583496094Z ', 0, 29, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:03'),
(102, 16.00, 24.00, 0.00, 5.50, 'M0 421.4285583496094L228.57142639160156 421.4285583496094L228.57142639160156 78.57142639160156L0 78.57142639160156Z ', 0, 30, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:09'),
(103, 16.00, 16.00, 19.00, 0.00, 'M271.4285583496094 228.57142639160156L500 228.57142639160156L500 0L271.4285583496094 0Z ', 0, 30, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:09'),
(104, 16.00, 16.00, 19.00, 19.00, 'M271.4285583496094 500L500 500L500 271.4285583496094L271.4285583496094 271.4285583496094Z ', 0, 30, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:09'),
(105, 16.00, 24.00, 38.00, 5.50, 'M542.8571166992188 421.4285583496094L771.4285888671875 421.4285583496094L771.4285888671875 78.57142639160156L542.8571166992188 78.57142639160156Z ', 0, 30, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:09'),
(106, 24.00, 16.00, 0.00, 9.50, 'M0 364.28570556640625L342.8571472167969 364.28570556640625L342.8571472167969 135.7142791748047L0 135.7142791748047Z ', 0, 31, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:15'),
(107, 16.00, 16.00, 27.00, 0.00, 'M385.71429443359375 228.57142639160156L614.2857055664062 228.57142639160156L614.2857055664062 0L385.71429443359375 0Z ', 0, 31, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:15'),
(108, 16.00, 16.00, 27.00, 19.00, 'M385.71429443359375 500L614.2857055664062 500L614.2857055664062 271.4285583496094L385.71429443359375 271.4285583496094Z ', 0, 31, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:15'),
(109, 24.00, 16.00, 46.00, 9.50, 'M657.1428833007812 364.28570556640625L1000 364.28570556640625L1000 135.7142791748047L657.1428833007812 135.7142791748047Z ', 0, 31, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:15'),
(110, 24.00, 16.00, 0.00, 0.00, 'M0 228.57142639160156L342.8571472167969 228.57142639160156L342.8571472167969 0L0 0Z ', 0, 32, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:21'),
(111, 16.00, 16.00, 27.00, 0.00, 'M385.71429443359375 228.57142639160156L614.2857055664062 228.57142639160156L614.2857055664062 0L385.71429443359375 0Z ', 0, 32, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:21'),
(112, 16.00, 16.00, 27.00, 19.00, 'M385.71429443359375 500L614.2857055664062 500L614.2857055664062 271.4285583496094L385.71429443359375 271.4285583496094Z ', 0, 32, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:21'),
(113, 24.00, 16.00, 46.00, 19.00, 'M657.1428833007812 500L1000 500L1000 271.4285583496094L657.1428833007812 271.4285583496094Z ', 0, 32, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:21'),
(114, 16.00, 16.00, 0.00, 0.00, 'M0 186.0465087890625L186.0465087890625 186.0465087890625L186.0465087890625 0L0 0Z ', 0, 33, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:32'),
(115, 16.00, 24.00, 19.00, 0.00, 'M220.93023681640625 279.06976318359375L406.97674560546875 279.06976318359375L406.97674560546875 0L220.93023681640625 0Z ', 0, 33, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:32'),
(116, 24.00, 16.00, 19.00, 27.00, 'M220.93023681640625 500L500 500L500 313.9534912109375L220.93023681640625 313.9534912109375Z ', 0, 33, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:32'),
(117, 16.00, 16.00, 46.00, 27.00, 'M534.8837280273438 500L720.9302368164062 500L720.9302368164062 313.9534912109375L534.8837280273438 313.9534912109375Z ', 0, 33, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:32'),
(118, 20.00, 30.00, 0.00, 13.00, 'M0 500L232.55813598632812 500L232.55813598632812 151.1627960205078L0 151.1627960205078Z ', 0, 34, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:38'),
(119, 20.00, 20.00, 23.00, 0.00, 'M267.4418640136719 232.55813598632812L500 232.55813598632812L500 0L267.4418640136719 0Z ', 0, 34, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:38'),
(120, 30.00, 20.00, 23.00, 23.00, 'M267.4418640136719 500L616.279052734375 500L616.279052734375 267.4418640136719L267.4418640136719 267.4418640136719Z ', 0, 34, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:38'),
(121, 20.00, 20.00, 56.00, 23.00, 'M651.1627807617188 500L883.720947265625 500L883.720947265625 267.4418640136719L651.1627807617188 267.4418640136719Z ', 0, 34, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:06:38'),
(122, 20.00, 20.00, 0.00, 23.00, 'M0 500L232.55813598632812 500L232.55813598632812 267.4418640136719L0 267.4418640136719Z ', 0, 35, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:03'),
(123, 30.00, 20.00, 23.00, 23.00, 'M267.4418640136719 500L616.279052734375 500L616.279052734375 267.4418640136719L267.4418640136719 267.4418640136719Z ', 0, 35, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:03'),
(124, 20.00, 20.00, 33.00, 0.00, 'M383.7209167480469 232.55813598632812L616.279052734375 232.55813598632812L616.279052734375 0L383.7209167480469 0Z ', 0, 35, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:03'),
(125, 20.00, 30.00, 56.00, 13.00, 'M651.1627807617188 500L883.720947265625 500L883.720947265625 151.1627960205078L651.1627807617188 151.1627960205078Z ', 0, 35, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:03'),
(126, 20.00, 20.00, 0.00, 0.00, 'M0 232.55813598632812L232.55813598632812 232.55813598632812L232.55813598632812 0L0 0Z ', 0, 36, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:14'),
(127, 20.00, 20.00, 0.00, 23.00, 'M0 500L232.55813598632812 500L232.55813598632812 267.4418640136719L0 267.4418640136719Z ', 0, 36, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:14'),
(128, 20.00, 30.00, 23.00, 6.50, 'M267.4418640136719 424.4186096191406L500 424.4186096191406L500 75.5813980102539L267.4418640136719 75.5813980102539Z ', 0, 36, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:14'),
(129, 30.00, 20.00, 46.00, 11.50, 'M534.8837280273438 366.2790832519531L883.720947265625 366.2790832519531L883.720947265625 133.72093200683594L534.8837280273438 133.72093200683594Z ', 0, 36, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:14'),
(130, 30.00, 20.00, 0.00, 0.00, 'M0 232.55813598632812L348.83721923828125 232.55813598632812L348.83721923828125 0L0 0Z ', 0, 37, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:22'),
(131, 20.00, 20.00, 33.00, 0.00, 'M383.7209167480469 232.55813598632812L616.279052734375 232.55813598632812L616.279052734375 0L383.7209167480469 0Z ', 0, 37, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:22'),
(132, 20.00, 20.00, 33.00, 23.00, 'M383.7209167480469 500L616.279052734375 500L616.279052734375 267.4418640136719L383.7209167480469 267.4418640136719Z ', 0, 37, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:22'),
(133, 30.00, 20.00, 56.00, 23.00, 'M651.1627807617188 500L1000 500L1000 267.4418640136719L651.1627807617188 267.4418640136719Z ', 0, 37, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:22'),
(134, 17.67, 17.67, 0.00, 0.00, 'M0 166.6981201171875L166.6981201171875 166.6981201171875L166.6981201171875 0L0 0Z ', 0, 38, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:29'),
(135, 20.00, 30.00, 23.00, 0.00, 'M216.9811248779297 283.01885986328125L405.6603698730469 283.01885986328125L405.6603698730469 0L216.9811248779297 0Z ', 0, 38, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:29'),
(136, 30.00, 20.00, 23.00, 33.00, 'M216.9811248779297 500L500 500L500 311.32073974609375L216.9811248779297 311.32073974609375Z ', 0, 38, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:29'),
(137, 20.00, 20.00, 56.00, 33.00, 'M528.3018798828125 500L716.9811401367188 500L716.9811401367188 311.32073974609375L528.3018798828125 311.32073974609375Z ', 0, 38, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:29'),
(138, 30.00, 20.00, 0.00, 11.50, 'M0 366.2790832519531L348.83721923828125 366.2790832519531L348.83721923828125 133.72093200683594L0 133.72093200683594Z ', 0, 39, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:35'),
(139, 20.00, 30.00, 33.00, 6.50, 'M383.7209167480469 424.4186096191406L616.279052734375 424.4186096191406L616.279052734375 75.5813980102539L383.7209167480469 75.5813980102539Z ', 0, 39, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:35'),
(140, 20.00, 20.00, 56.00, 0.00, 'M651.1627807617188 232.55813598632812L883.720947265625 232.55813598632812L883.720947265625 0L651.1627807617188 0Z ', 0, 39, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:35'),
(141, 20.00, 20.00, 56.00, 23.00, 'M651.1627807617188 500L883.720947265625 500L883.720947265625 267.4418640136719L651.1627807617188 267.4418640136719Z ', 0, 39, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:35'),
(142, 20.00, 30.00, 0.00, 6.50, 'M0 424.4186096191406L232.55813598632812 424.4186096191406L232.55813598632812 75.5813980102539L0 75.5813980102539Z ', 0, 40, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:42'),
(143, 20.00, 20.00, 23.00, 0.00, 'M267.4418640136719 232.55813598632812L500 232.55813598632812L500 0L267.4418640136719 0Z ', 0, 40, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:42'),
(144, 20.00, 20.00, 23.00, 23.00, 'M267.4418640136719 500L500 500L500 267.4418640136719L267.4418640136719 267.4418640136719Z ', 0, 40, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:42'),
(145, 20.00, 30.00, 46.00, 6.50, 'M534.8837280273438 424.4186096191406L767.4418334960938 424.4186096191406L767.4418334960938 75.5813980102539L534.8837280273438 75.5813980102539Z ', 0, 40, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:42'),
(146, 30.00, 20.00, 0.00, 11.50, 'M0 366.2790832519531L348.83721923828125 366.2790832519531L348.83721923828125 133.72093200683594L0 133.72093200683594Z ', 0, 41, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:48'),
(147, 20.00, 20.00, 33.00, 0.00, 'M383.7209167480469 232.55813598632812L616.279052734375 232.55813598632812L616.279052734375 0L383.7209167480469 0Z ', 0, 41, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:48'),
(148, 20.00, 20.00, 33.00, 23.00, 'M383.7209167480469 500L616.279052734375 500L616.279052734375 267.4418640136719L383.7209167480469 267.4418640136719Z ', 0, 41, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:48'),
(149, 30.00, 20.00, 56.00, 11.50, 'M651.1627807617188 366.2790832519531L1000 366.2790832519531L1000 133.72093200683594L651.1627807617188 133.72093200683594Z ', 0, 41, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:48'),
(150, 24.00, 16.00, 0.00, 33.00, 'M0 500L244.89796447753906 500L244.89796447753906 336.73468017578125L0 336.73468017578125Z ', 0, 42, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:56'),
(151, 16.00, 16.00, 8.00, 14.00, 'M81.63265228271484 306.1224365234375L244.89796447753906 306.1224365234375L244.89796447753906 142.85714721679688L81.63265228271484 142.85714721679688Z ', 0, 42, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:56'),
(152, 16.00, 24.00, 27.00, 14.00, 'M275.51019287109375 387.7550964355469L438.7755126953125 387.7550964355469L438.7755126953125 142.85714721679688L275.51019287109375 142.85714721679688Z ', 0, 42, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:56'),
(153, 16.00, 16.00, 46.00, 19.00, 'M469.38775634765625 357.1428527832031L632.653076171875 357.1428527832031L632.653076171875 193.87754821777344L469.38775634765625 193.87754821777344Z ', 0, 42, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:56'),
(154, 24.00, 16.00, 46.00, 0.00, 'M469.38775634765625 163.2653045654297L714.2857055664062 163.2653045654297L714.2857055664062 0L469.38775634765625 0Z ', 0, 42, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:01:56'),
(155, 24.00, 16.00, 0.00, 0.00, 'M0 163.2653045654297L244.89796447753906 163.2653045654297L244.89796447753906 0L0 0Z ', 0, 43, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:02'),
(156, 16.00, 16.00, 8.00, 19.00, 'M81.63265228271484 357.1428527832031L244.89796447753906 357.1428527832031L244.89796447753906 193.87754821777344L81.63265228271484 193.87754821777344Z ', 0, 43, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:02'),
(157, 16.00, 24.00, 27.00, 14.00, 'M275.51019287109375 387.7550964355469L438.7755126953125 387.7550964355469L438.7755126953125 142.85714721679688L275.51019287109375 142.85714721679688Z ', 0, 43, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:02'),
(158, 16.00, 16.00, 46.00, 14.00, 'M469.38775634765625 306.1224365234375L632.653076171875 306.1224365234375L632.653076171875 142.85714721679688L469.38775634765625 142.85714721679688Z ', 0, 43, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:02'),
(159, 24.00, 16.00, 46.00, 33.00, 'M469.38775634765625 500L714.2857055664062 500L714.2857055664062 336.73468017578125L469.38775634765625 336.73468017578125Z ', 0, 43, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:02'),
(160, 30.00, 20.00, 0.00, 0.00, 'M0 169.4915313720703L254.23728942871094 169.4915313720703L254.23728942871094 0L0 0Z ', 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:08'),
(161, 20.00, 20.00, 10.00, 23.00, 'M84.74576568603516 364.4067687988281L254.23728942871094 364.4067687988281L254.23728942871094 194.91525268554688L84.74576568603516 194.91525268554688Z ', 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:08'),
(162, 20.00, 30.00, 33.00, 16.00, 'M279.6610107421875 389.83050537109375L449.1525573730469 389.83050537109375L449.1525573730469 135.5932159423828L279.6610107421875 135.5932159423828Z ', 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:08'),
(163, 30.00, 20.00, 56.00, 39.00, 'M474.5762634277344 500L728.8135375976562 500L728.8135375976562 330.50848388671875L474.5762634277344 330.50848388671875Z ', 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:08'),
(164, 20.00, 20.00, 56.00, 16.00, 'M474.5762634277344 305.0847473144531L644.0678100585938 305.0847473144531L644.0678100585938 135.5932159423828L474.5762634277344 135.5932159423828Z ', 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:02:08'),
(170, 5.33, 5.33, 12166.70, 21333.30, 'M73 128L233 128L153 267ZM253 128L333 267L173 267ZM273 128L433 128L353 267ZM173 287L333 287L253 426Z ', 0, 47, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:42:46'),
(171, 24.32, 24.32, 6.72, 20.96, 'M42 131L108 131L42 197ZM128 131L194 131L194 197ZM42 217L108 283L42 283ZM194 217L194 283L130 283ZM118 141L184 207L118 273L52 207Z ', 0, 48, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:07:48'),
(172, 24.32, 24.32, 36.00, 6.88, 'M225 43L291 43L225 109ZM311 43L377 43L377 109ZM225 129L291 195L225 195ZM311 195L377 129L377 195ZM301 53L367 119L301 185L235 119Z ', 0, 48, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:07:48'),
(173, 24.32, 24.32, 50.40, 37.12, 'M315 232L381 232L315 298ZM401 232L467 232L467 298ZM315 318L381 384L315 384ZM467 318L467 384L401 384ZM391 242L457 308L391 373L325 308Z ', 0, 48, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:07:49'),
(174, 66.00, 35.50, 1.00, 1.00, 'M13.333333015441895 13.333333015441895L404.4444274902344 13.333333015441895L13.333333015441895 486.66668701171875ZM453.33331298828125 13.333333015441895L844.4443969726562 13.333333015441895L453.33331298828125 486.66668701171875L62.22222137451172 486.66668701171875ZM893.3333129882812 13.333333015441895L893.3333129882812 486.66668701171875L502.2221984863281 486.66668701171875Z ', 0, 49, 0, 0, '0000-00-00 00:00:00', '2015-06-25 08:37:29'),
(186, 7.20, 7.20, 2.40, 2.40, 'M160 40L160 160L40 160Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(194, 7.20, 7.20, 2.40, 12.00, 'M40 200L160 200L160 320Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(195, 10.80, 7.20, 12.00, 2.40, 'M200 40L380 40L320 160L200 160Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(196, 10.80, 7.20, 12.00, 12.00, 'M200 200L320 200L380 320L200 320Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(197, 10.80, 7.20, 25.20, 2.40, 'M420 40L600 40L600 160L480 160Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(198, 10.80, 7.20, 25.20, 12.00, 'M480 200L600 200L600 320L420 320Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(199, 7.20, 7.20, 38.40, 2.40, 'M640 40L760 160L640 160Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(200, 7.20, 7.20, 38.40, 12.00, 'M640 200L760 200L640 320Z ', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:02'),
(201, 31.79, 15.79, 29.61, 5.79, 'M148.0500030517578 28.950000762939453L227.02516174316406 28.950000762939453L307 107.89999389648438L227.02516174316406 107.89999389648438Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(202, 31.79, 15.79, 62.89, 5.79, 'M314.46807861328125 107.87234497070312L393.4363708496094 28.93617057800293L473.4042663574219 28.93617057800293L393.4363708496094 107.87234497070312Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(203, 32.00, 16.00, 56.34, 24.40, 'M281.70001220703125 122L361.70001220703125 122L441.70001220703125 202L361.70001220703125 202Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(204, 31.79, 15.79, 100.09, 5.79, 'M500.425537109375 28.93617057800293L580.3934326171875 28.93617057800293L659.3616943359375 107.87234497070312L580.3934326171875 107.87234497070312Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(205, 32.00, 15.79, 133.32, 5.79, 'M666.5999755859375 107.89999389648438L746.5999755859375 28.950000762939453L826.5999755859375 28.950000762939453L746.5999755859375 107.89999389648438Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(206, 32.00, 16.00, 106.43, 24.40, 'M612.1500244140625 122L692.1500244140625 122L612.1500244140625 202L532.1500244140625 202Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(207, 26.60, 26.60, 84.09, 8.38, 'M487.414794921875 41.914894104003906L553.4042358398438 107.90434265136719L486.4149169921875 174.8936309814453L420.4255065917969 107.90434265136719Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:09'),
(208, 13.40, 13.40, 2.00, 2.00, 'M20 20L154 154L20 154Z ', 0, 53, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:14'),
(209, 13.40, 13.50, 2.00, 18.70, 'M20 187L154 187L154 322Z ', 0, 53, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:14'),
(210, 13.40, 26.90, 2.00, 22.10, 'M20 221L154 355L154 490L20 355Z ', 0, 53, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:14'),
(211, 62.08, 72.16, 9.92, 6.08, 'M245 38L245 101L191 131L191 69ZM266 38L320 69L320 131L266 101ZM116 110L170 142L116 173L62 142ZM395 110L450 142L395 173L341 142ZM191 148L245 180L191 211L137 180ZM320 148L374 180L320 211L266 180ZM116 191L116 254L62 223L62 160ZM137 198L191 229L191 292L137 261ZM116 275L116 338L62 370L62 305ZM191 307L245 338L245 401L191 370ZM116 356L170 388L116 421L62 388ZM191 396L245 427L245 489L191 457ZM320 229L374 198L374 261L320 292ZM395 191L450 160L450 223L395 254ZM395 275L450 305L450 370L395 338ZM395 356L450 388L395 421L341 388ZM266 338L320 307L320 370L266 401ZM266 427L320 396L320 457L266 489Z ', 0, 54, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:26'),
(212, 36.80, 32.00, 4.64, 1.60, 'M29 210L75 130L121 210ZM144 10L190 90L98 90ZM144 210L87 110L201 110ZM213 130L259 210L167 210Z ', 0, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(213, 36.80, 32.00, 26.72, 36.80, 'M282 430L236 350L328 350ZM167 230L259 230L213 310ZM283 230L339 331L226 331ZM305 230L397 230L351 310Z ', 0, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(214, 6.40, 5.60, 19.84, 6.40, 'M164 75L124 75L144 40Z ', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(215, 6.40, 5.60, 8.80, 25.60, 'M75 160L55 195L95 195Z ', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(216, 6.40, 5.60, 30.88, 25.60, 'M213 160L193 195L233 195Z ', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(217, 6.24, 5.60, 41.92, 58.40, 'M282 400L301 365L262 365Z ', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(218, 6.40, 5.60, 52.96, 39.20, 'M351 280L371 245L331 245Z ', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-25 02:08:31'),
(221, 4.30, 3.40, 5.68, -0.04, 'M284 168L499 168L499 -2L284 -2Z ', 0, 58, 0, 0, '2017-02-15 18:19:18', '2017-02-15 19:24:47'),
(222, 5.00, 5.00, 0.02, 4.96, 'M1 498L251 498L126 248Z ', 0, 58, 0, 0, '2017-02-15 19:23:28', '2017-02-15 19:24:47'),
(223, 5.00, 5.00, 4.96, 4.94, 'M248 497L498 497L498 247Z ', 0, 59, 0, 0, '2017-02-15 19:27:18', '2017-02-16 17:42:11'),
(224, 3.70, 3.50, -0.04, 0.12, 'M-2 181L183 181L90.5 6Z ', 0, 59, 0, 0, '2017-02-15 19:27:18', '2017-02-16 17:42:11'),
(225, 3.90, 3.00, 6.06, 0.00, 'M303 150L498 150L498 0L303 0Z ', 0, 59, 0, 0, '2017-02-15 19:27:18', '2017-02-16 17:42:11'),
(232, 3.00, 3.00, 5.52, 1.06, 'M276 203L426 203L351 53Z ', 0, 60, 0, 0, '2017-02-21 01:44:47', '2017-02-21 01:45:05'),
(233, 5.00, 5.00, 1.82, 3.28, 'M91 414L341 414L216 164Z ', 0, 60, 0, 0, '2017-02-21 01:44:47', '2017-02-21 01:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon_class` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'backend',
  `group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `big_banners` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `small_banners` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon_class`, `link`, `parent_id`, `type`, `group`, `order_no`, `level`, `active`, `big_banners`, `small_banners`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'icon-home', 'admin', 0, 'backend', NULL, 1, 1, 1, NULL, '', 0, 0, '2015-04-16 14:27:01', '2015-04-24 09:05:58'),
(2, 'Configure', 'fa fa-cogs', 'admin/configures', 55, 'backend', NULL, 4, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:59'),
(3, 'Banner', 'icon-credit-card', 'admin/banners', 52, 'backend', NULL, 1, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:59'),
(4, 'Menu', 'icon-list', 'admin/menus', 0, 'backend', NULL, 2, 1, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:58'),
(5, 'User', 'icon-users', 'admin/users', 55, 'backend', NULL, 2, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:59'),
(6, 'Admin', 'fa fa-users', 'admin/admins', 55, 'backend', NULL, 1, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:59'),
(7, 'Products Group', 'icon-social-dropbox', NULL, 0, 'backend', NULL, 3, 1, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:58'),
(8, 'Product', 'icon-bag', 'admin/products', 7, 'backend', NULL, 1, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:58'),
(9, 'Option Group', 'icon-notebook', 'admin/product-option-groups', 7, 'backend', NULL, 2, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:58'),
(10, 'Option', 'icon-layers', 'admin/product-options', 7, 'backend', NULL, 3, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:58'),
(11, 'Category', 'icon-bar-chart', 'admin/product-categories', 7, 'backend', '', 4, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:09:24'),
(12, 'Layout', 'icon-screen-tablet', 'admin/layouts', 7, 'backend', '', 5, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-06-16 10:42:31'),
(13, 'Pages', 'icon-docs', NULL, 52, 'backend', NULL, 2, 2, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:59'),
(14, 'Static Page', 'icon-doc', 'admin/pages', 13, 'backend', NULL, 1, 3, 1, NULL, '', 0, 0, '2015-04-16 14:27:02', '2015-04-24 09:05:59'),
(15, 'Stair Climber ImageStylor Canvas', 'icon-settings', 'collections/stair-climber-imagestylor-canvas-clusters', 36, 'frontend', 'header', 4, 2, 1, NULL, '', 0, 3, '2015-04-17 12:53:17', '2017-03-30 18:37:55'),
(16, 'Modern Imagestylor Canvas Clusters', 'icon-settings', 'collections/modern-imagestylor-canvas-cluster', 36, 'frontend', 'header', 3, 2, 1, NULL, '', 0, 3, '2015-04-17 12:53:21', '2017-03-30 18:37:55'),
(17, '4 Square Imagestylor Canvas Clusters', 'icon-settings', 'collections/4-square-imagestylor-canvas-cluster', 36, 'frontend', 'header', 2, 2, 1, NULL, '', 0, 3, '2015-04-17 12:53:25', '2017-03-30 18:37:55'),
(18, 'Tritych Imagestylor Canvas Clusters', 'icon-settings', 'collections/tritych-imagestylor-canvas-clusters', 36, 'frontend', 'header', 1, 2, 1, NULL, '', 0, 3, '2015-04-17 12:53:29', '2017-03-30 18:37:55'),
(20, 'Indoor Signage', 'icon-settings', 'collections/indoor-signage', 34, 'frontend', 'header', 1, 2, 1, NULL, '21', 0, 0, '2015-04-17 12:53:34', '2017-03-30 18:37:55'),
(21, 'Greeting Cards', '', 'collections/greeting-cards', 0, 'frontend', 'header', 16, 1, 0, NULL, '', 0, 0, '2015-04-17 12:53:38', '2017-03-30 18:37:55'),
(23, 'Wall Splits', 'icon-settings', 'collections/wall-splits', 35, 'frontend', 'header', 1, 2, 1, NULL, '', 0, 0, '2015-04-17 12:53:44', '2017-03-30 18:37:55'),
(24, 'Graphic Prints Collection', '', 'collections/graphic-prints-collection', 0, 'frontend', 'header', 15, 1, 0, NULL, '', 0, 0, '2015-04-17 12:53:50', '2017-03-30 18:37:55'),
(25, 'Smart Plaque', 'icon-settings', 'collections/smart-plaque', 34, 'frontend', 'header', 7, 2, 0, NULL, '', 0, 0, '2015-04-17 12:53:53', '2017-03-30 18:37:55'),
(26, 'Tri-Photo HBL', 'icon-settings', 'collections/triphoto-hbl', 34, 'frontend', 'header', 8, 2, 0, NULL, '', 0, 0, '2015-04-17 12:53:57', '2017-03-30 18:37:55'),
(27, 'Canvas Prints', '', 'collections/canvas-prints', 0, 'frontend', 'header', 13, 1, 0, NULL, '', 0, 0, '2015-04-17 12:54:00', '2017-03-30 18:37:55'),
(28, 'Wall Collage', 'icon-settings', 'collections/wall-collage', 35, 'frontend', 'header', 2, 2, 1, NULL, '', 0, 0, '2015-04-17 12:54:02', '2017-03-30 18:37:55'),
(29, 'ImageStyle', 'icon-settings', 'collections/imagestyle', 34, 'frontend', 'header', 5, 2, 0, NULL, '', 0, 0, '2015-04-17 12:54:06', '2017-03-30 18:37:55'),
(30, 'Shaped ImageStylor Canvas', 'icon-settings', 'collections/shaped-imagestylor-canvas', 34, 'frontend', 'header', 2, 2, 0, NULL, '', 0, 0, '2015-04-17 12:54:10', '2017-03-30 18:37:55'),
(31, 'Wood Prints', 'icon-settings', 'collections/wood-prints', 34, 'frontend', 'header', 6, 2, 0, NULL, '', 0, 0, '2015-04-17 12:54:14', '2017-03-30 18:37:55'),
(32, 'Acrylic Photo', 'icon-settings', 'collections/acrylic-photo', 34, 'frontend', 'header', 3, 2, 0, NULL, '', 0, 0, '2015-04-17 12:54:17', '2017-03-30 18:37:55'),
(33, 'Alloy Image Box', 'icon-settings', 'collections/alloy-image-box', 34, 'frontend', 'header', 4, 2, 0, NULL, '', 0, 0, '2015-04-17 12:54:21', '2017-03-30 18:37:55'),
(34, 'Products', 'icon-social-dropbox', '', 0, 'frontend', 'header', 8, 1, 1, NULL, '', 0, 0, '2015-04-17 13:03:29', '2017-03-30 18:37:55'),
(35, 'Collections', 'icon-user', '', 0, 'frontend', 'header', 11, 1, 0, NULL, '', 0, 0, '2015-04-17 13:04:05', '2017-03-30 18:37:55'),
(36, 'Wall Clusters', 'icon-user', '', 0, 'frontend', 'header', 10, 1, 0, NULL, '', 0, 0, '2015-04-17 13:04:25', '2017-03-30 18:37:55'),
(37, 'User Feedback', 'icon-feed', 'admin/contacts', 52, 'backend', '', 4, 2, 1, NULL, '', 0, 0, '2015-04-20 14:06:32', '2015-04-24 09:05:59'),
(38, 'Role', 'fa fa-users', 'admin/roles', 55, 'backend', '', 3, 2, 1, NULL, '', 0, 0, '2015-04-20 14:06:32', '2015-04-24 09:05:59'),
(40, 'Who we are', 'icon-settings', 'about-gotodisplay', 49, 'frontend', 'footer', 3, 2, 1, NULL, '', 0, 1, '2015-04-21 13:34:36', '2017-04-04 19:47:04'),
(42, 'Our terms and policy', 'icon-settings', 'terms-and-policy', 49, 'frontend', 'footer', 1, 2, 1, NULL, '', 0, 1, '2015-04-21 13:34:40', '2017-04-04 19:47:04'),
(44, 'Customer Service', 'icon-settings', '', 0, 'frontend', 'footer', 2, 1, 1, NULL, '', 0, 0, '2015-04-21 13:36:42', '2017-04-04 19:47:04'),
(45, 'Home', 'icon-settings', '', 0, 'frontend', 'header', 1, 1, 1, '20,22,41', '', 0, 0, '2015-04-21 13:38:10', '2017-04-05 15:55:02'),
(46, 'Contact / Custom Orders', 'icon-settings', 'contact', 44, 'frontend', 'footer', 1, 2, 1, NULL, '', 0, 0, '2015-04-21 13:40:36', '2017-04-04 19:47:04'),
(47, 'About Us', 'icon-settings', 'about-us', 49, 'frontend', 'footer', 2, 2, 1, NULL, '', 0, 1, '2015-04-21 13:41:45', '2017-04-04 19:47:04'),
(49, 'Infomation', 'icon-settings', '', 0, 'frontend', 'footer', 1, 1, 1, NULL, '', 0, 0, '2015-04-21 13:43:53', '2017-04-04 19:47:04'),
(50, 'Box layout', 'icon-grid', 'admin/layouts', 12, 'backend', '', 1, 3, 0, NULL, '', 0, 0, '2015-04-24 09:01:52', '2015-06-16 10:42:31'),
(51, 'Shape Layout', 'icon-star', 'admin/shape-layouts', 12, 'backend', '', 2, 3, 0, NULL, '', 0, 0, '2015-04-24 09:02:58', '2015-06-16 10:42:31'),
(52, 'Other Content', 'icon-settings', '', 0, 'backend', '', 4, 1, 1, NULL, '', 0, 0, '2015-04-24 09:03:32', '2015-04-24 09:05:59'),
(53, 'Order', 'icon-basket-loaded', 'admin/orders', 52, 'backend', '', 3, 2, 1, NULL, '', 0, 0, '2015-04-24 09:04:31', '2015-04-24 09:06:37'),
(54, 'Email Template', 'icon-envelope', 'admin/email-templates', 52, 'backend', '', 5, 2, 1, NULL, '', 0, 0, '2015-04-24 09:05:11', '2015-04-24 09:08:14'),
(55, 'Admin Group', 'icon-settings', '', 0, 'backend', '', 5, 1, 1, NULL, '', 0, 0, '2015-04-24 09:05:34', '2015-04-24 09:05:59'),
(56, 'Image Stock', 'icon-picture', 'admin/images', 0, 'backend', '', 1, 1, 1, NULL, '', 0, 0, '2015-05-27 09:26:52', '2015-05-27 09:26:52'),
(61, 'Home Content', 'icon-home', 'admin/frontend-home', 0, 'backend', '', 1, 1, 1, NULL, '', 0, 0, '2017-03-17 05:15:20', '2017-03-17 05:15:20'),
(62, 'Tutorials', 'icon-settings', 'tutorials', 44, 'frontend', 'footer', 2, 2, 1, NULL, '', 0, 0, '2017-03-21 19:29:54', '2017-04-04 19:47:04'),
(63, 'How to upload', 'icon-settings', 'how-to-upload', 49, 'frontend', 'footer', 4, 2, 1, NULL, '', 0, 0, '2017-03-21 19:30:28', '2017-04-04 19:47:04'),
(64, 'Triangle Wall Collage', '', 'collections/triangle-wall-collage', 0, 'frontend', 'header', 7, 1, 0, NULL, '', 0, 0, '2017-03-21 20:27:57', '2017-03-30 18:37:55'),
(65, 'Terms', '', 'terms', 0, 'frontend', 'header', 6, 1, 0, NULL, '', 0, 0, '2017-03-21 20:44:03', '2017-03-30 18:37:55'),
(68, 'Home Décor', 'icon-settings', 'collections/home-decor', 0, 'frontend', 'header', 9, 1, 1, NULL, '', 0, 0, '2017-03-27 20:55:44', '2017-03-30 18:37:55'),
(69, 'Home Décor', '', 'collections/home-decor', 0, 'frontend', 'header', 2, 1, 0, NULL, '', 0, 0, '2017-03-27 20:56:16', '2017-03-30 18:37:55'),
(70, 'Home Décor', '', 'collections/home-decor', 0, 'frontend', 'header', 3, 1, 0, NULL, '', 0, 0, '2017-03-27 20:56:20', '2017-03-30 18:37:55'),
(71, 'Graduation Celebration', 'icon-settings', 'collections/graduation-celebration', 68, 'frontend', 'header', 1, 2, 1, NULL, '21', 0, 0, '2017-03-27 20:56:39', '2017-03-30 18:37:55'),
(72, 'To Your Loved Ones', 'icon-settings', 'collections/to-your-loved-ones', 68, 'frontend', 'header', 4, 2, 1, NULL, '', 0, 0, '2017-03-27 20:58:28', '2017-03-30 18:37:55'),
(73, 'Wedding Memoir', 'icon-settings', 'collections/wedding-memoir', 68, 'frontend', 'header', 5, 2, 1, NULL, '', 0, 0, '2017-03-27 20:58:47', '2017-03-30 18:37:55'),
(74, 'Photography Collection', 'icon-settings', 'collections/photography-collection', 68, 'frontend', 'header', 3, 2, 1, NULL, '', 0, 0, '2017-03-27 20:59:05', '2017-03-30 18:37:55'),
(75, 'Hobby Walls', 'icon-settings', 'collections/hobby-walls', 68, 'frontend', 'header', 6, 2, 1, NULL, '', 0, 0, '2017-03-27 20:59:31', '2017-03-30 18:37:55'),
(76, 'Holiday Gifts', 'icon-settings', 'collections/holiday-gifts', 68, 'frontend', 'header', 2, 2, 1, NULL, '', 0, 0, '2017-03-27 20:59:38', '2017-03-30 18:37:55'),
(77, 'Commercial Décor', 'icon-settings', 'collections/commercial-decor', 0, 'frontend', 'header', 12, 1, 1, NULL, '', 0, 0, '2017-03-27 20:59:53', '2017-03-30 18:37:55'),
(78, 'Gallery & Art Shops', 'icon-settings', 'collections/gallery-art-shops', 77, 'frontend', 'header', 3, 2, 1, NULL, '', 0, 0, '2017-03-27 21:02:54', '2017-03-30 18:37:55'),
(79, 'Retail Promotions', 'icon-settings', 'collections/retail-promotions', 77, 'frontend', 'header', 6, 2, 1, NULL, '', 0, 0, '2017-03-27 21:03:20', '2017-03-30 18:37:55'),
(80, 'Trade Show Events', 'icon-settings', 'collections/trade-show-events', 77, 'frontend', 'header', 8, 2, 1, NULL, '', 0, 0, '2017-03-27 21:03:32', '2017-03-30 18:37:55'),
(81, 'Real Estate Show Homes', 'icon-settings', 'collections/real-estate-show-homes', 77, 'frontend', 'header', 5, 2, 1, NULL, '', 0, 0, '2017-03-27 21:03:44', '2017-03-30 18:37:55'),
(82, 'Office Walls', 'icon-settings', 'collections/office-walls', 77, 'frontend', 'header', 4, 2, 1, NULL, '', 0, 0, '2017-03-27 21:03:57', '2017-03-30 18:37:55'),
(83, 'Architecture Design', 'icon-settings', 'collections/architecture-design', 77, 'frontend', 'header', 1, 2, 1, NULL, '', 0, 0, '2017-03-27 21:04:13', '2017-03-30 18:37:55'),
(84, 'Schools & Colleges Open House', 'icon-settings', 'collections/schools-colleges-open-house', 77, 'frontend', 'header', 7, 2, 1, NULL, '', 0, 0, '2017-03-27 21:04:29', '2017-03-30 18:37:55'),
(85, 'Community Marketplaces', 'icon-settings', 'collections/community-marketplaces', 77, 'frontend', 'header', 2, 2, 1, NULL, '', 0, 0, '2017-03-27 21:04:38', '2017-03-30 18:37:55'),
(86, 'Popular Product', 'icon-settings', 'collections/popular-product', 0, 'frontend', 'header', 5, 1, 0, NULL, '', 0, 0, '2017-03-30 17:55:47', '2017-03-30 18:52:41'),
(87, 'All Categories', 'icon-settings', 'collections', 0, 'frontend', 'header', 14, 1, 0, NULL, '', 0, 0, '2017-03-30 18:07:46', '2017-03-30 18:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_01_28_070725_create_admin', 1),
('2015_01_28_071018_create_user', 1),
('2015_01_28_083125_create_menu', 1),
('2015_01_29_082049_create_product', 1),
('2015_01_29_091150_create_image', 1),
('2015_01_29_100950_create_category', 1),
('2015_01_30_023547_create_imageable', 1),
('2015_01_30_032336_create_option', 1),
('2015_01_30_064131_create_product_category', 1),
('2015_03_17_084859_create_option_group', 1),
('2015_03_17_085935_create_optionable', 1),
('2015_03_19_021221_create_type', 1),
('2015_03_19_073756_create_price_break', 1),
('2015_03_20_071759_create_size_list', 1),
('2015_04_07_083850_create_layout', 1),
('2015_04_07_084218_create_layout_detail', 1),
('2015_04_09_070936_create_banner', 1),
('2015_04_10_022417_create_configure', 1),
('2015_04_10_090125_create_page', 1),
('2015_04_20_024011_create_contact', 1),
('2015_04_21_024840_entrust_setup_tables', 1),
('2015_04_21_031560_create_order', 1),
('2015_04_21_090041_create_addresses', 1),
('2015_04_22_044734_create_password_reminders_table', 1),
('2015_04_22_075507_create_notification', 1),
('2015_04_23_020055_create_order_details', 1),
('2015_04_24_012936_create_email_templates', 1),
('2015_06_03_033923_create_shape_layouts', 2),
('2015_06_03_034133_create_shape_layout_details', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `item_id`, `item_type`, `admin_id`, `read`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 6, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2015-06-16 03:33:12'),
(2, 6, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 6, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 6, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 7, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2015-06-26 04:02:16'),
(6, 7, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 7, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2015-06-25 03:55:36'),
(10, 1, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2015-06-25 03:55:36'),
(14, 2, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2015-06-29 08:00:49'),
(18, 3, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 3, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 3, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 8, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2016-09-29 02:31:13'),
(22, 8, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 8, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 8, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 9, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 23:33:45'),
(26, 9, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 9, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 9, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 10, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 23:33:45'),
(30, 10, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 10, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 10, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 247, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 01:06:11'),
(34, 247, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 247, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 247, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 248, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 01:09:37'),
(38, 248, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 248, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 248, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 11, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 23:33:45'),
(42, 11, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 11, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 11, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 12, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 23:33:45'),
(46, 12, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 12, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 12, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 4, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-31 22:15:30'),
(50, 4, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 4, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 4, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 13, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-09 20:46:19'),
(54, 13, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 13, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 13, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 5, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-14 02:44:13'),
(58, 5, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 5, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 5, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 249, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-15 19:24:21'),
(62, 249, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 249, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 249, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 6, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-15 19:06:26'),
(66, 6, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 6, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 6, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 7, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-15 19:06:26'),
(70, 7, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 7, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 7, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 250, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-16 18:44:09'),
(74, 250, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 250, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 250, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 251, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-02-21 01:28:16'),
(78, 251, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 251, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 251, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 8, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-16 07:47:43'),
(82, 8, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 8, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 8, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 14, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-17 00:25:26'),
(86, 14, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 14, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 14, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 15, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-20 16:48:22'),
(90, 15, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 15, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 15, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 16, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-20 16:48:22'),
(94, 16, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 16, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 16, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 17, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-20 16:48:22'),
(98, 17, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 17, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 17, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 18, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(102, 18, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 18, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 18, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 19, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(106, 19, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 19, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 19, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 20, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(110, 20, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 20, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 20, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 9, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-21 20:55:28'),
(114, 9, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 9, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 9, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 10, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-21 20:55:28'),
(118, 10, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 10, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 10, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 252, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 02:01:29'),
(122, 252, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 252, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 252, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 11, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 22:32:19'),
(126, 11, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 11, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 11, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 253, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 17:34:23'),
(130, 253, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 253, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 253, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 12, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 22:32:19'),
(134, 12, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 12, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 12, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 13, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 22:32:19'),
(138, 13, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 13, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 13, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 14, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 22:32:19'),
(142, 14, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 14, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 14, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 15, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-22 22:32:19'),
(146, 15, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 15, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 15, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 21, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(150, 21, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 21, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 21, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 22, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(154, 22, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 22, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 22, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 16, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-27 17:37:24'),
(158, 16, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 16, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 16, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 17, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-27 17:37:24'),
(162, 17, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 17, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 17, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 23, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(166, 23, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 23, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 23, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 18, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-27 17:37:24'),
(170, 18, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 18, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 18, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 24, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(174, 24, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 24, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 24, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 19, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-27 17:37:24'),
(178, 19, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 19, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 19, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 25, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-24 17:58:44'),
(182, 25, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 25, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 25, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 26, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-25 02:10:30'),
(186, 26, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 26, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 26, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 27, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-25 02:10:30'),
(190, 27, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 27, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 27, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 29, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(194, 29, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 29, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 29, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 30, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(198, 30, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 30, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 30, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 20, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-27 17:37:24'),
(202, 20, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 20, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 20, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 21, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-29 01:05:16'),
(206, 21, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 21, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 21, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 22, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-29 01:05:16'),
(210, 22, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 22, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 22, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 31, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(214, 31, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 31, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 31, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 32, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(218, 32, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 32, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 32, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 33, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(222, 33, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 33, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 33, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 34, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(226, 34, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 34, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 34, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 35, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(230, 35, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 35, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 35, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 36, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(234, 36, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 36, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 36, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 23, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-29 01:05:16'),
(238, 23, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 23, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 23, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 37, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(242, 37, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 37, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 37, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 24, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-29 17:56:44'),
(246, 24, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 24, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 24, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 25, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-29 17:56:44'),
(250, 25, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 25, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 25, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 38, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(254, 38, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 38, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 38, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 26, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-29 17:56:44'),
(258, 26, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 26, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 26, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 27, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(262, 27, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 27, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 27, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 28, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(266, 28, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 28, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 28, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 29, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(270, 29, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 29, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 29, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 30, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(274, 30, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 30, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 30, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 31, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(278, 31, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 31, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 31, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 32, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(282, 32, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 32, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 32, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 33, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(286, 33, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 33, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 33, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 34, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(290, 34, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 34, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 34, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 35, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(294, 35, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 35, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 35, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 36, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(298, 36, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 36, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 36, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 37, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(302, 37, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 37, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 37, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 39, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-30 18:03:46'),
(306, 39, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 39, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 39, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 40, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-03 18:01:41'),
(310, 40, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 40, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 40, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 38, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(314, 38, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 38, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 38, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 39, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 18:25:57'),
(318, 39, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 39, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 39, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 40, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 23:39:45'),
(322, 40, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 40, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 40, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 41, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 23:39:45'),
(326, 41, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 41, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 41, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 42, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-03-31 23:39:45'),
(330, 42, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 42, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 42, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 43, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-01 00:56:39'),
(334, 43, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 43, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 43, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 44, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-01 01:08:21'),
(338, 44, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 44, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 44, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 45, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-01 01:14:36'),
(342, 45, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 45, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 45, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 41, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-03 18:01:41'),
(346, 41, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 41, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 41, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 42, 'User', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 42, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 42, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 42, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 44, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-03 18:01:41'),
(354, 44, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 44, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 44, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 45, 'User', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-03 18:01:41'),
(358, 45, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 45, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 45, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 46, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-03 17:51:56'),
(362, 46, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 46, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 46, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 47, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-04 22:12:30'),
(366, 47, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 47, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 47, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 48, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-04 22:12:30'),
(370, 48, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 48, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 48, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 46, 'User', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 46, 'User', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 46, 'User', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 46, 'User', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 49, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-04 22:12:30'),
(378, 49, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 49, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 49, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 50, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-04 22:12:30'),
(382, 50, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 50, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 50, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 51, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-10 17:52:13'),
(386, 51, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 51, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 51, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 52, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-10 17:52:13'),
(390, 52, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 52, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 52, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 53, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-10 17:52:13'),
(394, 53, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 53, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 53, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 54, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-10 17:52:13'),
(398, 54, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 54, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 54, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 55, 'Order', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-04-11 02:46:27'),
(402, 55, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 55, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 55, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 56, 'Order', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 56, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 56, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 56, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 57, 'Order', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 57, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 57, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 57, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 58, 'Order', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 58, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 58, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 58, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 59, 'Order', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 59, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 59, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 59, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 60, 'Order', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 60, 'Order', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 60, 'Order', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 60, 'Order', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `optionables`
--

CREATE TABLE `optionables` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `optionable_id` int(11) NOT NULL,
  `optionable_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `option` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionables`
--

INSERT INTO `optionables` (`id`, `product_id`, `optionable_id`, `optionable_type`, `option`) VALUES
(190, 183, 2, 'ProductOptionGroup', NULL),
(225, 76, 2, 'ProductOptionGroup', NULL),
(226, 76, 4, 'ProductOptionGroup', NULL),
(243, 98, 4, 'ProductOptionGroup', NULL),
(244, 98, 5, 'ProductOptionGroup', NULL),
(245, 97, 4, 'ProductOptionGroup', NULL),
(246, 97, 5, 'ProductOptionGroup', NULL),
(330, 78, 2, 'ProductOptionGroup', NULL),
(331, 78, 4, 'ProductOptionGroup', NULL),
(332, 78, 6, 'ProductOptionGroup', NULL),
(421, 184, 2, 'ProductOptionGroup', NULL),
(422, 184, 4, 'ProductOptionGroup', NULL),
(423, 184, 6, 'ProductOptionGroup', NULL),
(490, 185, 2, 'ProductOptionGroup', NULL),
(491, 185, 4, 'ProductOptionGroup', NULL),
(492, 185, 6, 'ProductOptionGroup', NULL),
(523, 186, 2, 'ProductOptionGroup', NULL),
(524, 186, 4, 'ProductOptionGroup', NULL),
(525, 186, 6, 'ProductOptionGroup', NULL),
(669, 72, 25, 'ProductOption', NULL),
(673, 187, 25, 'ProductOption', NULL),
(674, 187, 24, 'ProductOption', NULL),
(761, 187, 31, 'ProductOption', NULL),
(762, 187, 34, 'ProductOption', NULL),
(775, 81, 25, 'ProductOption', NULL),
(776, 81, 24, 'ProductOption', NULL),
(780, 80, 25, 'ProductOption', NULL),
(781, 80, 24, 'ProductOption', NULL),
(785, 79, 25, 'ProductOption', NULL),
(786, 79, 24, 'ProductOption', NULL),
(793, 77, 25, 'ProductOption', NULL),
(794, 77, 24, 'ProductOption', NULL),
(798, 75, 25, 'ProductOption', NULL),
(799, 75, 24, 'ProductOption', NULL),
(808, 73, 25, 'ProductOption', NULL),
(809, 73, 24, 'ProductOption', NULL),
(813, 72, 24, 'ProductOption', NULL),
(817, 71, 25, 'ProductOption', NULL),
(818, 71, 24, 'ProductOption', NULL),
(822, 70, 25, 'ProductOption', NULL),
(823, 70, 24, 'ProductOption', NULL),
(827, 69, 25, 'ProductOption', NULL),
(828, 69, 24, 'ProductOption', NULL),
(832, 50, 25, 'ProductOption', NULL),
(833, 50, 24, 'ProductOption', NULL),
(840, 188, 25, 'ProductOption', NULL),
(841, 188, 24, 'ProductOption', NULL),
(842, 188, 25, 'ProductOption', NULL),
(843, 188, 24, 'ProductOption', NULL),
(844, 188, 31, 'ProductOption', NULL),
(845, 188, 34, 'ProductOption', NULL),
(856, 190, 25, 'ProductOption', NULL),
(857, 190, 24, 'ProductOption', NULL),
(858, 190, 25, 'ProductOption', NULL),
(859, 190, 24, 'ProductOption', NULL),
(866, 192, 25, 'ProductOption', NULL),
(867, 192, 24, 'ProductOption', NULL),
(868, 192, 32, 'ProductOption', NULL),
(875, 81, 32, 'ProductOption', NULL),
(876, 81, 33, 'ProductOption', NULL),
(877, 81, 31, 'ProductOption', NULL),
(878, 81, 34, 'ProductOption', NULL),
(892, 73, 32, 'ProductOption', NULL),
(893, 73, 33, 'ProductOption', NULL),
(894, 73, 31, 'ProductOption', NULL),
(895, 73, 34, 'ProductOption', NULL),
(896, 73, 4, 'ProductOptionGroup', NULL),
(897, 73, 6, 'ProductOptionGroup', NULL),
(898, 73, 7, 'ProductOptionGroup', NULL),
(899, 75, 32, 'ProductOption', NULL),
(900, 75, 33, 'ProductOption', NULL),
(901, 75, 31, 'ProductOption', NULL),
(902, 75, 34, 'ProductOption', NULL),
(906, 77, 32, 'ProductOption', NULL),
(907, 77, 33, 'ProductOption', NULL),
(908, 77, 31, 'ProductOption', NULL),
(909, 77, 34, 'ProductOption', NULL),
(913, 79, 32, 'ProductOption', NULL),
(914, 79, 33, 'ProductOption', NULL),
(915, 79, 31, 'ProductOption', NULL),
(916, 79, 34, 'ProductOption', NULL),
(920, 80, 32, 'ProductOption', NULL),
(921, 80, 33, 'ProductOption', NULL),
(922, 80, 31, 'ProductOption', NULL),
(923, 80, 34, 'ProductOption', NULL),
(930, 72, 32, 'ProductOption', NULL),
(931, 72, 33, 'ProductOption', NULL),
(932, 72, 31, 'ProductOption', NULL),
(933, 72, 34, 'ProductOption', NULL),
(937, 50, 32, 'ProductOption', NULL),
(938, 50, 33, 'ProductOption', NULL),
(939, 50, 31, 'ProductOption', NULL),
(940, 50, 34, 'ProductOption', NULL),
(944, 69, 32, 'ProductOption', NULL),
(945, 69, 33, 'ProductOption', NULL),
(946, 69, 31, 'ProductOption', NULL),
(947, 69, 34, 'ProductOption', NULL),
(951, 71, 32, 'ProductOption', NULL),
(952, 71, 33, 'ProductOption', NULL),
(953, 71, 31, 'ProductOption', NULL),
(954, 71, 34, 'ProductOption', NULL),
(958, 70, 32, 'ProductOption', NULL),
(959, 70, 33, 'ProductOption', NULL),
(960, 70, 31, 'ProductOption', NULL),
(961, 70, 34, 'ProductOption', NULL),
(1008, 192, 2, 'ProductOptionGroup', NULL),
(1009, 192, 3, 'ProductOptionGroup', NULL),
(1010, 192, 4, 'ProductOptionGroup', NULL),
(1014, 193, 2, 'ProductOptionGroup', NULL),
(1015, 193, 3, 'ProductOptionGroup', NULL),
(1016, 193, 4, 'ProductOptionGroup', NULL),
(1144, 188, 3, 'ProductOptionGroup', NULL),
(1145, 188, 4, 'ProductOptionGroup', NULL),
(1146, 188, 6, 'ProductOptionGroup', NULL),
(1147, 188, 8, 'ProductOptionGroup', NULL),
(1148, 90, 4, 'ProductOptionGroup', NULL),
(1149, 90, 5, 'ProductOptionGroup', NULL),
(1150, 95, 4, 'ProductOptionGroup', NULL),
(1151, 95, 5, 'ProductOptionGroup', NULL),
(1152, 96, 4, 'ProductOptionGroup', NULL),
(1153, 96, 5, 'ProductOptionGroup', NULL),
(1154, 187, 3, 'ProductOptionGroup', NULL),
(1155, 187, 4, 'ProductOptionGroup', NULL),
(1156, 187, 6, 'ProductOptionGroup', NULL),
(1157, 187, 7, 'ProductOptionGroup', NULL),
(1183, 194, 7, 'ProductOptionGroup', NULL),
(1184, 190, 2, 'ProductOptionGroup', NULL),
(1185, 190, 4, 'ProductOptionGroup', NULL),
(1202, 198, 3, 'ProductOptionGroup', NULL),
(1321, 77, 4, 'ProductOptionGroup', NULL),
(1322, 77, 6, 'ProductOptionGroup', NULL),
(1323, 77, 7, 'ProductOptionGroup', NULL),
(1350, 210, 7, 'ProductOptionGroup', NULL),
(1353, 211, 7, 'ProductOptionGroup', NULL),
(1355, 212, 7, 'ProductOptionGroup', NULL),
(1357, 213, 7, 'ProductOptionGroup', NULL),
(1360, 214, 7, 'ProductOptionGroup', NULL),
(1362, 215, 7, 'ProductOptionGroup', NULL),
(1364, 216, 7, 'ProductOptionGroup', NULL),
(1366, 217, 7, 'ProductOptionGroup', NULL),
(1370, 218, 7, 'ProductOptionGroup', NULL),
(1373, 219, 7, 'ProductOptionGroup', NULL),
(1376, 220, 7, 'ProductOptionGroup', NULL),
(1380, 221, 7, 'ProductOptionGroup', NULL),
(1384, 222, 7, 'ProductOptionGroup', NULL),
(1386, 223, 7, 'ProductOptionGroup', NULL),
(1389, 224, 7, 'ProductOptionGroup', NULL),
(1391, 225, 7, 'ProductOptionGroup', NULL),
(1394, 226, 7, 'ProductOptionGroup', NULL),
(1396, 227, 7, 'ProductOptionGroup', NULL),
(1456, 209, 7, 'ProductOptionGroup', NULL),
(1458, 204, 7, 'ProductOptionGroup', NULL),
(1464, 205, 7, 'ProductOptionGroup', NULL),
(1465, 206, 7, 'ProductOptionGroup', NULL),
(1477, 207, 7, 'ProductOptionGroup', NULL),
(1483, 203, 7, 'ProductOptionGroup', NULL),
(1494, 245, 7, 'ProductOptionGroup', NULL),
(1495, 244, 7, 'ProductOptionGroup', NULL),
(1496, 243, 7, 'ProductOptionGroup', NULL),
(1497, 242, 7, 'ProductOptionGroup', NULL),
(1498, 241, 7, 'ProductOptionGroup', NULL),
(1499, 240, 7, 'ProductOptionGroup', NULL),
(1500, 239, 7, 'ProductOptionGroup', NULL),
(1501, 238, 7, 'ProductOptionGroup', NULL),
(1502, 237, 7, 'ProductOptionGroup', NULL),
(1505, 235, 7, 'ProductOptionGroup', NULL),
(1506, 236, 7, 'ProductOptionGroup', NULL),
(1508, 234, 7, 'ProductOptionGroup', NULL),
(1509, 233, 7, 'ProductOptionGroup', NULL),
(1510, 232, 7, 'ProductOptionGroup', NULL),
(1511, 231, 7, 'ProductOptionGroup', NULL),
(1512, 230, 7, 'ProductOptionGroup', NULL),
(1513, 229, 7, 'ProductOptionGroup', NULL),
(1514, 228, 7, 'ProductOptionGroup', NULL),
(1533, 79, 4, 'ProductOptionGroup', NULL),
(1534, 79, 6, 'ProductOptionGroup', NULL),
(1535, 79, 7, 'ProductOptionGroup', NULL),
(1546, 80, 3, 'ProductOptionGroup', NULL),
(1547, 80, 4, 'ProductOptionGroup', NULL),
(1548, 80, 6, 'ProductOptionGroup', NULL),
(1549, 80, 7, 'ProductOptionGroup', NULL),
(1559, 81, 4, 'ProductOptionGroup', NULL),
(1560, 81, 6, 'ProductOptionGroup', NULL),
(1561, 81, 7, 'ProductOptionGroup', NULL),
(1562, 75, 4, 'ProductOptionGroup', NULL),
(1563, 75, 6, 'ProductOptionGroup', NULL),
(1564, 75, 7, 'ProductOptionGroup', NULL),
(1571, 189, 2, 'ProductOptionGroup', NULL),
(1572, 189, 6, 'ProductOptionGroup', NULL),
(1573, 189, 7, 'ProductOptionGroup', NULL),
(1574, 70, 4, 'ProductOptionGroup', NULL),
(1575, 70, 6, 'ProductOptionGroup', NULL),
(1576, 70, 7, 'ProductOptionGroup', NULL),
(1577, 72, 4, 'ProductOptionGroup', NULL),
(1578, 72, 6, 'ProductOptionGroup', NULL),
(1579, 72, 7, 'ProductOptionGroup', NULL),
(1580, 50, 4, 'ProductOptionGroup', NULL),
(1581, 50, 6, 'ProductOptionGroup', NULL),
(1582, 50, 7, 'ProductOptionGroup', NULL),
(1586, 69, 4, 'ProductOptionGroup', NULL),
(1587, 69, 6, 'ProductOptionGroup', NULL),
(1588, 69, 7, 'ProductOptionGroup', NULL),
(1601, 71, 4, 'ProductOptionGroup', NULL),
(1602, 71, 6, 'ProductOptionGroup', NULL),
(1603, 71, 7, 'ProductOptionGroup', NULL),
(1604, 245, 12, 'ProductOption', NULL),
(1605, 245, 10, 'ProductOption', NULL),
(1606, 245, 14, 'ProductOption', NULL),
(1607, 245, 15, 'ProductOption', NULL),
(1608, 245, 11, 'ProductOption', NULL),
(1609, 69, 12, 'ProductOption', NULL),
(1610, 69, 10, 'ProductOption', NULL),
(1611, 69, 14, 'ProductOption', NULL),
(1612, 69, 15, 'ProductOption', NULL),
(1613, 69, 11, 'ProductOption', NULL),
(1614, 50, 12, 'ProductOption', NULL),
(1615, 50, 10, 'ProductOption', NULL),
(1616, 50, 14, 'ProductOption', NULL),
(1617, 50, 15, 'ProductOption', NULL),
(1618, 50, 11, 'ProductOption', NULL),
(1619, 70, 12, 'ProductOption', NULL),
(1620, 70, 10, 'ProductOption', NULL),
(1621, 70, 14, 'ProductOption', NULL),
(1622, 70, 15, 'ProductOption', NULL),
(1623, 70, 11, 'ProductOption', NULL),
(1624, 71, 12, 'ProductOption', NULL),
(1625, 71, 10, 'ProductOption', NULL),
(1626, 71, 14, 'ProductOption', NULL),
(1627, 71, 15, 'ProductOption', NULL),
(1628, 71, 11, 'ProductOption', NULL),
(1629, 72, 12, 'ProductOption', NULL),
(1630, 72, 10, 'ProductOption', NULL),
(1631, 72, 14, 'ProductOption', NULL),
(1632, 72, 15, 'ProductOption', NULL),
(1633, 72, 11, 'ProductOption', NULL),
(1639, 75, 12, 'ProductOption', NULL),
(1640, 75, 10, 'ProductOption', NULL),
(1641, 75, 14, 'ProductOption', NULL),
(1642, 75, 15, 'ProductOption', NULL),
(1643, 75, 11, 'ProductOption', NULL),
(1644, 77, 12, 'ProductOption', NULL),
(1645, 77, 10, 'ProductOption', NULL),
(1646, 77, 14, 'ProductOption', NULL),
(1647, 77, 15, 'ProductOption', NULL),
(1648, 77, 11, 'ProductOption', NULL),
(1649, 79, 12, 'ProductOption', NULL),
(1650, 79, 10, 'ProductOption', NULL),
(1651, 79, 14, 'ProductOption', NULL),
(1652, 79, 15, 'ProductOption', NULL),
(1653, 79, 11, 'ProductOption', NULL),
(1654, 80, 12, 'ProductOption', NULL),
(1655, 80, 10, 'ProductOption', NULL),
(1656, 80, 14, 'ProductOption', NULL),
(1657, 80, 15, 'ProductOption', NULL),
(1658, 80, 11, 'ProductOption', NULL),
(1659, 81, 12, 'ProductOption', NULL),
(1660, 81, 10, 'ProductOption', NULL),
(1661, 81, 14, 'ProductOption', NULL),
(1662, 81, 15, 'ProductOption', NULL),
(1663, 81, 11, 'ProductOption', NULL),
(1664, 90, 27, 'ProductOption', NULL),
(1665, 90, 30, 'ProductOption', NULL),
(1666, 90, 28, 'ProductOption', NULL),
(1667, 90, 25, 'ProductOption', NULL),
(1668, 90, 24, 'ProductOption', NULL),
(1669, 95, 27, 'ProductOption', NULL),
(1670, 95, 30, 'ProductOption', NULL),
(1671, 95, 28, 'ProductOption', NULL),
(1672, 95, 25, 'ProductOption', NULL),
(1673, 95, 24, 'ProductOption', NULL),
(1674, 96, 27, 'ProductOption', NULL),
(1675, 96, 30, 'ProductOption', NULL),
(1676, 96, 28, 'ProductOption', NULL),
(1677, 96, 25, 'ProductOption', NULL),
(1678, 96, 24, 'ProductOption', NULL),
(1679, 187, 12, 'ProductOption', NULL),
(1680, 187, 10, 'ProductOption', NULL),
(1681, 187, 14, 'ProductOption', NULL),
(1682, 187, 15, 'ProductOption', NULL),
(1683, 187, 11, 'ProductOption', NULL),
(1684, 188, 38, 'ProductOption', NULL),
(1685, 188, 39, 'ProductOption', NULL),
(1686, 188, 40, 'ProductOption', NULL),
(1687, 188, 41, 'ProductOption', NULL),
(1688, 188, 42, 'ProductOption', NULL),
(1689, 190, 35, 'ProductOption', NULL),
(1690, 190, 37, 'ProductOption', NULL),
(1691, 190, 36, 'ProductOption', NULL),
(1692, 193, 35, 'ProductOption', NULL),
(1693, 193, 37, 'ProductOption', NULL),
(1694, 193, 36, 'ProductOption', NULL),
(1695, 193, 25, 'ProductOption', NULL),
(1696, 193, 24, 'ProductOption', NULL),
(1697, 203, 12, 'ProductOption', NULL),
(1698, 203, 10, 'ProductOption', NULL),
(1699, 203, 14, 'ProductOption', NULL),
(1700, 203, 15, 'ProductOption', NULL),
(1701, 203, 11, 'ProductOption', NULL),
(1702, 204, 12, 'ProductOption', NULL),
(1703, 204, 10, 'ProductOption', NULL),
(1704, 204, 14, 'ProductOption', NULL),
(1705, 204, 15, 'ProductOption', NULL),
(1706, 204, 11, 'ProductOption', NULL),
(1707, 205, 12, 'ProductOption', NULL),
(1708, 205, 10, 'ProductOption', NULL),
(1709, 205, 14, 'ProductOption', NULL),
(1710, 205, 15, 'ProductOption', NULL),
(1711, 205, 11, 'ProductOption', NULL),
(1712, 206, 12, 'ProductOption', NULL),
(1713, 206, 10, 'ProductOption', NULL),
(1714, 206, 14, 'ProductOption', NULL),
(1715, 206, 15, 'ProductOption', NULL),
(1716, 206, 11, 'ProductOption', NULL),
(1717, 207, 12, 'ProductOption', NULL),
(1718, 207, 10, 'ProductOption', NULL),
(1719, 207, 14, 'ProductOption', NULL),
(1720, 207, 15, 'ProductOption', NULL),
(1721, 207, 11, 'ProductOption', NULL),
(1722, 209, 12, 'ProductOption', NULL),
(1723, 209, 10, 'ProductOption', NULL),
(1724, 209, 14, 'ProductOption', NULL),
(1725, 209, 15, 'ProductOption', NULL),
(1726, 209, 11, 'ProductOption', NULL),
(1727, 210, 12, 'ProductOption', NULL),
(1728, 210, 10, 'ProductOption', NULL),
(1729, 210, 14, 'ProductOption', NULL),
(1730, 210, 15, 'ProductOption', NULL),
(1731, 210, 11, 'ProductOption', NULL),
(1732, 211, 12, 'ProductOption', NULL),
(1733, 211, 10, 'ProductOption', NULL),
(1734, 211, 14, 'ProductOption', NULL),
(1735, 211, 15, 'ProductOption', NULL),
(1736, 211, 11, 'ProductOption', NULL),
(1737, 212, 12, 'ProductOption', NULL),
(1738, 212, 10, 'ProductOption', NULL),
(1739, 212, 14, 'ProductOption', NULL),
(1740, 212, 15, 'ProductOption', NULL),
(1741, 212, 11, 'ProductOption', NULL),
(1742, 213, 12, 'ProductOption', NULL),
(1743, 213, 10, 'ProductOption', NULL),
(1744, 213, 14, 'ProductOption', NULL),
(1745, 213, 15, 'ProductOption', NULL),
(1746, 213, 11, 'ProductOption', NULL),
(1747, 214, 12, 'ProductOption', NULL),
(1748, 214, 10, 'ProductOption', NULL),
(1749, 214, 14, 'ProductOption', NULL),
(1750, 214, 15, 'ProductOption', NULL),
(1751, 214, 11, 'ProductOption', NULL),
(1752, 215, 12, 'ProductOption', NULL),
(1753, 215, 10, 'ProductOption', NULL),
(1754, 215, 14, 'ProductOption', NULL),
(1755, 215, 15, 'ProductOption', NULL),
(1756, 215, 11, 'ProductOption', NULL),
(1757, 216, 12, 'ProductOption', NULL),
(1758, 216, 10, 'ProductOption', NULL),
(1759, 216, 14, 'ProductOption', NULL),
(1760, 216, 15, 'ProductOption', NULL),
(1761, 216, 11, 'ProductOption', NULL),
(1762, 217, 12, 'ProductOption', NULL),
(1763, 217, 10, 'ProductOption', NULL),
(1764, 217, 14, 'ProductOption', NULL),
(1765, 217, 15, 'ProductOption', NULL),
(1766, 217, 11, 'ProductOption', NULL),
(1767, 218, 12, 'ProductOption', NULL),
(1768, 218, 10, 'ProductOption', NULL),
(1769, 218, 14, 'ProductOption', NULL),
(1770, 218, 15, 'ProductOption', NULL),
(1771, 218, 11, 'ProductOption', NULL),
(1772, 219, 12, 'ProductOption', NULL),
(1773, 219, 10, 'ProductOption', NULL),
(1774, 219, 14, 'ProductOption', NULL),
(1775, 219, 15, 'ProductOption', NULL),
(1776, 219, 11, 'ProductOption', NULL),
(1777, 220, 12, 'ProductOption', NULL),
(1778, 220, 10, 'ProductOption', NULL),
(1779, 220, 14, 'ProductOption', NULL),
(1780, 220, 15, 'ProductOption', NULL),
(1781, 220, 11, 'ProductOption', NULL),
(1782, 221, 12, 'ProductOption', NULL),
(1783, 221, 10, 'ProductOption', NULL),
(1784, 221, 14, 'ProductOption', NULL),
(1785, 221, 15, 'ProductOption', NULL),
(1786, 221, 11, 'ProductOption', NULL),
(1787, 222, 12, 'ProductOption', NULL),
(1788, 222, 10, 'ProductOption', NULL),
(1789, 222, 14, 'ProductOption', NULL),
(1790, 222, 15, 'ProductOption', NULL),
(1791, 222, 11, 'ProductOption', NULL),
(1792, 223, 12, 'ProductOption', NULL),
(1793, 223, 10, 'ProductOption', NULL),
(1794, 223, 14, 'ProductOption', NULL),
(1795, 223, 15, 'ProductOption', NULL),
(1796, 223, 11, 'ProductOption', NULL),
(1797, 224, 12, 'ProductOption', NULL),
(1798, 224, 10, 'ProductOption', NULL),
(1799, 224, 14, 'ProductOption', NULL),
(1800, 224, 15, 'ProductOption', NULL),
(1801, 224, 11, 'ProductOption', NULL),
(1802, 225, 12, 'ProductOption', NULL),
(1803, 225, 10, 'ProductOption', NULL),
(1804, 225, 14, 'ProductOption', NULL),
(1805, 225, 15, 'ProductOption', NULL),
(1806, 225, 11, 'ProductOption', NULL),
(1807, 226, 12, 'ProductOption', NULL),
(1808, 226, 10, 'ProductOption', NULL),
(1809, 226, 14, 'ProductOption', NULL),
(1810, 226, 15, 'ProductOption', NULL),
(1811, 226, 11, 'ProductOption', NULL),
(1812, 227, 12, 'ProductOption', NULL),
(1813, 227, 10, 'ProductOption', NULL),
(1814, 227, 14, 'ProductOption', NULL),
(1815, 227, 15, 'ProductOption', NULL),
(1816, 227, 11, 'ProductOption', NULL),
(1817, 228, 12, 'ProductOption', NULL),
(1818, 228, 10, 'ProductOption', NULL),
(1819, 228, 14, 'ProductOption', NULL),
(1820, 228, 15, 'ProductOption', NULL),
(1821, 228, 11, 'ProductOption', NULL),
(1822, 229, 12, 'ProductOption', NULL),
(1823, 229, 10, 'ProductOption', NULL),
(1824, 229, 14, 'ProductOption', NULL),
(1825, 229, 15, 'ProductOption', NULL),
(1826, 229, 11, 'ProductOption', NULL),
(1827, 230, 12, 'ProductOption', NULL),
(1828, 230, 10, 'ProductOption', NULL),
(1829, 230, 14, 'ProductOption', NULL),
(1830, 230, 15, 'ProductOption', NULL),
(1831, 230, 11, 'ProductOption', NULL),
(1832, 231, 12, 'ProductOption', NULL),
(1833, 231, 10, 'ProductOption', NULL),
(1834, 231, 14, 'ProductOption', NULL),
(1835, 231, 15, 'ProductOption', NULL),
(1836, 231, 11, 'ProductOption', NULL),
(1837, 232, 12, 'ProductOption', NULL),
(1838, 232, 10, 'ProductOption', NULL),
(1839, 232, 14, 'ProductOption', NULL),
(1840, 232, 15, 'ProductOption', NULL),
(1841, 232, 11, 'ProductOption', NULL),
(1842, 233, 12, 'ProductOption', NULL),
(1843, 233, 10, 'ProductOption', NULL),
(1844, 233, 14, 'ProductOption', NULL),
(1845, 233, 15, 'ProductOption', NULL),
(1846, 233, 11, 'ProductOption', NULL),
(1847, 234, 12, 'ProductOption', NULL),
(1848, 234, 10, 'ProductOption', NULL),
(1849, 234, 14, 'ProductOption', NULL),
(1850, 234, 15, 'ProductOption', NULL),
(1851, 234, 11, 'ProductOption', NULL),
(1852, 235, 12, 'ProductOption', NULL),
(1853, 235, 10, 'ProductOption', NULL),
(1854, 235, 14, 'ProductOption', NULL),
(1855, 235, 15, 'ProductOption', NULL),
(1856, 235, 11, 'ProductOption', NULL),
(1857, 236, 12, 'ProductOption', NULL),
(1858, 236, 10, 'ProductOption', NULL),
(1859, 236, 14, 'ProductOption', NULL),
(1860, 236, 15, 'ProductOption', NULL),
(1861, 236, 11, 'ProductOption', NULL),
(1862, 237, 12, 'ProductOption', NULL),
(1863, 237, 10, 'ProductOption', NULL),
(1864, 237, 14, 'ProductOption', NULL),
(1865, 237, 15, 'ProductOption', NULL),
(1866, 237, 11, 'ProductOption', NULL),
(1867, 238, 12, 'ProductOption', NULL),
(1868, 238, 10, 'ProductOption', NULL),
(1869, 238, 14, 'ProductOption', NULL),
(1870, 238, 15, 'ProductOption', NULL),
(1871, 238, 11, 'ProductOption', NULL),
(1872, 239, 12, 'ProductOption', NULL),
(1873, 239, 10, 'ProductOption', NULL),
(1874, 239, 14, 'ProductOption', NULL),
(1875, 239, 15, 'ProductOption', NULL),
(1876, 239, 11, 'ProductOption', NULL),
(1877, 240, 12, 'ProductOption', NULL),
(1878, 240, 10, 'ProductOption', NULL),
(1879, 240, 14, 'ProductOption', NULL),
(1880, 240, 15, 'ProductOption', NULL),
(1881, 240, 11, 'ProductOption', NULL),
(1882, 241, 12, 'ProductOption', NULL),
(1883, 241, 10, 'ProductOption', NULL),
(1884, 241, 14, 'ProductOption', NULL),
(1885, 241, 15, 'ProductOption', NULL),
(1886, 241, 11, 'ProductOption', NULL),
(1887, 242, 12, 'ProductOption', NULL),
(1888, 242, 10, 'ProductOption', NULL),
(1889, 242, 14, 'ProductOption', NULL),
(1890, 242, 15, 'ProductOption', NULL),
(1891, 242, 11, 'ProductOption', NULL),
(1892, 243, 12, 'ProductOption', NULL),
(1893, 243, 10, 'ProductOption', NULL),
(1894, 243, 14, 'ProductOption', NULL),
(1895, 243, 15, 'ProductOption', NULL),
(1896, 243, 11, 'ProductOption', NULL),
(1897, 244, 12, 'ProductOption', NULL),
(1898, 244, 10, 'ProductOption', NULL),
(1899, 244, 14, 'ProductOption', NULL),
(1900, 244, 15, 'ProductOption', NULL),
(1901, 244, 11, 'ProductOption', NULL),
(1902, 189, 32, 'ProductOption', NULL),
(1903, 189, 33, 'ProductOption', NULL),
(1904, 189, 31, 'ProductOption', NULL),
(1905, 189, 34, 'ProductOption', NULL),
(1906, 189, 35, 'ProductOption', NULL),
(1907, 189, 37, 'ProductOption', NULL),
(1908, 189, 36, 'ProductOption', NULL),
(1909, 189, 12, 'ProductOption', NULL),
(1910, 189, 10, 'ProductOption', NULL),
(1911, 189, 14, 'ProductOption', NULL),
(1912, 189, 15, 'ProductOption', NULL),
(1913, 189, 11, 'ProductOption', NULL),
(1914, 202, 7, 'ProductOptionGroup', NULL),
(1915, 202, 12, 'ProductOption', NULL),
(1916, 202, 10, 'ProductOption', NULL),
(1917, 202, 14, 'ProductOption', NULL),
(1918, 202, 15, 'ProductOption', NULL),
(1919, 202, 11, 'ProductOption', NULL),
(1920, 196, 7, 'ProductOptionGroup', NULL),
(1921, 196, 12, 'ProductOption', NULL),
(1922, 196, 10, 'ProductOption', NULL),
(1923, 196, 14, 'ProductOption', NULL),
(1924, 196, 15, 'ProductOption', NULL),
(1925, 196, 11, 'ProductOption', NULL),
(1926, 195, 7, 'ProductOptionGroup', NULL),
(1927, 195, 12, 'ProductOption', NULL),
(1928, 195, 10, 'ProductOption', NULL),
(1929, 195, 14, 'ProductOption', NULL),
(1930, 195, 15, 'ProductOption', NULL),
(1931, 195, 11, 'ProductOption', NULL),
(1932, 191, 7, 'ProductOptionGroup', NULL),
(1933, 191, 12, 'ProductOption', NULL),
(1934, 191, 10, 'ProductOption', NULL),
(1935, 191, 14, 'ProductOption', NULL),
(1936, 191, 15, 'ProductOption', NULL),
(1937, 191, 11, 'ProductOption', NULL),
(1938, 201, 7, 'ProductOptionGroup', NULL),
(1939, 201, 12, 'ProductOption', NULL),
(1940, 201, 10, 'ProductOption', NULL),
(1941, 201, 14, 'ProductOption', NULL),
(1942, 201, 15, 'ProductOption', NULL),
(1943, 201, 11, 'ProductOption', NULL),
(1944, 199, 7, 'ProductOptionGroup', NULL),
(1945, 199, 12, 'ProductOption', NULL),
(1946, 199, 10, 'ProductOption', NULL),
(1947, 199, 14, 'ProductOption', NULL),
(1948, 199, 15, 'ProductOption', NULL),
(1949, 199, 11, 'ProductOption', NULL),
(1950, 197, 7, 'ProductOptionGroup', NULL),
(1951, 197, 12, 'ProductOption', NULL),
(1952, 197, 10, 'ProductOption', NULL),
(1953, 197, 14, 'ProductOption', NULL),
(1954, 197, 15, 'ProductOption', NULL),
(1955, 197, 11, 'ProductOption', NULL),
(2042, 253, 6, 'ProductOptionGroup', NULL),
(2044, 253, 4, 'ProductOptionGroup', NULL),
(2045, 253, 7, 'ProductOptionGroup', NULL),
(2064, 252, 7, 'ProductOptionGroup', NULL),
(2065, 252, 12, 'ProductOption', NULL),
(2066, 252, 10, 'ProductOption', NULL),
(2067, 252, 14, 'ProductOption', NULL),
(2068, 252, 15, 'ProductOption', NULL),
(2069, 252, 11, 'ProductOption', NULL),
(2070, 252, 6, 'ProductOptionGroup', NULL),
(2071, 252, 32, 'ProductOption', NULL),
(2072, 252, 33, 'ProductOption', NULL),
(2073, 252, 31, 'ProductOption', NULL),
(2074, 252, 34, 'ProductOption', NULL),
(2075, 252, 45, 'ProductOption', NULL),
(2076, 252, 44, 'ProductOption', NULL),
(2077, 252, 46, 'ProductOption', NULL),
(2078, 252, 47, 'ProductOption', NULL),
(2079, 252, 4, 'ProductOptionGroup', NULL),
(2080, 252, 25, 'ProductOption', NULL),
(2081, 252, 24, 'ProductOption', NULL),
(2101, 253, 45, 'ProductOption', NULL),
(2102, 253, 44, 'ProductOption', NULL),
(2103, 253, 46, 'ProductOption', NULL),
(2104, 253, 47, 'ProductOption', NULL),
(2105, 253, 25, 'ProductOption', NULL),
(2106, 253, 24, 'ProductOption', NULL),
(2107, 253, 12, 'ProductOption', NULL),
(2108, 253, 10, 'ProductOption', NULL),
(2109, 253, 14, 'ProductOption', NULL),
(2110, 253, 15, 'ProductOption', NULL),
(2111, 253, 11, 'ProductOption', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `option_group_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thumb` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `key`, `option_group_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `thumb`) VALUES
(10, 'Gallery', 'natural', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 'White', 'white', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 'Black', 'black', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 'Mirror', 'm_wrap', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 'Spot Colour', 'red', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 'Vertical', 'vertical', 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 'Horizontal', 'horizontal', 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 'Black', 'black_frame', 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 'White', 'w_frame', 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 'Mahogany', 'm_frame', 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, '1 Box', '1d', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, '0.5" Box', '0.50000d', 6, 0, 0, '0000-00-00 00:00:00', '2017-01-17 23:49:17', NULL),
(33, '1.5\'\' Box', '1.50000d', 6, 0, 0, '0000-00-00 00:00:00', '2017-01-17 23:49:26', NULL),
(34, '2" Box', '2d', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, 'Black Edge', 'blackedge', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(36, 'White Edge', 'white_edge', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, 'Brush Silver Edge', 'silver_edge', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, '1&#039;&#039; Border', '1border', 8, 0, 0, '0000-00-00 00:00:00', '2017-03-30 01:22:15', NULL),
(39, '2&#039;&#039; Border', '2border', 8, 0, 0, '0000-00-00 00:00:00', '2017-03-30 01:22:12', NULL),
(40, '3&#039;&#039; Border', '3border', 8, 0, 0, '0000-00-00 00:00:00', '2017-03-30 01:22:10', NULL),
(41, '4&#039;&#039; Border', '4border', 8, 0, 0, '0000-00-00 00:00:00', '2017-03-30 01:22:06', NULL),
(42, '5&#039;&#039; Border', '5border', 8, 0, 0, '0000-00-00 00:00:00', '2017-03-30 01:22:03', NULL),
(44, '30mm Gallery Depth', '1.1811_d', 6, 0, 0, '2017-01-16 06:23:31', '2017-01-18 00:18:39', '/assets/images/options/box-depth-30mm.jpg'),
(45, '20mm Gallery Depth', '0.787402_d', 6, 0, 0, '2017-01-16 06:24:58', '2017-01-18 00:18:35', '/assets/images/options/box-depth-20mm.jpg'),
(46, '40mm Gallery Depth', '1.5748_d', 6, 0, 0, '2017-01-16 06:25:14', '2017-01-18 00:18:31', '/assets/images/options/box-depth-40mm.jpg'),
(47, '50mm Gallery Depth', '1.9685_d', 6, 0, 0, '2017-01-16 06:25:32', '2017-01-18 00:18:24', '/assets/images/options/box-depth-50mm.jpg'),
(50, '0.5\'\' box', '0.5000000d', 6, 0, 0, '0000-00-00 00:00:00', '2017-01-17 23:49:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `key`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Edge Color', 'edge_color', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Orientation', 'orientation', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Frame Colour', 'frame_colour', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Depth', 'depth', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Wrap Option', 'wrap_option', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Border', 'border', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(5) UNSIGNED NOT NULL,
  `contact_id` int(5) NOT NULL DEFAULT '0' COMMENT '0 means GUEST',
  `email` varchar(250) DEFAULT NULL,
  `billing_address` text,
  `shipping_address` text NOT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Not Confirms Yet, 1: In Progress, 2: Submited, 3: Completed, 4: Cancelled',
  `payment_term_id` tinyint(1) DEFAULT '0' COMMENT '0: Pending, 1: Paid',
  `sum_sub_total` float NOT NULL,
  `discount` float NOT NULL,
  `tax` text NOT NULL,
  `shipping_price` float NOT NULL,
  `total` float NOT NULL,
  `voucher` varchar(250) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL,
  `note` text,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sale_order_type` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `contact_name` text NOT NULL,
  `phone` text NOT NULL,
  `salesorder_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_due_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` text NOT NULL,
  `payment_terms` int(11) NOT NULL,
  `taxval` float NOT NULL,
  `customer_po_no` text NOT NULL,
  `heading` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delivery_method` text NOT NULL,
  `shipper` text NOT NULL,
  `shipper_id` text NOT NULL,
  `sum_amount` float NOT NULL,
  `sum_tax` float NOT NULL,
  `jt_order_id` text NOT NULL,
  `jt_contact_id` text NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `billing_address_id` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `status` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `sum_sub_total` double NOT NULL,
  `discount` double NOT NULL,
  `tax` double NOT NULL,
  `sum_tax` double NOT NULL,
  `sum_amount` double NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_address_id`, `shipping_address_id`, `status`, `sum_sub_total`, `discount`, `tax`, `sum_tax`, `sum_amount`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 2, 'New', 41.98, 0, 5, 2.1, 44.08, '', 0, 0, '2015-06-24 19:20:51', '2015-06-24 19:20:51'),
(2, 7, 5, 4, 'New', 41.98, 0, 5, 2.1, 44.08, '', 0, 0, '2015-06-24 20:46:01', '2015-06-24 20:46:01'),
(3, 7, 7, 6, 'New', 272.15, 0, 5, 13.61, 285.76, '', 0, 0, '2015-06-25 15:02:40', '2015-06-25 15:02:40'),
(4, 12, 11, 10, 'New', 37.99, 0, 0, 0, 37.99, '', 0, 0, '2017-01-31 22:15:06', '2017-01-31 22:15:06'),
(5, 10, 13, 12, 'New', 35.87, 0, 5, 1.79, 37.66, '', 0, 0, '2017-02-09 21:13:18', '2017-02-09 21:13:18'),
(6, 10, 15, 14, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-02-15 19:05:24', '2017-02-15 19:05:24'),
(7, 10, 17, 16, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-02-15 19:06:06', '2017-02-15 19:06:06'),
(8, 10, 19, 18, 'New', 0, 0, 5, 0, 0, '', 0, 0, '2017-03-10 21:00:31', '2017-03-10 21:00:31'),
(9, 19, 37, 36, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-21 20:54:29', '2017-03-21 20:54:29'),
(10, 18, 39, 38, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-21 20:54:32', '2017-03-21 20:54:32'),
(11, 18, 42, 41, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-22 16:53:25', '2017-03-22 16:53:25'),
(12, 18, 44, 43, 'New', 0, 0, 5, 0, 0, '', 0, 0, '2017-03-22 17:48:53', '2017-03-22 17:48:53'),
(13, 18, 46, 45, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-22 21:46:25', '2017-03-22 21:46:25'),
(14, 18, 48, 47, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-22 22:20:24', '2017-03-22 22:20:24'),
(15, 18, 50, 49, 'New', 0, 0, 0, 0, 0, 'tea', 0, 0, '2017-03-22 22:31:35', '2017-03-22 22:31:35'),
(16, 22, 54, 53, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-23 18:08:03', '2017-03-23 18:08:03'),
(17, 18, 58, 57, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-23 23:18:18', '2017-03-23 23:18:18'),
(18, 23, 61, 60, 'New', 0, 0, 0, 0, 0, 'adadada', 0, 0, '2017-03-24 05:37:23', '2017-03-24 05:37:23'),
(19, 24, 63, 62, 'New', 0, 0, 0, 0, 0, 'dadada', 0, 0, '2017-03-24 05:39:02', '2017-03-24 05:39:02'),
(20, 30, 80, 79, 'New', 0, 0, 0, 0, 0, 'bbjn', 0, 0, '2017-03-27 07:48:34', '2017-03-27 07:48:34'),
(21, 18, 89, 88, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-28 17:10:11', '2017-03-28 17:10:11'),
(22, 18, 91, 90, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-28 17:14:55', '2017-03-28 17:14:55'),
(23, 36, 93, 92, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-28 23:56:21', '2017-03-28 23:56:21'),
(24, 19, 95, 94, 'New', 0, 0, 13, 0, 0, '', 0, 0, '2017-03-29 17:33:28', '2017-03-29 17:33:28'),
(25, 18, 97, 96, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-29 17:40:00', '2017-03-29 17:40:00'),
(26, 38, 99, 98, 'New', 0, 0, 14, 0, 0, '', 0, 0, '2017-03-29 17:43:47', '2017-03-29 17:43:47'),
(27, 18, 101, 100, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-29 18:08:24', '2017-03-29 18:08:24'),
(28, 18, 103, 102, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-29 18:29:31', '2017-03-29 18:29:31'),
(29, 18, 105, 104, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-29 23:57:10', '2017-03-29 23:57:10'),
(30, 18, 107, 106, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 16:53:41', '2017-03-30 16:53:41'),
(31, 18, 109, 108, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:15:15', '2017-03-30 17:15:15'),
(32, 18, 111, 110, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:15:21', '2017-03-30 17:15:21'),
(33, 18, 113, 112, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:15:24', '2017-03-30 17:15:24'),
(34, 18, 115, 114, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:15:26', '2017-03-30 17:15:26'),
(35, 18, 117, 116, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:16:20', '2017-03-30 17:16:20'),
(36, 18, 119, 118, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:16:28', '2017-03-30 17:16:28'),
(37, 18, 121, 120, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-30 17:16:57', '2017-03-30 17:16:57'),
(38, 40, 125, 124, 'New', 0, 0, 14, 0, 0, '', 0, 0, '2017-03-30 18:53:44', '2017-03-30 18:53:44'),
(39, 18, 128, 127, 'New', 0, 0, 5, 0, 0, '', 0, 0, '2017-03-31 18:25:41', '2017-03-31 18:25:41'),
(40, 18, 130, 129, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-31 18:38:40', '2017-03-31 18:38:40'),
(41, 18, 132, 131, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-31 18:38:58', '2017-03-31 18:38:58'),
(42, 18, 134, 133, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-03-31 18:48:28', '2017-03-31 18:48:28'),
(43, 30, 136, 135, 'New', 0, 0, 14, 0, 0, 'This is a test', 0, 0, '2017-04-01 00:56:15', '2017-04-01 00:56:15'),
(44, 30, 138, 137, 'New', 0, 0, 0, 0, 0, 'This is a test', 0, 0, '2017-04-01 01:08:17', '2017-04-01 01:08:17'),
(45, 30, 140, 139, 'New', 0, 0, 0, 0, 0, 'This is a test', 0, 0, '2017-04-01 01:14:31', '2017-04-01 01:14:31'),
(46, 18, 142, 141, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-03 17:49:23', '2017-04-03 17:49:23'),
(47, 18, 144, 143, 'New', 0, 0, 5, 0, 0, '', 0, 0, '2017-04-03 20:36:50', '2017-04-03 20:36:50'),
(48, 14, 146, 145, 'New', 0, 0, 14, 0, 0, 'This is a test', 0, 0, '2017-04-04 00:25:25', '2017-04-04 00:25:25'),
(49, 18, 148, 147, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-04 15:21:22', '2017-04-04 15:21:22'),
(50, 45, 152, 151, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-04 19:13:56', '2017-04-04 19:13:56'),
(51, 18, 154, 153, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-05 16:33:29', '2017-04-05 16:33:29'),
(52, 18, 156, 155, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-06 17:30:35', '2017-04-06 17:30:35'),
(53, 18, 158, 157, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-08 00:36:09', '2017-04-08 00:36:09'),
(54, 18, 160, 159, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-08 00:36:44', '2017-04-08 00:36:44'),
(55, 25, 162, 161, 'New', 0, 0, 5, 0, 0, 'dadadad', 0, 0, '2017-04-11 02:45:43', '2017-04-11 02:45:43'),
(56, 18, 164, 163, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-19 20:26:18', '2017-04-19 20:26:18'),
(57, 18, 166, 165, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-19 20:30:42', '2017-04-19 20:30:42'),
(58, 18, 168, 167, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-25 01:47:48', '2017-04-25 01:47:48'),
(59, 18, 171, 170, 'New', 0, 0, 0, 0, 0, '', 0, 0, '2017-04-27 01:38:07', '2017-04-27 01:38:07'),
(60, 36, 174, 173, 'New', 0, 0, 5, 0, 0, '', 0, 0, '2017-04-27 01:39:27', '2017-04-27 01:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(5) UNSIGNED NOT NULL,
  `order_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `size` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `image` text,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `markup` int(11) NOT NULL DEFAULT '0',
  `margin` int(11) NOT NULL DEFAULT '0',
  `option_group` text NOT NULL,
  `require` int(11) NOT NULL,
  `group_type` text NOT NULL,
  `same_parent` int(11) NOT NULL,
  `hidden` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `special_order` int(11) NOT NULL,
  `oum` text NOT NULL,
  `product_name` text NOT NULL,
  `sku` text NOT NULL,
  `code` int(11) NOT NULL,
  `sizew` float NOT NULL,
  `sizew_unit` text NOT NULL,
  `sizeh` float NOT NULL,
  `sizeh_unit` text NOT NULL,
  `sell_by` text NOT NULL,
  `discount` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `this_line_no` int(11) NOT NULL,
  `parent_line_no` int(11) NOT NULL,
  `choice` int(11) NOT NULL,
  `user_custom` int(11) NOT NULL,
  `proline_no` int(11) NOT NULL,
  `line_no` int(11) NOT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `xlock_product_name` int(11) NOT NULL,
  `xlock_oum` int(11) NOT NULL,
  `plus_sell_price` float NOT NULL,
  `taxper` float NOT NULL,
  `adj_qty` float NOT NULL,
  `oum_depend` text NOT NULL,
  `plus_unit_price` float NOT NULL,
  `tax` int(11) NOT NULL,
  `amount` float NOT NULL,
  `area` float NOT NULL,
  `perimeter` int(11) NOT NULL,
  `jt_product_id` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `svg_file` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sizeh` double NOT NULL,
  `sizew` double NOT NULL,
  `sell_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `sum_sub_total` double NOT NULL,
  `discount` double NOT NULL,
  `tax` double NOT NULL,
  `sum_tax` double NOT NULL,
  `sum_amount` double NOT NULL,
  `option` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `svg_file`, `sizeh`, `sizew`, `sell_price`, `quantity`, `sum_sub_total`, `discount`, `tax`, `sum_tax`, `sum_amount`, `option`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 71, '/assets/upload/themes/205.206.177.129/orders/svg_71_33754d9cd9c04de60bb3cd38affbf02e.svg', 12, 12, 41.98, 1, 41.98, 0, 5, 2.099, 44.079, '{"size":"12.00\\"x12\\"","bleed":"0.5","wrap":"black","name":"Rhombus ImageStylor Canvas","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/205.206.177.129\\/3d\\/3d_6952312-background-hd-nature_33754d9cd9c04de60bb3cd38affbf02e.png","url":"http:\\/\\/vi.anvyonline.com\\/collections\\/shaped-imagestylor-canvas\\/rhombus-imagestylor-canvas","image_path":"\\/var\\/www\\/vi\\/public\\/\\/assets\\/upload\\/themes\\/205.206.177.129\\/3d\\/3d_6952312-background-hd-nature_33754d9cd9c04de60bb3cd38affbf02e.png","type_design":"quick-design","product_id":"71","svg":"\\/assets\\/upload\\/themes\\/205.206.177.129\\/orders\\/svg_71_33754d9cd9c04de60bb3cd38affbf02e.svg","jt_id":"","sku":"IC-2051"}', 0, 0, '2015-06-24 19:20:51', '2015-06-24 19:20:51'),
(2, 2, 71, '/assets/upload/themes/205.206.177.129/orders/svg_71_33754d9cd9c04de60bb3cd38affbf02e.svg', 12, 12, 41.98, 1, 41.98, 0, 5, 2.099, 44.079, '{"size":"12.00\\"x12\\"","bleed":"0.5","wrap":"black","name":"Rhombus ImageStylor Canvas","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/205.206.177.129\\/3d\\/3d_6952312-background-hd-nature_33754d9cd9c04de60bb3cd38affbf02e.png","url":"http:\\/\\/vi.anvyonline.com\\/collections\\/shaped-imagestylor-canvas\\/rhombus-imagestylor-canvas","image_path":"\\/var\\/www\\/vi\\/public\\/\\/assets\\/upload\\/themes\\/205.206.177.129\\/3d\\/3d_6952312-background-hd-nature_33754d9cd9c04de60bb3cd38affbf02e.png","type_design":"quick-design","product_id":"71","svg":"\\/assets\\/upload\\/themes\\/205.206.177.129\\/orders\\/svg_71_33754d9cd9c04de60bb3cd38affbf02e.svg","jt_id":"","sku":"IC-2051"}', 0, 0, '2015-06-24 20:46:01', '2015-06-24 20:46:01'),
(3, 3, 220, '/assets/upload/themes/205.206.177.129/orders/svg_220_559a73adbc2a5d2efeb5875413add394.svg', 0, 0, 272.15, 1, 272.15, 0, 5, 13.6075, 285.7575, '{"wrap":"black","wrap_title":"Black","name":"Four Square L2 - 89\\u201d x 20\\u201d","type":"cluster-design","image":"\\/assets\\/upload\\/themes\\/205.206.177.129\\/png_220_559a73adbc2a5d2efeb5875413add394.png","url":"http:\\/\\/vi.anvyonline.com\\/collections\\/4-square-imagestylor-canvas-cluster\\/four-square-l2-89-x-20","image_path":"\\/var\\/www\\/vi\\/public\\/\\/assets\\/upload\\/themes\\/205.206.177.129\\/png_220_559a73adbc2a5d2efeb5875413add394.png","type_design":"cluster-design","product_id":"220","svg":"\\/assets\\/upload\\/themes\\/205.206.177.129\\/orders\\/svg_220_559a73adbc2a5d2efeb5875413add394.svg","jt_id":"","sku":"WC-2016"}', 0, 0, '2015-06-25 15:02:40', '2015-06-25 15:02:40'),
(4, 4, 74, '/assets/upload/themes/50.99.42.160/orders/svg_74_97801cc5f5b804f8ae996c366ca72933.svg', 0, 0, 37.99, 1, 37.99, 0, 0, 0, 37.99, '{"size":"8\\"x10\\"","bleed":"1.1811","bleed_title":"1.1811","wrap":"natural","wrap_title":"Gallery","name":"ImageStylor Canvas Common Sizes","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_82bf4589495213086cd31d40b0427e61_97801cc5f5b804f8ae996c366ca72933.png","url":"http:\\/\\/vi.anvyonline.com\\/collections\\/image-gala-box\\/imagestylor-canvas-common-sizes","image_path":"\\/home\\/other\\/domains\\/vi.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_82bf4589495213086cd31d40b0427e61_97801cc5f5b804f8ae996c366ca72933.png","type_design":"quick-design","product_id":74,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_74_97801cc5f5b804f8ae996c366ca72933.svg","jt_id":"","sku":"GB-2043"}', 0, 0, '2017-01-31 22:15:06', '2017-01-31 22:15:06'),
(5, 5, 74, '/assets/upload/themes/50.99.42.160/orders/svg_74_f285e7d95e5a5329bebd9dcbe56c69bc.svg', 0, 0, 35.87, 1, 35.87, 0, 5, 1.7935, 37.6635, '{"size":"8\\"x10\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"ImageStylor Canvas Common Sizes","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_2Q==_f285e7d95e5a5329bebd9dcbe56c69bc.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/image-gala-box\\/imagestylor-canvas-common-sizes","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_2Q==_f285e7d95e5a5329bebd9dcbe56c69bc.png","type_design":"quick-design","product_id":74,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_74_f285e7d95e5a5329bebd9dcbe56c69bc.svg","jt_id":"","sku":"GB-2043"}', 0, 0, '2017-02-09 21:13:18', '2017-02-09 21:13:18'),
(6, 6, 249, '/assets/upload/themes/50.99.42.160/orders/svg_249_47a1dc6554bc15c60e8a790f539c0720.svg', 0, 0, 0, 2, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","bleed_title":"0.5","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_Z_47a1dc6554bc15c60e8a790f539c0720.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/image-gala-box\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_Z_47a1dc6554bc15c60e8a790f539c0720.png","type_design":"quick-design","product_id":249,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_249_47a1dc6554bc15c60e8a790f539c0720.svg","jt_id":"","sku":"gala0001"}', 0, 0, '2017-02-15 19:05:24', '2017-02-15 19:05:24'),
(7, 6, 249, '/assets/upload/themes/50.99.42.160/orders/svg_249_67e4e0eeb726e3dc2e6ce3478ad84a9d.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"1.1811","bleed_title":"1.1811","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_78688(1)_67e4e0eeb726e3dc2e6ce3478ad84a9d.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/image-gala-box\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_78688(1)_67e4e0eeb726e3dc2e6ce3478ad84a9d.png","type_design":"quick-design","product_id":249,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_249_67e4e0eeb726e3dc2e6ce3478ad84a9d.svg","jt_id":"","sku":"gala0001"}', 0, 0, '2017-02-15 19:05:24', '2017-02-15 19:05:24'),
(8, 6, 202, '/assets/upload/themes/50.99.42.160/orders/svg_202_e5b10def2f36b695e39181c397f2f25e.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"bleed":"0","wrap":"natural","wrap_title":"Gallery","name":"Vertical Drop","type":"wall-collage-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_1487192442756_e5b10def2f36b695e39181c397f2f25e.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/wall-collage\\/vertical-drop","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_1487192442756_e5b10def2f36b695e39181c397f2f25e.png","type_design":"wall-collage-design","product_id":202,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_202_e5b10def2f36b695e39181c397f2f25e.svg","jt_id":"","sku":"wc-6"}', 0, 0, '2017-02-15 19:05:24', '2017-02-15 19:05:24'),
(9, 7, 218, '/assets/upload/themes/50.99.42.160/orders/svg_218_2aecca5f5aca68c811476db1f0b6c12d.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"wrap":"black","wrap_title":"Black","name":"Four Square L1 - 43\\u201d x 43\\u201d","type":"cluster-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/png_218_2aecca5f5aca68c811476db1f0b6c12d.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/4-square-imagestylor-canvas-cluster\\/four-square-l1-43-x-43","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/png_218_2aecca5f5aca68c811476db1f0b6c12d.png","type_design":"cluster-design","product_id":218,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_218_2aecca5f5aca68c811476db1f0b6c12d.svg","jt_id":"","sku":"WC-2014"}', 0, 0, '2017-02-15 19:06:06', '2017-02-15 19:06:06'),
(10, 8, 74, '/assets/upload/themes/50.99.42.160/orders/svg_74_b77ac9996eb2601b910b8e6a30452242.svg', 0, 0, 0, 2, 0, 0, 5, 0, 0, '{"size":"8\\"x10\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"ImageStylor Canvas Common Sizes","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_109ad-e1451711907505-1020x658_b77ac9996eb2601b910b8e6a30452242.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/image-gala-box\\/imagestylor-canvas-common-sizes","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_109ad-e1451711907505-1020x658_b77ac9996eb2601b910b8e6a30452242.png","type_design":"quick-design","product_id":74,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_74_b77ac9996eb2601b910b8e6a30452242.svg","jt_id":"","sku":"GB-2043"}', 0, 0, '2017-03-10 21:00:31', '2017-03-10 21:00:31'),
(11, 9, 74, '/assets/upload/themes/50.99.42.160/orders/svg_74_8073b3bca0be740d3dc0db70916da4ca.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"11\\"x14\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_8073b3bca0be740d3dc0db70916da4ca.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_8073b3bca0be740d3dc0db70916da4ca.png","type_design":"quick-design","product_id":74,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_74_8073b3bca0be740d3dc0db70916da4ca.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-21 20:54:29', '2017-03-21 20:54:29'),
(12, 11, 74, '/assets/upload/themes/50.99.42.160/orders/svg_74_097a63294b1a87a1b202869e05ac85ce.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"11\\"x14\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_6966073-pictures-frames_097a63294b1a87a1b202869e05ac85ce.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_6966073-pictures-frames_097a63294b1a87a1b202869e05ac85ce.png","type_design":"quick-design","product_id":74,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_74_097a63294b1a87a1b202869e05ac85ce.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-22 16:53:25', '2017-03-22 16:53:25'),
(13, 12, 74, '/assets/upload/themes/50.99.42.160/orders/svg_74_097a63294b1a87a1b202869e05ac85ce.svg', 0, 0, 0, 1, 0, 0, 5, 0, 0, '{"size":"11\\"x14\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_6966073-pictures-frames_097a63294b1a87a1b202869e05ac85ce.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_6966073-pictures-frames_097a63294b1a87a1b202869e05ac85ce.png","type_design":"quick-design","product_id":74,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_74_097a63294b1a87a1b202869e05ac85ce.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-22 17:48:53', '2017-03-22 17:48:53'),
(14, 13, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_1a9bb1bbb17dc81517dd4269c7b44a34.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_1a9bb1bbb17dc81517dd4269c7b44a34.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_1a9bb1bbb17dc81517dd4269c7b44a34.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_1a9bb1bbb17dc81517dd4269c7b44a34.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-22 21:46:25', '2017-03-22 21:46:25'),
(15, 14, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_1a9bb1bbb17dc81517dd4269c7b44a34.svg', 0, 0, 0, 4, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_1a9bb1bbb17dc81517dd4269c7b44a34.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_1a9bb1bbb17dc81517dd4269c7b44a34.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_1a9bb1bbb17dc81517dd4269c7b44a34.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-22 22:20:24', '2017-03-22 22:20:24'),
(16, 15, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_61b5cc3d687ef141bce3e4575f9ebb9b.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_2Q==_61b5cc3d687ef141bce3e4575f9ebb9b.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_2Q==_61b5cc3d687ef141bce3e4575f9ebb9b.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_61b5cc3d687ef141bce3e4575f9ebb9b.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-22 22:31:35', '2017-03-22 22:31:35'),
(17, 16, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_50b1cf996c261a47f2691c7a066fc9a0.svg', 0, 0, 0, 2, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_9k=_50b1cf996c261a47f2691c7a066fc9a0.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_9k=_50b1cf996c261a47f2691c7a066fc9a0.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_50b1cf996c261a47f2691c7a066fc9a0.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-23 18:08:03', '2017-03-23 18:08:03'),
(18, 17, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_61b5cc3d687ef141bce3e4575f9ebb9b.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_2Q==_61b5cc3d687ef141bce3e4575f9ebb9b.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_2Q==_61b5cc3d687ef141bce3e4575f9ebb9b.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_61b5cc3d687ef141bce3e4575f9ebb9b.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-23 23:18:18', '2017-03-23 23:18:18'),
(19, 17, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_052adcc0299cbc3a8e72e81fa4c744d0.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_IMG_0267_052adcc0299cbc3a8e72e81fa4c744d0.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_IMG_0267_052adcc0299cbc3a8e72e81fa4c744d0.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_052adcc0299cbc3a8e72e81fa4c744d0.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-23 23:18:18', '2017-03-23 23:18:18'),
(20, 18, 253, '/assets/upload/themes/14.161.69.124/orders/svg_253_922b24e5747776ee1de0b72e3a50f464.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14.161.69.124\\/3d\\/3d_Untitled_922b24e5747776ee1de0b72e3a50f464.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14.161.69.124\\/3d\\/3d_Untitled_922b24e5747776ee1de0b72e3a50f464.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14.161.69.124\\/orders\\/svg_253_922b24e5747776ee1de0b72e3a50f464.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-24 05:37:23', '2017-03-24 05:37:23'),
(21, 19, 253, '/assets/upload/themes/14.161.69.124/orders/svg_253_922b24e5747776ee1de0b72e3a50f464.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14.161.69.124\\/3d\\/3d_Untitled_922b24e5747776ee1de0b72e3a50f464.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14.161.69.124\\/3d\\/3d_Untitled_922b24e5747776ee1de0b72e3a50f464.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14.161.69.124\\/orders\\/svg_253_922b24e5747776ee1de0b72e3a50f464.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-24 05:39:02', '2017-03-24 05:39:02'),
(22, 20, 253, '/assets/upload/themes/14.186.248.112/orders/svg_253_d4b81f4bcfbcea102c51ab1f7a4c6316.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14.186.248.112\\/3d\\/3d__d4b81f4bcfbcea102c51ab1f7a4c6316.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14.186.248.112\\/3d\\/3d__d4b81f4bcfbcea102c51ab1f7a4c6316.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14.186.248.112\\/orders\\/svg_253_d4b81f4bcfbcea102c51ab1f7a4c6316.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-27 07:48:34', '2017-03-27 07:48:34'),
(23, 21, 253, '/assets/upload/themes/18/orders/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"#00ffc4","wrap_title":"Spot Colour","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-28 17:10:11', '2017-03-28 17:10:11'),
(24, 22, 253, '/assets/upload/themes/18/orders/svg_253_43a727633ec27786189e51657956e167.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_13800409211379519450alloybox-1-750x430_43a727633ec27786189e51657956e167.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_13800409211379519450alloybox-1-750x430_43a727633ec27786189e51657956e167.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_43a727633ec27786189e51657956e167.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-28 17:14:55', '2017-03-28 17:14:55'),
(25, 22, 253, '/assets/upload/themes/18/orders/svg_253_a45c59b7c1fbe504fd74d53df7a5389a.svg', 0, 0, 0, 3, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380132886Alloy-Box_a45c59b7c1fbe504fd74d53df7a5389a.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380132886Alloy-Box_a45c59b7c1fbe504fd74d53df7a5389a.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_a45c59b7c1fbe504fd74d53df7a5389a.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-28 17:14:55', '2017-03-28 17:14:55'),
(26, 23, 253, '/assets/upload/themes/14.186.248.112/orders/svg_253_a8d33298f391311ab8959c338dfb9256.svg', 0, 0, 0, 3, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14.186.248.112\\/3d\\/3d_hfGbx5nhscbLUPwdIVv0FjfK9Gpm3jobd0Ub7aTv3oeY5Tq94xem2ezvQY2QrrYnDnts9KiiOL+9Ld+KnonLEKRp4p79+z8Eqe7HKGVb59io+1Hp3A1D3NGQcccMABBxxwwAEHHHDAAQcccMABBxxwwAEHHHDAAb8+cDr9bwjVrGiPrcDEAAAAAElFTkSuQmCC_a8d33298f391311ab8959c338dfb9256.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14.186.248.112\\/3d\\/3d_hfGbx5nhscbLUPwdIVv0FjfK9Gpm3jobd0Ub7aTv3oeY5Tq94xem2ezvQY2QrrYnDnts9KiiOL+9Ld+KnonLEKRp4p79+z8Eqe7HKGVb59io+1Hp3A1D3NGQcccMABBxxwwAEHHHDAAQcccMABBxxwwAEHHHDAAb8+cDr9bwjVrGiPrcDEAAAAAElFTkSuQmCC_a8d33298f391311ab8959c338dfb9256.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14.186.248.112\\/orders\\/svg_253_a8d33298f391311ab8959c338dfb9256.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-28 23:56:21', '2017-03-28 23:56:21'),
(27, 23, 253, '/assets/upload/themes/14.186.248.112/orders/svg_253_a96cffb1970a4795cbad692cdc26bc9a.svg', 0, 0, 0, 13, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14.186.248.112\\/3d\\/3d_L8HuvIvPX49HwAAAABJRU5ErkJggg==_a96cffb1970a4795cbad692cdc26bc9a.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/graduation-celebration\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14.186.248.112\\/3d\\/3d_L8HuvIvPX49HwAAAABJRU5ErkJggg==_a96cffb1970a4795cbad692cdc26bc9a.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14.186.248.112\\/orders\\/svg_253_a96cffb1970a4795cbad692cdc26bc9a.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-28 23:56:21', '2017-03-28 23:56:21'),
(28, 24, 253, '/assets/upload/themes/37/orders/svg_253_7072307a1849d0a53d9f33a0249e6354.svg', 0, 0, 0, 1, 0, 0, 13, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/37\\/3d\\/3d_2Q==_7072307a1849d0a53d9f33a0249e6354.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/37\\/3d\\/3d_2Q==_7072307a1849d0a53d9f33a0249e6354.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/37\\/orders\\/svg_253_7072307a1849d0a53d9f33a0249e6354.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-29 17:33:28', '2017-03-29 17:33:28'),
(29, 25, 253, '/assets/upload/themes/18/orders/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-29 17:40:00', '2017-03-29 17:40:00'),
(30, 26, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_3dae59128fc786cc9d6407e780addd4c.svg', 0, 0, 0, 1, 0, 0, 14, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_1046_3dae59128fc786cc9d6407e780addd4c.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_1046_3dae59128fc786cc9d6407e780addd4c.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_3dae59128fc786cc9d6407e780addd4c.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-29 17:43:47', '2017-03-29 17:43:47'),
(31, 27, 253, '/assets/upload/themes/18/orders/svg_253_81cafb7113f14713c42c3daebb540dc1.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_9k=_81cafb7113f14713c42c3daebb540dc1.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_9k=_81cafb7113f14713c42c3daebb540dc1.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_81cafb7113f14713c42c3daebb540dc1.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-29 18:08:24', '2017-03-29 18:08:24'),
(32, 28, 253, '/assets/upload/themes/18/orders/svg_253_7d403c9527131ab2806a584921f8714b.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_ms-zachery-runolfsdottir-438_7d403c9527131ab2806a584921f8714b.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_ms-zachery-runolfsdottir-438_7d403c9527131ab2806a584921f8714b.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_7d403c9527131ab2806a584921f8714b.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-29 18:29:31', '2017-03-29 18:29:31'),
(33, 29, 253, '/assets/upload/themes/18/orders/svg_253_0cad95cacef5e2534abff48bb89db065.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_png_253_0cad95cacef5e2534abff48bb89db065.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_png_253_0cad95cacef5e2534abff48bb89db065.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_0cad95cacef5e2534abff48bb89db065.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-29 23:57:10', '2017-03-29 23:57:10'),
(34, 30, 253, '/assets/upload/themes/18/orders/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/wedding-memoir\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-30 16:53:41', '2017-03-30 16:53:41'),
(35, 31, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_6a8408edd7588d732095aaa5420b8226.svg', 0, 0, 0, 3, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"1.1811","bleed_title":"1.1811","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_a5ae7c416f9bc5794ba044b5cb6aaa01_6a8408edd7588d732095aaa5420b8226.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_a5ae7c416f9bc5794ba044b5cb6aaa01_6a8408edd7588d732095aaa5420b8226.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_6a8408edd7588d732095aaa5420b8226.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-30 17:15:15', '2017-03-30 17:15:15'),
(36, 38, 253, '/assets/upload/themes/39/orders/svg_253_7fd68af444d64ab85edbed7d8fcc9460.svg', 0, 0, 0, 1, 0, 0, 14, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/39\\/3d\\/3d_Z_7fd68af444d64ab85edbed7d8fcc9460.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/39\\/3d\\/3d_Z_7fd68af444d64ab85edbed7d8fcc9460.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/39\\/orders\\/svg_253_7fd68af444d64ab85edbed7d8fcc9460.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-30 18:53:44', '2017-03-30 18:53:44'),
(37, 39, 253, '/assets/upload/themes/18/orders/svg_253_7380011c8911673a1a4a7c25c7a9f0f5.svg', 0, 0, 0, 1, 0, 0, 5, 0, 0, '{"size":"12\\"x18\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"natural","wrap_title":"Gallery","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_7380011c8911673a1a4a7c25c7a9f0f5.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_7380011c8911673a1a4a7c25c7a9f0f5.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_7380011c8911673a1a4a7c25c7a9f0f5.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-31 18:25:41', '2017-03-31 18:25:41'),
(38, 39, 253, '/assets/upload/themes/18/orders/svg_253_37230c7428d2aff9d08fd1f400cb02ca.svg', 0, 0, 0, 1, 0, 0, 5, 0, 0, '{"size":"20\\"x30\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"white","wrap_title":"White","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_37230c7428d2aff9d08fd1f400cb02ca.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/home-decor\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_37230c7428d2aff9d08fd1f400cb02ca.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_37230c7428d2aff9d08fd1f400cb02ca.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-31 18:25:41', '2017-03-31 18:25:41'),
(39, 40, 253, '/assets/upload/themes/18/orders/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-31 18:38:40', '2017-03-31 18:38:40'),
(40, 42, 253, '/assets/upload/themes/18/orders/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg', 0, 0, 0, 8, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-03-31 18:48:28', '2017-03-31 18:48:28'),
(42, 44, 253, '/assets/upload/themes/14/orders/svg_253_2b9a4cc455acf61a358e31ac31ecd8c2.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/14\\/gallery\\/Natural-Image-Download-In-High-Quality.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14\\/3d\\/3d_Natural-Image-Download-In-High-Quality_2b9a4cc455acf61a358e31ac31ecd8c2.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14\\/3d\\/3d_Natural-Image-Download-In-High-Quality_2b9a4cc455acf61a358e31ac31ecd8c2.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14\\/orders\\/svg_253_2b9a4cc455acf61a358e31ac31ecd8c2.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-01 01:08:17', '2017-04-01 01:08:17'),
(43, 45, 253, '/assets/upload/themes/14/orders/svg_253_316c24b68502417a3170bf85e5e245fb.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/14\\/gallery\\/images.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14\\/3d\\/3d_2Q==_316c24b68502417a3170bf85e5e245fb.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14\\/3d\\/3d_2Q==_316c24b68502417a3170bf85e5e245fb.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14\\/orders\\/svg_253_316c24b68502417a3170bf85e5e245fb.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-01 01:14:31', '2017-04-01 01:14:31'),
(44, 46, 253, '/assets/upload/themes/45/orders/svg_253_4ffe8ce25999836b30bb00e3c6941d65.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/45\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/45\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_4ffe8ce25999836b30bb00e3c6941d65.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/45\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_4ffe8ce25999836b30bb00e3c6941d65.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/45\\/orders\\/svg_253_4ffe8ce25999836b30bb00e3c6941d65.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-03 17:49:23', '2017-04-03 17:49:23'),
(45, 47, 253, '/assets/upload/themes/45/orders/svg_253_4ffe8ce25999836b30bb00e3c6941d65.svg', 0, 0, 0, 1, 0, 0, 5, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/45\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/45\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_4ffe8ce25999836b30bb00e3c6941d65.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/45\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_4ffe8ce25999836b30bb00e3c6941d65.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/45\\/orders\\/svg_253_4ffe8ce25999836b30bb00e3c6941d65.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-03 20:36:50', '2017-04-03 20:36:50'),
(46, 48, 253, '/assets/upload/themes/14/orders/svg_253_989339992237c82c80334370a303998a.svg', 0, 0, 0, 1, 0, 0, 14, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/14\\/gallery\\/images.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/14\\/3d\\/3d_images_989339992237c82c80334370a303998a.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/14\\/3d\\/3d_images_989339992237c82c80334370a303998a.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/14\\/orders\\/svg_253_989339992237c82c80334370a303998a.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-04 00:25:25', '2017-04-04 00:25:25'),
(47, 49, 253, '/assets/upload/themes/18/orders/svg_253_37230c7428d2aff9d08fd1f400cb02ca.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"20\\"x30\\"","bleed":"0.787402","bleed_title":"1.9685","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_37230c7428d2aff9d08fd1f400cb02ca.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_37230c7428d2aff9d08fd1f400cb02ca.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_37230c7428d2aff9d08fd1f400cb02ca.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-04 15:21:22', '2017-04-04 15:21:22'),
(48, 50, 253, '/assets/upload/themes/45/orders/svg_253_4ffe8ce25999836b30bb00e3c6941d65.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/45\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/45\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_4ffe8ce25999836b30bb00e3c6941d65.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/45\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_4ffe8ce25999836b30bb00e3c6941d65.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/45\\/orders\\/svg_253_4ffe8ce25999836b30bb00e3c6941d65.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-04 19:13:56', '2017-04-04 19:13:56'),
(49, 51, 253, '/assets/upload/themes/18/orders/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"1.1811","bleed_title":"1.1811","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/1380045057Image-Tex.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_1380045057Image-Tex_68edaf932e2e414c02a0d3a4edc13fa7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_68edaf932e2e414c02a0d3a4edc13fa7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-05 16:33:29', '2017-04-05 16:33:29'),
(50, 52, 253, '/assets/upload/themes/18/orders/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-06 17:30:35', '2017-04-06 17:30:35'),
(51, 53, 253, '/assets/upload/themes/18/orders/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg', 0, 0, 0, 5, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"1.1811","bleed_title":"1.1811","wrap":"natural","wrap_title":"Gallery","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_aaf99a16a055dd3534865604ec6f0da7.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_aaf99a16a055dd3534865604ec6f0da7.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-08 00:36:09', '2017-04-08 00:36:09'),
(52, 54, 253, '/assets/upload/themes/18/orders/svg_253_73561217945182e480954ff1edd34823.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/78688(1).jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_78688(1)_73561217945182e480954ff1edd34823.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_78688(1)_73561217945182e480954ff1edd34823.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_73561217945182e480954ff1edd34823.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-08 00:36:44', '2017-04-08 00:36:44'),
(53, 55, 253, '/assets/upload/themes/25/orders/svg_253_248bcf0d7cc59536787cab7f643ddea6.svg', 0, 0, 0, 1, 0, 0, 5, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/25\\/gallery\\/images.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/25\\/3d\\/3d_2Q==_248bcf0d7cc59536787cab7f643ddea6.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/25\\/3d\\/3d_2Q==_248bcf0d7cc59536787cab7f643ddea6.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/25\\/orders\\/svg_253_248bcf0d7cc59536787cab7f643ddea6.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-11 02:45:43', '2017-04-11 02:45:43'),
(54, 56, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_1a9bb1bbb17dc81517dd4269c7b44a34.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","bleed_title":"0.5","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/50.99.42.160\\/gallery\\/o-WEDDING-BOUQUET-facebook.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_1a9bb1bbb17dc81517dd4269c7b44a34.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_o-WEDDING-BOUQUET-facebook_1a9bb1bbb17dc81517dd4269c7b44a34.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_1a9bb1bbb17dc81517dd4269c7b44a34.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-19 20:26:18', '2017-04-19 20:26:18'),
(55, 57, 253, '/assets/upload/themes/18/orders/svg_253_cffcbd5eae759a096b611c465e742981.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.5","bleed_title":"0.5","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/O68Z3N0.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_O68Z3N0_cffcbd5eae759a096b611c465e742981.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_O68Z3N0_cffcbd5eae759a096b611c465e742981.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_cffcbd5eae759a096b611c465e742981.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-19 20:30:42', '2017-04-19 20:30:42');
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `svg_file`, `sizeh`, `sizew`, `sell_price`, `quantity`, `sum_sub_total`, `discount`, `tax`, `sum_tax`, `sum_amount`, `option`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(56, 58, 253, '/assets/upload/themes/18/orders/svg_253_58fe50f0f3218deaa122e2efe0f873e8.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/bon_voyage_7.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_bon_voyage_7_58fe50f0f3218deaa122e2efe0f873e8.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_bon_voyage_7_58fe50f0f3218deaa122e2efe0f873e8.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_58fe50f0f3218deaa122e2efe0f873e8.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-25 01:47:48', '2017-04-25 01:47:48'),
(57, 59, 253, '/assets/upload/themes/50.99.42.160/orders/svg_253_dd6e8fcaae566b2f111de73e8be88827.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/50.99.42.160\\/gallery\\/VH-450-MetalA-FramewithCoroplastinserts.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_VH-450-MetalA-FramewithCoroplastinserts_dd6e8fcaae566b2f111de73e8be88827.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/50.99.42.160\\/3d\\/3d_VH-450-MetalA-FramewithCoroplastinserts_dd6e8fcaae566b2f111de73e8be88827.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/50.99.42.160\\/orders\\/svg_253_dd6e8fcaae566b2f111de73e8be88827.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-27 01:38:07', '2017-04-27 01:38:07'),
(58, 59, 253, '/assets/upload/themes/18/orders/svg_253_0414dae1f770d4c7ddbfa543844585b6.svg', 0, 0, 0, 1, 0, 0, 0, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/18\\/gallery\\/60f5b26976801f8822b318f0735a6b81.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_60f5b26976801f8822b318f0735a6b81_0414dae1f770d4c7ddbfa543844585b6.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/18\\/3d\\/3d_60f5b26976801f8822b318f0735a6b81_0414dae1f770d4c7ddbfa543844585b6.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/18\\/orders\\/svg_253_0414dae1f770d4c7ddbfa543844585b6.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-27 01:38:07', '2017-04-27 01:38:07'),
(59, 60, 253, '/assets/upload/themes/113.172.28.253/orders/svg_253_1a032f8c0d2a3fa2895282bb7beeffcb.svg', 0, 0, 0, 1, 0, 0, 5, 0, 0, '{"size":"12\\"x12\\"","bleed":"0.787402","bleed_title":"0.787402","wrap":"black","wrap_title":"Black","origin_image":"http:\\/\\/vi1.anvyonline.com\\/assets\\/upload\\/themes\\/113.172.28.253\\/gallery\\/images.jpg","name":"Image Gala Box","type":"quick-design","image":"\\/assets\\/upload\\/themes\\/113.172.28.253\\/3d\\/3d_images_1a032f8c0d2a3fa2895282bb7beeffcb.png","url":"http:\\/\\/vi1.anvyonline.com\\/collections\\/indoor-signage\\/image-gala-box","image_path":"\\/home\\/other\\/domains\\/vi1.anvyonline.com\\/public_html\\/\\/assets\\/upload\\/themes\\/113.172.28.253\\/3d\\/3d_images_1a032f8c0d2a3fa2895282bb7beeffcb.png","type_design":"quick-design","product_id":253,"svg":"\\/assets\\/upload\\/themes\\/113.172.28.253\\/orders\\/svg_253_1a032f8c0d2a3fa2895282bb7beeffcb.svg","jt_id":"","sku":"SPE-260"}', 0, 0, '2017-04-27 01:39:27', '2017-04-27 01:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Default',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `short_name`, `content`, `meta_title`, `meta_description`, `type`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Terms', 'terms', '&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;TERMS &amp;amp; CONDITIONS&lt;/span&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;Designs&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;All graphics displayed on the Dolch Designs Website are also strictly copy righted. Please respect our work and have the courtesy not to to copy/steal it in any form.&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;Privacy Policy&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;Dolch Designs respects our customers&#039; account information as private and confidential information and will never share this information with any outside afflictions or individuals.&amp;nbsp;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/span&gt;', '', '', 'Default', 65, 0, 0, 1, '0000-00-00 00:00:00', '2017-03-21 20:44:03'),
(2, 'Terms and Policy', 'terms-and-policy', '&lt;div class=&quot;rte-content colored-links&quot; style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;\r\n&lt;p style=&quot;box-sizing:border-box;color:#000000;margin-bottom:20px;&quot;&gt;Need content for this area....&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing:border-box;color:#000000;margin-bottom:20px;&quot;&gt;&lt;br /&gt;\r\n.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', 'Default', 42, 1, 0, 1, '0000-00-00 00:00:00', '2017-04-04 19:45:24'),
(3, 'About Us', 'about-us', '&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Once an order is placed, 1-3 business days is required to package and ship the order. All orders are shipped via Canada Post. Currently we only offer standard shipping, but if you would like to request express shipping please inform us via our contact tab prior to placing an order. All delivery times are an estimate.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;text-decoration:underline;font-family:Arial, Helvetica, sans-serif;&quot;&gt;&lt;strong&gt;Estimated Delivery Times:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;Canada: Flat Rate $4.95&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Postcards and Paper prints* : 2-5 business days&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All other products : 3-10 business days&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;United States:&nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;Flat Rate $6.95&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Postcards and Paper prints* : 4-6 business days&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All other products&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt; : 6-12 business days&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;International:&nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;Flat Rate $9.95&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Postcards and Paper prints* : 5-8 business days&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All other products&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;&nbsp;: 6-15 business days&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;*Please note that this is an estimate for prints in sizes 8x10 or smaller!&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n', '', '', 'Default', 47, 1, 0, 1, '0000-00-00 00:00:00', '2017-03-20 17:14:53'),
(4, 'About Gotodisplay', 'about-gotodisplay', '&lt;p&gt;&lt;span style=&quot;font-size:small;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Gotodisplay is a division of Anvy Digital that caters to a consumer based market for wall decor products. Designed for the DIY enthusiast, Visual Impact offers you the ability to create beautiful wall collages. From standardized prints to custom options and layours, our collection of decor items and display designs will satisfy and deflight even the most artistic Do-It-Yourselfer.&nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-size:small;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Our innovative products have been designed to last and impress with unique features. Our proven and tried products have been added to the collection for a variety of display options for the office or for the home.&nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-size:small;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All products from the website are produced and supplied from our production facility in Calgary Alberta.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n', '', '', 'Default', 40, 1, 0, 1, '0000-00-00 00:00:00', '2017-04-04 19:44:40'),
(5, 'Contact', 'contact', '&lt;div class=&quot;columns large-4&quot;&gt;&nbsp;\r\n&lt;div class=&quot;page-content rte-content&quot;&gt;\r\n&lt;p&gt;General Information : info@gotodisplay.com&lt;/p&gt;\r\n\r\n&lt;p&gt;Orders : customerservice@&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;gotodisplay&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;.com&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Inquiries : wholesale@&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;gotodisplay&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;.com&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;To request a custom order, please fill out the form with your contact information. Let us know what you&#39;d like to get customized and we will get back to you.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;columns large-7 push-1  &quot;&gt;&nbsp;\r\n&lt;form accept-charset=&quot;UTF-8&quot; class=&quot;contact-form&quot; method=&quot;post&quot;&gt;\r\n&lt;p&gt;&lt;label&gt;Your Name:&lt;/label&gt; &lt;input class=&quot;styled-input&quot; id=&quot;contact_name&quot; name=&quot;contact_name&quot; placeholder=&quot;Your name&quot; type=&quot;text&quot; value=&quot;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;label&gt;Email:&lt;/label&gt; &lt;input class=&quot;styled-input&quot; id=&quot;contact_email&quot; name=&quot;contact_email&quot; placeholder=&quot;your@email.com&quot; required=&quot;required&quot; type=&quot;email&quot; value=&quot;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;label&gt;Phone Number:&lt;/label&gt; &lt;input class=&quot;styled-input&quot; id=&quot;contact_phone&quot; name=&quot;contact_phone&quot; placeholder=&quot;555-555-1234&quot; type=&quot;tel&quot; value=&quot;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;label&gt;Message:&lt;/label&gt;&lt;textarea class=&quot;styled-input&quot; cols=&quot;60&quot; id=&quot;contact_message&quot; name=&quot;contact_message&quot; placeholder=&quot;Your Message&quot; required=&quot;required&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;input class=&quot;button styled-submit&quot; id=&quot;submit&quot; type=&quot;submit&quot; value=&quot;submit&quot; /&gt;&lt;/p&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n', '', '', 'Contact', 0, 0, 0, 1, '0000-00-00 00:00:00', '2017-03-21 19:28:44');
INSERT INTO `pages` (`id`, `name`, `short_name`, `content`, `meta_title`, `meta_description`, `type`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Term of Services', 'term-of-services', '&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;General Terms and Conditions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com is owned and operated by Anvydigital, Inc. By visiting or registering with the gotoDisplays.com website (&quot;Site&quot;), you agree to be bound by the terms and conditions. If you do not agree to all of the terms and conditions, please do not use the &quot;Site.&quot;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Copyright Notice&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You acknowledge that all content included on this Site, including, without limitation, the information, data, software, photographs, graphs, typefaces, graphics, images, illustrations, maps, designs, icons, written and other material and compilations (collectively, &quot;Content&quot;) are intellectual property and copyrighted works of gotoDisplays.com and/or various third-party providers (&quot;Providers&quot;). Reproductions or storage of Content retrieved from this Site, in all forms, media and technologies now existing or hereafter developed, is subject to the Canadian Copyright Act, Bills to amend the Copyright Act.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Corporate Identification and Trademarks&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;&quot;gotoDisplays.com&quot; and any and all other marks appearing on this Site are trademarks of gotoDisplays.com in Canada and other jurisdictions (&quot;Trademarks&quot;). You may not use, copy, reproduce, republish, upload, post, transmit distribute or modify the Trademarks in any way, including in advertising or publicity pertaining to distribution of materials on this Site, without gotoDisplays.com&#39;s prior written consent. The use of Trademarks on any other website or network computer environment is prohibited. gotoDisplays.com prohibits the use of Trademarks as a &quot;hot&quot; link on, or to, any other website unless establishment of such a link is pre-approved by gotoDisplays.com in writing.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;User Conduct&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are solely responsible for the content and context of any materials you post or submit through the Site. You warrant and agree that while using the Site, you shall not upload, post, transmit, distribute or otherwise publish through the Site any materials which: (a) are unlawful, threatening, harassing or profane; (b) restrict or inhibit any other user from using or enjoying the Site; (c) constitute or encourage conduct that would constitute a criminal offense or give rise to civil liability; or (d) contain a virus or other harmful component, advertising of any kind, or false or misleading indications or origin or statements of fact.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Use Restriction&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You may only use this Site to make legitimate requests to purchase the products or services offered (each, a &quot;Request&quot;), and shall not use this Site to make any speculative, false or fraudulent Requests. You may not use robots or other automated means to access this Site, unless specifically permitted by gotoDisplays.com. You represent that you are of sufficient legal age to create binding legal obligations for any liability you may incur as a result of your use of this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You agree to promptly update your membership information (if applicable) in order to keep it current, complete and accurate.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;It is a violation of law to place a Request in a false name or with an invalid credit card. Please be aware that even if you do not give us your real name, your Web browser transmits a unique Internet address to us that can be used by law enforcement officials to identify you. Fraudulent users may be prosecuted to the fullest extent of the law. Permission is granted to electronically copy and print in hard-copy portions of this Site for the sole purpose of using this Site as a shopping resource. Any other use of materials or Content on this Site, including reproduction for a purpose other than that noted above without gotoDisplays.com&#39;s prior written consent is prohibited.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Password&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are solely responsible for protecting the confidentiality of your password and may not disclose your password to any other person. In the event that an unauthorized user gains access to the password-protected area of the Site as a result of your acts or omissions, you agree that you shall be liable for any such unauthorized use.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Privacy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You confirm that you have read, understood and agree to the gotoDisplays.com&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;, the terms of which are incorporated herein, and agree that the terms of such policy are reasonable and satisfactory to you. You consent to the use of your personal information by gotoDisplays.com, its third-party providers, and/or distributors in accordance with the terms of and for the purposes set forth in the gotoDisplays.com&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;. If you are not a resident of Canada, please note that the personal information you submit to the Site will be transferred to Canada and processed by gotoDisplays.com in order to provide this Site and its services to you, or for such other purposes (as set forth in the&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;).&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;DISCLAIMER OF WARRANTIES&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;THE SITE, INCLUDING ALL CONTENT, FUNCTIONS, AND INFORMATION MADE AVAILABLE ON OR ACCESSED THROUGH THE SITE, IS PROVIDED ON AN &quot;AS IS&quot; &quot;AS AVAILABLE&quot; BASIS WITHOUT REPRESENTATIONS OR WARRANTIES OF ANY KIND WHATSOEVER, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. gotoDisplays.com DOES NOT WARRANT THAT THE SITE OR THE FUNCTIONS, FEATURES OR CONTENT CONTAINED THEREIN WILL BE TIMELY, SECURE, UNINTERRUPTED OR ERROR FREE, OR THAT DEFECTS WILL BE CORRECTED. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO CERTAIN USERS.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;LIMITATION OF LIABILITY&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;TO THE FULLEST EXTENT PERMITTED BY LAW, IN NO EVENT SHALL gotoDisplays.com - INCLUDING ITS OFFICERS, DIRECTORS, EMPLOYEES, REPRESENTATIVES, SUCCESSORS, ASSIGNS OR AFFILIATES (COLLECTIVELY, THE &quot;COVERED PARTIES&quot;) - BE LIABLE FOR ANY INJURY, DEATH, LOSS, CLAIM, DAMAGE, ACT OF GOD, ACCIDENT, DELAY, OR ANY SPECIAL, EXEMPLARY, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES OF ANY KIND, WHETHER BASED IN CONTRACT, TORT OR OTHERWISE, WHICH ARISE OUT OF OR ARE IN ANY WAY CONNECTED WITH ANY USE OF THIS SITE OR WITH ANY DELAY OR INABILITY TO USE THIS SITE, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS OR SERVICES OBTAINED THROUGH THIS SITE, EVEN IF A PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO CERTAIN USERS. IN NO EVENT SHALL THE COVERED PARTIES&#39; TOTAL LIABILITY TO YOU FOR ALL DAMAGES, LOSSES AND CAUSES OF ACTION (WHETHER IN CONTRACT OR TORT, INCLUDING BUT NOT LIMITED TO NEGLIGENCE) ARISING FROM THIS AGREEMENT OR YOUR USE OF THE SITE EXCEED THE AMOUNT PAID BY YOU TO gotoDisplays.com FOR THE REQUEST.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Indemnification&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You agree to defend, indemnify and hold harmless the Covered Parties from and against any and all claims, damages, costs and expenses, including attorneys&#39; fees, arising from or related to (A) your use of the Site, (B) your breach of the Terms and Conditions, (C) your dispute with another user, (D) the unauthorized access to any password-protected area of the Site using your password, and (E) any image or content being reproduced as part of your order. If using the Site on behalf of a Third Party (as described below), you agree to defend, indemnify and hold harmless the Covered Parties as described on behalf of yourself and any Third Party.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Third Parties&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;If you use this Site to submit Requests for or on behalf of a third party (&quot;Third Party&quot;), you are responsible for any error in the accuracy of information provided in connection with such use as well as for any Request submitted, including related fees, charges and performance obligations. In addition, you must inform the Third Party of all Terms and Conditions applicable to all products or services acquired through this Site, including all rules and restrictions applicable thereto.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;User Comments, Feedback and Other Submissions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All comments, feedback, suggestions and ideas disclosed, submitted or offered to a Covered Party in connection with your use of this Site (collectively, &quot;Comments&quot;), shall become and remain the exclusive property of gotoDisplays.com. The Comments may be used by a Covered Party in any medium and for any purpose worldwide, without obtaining your specific consent and you relinquish all rights to such Comments. No Covered Party is under any obligation to maintain your Comments (and the use of your first name and first initial of your last name with any comments) in confidence, to pay to you any compensation for any Comments submitted or to respond to any of your Comments. You agree you will be solely responsible for the content of any Comments you make.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Termination&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;This agreement constitutes a binding agreement between you and gotoDisplays.com until terminated by you or gotoDisplays.com, which gotoDisplays.com may do at any time, without notice, in its sole discretion. If you become dissatisfied with the Site, your only recourse is to immediately discontinue use of the Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Changes to Terms and Conditions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;We may, in our sole discretion, change, add or remove any portion of the Terms and Conditions at any time by posting new Terms and Conditions on the Site. Your continue use of the Site after such changes are posted will constitute your agreement to such changes.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Changes to the Site&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;We reserve the right, for any reason, in our sole discretion, to terminate, suspend or change any aspect of the Site including but not limited to content, features or hours of availability. We may impose limits on certain features of the Site or restrict your access to part or all of the Site without notice or penalty.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Miscellaneous&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The captions in these Terms and Conditions are only for convenience and do not, in any way, limit or otherwise define the terms and provisions of these Terms and Conditions. None of the Covered Parties are responsible for any errors or delays in responding to a Request caused by an incorrect email address provided by you or other technical problems beyond their control. If any provision of the Terms and Conditions is held to be invalid or unenforceable by a court of competent jurisdiction, then such provision shall be enforced to the maximum extent possible so as to effect the intent of the Terms and Conditions, and the remainder of the Terms and Conditions shall continue in full force and effect. The failure by either you or gotoDisplays.com to exercise or enforce any right or provision of the Terms and Conditions shall not constitute a waiver of such right or provision. You agree that any cause of action arising out of or related to the Site or the Terms and Conditions must commence within one (1) year after the cause of action arose; otherwise, such cause of action is permanently barred. All provisions in the Terms of Use regarding representations and warranties, indemnification, disclaimers, and limitation of liability shall survive the termination of the Terms and Conditions.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Entire Agreement&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;These Terms and Conditions, together with the&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;&nbsp;and those terms and conditions incorporated herein or referred to herein, constitute the entire agreement (collectively, the &quot;Agreement&quot;) between you and each Covered Party relating to the subject matter hereof, and supersedes any prior understandings or agreements (whether oral or written) regarding the subject matter, and may not be amended or modified except in writing or by making such amendments or modifications available on this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Governing Law&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The internal laws of the Province of Alberta shall govern the performance of these Terms and Conditions, without regard to such state&#39;s conflicts of laws principles. You consent to the exclusive jurisdiction and venue of the courts located in Calgary, Alberta for all disputes arising out of, or relating to, the Terms and Conditions and use of this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Notices&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Except as explicitly stated otherwise, any notices shall be given by email to gotoDisplays.com at&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;info@gotoDisplays.com&lt;/a&gt;&nbsp;or to you at the email address you provide to gotoDisplays.com. Notice shall be deemed given 24 hours after the email is sent, unless the sending party is notified that the email address is invalid.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;How do I contact gotoDisplays.com?&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our postal address is:&lt;br /&gt;\r\n#103, 3016 - 10th Ave. NE, Calgary, Alberta, Canada T2A 6A3&lt;br /&gt;\r\nWe can be reached via email at info@gotoDisplays.com or by telephone at 1-866-912-2689&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;ORDER TERMS AND CONDITIONS&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;h5 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Payment&lt;/span&gt;&lt;/h5&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All prices and amounts shown on this Site are in Candian Dollars (CAD), unless otherwise noted. If a User submits a request on the Site to purchase printing products, mailing services, design services or other services, the User agrees that all charges, taxes and shipping/handling fees will automatically be charged to the credit card or paid by User with an approved payment method. We require each order to be fully paid, including shipping and handling fees, if applicable, before we complete an order. We will not start working on a print job until we receive the full payment.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Once a print job has been approved by customer and is already &quot;In Production&quot;, no changes are allowed to the artwork files, job characteristics, or printing turnaround time. After a print job has been sent to production, the customer is responsible for paying the entire amount of that print job along with applicable taxes and shipping/handling fees, unless otherwise noted.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Return Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;At gotoDisplays.com, we strive to provide our clients with the best possible printing experience. If you are not 100% satisfied with your order for any reason, please contact our customer service department. Our representative will document your complaint and create a ticket for your reference.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-bottom: 10px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;100% Refund or reprint on any defective print orders&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;100% Free expedited reprint on any orders lost in transit&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;20% Refund for every business day that your order is printed late&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All policies are subject to change without prior notification. Defective product refunds and reprints are limited to $1000. Determination of defect is at the discretion of management. In most cases, clients will be requested to submit digital photos documenting the product defect and/or ship the defective products back to customer service. Free expedited reprint on any orders lost in transit is limited to orders less than or equal to $250. Turnaround and shipping for reprint orders will vary depending upon available production capacity and manager&#39;s discretion. Refunds issued for late turnaround will be limited to no more than $200 and calculated as 20% of print total (excluding tax, shipping, handing, and design services) for every business day (excluding weekends and holidays) that the order was late. Direct mail services including printing, mailing services, list services and design services are not subject to standard return policies. Refunds or reprint on direct mail orders will be evaluated on a case-by-case basis&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our Sales Tax Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com charges applicable sales tax allowed/required by laws.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Proofs&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;If requested, an online proof will be available for your review after we have received your file upload. Actual time will vary depending on our current workload. No job will be sent to press without your approval unless waived. It is the customer&#39;s responsibility to log in to their account and check on their proof. We are not liable for delays in the order caused by customer&#39;s non-approval of the proof.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;An online proof is by no means an accurate color reproduction of your final printed piece but is the final opportunity for you to check the layout, bleeds, crops and final text. Electronic proofs do not show transparency and over print issues. Neither do they show color change from RGB or Pantone to CMYK.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The proof must be treated as independent from the original submitted file and thoroughly reviewed prior to approval. It should be checked against the original file for possible errors in layout, copy, spacing, punctuation or image placement. Customer is fully responsible for all that is contained in the final approved proof.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com offers hard copy proofs which show reasonable likeness to the final printed pieces. Such proofs are recommended for color-critical art and must be requested by the customer when the print order is made. Hard copy proofs are printed on a substrate different from the actual paper stock and while it&#39;s main purpose is to show color, variations may occur depending on the finish selected (AQ, matte, UV) for the final print job. We do not offer hard copy proofs for art that would be printed on uncoated paper.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The request for a hard copy proof may involve an additional fee and would extend the amount of time needed to complete the job. For orders where a hard copy proof has been requested, the approval must be received by gotoDisplays.com on or before our published cut-off times. We will make every effort to match colors in production when a hard copy proof is requested. However, it is the customer&#39;s responsibility to determine if they need a hard copy proof with their print order.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Color Accuracy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com will reproduce color from submitted print-ready files as closely as possible, but cannot exactly match color and density (as viewed in a 5000K light booth). Because of inherent limitations with the printing process, as well as neighboring image ink requirements, the accuracy of color reproduction is not guaranteed. By placing an order with gotoDisplays.com you agree to this limitation. We will try our best to match the gradient density of each color, but we accept no responsibility for color variations between submitted files and the final printed piece. Under no circumstances will a reprint be honored for color variations that have occurred during the printing process. We are not liable for color matching or ink density on screen proofs that you approve. Screen proofs will predict design layout, text accuracy, image proportion and placement, but not color or density. Application of UV coating may effect or change the appearance of the printed colors. We are not liable for the final color appearance of a UV coated product.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;No Liability for Errors&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com is not liable for errors in a final product caused by any of the following reasons: Misspelling, Graphics, Bleeds, Grammar, Damage Fonts, Punctuation, Wrong cuts, Incorrect or Missing Folds, Die Lines, Crop Marks, Transparency, Overprint, Cracks on Folds, Finished Product Size. gotoDisplays.com does not make any changes on customer files.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Overprint and Underprint Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Due to the gang run method that gotoDisplays.com uses, we cannot guarantee that every order will be the exact number of items which was ordered. gotoDisplays.com can only guarantee that it will come within plus or minus 10% of the number of items ordered.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Artwork Files&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our prepress department checks all submitted artwork files before printing, but you are still 100% responsible for the accuracy of your print-ready artwork files, and we encourage you to proofread all files carefully before submitting to gotoDisplays.com. gotoDisplays.com is not responsible for any issues as to orientation or alignment of the pages of your submitted artwork. By submitting the artwork to gotoDisplays.com, you certify that you have the right to use the image(s) in your artwork files. DO NOT send any &quot;one-of-kind&quot; transparencies, prints or artwork. Although we take every precaution to safeguard your materials, we are NOT responsible for loss or damage of images or artwork. Under these Terms and Conditions, you agree that you will NOT upload any artwork files consisting of the following material: offensive, indecent or improper material, any material that could give rise to any civil or criminal liability under applicable law; and any material that could infringe rights of privacy, publicity, copyrights or other intellectual property rights without the permission of the owner of these rights and the persons who are shown in the material if applicable. We will refuse an order, which in our opinion may be illegal in nature or an infringement on the rights of any third party. You accept full legal liability for the content of material processed and printed on your behalf and under your instructions. We reserve the right to refuse an order without disclosing a reason.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Printing Turnaround Time&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Printing turnaround time begins once your order has been placed and your print-ready files have been uploaded to your account, attached to your printing job, and approved for printing. Printing turnaround time begins when we receive approval for your proof and full payment has been made. For printing jobs that do not have complete digital source files provided or have submitted files that are not print-ready, printing turnaround begins when we have your print-ready file(s), not from when the order was first submitted. For our Next Day Turnaround option, orders and files must be submitted by 9:00 A.M PST (12 noon EST) and proofs must be approved by 12:00 noon PST (3:00 P.M. EST), to have the item shipped out of our facility on the next business day. In other words, if you approve a proof on your Next Day Turnaround order by 12:00 noon PST on Tuesday, it will be sent out of our facility for shipping by end of business Wednesday. Otherwise, your Next Day Turnaround order placed on Tuesday would ship on Thursday. This applies to Next Day Turnaround orders only. For all other turnaround options, orders and files must be submitted by 1:00 P.M PST (4 P.M. EST) and proofs must be approved by 5:00 P.M. PST (8:00 P.M. EST), printing turnaround time begins the next business day. For example, a job for two-day printing turnaround that you submitted at 3 P.M. PST and approved by 5:00 P.M. PST on Tuesday will be shipped out of our facility by end of business Thursday. Please note that there is no production or shipping on Saturdays, Sundays and Holidays. As a result, these days are not considered when calculating printing turnaround time. In addition, while Production Turnaround includes printing, cutting, and binding, it does not include design, mailing, or shipping transit times, and you should allow additional business days for delivery based on the shipping method you selected. The estimated production turnaround advertised on this site is based on the typical number of hours or days that a print job is completed under normal circumstances, excluding Saturdays, Sundays and holidays. Printing turnaround time for jobs with approved proofs and payment is guaranteed. The remedy for failing to meet a deadline is limited to a 20% refund for every business day of delay. Cancellation of an order based on printing turnaround time is only allowed if the customer indicates in writing (e.g., note posted to order) when placing the original order that a job in the order is time sensitive and must be shipped by target date based on printing turnaround option selected. gotoDisplays.com will not be responsible for shipping-related costs on orders that do not go out by the due date.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Shipping&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Unless you choose Pick Up or Mailing Services, you need to select one of the shipping options presented to you on the Site. All shipping is currently done via carriers such as FedEx or UPS. When choosing a shipping option, please remember that the estimated shipping transit time is based on the number of business days in transit and does not include weekends, holidays or the day the package is picked up by the carrier. For instance, a product shipped 2nd Day Air and picked up on a Thursday would be delivered by end of day Monday.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Shipping transit times vary, and gotoDisplays.com assumes no responsibility for delays caused by shipping carriers, weather or any damages resulting from the failure to receive a job on time. Your order may arrive late due to unforeseen delays in delivery service, the breakdown of equipment, illness, etc.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com&#39;s responsibility is limited to preparing your printing order and turning it over to the carrier for shipping. gotoDisplays.com is not liable for damages which occur during shipping Pick up orders will be kept for 30 days from the delivery of the pick-up notification email. If the order has not been picked up from gotoDisplays.com&#39;s facility within 30 days, it will be recycled. . We cannot ship to P.O. Boxes or APO/FPO&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Target Arrival&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Target arrival dates are calculated by adding the printing turnaround time to the shipping transit time. If you have requested a Hardcopy Proof, factor in approximately six business days to receive and approve your proof. For Next Day Hardcopy Proof, factor in about two business days. Both printing and shipping times are based on business days only and do not include weekends or holidays.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;For example, a product with a printing turnaround time of two business days and a shipping method of 2nd Day Air would have a target arrival date of four business days after your files have been sent to production The cut off time for accepting files is 9:00 A.M. PST (12:00 Noon EST). If your files are in by that time, we will commit to printing and shipping your product within the selected timeframe. Please understand that target arrival dates are estimates, not guarantees. While we will do everything in our power to meet your target arrival date, weather and other occurrences beyond our control may impact our ability to meet that date.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Mailing Services&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Customer&#39;s mailing list(s), while in the possession of gotoDisplays.com is the exclusive property of the customer and shall be used only with customer&#39;s instructions. Customer&#39;s mailing list(s) will not be sold or offered for use to any other party, and gotoDisplays.com will not utilize the list for any other purpose.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All mailing delivery dates are estimates, not guarantees. gotoDisplays.com&#39;s responsibility is limited to preparing your mailing and completing delivery to FedEx or CanadaPost. gotoDisplays.com&#39;s responsibility ends when the job is delivered to the Canada Postal Service Business Mail Entry Unit. In no event shall gotoDisplays.com be liable for FedEx or CanadaPost performance failures or delivery delays.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com shall be liable to rectify printing and mailing errors only to the extent of re-mailing a correction or corrected job as soon as possible, and allowable damages shall be limited to the value of the printing work performed. In no case is gotoDisplays.com liable for loss of business; incidental or consequential damages; or costs in excess of billing for services related to the specific job.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The customer will defend and hold gotoDisplays.com harmless in any suit or court action brought against by others for alleged damages, costs, expenses (including reasonable attorney&#39;s fees), liabilities or losses resulting from circumstances where, acting as the customer&#39;s agent, uses copy, photographs, or illustrations that are believed by others to be degrading, libelous or harmful to their reputations, images, or standing in the community or which in gotoDisplays.com sole judgment is an infringement on a trademark, or trade name, or service mark, or copyright belonging to others, or in a suit or court action brought against for actions of the customer&#39;s employees which may occur as a result of any mailing.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Miscellaneous&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All complaints must be registered within 24 hours of receipt of your final printing job. If we determine that your job contains manufacturing errors and/or defects, we will rerun your job at no charge. All materials we create in producing your printed product are the property of gotoDisplays.com. Although these materials will NOT be sold or given to any other party, we reserve the right to distribute free samples of your printed product. Please note that your printed product or images used for your printed product will not be used in any national advertising without your prior written consent.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Published to the Web&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are responsible for making sure that you have all necessary copyrights for designs (and elements of such designs)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;you are &quot;publishing to the Web&quot;, and you agree that you shall be liable for any copyright infringement.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are responsible for distribution of links to your Public Gallery and/or Public Design(s).&lt;/span&gt;&lt;/p&gt;\r\n', 'term-of-service', 'this is owned and operated by Anvydigital, Inc. By visiting or registering with the gotoDisplays.com website (&quot;Site&quot;), you agree to be bound by the terms and conditions. If you do not agree to all of the terms and conditions, please do not use t', 'Default', 0, 1, 0, 0, '2017-02-01 00:17:48', '2017-02-01 00:56:52');
INSERT INTO `pages` (`id`, `name`, `short_name`, `content`, `meta_title`, `meta_description`, `type`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'Term of Services', 'term-of-services', '&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;General Terms and Conditions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com is owned and operated by Anvydigital, Inc. By visiting or registering with the gotoDisplays.com website (&quot;Site&quot;), you agree to be bound by the terms and conditions. If you do not agree to all of the terms and conditions, please do not use the &quot;Site.&quot;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Copyright Notice&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You acknowledge that all content included on this Site, including, without limitation, the information, data, software, photographs, graphs, typefaces, graphics, images, illustrations, maps, designs, icons, written and other material and compilations (collectively, &quot;Content&quot;) are intellectual property and copyrighted works of gotoDisplays.com and/or various third-party providers (&quot;Providers&quot;). Reproductions or storage of Content retrieved from this Site, in all forms, media and technologies now existing or hereafter developed, is subject to the Canadian Copyright Act, Bills to amend the Copyright Act.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Corporate Identification and Trademarks&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;&quot;gotoDisplays.com&quot; and any and all other marks appearing on this Site are trademarks of gotoDisplays.com in Canada and other jurisdictions (&quot;Trademarks&quot;). You may not use, copy, reproduce, republish, upload, post, transmit distribute or modify the Trademarks in any way, including in advertising or publicity pertaining to distribution of materials on this Site, without gotoDisplays.com&#39;s prior written consent. The use of Trademarks on any other website or network computer environment is prohibited. gotoDisplays.com prohibits the use of Trademarks as a &quot;hot&quot; link on, or to, any other website unless establishment of such a link is pre-approved by gotoDisplays.com in writing.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;User Conduct&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are solely responsible for the content and context of any materials you post or submit through the Site. You warrant and agree that while using the Site, you shall not upload, post, transmit, distribute or otherwise publish through the Site any materials which: (a) are unlawful, threatening, harassing or profane; (b) restrict or inhibit any other user from using or enjoying the Site; (c) constitute or encourage conduct that would constitute a criminal offense or give rise to civil liability; or (d) contain a virus or other harmful component, advertising of any kind, or false or misleading indications or origin or statements of fact.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Use Restriction&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You may only use this Site to make legitimate requests to purchase the products or services offered (each, a &quot;Request&quot;), and shall not use this Site to make any speculative, false or fraudulent Requests. You may not use robots or other automated means to access this Site, unless specifically permitted by gotoDisplays.com. You represent that you are of sufficient legal age to create binding legal obligations for any liability you may incur as a result of your use of this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You agree to promptly update your membership information (if applicable) in order to keep it current, complete and accurate.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;It is a violation of law to place a Request in a false name or with an invalid credit card. Please be aware that even if you do not give us your real name, your Web browser transmits a unique Internet address to us that can be used by law enforcement officials to identify you. Fraudulent users may be prosecuted to the fullest extent of the law. Permission is granted to electronically copy and print in hard-copy portions of this Site for the sole purpose of using this Site as a shopping resource. Any other use of materials or Content on this Site, including reproduction for a purpose other than that noted above without gotoDisplays.com&#39;s prior written consent is prohibited.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Password&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are solely responsible for protecting the confidentiality of your password and may not disclose your password to any other person. In the event that an unauthorized user gains access to the password-protected area of the Site as a result of your acts or omissions, you agree that you shall be liable for any such unauthorized use.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Privacy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You confirm that you have read, understood and agree to the gotoDisplays.com&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;, the terms of which are incorporated herein, and agree that the terms of such policy are reasonable and satisfactory to you. You consent to the use of your personal information by gotoDisplays.com, its third-party providers, and/or distributors in accordance with the terms of and for the purposes set forth in the gotoDisplays.com&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;. If you are not a resident of Canada, please note that the personal information you submit to the Site will be transferred to Canada and processed by gotoDisplays.com in order to provide this Site and its services to you, or for such other purposes (as set forth in the&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;).&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;DISCLAIMER OF WARRANTIES&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;THE SITE, INCLUDING ALL CONTENT, FUNCTIONS, AND INFORMATION MADE AVAILABLE ON OR ACCESSED THROUGH THE SITE, IS PROVIDED ON AN &quot;AS IS&quot; &quot;AS AVAILABLE&quot; BASIS WITHOUT REPRESENTATIONS OR WARRANTIES OF ANY KIND WHATSOEVER, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. gotoDisplays.com DOES NOT WARRANT THAT THE SITE OR THE FUNCTIONS, FEATURES OR CONTENT CONTAINED THEREIN WILL BE TIMELY, SECURE, UNINTERRUPTED OR ERROR FREE, OR THAT DEFECTS WILL BE CORRECTED. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO CERTAIN USERS.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;LIMITATION OF LIABILITY&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;TO THE FULLEST EXTENT PERMITTED BY LAW, IN NO EVENT SHALL gotoDisplays.com - INCLUDING ITS OFFICERS, DIRECTORS, EMPLOYEES, REPRESENTATIVES, SUCCESSORS, ASSIGNS OR AFFILIATES (COLLECTIVELY, THE &quot;COVERED PARTIES&quot;) - BE LIABLE FOR ANY INJURY, DEATH, LOSS, CLAIM, DAMAGE, ACT OF GOD, ACCIDENT, DELAY, OR ANY SPECIAL, EXEMPLARY, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES OF ANY KIND, WHETHER BASED IN CONTRACT, TORT OR OTHERWISE, WHICH ARISE OUT OF OR ARE IN ANY WAY CONNECTED WITH ANY USE OF THIS SITE OR WITH ANY DELAY OR INABILITY TO USE THIS SITE, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS OR SERVICES OBTAINED THROUGH THIS SITE, EVEN IF A PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO CERTAIN USERS. IN NO EVENT SHALL THE COVERED PARTIES&#39; TOTAL LIABILITY TO YOU FOR ALL DAMAGES, LOSSES AND CAUSES OF ACTION (WHETHER IN CONTRACT OR TORT, INCLUDING BUT NOT LIMITED TO NEGLIGENCE) ARISING FROM THIS AGREEMENT OR YOUR USE OF THE SITE EXCEED THE AMOUNT PAID BY YOU TO gotoDisplays.com FOR THE REQUEST.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Indemnification&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You agree to defend, indemnify and hold harmless the Covered Parties from and against any and all claims, damages, costs and expenses, including attorneys&#39; fees, arising from or related to (A) your use of the Site, (B) your breach of the Terms and Conditions, (C) your dispute with another user, (D) the unauthorized access to any password-protected area of the Site using your password, and (E) any image or content being reproduced as part of your order. If using the Site on behalf of a Third Party (as described below), you agree to defend, indemnify and hold harmless the Covered Parties as described on behalf of yourself and any Third Party.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Third Parties&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;If you use this Site to submit Requests for or on behalf of a third party (&quot;Third Party&quot;), you are responsible for any error in the accuracy of information provided in connection with such use as well as for any Request submitted, including related fees, charges and performance obligations. In addition, you must inform the Third Party of all Terms and Conditions applicable to all products or services acquired through this Site, including all rules and restrictions applicable thereto.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;User Comments, Feedback and Other Submissions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All comments, feedback, suggestions and ideas disclosed, submitted or offered to a Covered Party in connection with your use of this Site (collectively, &quot;Comments&quot;), shall become and remain the exclusive property of gotoDisplays.com. The Comments may be used by a Covered Party in any medium and for any purpose worldwide, without obtaining your specific consent and you relinquish all rights to such Comments. No Covered Party is under any obligation to maintain your Comments (and the use of your first name and first initial of your last name with any comments) in confidence, to pay to you any compensation for any Comments submitted or to respond to any of your Comments. You agree you will be solely responsible for the content of any Comments you make.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Termination&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;This agreement constitutes a binding agreement between you and gotoDisplays.com until terminated by you or gotoDisplays.com, which gotoDisplays.com may do at any time, without notice, in its sole discretion. If you become dissatisfied with the Site, your only recourse is to immediately discontinue use of the Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Changes to Terms and Conditions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;We may, in our sole discretion, change, add or remove any portion of the Terms and Conditions at any time by posting new Terms and Conditions on the Site. Your continue use of the Site after such changes are posted will constitute your agreement to such changes.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Changes to the Site&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;We reserve the right, for any reason, in our sole discretion, to terminate, suspend or change any aspect of the Site including but not limited to content, features or hours of availability. We may impose limits on certain features of the Site or restrict your access to part or all of the Site without notice or penalty.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Miscellaneous&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The captions in these Terms and Conditions are only for convenience and do not, in any way, limit or otherwise define the terms and provisions of these Terms and Conditions. None of the Covered Parties are responsible for any errors or delays in responding to a Request caused by an incorrect email address provided by you or other technical problems beyond their control. If any provision of the Terms and Conditions is held to be invalid or unenforceable by a court of competent jurisdiction, then such provision shall be enforced to the maximum extent possible so as to effect the intent of the Terms and Conditions, and the remainder of the Terms and Conditions shall continue in full force and effect. The failure by either you or gotoDisplays.com to exercise or enforce any right or provision of the Terms and Conditions shall not constitute a waiver of such right or provision. You agree that any cause of action arising out of or related to the Site or the Terms and Conditions must commence within one (1) year after the cause of action arose; otherwise, such cause of action is permanently barred. All provisions in the Terms of Use regarding representations and warranties, indemnification, disclaimers, and limitation of liability shall survive the termination of the Terms and Conditions.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Entire Agreement&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;These Terms and Conditions, together with the&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;&nbsp;and those terms and conditions incorporated herein or referred to herein, constitute the entire agreement (collectively, the &quot;Agreement&quot;) between you and each Covered Party relating to the subject matter hereof, and supersedes any prior understandings or agreements (whether oral or written) regarding the subject matter, and may not be amended or modified except in writing or by making such amendments or modifications available on this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Governing Law&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The internal laws of the Province of Alberta shall govern the performance of these Terms and Conditions, without regard to such state&#39;s conflicts of laws principles. You consent to the exclusive jurisdiction and venue of the courts located in Calgary, Alberta for all disputes arising out of, or relating to, the Terms and Conditions and use of this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Notices&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Except as explicitly stated otherwise, any notices shall be given by email to gotoDisplays.com at&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;info@gotoDisplays.com&lt;/a&gt;&nbsp;or to you at the email address you provide to gotoDisplays.com. Notice shall be deemed given 24 hours after the email is sent, unless the sending party is notified that the email address is invalid.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;How do I contact gotoDisplays.com?&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our postal address is:&lt;br /&gt;\r\n#103, 3016 - 10th Ave. NE, Calgary, Alberta, Canada T2A 6A3&lt;br /&gt;\r\nWe can be reached via email at info@gotoDisplays.com or by telephone at 1-866-912-2689&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;ORDER TERMS AND CONDITIONS&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;h5 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 14px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Payment&lt;/span&gt;&lt;/h5&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All prices and amounts shown on this Site are in Candian Dollars (CAD), unless otherwise noted. If a User submits a request on the Site to purchase printing products, mailing services, design services or other services, the User agrees that all charges, taxes and shipping/handling fees will automatically be charged to the credit card or paid by User with an approved payment method. We require each order to be fully paid, including shipping and handling fees, if applicable, before we complete an order. We will not start working on a print job until we receive the full payment.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Once a print job has been approved by customer and is already &quot;In Production&quot;, no changes are allowed to the artwork files, job characteristics, or printing turnaround time. After a print job has been sent to production, the customer is responsible for paying the entire amount of that print job along with applicable taxes and shipping/handling fees, unless otherwise noted.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Return Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;At gotoDisplays.com, we strive to provide our clients with the best possible printing experience. If you are not 100% satisfied with your order for any reason, please contact our customer service department. Our representative will document your complaint and create a ticket for your reference.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin-bottom: 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;100% Refund or reprint on any defective print orders&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;100% Free expedited reprint on any orders lost in transit&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;20% Refund for every business day that your order is printed late&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All policies are subject to change without prior notification. Defective product refunds and reprints are limited to $1000. Determination of defect is at the discretion of management. In most cases, clients will be requested to submit digital photos documenting the product defect and/or ship the defective products back to customer service. Free expedited reprint on any orders lost in transit is limited to orders less than or equal to $250. Turnaround and shipping for reprint orders will vary depending upon available production capacity and manager&#39;s discretion. Refunds issued for late turnaround will be limited to no more than $200 and calculated as 20% of print total (excluding tax, shipping, handing, and design services) for every business day (excluding weekends and holidays) that the order was late. Direct mail services including printing, mailing services, list services and design services are not subject to standard return policies. Refunds or reprint on direct mail orders will be evaluated on a case-by-case basis&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our Sales Tax Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com charges applicable sales tax allowed/required by laws.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Proofs&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;If requested, an online proof will be available for your review after we have received your file upload. Actual time will vary depending on our current workload. No job will be sent to press without your approval unless waived. It is the customer&#39;s responsibility to log in to their account and check on their proof. We are not liable for delays in the order caused by customer&#39;s non-approval of the proof.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;An online proof is by no means an accurate color reproduction of your final printed piece but is the final opportunity for you to check the layout, bleeds, crops and final text. Electronic proofs do not show transparency and over print issues. Neither do they show color change from RGB or Pantone to CMYK.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The proof must be treated as independent from the original submitted file and thoroughly reviewed prior to approval. It should be checked against the original file for possible errors in layout, copy, spacing, punctuation or image placement. Customer is fully responsible for all that is contained in the final approved proof.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com offers hard copy proofs which show reasonable likeness to the final printed pieces. Such proofs are recommended for color-critical art and must be requested by the customer when the print order is made. Hard copy proofs are printed on a substrate different from the actual paper stock and while it&#39;s main purpose is to show color, variations may occur depending on the finish selected (AQ, matte, UV) for the final print job. We do not offer hard copy proofs for art that would be printed on uncoated paper.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The request for a hard copy proof may involve an additional fee and would extend the amount of time needed to complete the job. For orders where a hard copy proof has been requested, the approval must be received by gotoDisplays.com on or before our published cut-off times. We will make every effort to match colors in production when a hard copy proof is requested. However, it is the customer&#39;s responsibility to determine if they need a hard copy proof with their print order.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Color Accuracy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com will reproduce color from submitted print-ready files as closely as possible, but cannot exactly match color and density (as viewed in a 5000K light booth). Because of inherent limitations with the printing process, as well as neighboring image ink requirements, the accuracy of color reproduction is not guaranteed. By placing an order with gotoDisplays.com you agree to this limitation. We will try our best to match the gradient density of each color, but we accept no responsibility for color variations between submitted files and the final printed piece. Under no circumstances will a reprint be honored for color variations that have occurred during the printing process. We are not liable for color matching or ink density on screen proofs that you approve. Screen proofs will predict design layout, text accuracy, image proportion and placement, but not color or density. Application of UV coating may effect or change the appearance of the printed colors. We are not liable for the final color appearance of a UV coated product.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;No Liability for Errors&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com is not liable for errors in a final product caused by any of the following reasons: Misspelling, Graphics, Bleeds, Grammar, Damage Fonts, Punctuation, Wrong cuts, Incorrect or Missing Folds, Die Lines, Crop Marks, Transparency, Overprint, Cracks on Folds, Finished Product Size. gotoDisplays.com does not make any changes on customer files.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Overprint and Underprint Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Due to the gang run method that gotoDisplays.com uses, we cannot guarantee that every order will be the exact number of items which was ordered. gotoDisplays.com can only guarantee that it will come within plus or minus 10% of the number of items ordered.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Artwork Files&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our prepress department checks all submitted artwork files before printing, but you are still 100% responsible for the accuracy of your print-ready artwork files, and we encourage you to proofread all files carefully before submitting to gotoDisplays.com. gotoDisplays.com is not responsible for any issues as to orientation or alignment of the pages of your submitted artwork. By submitting the artwork to gotoDisplays.com, you certify that you have the right to use the image(s) in your artwork files. DO NOT send any &quot;one-of-kind&quot; transparencies, prints or artwork. Although we take every precaution to safeguard your materials, we are NOT responsible for loss or damage of images or artwork. Under these Terms and Conditions, you agree that you will NOT upload any artwork files consisting of the following material: offensive, indecent or improper material, any material that could give rise to any civil or criminal liability under applicable law; and any material that could infringe rights of privacy, publicity, copyrights or other intellectual property rights without the permission of the owner of these rights and the persons who are shown in the material if applicable. We will refuse an order, which in our opinion may be illegal in nature or an infringement on the rights of any third party. You accept full legal liability for the content of material processed and printed on your behalf and under your instructions. We reserve the right to refuse an order without disclosing a reason.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Printing Turnaround Time&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Printing turnaround time begins once your order has been placed and your print-ready files have been uploaded to your account, attached to your printing job, and approved for printing. Printing turnaround time begins when we receive approval for your proof and full payment has been made. For printing jobs that do not have complete digital source files provided or have submitted files that are not print-ready, printing turnaround begins when we have your print-ready file(s), not from when the order was first submitted. For our Next Day Turnaround option, orders and files must be submitted by 9:00 A.M PST (12 noon EST) and proofs must be approved by 12:00 noon PST (3:00 P.M. EST), to have the item shipped out of our facility on the next business day. In other words, if you approve a proof on your Next Day Turnaround order by 12:00 noon PST on Tuesday, it will be sent out of our facility for shipping by end of business Wednesday. Otherwise, your Next Day Turnaround order placed on Tuesday would ship on Thursday. This applies to Next Day Turnaround orders only. For all other turnaround options, orders and files must be submitted by 1:00 P.M PST (4 P.M. EST) and proofs must be approved by 5:00 P.M. PST (8:00 P.M. EST), printing turnaround time begins the next business day. For example, a job for two-day printing turnaround that you submitted at 3 P.M. PST and approved by 5:00 P.M. PST on Tuesday will be shipped out of our facility by end of business Thursday. Please note that there is no production or shipping on Saturdays, Sundays and Holidays. As a result, these days are not considered when calculating printing turnaround time. In addition, while Production Turnaround includes printing, cutting, and binding, it does not include design, mailing, or shipping transit times, and you should allow additional business days for delivery based on the shipping method you selected. The estimated production turnaround advertised on this site is based on the typical number of hours or days that a print job is completed under normal circumstances, excluding Saturdays, Sundays and holidays. Printing turnaround time for jobs with approved proofs and payment is guaranteed. The remedy for failing to meet a deadline is limited to a 20% refund for every business day of delay. Cancellation of an order based on printing turnaround time is only allowed if the customer indicates in writing (e.g., note posted to order) when placing the original order that a job in the order is time sensitive and must be shipped by target date based on printing turnaround option selected. gotoDisplays.com will not be responsible for shipping-related costs on orders that do not go out by the due date.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Shipping&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Unless you choose Pick Up or Mailing Services, you need to select one of the shipping options presented to you on the Site. All shipping is currently done via carriers such as FedEx or UPS. When choosing a shipping option, please remember that the estimated shipping transit time is based on the number of business days in transit and does not include weekends, holidays or the day the package is picked up by the carrier. For instance, a product shipped 2nd Day Air and picked up on a Thursday would be delivered by end of day Monday.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Shipping transit times vary, and gotoDisplays.com assumes no responsibility for delays caused by shipping carriers, weather or any damages resulting from the failure to receive a job on time. Your order may arrive late due to unforeseen delays in delivery service, the breakdown of equipment, illness, etc.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com&#39;s responsibility is limited to preparing your printing order and turning it over to the carrier for shipping. gotoDisplays.com is not liable for damages which occur during shipping Pick up orders will be kept for 30 days from the delivery of the pick-up notification email. If the order has not been picked up from gotoDisplays.com&#39;s facility within 30 days, it will be recycled. . We cannot ship to P.O. Boxes or APO/FPO&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Target Arrival&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Target arrival dates are calculated by adding the printing turnaround time to the shipping transit time. If you have requested a Hardcopy Proof, factor in approximately six business days to receive and approve your proof. For Next Day Hardcopy Proof, factor in about two business days. Both printing and shipping times are based on business days only and do not include weekends or holidays.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;For example, a product with a printing turnaround time of two business days and a shipping method of 2nd Day Air would have a target arrival date of four business days after your files have been sent to production The cut off time for accepting files is 9:00 A.M. PST (12:00 Noon EST). If your files are in by that time, we will commit to printing and shipping your product within the selected timeframe. Please understand that target arrival dates are estimates, not guarantees. While we will do everything in our power to meet your target arrival date, weather and other occurrences beyond our control may impact our ability to meet that date.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Mailing Services&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Customer&#39;s mailing list(s), while in the possession of gotoDisplays.com is the exclusive property of the customer and shall be used only with customer&#39;s instructions. Customer&#39;s mailing list(s) will not be sold or offered for use to any other party, and gotoDisplays.com will not utilize the list for any other purpose.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All mailing delivery dates are estimates, not guarantees. gotoDisplays.com&#39;s responsibility is limited to preparing your mailing and completing delivery to FedEx or CanadaPost. gotoDisplays.com&#39;s responsibility ends when the job is delivered to the Canada Postal Service Business Mail Entry Unit. In no event shall gotoDisplays.com be liable for FedEx or CanadaPost performance failures or delivery delays.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com shall be liable to rectify printing and mailing errors only to the extent of re-mailing a correction or corrected job as soon as possible, and allowable damages shall be limited to the value of the printing work performed. In no case is gotoDisplays.com liable for loss of business; incidental or consequential damages; or costs in excess of billing for services related to the specific job.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The customer will defend and hold gotoDisplays.com harmless in any suit or court action brought against by others for alleged damages, costs, expenses (including reasonable attorney&#39;s fees), liabilities or losses resulting from circumstances where, acting as the customer&#39;s agent, uses copy, photographs, or illustrations that are believed by others to be degrading, libelous or harmful to their reputations, images, or standing in the community or which in gotoDisplays.com sole judgment is an infringement on a trademark, or trade name, or service mark, or copyright belonging to others, or in a suit or court action brought against for actions of the customer&#39;s employees which may occur as a result of any mailing.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Miscellaneous&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All complaints must be registered within 24 hours of receipt of your final printing job. If we determine that your job contains manufacturing errors and/or defects, we will rerun your job at no charge. All materials we create in producing your printed product are the property of gotoDisplays.com. Although these materials will NOT be sold or given to any other party, we reserve the right to distribute free samples of your printed product. Please note that your printed product or images used for your printed product will not be used in any national advertising without your prior written consent.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 style=&quot;font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(63, 63, 63); margin-top: 10px; margin-bottom: 10px; font-size: 18px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Published to the Web&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are responsible for making sure that you have all necessary copyrights for designs (and elements of such designs)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;you are &quot;publishing to the Web&quot;, and you agree that you shall be liable for any copyright infringement.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are responsible for distribution of links to your Public Gallery and/or Public Design(s).&lt;/span&gt;&lt;/p&gt;\r\n', 'term-of-service', 'this is owned and operated by Anvydigital, Inc. By visiting or registering with the gotoDisplays.com website (&quot;Site&quot;), you agree to be bound by the terms and conditions. If you do not agree to all of the terms and conditions, please do not use t', 'Default', 0, 1, 0, 0, '2017-02-01 00:17:56', '2017-02-01 00:17:56');
INSERT INTO `pages` (`id`, `name`, `short_name`, `content`, `meta_title`, `meta_description`, `type`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'Term of Services', 'term-of-services', '&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;General Terms and Conditions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com is owned and operated by Anvydigital, Inc. By visiting or registering with the gotoDisplays.com website (&quot;Site&quot;), you agree to be bound by the terms and conditions. If you do not agree to all of the terms and conditions, please do not use the &quot;Site.&quot;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Copyright Notice&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You acknowledge that all content included on this Site, including, without limitation, the information, data, software, photographs, graphs, typefaces, graphics, images, illustrations, maps, designs, icons, written and other material and compilations (collectively, &quot;Content&quot;) are intellectual property and copyrighted works of gotoDisplays.com and/or various third-party providers (&quot;Providers&quot;). Reproductions or storage of Content retrieved from this Site, in all forms, media and technologies now existing or hereafter developed, is subject to the Canadian Copyright Act, Bills to amend the Copyright Act.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Corporate Identification and Trademarks&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;&quot;gotoDisplays.com&quot; and any and all other marks appearing on this Site are trademarks of gotoDisplays.com in Canada and other jurisdictions (&quot;Trademarks&quot;). You may not use, copy, reproduce, republish, upload, post, transmit distribute or modify the Trademarks in any way, including in advertising or publicity pertaining to distribution of materials on this Site, without gotoDisplays.com&#39;s prior written consent. The use of Trademarks on any other website or network computer environment is prohibited. gotoDisplays.com prohibits the use of Trademarks as a &quot;hot&quot; link on, or to, any other website unless establishment of such a link is pre-approved by gotoDisplays.com in writing.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;User Conduct&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are solely responsible for the content and context of any materials you post or submit through the Site. You warrant and agree that while using the Site, you shall not upload, post, transmit, distribute or otherwise publish through the Site any materials which: (a) are unlawful, threatening, harassing or profane; (b) restrict or inhibit any other user from using or enjoying the Site; (c) constitute or encourage conduct that would constitute a criminal offense or give rise to civil liability; or (d) contain a virus or other harmful component, advertising of any kind, or false or misleading indications or origin or statements of fact.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Use Restriction&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You may only use this Site to make legitimate requests to purchase the products or services offered (each, a &quot;Request&quot;), and shall not use this Site to make any speculative, false or fraudulent Requests. You may not use robots or other automated means to access this Site, unless specifically permitted by gotoDisplays.com. You represent that you are of sufficient legal age to create binding legal obligations for any liability you may incur as a result of your use of this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You agree to promptly update your membership information (if applicable) in order to keep it current, complete and accurate.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;It is a violation of law to place a Request in a false name or with an invalid credit card. Please be aware that even if you do not give us your real name, your Web browser transmits a unique Internet address to us that can be used by law enforcement officials to identify you. Fraudulent users may be prosecuted to the fullest extent of the law. Permission is granted to electronically copy and print in hard-copy portions of this Site for the sole purpose of using this Site as a shopping resource. Any other use of materials or Content on this Site, including reproduction for a purpose other than that noted above without gotoDisplays.com&#39;s prior written consent is prohibited.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Password&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are solely responsible for protecting the confidentiality of your password and may not disclose your password to any other person. In the event that an unauthorized user gains access to the password-protected area of the Site as a result of your acts or omissions, you agree that you shall be liable for any such unauthorized use.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Privacy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You confirm that you have read, understood and agree to the gotoDisplays.com&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;, the terms of which are incorporated herein, and agree that the terms of such policy are reasonable and satisfactory to you. You consent to the use of your personal information by gotoDisplays.com, its third-party providers, and/or distributors in accordance with the terms of and for the purposes set forth in the gotoDisplays.com&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;. If you are not a resident of Canada, please note that the personal information you submit to the Site will be transferred to Canada and processed by gotoDisplays.com in order to provide this Site and its services to you, or for such other purposes (as set forth in the&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;).&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;DISCLAIMER OF WARRANTIES&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;THE SITE, INCLUDING ALL CONTENT, FUNCTIONS, AND INFORMATION MADE AVAILABLE ON OR ACCESSED THROUGH THE SITE, IS PROVIDED ON AN &quot;AS IS&quot; &quot;AS AVAILABLE&quot; BASIS WITHOUT REPRESENTATIONS OR WARRANTIES OF ANY KIND WHATSOEVER, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. gotoDisplays.com DOES NOT WARRANT THAT THE SITE OR THE FUNCTIONS, FEATURES OR CONTENT CONTAINED THEREIN WILL BE TIMELY, SECURE, UNINTERRUPTED OR ERROR FREE, OR THAT DEFECTS WILL BE CORRECTED. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO CERTAIN USERS.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;LIMITATION OF LIABILITY&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;TO THE FULLEST EXTENT PERMITTED BY LAW, IN NO EVENT SHALL gotoDisplays.com - INCLUDING ITS OFFICERS, DIRECTORS, EMPLOYEES, REPRESENTATIVES, SUCCESSORS, ASSIGNS OR AFFILIATES (COLLECTIVELY, THE &quot;COVERED PARTIES&quot;) - BE LIABLE FOR ANY INJURY, DEATH, LOSS, CLAIM, DAMAGE, ACT OF GOD, ACCIDENT, DELAY, OR ANY SPECIAL, EXEMPLARY, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL DAMAGES OF ANY KIND, WHETHER BASED IN CONTRACT, TORT OR OTHERWISE, WHICH ARISE OUT OF OR ARE IN ANY WAY CONNECTED WITH ANY USE OF THIS SITE OR WITH ANY DELAY OR INABILITY TO USE THIS SITE, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS OR SERVICES OBTAINED THROUGH THIS SITE, EVEN IF A PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO CERTAIN USERS. IN NO EVENT SHALL THE COVERED PARTIES&#39; TOTAL LIABILITY TO YOU FOR ALL DAMAGES, LOSSES AND CAUSES OF ACTION (WHETHER IN CONTRACT OR TORT, INCLUDING BUT NOT LIMITED TO NEGLIGENCE) ARISING FROM THIS AGREEMENT OR YOUR USE OF THE SITE EXCEED THE AMOUNT PAID BY YOU TO gotoDisplays.com FOR THE REQUEST.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Indemnification&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You agree to defend, indemnify and hold harmless the Covered Parties from and against any and all claims, damages, costs and expenses, including attorneys&#39; fees, arising from or related to (A) your use of the Site, (B) your breach of the Terms and Conditions, (C) your dispute with another user, (D) the unauthorized access to any password-protected area of the Site using your password, and (E) any image or content being reproduced as part of your order. If using the Site on behalf of a Third Party (as described below), you agree to defend, indemnify and hold harmless the Covered Parties as described on behalf of yourself and any Third Party.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Third Parties&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;If you use this Site to submit Requests for or on behalf of a third party (&quot;Third Party&quot;), you are responsible for any error in the accuracy of information provided in connection with such use as well as for any Request submitted, including related fees, charges and performance obligations. In addition, you must inform the Third Party of all Terms and Conditions applicable to all products or services acquired through this Site, including all rules and restrictions applicable thereto.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;User Comments, Feedback and Other Submissions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All comments, feedback, suggestions and ideas disclosed, submitted or offered to a Covered Party in connection with your use of this Site (collectively, &quot;Comments&quot;), shall become and remain the exclusive property of gotoDisplays.com. The Comments may be used by a Covered Party in any medium and for any purpose worldwide, without obtaining your specific consent and you relinquish all rights to such Comments. No Covered Party is under any obligation to maintain your Comments (and the use of your first name and first initial of your last name with any comments) in confidence, to pay to you any compensation for any Comments submitted or to respond to any of your Comments. You agree you will be solely responsible for the content of any Comments you make.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Termination&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;This agreement constitutes a binding agreement between you and gotoDisplays.com until terminated by you or gotoDisplays.com, which gotoDisplays.com may do at any time, without notice, in its sole discretion. If you become dissatisfied with the Site, your only recourse is to immediately discontinue use of the Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Changes to Terms and Conditions&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;We may, in our sole discretion, change, add or remove any portion of the Terms and Conditions at any time by posting new Terms and Conditions on the Site. Your continue use of the Site after such changes are posted will constitute your agreement to such changes.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Changes to the Site&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;We reserve the right, for any reason, in our sole discretion, to terminate, suspend or change any aspect of the Site including but not limited to content, features or hours of availability. We may impose limits on certain features of the Site or restrict your access to part or all of the Site without notice or penalty.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Miscellaneous&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The captions in these Terms and Conditions are only for convenience and do not, in any way, limit or otherwise define the terms and provisions of these Terms and Conditions. None of the Covered Parties are responsible for any errors or delays in responding to a Request caused by an incorrect email address provided by you or other technical problems beyond their control. If any provision of the Terms and Conditions is held to be invalid or unenforceable by a court of competent jurisdiction, then such provision shall be enforced to the maximum extent possible so as to effect the intent of the Terms and Conditions, and the remainder of the Terms and Conditions shall continue in full force and effect. The failure by either you or gotoDisplays.com to exercise or enforce any right or provision of the Terms and Conditions shall not constitute a waiver of such right or provision. You agree that any cause of action arising out of or related to the Site or the Terms and Conditions must commence within one (1) year after the cause of action arose; otherwise, such cause of action is permanently barred. All provisions in the Terms of Use regarding representations and warranties, indemnification, disclaimers, and limitation of liability shall survive the termination of the Terms and Conditions.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Entire Agreement&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;These Terms and Conditions, together with the&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;Privacy Policy&lt;/a&gt;&nbsp;and those terms and conditions incorporated herein or referred to herein, constitute the entire agreement (collectively, the &quot;Agreement&quot;) between you and each Covered Party relating to the subject matter hereof, and supersedes any prior understandings or agreements (whether oral or written) regarding the subject matter, and may not be amended or modified except in writing or by making such amendments or modifications available on this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Governing Law&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The internal laws of the Province of Alberta shall govern the performance of these Terms and Conditions, without regard to such state&#39;s conflicts of laws principles. You consent to the exclusive jurisdiction and venue of the courts located in Calgary, Alberta for all disputes arising out of, or relating to, the Terms and Conditions and use of this Site.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Notices&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Except as explicitly stated otherwise, any notices shall be given by email to gotoDisplays.com at&nbsp;&lt;a href=&quot;http://gotodisplay.com/&quot; style=&quot;background: transparent; color: rgb(113, 113, 113);&quot;&gt;info@gotoDisplays.com&lt;/a&gt;&nbsp;or to you at the email address you provide to gotoDisplays.com. Notice shall be deemed given 24 hours after the email is sent, unless the sending party is notified that the email address is invalid.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;How do I contact gotoDisplays.com?&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our postal address is:&lt;br /&gt;\r\n#103, 3016 - 10th Ave. NE, Calgary, Alberta, Canada T2A 6A3&lt;br /&gt;\r\nWe can be reached via email at info@gotoDisplays.com or by telephone at 1-866-912-2689&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;ORDER TERMS AND CONDITIONS&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;h5 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Payment&lt;/span&gt;&lt;/h5&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All prices and amounts shown on this Site are in Candian Dollars (CAD), unless otherwise noted. If a User submits a request on the Site to purchase printing products, mailing services, design services or other services, the User agrees that all charges, taxes and shipping/handling fees will automatically be charged to the credit card or paid by User with an approved payment method. We require each order to be fully paid, including shipping and handling fees, if applicable, before we complete an order. We will not start working on a print job until we receive the full payment.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Once a print job has been approved by customer and is already &quot;In Production&quot;, no changes are allowed to the artwork files, job characteristics, or printing turnaround time. After a print job has been sent to production, the customer is responsible for paying the entire amount of that print job along with applicable taxes and shipping/handling fees, unless otherwise noted.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Return Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;At gotoDisplays.com, we strive to provide our clients with the best possible printing experience. If you are not 100% satisfied with your order for any reason, please contact our customer service department. Our representative will document your complaint and create a ticket for your reference.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-bottom: 10px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;100% Refund or reprint on any defective print orders&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;100% Free expedited reprint on any orders lost in transit&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;20% Refund for every business day that your order is printed late&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All policies are subject to change without prior notification. Defective product refunds and reprints are limited to $1000. Determination of defect is at the discretion of management. In most cases, clients will be requested to submit digital photos documenting the product defect and/or ship the defective products back to customer service. Free expedited reprint on any orders lost in transit is limited to orders less than or equal to $250. Turnaround and shipping for reprint orders will vary depending upon available production capacity and manager&#39;s discretion. Refunds issued for late turnaround will be limited to no more than $200 and calculated as 20% of print total (excluding tax, shipping, handing, and design services) for every business day (excluding weekends and holidays) that the order was late. Direct mail services including printing, mailing services, list services and design services are not subject to standard return policies. Refunds or reprint on direct mail orders will be evaluated on a case-by-case basis&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our Sales Tax Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com charges applicable sales tax allowed/required by laws.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Proofs&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;If requested, an online proof will be available for your review after we have received your file upload. Actual time will vary depending on our current workload. No job will be sent to press without your approval unless waived. It is the customer&#39;s responsibility to log in to their account and check on their proof. We are not liable for delays in the order caused by customer&#39;s non-approval of the proof.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;An online proof is by no means an accurate color reproduction of your final printed piece but is the final opportunity for you to check the layout, bleeds, crops and final text. Electronic proofs do not show transparency and over print issues. Neither do they show color change from RGB or Pantone to CMYK.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The proof must be treated as independent from the original submitted file and thoroughly reviewed prior to approval. It should be checked against the original file for possible errors in layout, copy, spacing, punctuation or image placement. Customer is fully responsible for all that is contained in the final approved proof.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com offers hard copy proofs which show reasonable likeness to the final printed pieces. Such proofs are recommended for color-critical art and must be requested by the customer when the print order is made. Hard copy proofs are printed on a substrate different from the actual paper stock and while it&#39;s main purpose is to show color, variations may occur depending on the finish selected (AQ, matte, UV) for the final print job. We do not offer hard copy proofs for art that would be printed on uncoated paper.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The request for a hard copy proof may involve an additional fee and would extend the amount of time needed to complete the job. For orders where a hard copy proof has been requested, the approval must be received by gotoDisplays.com on or before our published cut-off times. We will make every effort to match colors in production when a hard copy proof is requested. However, it is the customer&#39;s responsibility to determine if they need a hard copy proof with their print order.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Color Accuracy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com will reproduce color from submitted print-ready files as closely as possible, but cannot exactly match color and density (as viewed in a 5000K light booth). Because of inherent limitations with the printing process, as well as neighboring image ink requirements, the accuracy of color reproduction is not guaranteed. By placing an order with gotoDisplays.com you agree to this limitation. We will try our best to match the gradient density of each color, but we accept no responsibility for color variations between submitted files and the final printed piece. Under no circumstances will a reprint be honored for color variations that have occurred during the printing process. We are not liable for color matching or ink density on screen proofs that you approve. Screen proofs will predict design layout, text accuracy, image proportion and placement, but not color or density. Application of UV coating may effect or change the appearance of the printed colors. We are not liable for the final color appearance of a UV coated product.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;No Liability for Errors&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com is not liable for errors in a final product caused by any of the following reasons: Misspelling, Graphics, Bleeds, Grammar, Damage Fonts, Punctuation, Wrong cuts, Incorrect or Missing Folds, Die Lines, Crop Marks, Transparency, Overprint, Cracks on Folds, Finished Product Size. gotoDisplays.com does not make any changes on customer files.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Overprint and Underprint Policy&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Due to the gang run method that gotoDisplays.com uses, we cannot guarantee that every order will be the exact number of items which was ordered. gotoDisplays.com can only guarantee that it will come within plus or minus 10% of the number of items ordered.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Artwork Files&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Our prepress department checks all submitted artwork files before printing, but you are still 100% responsible for the accuracy of your print-ready artwork files, and we encourage you to proofread all files carefully before submitting to gotoDisplays.com. gotoDisplays.com is not responsible for any issues as to orientation or alignment of the pages of your submitted artwork. By submitting the artwork to gotoDisplays.com, you certify that you have the right to use the image(s) in your artwork files. DO NOT send any &quot;one-of-kind&quot; transparencies, prints or artwork. Although we take every precaution to safeguard your materials, we are NOT responsible for loss or damage of images or artwork. Under these Terms and Conditions, you agree that you will NOT upload any artwork files consisting of the following material: offensive, indecent or improper material, any material that could give rise to any civil or criminal liability under applicable law; and any material that could infringe rights of privacy, publicity, copyrights or other intellectual property rights without the permission of the owner of these rights and the persons who are shown in the material if applicable. We will refuse an order, which in our opinion may be illegal in nature or an infringement on the rights of any third party. You accept full legal liability for the content of material processed and printed on your behalf and under your instructions. We reserve the right to refuse an order without disclosing a reason.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Printing Turnaround Time&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Printing turnaround time begins once your order has been placed and your print-ready files have been uploaded to your account, attached to your printing job, and approved for printing. Printing turnaround time begins when we receive approval for your proof and full payment has been made. For printing jobs that do not have complete digital source files provided or have submitted files that are not print-ready, printing turnaround begins when we have your print-ready file(s), not from when the order was first submitted. For our Next Day Turnaround option, orders and files must be submitted by 9:00 A.M PST (12 noon EST) and proofs must be approved by 12:00 noon PST (3:00 P.M. EST), to have the item shipped out of our facility on the next business day. In other words, if you approve a proof on your Next Day Turnaround order by 12:00 noon PST on Tuesday, it will be sent out of our facility for shipping by end of business Wednesday. Otherwise, your Next Day Turnaround order placed on Tuesday would ship on Thursday. This applies to Next Day Turnaround orders only. For all other turnaround options, orders and files must be submitted by 1:00 P.M PST (4 P.M. EST) and proofs must be approved by 5:00 P.M. PST (8:00 P.M. EST), printing turnaround time begins the next business day. For example, a job for two-day printing turnaround that you submitted at 3 P.M. PST and approved by 5:00 P.M. PST on Tuesday will be shipped out of our facility by end of business Thursday. Please note that there is no production or shipping on Saturdays, Sundays and Holidays. As a result, these days are not considered when calculating printing turnaround time. In addition, while Production Turnaround includes printing, cutting, and binding, it does not include design, mailing, or shipping transit times, and you should allow additional business days for delivery based on the shipping method you selected. The estimated production turnaround advertised on this site is based on the typical number of hours or days that a print job is completed under normal circumstances, excluding Saturdays, Sundays and holidays. Printing turnaround time for jobs with approved proofs and payment is guaranteed. The remedy for failing to meet a deadline is limited to a 20% refund for every business day of delay. Cancellation of an order based on printing turnaround time is only allowed if the customer indicates in writing (e.g., note posted to order) when placing the original order that a job in the order is time sensitive and must be shipped by target date based on printing turnaround option selected. gotoDisplays.com will not be responsible for shipping-related costs on orders that do not go out by the due date.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Shipping&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Unless you choose Pick Up or Mailing Services, you need to select one of the shipping options presented to you on the Site. All shipping is currently done via carriers such as FedEx or UPS. When choosing a shipping option, please remember that the estimated shipping transit time is based on the number of business days in transit and does not include weekends, holidays or the day the package is picked up by the carrier. For instance, a product shipped 2nd Day Air and picked up on a Thursday would be delivered by end of day Monday.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Shipping transit times vary, and gotoDisplays.com assumes no responsibility for delays caused by shipping carriers, weather or any damages resulting from the failure to receive a job on time. Your order may arrive late due to unforeseen delays in delivery service, the breakdown of equipment, illness, etc.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com&#39;s responsibility is limited to preparing your printing order and turning it over to the carrier for shipping. gotoDisplays.com is not liable for damages which occur during shipping Pick up orders will be kept for 30 days from the delivery of the pick-up notification email. If the order has not been picked up from gotoDisplays.com&#39;s facility within 30 days, it will be recycled. . We cannot ship to P.O. Boxes or APO/FPO&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Target Arrival&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Target arrival dates are calculated by adding the printing turnaround time to the shipping transit time. If you have requested a Hardcopy Proof, factor in approximately six business days to receive and approve your proof. For Next Day Hardcopy Proof, factor in about two business days. Both printing and shipping times are based on business days only and do not include weekends or holidays.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;For example, a product with a printing turnaround time of two business days and a shipping method of 2nd Day Air would have a target arrival date of four business days after your files have been sent to production The cut off time for accepting files is 9:00 A.M. PST (12:00 Noon EST). If your files are in by that time, we will commit to printing and shipping your product within the selected timeframe. Please understand that target arrival dates are estimates, not guarantees. While we will do everything in our power to meet your target arrival date, weather and other occurrences beyond our control may impact our ability to meet that date.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Mailing Services&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Customer&#39;s mailing list(s), while in the possession of gotoDisplays.com is the exclusive property of the customer and shall be used only with customer&#39;s instructions. Customer&#39;s mailing list(s) will not be sold or offered for use to any other party, and gotoDisplays.com will not utilize the list for any other purpose.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All mailing delivery dates are estimates, not guarantees. gotoDisplays.com&#39;s responsibility is limited to preparing your mailing and completing delivery to FedEx or CanadaPost. gotoDisplays.com&#39;s responsibility ends when the job is delivered to the Canada Postal Service Business Mail Entry Unit. In no event shall gotoDisplays.com be liable for FedEx or CanadaPost performance failures or delivery delays.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;gotoDisplays.com shall be liable to rectify printing and mailing errors only to the extent of re-mailing a correction or corrected job as soon as possible, and allowable damages shall be limited to the value of the printing work performed. In no case is gotoDisplays.com liable for loss of business; incidental or consequential damages; or costs in excess of billing for services related to the specific job.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;The customer will defend and hold gotoDisplays.com harmless in any suit or court action brought against by others for alleged damages, costs, expenses (including reasonable attorney&#39;s fees), liabilities or losses resulting from circumstances where, acting as the customer&#39;s agent, uses copy, photographs, or illustrations that are believed by others to be degrading, libelous or harmful to their reputations, images, or standing in the community or which in gotoDisplays.com sole judgment is an infringement on a trademark, or trade name, or service mark, or copyright belonging to others, or in a suit or court action brought against for actions of the customer&#39;s employees which may occur as a result of any mailing.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Miscellaneous&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;All complaints must be registered within 24 hours of receipt of your final printing job. If we determine that your job contains manufacturing errors and/or defects, we will rerun your job at no charge. All materials we create in producing your printed product are the property of gotoDisplays.com. Although these materials will NOT be sold or given to any other party, we reserve the right to distribute free samples of your printed product. Please note that your printed product or images used for your printed product will not be used in any national advertising without your prior written consent.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4 color:=&quot;&quot; font-size:=&quot;&quot; font-weight:=&quot;&quot; helvetica=&quot;&quot; letter-spacing:=&quot;&quot; line-height:=&quot;&quot; margin-bottom:=&quot;&quot; margin-top:=&quot;&quot; style=&quot;font-family: &quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;Published to the Web&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are responsible for making sure that you have all necessary copyrights for designs (and elements of such designs)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;you are &quot;publishing to the Web&quot;, and you agree that you shall be liable for any copyright infringement.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p font-size:=&quot;&quot; letter-spacing:=&quot;&quot; open=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(63, 63, 63); font-family: &quot; trebuchet=&quot;&quot;&gt;&lt;span style=&quot;font-family:arial,helvetica,sans-serif;&quot;&gt;You are responsible for distribution of links to your Public Gallery and/or Public Design(s).&lt;/span&gt;&lt;/p&gt;\r\n', 'term-of-service', 'this is owned and operated by Anvydigital, Inc. By visiting or registering with the gotoDisplays.com website (&quot;Site&quot;), you agree to be bound by the terms and conditions. If you do not agree to all of the terms and conditions, please do not use t', 'Default', 0, 1, 0, 0, '2017-02-01 00:17:56', '2017-03-16 22:10:54');
INSERT INTO `pages` (`id`, `name`, `short_name`, `content`, `meta_title`, `meta_description`, `type`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Tutorials', 'tutorials', 'Need content for this area', '', '', 'Default', 62, 1, 0, 0, '2017-03-21 19:29:54', '2017-04-04 19:46:05'),
(10, 'Order Complete', 'order-complete', '&lt;div class=&quot;main_cart col-xs-12&quot; id=&quot;order_summary&quot; style=&quot;font-size:21px;background-color:#392113;&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-xs-12&quot;&gt;\r\n&lt;div class=&quot;columns&quot; style=&quot;margin-bottom:10px;border-bottom:1px dotted white;&quot;&gt;\r\n&lt;h4 class=&quot;ng-binding&quot; style=&quot;font-size:23px;color:red;text-align:left;&quot;&gt;Order completed &lt;span class=&quot;ph-required&quot;&gt;*&lt;/span&gt;&lt;/h4&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;columns col-xs-12&quot; style=&quot;margin-bottom:20px;&quot;&gt;&lt;label class=&quot;group-label ng-binding&quot; style=&quot;color:white; line-height: 1em;&quot;&gt;Thank you for your order. Your order is being processed.&lt;br /&gt;\r\n&lt;br /&gt;\r\nWe will get in touch asap. Thank you. &lt;/label&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;columns col-xs-3&quot; style=&quot;margin-bottom:10px;&quot;&gt;&lt;a class=&quot;btn btn-lg btn-danger btn-block uppercase&quot; href=&quot;/&quot;&gt;Continue shopping &lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', 'Default', 0, 1, 0, 0, '2017-04-04 02:24:04', '2017-04-04 02:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE `password_reminders` (
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`type`, `email`, `token`, `created_at`) VALUES
('user', 'tomnguyen2601@gmail.com', 'f231f428de4473d081018395e6eadb81698c762c', '2017-03-02 18:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin_view_all', 'View All Admin', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(2, 'admins_view_all', 'View All Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(3, 'admins_view_owner', 'View Owner Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(4, 'admins_create_owner', 'Create Owner Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(5, 'admins_edit_all', 'Edit All Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(6, 'admins_edit_owner', 'Edit Owner Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(7, 'admins_delete_all', 'Delete All Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(8, 'admins_delete_owner', 'Delete Owner Admins', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(9, 'banners_view_all', 'View All Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(10, 'banners_view_owner', 'View Owner Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(11, 'banners_create_owner', 'Create Owner Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(12, 'banners_edit_all', 'Edit All Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(13, 'banners_edit_owner', 'Edit Owner Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(14, 'banners_delete_all', 'Delete All Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(15, 'banners_delete_owner', 'Delete Owner Banners', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(16, 'configures_view_all', 'View All Configures', '2015-04-21 11:16:31', '2015-04-21 11:16:31'),
(17, 'configures_view_owner', 'View Owner Configures', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(18, 'configures_create_owner', 'Create Owner Configures', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(19, 'configures_edit_all', 'Edit All Configures', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(20, 'configures_edit_owner', 'Edit Owner Configures', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(21, 'configures_delete_all', 'Delete All Configures', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(22, 'configures_delete_owner', 'Delete Owner Configures', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(23, 'contacts_view_all', 'View All Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(24, 'contacts_view_owner', 'View Owner Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(25, 'contacts_create_owner', 'Create Owner Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(26, 'contacts_edit_all', 'Edit All Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(27, 'contacts_edit_owner', 'Edit Owner Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(28, 'contacts_delete_all', 'Delete All Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(29, 'contacts_delete_owner', 'Delete Owner Contacts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(30, 'images_view_all', 'View All Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(31, 'images_view_owner', 'View Owner Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(32, 'images_create_owner', 'Create Owner Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(33, 'images_edit_all', 'Edit All Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(34, 'images_edit_owner', 'Edit Owner Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(35, 'images_delete_all', 'Delete All Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(36, 'images_delete_owner', 'Delete Owner Images', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(37, 'layouts_view_all', 'View All Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(38, 'layouts_view_owner', 'View Owner Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(39, 'layouts_create_owner', 'Create Owner Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(40, 'layouts_edit_all', 'Edit All Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(41, 'layouts_edit_owner', 'Edit Owner Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(42, 'layouts_delete_all', 'Delete All Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(43, 'layouts_delete_owner', 'Delete Owner Layouts', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(44, 'menus_view_all', 'View All Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(45, 'menus_view_owner', 'View Owner Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(46, 'menus_create_owner', 'Create Owner Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(47, 'menus_edit_all', 'Edit All Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(48, 'menus_edit_owner', 'Edit Owner Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(49, 'menus_delete_all', 'Delete All Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(50, 'menus_delete_owner', 'Delete Owner Menus', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(51, 'pages_view_all', 'View All Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(52, 'pages_view_owner', 'View Owner Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(53, 'pages_create_owner', 'Create Owner Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(54, 'pages_edit_all', 'Edit All Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(55, 'pages_edit_owner', 'Edit Owner Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(56, 'pages_delete_all', 'Delete All Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(57, 'pages_delete_owner', 'Delete Owner Pages', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(58, 'productcategories_view_all', 'View All Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(59, 'productcategories_view_owner', 'View Owner Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(60, 'productcategories_create_owner', 'Create Owner Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(61, 'productcategories_edit_all', 'Edit All Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(62, 'productcategories_edit_owner', 'Edit Owner Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(63, 'productcategories_delete_all', 'Delete All Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(64, 'productcategories_delete_owner', 'Delete Owner Productcategories', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(65, 'productoptiongroups_view_all', 'View All Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(66, 'productoptiongroups_view_owner', 'View Owner Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(67, 'productoptiongroups_create_owner', 'Create Owner Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(68, 'productoptiongroups_edit_all', 'Edit All Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(69, 'productoptiongroups_edit_owner', 'Edit Owner Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(70, 'productoptiongroups_delete_all', 'Delete All Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(71, 'productoptiongroups_delete_owner', 'Delete Owner Productoptiongroups', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(72, 'productoptions_view_all', 'View All Productoptions', '2015-04-21 11:16:32', '2015-04-21 11:16:32'),
(73, 'productoptions_view_owner', 'View Owner Productoptions', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(74, 'productoptions_create_owner', 'Create Owner Productoptions', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(75, 'productoptions_edit_all', 'Edit All Productoptions', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(76, 'productoptions_edit_owner', 'Edit Owner Productoptions', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(77, 'productoptions_delete_all', 'Delete All Productoptions', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(78, 'productoptions_delete_owner', 'Delete Owner Productoptions', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(79, 'producttypes_view_all', 'View All Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(80, 'producttypes_view_owner', 'View Owner Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(81, 'producttypes_create_owner', 'Create Owner Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(82, 'producttypes_edit_all', 'Edit All Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(83, 'producttypes_edit_owner', 'Edit Owner Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(84, 'producttypes_delete_all', 'Delete All Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(85, 'producttypes_delete_owner', 'Delete Owner Producttypes', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(86, 'products_view_all', 'View All Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(87, 'products_view_owner', 'View Owner Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(88, 'products_create_owner', 'Create Owner Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(89, 'products_edit_all', 'Edit All Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(90, 'products_edit_owner', 'Edit Owner Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(91, 'products_delete_all', 'Delete All Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(92, 'products_delete_owner', 'Delete Owner Products', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(93, 'roles_view_all', 'View All Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(94, 'roles_view_owner', 'View Owner Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(95, 'roles_create_owner', 'Create Owner Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(96, 'roles_edit_all', 'Edit All Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(97, 'roles_edit_owner', 'Edit Owner Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(98, 'roles_delete_all', 'Delete All Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(99, 'roles_delete_owner', 'Delete Owner Roles', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(100, 'users_view_all', 'View All Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(101, 'users_view_owner', 'View Owner Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(102, 'users_create_owner', 'Create Owner Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(103, 'users_edit_all', 'Edit All Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(104, 'users_edit_owner', 'Edit Owner Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(105, 'users_delete_all', 'Delete All Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(106, 'users_delete_owner', 'Delete Owner Users', '2015-04-21 11:16:33', '2015-04-21 11:16:33'),
(107, 'boxshape_view_all', 'View All Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(108, 'boxshape_view_owner', 'View Owner Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(109, 'boxshape_create_owner', 'Create Owner Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(110, 'boxshape_edit_all', 'Edit All Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(111, 'boxshape_edit_owner', 'Edit Owner Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(112, 'boxshape_delete_all', 'Delete All Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(113, 'boxshape_delete_owner', 'Delete Owner Boxshape', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(114, 'dashboards_view_all', 'View All Dashboards', '2015-04-24 08:16:43', '2015-04-24 08:16:43'),
(115, 'dashboards_view_owner', 'View Owner Dashboards', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(116, 'dashboards_create_owner', 'Create Owner Dashboards', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(117, 'dashboards_edit_all', 'Edit All Dashboards', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(118, 'dashboards_edit_owner', 'Edit Owner Dashboards', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(119, 'dashboards_delete_all', 'Delete All Dashboards', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(120, 'dashboards_delete_owner', 'Delete Owner Dashboards', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(121, 'emailtemplates_view_all', 'View All Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(122, 'emailtemplates_view_owner', 'View Owner Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(123, 'emailtemplates_create_owner', 'Create Owner Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(124, 'emailtemplates_edit_all', 'Edit All Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(125, 'emailtemplates_edit_owner', 'Edit Owner Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(126, 'emailtemplates_delete_all', 'Delete All Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(127, 'emailtemplates_delete_owner', 'Delete Owner Emailtemplates', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(128, 'orders_view_all', 'View All Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(129, 'orders_view_owner', 'View Owner Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(130, 'orders_create_owner', 'Create Owner Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(131, 'orders_edit_all', 'Edit All Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(132, 'orders_edit_owner', 'Edit Owner Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(133, 'orders_delete_all', 'Delete All Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(134, 'orders_delete_owner', 'Delete Owner Orders', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(135, 'shapelayout_view_all', 'View All Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(136, 'shapelayout_view_owner', 'View Owner Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(137, 'shapelayout_create_owner', 'Create Owner Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(138, 'shapelayout_edit_all', 'Edit All Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(139, 'shapelayout_edit_owner', 'Edit Owner Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(140, 'shapelayout_delete_all', 'Delete All Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(141, 'shapelayout_delete_owner', 'Delete Owner Shapelayout', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(142, 'menusfrontend_view_all', 'View All Menusfrontend', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(143, 'menusfrontend_create_all', 'Create All Menusfrontend', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(144, 'menusfrontend_edit_all', 'Edit All Menusfrontend', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(145, 'menusbackend_view_all', 'View All Menusbackend', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(146, 'menusbackend_create_all', 'Create All Menusbackend', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(147, 'menusbackend_edit_all', 'Edit All Menusbackend', '2015-04-24 08:16:44', '2015-04-24 08:16:44'),
(148, 'shapelayouts_view_all', 'View All Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(149, 'shapelayouts_view_owner', 'View Owner Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(150, 'shapelayouts_create_owner', 'Create Owner Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(151, 'shapelayouts_edit_all', 'Edit All Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(152, 'shapelayouts_edit_owner', 'Edit Owner Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(153, 'shapelayouts_delete_all', 'Delete All Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(154, 'shapelayouts_delete_owner', 'Delete Owner Shapelayouts', '2015-06-04 03:14:11', '2015-06-04 03:14:11'),
(155, 'frontendhome_view_all', 'View All Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(156, 'frontendhome_view_owner', 'View Owner Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(157, 'frontendhome_create_owner', 'Create Owner Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(158, 'frontendhome_edit_all', 'Edit All Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(159, 'frontendhome_edit_owner', 'Edit Owner Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(160, 'frontendhome_delete_all', 'Delete All Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(161, 'frontendhome_delete_owner', 'Delete Owner Frontendhome', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(162, 'menusfrontend_delete_all', 'Delete All Menusfrontend', '2017-03-17 05:14:35', '2017-03-17 05:14:35'),
(163, 'menusbackend_delete_all', 'Delete All Menusbackend', '2017-03-17 05:14:35', '2017-03-17 05:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 5, 1),
(5, 7, 1),
(6, 9, 1),
(7, 11, 1),
(8, 12, 1),
(9, 14, 1),
(10, 16, 1),
(11, 18, 1),
(12, 19, 1),
(13, 21, 1),
(14, 23, 1),
(15, 25, 1),
(16, 26, 1),
(17, 28, 1),
(18, 30, 1),
(19, 32, 1),
(20, 33, 1),
(21, 35, 1),
(22, 37, 1),
(23, 39, 1),
(24, 40, 1),
(25, 42, 1),
(26, 44, 1),
(27, 46, 1),
(28, 47, 1),
(29, 49, 1),
(30, 51, 1),
(31, 53, 1),
(32, 54, 1),
(33, 56, 1),
(34, 58, 1),
(35, 60, 1),
(36, 61, 1),
(37, 63, 1),
(38, 65, 1),
(39, 67, 1),
(40, 68, 1),
(41, 70, 1),
(42, 72, 1),
(43, 74, 1),
(44, 75, 1),
(45, 77, 1),
(46, 79, 1),
(47, 81, 1),
(48, 82, 1),
(49, 84, 1),
(50, 86, 1),
(51, 88, 1),
(52, 89, 1),
(53, 91, 1),
(54, 93, 1),
(55, 95, 1),
(56, 96, 1),
(57, 98, 1),
(58, 100, 1),
(59, 102, 1),
(60, 103, 1),
(61, 105, 1),
(62, 107, 1),
(63, 109, 1),
(64, 110, 1),
(65, 112, 1),
(66, 114, 1),
(67, 116, 1),
(68, 117, 1),
(69, 119, 1),
(70, 121, 1),
(71, 123, 1),
(72, 124, 1),
(73, 126, 1),
(74, 142, 1),
(75, 143, 1),
(76, 144, 1),
(77, 145, 1),
(78, 146, 1),
(79, 147, 1),
(80, 128, 1),
(81, 130, 1),
(82, 131, 1),
(83, 133, 1),
(92, 155, 1),
(93, 157, 1),
(94, 158, 1),
(95, 160, 1),
(96, 148, 1),
(97, 150, 1),
(98, 151, 1),
(99, 153, 1);

-- --------------------------------------------------------

--
-- Table structure for table `price_break`
--

CREATE TABLE `price_break` (
  `id` int(15) NOT NULL,
  `product_id` int(15) UNSIGNED NOT NULL,
  `range_from` int(5) NOT NULL,
  `range_to` int(5) NOT NULL,
  `sell_price` float NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_break`
--

INSERT INTO `price_break` (`id`, `product_id`, `range_from`, `range_to`, `sell_price`, `updated_at`, `created_at`) VALUES
(2, 183, 25, 27, 0, '2015-02-13 20:05:28', '2015-02-13 19:34:06'),
(3, 183, 27, 36, 0, '2015-02-13 20:05:41', '2015-02-13 19:34:07'),
(4, 183, 15, 27, 0, '2015-02-13 20:05:49', '2015-02-13 19:34:08'),
(5, 183, 20, 25, 0, '2015-02-13 19:37:29', '2015-02-13 19:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `price_breaks`
--

CREATE TABLE `price_breaks` (
  `id` int(10) UNSIGNED NOT NULL,
  `range_from` int(11) NOT NULL,
  `range_to` int(11) NOT NULL,
  `sell_price` float(8,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `price_breaks`
--

INSERT INTO `price_breaks` (`id`, `range_from`, `range_to`, `sell_price`, `product_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 25, 27, 0.00, 183, 0, 0, '2015-02-14 02:34:06', '2015-02-14 03:05:28'),
(3, 27, 36, 0.00, 183, 0, 0, '2015-02-14 02:34:07', '2015-02-14 03:05:41'),
(4, 15, 27, 0.00, 183, 0, 0, '2015-02-14 02:34:08', '2015-02-14 03:05:49'),
(5, 20, 25, 0.00, 183, 0, 0, '2015-02-14 02:37:29', '2015-02-14 02:37:29'),
(7, 0, 5, 12.00, 96, 0, 0, '2015-02-14 07:10:12', '2015-04-17 15:02:30'),
(8, 5, 10, 25.00, 96, 0, 0, '2015-02-14 07:10:18', '2015-04-17 15:02:30'),
(9, 10, 15, 25.00, 96, 0, 0, '2015-02-14 07:10:25', '2015-04-17 15:02:30'),
(13, 1, 5, 55.00, 184, 0, 0, '2015-02-15 01:53:18', '2015-02-15 01:53:34'),
(14, 5, 10, 40.00, 184, 0, 0, '2015-02-15 01:53:24', '2015-02-15 01:53:36'),
(15, 10, 15, 35.00, 184, 0, 0, '2015-02-15 01:53:29', '2015-02-15 01:53:38'),
(16, 1, 10, 26.00, 186, 0, 0, '2015-02-26 08:35:14', '2015-02-26 08:35:39'),
(17, 10, 15, 20.00, 186, 0, 0, '2015-02-26 08:36:18', '2015-02-26 08:36:23'),
(18, 0, 5, 11.00, 73, 0, 0, '2015-02-27 03:22:02', '2015-02-28 02:42:33'),
(19, 5, 999999, 8.00, 73, 0, 0, '2015-02-27 03:22:24', '2015-02-28 02:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sell_price` double NOT NULL DEFAULT '0',
  `margin_up` double NOT NULL DEFAULT '0',
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `order_no` int(11) NOT NULL DEFAULT '1',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `default_view` text COLLATE utf8_unicode_ci,
  `svg_file` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `svg_layout_id` int(11) NOT NULL DEFAULT '0',
  `custom_size` tinyint(1) NOT NULL DEFAULT '1',
  `jt_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `sku`, `sell_price`, `margin_up`, `short_description`, `description`, `meta_title`, `meta_description`, `active`, `order_no`, `product_type_id`, `default_view`, `svg_file`, `svg_layout_id`, `custom_size`, `jt_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(50, 'Polygon 1 ImageStylor Canvas', 'polygon-1-imagestylor-canvas', 'IC-2053', 10, 0, '', '<div style="font-size:12px;">\n<p>&nbsp;</p>\n</div>\n\n<p style="font-size:12px;">&nbsp;</p>\n\n<div style="font-size:12px;">\n<p>&nbsp;</p>\n</div>\n\n<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\n\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\n</div>\n', '', '', 1, 5, 5, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 14:44:38'),
(69, 'Right Triangle ImageStylor Canvas', 'right-triangle-imagestylor-canvas', 'IC-2052', 0, 0, '', '<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\n\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\n</div>\n', '', '', 1, 4, 2, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 14:42:39'),
(70, 'Equilateral Triangle ImageStylor Canvas', 'equilateral-triangle-imagestylor-canvas', 'IC-2050', 0, 0, '', '<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\r\n\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n\r\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\r\n</div>\r\n', '', '', 1, 2, 3, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-04 13:59:05'),
(71, 'Rhombus ImageStylor Canvas', 'rhombus-imagestylor-canvas', 'IC-2051', 0, 0, '', '<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\n\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\n</div>\n', '', '', 1, 3, 4, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 14:59:39'),
(72, 'Hexagon ImageStylor Canvas', 'hexagon-imagestylor-canvas', 'IC-2049', 0, 0, '', 'The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.<br />\r\n<br />\r\nChoose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!', '', '', 1, 1, 1, '["31","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-04 13:51:18'),
(75, 'ImageStylor Canvas Double Width (2:1)', 'imagestylor-canvas-double-width-21', 'IC-2048', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\n\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n', '', '', 0, 6, 0, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2017-03-23 17:45:27'),
(77, 'ImageStylor Canvas Square', 'imagestylor-canvas-square', 'IC-2047', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\n\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n', '', '', 0, 5, 0, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2017-03-23 17:45:32'),
(79, 'ImageStylor Canvas Panorama', 'imagestylor-canvas-panorama', 'IC-2046', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\n\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n', '', '', 0, 4, 0, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2017-03-23 17:45:34'),
(80, 'ImageStylor Canvas Digital Camera (4:3)', 'imagestylor-canvas-digital-camera-43', 'IC-2045', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\n\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\n', '', '', 0, 3, 0, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2017-03-23 17:45:37'),
(81, 'ImageStylor Canvas Digital SLR Camera (3:2)', 'imagestylor-canvas-digital-slr-camera-32', 'IC-2044', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 0, 2, 0, '["32","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2017-03-23 17:45:40'),
(90, 'ImageStyle 24 x 36', 'imagestyle-24-x-36', 'is24x36', 0, 0, '', '<strong>ImageStyle</strong><span style="line-height:27.0399990081787px;">&nbsp;is a custom framed photo print developed by <strong>Anvy Digital</strong>. This unique photo product combines a stylish frame system with a silky smooth finished print elegantly wrapped onto a rigid backing panel. ImageStyles color and finish are clean and spectacular, a sure fit for your home or office. With a variety of frame options available, ImageStyles vibrant prints are the perfect way to cherish your fond memories.</span>', '', '', 1, 0, 10, '["27","25"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:01:55'),
(95, 'ImageStyle 20 x 24', 'imagestyle-20-x-24', 'is20x24', 0, 0, '', '<strong>ImageStyle</strong><span style="line-height:27.0399990081787px;">&nbsp;is a custom framed photo print developed by <strong>Anvy Digital</strong>. This unique photo product combines a stylish frame system with a silky smooth finished print elegantly wrapped onto a rigid backing panel. ImageStyles color and finish are clean and spectacular, a sure fit for your home or office. With a variety of frame options available, ImageStyles vibrant prints are the perfect way to cherish your fond memories.</span>', '', '', 1, 0, 10, '["27","25"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:02:12'),
(96, 'ImageStyle 16 x 20', 'imagestyle-16-x-20', 'is16x20', 0, 0, '', '<strong>ImageStyle</strong><span style="line-height:27.0399990081787px;">&nbsp;is a custom framed photo print developed by <strong>Anvy Digital</strong>. This unique photo product combines a stylish frame system with a silky smooth finished print elegantly wrapped onto a rigid backing panel. ImageStyles color and finish are clean and spectacular, a sure fit for your home or office. With a variety of frame options available, ImageStyles vibrant prints are the perfect way to cherish your fond memories.</span>', '', '', 1, 0, 10, '["27","25"]', 'assets/svg/drawing.svg', 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:02:30'),
(187, 'Alloy Image Box - White', 'alloy-image-box-white', 'WEB-818', 0, 0, '', '<span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">This finished, 3D box is contour cut and folded using our patented Photo-Box&trade; cut-and-fold system, fashioning a ready-to-hang product. The self-framing, brushed finish of the Alloy Image Box makes a professional and refined statement. Whether your space longs for a moody black-and-white photo, or a crisp and professional business portrait, the Alloy Image Box is a brilliant solution.&nbsp;</span><span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">Your high-definition photo is printed directly to aluminium, then a protective UV liquid coating is applied. &nbsp;The printed metal sheet is mitre grooved and fabricated to create the finished Alloy Box, which is secured neatly to the wall with concealed keyhole fixings.</span>', '', '', 1, 1, 0, '["31","25","12"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:02:46'),
(188, 'Alloy Image Box - Brushed Aluminum', 'alloy-image-box-brushed-aluminum', 'WEB-819', 0, 0, '', '<span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">This finished, 3D box is contour cut and folded using our patented Photo-Box&trade; cut-and-fold system, fashioning a ready-to-hang product. The self-framing, brushed finish of the Alloy Image Box makes a professional and refined statement. Whether your space longs for a moody black-and-white photo, or a crisp and professional business portrait, the Alloy Image Box is a brilliant solution.&nbsp;</span><span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">Your high-definition photo is printed directly to aluminium, then a protective UV liquid coating is applied. &nbsp;The printed metal sheet is mitre grooved and fabricated to create the finished Alloy Box, which is secured neatly to the wall with concealed keyhole fixings.</span>', '', '', 1, 2, 8, '["38","31","25"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:03:04'),
(189, 'Double Pyramid', 'double-pyramid', 'ws-3', 0, 0, '', 'The Double Pyramid Collage is perfect for a vertical display solution and can easily make any small space look attractive. Choose from either the Imagestylor Canvas or Smart Plaque for this display.', '', '', 1, 0, 6, '["32","35","12"]', 'assets/svg/07-04-15-02-04-58-DOUBLE_PYRAMID-new3.svg', 55, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-18 08:30:00'),
(190, 'Smart Plaque', 'smart-plaque', 'WEB-820', 0, 0, '', '<span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">The Smart Plaque is a direct print to a highly durable and waterproof subtrate, which makes it great for indoor and outdoor applications. It is very ridgid, with a high UV stability and humidity resistance. There is no adhesive between any layers of the print or the core which means it won&#39;t fall apart. The smart plaque is available in a 10mm thickness.</span>', '', '', 1, 1, 0, '["35","25"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:03:38'),
(191, 'Flower Split', 'flower-split', 'ws-2', 0, 0, '', '', '', '', 1, 0, 6, '["12"]', 'assets/svg/06-04-15-04-04-50-Flower_Split.svg', 54, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 10:15:54'),
(193, 'Rhombus Smart Plaque', 'rhombus-smart-plaque', 'rsp100', 0, 0, '', '', '', '', 0, 0, 4, '["35","25"]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:04:12'),
(195, 'Rhombus and Right Triangle ', 'rhombus-and-right-triangle', 'ws-4', 0, 0, '', '', '', '', 1, 0, 6, '["12"]', 'assets/svg/06-04-15-04-04-18-Rhombus_and_Right_Triangle.svg', 49, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 10:15:29'),
(196, '3 Square Diamond', '3-square-diamond', 'ws-5', 0, 0, '', '', '', '', 1, 0, 6, '["12"]', 'assets/svg/07-04-15-02-04-10-3_Square_Diamond_new.svg', 48, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 10:14:55'),
(197, 'Square Centre Rhombus Spread', 'square-centre-rhombus-spread', 'wc-2', 0, 0, '', '', '', '', 1, 0, 0, '["12"]', NULL, 52, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 10:21:29'),
(198, 'Tri-photo HBL', 'tri-photo-hbl', 'thbl-1', 0, 0, '', '<p style="font-family:Arial, Verdana, sans-serif;">Our Tri-photo HBL (high bond laminate) is comprised of several materials layered together by a high pressurized system. The tri-photo HBL has three layers: a base, the graphic and the protective laminate. The graphic is printed directly to a metal composite, then a layer of solid, clear laminate is applied on top using high pressured compressors. The result is a beautiful wear resistant substrate perfect for high traffic areas in tradeshows, schools, retail spaces, hotels, museums, hospitals, anywhere that needs protective signage. It&rsquo;s extremely durable, scuff proof and the graphic will never fade.</p>\n\n<p style="font-family:Arial, Verdana, sans-serif;">&nbsp;</p>\n', '', '', 1, 0, 0, '[]', NULL, 0, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:05:20'),
(199, 'Trapedzoid and Triangles', 'trapedzoid-and-triangles', 'wc-4', 0, 0, '', '', '', '', 1, 0, 0, '["12"]', NULL, 51, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 10:21:10'),
(201, 'Single Pyramid', 'single-pyramid', 'ws-6', 0, 0, '', '', '', '', 1, 0, 6, '["12"]', 'assets/svg/9bc60a579fb0f857e3b48d55e25d55ef.svg', 47, 1, NULL, 8, 8, '0000-00-00 00:00:00', '2015-06-23 10:18:13'),
(202, 'Vertical Drop', 'vertical-drop', 'wc-6', 0, 0, '', '', '', '', 1, 0, 0, '["12"]', NULL, 53, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 08:43:11'),
(203, 'Tritych M1 - 62” x 16”', 'tritych-m1-62-x-16', 'WC-2001', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych M1<br />\nSKU: WC-2001<br />\nWall Size : 62&rdquo; x 16&rdquo;<br />\nContains: 2-16&rdquo;x16&quot;, 1-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 1, 7, '["12"]', NULL, 3, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:06:29'),
(204, 'Tritych M2 - 62” x 16”', 'tritych-m2-62-x-16', 'WC-2002', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych M2<br />\nSKU: WC-2002<br />\nWall Size : 62&rdquo; x 16&rdquo;<br />\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 2, 7, '["12"]', NULL, 4, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:06:45'),
(205, 'Tritych M3 - 62” x 16”', 'tritych-m3-62-x-16', 'WC-2003', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L2<br />\nSKU: WC-2003<br />\nWall Size : 76&rdquo; x 20&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 3, 7, '["12"]', NULL, 5, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:02'),
(206, 'Tritych L1 - 76” x 20”', 'tritych-l1-76-x-20', 'WC-2004', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L1<br />\nSKU: WC-2004<br />\nWall Size : 76&rdquo; x 20&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 4, 7, '["12"]', NULL, 6, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:20'),
(207, 'Tritych L2 - 76” x 20”', 'tritych-l2-76-x-20', 'WC-2005', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L2<br />\nSKU: WC-2005<br />\nWall Size : 76&rdquo; x 20&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 5, 7, '["12"]', NULL, 8, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:37'),
(209, 'Stair Climber L1 - 86” x 59”', 'stair-climber-l1-86-x-59', 'WC-2042', 0, 0, '', 'Style: Stair Climber<br />\nArrangement: Stair Climber L1<br />\nSKU: WC-2042<br />\nWall Size : 86&rdquo; x 59&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 3-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 4, 7, '["12"]', NULL, 2, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:54'),
(210, 'Tritych L3 - 76” x 20”', 'tritych-l3-76-x-20', 'WC-2006', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L3<br />\nSKU: WC-2006<br />\nWall Size : 76&rdquo; x 20&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 6, 7, '["12"]', NULL, 9, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:08:11'),
(211, 'Tritych M4 - 43” x 35”', 'tritych-m4-43-x-35', 'WC-2007', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych M4<br />\nSKU: WC-2007<br />\nWall Size : 43&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 7, 7, '["12"]', NULL, 10, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:08:28'),
(212, 'Tritych M5 - 43” x 35”', 'tritych-m5-43-x-35', 'WC-2008', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych M5<br />\nSKU: WC-2008<br />\nWall Size : 43&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 8, 7, '["12"]', NULL, 11, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:08:45'),
(213, 'Tritych M6 - 54” x 24”', 'tritych-m6-54-x-24', 'WC-2009', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych M6<br />\nSKU: WC-2009<br />\nWall Size : 54&rdquo; x 24&rdquo;<br />\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 9, 7, '["12"]', NULL, 12, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:02'),
(214, 'Tritych L4 - 53” x 43”', 'tritych-l4-53-x-43', 'WC-2010', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L4<br />\nSKU: WC-2010<br />\nWall Size : 53&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 10, 7, '["12"]', NULL, 13, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:19'),
(215, 'Tritych L5 - 53” x 43”', 'tritych-l5-53-x-43', 'WC-2011', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L5<br />\nSKU: WC-2011<br />\nWall Size : 53&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 11, 7, '["12"]', NULL, 14, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:36'),
(216, 'Tritych L6 - 66” x 30”', 'tritych-l6-66-x-30', 'WC-2012', 0, 0, '', 'Style: Tritych<br />\nArrangement: Tritych L6<br />\nSKU: WC-2012<br />\nWall Size : 66&rdquo; x 30&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 12, 7, '["12"]', NULL, 15, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:53'),
(217, 'Four Square M1 - 35” x 35”', 'four-square-m1-35-x-35', 'WC-2013', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square M1<br />\nSKU: WC-2013<br />\nWall Size : 35&rdquo; x 35&rdquo;<br />\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 1, 7, '["12"]', NULL, 16, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:10:10'),
(218, 'Four Square L1 - 43” x 43”', 'four-square-l1-43-x-43', 'WC-2014', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square L1<br />\nSKU: WC-2014<br />\nWall Size : 43&rdquo; x 43&rdquo;<br />\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 2, 7, '["12"]', NULL, 17, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:10:27'),
(219, 'Four Square M2 - 73” x 16”', 'four-square-m2-73-x-16', 'WC-2015', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square M2<br />\nSKU: WC-2015<br />\nWall Size : 73&rdquo; x 16&rdquo;<br />\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 3, 7, '["12"]', NULL, 18, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:10:44'),
(220, 'Four Square L2 - 89” x 20”', 'four-square-l2-89-x-20', 'WC-2016', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square L2<br />\nSKU: WC-2016<br />\nWall Size : 89&rdquo; x 20&rdquo;<br />\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 4, 7, '["12"]', NULL, 19, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:01'),
(221, 'Four Square M3 - 16” x 73”', 'four-square-m3-16-x-73', 'WC-2017', 0, 0, '', '4 Square<br />\nArrangement: Four Square M3<br />\nSKU: WC-2017<br />\nWall Size : 16&rdquo; x 73&rdquo;<br />\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 5, 7, '["12"]', NULL, 20, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:18'),
(222, 'Four Square L3 - 20” x 89”', 'four-square-l3-20-x-89', 'WC-2018', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square L3<br />\nSKU: WC-2018<br />\nWall Size : 20&rdquo; x 89&rdquo;<br />\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 6, 7, '["12"]', NULL, 21, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:36'),
(223, 'Four Square M4 - 54” x 35”', 'four-square-m4-54-x-35', 'WC-2019', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square M4<br />\nSKU: WC-2019<br />\nWall Size : 54&rdquo; x 35&rdquo;<br />\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 7, 7, '["12"]', NULL, 22, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:53'),
(224, 'Four Square L4 - 66” x 43”', 'four-square-l4-66-x-43', 'WC-2020', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square L4<br />\nSKU: WC-2020<br />\nWall Size : 66&rdquo; x 43&rdquo;<br />\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 8, 7, '["12"]', NULL, 23, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:12:10'),
(225, 'Four Square M5 - 35” x 54”', 'four-square-m5-35-x-54', 'WC-2021', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square M5<br />\nSKU: WC-2021<br />\nWall Size : 35&rdquo; x 54&rdquo;<br />\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 9, 7, '["12"]', NULL, 24, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:12:27'),
(226, 'Four Square L5 - 43” x 66”', 'four-square-l5-43-x-66', 'WC-2022', 0, 0, '', 'Style: 4 Square<br />\nArrangement: Four Square L5<br />\nSKU: WC-2022<br />\nWall Size : 43&rdquo; x 66&rdquo;<br />\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 10, 7, '["12"]', NULL, 25, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:12:44'),
(227, 'Mordern M1 - 62” x 35”', 'mordern-m1-62-x-35', 'WC-2023', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M1<br />\nSKU: WC-2023<br />\nWall Size : 62&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 1, 7, '["12"]', NULL, 26, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:01'),
(228, 'Mordern M2 - 62” x 35”', 'mordern-m2-62-x-35', 'WC-2024', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M2<br />\nSKU: WC-2024<br />\nWall Size : 62&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 2, 7, '["12"]', NULL, 27, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:18'),
(229, 'Mordern M3 - 62” x 35”', 'mordern-m3-62-x-35', 'WC-2025', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M3<br />\r\nSKU: WC-2025<br />\r\nWall Size : 62&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 3, 7, '["12"]', NULL, 28, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2017-03-16 05:50:30'),
(230, 'Mordern M4 - 62” x 35”', 'mordern-m4-62-x-35', 'WC-2026', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M4<br />\nSKU: WC-2026<br />\nWall Size : 62&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 4, 7, '["12"]', NULL, 29, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:52'),
(231, 'Mordern M5 - 54” x 35”', 'mordern-m5-54-x-35', 'WC-2027', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M5<br />\nSKU: WC-2027<br />\nWall Size : 54&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 5, 7, '["12"]', NULL, 30, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:14:09'),
(232, 'Mordern M6 - 70” x 35”', 'mordern-m6-70-x-35', 'WC-2028', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M6<br />\nSKU: WC-2028<br />\nWall Size : 70&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 6, 7, '["12"]', NULL, 31, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:14:26'),
(233, 'Mordern M7 - 70” x 35”', 'mordern-m7-70-x-35', 'WC-2029', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M7<br />\nSKU: WC-2029<br />\nWall Size : 70&rdquo; x 35&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 7, 7, '["12"]', NULL, 32, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:14:43'),
(234, 'Mordern M8 - 62” x 43”', 'mordern-m8-62-x-43', 'WC-2030', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern M8<br />\nSKU: WC-2030<br />\nWall Size : 62&rdquo; x 43&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 8, 7, '["12"]', NULL, 33, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:00'),
(235, 'Mordern L1 - 76” x 43”', 'mordern-l1-76-x-43', 'WC-2031', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L1<br />\nSKU: WC-2031<br />\nWall Size : 76&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 9, 7, '["12"]', NULL, 34, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:17'),
(236, 'Mordern L2 - 76” x 43”', 'mordern-l2-76-x-43', 'WC-2032', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L2<br />\nSKU: WC-2032<br />\nWall Size : 76&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 10, 7, '["12"]', NULL, 35, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:35'),
(237, 'Mordern L3 - 76” x 43”', 'mordern-l3-76-x-43', 'WC-2033', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L3<br />\nSKU: WC-2033<br />\nWall Size : 76&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 11, 7, '["12"]', NULL, 36, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:52'),
(238, 'Mordern L4 - 86” x 43”', 'mordern-l4-86-x-43', 'WC-2034', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L4<br />\nSKU: WC-2034<br />\nWall Size : 86&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 12, 7, '["12"]', NULL, 37, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:16:09'),
(239, 'Mordern L5 - 76” x 53”', 'mordern-l5-76-x-53', 'WC-2035', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L5<br />\nSKU: WC-2035<br />\nWall Size : 86&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 13, 7, '["12"]', NULL, 38, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:16:26'),
(240, 'Mordern L6 - 76” x 43”', 'mordern-l6-76-x-43', 'WC-2036', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L6<br />\nSKU: WC-2036<br />\nWall Size : 76&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 14, 7, '["12"]', NULL, 39, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:16:43'),
(241, 'Mordern L7 - 66” x 43”', 'mordern-l7-66-x-43', 'WC-2037', 0, 0, '', 'Style: Modern<br />\nArrangement: Mordern L7<br />\nSKU: WC-2037<br />\nWall Size : 66&rdquo; x 43&rdquo;<br />\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\nImageStylor Canvas', '', '', 1, 15, 7, '["12"]', NULL, 40, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:00'),
(242, 'Mordern L8 - 86” x 43”', 'mordern-l8-86-x-43', 'WC-2038', 0, 0, '', '', '', '', 1, 16, 7, '["12"]', NULL, 41, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:17'),
(243, 'Stair Climber M1 - 70” x 49”', 'stair-climber-m1-70-x-49', 'WC-2039', 0, 0, '', 'Style: Stair Climber<br />\nArrangement: Stair Climber M1<br />\nSKU: WC-2039<br />\nWall Size : 70&rdquo; x 49&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 3-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 1, 7, '["12"]', NULL, 42, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:34'),
(244, 'Stair Climber M2 - 70” x 49”', 'stair-climber-m2-70-x-49', 'WC-2040', 0, 0, '', 'Style: Stair Climber<br />\nArrangement: Stair Climber M2<br />\nSKU: WC-2040<br />\nWall Size : 70&rdquo; x 49&rdquo;<br />\nContains: 2-16&rdquo;x16&rdquo;, 3-16&rdquo;x24&rdquo;<br />\nImageStylor Canvas', '', '', 1, 2, 7, '["12"]', NULL, 43, 1, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:51'),
(245, 'Stair Climber L2 - 86” x 59”', 'stair-climber-l2-86-x-59', 'WC-2041', 0, 20, '', 'Style: Stair Climber<br />\r\nArrangement: Stair Climber L2<br />\r\nSKU: WC-2041<br />\r\nWall Size : 86&rdquo; x 59&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 3-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 3, 7, '["12"]', NULL, 44, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-02 03:59:07'),
(252, 'testing product', 'testing-product', 'testing-product', 0, 20, 'Click the gear icon in the upper right corner of any tab, then, from the drop-down list, select &quot;Payments&quot;.', '<div segoe="" style="color: rgb(68, 68, 68); font-family: Roboto, " ui="">We sent a payment for your Google AdSense earnings on Mar 5, 2017.</div>\r\n\r\n<div segoe="" style="color: rgb(68, 68, 68); font-family: Roboto, " ui="">If you haven&rsquo;t received your payment within 5 business days from the date of this email, please contact your bank for more details.</div>\r\n', '', '', 0, 1, 8, '["32","25","12"]', NULL, 10, 1, NULL, 0, 0, '2017-03-22 02:01:27', '2017-04-03 17:45:26'),
(253, 'Image Gala Box', 'image-gala-box', 'SPE-260', 8.44, 0, 'Image Gala Box is built from rigid, heavy duty and warp-resistant material, enclosed back has dibond supports for extra sturdiness. You can choose to wrap your entire image all around or any vibrant color for the edge.  Each box is individually hand-crafted by our expertises to reach a gallery expectation.', '<span style="font-family:times new roman,times,serif;"><tt><samp><span style="font-size: 14px;">Meet our latest premium quality alternative to original art! Your cherished artistic piece will be showcased off the wall with rich color, texture and detail.</span><br font-size:="" myriad="" style="box-sizing: border-box; font-family: " w01="" />\r\n<br font-size:="" myriad="" style="box-sizing: border-box; font-family: " w01="" />\r\n<span style="font-size: 14px;">Image Gala Box is built from rigid, heavy duty and warp-resistant material, enclosed back has dibond supports for extra sturdiness. You can choose to wrap your entire image all around or any vibrant color for the edge. &nbsp;Each box is individually hand-crafted by our expertises to reach a gallery expectation.</span><br font-size:="" myriad="" style="box-sizing: border-box; font-family: " w01="" />\r\n<br font-size:="" myriad="" style="box-sizing: border-box; font-family: " w01="" />\r\n<span style="font-size: 14px;">Image Gala Box can be built to any size up to 86&rdquo;x38&rdquo;, with thickness of 20mm, 30mm, 40mm and 50mm for you to choose. &nbsp;It&rsquo;s light weighted and very easy to hang with keyhole on the back.&nbsp;</span></samp></tt></span>', 'Image Gala Box is built from rigid, heavy duty ', 'Image Gala Box is built from rigid, heavy duty and warp-resistant material, enclosed back has dibond supports for extra sturdiness. You can choose to wrap your entire image all around or any vibrant color for the edge.  Each box is individually hand-craft', 1, 1, 0, '["45","25","12"]', NULL, 0, 1, NULL, 0, 0, '2017-03-22 17:30:29', '2017-04-21 23:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `product_id`, `category_id`) VALUES
(1, 50, 21),
(2, 69, 21),
(3, 70, 21),
(4, 71, 21),
(5, 72, 21),
(7, 75, 51),
(8, 77, 51),
(9, 79, 51),
(10, 80, 51),
(11, 81, 51),
(12, 90, 28),
(13, 95, 28),
(14, 96, 28),
(15, 187, 17),
(16, 188, 17),
(17, 189, 43),
(18, 190, 37),
(19, 191, 43),
(20, 193, 37),
(21, 195, 43),
(22, 196, 43),
(23, 197, 29),
(24, 198, 36),
(25, 199, 29),
(26, 201, 43),
(27, 202, 29),
(28, 203, 53),
(29, 204, 53),
(30, 205, 53),
(31, 206, 53),
(32, 207, 53),
(33, 209, 58),
(34, 210, 53),
(35, 211, 53),
(36, 212, 53),
(37, 213, 53),
(38, 214, 53),
(39, 215, 53),
(40, 216, 53),
(41, 217, 56),
(42, 218, 56),
(43, 219, 56),
(44, 220, 56),
(45, 221, 56),
(46, 222, 56),
(47, 223, 56),
(48, 224, 56),
(49, 225, 56),
(50, 226, 56),
(51, 227, 57),
(52, 228, 57),
(53, 229, 57),
(54, 230, 57),
(55, 231, 57),
(56, 232, 57),
(57, 233, 57),
(58, 234, 57),
(59, 235, 57),
(60, 236, 57),
(61, 237, 57),
(62, 238, 57),
(63, 239, 57),
(64, 240, 57),
(65, 241, 57),
(66, 242, 57),
(67, 243, 58),
(68, 244, 58),
(69, 245, 58),
(76, 252, 51),
(77, 253, 51),
(78, 253, 69),
(79, 253, 62),
(80, 253, 70),
(81, 253, 63),
(82, 253, 67),
(83, 253, 68),
(84, 253, 74),
(85, 253, 66),
(86, 253, 64),
(87, 253, 65);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `key`) VALUES
(1, 'Polygon shape', 'polygon_shape'),
(2, 'Right Triangle Shape', 'right_triangle_shape'),
(3, 'Equilateral Triangle Shape', 'equilateral_triangle_shape'),
(4, 'Rhombus Shape', 'rhombus_shape'),
(5, 'Polygon Shape', 'polygon_shape'),
(6, 'Wall Collage', 'wall_collage'),
(7, 'SVG Attached file', 'svg_attached_file');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Root', 0, 0, '2015-04-21 11:16:33', '2015-04-21 11:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `shape_layouts`
--

CREATE TABLE `shape_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `wall_size_h` double NOT NULL DEFAULT '0',
  `wall_size_w` double NOT NULL DEFAULT '0',
  `current_zoom` double NOT NULL DEFAULT '1',
  `svg_file` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shape_layouts`
--

INSERT INTO `shape_layouts` (`id`, `name`, `wall_size_h`, `wall_size_w`, `current_zoom`, `svg_file`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test', 10, 20, 1, 'assets/svg/0cbc6611f5540bd0809a388dc95a615b-shape.svg', 1, 0, 0, '2015-06-04 03:14:46', '2015-06-04 03:16:59'),
(2, 'test john', 45, 45, 1, 'assets/svg/de2c7e482c3bd189a33a44a43b3d4425-shape.svg', 1, 0, 0, '2015-06-16 02:20:41', '2015-06-16 02:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `shape_layout_details`
--

CREATE TABLE `shape_layout_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `width` double NOT NULL DEFAULT '0',
  `height` double NOT NULL DEFAULT '0',
  `coor_x` double NOT NULL DEFAULT '0',
  `coor_y` double NOT NULL DEFAULT '0',
  `rotate` int(11) NOT NULL DEFAULT '0',
  `d` text COLLATE utf8_unicode_ci,
  `transform` text COLLATE utf8_unicode_ci,
  `shape_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shape_layout_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shape_layout_details`
--

INSERT INTO `shape_layout_details` (`id`, `width`, `height`, `coor_x`, `coor_y`, `rotate`, `d`, `transform`, `shape_type`, `shape_layout_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 9.3, 0, 45, '464.8893796134397,-69.50672070595664 714.8893796134391,-69.50672070595664 589.8893796134394,-319.5067207059566', 'rotate(45 382 234)', 'equilateral-triangle', 1, 0, 0, '2015-06-04 03:14:46', '2015-06-04 03:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `size_lists`
--

CREATE TABLE `size_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizew` float(8,2) NOT NULL,
  `sizeh` float(8,2) NOT NULL,
  `cost_price` float(8,2) NOT NULL,
  `sell_price` float(8,2) NOT NULL,
  `sell_percent` float(8,2) NOT NULL,
  `bigger_price` float(8,2) NOT NULL,
  `bigger_percent` float(8,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size_lists`
--

INSERT INTO `size_lists` (`id`, `sizew`, `sizeh`, `cost_price`, `sell_price`, `sell_percent`, `bigger_price`, `bigger_percent`, `product_id`, `default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(22, 12.00, 8.00, 0.00, 36.47, 0.00, 0.00, 0.00, 50, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 14:57:42'),
(25, 10.00, 10.00, 0.00, 36.78, 0.00, 0.00, 0.00, 69, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 14:58:29'),
(28, 11.60, 10.00, 41.24, 53.61, 130.00, 65.00, 121.24, 70, 0, 8, 8, '0000-00-00 00:00:00', '2015-06-04 13:59:05'),
(31, 20.00, 12.00, 0.00, 55.44, 0.00, 0.00, 0.00, 71, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 14:59:39'),
(34, 18.00, 15.00, 62.10, 62.10, 100.00, 0.00, 0.00, 72, 0, 8, 8, '0000-00-00 00:00:00', '2015-06-04 13:51:18'),
(49, 8.00, 8.00, 0.00, 31.75, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(55, 24.00, 8.00, 0.00, 51.82, 0.00, 0.00, 0.00, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:04'),
(186, 16.00, 20.00, 0.00, 50.00, 0.00, 0.00, 0.00, 96, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:02:30'),
(187, 20.00, 24.00, 0.00, 70.00, 0.00, 0.00, 0.00, 95, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:02:12'),
(191, 24.00, 36.00, 0.00, 85.00, 0.00, 0.00, 0.00, 90, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:55'),
(241, 11.00, 14.00, 0.00, 12.00, 0.00, 0.00, 0.00, 0, 1, 8, 8, '0000-00-00 00:00:00', '2015-03-04 10:08:52'),
(242, 8.00, 10.00, 0.00, 18.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:03:03'),
(243, 11.00, 14.00, 0.00, 30.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:03:03'),
(244, 16.00, 20.00, 0.00, 55.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:03:03'),
(245, 24.00, 36.00, 0.00, 80.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:03:03'),
(261, 5.00, 7.00, 0.00, 12.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:07:41'),
(262, 8.00, 10.00, 0.00, 18.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:07:41'),
(263, 11.00, 14.00, 0.00, 30.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:07:41'),
(264, 16.00, 20.00, 0.00, 55.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:07:41'),
(265, 24.00, 36.00, 0.00, 80.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-05 08:07:41'),
(606, 5.00, 7.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-31 10:45:10'),
(607, 8.00, 10.00, 0.00, 15.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-31 10:45:10'),
(608, 11.00, 14.00, 0.00, 25.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-31 10:45:10'),
(609, 16.00, 20.00, 0.00, 45.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-31 10:45:10'),
(610, 24.00, 36.00, 0.00, 60.00, 0.00, 0.00, 0.00, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-31 10:45:10'),
(806, 12.00, 16.00, 0.00, 48.96, 0.00, 0.00, 0.00, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:21'),
(808, 12.00, 24.00, 0.00, 61.91, 0.00, 0.00, 0.00, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:30'),
(812, 12.00, 18.00, 54.94, 0.00, 0.00, 0.00, 0.00, 81, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(813, 16.00, 24.00, 74.14, 0.00, 0.00, 0.00, 0.00, 81, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(814, 20.00, 30.00, 94.38, 0.00, 0.00, 0.00, 0.00, 81, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(815, 24.00, 36.00, 119.99, 0.00, 0.00, 0.00, 0.00, 81, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(816, 28.00, 42.00, 145.63, 0.00, 0.00, 0.00, 0.00, 81, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(817, 18.00, 24.00, 0.00, 74.93, 0.00, 0.00, 0.00, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:21'),
(818, 24.00, 32.00, 0.00, 109.13, 0.00, 0.00, 0.00, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:21'),
(819, 30.00, 40.00, 0.00, 146.80, 0.00, 0.00, 0.00, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:21'),
(820, 32.00, 8.00, 0.00, 62.35, 0.00, 0.00, 0.00, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:04'),
(821, 36.00, 12.00, 0.00, 79.07, 0.00, 0.00, 0.00, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:04'),
(822, 48.00, 12.00, 0.00, 97.88, 0.00, 0.00, 0.00, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:04'),
(823, 48.00, 16.00, 0.00, 114.66, 0.00, 0.00, 0.00, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:04'),
(824, 18.00, 36.00, 0.00, 98.99, 0.00, 0.00, 0.00, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:30'),
(825, 20.00, 40.00, 0.00, 114.23, 0.00, 0.00, 0.00, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:30'),
(826, 24.00, 48.00, 0.00, 144.79, 0.00, 0.00, 0.00, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:30'),
(827, 12.00, 12.00, 0.00, 43.10, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(828, 16.00, 16.00, 0.00, 56.64, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(829, 20.00, 20.00, 0.00, 73.20, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(830, 24.00, 24.00, 0.00, 89.59, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(831, 28.00, 28.00, 0.00, 110.30, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(832, 32.00, 32.00, 0.00, 130.28, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(833, 36.00, 36.00, 0.00, 154.97, 0.00, 0.00, 0.00, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(838, 16.00, 20.00, 0.00, 125.00, 0.00, 150.00, 0.00, 187, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:02:47'),
(839, 16.00, 20.00, 129.13, 0.00, 0.00, 0.00, 0.00, 188, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-16 05:46:22'),
(840, 11.00, 14.00, 30.24, 0.00, 0.00, 0.00, 0.00, 190, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-21 06:29:19'),
(842, 9.00, 12.00, 34.88, 34.88, 0.00, 34.88, 0.00, 80, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:01:21'),
(843, 8.00, 12.00, 39.80, 0.00, 0.00, 0.00, 0.00, 81, 0, 8, 8, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(844, 8.00, 16.00, 0.00, 41.53, 0.00, 0.00, 0.00, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 15:00:30'),
(1260, 12.00, 12.00, 107.07, 107.07, 100.00, 107.07, 100.00, 50, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1261, 12.00, 12.00, 107.07, 107.07, 100.00, 107.07, 100.00, 69, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1263, 12.00, 12.00, 107.07, 107.07, 100.00, 107.07, 100.00, 71, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1266, 12.00, 12.00, 99.65, 99.65, 100.00, 99.65, 100.00, 75, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1267, 12.00, 12.00, 99.65, 99.65, 100.00, 99.65, 100.00, 79, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1268, 12.00, 12.00, 99.65, 99.65, 100.00, 99.65, 100.00, 80, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1269, 12.00, 12.00, 46.19, 46.19, 100.00, 46.19, 100.00, 81, 0, 0, 0, '0000-00-00 00:00:00', '2017-03-22 17:58:51'),
(1270, 12.00, 12.00, 66.33, 66.33, 100.00, 66.33, 100.00, 187, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1271, 12.00, 12.00, 86.94, 86.94, 100.00, 86.94, 100.00, 188, 0, 0, 0, '0000-00-00 00:00:00', '2017-03-16 05:46:22'),
(1272, 12.00, 12.00, 29.93, 29.93, 100.00, 29.93, 100.00, 190, 0, 0, 0, '0000-00-00 00:00:00', '2017-03-21 06:29:19'),
(1273, 62.00, 16.00, 182.15, 182.15, 100.00, 182.15, 100.00, 203, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1274, 62.00, 16.00, 182.15, 182.15, 100.00, 182.15, 100.00, 204, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1275, 76.00, 20.00, 182.15, 182.15, 100.00, 182.15, 100.00, 205, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1276, 76.00, 20.00, 235.15, 235.15, 100.00, 235.15, 100.00, 206, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1277, 76.00, 20.00, 235.15, 235.15, 100.00, 235.15, 100.00, 207, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1278, 86.00, 59.00, 403.15, 403.15, 100.00, 403.15, 100.00, 209, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1279, 76.00, 20.00, 235.15, 235.15, 100.00, 235.15, 100.00, 210, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1280, 43.00, 35.00, 182.15, 182.15, 100.00, 182.15, 100.00, 211, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1281, 43.00, 35.00, 182.15, 182.15, 100.00, 182.15, 100.00, 212, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1282, 54.00, 24.00, 182.15, 182.15, 100.00, 182.15, 100.00, 213, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1283, 53.00, 43.00, 235.15, 235.15, 100.00, 235.15, 100.00, 214, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1284, 53.00, 43.00, 235.15, 235.15, 100.00, 235.15, 100.00, 215, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1285, 66.00, 30.00, 235.15, 235.15, 100.00, 235.15, 100.00, 216, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1286, 35.00, 35.00, 221.15, 221.15, 100.00, 221.15, 100.00, 217, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1287, 43.00, 43.00, 272.15, 272.15, 100.00, 272.15, 100.00, 218, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1288, 73.00, 16.00, 221.15, 221.15, 100.00, 221.15, 100.00, 219, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1289, 89.00, 20.00, 272.15, 272.15, 100.00, 272.15, 100.00, 220, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1290, 16.00, 73.00, 221.15, 221.15, 100.00, 221.15, 100.00, 221, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1291, 20.00, 89.00, 272.15, 272.15, 100.00, 272.15, 100.00, 222, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1292, 54.00, 35.00, 221.15, 221.15, 100.00, 221.15, 100.00, 223, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1293, 66.00, 43.00, 272.15, 272.15, 100.00, 272.15, 100.00, 224, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1294, 35.00, 54.00, 221.15, 221.15, 100.00, 221.15, 100.00, 225, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1295, 43.00, 66.00, 272.15, 272.15, 100.00, 272.15, 100.00, 226, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1296, 62.00, 35.00, 250.15, 250.15, 100.00, 250.15, 100.00, 227, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1297, 62.00, 35.00, 250.12, 250.12, 100.00, 250.12, 100.00, 228, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1298, 62.00, 35.00, 250.15, 250.15, 100.00, 250.15, 100.00, 229, 0, 0, 0, '0000-00-00 00:00:00', '2017-03-16 05:50:30'),
(1299, 62.00, 35.00, 250.15, 250.15, 100.00, 250.15, 100.00, 230, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1300, 54.00, 35.00, 250.15, 250.15, 100.00, 250.15, 100.00, 231, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1301, 70.00, 35.00, 250.15, 250.15, 100.00, 250.15, 100.00, 232, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1302, 70.00, 35.00, 250.15, 250.15, 100.00, 250.15, 100.00, 233, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1303, 62.00, 43.00, 250.15, 250.15, 100.00, 250.15, 100.00, 234, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1304, 76.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 235, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1305, 76.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 236, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1306, 76.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 237, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1307, 86.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 238, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1308, 76.00, 53.00, 322.15, 322.15, 100.00, 322.15, 100.00, 239, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1309, 76.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 240, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1310, 66.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 241, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1311, 86.00, 43.00, 322.15, 322.15, 100.00, 322.15, 100.00, 242, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1312, 70.00, 49.00, 311.15, 311.15, 100.00, 311.15, 100.00, 243, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1313, 70.00, 49.00, 311.15, 311.15, 100.00, 311.15, 100.00, 244, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1314, 86.00, 59.00, 403.15, 500.00, 124.02, 723.45, 144.69, 245, 0, 0, 0, '0000-00-00 00:00:00', '2015-06-02 04:28:24'),
(1321, 12.00, 12.00, 0.00, 0.00, 0.00, 0.00, 100.00, 252, 1, 0, 0, '2017-03-22 02:01:27', '2017-03-29 23:36:44'),
(1322, 8.00, 12.00, 0.00, 999.00, 0.00, 999.00, 100.00, 253, 0, 0, 0, '2017-03-22 17:30:29', '2017-04-21 23:09:32'),
(1323, 12.00, 12.00, 0.00, 0.00, 0.00, 0.00, 100.00, 253, 1, 0, 0, '2017-03-23 17:37:12', '2017-04-21 23:09:32'),
(1324, 12.00, 18.00, 0.00, 0.00, 0.00, 0.00, 100.00, 253, 0, 0, 0, '2017-03-23 17:37:12', '2017-04-21 23:09:32'),
(1325, 16.00, 24.00, 0.00, 0.00, 0.00, 0.00, 100.00, 253, 0, 0, 0, '2017-03-23 17:37:12', '2017-04-21 23:09:32'),
(1326, 20.00, 30.00, 0.00, 0.00, 0.00, 0.00, 100.00, 253, 0, 0, 0, '2017-03-23 17:37:12', '2017-04-21 23:09:32'),
(1327, 24.00, 36.00, 0.00, 0.00, 0.00, 0.00, 100.00, 253, 0, 0, 0, '2017-03-23 17:37:12', '2017-04-21 23:09:32'),
(1328, 28.00, 42.00, 0.00, 0.00, 0.00, 0.00, 100.00, 253, 0, 0, 0, '2017-03-23 17:37:12', '2017-04-21 23:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hexagon Shape', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Right Triangle Shape', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Equilateral Triangle Shape', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Rhombus Shape', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Polygon 1 Shape', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'SVG Attached file', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Wall Collage', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Border Canvas', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Flower Split', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Imagestylor', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yourcollection` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `subscribe`, `remember_token`, `yourcollection`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`, `fb_id`) VALUES
(1, 'Ernestina', 'Homenick', 'ukunze@caspersimonis.com', '$2y$10$Ymp3UUwY/4tx2cFkKly1xO02DQqZyYtDLaQk5HbnXOiDiY98FIQgS', 0, NULL, NULL, 1, 0, 0, '2015-04-16 14:26:57', '2015-04-16 14:26:57', NULL),
(2, 'Julius', 'Corkery', 'wlegros@grady.com', '$2y$10$OEhSqUV5tOebpPOXNRDc9OCn8RpfR.xttNLBXup4t1y5HArA4L1oi', 0, NULL, NULL, 1, 0, 0, '2015-04-16 14:26:57', '2015-04-16 14:26:57', NULL),
(3, 'Elyse', 'Fay', 'layne.o\'keefe@lebsack.com', '$2y$10$ROsVQRgiZceJQi9WeZNCC.DlCdzrhWbR/3iqBUqrG3OZ.kVmBfBhK', 0, NULL, NULL, 1, 0, 0, '2015-04-16 14:26:57', '2015-04-16 14:26:57', NULL),
(4, 'Luigi', 'Kulas', 'kessler.kathryn@hessel.com', '$2y$10$BpWHN69ILWl1MKmmCLdimOVtS6D3BRI1W37RcCHG9wIbFt0cUdMqC', 0, NULL, NULL, 1, 0, 0, '2015-04-16 14:26:57', '2015-04-16 14:26:57', NULL),
(5, 'Dayton', 'Senger', 'alvis.weissnat@dubuquekuphal.org', '$2y$10$IxMcN/khNcbFO8f1G7puM.yztvvMmm/i5aMyUSNL7dhe.G5mJh/uW', 0, NULL, NULL, 1, 0, 0, '2015-04-16 14:26:57', '2015-04-16 14:26:57', NULL),
(6, NULL, NULL, 'jared@evolutionmultimedia.ca', '$2y$10$tBCPCpcccI69MFQagcJax.kiYQGshNaPqdc.A9Nhibw1cLma.lzQO', 0, NULL, NULL, 1, 0, 0, '2015-06-02 17:12:21', '2015-06-02 17:12:21', NULL),
(7, NULL, NULL, 'tonva@anvydigital.com', '$2y$10$nGHCaFdLBBids8aPgPRRZ.1l2oAbVW7QAaRfrdwBknCtaOv4xibYC', 0, NULL, NULL, 1, 0, 0, '2015-06-24 19:03:19', '2015-06-24 19:03:19', NULL),
(8, NULL, NULL, 'nmtri44@gmail.com', '$2y$10$yyIj1uC/71X72u6KyHlvguaKUK57gBnWUrEZfZCWfAgkDH7przvWC', 0, '2Ju0VpmF8XBRhkwZe00AatVHkG63IoKugdRREOQ6zgYu9JAkKYcSBAxDCsHg', NULL, 1, 0, 0, '2016-09-29 02:30:05', '2017-03-30 01:15:25', NULL),
(9, NULL, NULL, 'hth.tung90@yahoo.com', '$2y$10$wjmGxqGDUmzTac3Fux5cauJJKBrGG1MSeIG8/ZNeQ6hrJ2cnyEHmC', 0, NULL, NULL, 1, 0, 0, '2016-11-18 01:13:10', '2016-11-18 01:13:10', NULL),
(11, NULL, NULL, 'idesign2601@gmail.com', '$2y$10$XuxHKZUYjTh1P1Wup0xfwuPWhi7PcWFwrhSQL66k5shYbnpDPBMvS', 0, 'C3BnSopJaT77NaQwGOmYgn8gQ4EI0fvQLymXqzcYQzn3VKQ8ltFsnJTNCklJ', NULL, 1, 0, 0, '2017-01-31 20:10:45', '2017-03-02 23:45:04', NULL),
(14, NULL, NULL, 'hung@anvydigital.com', '$2y$10$UGpSgvLpV/EnwORolSb8Mu9m7OK8Iao3HzPDyHFeIVyLh3nQeWnp2', 0, 'dy99bqbaOsf9UrNi1HrJyXtEYBx5nYm1bC3n6EyxtQGKOjv8YX2ICziSwubY', '{"188":"2017-04-02 21:07:04","187":"2017-04-02 21:07:06","253":"2017-04-02 21:11:47"}', 1, 0, 0, '2017-03-16 23:55:35', '2017-04-07 02:47:16', NULL),
(15, NULL, NULL, 'nguyendaivu1213@gmail.com', '$2y$10$/tR7cgpLF9AqNC8BiM12n..kweADdvQzDE78GYcix4btL5g07aoUW', 0, '1lYdaWFQb6sek7lcStMizbmZ1ChOdogO6wQG7gMe2jP7gMQaR9p3L4cYNfQP', '{"253":"2017-03-27 07:10:42"}', 1, 0, 0, '2017-03-17 00:28:55', '2017-04-20 14:28:24', NULL),
(16, NULL, NULL, 'lqminhdev@yahoo.com', '$2y$10$Rd3RHzTkjSS2u.CKjHYYte3iKaoj6pewcTo1Zr97aFH7eo17d5bmy', 0, NULL, NULL, 1, 0, 0, '2017-03-17 02:14:59', '2017-04-04 00:48:10', '1546529432032935'),
(17, NULL, NULL, 'hung@mail.com', '$2y$10$m7xPOJrVjB/Cl/t2N1vHwucRfWIGFfe7KNAXxdv5kUHtdWc8eYBMy', 0, NULL, NULL, 1, 0, 0, '2017-03-17 23:59:43', '2017-03-17 23:59:43', NULL),
(18, NULL, NULL, 'tomnguyen2601@gmail.com', '$2y$10$G/mjVlT/7Ywq6Dvy9pds2uo2HqWz8R91LdHePtO50iwMXA/3VsyyO', 0, 'tudNsYy7rUVAvvOOjPpgXRUs0Uijj3LADZEjOkjl1Y36SgLSkhVxs6uOVfMq', '[]', 1, 0, 0, '2017-03-20 16:48:43', '2017-04-19 20:35:30', NULL),
(19, NULL, NULL, 'tam@anvydigital.com', '$2y$10$rdcDYzGZeY7N0c8VTHukzuXQ0XE.7DXfeuuLSd3/NKPZlNIKLOTqK', 0, NULL, NULL, 1, 0, 0, '2017-03-20 19:12:18', '2017-03-20 19:12:18', NULL),
(20, NULL, NULL, 'hung.test@gmail.com', '$2y$10$3jKP4r9iaeFkuNTLD.acgu8VRLTZb7hQasDvJKf9nK.d0ODTWDhDK', 0, NULL, NULL, 1, 0, 0, '2017-03-21 04:53:15', '2017-03-21 04:53:15', NULL),
(21, NULL, NULL, 'sinhvienca@gmail.com', '$2y$10$1JZ4vviBGJ/0KqX7dSK4vOOCIP6hU/D58Tgdo27cwoxNFXCLqgASi', 0, NULL, NULL, 1, 0, 0, '2017-03-23 18:02:10', '2017-03-23 18:02:10', NULL),
(22, 'Duy ', 'Le', 'duy@gmail.com', '$2y$10$u7GmIIm.J8Ze8jRyJSfJQO.GGDp/I8im.jpGhItIaSucVQobnziiu', 0, 'Q8z1gp6mPmm2MQS9ac6sr92RPYwlagGVbMr3MdUEF4RHkyCt6THnv6OT5SSg', NULL, 1, 0, 0, '2017-03-23 18:08:03', '2017-03-23 23:18:58', NULL),
(23, 'ddada', 'dadadd', 'dadada@gmail.com', '$2y$10$y5CT4r5jZqVbwvH5daD/J.m6DZustVzWikVUhkBIHO1vdQqPmNQhm', 0, 'o4zr0KPDJTdDYkfySQditmmZ9ZxgmoqLdfjRDnTweJdSP8hhSTAEhdn8HBaC', NULL, 1, 0, 0, '2017-03-24 05:37:23', '2017-03-24 05:37:49', NULL),
(25, NULL, NULL, 'hung3@gmail.com', '$2y$10$7D2W3Ct4P/9Hpv3ZjlywceaqkmAmPxyv1Lj5Ro5NCOnkStd8QdJMu', 0, 'U0ZDGDvJBr9bQMwUuPmL4o8OcCqE7rr6TcWJbLd7JYkLniR9DJuHrXuB7pkp', NULL, 1, 0, 0, '2017-03-24 06:17:15', '2017-03-28 00:50:40', NULL),
(26, NULL, NULL, 'sinhvien@gmail.com', '$2y$10$NB/4/kALJqTIDaW7Ptdx8uJ.Q06l2Jt5GFo3GuV21.n5FQKgkXKDy', 0, 'atEzFCxivorcPfvfGlWhBu3N00MBJ6aBy0pRsQ6Ltfz6VALLIdbl0eid1wRm', NULL, 1, 0, 0, '2017-03-24 17:58:59', '2017-03-24 18:04:53', NULL),
(27, NULL, NULL, 'sa@gmail.com', '$2y$10$p/U68afaMgiVUPmJME8te.7uepYCEGNw4jRJYn2aDr8DB72QtlNne', 0, 'f29Cm94UllO1JQVP4gfiXN2WaOL2J11UNCSQdogXN53OMmNKx6gLN166lnAM', NULL, 1, 0, 0, '2017-03-24 18:05:34', '2017-03-24 18:27:11', NULL),
(28, '', '', 'lqminhdev@gmail.com', '$2y$10$YC9dEcabV2YnycGv0NLic.kKNuqRQQkzdn1KBovjW5wTbNS5w72Bu', 1, NULL, NULL, 0, 0, 0, '0000-00-00 00:00:00', '2017-03-25 02:11:09', NULL),
(29, NULL, NULL, 'duy@yahoo.com', '$2y$10$U8D2mniDqJgFUa3Zocwxk.CTaf/nL3.ivrNV2ctd2nYKv6z9z/b5i', 0, NULL, NULL, 1, 0, 0, '2017-03-26 17:43:43', '2017-03-26 17:43:43', NULL),
(30, 'hung', 'Hung', 'hunglmkpc044@gmail.com', '$2y$10$D0Z2Kb.4Np8axcMT5nrZCOzqI4804Ck9Kgm2WQ0HfFrm5j3BIvIla', 0, NULL, NULL, 1, 0, 0, '2017-03-27 07:48:34', '2017-03-27 07:48:34', NULL),
(31, NULL, NULL, 'the@gmail.com', '$2y$10$Xi5igY2Jf/3z03gQdu..DetYyBYRDmNw2rq3Vh.YKKa/DVrGjWiV2', 0, NULL, NULL, 1, 0, 0, '2017-03-28 17:19:24', '2017-03-28 17:19:24', NULL),
(32, NULL, NULL, 'test@gmail.co', '$2y$10$xEJBkRrTYahGu9I01y6YXOx0GW.NUrzdeS4zmpktaYNoWaEykKVmm', 0, 'RBuUP2VMFXhAoXN7F85NS8rtHfgsEXvB0hdU6crCYcVJbxr287zissmzforF', NULL, 1, 0, 0, '2017-03-28 21:25:04', '2017-03-28 21:25:17', NULL),
(33, NULL, NULL, 'atcwebsite@gmail.com', '$2y$10$aDeDXsqX4pduddzVEOP5We0u5dhwufy/fzruUcg2VgSdhBwako1o2', 0, '4H8lxeOYM1HHPzPJsI6eFkjjTu8lbvWUYFUK85JsIzi2iyeMfUTk4MkfZhTe', NULL, 1, 0, 0, '2017-03-28 23:28:07', '2017-04-07 00:49:05', '1371819516218835'),
(34, NULL, NULL, 'vu.nguyen@anvydigital.com', '$2y$10$wWS8yr2uL0kEIxbV8mPcNOt3Iwz3V./fJihkK1Vy/Oa7IDw/zgSxq', 0, 'm6NnvXb2IbRIuU8ZlFJmLvL7EhPX46DhhVOaHdQDiMuplgbKSbGbYPo0mBg2', NULL, 1, 0, 0, '2017-03-28 23:39:38', '2017-03-28 23:41:12', NULL),
(35, NULL, NULL, 'vu.nguyen@gmail.com', '$2y$10$GhvcolDM9kKLDQ954eTOV.O.ZOy.sfmugX8.DDvmbufk9bGyH4uNq', 0, 'uvWYG3BVyZzGHE8vbR63MUsCAsgFy985tLWudyO6vW9eRh1XK1ZNb35jg8b6', NULL, 1, 0, 0, '2017-03-28 23:45:01', '2017-03-28 23:45:19', NULL),
(36, 'dad', 'dadada', 'dad@gmail.com', '$2y$10$VsS2n3AyilhetF.w00nd1.02/1myl8E4PJsgvFSxNU1WsCsFi7B.a', 0, NULL, NULL, 1, 0, 0, '2017-03-28 23:56:21', '2017-03-28 23:56:21', NULL),
(37, NULL, NULL, 'abv@yahoo.com', '$2y$10$X3uAz6HTzGK3ngW5yS7qzujOwpsQRBgbtqlh1RPuwPftNc1TWJt.S', 0, NULL, NULL, 1, 0, 0, '2017-03-29 17:29:41', '2017-03-29 17:29:41', NULL),
(38, 'Tam', 'Nguyen', 'asd32@yahoo.com', '$2y$10$jENjQVCDPABkCxSVXf3SlOTzHeqnGflaq74MWjo9Ypy1AOzeBkeBG', 0, 'a6rotA2bdV5fzJosld7wLOeN35EaQMlCjGnmtvhXC4gG5VuqNj9NvYB20qz5', NULL, 1, 0, 0, '2017-03-29 17:43:47', '2017-03-29 17:45:28', NULL),
(39, NULL, NULL, 'Kenvin@gmail.com', '$2y$10$12Dnrx535R2Li5qF5c/6puZ7FvKB1SFT9uay6NmkDSgV8m01slPfq', 0, NULL, '{"253":"2017-03-30 14:01:22","252":"2017-03-30 14:01:28"}', 1, 0, 0, '2017-03-30 17:17:24', '2017-03-30 18:01:28', NULL),
(40, 'Tom', 'Nguyen', 'tomkevin@gmail.com', '$2y$10$8tEOi6SAh0Vn0LbzCfh0jOkCPWmTb2dSGvl8BtKvkQPnQ7ebOU2lu', 0, NULL, NULL, 1, 0, 0, '2017-03-30 18:53:44', '2017-03-30 18:53:44', NULL),
(41, NULL, NULL, 'hung33@gmail.com', '$2y$10$KnIhBdFKNe5EBtre9raEa.8yDDevxPPpqE3nTNfLKI4n2Jbq1TDhm', 0, 'hZSmrKpcJnwiHFjHyRQTS5OXWJkVQk117HLBzAjwDgZ6365ee4LUIGXIUcjR', NULL, 1, 0, 0, '2017-04-03 00:57:10', '2017-04-03 00:57:18', NULL),
(44, 'Hung', 'Lam', 'lamminhkhanhhung.1990@gmail.com', '$2y$10$nCGHFNuwEydu0PHUkYzSnO5l1Ql6P/MifsXWQytU/O86wZ.9XiXFi', 0, 'NPTx7HcneuMLf23m4EZ7Pqr7tBry7Ipau8HjUlbZdL7sRqE6DIjrPnwMZfBI', NULL, 1, 0, 0, '2017-04-03 02:59:40', '2017-04-07 02:51:10', '1885110755088991'),
(45, 'Anvy', 'Pro', 'anvydigital2017@gmail.com', '$2y$10$uD.l4X5V.ZxbM9tPvlLXNuFos8s.66QK8sIgz5sPfcA5iyrH7F5dG', 0, NULL, '[]', 1, 0, 0, '2017-04-03 17:45:50', '2017-04-04 23:14:57', '171507010034708'),
(46, 'Hung', 'Lam', 'hunglmkpc045@gmail.com', '$2y$10$ECjqPwi6bRU8EkedtlsK1ehDwqfpHiS59rViIogbbUXz8C5OOYG5e', 0, '5JWE5Ob04ydlze9PojcrkWkDZvKkpCShsASNBSl4SPne4kvphA4JJW6XF9b6', NULL, 1, 0, 0, '2017-04-04 00:52:56', '2017-04-07 03:03:23', '279173455869183');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_configs`
--
ALTER TABLE `admin_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_id` (`key_id`,`deleted`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_short_name_index` (`short_name`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_menu_id_index` (`menu_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configures`
--
ALTER TABLE `configures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configures_ckey_index` (`ckey`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageables`
--
ALTER TABLE `imageables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imageables_image_id_index` (`image_id`),
  ADD KEY `imageables_imageable_id_index` (`imageable_id`);
ALTER TABLE `imageables` ADD FULLTEXT KEY `tag` (`option`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layout_details`
--
ALTER TABLE `layout_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `layout_details_layout_id_index` (`layout_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_index` (`parent_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_item_id_index` (`item_id`),
  ADD KEY `notifications_admin_id_index` (`admin_id`);

--
-- Indexes for table `optionables`
--
ALTER TABLE `optionables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionables_product_id_index` (`product_id`),
  ADD KEY `optionables_optionable_id_index` (`optionable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `options_key_unique` (`key`),
  ADD KEY `options_option_group_id_index` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_groups_key_unique` (`key`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_created_by_index` (`created_by`),
  ADD KEY `orders_updated_by_index` (`updated_by`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_index` (`order_id`),
  ADD KEY `order_details_product_id_index` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_short_name_index` (`short_name`),
  ADD KEY `pages_menu_id_index` (`menu_id`);

--
-- Indexes for table `password_reminders`
--
ALTER TABLE `password_reminders`
  ADD KEY `password_reminders_type_index` (`type`),
  ADD KEY `password_reminders_email_index` (`email`),
  ADD KEY `password_reminders_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `price_break`
--
ALTER TABLE `price_break`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `price_breaks`
--
ALTER TABLE `price_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_breaks_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_jt_id_unique` (`jt_id`),
  ADD KEY `products_short_name_index` (`short_name`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_product_id_index` (`product_id`),
  ADD KEY `products_categories_category_id_index` (`category_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `shape_layouts`
--
ALTER TABLE `shape_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shape_layout_details`
--
ALTER TABLE `shape_layout_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shape_layout_details_shape_layout_id_index` (`shape_layout_id`);

--
-- Indexes for table `size_lists`
--
ALTER TABLE `size_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_lists_product_id_index` (`product_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_configs`
--
ALTER TABLE `admin_configs`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `box`
--
ALTER TABLE `box`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `configures`
--
ALTER TABLE `configures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `imageables`
--
ALTER TABLE `imageables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `layout_details`
--
ALTER TABLE `layout_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
--
-- AUTO_INCREMENT for table `optionables`
--
ALTER TABLE `optionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2112;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `price_break`
--
ALTER TABLE `price_break`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `price_breaks`
--
ALTER TABLE `price_breaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shape_layouts`
--
ALTER TABLE `shape_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shape_layout_details`
--
ALTER TABLE `shape_layout_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `size_lists`
--
ALTER TABLE `size_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1329;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
