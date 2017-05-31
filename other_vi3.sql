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
-- Database: `other_vi3`
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'kei', '', 'hth.tung90@gmail.com', '$2y$10$BmaQ3kXgtNOggigyrDwDk.SoIapGVj6uzxA4lgkcF56Pq8DTYlg92', 1, 'PRZ2IGzYAUgpKwbeFOPGijIxP9STcjau6MRbfOAvFdG1VmKWhDnDZAEL9ALm', 1, 0, 1, '2015-04-16 01:26:56', '2017-01-31 00:12:36'),
(2, 'vu', '', 'vu.nguyen@gmail.com', '$2y$10$C8mW/HHqKj.XDCa29FwxROYoDKA6YNS8ssp.yHw1iebhv9Gl3HOCi', 1, NULL, 1, 0, 1, '2015-04-16 01:26:56', '2015-04-21 20:33:20'),
(3, 'tri', '', 'tri@mail.com', '$2y$10$C8mW/HHqKj.XDCa29FwxROYoDKA6YNS8ssp.yHw1iebhv9Gl3HOCi', 1, 'vF9f6ZpsR4QZsq7WYHiu3vyH2xb5P4L4pCUJy4Cl8v62Rtdi21YW2feba134', 1, 0, 1, '2015-04-16 01:26:56', '2015-04-20 22:17:26'),
(4, 'hung', '', 'hung@mail.com', '$2y$10$C8mW/HHqKj.XDCa29FwxROYoDKA6YNS8ssp.yHw1iebhv9Gl3HOCi', 1, NULL, 1, 0, 1, '2015-04-16 01:26:56', '2015-04-20 22:17:34');

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
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `order_no`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Banner 1', 1, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Banner 2', 2, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Banner 3', 3, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Banner 4', 5, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Banner 5', 6, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Banner 6', 0, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Banner 7', 7, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Banner 8', 8, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Banner 9', 9, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `short_name`, `meta_title`, `meta_description`, `order_no`, `parent_id`, `menu_id`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(17, 'Alloy Image Box', 'alloy-image-box', NULL, '', 3, 0, 33, 1, 0, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:21'),
(18, 'Acrylic Photo', 'acrylic-photo', NULL, '', 4, 0, 32, 1, 0, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:17'),
(19, 'Wood Prints', 'wood-prints', NULL, '', 6, 0, 31, 1, 0, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:14'),
(21, 'Shaped ImageStylor Canvas', 'shaped-imagestylor-canvas', NULL, '', 2, 0, 30, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:11'),
(28, 'ImageStyle', 'imagestyle', NULL, '', 5, 0, 29, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:06'),
(29, 'Wall Collage', 'wall-collage', NULL, '', 10, 0, 28, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:03'),
(30, 'Canvas Prints', 'canvas-prints', NULL, '', 0, 18, 27, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:54:00'),
(36, 'Tri-Photo HBL', 'triphoto-hbl', NULL, '', 8, 0, 26, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:57'),
(37, 'Smart Plaque', 'smart-plaque', NULL, '', 7, 0, 25, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:53'),
(42, 'Graphic Prints Collection', 'graphic-prints-collection', NULL, '', 0, 0, 24, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:50'),
(43, 'Wall Splits', 'wall-splits', NULL, '', 9, 0, 23, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:44'),
(47, 'Paper Prints', 'paper-prints', NULL, '', 1, 17, 22, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:41'),
(49, 'Greeting Cards', 'greeting-cards', NULL, '', 1, 37, 21, 0, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:38'),
(51, 'ImageStylor Canvas', 'imagestylor-canvas', NULL, '', 1, 0, 20, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-16 23:53:34'),
(52, 'Triangle Wall Collage', 'triangle-wall-collage', NULL, '', 0, 29, 19, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-17 00:10:44'),
(53, 'Tritych ImageStylor Canvas Clusters', 'tritych-imagestylor-canvas-clusters', NULL, '', 0, 0, 18, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-17 03:06:49'),
(56, '4 Square Imagestylor Canvas Cluster', '4-square-imagestylor-canvas-cluster', NULL, '', 1, 0, 17, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-17 03:07:02'),
(57, 'Modern Imagestylor Canvas Cluster', 'modern-imagestylor-canvas-cluster', NULL, '', 3, 0, 16, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-17 03:07:15'),
(58, 'Stair Climber ImageStylor Canvas Clusters', 'stair-climber-imagestylor-canvas-clusters', NULL, '', 4, 0, 15, 1, 8, 3, '0000-00-00 00:00:00', '2015-04-17 03:07:25');

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
(1, 'Title Site', 'title_site', 'Visual Impact', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(2, 'Meta Description', 'meta_description', 'www.anvydigital.com', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(3, 'Main Logo', 'main_logo', 'assets/images/logos/logo.png', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(4, 'VI Format', 'vi_format', '2', NULL, 1, 0, 3, '2015-04-16 01:27:04', '2015-04-20 00:24:48'),
(5, 'Instagram App ID', 'instagram_app_id', 'f6b31259ea3d4f8489da2e137cec4c34', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(6, 'Skydrive App ID', 'skydrive_app_id', '0000000040149c21', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(7, 'Google Drive App ID', 'googledrive_app_id', '542866151209-h64bq9qnogf0e51b7rir1cuni1pnlc8j.apps.googleusercontent.com', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(8, 'Dropbox App ID', 'dropbox_app_id', '4h5nj85dysuxe3s', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(9, 'Flickr App Secret', 'flickr_app_secret', '58db44a1386f0b4e', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(10, 'Flickr App ID', 'flickr_app_id', '24fdd4da6151132517c7d4572c29d1f0', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04'),
(11, 'Facebook APP ID', 'facebook_app_id', '1601264390104375', NULL, 1, 0, 0, '2015-04-16 01:27:04', '2015-04-16 01:27:04');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `imageables`
--

INSERT INTO `imageables` (`id`, `image_id`, `imageable_id`, `imageable_type`, `option`) VALUES
(1, 1, 50, 'Product', '{"main":1, "view":[]}'),
(2, 2, 69, 'Product', '{"main":1, "view":[]}'),
(3, 3, 70, 'Product', '{"main":1, "view":[]}'),
(4, 4, 71, 'Product', '{"main":1, "view":[]}'),
(5, 5, 72, 'Product', '{"main":1, "view":[]}'),
(6, 6, 74, 'Product', '{"main":1, "view":[]}'),
(7, 7, 75, 'Product', '{"main":1, "view":[]}'),
(8, 8, 77, 'Product', '{"main":1, "view":[]}'),
(9, 9, 79, 'Product', '{"main":1, "view":[]}'),
(10, 10, 80, 'Product', '{"main":1, "view":[]}'),
(11, 11, 81, 'Product', '{"main":1, "view":[]}'),
(12, 12, 90, 'Product', '{"main":1, "view":[]}'),
(13, 13, 95, 'Product', '{"main":1, "view":[]}'),
(14, 14, 96, 'Product', '{"main":1, "view":[]}'),
(15, 15, 187, 'Product', '{"main":1, "view":[]}'),
(16, 16, 188, 'Product', '{"main":1, "view":[]}'),
(17, 17, 189, 'Product', '{"main":1, "view":[]}'),
(18, 18, 190, 'Product', '{"main":1, "view":[]}'),
(19, 19, 191, 'Product', '{"main":1, "view":[]}'),
(20, 20, 193, 'Product', '{"main":1, "view":[]}'),
(21, 21, 195, 'Product', '{"main":1, "view":[]}'),
(22, 22, 196, 'Product', '{"main":1, "view":[]}'),
(23, 23, 197, 'Product', '{"main":1, "view":[]}'),
(24, 24, 198, 'Product', '{"main":1, "view":[]}'),
(25, 25, 199, 'Product', '{"main":1, "view":[]}'),
(26, 26, 201, 'Product', '{"main":1, "view":[]}'),
(27, 27, 202, 'Product', '{"main":1, "view":[]}'),
(28, 28, 203, 'Product', '{"main":1,"view":[]}'),
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
(53, 53, 229, 'Product', '{"main":1, "view":[]}'),
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
(69, 69, 245, 'Product', '{"main":1, "view":[]}'),
(70, 70, 69, 'Product', '{"main":0, "view":[]}'),
(71, 71, 72, 'Product', '{"main":0, "view":[]}'),
(72, 72, 74, 'Product', '{"main":0, "view":[]}'),
(73, 73, 189, 'Product', '{"main":0, "view":[]}'),
(74, 74, 191, 'Product', '{"main":0, "view":[]}'),
(75, 75, 195, 'Product', '{"main":0, "view":[]}'),
(76, 76, 196, 'Product', '{"main":0, "view":[]}'),
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
(92, 92, 57, 'ProductCategory', NULL),
(93, 95, 246, 'Product', '{"main":0,"view":[]}');

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
(93, 'assets/images/products/galabox.30-01-17.png', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'assets/images/products/2041jpg.30-01-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'assets/images/products/2041jpg.30-01-17.jpg', 'local', NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(2, '2042', 59.00, 86.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2001', 16.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2002', 16.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2003', 20.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2004', 20.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'test', 24.00, 100.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2005', 20.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2006', 20.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2007', 35.00, 43.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '2008', 35.00, 43.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '2009', 24.00, 54.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2010', 43.00, 53.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2011', 43.00, 53.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2012', 30.00, 66.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2013', 35.00, 35.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '2014', 43.00, 43.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '2015', 16.00, 73.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '2016', 20.00, 89.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '2017', 73.00, 16.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '2018', 89.00, 20.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '2019', 35.00, 54.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '2020', 43.00, 66.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '2021', 54.00, 35.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '2022', 66.00, 43.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '2023', 35.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '2024', 35.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '2025', 35.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '2026', 35.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '2027', 35.00, 54.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '2028', 35.00, 70.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '2029', 35.00, 70.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '2030', 43.00, 62.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '2031', 43.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '2032', 43.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '2033', 43.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '2034', 43.00, 86.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '2035', 53.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '2036', 43.00, 76.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '2037', 43.00, 66.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '2038', 43.00, 86.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '2039', 49.00, 70.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '2040', 49.00, 70.00, 1.00, NULL, 1, 8, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '2041', 59.00, 86.00, 1.00, 'assets/svg/89885ff2c83a10305ee08bd507c1049c.svg', 1, 8, 8, '0000-00-00 00:00:00', '2015-05-30 14:19:46'),
(47, 'SINGLE PYRAMID', 60.00, 60.00, 1.00, 'assets/svg/aff4d874136af599586f32baed3a8b93-layout.svg', 1, 0, 0, '2015-06-17 10:03:30', '2015-06-18 07:42:46'),
(48, '3 Square Diamond', 80.00, 80.00, 1.00, 'assets/svg/9511f8ec7f08bad4fa0bd75589f35bc9-layout.svg', 1, 0, 0, '2015-06-17 10:36:04', '2015-06-18 07:50:46'),
(49, 'Rhombus and Right Triangle', 68.00, 68.00, 1.00, 'assets/svg/0a5e4db65746826c3beaeb4025d08c72-layout.svg', 1, 0, 0, '2015-06-17 10:36:31', '2015-06-18 07:45:00'),
(51, 'TRAPEDZOID AND TRIANGLES.', 30.00, 50.00, 1.00, 'assets/svg/e67c672987ff91fc261bb038b21bbe00-layout.svg', 1, 0, 0, '2015-06-17 12:42:42', '2015-06-18 03:40:59'),
(52, 'SQUARE CENTRE RHOMBUS SPREAD', 55.00, 200.00, 1.00, 'assets/svg/c9cba806afd9e5f814fc0cbff780d716-layout.svg', 1, 0, 0, '2015-06-18 03:15:50', '2015-06-19 02:40:27'),
(53, 'Vertical Drop', 50.00, 20.00, 1.00, 'assets/svg/234c3d2e550f53fcbc1567f429df90a1-layout.svg', 1, 0, 0, '2015-06-18 03:31:26', '2015-06-18 03:36:17'),
(54, 'Flower Split', 80.00, 80.00, 1.00, 'assets/svg/f4e4eb3c5ecdab2c583a30a033ad0dcf-layout.svg', 1, 0, 0, '2015-06-18 07:36:49', '2015-06-18 07:39:42'),
(55, 'DOUBLE PYRAMID', 80.00, 80.00, 1.00, 'assets/svg/6f542506ee2d6609321840c69c045011-layout.svg', 1, 0, 0, '2015-06-18 08:24:51', '2015-06-18 08:24:51');

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
  `rotate` float(8,2) NOT NULL DEFAULT '0.00',
  `shape_type` text COLLATE utf8_unicode_ci,
  `transform` text COLLATE utf8_unicode_ci,
  `d` text COLLATE utf8_unicode_ci,
  `empty` tinyint(1) NOT NULL DEFAULT '0',
  `layout_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `layout_details`
--

INSERT INTO `layout_details` (`id`, `width`, `height`, `coor_x`, `coor_y`, `rotate`, `shape_type`, `transform`, `d`, `empty`, `layout_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 30.00, 20.00, 0.00, 37.00, 0.00, 'square-rectangle', NULL, NULL, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 24.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 24.00, 16.00, 38.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 20.00, 20.00, 10.00, 14.00, 0.00, 'square-rectangle', NULL, NULL, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 30.00, 20.00, 56.00, 1.10, 0.00, 'square-rectangle', NULL, NULL, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 16.00, 16.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 16.00, 16.00, 27.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 16.00, 16.00, 46.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 30.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 20.00, 20.00, 56.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 20.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 30.00, 20.00, 46.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 20.00, 20.00, 56.00, 24.00, 0.00, 'square-rectangle', NULL, NULL, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 20.00, 30.00, 33.00, 14.00, 0.00, 'square-rectangle', NULL, NULL, 0, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 20.00, 10.00, 2.00, 2.00, 0.00, 'square-rectangle', NULL, NULL, 0, 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 30.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 20.00, 20.00, 33.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 20.00, 20.00, 56.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 9, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 30.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 9, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 20.00, 20.00, 56.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 9, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 10, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 24.00, 16.00, 19.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 10, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 16.00, 16.00, 0.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 10, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 24.00, 16.00, 0.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 11, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 16.00, 16.00, 27.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 11, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 16.00, 16.00, 27.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 11, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 16.00, 16.00, 0.00, 4.00, 0.00, 'square-rectangle', NULL, NULL, 0, 12, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 16.00, 24.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 12, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 16.00, 16.00, 38.00, 4.00, 0.00, 'square-rectangle', NULL, NULL, 0, 12, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 30.00, 20.00, 0.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 13, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 20.00, 20.00, 33.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 13, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 20.00, 20.00, 33.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 13, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 14, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 20.00, 20.00, 0.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 14, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 30.00, 20.00, 23.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 14, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 20.00, 20.00, 0.00, 5.00, 0.00, 'square-rectangle', NULL, NULL, 0, 15, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 20.00, 30.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 15, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 20.00, 20.00, 46.00, 5.00, 0.00, 'square-rectangle', NULL, NULL, 0, 15, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 16, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 16.00, 16.00, 0.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 16, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 16.00, 16.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 16, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 16.00, 16.00, 19.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 16, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 17, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 20.00, 20.00, 0.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 17, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 20.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 17, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 20.00, 20.00, 23.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 17, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 18, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 16.00, 16.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 18, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 16.00, 16.00, 38.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 18, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 16.00, 16.00, 57.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 18, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 19, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 20.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 19, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 20.00, 20.00, 46.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 19, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 20.00, 20.00, 69.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 19, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 20, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 16.00, 16.00, 0.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 20, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 16.00, 16.00, 0.00, 38.00, 0.00, 'square-rectangle', NULL, NULL, 0, 20, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 16.00, 16.00, 0.00, 57.00, 0.00, 'square-rectangle', NULL, NULL, 0, 20, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 21, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 20.00, 20.00, 0.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 21, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 20.00, 20.00, 0.00, 46.00, 0.00, 'square-rectangle', NULL, NULL, 0, 21, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 20.00, 20.00, 0.00, 69.00, 0.00, 'square-rectangle', NULL, NULL, 0, 21, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 16.00, 16.00, 0.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 22, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 16.00, 16.00, 19.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 22, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 16.00, 16.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 22, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 16.00, 16.00, 38.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 22, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 20.00, 20.00, 0.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 23, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 20.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 23, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 20.00, 20.00, 23.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 23, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 20.00, 20.00, 46.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 23, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 16.00, 16.00, 0.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 24, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 16.00, 16.00, 9.50, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 24, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 16.00, 16.00, 19.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 24, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 16.00, 16.00, 9.50, 38.00, 0.00, 'square-rectangle', NULL, NULL, 0, 24, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 20.00, 20.00, 12.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 25, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 20.00, 20.00, 0.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 25, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 20.00, 20.00, 23.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 25, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 20.00, 20.00, 12.00, 46.00, 0.00, 'square-rectangle', NULL, NULL, 0, 25, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 16.00, 24.00, 0.00, 11.00, 0.00, 'square-rectangle', NULL, NULL, 0, 26, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 16.00, 16.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 26, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 24.00, 16.00, 19.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 26, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 16.00, 16.00, 46.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 26, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 16.00, 16.00, 0.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 27, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 24.00, 16.00, 19.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 27, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 16.00, 16.00, 27.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 27, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 16.00, 24.00, 46.00, 11.00, 0.00, 'square-rectangle', NULL, NULL, 0, 27, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 28, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 16.00, 16.00, 0.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 28, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 16.00, 24.00, 19.00, 5.50, 0.00, 'square-rectangle', NULL, NULL, 0, 28, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 24.00, 16.00, 38.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 28, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 24.00, 16.00, 0.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 29, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 16.00, 24.00, 27.00, 5.50, 0.00, 'square-rectangle', NULL, NULL, 0, 29, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 16.00, 16.00, 46.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 29, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 16.00, 16.00, 46.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 29, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 16.00, 24.00, 0.00, 5.50, 0.00, 'square-rectangle', NULL, NULL, 0, 30, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 16.00, 16.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 30, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 16.00, 16.00, 19.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 30, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 16.00, 24.00, 38.00, 5.50, 0.00, 'square-rectangle', NULL, NULL, 0, 30, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 24.00, 16.00, 0.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 31, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 16.00, 16.00, 27.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 31, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 16.00, 16.00, 27.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 31, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 24.00, 16.00, 46.00, 9.50, 0.00, 'square-rectangle', NULL, NULL, 0, 31, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 24.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 32, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 16.00, 16.00, 27.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 32, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 16.00, 16.00, 27.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 32, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 24.00, 16.00, 46.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 32, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 16.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 33, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 16.00, 24.00, 19.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 33, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 24.00, 16.00, 19.00, 27.00, 0.00, 'square-rectangle', NULL, NULL, 0, 33, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 16.00, 16.00, 46.00, 27.00, 0.00, 'square-rectangle', NULL, NULL, 0, 33, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 20.00, 30.00, 0.00, 13.00, 0.00, 'square-rectangle', NULL, NULL, 0, 34, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 20.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 34, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 30.00, 20.00, 23.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 34, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 20.00, 20.00, 56.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 34, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 20.00, 20.00, 0.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 35, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 30.00, 20.00, 23.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 35, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 20.00, 20.00, 33.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 35, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 20.00, 30.00, 56.00, 13.00, 0.00, 'square-rectangle', NULL, NULL, 0, 35, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 20.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 36, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 20.00, 20.00, 0.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 36, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 20.00, 30.00, 23.00, 6.50, 0.00, 'square-rectangle', NULL, NULL, 0, 36, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 30.00, 20.00, 46.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 36, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 30.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 37, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 20.00, 20.00, 33.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 37, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 20.00, 20.00, 33.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 37, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 30.00, 20.00, 56.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 37, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 18.00, 18.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 38, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 20.00, 30.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 38, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 30.00, 20.00, 23.00, 33.00, 0.00, 'square-rectangle', NULL, NULL, 0, 38, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 20.00, 20.00, 56.00, 33.00, 0.00, 'square-rectangle', NULL, NULL, 0, 38, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 30.00, 20.00, 0.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 39, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 20.00, 30.00, 33.00, 6.50, 0.00, 'square-rectangle', NULL, NULL, 0, 39, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 20.00, 20.00, 56.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 39, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 20.00, 20.00, 56.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 39, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 20.00, 30.00, 0.00, 6.50, 0.00, 'square-rectangle', NULL, NULL, 0, 40, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 20.00, 20.00, 23.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 40, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 20.00, 20.00, 23.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 40, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 20.00, 30.00, 46.00, 6.50, 0.00, 'square-rectangle', NULL, NULL, 0, 40, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 30.00, 20.00, 0.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 41, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 20.00, 20.00, 33.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 41, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 20.00, 20.00, 33.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 41, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 30.00, 20.00, 56.00, 12.00, 0.00, 'square-rectangle', NULL, NULL, 0, 41, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 24.00, 16.00, 0.00, 33.00, 0.00, 'square-rectangle', NULL, NULL, 0, 42, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 16.00, 16.00, 8.00, 14.00, 0.00, 'square-rectangle', NULL, NULL, 0, 42, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 16.00, 24.00, 27.00, 14.00, 0.00, 'square-rectangle', NULL, NULL, 0, 42, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 16.00, 16.00, 46.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 42, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 24.00, 16.00, 46.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 42, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 24.00, 16.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 43, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 16.00, 16.00, 8.00, 19.00, 0.00, 'square-rectangle', NULL, NULL, 0, 43, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 16.00, 24.00, 27.00, 14.00, 0.00, 'square-rectangle', NULL, NULL, 0, 43, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 16.00, 16.00, 46.00, 14.00, 0.00, 'square-rectangle', NULL, NULL, 0, 43, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 24.00, 16.00, 46.00, 33.00, 0.00, 'square-rectangle', NULL, NULL, 0, 43, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 30.00, 20.00, 0.00, 0.00, 0.00, 'square-rectangle', NULL, NULL, 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-05-30 14:19:46'),
(161, 20.00, 20.00, 10.00, 23.00, 0.00, 'square-rectangle', NULL, NULL, 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-05-30 14:19:46'),
(162, 20.00, 30.00, 33.00, 16.00, 0.00, 'square-rectangle', NULL, NULL, 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-05-30 14:19:46'),
(163, 30.00, 20.00, 56.00, 39.00, 0.00, 'square-rectangle', NULL, NULL, 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-05-30 14:19:46'),
(164, 20.00, 20.00, 56.00, 16.00, 0.00, 'square-rectangle', NULL, NULL, 0, 44, 0, 0, '0000-00-00 00:00:00', '2015-05-30 14:19:46'),
(170, 5.30, 5.30, 12000.00, 21000.00, 0.00, 'other', '', 'M73 128L233 128L153 267ZM253 128L333 267L173 267ZM273 128L433 128L353 267ZM173 287L333 287L253 426Z ', 0, 47, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:42:46'),
(171, 9.10, 9.10, 420.00, 1300.00, 0.00, 'other', '', 'M42 131L108 131L42 197ZM128 131L194 131L194 197ZM42 217L108 283L42 283ZM194 217L194 283L130 283ZM118 141L184 207L118 273L52 207Z ', 0, 48, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:50:46'),
(172, 9.10, 9.10, 2300.00, 430.00, 0.00, 'other', '', 'M225 43L291 43L225 109ZM311 43L377 43L377 109ZM225 129L291 195L225 195ZM311 195L377 129L377 195ZM301 53L367 119L301 185L235 119Z ', 0, 48, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:50:46'),
(173, 9.10, 9.10, 3200.00, 2300.00, 0.00, 'other', '', 'M315 232L381 232L315 298ZM401 232L467 232L467 298ZM315 318L381 384L315 384ZM467 318L467 384L401 384ZM391 242L457 308L391 373L325 308Z ', 0, 48, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:50:46'),
(174, 5.30, 5.30, 360000.00, 970000.00, 0.00, 'other', '', 'M68 181L228 181L68 341ZM248 181L408 181L248 341L88 341ZM428 181L428 341L268 341Z ', 0, 49, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:45:00'),
(186, 5.30, 5.30, 1600.00, 3300.00, 0.00, 'other', '', 'M 160 40 L 160 160 L 40 160  Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(194, 5.30, 5.30, 1600.00, 1100.00, 0.00, 'other', '', 'M 40 200 L 160 200 L 160 320 Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(195, 5.30, 5.30, 3900.00, 1100.00, 0.00, 'other', '', 'M 200 40 L 380 40 L 320 160 L 200 160 Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(196, 5.30, 5.30, 3900.00, 3400.00, 0.00, 'other', '', 'M 200 200 L 320 200 L 380 320 L 200 320  Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(197, 5.30, 5.30, 7100.00, 1000.00, 0.00, 'other', '', 'M 420 40 L 600 40 L 600 160 L 480 160Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(198, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 480 200 L 600 200 L 600 320 L 420 320 Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(199, 5.30, 5.30, 620.00, 63.00, 0.00, 'other', '', 'M 640 40 L 760 160 L 640 160 Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(200, 5.30, 5.30, 10000.00, 3400.00, 0.00, 'other', '', 'M 640 200 L 760 200 L 640 320  Z', 0, 51, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:40:59'),
(201, 32.00, 16.00, 30.00, 5.80, 0.00, 'other', '', 'M148.0499999997345 28.949999999866353L227.02516251109557 28.949999999866353L306.99999999973454 107.89999427681809L227.02516251109557 107.89999427681809Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:32'),
(202, 7.50, 3.70, 1000000.00, 1000000.00, 0.00, 'other', '', 'M314.4680851063822 107.8723423328805L393.4363686321534 28.93617021276597L473.4042553191482 28.93617021276597L393.4363686321534 107.8723423328805Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:32'),
(203, 32.00, 16.00, 280.00, 120.00, 0.00, 'other', '', 'M281.70000000000005 122L361.70000000000005 122L441.70000000000005 201.99999237060547L361.70000000000005 201.99999237060547Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:32'),
(204, 7.50, 3.70, 1000000.00, 1000000.00, 0.00, 'other', '', 'M500.4255319148932 28.93617021276597L580.3934339566459 28.93617021276597L659.3617021276591 107.8723423328805L580.3934339566459 107.8723423328805Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:32'),
(205, 32.00, 16.00, 130.00, 5.80, 0.00, 'other', '', 'M666.5999999999999 107.89999427681809L746.5999999999999 28.949999999866353L826.5999999999999 28.949999999866353L746.5999999999999 107.89999427681809Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:32'),
(206, 32.00, 16.00, 530.00, 120.00, 0.00, 'other', '', 'M612.1500000000001 122L692.1500000000001 122L612.1500000000001 201.99999237060692L532.1500000000001 201.99999237060692Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:32'),
(207, 6.30, 6.30, 1000000.00, 1000000.00, 0.00, 'other', '', 'M487.4148010244136 41.914892643055815L553.4042332426031 107.90434000530745L486.41492322654585 174.89362724791457L420.42552152593026 107.90434000530745Z ', 0, 52, 0, 0, '0000-00-00 00:00:00', '2015-06-19 02:42:33'),
(208, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 20 20 L 154 154 L 20 154 Z', 0, 53, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:36:17'),
(209, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 20 187 L 154 187 L 154 322 Z', 0, 53, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:36:17'),
(210, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 20 221 L 154 355 L 154 490 L 20 355 Z', 0, 53, 0, 0, '0000-00-00 00:00:00', '2015-06-18 03:36:17'),
(211, 5.30, 5.30, 9.90, 6.10, 0.00, 'other', '', 'M245 38L245 101L191 131L191 69ZM266 38L320 69L320 131L266 101ZM116 110L170 142L116 173L62 142ZM395 110L450 142L395 173L341 142ZM191 148L245 180L191 211L137 180ZM320 148L374 180L320 211L266 180ZM116 191L116 254L62 223L62 160ZM137 198L191 229L191 292L137 261ZM116 275L116 338L62 370L62 305ZM191 307L245 338L245 401L191 370ZM116 356L170 388L116 421L62 388ZM191 396L245 427L245 489L191 457ZM320 229L374 198L374 261L320 292ZM395 191L450 160L450 223L395 254ZM395 275L450 305L450 370L395 338ZM395 356L450 388L395 421L341 388ZM266 338L320 307L320 370L266 401ZM266 427L320 396L320 457L266 489Z ', 0, 54, 0, 0, '0000-00-00 00:00:00', '2015-06-18 07:39:42'),
(212, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 29 210 L 75 130 L 121 210 Z M 144 10 L 190 90 L 98 90 Z M 144 210 L 87 110 L 201 110 Z M 213 130 L 259 210 L 167 210 Z', 0, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09'),
(213, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 282 430 L 236 350 L 328 350 Z M 167 230 L 259 230 L 213 310 Z M 283 230 L 339 331 L 226 331 Z M 305 230 L 397 230 L 351 310 Z', 0, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09'),
(214, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M164 75  L 124 75 L 144 40 Z', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09'),
(215, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 75 160 L 55 195 L 95 195 Z', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09'),
(216, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 213 160 L 193 195 L 233 195 Z', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09'),
(217, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 282 400 L 301 365 L 262 365 Z', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09'),
(218, 5.30, 5.30, 0.00, 0.00, 0.00, 'other', '', 'M 351 280 L 371 245 L 331 245 Z', 1, 55, 0, 0, '0000-00-00 00:00:00', '2015-06-18 08:32:09');

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
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon_class`, `link`, `parent_id`, `type`, `group`, `order_no`, `level`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'icon-home', 'admin', 0, 'backend', NULL, 1, 1, 1, 0, 0, '2015-04-16 01:27:01', '2015-04-23 20:05:58'),
(2, 'Configure', 'fa fa-cogs', 'admin/configures', 55, 'backend', NULL, 4, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(3, 'Banner', 'icon-credit-card', 'admin/banners', 52, 'backend', NULL, 1, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(4, 'Menu', 'icon-list', 'admin/menus', 0, 'backend', NULL, 2, 1, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:58'),
(5, 'User', 'icon-users', 'admin/users', 55, 'backend', NULL, 2, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(6, 'Admin', 'fa fa-users', 'admin/admins', 55, 'backend', NULL, 1, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(7, 'Products Group', 'icon-social-dropbox', NULL, 0, 'backend', NULL, 3, 1, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:58'),
(8, 'Product', 'icon-bag', 'admin/products', 7, 'backend', NULL, 1, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:58'),
(9, 'Option Group', 'icon-notebook', 'admin/product-option-groups', 7, 'backend', NULL, 2, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:58'),
(10, 'Option', 'icon-layers', 'admin/product-options', 7, 'backend', NULL, 3, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:58'),
(11, 'Category', 'icon-bar-chart', 'admin/product-categories', 7, 'backend', '', 4, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:09:24'),
(12, 'Layout', 'icon-screen-tablet', '', 7, 'backend', '', 5, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(13, 'Pages', 'icon-docs', NULL, 52, 'backend', NULL, 2, 2, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(14, 'Static Page', 'icon-doc', 'admin/pages', 13, 'backend', NULL, 1, 3, 1, 0, 0, '2015-04-16 01:27:02', '2015-04-23 20:05:59'),
(15, 'Stair Climber ImageStylor Canvas', 'icon-settings', 'collections/stair-climber-imagestylor-canvas-clusters', 36, 'frontend', 'header', 4, 2, 1, 0, 3, '2015-04-16 23:53:17', '2015-04-21 00:35:24'),
(16, 'Modern Imagestylor Canvas Clusters', 'icon-settings', 'collections/modern-imagestylor-canvas-cluster', 36, 'frontend', 'header', 3, 2, 1, 0, 3, '2015-04-16 23:53:21', '2015-04-21 00:35:24'),
(17, '4 Square Imagestylor Canvas Clusters', 'icon-settings', 'collections/4-square-imagestylor-canvas-cluster', 36, 'frontend', 'header', 2, 2, 1, 0, 3, '2015-04-16 23:53:25', '2015-04-21 00:35:24'),
(18, 'Tritych Imagestylor Canvas Clusters', 'icon-settings', 'collections/tritych-imagestylor-canvas-clusters', 36, 'frontend', 'header', 1, 2, 1, 0, 3, '2015-04-16 23:53:29', '2015-04-21 00:35:24'),
(19, 'Triangle Wall Collage', 'icon-settings', 'collections/triangle-wall-collage', 35, 'frontend', 'header', 2, 2, 1, 0, 3, '2015-04-16 23:53:31', '2015-04-21 00:35:24'),
(20, 'ImageStylor Canvas', '', 'collections/imagestylor-canvas', 34, 'frontend', 'header', 1, 2, 1, 0, 0, '2015-04-16 23:53:34', '2015-04-21 00:35:24'),
(21, 'Greeting Cards', '', 'collections/greeting-cards', 0, 'frontend', 'header', 8, 1, 0, 0, 0, '2015-04-16 23:53:38', '2015-04-21 00:35:24'),
(22, 'Paper Prints', '', 'collections/paper-prints', 0, 'frontend', 'header', 9, 1, 0, 0, 0, '2015-04-16 23:53:40', '2015-04-21 00:35:24'),
(23, 'Wall Splits', '', 'collections/wall-splits', 35, 'frontend', 'header', 3, 2, 1, 0, 0, '2015-04-16 23:53:44', '2015-04-21 00:35:24'),
(24, 'Graphic Prints Collection', '', 'collections/graphic-prints-collection', 0, 'frontend', 'header', 7, 1, 0, 0, 0, '2015-04-16 23:53:50', '2015-04-21 00:35:24'),
(25, 'Smart Plaque', '', 'collections/smart-plaque', 34, 'frontend', 'header', 7, 2, 1, 0, 0, '2015-04-16 23:53:53', '2015-04-21 00:35:24'),
(26, 'Tri-Photo HBL', '', 'collections/triphoto-hbl', 34, 'frontend', 'header', 8, 2, 1, 0, 0, '2015-04-16 23:53:57', '2015-04-21 00:35:24'),
(27, 'Canvas Prints', '', 'collections/canvas-prints', 0, 'frontend', 'header', 6, 1, 0, 0, 0, '2015-04-16 23:54:00', '2015-04-21 00:35:24'),
(28, 'Wall Collage', '', 'collections/wall-collage', 35, 'frontend', 'header', 1, 2, 1, 0, 0, '2015-04-16 23:54:02', '2015-04-21 00:35:24'),
(29, 'ImageStyle', '', 'collections/imagestyle', 34, 'frontend', 'header', 5, 2, 1, 0, 0, '2015-04-16 23:54:06', '2015-04-21 00:35:24'),
(30, 'Shaped ImageStylor Canvas', '', 'collections/shaped-imagestylor-canvas', 34, 'frontend', 'header', 2, 2, 1, 0, 0, '2015-04-16 23:54:10', '2015-04-21 00:35:24'),
(31, 'Wood Prints', '', 'collections/wood-prints', 34, 'frontend', 'header', 6, 2, 1, 0, 0, '2015-04-16 23:54:14', '2015-04-21 00:35:24'),
(32, 'Acrylic Photo', '', 'collections/acrylic-photo', 34, 'frontend', 'header', 3, 2, 1, 0, 0, '2015-04-16 23:54:17', '2015-04-21 00:35:24'),
(33, 'Alloy Image Box', '', 'collections/alloy-image-box', 34, 'frontend', 'header', 4, 2, 1, 0, 0, '2015-04-16 23:54:21', '2015-04-21 00:35:24'),
(34, 'Products', 'icon-social-dropbox', '', 0, 'frontend', 'header', 2, 1, 1, 0, 0, '2015-04-17 00:03:29', '2015-04-21 00:35:24'),
(35, 'Collections', 'icon-user', '', 0, 'frontend', 'header', 4, 1, 1, 0, 0, '2015-04-17 00:04:05', '2015-04-21 00:35:24'),
(36, 'Wall Clusters', 'icon-user', '', 0, 'frontend', 'header', 3, 1, 1, 0, 0, '2015-04-17 00:04:25', '2015-04-21 00:35:24'),
(37, 'User Feedback', 'icon-feed', 'admin/contacts', 52, 'backend', '', 4, 2, 1, 0, 0, '2015-04-20 01:06:32', '2015-04-23 20:05:59'),
(38, 'Role', 'fa fa-users', 'admin/roles', 55, 'backend', '', 3, 2, 1, 0, 0, '2015-04-20 01:06:32', '2015-04-23 20:05:59'),
(39, 'Contact', 'icon-settings', 'contact', 0, 'frontend', 'header', 5, 1, 1, 0, 1, '2015-04-21 00:34:34', '2015-04-21 00:39:54'),
(40, 'About / Visual Impact', 'icon-settings', 'about-visual-impact', 49, 'frontend', 'footer', 3, 2, 1, 0, 1, '2015-04-21 00:34:36', '2015-04-21 00:40:49'),
(42, 'Wholesale', 'icon-settings', 'wholesale', 49, 'frontend', 'footer', 1, 2, 1, 0, 1, '2015-04-21 00:34:40', '2015-04-21 00:40:49'),
(44, 'Customer Service', 'icon-settings', '', 0, 'frontend', 'footer', 2, 1, 1, 0, 0, '2015-04-21 00:36:42', '2015-04-21 00:44:03'),
(45, 'Home', 'icon-settings', '', 0, 'frontend', 'header', 1, 1, 1, 0, 0, '2015-04-21 00:38:10', '2015-04-21 00:38:10'),
(46, 'Contact / Custom Orders', 'icon-settings', 'contact', 44, 'frontend', 'footer', 1, 2, 1, 0, 0, '2015-04-21 00:40:36', '2015-04-21 00:44:03'),
(47, 'Shipping Information', 'icon-settings', 'shipping-information', 49, 'frontend', 'footer', 2, 2, 1, 0, 1, '2015-04-21 00:41:45', '2015-04-21 00:44:03'),
(48, 'Terms', 'icon-settings', 'terms', 49, 'frontend', 'footer', 1, 2, 1, 0, 1, '2015-04-21 00:41:48', '2015-04-21 00:44:03'),
(49, 'Infomation', 'icon-settings', '', 0, 'frontend', 'footer', 1, 1, 1, 0, 0, '2015-04-21 00:43:53', '2015-04-21 00:44:03'),
(50, 'Box layout', 'icon-grid', 'admin/layouts', 12, 'backend', '', 1, 3, 1, 0, 0, '2015-04-23 20:01:52', '2015-04-23 20:07:46'),
(51, 'Shape Layout', 'icon-star', 'admin/shape-layouts', 12, 'backend', '', 2, 3, 1, 0, 0, '2015-04-23 20:02:58', '2015-04-23 20:07:58'),
(52, 'Other Content', 'icon-settings', '', 0, 'backend', '', 4, 1, 1, 0, 0, '2015-04-23 20:03:32', '2015-04-23 20:05:59'),
(53, 'Order', 'icon-basket-loaded', 'admin/orders', 52, 'backend', '', 3, 2, 1, 0, 0, '2015-04-23 20:04:31', '2015-04-23 20:06:37'),
(54, 'Email Template', 'icon-envelope', 'admin/email-templates', 52, 'backend', '', 5, 2, 1, 0, 0, '2015-04-23 20:05:11', '2015-04-23 20:08:14'),
(55, 'Admin Group', 'icon-settings', '', 0, 'backend', '', 5, 1, 1, 0, 0, '2015-04-23 20:05:34', '2015-04-23 20:05:59');

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
('2015_06_03_033923_create_shape_layouts', 1),
('2015_06_03_034133_create_shape_layout_details', 1);

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
(1, 246, 'Product', 1, 1, 0, 0, '0000-00-00 00:00:00', '2017-01-30 23:50:03'),
(2, 246, 'Product', 4, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 246, 'Product', 3, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 246, 'Product', 2, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(803, 74, 25, 'ProductOption', NULL),
(804, 74, 24, 'ProductOption', NULL),
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
(885, 74, 32, 'ProductOption', NULL),
(886, 74, 33, 'ProductOption', NULL),
(887, 74, 31, 'ProductOption', NULL),
(888, 74, 34, 'ProductOption', NULL),
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
(1565, 74, 4, 'ProductOptionGroup', NULL),
(1566, 74, 6, 'ProductOptionGroup', NULL),
(1567, 74, 7, 'ProductOptionGroup', NULL),
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
(1634, 74, 12, 'ProductOption', NULL),
(1635, 74, 10, 'ProductOption', NULL),
(1636, 74, 14, 'ProductOption', NULL),
(1637, 74, 15, 'ProductOption', NULL),
(1638, 74, 11, 'ProductOption', NULL),
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
(1913, 189, 11, 'ProductOption', NULL);

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `key`, `option_group_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10, 'Gallery', 'natural', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'White', 'white', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Black', 'black', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Mirror', 'm_wrap', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Spot Colour', 'red', 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Vertical', 'vertical', 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Horizontal', 'horizontal', 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Black', 'black_frame', 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'White', 'w_frame', 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Mahogany', 'm_frame', 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '1" Box', '1d', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '0.5" Box', '05d', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '1.5" Box', '15d', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '2" Box', '2d', 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Black Edge', 'blackedge', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'White Edge', 'white_edge', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Brush Silver Edge', 'silver_edge', 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '1" Border', '1border', 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '2" Border', '2border', 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '3" Border', '3border', 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '4" Border', '4border', 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '5" Border', '5border', 8, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'Terms', 'terms', '&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;TERMS &amp;amp; CONDITIONS&lt;/span&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;Designs&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;All graphics displayed on the Dolch Designs Website are also strictly copy righted. Please respect our work and have the courtesy not to to copy/steal it in any form.&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;Privacy Policy&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;Dolch Designs respects our customers&#039; account information as private and confidential information and will never share this information with any outside afflictions or individuals.&amp;nbsp;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;span style=&quot;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/span&gt;', '', '', 'Default', 48, 1, 0, 1, '0000-00-00 00:00:00', '2015-04-21 00:41:48'),
(2, 'Wholesale', 'wholesale', '&lt;div class=&quot;rte-content colored-links&quot; style=&quot;box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, &#039;Helvetica Neue Light&#039;, &#039;Helvetica Neue&#039;, Helvetica, Arial, &#039;Lucida Grande&#039;, sans-serif;font-size:11px;letter-spacing:1px;line-height:17.600000381469727px;&quot;&gt;&lt;p style=&quot;box-sizing:border-box;color:#000000;margin-bottom:20px;&quot;&gt;Dolch Designs is currently looking for retailers to carry our products and would love to do business with you.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;box-sizing:border-box;color:#000000;margin-bottom:20px;&quot;&gt;For all wholesale and retail inquiries, please fill out our contact form for more information or email us at&amp;nbsp;&lt;strong&gt;wholesale@dolchdesigns.com&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing:border-box;color:#000000;margin-bottom:20px;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;.&lt;/p&gt;&lt;/div&gt;', '', '', 'Default', 42, 1, 0, 1, '0000-00-00 00:00:00', '2015-04-21 00:34:40'),
(3, 'Shipping Information', 'shipping-information', '&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Once an order is placed, 1-3 business days is required to package and ship the order. All orders are shipped via Canada Post. Currently we only offer standard shipping, but if you would like to request express shipping please inform us via our contact tab prior to placing an order. All delivery times are an estimate.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-decoration:underline;font-family:Arial, Helvetica, sans-serif;&quot;&gt;&lt;strong&gt;Estimated Delivery Times:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;Canada: Flat Rate $4.95&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Postcards and Paper prints* : 2-5 business days&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All other products : 3-10 business days&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;United States:&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;Flat Rate $6.95&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Postcards and Paper prints* : 4-6 business days&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All other products&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt; : 6-12 business days&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;International:&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;text-decoration:underline;&quot;&gt;Flat Rate $9.95&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Postcards and Paper prints* : 5-8 business days&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All other products&lt;/span&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;&amp;nbsp;: 6-15 business days&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;&quot;&gt;*Please note that this is an estimate for prints in sizes 8x10 or smaller.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '', '', 'Default', 47, 1, 0, 1, '0000-00-00 00:00:00', '2015-04-21 00:41:45'),
(4, 'About / Visual Impact', 'about-visual-impact', '&lt;p&gt;&lt;span style=&quot;font-size:small;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Visual Impact is a division of Anvy Digital that caters to a consumer based market for wall decor products. Designed for the DIY enthusiast, Visual Impact offers you the ability to create beautiful wall collages. From standardized prints to custom options and layours, our collection of decor items and display designs will satisfy and deflight even the most artistic Do-It-Yourselfer.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:small;font-family:Arial, Helvetica, sans-serif;&quot;&gt;Our innovative products have been designed to last and impress with unique features. Our proven and tried products have been added to the collection for a variety of display options for the office or for the home.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:small;font-family:Arial, Helvetica, sans-serif;&quot;&gt;All products from the website are produced and supplied from our production facility in Calgary Alberta.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '', '', 'Default', 40, 1, 0, 1, '0000-00-00 00:00:00', '2015-04-21 00:34:36'),
(5, 'Contact', 'contact', '&lt;div class=&quot;columns large-4&quot;&gt;\r\n&lt;div class=&quot;page-content rte-content colored-links&quot;&gt;\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://vi.anvyonline.com/assets/images/logos/VisualImpact-logo.png&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;General Information : info@visual-impactdesigns.com&lt;/p&gt;&lt;p&gt;Orders : customerservice@visual-impactdesigns.com&lt;/p&gt;&lt;p&gt;Wholesale Inquiries : wholesale@visual-impactdesigns.com&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;To request a custom order, please fill out the form with your contact information. Let us know what you&#039;d like to get customized and we will get back to you. &amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;columns large-7 push-1  &quot;&gt;\r\n&lt;form accept-charset=&quot;UTF-8&quot; class=&quot;contact-form&quot; method=&quot;post&quot;&gt;\r\n&lt;p&gt;\r\n&lt;label&gt;Your Name:&lt;/label&gt;\r\n&lt;input type=&quot;text&quot; id=&quot;contact_name&quot; name=&quot;contact_name&quot; placeholder=&quot;Your name&quot; class=&quot;styled-input&quot; value=&quot;&quot;&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;label&gt;Email:&lt;/label&gt;\r\n&lt;input required=&quot;required&quot; type=&quot;email&quot; id=&quot;contact_email&quot; name=&quot;contact_email&quot; placeholder=&quot;your@email.com&quot; class=&quot;styled-input&quot; value=&quot;&quot;&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;label&gt;Phone Number:&lt;/label&gt;\r\n&lt;input type=&quot;tel&quot; id=&quot;contact_phone&quot; name=&quot;contact_phone&quot; placeholder=&quot;555-555-1234&quot; class=&quot;styled-input&quot; value=&quot;&quot;&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;label&gt;Message:&lt;/label&gt;\r\n&lt;textarea required=&quot;required&quot; rows=&quot;10&quot; cols=&quot;60&quot; id=&quot;contact_message&quot; name=&quot;contact_message&quot; placeholder=&quot;Your Message&quot; class=&quot;styled-input&quot;&gt;&lt;/textarea&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;input class=&quot;button styled-submit&quot; type=&quot;submit&quot; value=&quot;submit&quot; id=&quot;submit&quot;&gt;\r\n&lt;/p&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;', NULL, NULL, 'Contact', 39, 1, 0, 1, '0000-00-00 00:00:00', '2015-04-21 00:34:34');

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
(1, 'admin_view_all', 'View All Admin', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(2, 'admins_view_all', 'View All Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(3, 'admins_view_owner', 'View Owner Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(4, 'admins_create_owner', 'Create Owner Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(5, 'admins_edit_all', 'Edit All Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(6, 'admins_edit_owner', 'Edit Owner Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(7, 'admins_delete_all', 'Delete All Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(8, 'admins_delete_owner', 'Delete Owner Admins', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(9, 'banners_view_all', 'View All Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(10, 'banners_view_owner', 'View Owner Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(11, 'banners_create_owner', 'Create Owner Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(12, 'banners_edit_all', 'Edit All Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(13, 'banners_edit_owner', 'Edit Owner Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(14, 'banners_delete_all', 'Delete All Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(15, 'banners_delete_owner', 'Delete Owner Banners', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(16, 'configures_view_all', 'View All Configures', '2015-04-20 22:16:31', '2015-04-20 22:16:31'),
(17, 'configures_view_owner', 'View Owner Configures', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(18, 'configures_create_owner', 'Create Owner Configures', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(19, 'configures_edit_all', 'Edit All Configures', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(20, 'configures_edit_owner', 'Edit Owner Configures', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(21, 'configures_delete_all', 'Delete All Configures', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(22, 'configures_delete_owner', 'Delete Owner Configures', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(23, 'contacts_view_all', 'View All Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(24, 'contacts_view_owner', 'View Owner Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(25, 'contacts_create_owner', 'Create Owner Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(26, 'contacts_edit_all', 'Edit All Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(27, 'contacts_edit_owner', 'Edit Owner Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(28, 'contacts_delete_all', 'Delete All Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(29, 'contacts_delete_owner', 'Delete Owner Contacts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(30, 'images_view_all', 'View All Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(31, 'images_view_owner', 'View Owner Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(32, 'images_create_owner', 'Create Owner Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(33, 'images_edit_all', 'Edit All Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(34, 'images_edit_owner', 'Edit Owner Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(35, 'images_delete_all', 'Delete All Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(36, 'images_delete_owner', 'Delete Owner Images', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(37, 'layouts_view_all', 'View All Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(38, 'layouts_view_owner', 'View Owner Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(39, 'layouts_create_owner', 'Create Owner Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(40, 'layouts_edit_all', 'Edit All Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(41, 'layouts_edit_owner', 'Edit Owner Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(42, 'layouts_delete_all', 'Delete All Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(43, 'layouts_delete_owner', 'Delete Owner Layouts', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(44, 'menus_view_all', 'View All Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(45, 'menus_view_owner', 'View Owner Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(46, 'menus_create_owner', 'Create Owner Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(47, 'menus_edit_all', 'Edit All Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(48, 'menus_edit_owner', 'Edit Owner Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(49, 'menus_delete_all', 'Delete All Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(50, 'menus_delete_owner', 'Delete Owner Menus', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(51, 'pages_view_all', 'View All Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(52, 'pages_view_owner', 'View Owner Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(53, 'pages_create_owner', 'Create Owner Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(54, 'pages_edit_all', 'Edit All Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(55, 'pages_edit_owner', 'Edit Owner Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(56, 'pages_delete_all', 'Delete All Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(57, 'pages_delete_owner', 'Delete Owner Pages', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(58, 'productcategories_view_all', 'View All Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(59, 'productcategories_view_owner', 'View Owner Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(60, 'productcategories_create_owner', 'Create Owner Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(61, 'productcategories_edit_all', 'Edit All Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(62, 'productcategories_edit_owner', 'Edit Owner Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(63, 'productcategories_delete_all', 'Delete All Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(64, 'productcategories_delete_owner', 'Delete Owner Productcategories', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(65, 'productoptiongroups_view_all', 'View All Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(66, 'productoptiongroups_view_owner', 'View Owner Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(67, 'productoptiongroups_create_owner', 'Create Owner Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(68, 'productoptiongroups_edit_all', 'Edit All Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(69, 'productoptiongroups_edit_owner', 'Edit Owner Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(70, 'productoptiongroups_delete_all', 'Delete All Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(71, 'productoptiongroups_delete_owner', 'Delete Owner Productoptiongroups', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(72, 'productoptions_view_all', 'View All Productoptions', '2015-04-20 22:16:32', '2015-04-20 22:16:32'),
(73, 'productoptions_view_owner', 'View Owner Productoptions', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(74, 'productoptions_create_owner', 'Create Owner Productoptions', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(75, 'productoptions_edit_all', 'Edit All Productoptions', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(76, 'productoptions_edit_owner', 'Edit Owner Productoptions', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(77, 'productoptions_delete_all', 'Delete All Productoptions', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(78, 'productoptions_delete_owner', 'Delete Owner Productoptions', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(79, 'producttypes_view_all', 'View All Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(80, 'producttypes_view_owner', 'View Owner Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(81, 'producttypes_create_owner', 'Create Owner Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(82, 'producttypes_edit_all', 'Edit All Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(83, 'producttypes_edit_owner', 'Edit Owner Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(84, 'producttypes_delete_all', 'Delete All Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(85, 'producttypes_delete_owner', 'Delete Owner Producttypes', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(86, 'products_view_all', 'View All Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(87, 'products_view_owner', 'View Owner Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(88, 'products_create_owner', 'Create Owner Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(89, 'products_edit_all', 'Edit All Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(90, 'products_edit_owner', 'Edit Owner Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(91, 'products_delete_all', 'Delete All Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(92, 'products_delete_owner', 'Delete Owner Products', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(93, 'roles_view_all', 'View All Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(94, 'roles_view_owner', 'View Owner Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(95, 'roles_create_owner', 'Create Owner Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(96, 'roles_edit_all', 'Edit All Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(97, 'roles_edit_owner', 'Edit Owner Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(98, 'roles_delete_all', 'Delete All Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(99, 'roles_delete_owner', 'Delete Owner Roles', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(100, 'users_view_all', 'View All Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(101, 'users_view_owner', 'View Owner Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(102, 'users_create_owner', 'Create Owner Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(103, 'users_edit_all', 'Edit All Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(104, 'users_edit_owner', 'Edit Owner Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(105, 'users_delete_all', 'Delete All Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(106, 'users_delete_owner', 'Delete Owner Users', '2015-04-20 22:16:33', '2015-04-20 22:16:33'),
(107, 'boxshape_view_all', 'View All Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(108, 'boxshape_view_owner', 'View Owner Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(109, 'boxshape_create_owner', 'Create Owner Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(110, 'boxshape_edit_all', 'Edit All Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(111, 'boxshape_edit_owner', 'Edit Owner Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(112, 'boxshape_delete_all', 'Delete All Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(113, 'boxshape_delete_owner', 'Delete Owner Boxshape', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(114, 'dashboards_view_all', 'View All Dashboards', '2015-04-23 19:16:43', '2015-04-23 19:16:43'),
(115, 'dashboards_view_owner', 'View Owner Dashboards', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(116, 'dashboards_create_owner', 'Create Owner Dashboards', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(117, 'dashboards_edit_all', 'Edit All Dashboards', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(118, 'dashboards_edit_owner', 'Edit Owner Dashboards', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(119, 'dashboards_delete_all', 'Delete All Dashboards', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(120, 'dashboards_delete_owner', 'Delete Owner Dashboards', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(121, 'emailtemplates_view_all', 'View All Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(122, 'emailtemplates_view_owner', 'View Owner Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(123, 'emailtemplates_create_owner', 'Create Owner Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(124, 'emailtemplates_edit_all', 'Edit All Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(125, 'emailtemplates_edit_owner', 'Edit Owner Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(126, 'emailtemplates_delete_all', 'Delete All Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(127, 'emailtemplates_delete_owner', 'Delete Owner Emailtemplates', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(128, 'orders_view_all', 'View All Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(129, 'orders_view_owner', 'View Owner Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(130, 'orders_create_owner', 'Create Owner Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(131, 'orders_edit_all', 'Edit All Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(132, 'orders_edit_owner', 'Edit Owner Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(133, 'orders_delete_all', 'Delete All Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(134, 'orders_delete_owner', 'Delete Owner Orders', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(135, 'shapelayouts_view_all', 'View All Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(136, 'shapelayouts_view_owner', 'View Owner Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(137, 'shapelayouts_create_owner', 'Create Owner Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(138, 'shapelayouts_edit_all', 'Edit All Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(139, 'shapelayouts_edit_owner', 'Edit Owner Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(140, 'shapelayouts_delete_all', 'Delete All Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(141, 'shapelayouts_delete_owner', 'Delete Owner Shapelayouts', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(142, 'menusfrontend_view_all', 'View All Menusfrontend', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(143, 'menusfrontend_create_all', 'Create All Menusfrontend', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(144, 'menusfrontend_edit_all', 'Edit All Menusfrontend', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(145, 'menusbackend_view_all', 'View All Menusbackend', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(146, 'menusbackend_create_all', 'Create All Menusbackend', '2015-04-23 19:16:44', '2015-04-23 19:16:44'),
(147, 'menusbackend_edit_all', 'Edit All Menusbackend', '2015-04-23 19:16:44', '2015-04-23 19:16:44');

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
(84, 135, 1),
(85, 137, 1),
(86, 138, 1),
(87, 140, 1);

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
(2, 25, 27, 0.00, 183, 0, 0, '2015-02-13 12:34:06', '2015-02-13 13:05:28'),
(3, 27, 36, 0.00, 183, 0, 0, '2015-02-13 12:34:07', '2015-02-13 13:05:41'),
(4, 15, 27, 0.00, 183, 0, 0, '2015-02-13 12:34:08', '2015-02-13 13:05:49'),
(5, 20, 25, 0.00, 183, 0, 0, '2015-02-13 12:37:29', '2015-02-13 12:37:29'),
(7, 0, 5, 12.00, 96, 0, 0, '2015-02-13 17:10:12', '2015-04-17 02:02:30'),
(8, 5, 10, 25.00, 96, 0, 0, '2015-02-13 17:10:18', '2015-04-17 02:02:30'),
(9, 10, 15, 25.00, 96, 0, 0, '2015-02-13 17:10:25', '2015-04-17 02:02:30'),
(13, 1, 5, 55.00, 184, 0, 0, '2015-02-14 11:53:18', '2015-02-14 11:53:34'),
(14, 5, 10, 40.00, 184, 0, 0, '2015-02-14 11:53:24', '2015-02-14 11:53:36'),
(15, 10, 15, 35.00, 184, 0, 0, '2015-02-14 11:53:29', '2015-02-14 11:53:38'),
(16, 1, 10, 26.00, 186, 0, 0, '2015-02-25 18:35:14', '2015-02-25 18:35:39'),
(17, 10, 15, 20.00, 186, 0, 0, '2015-02-25 18:36:18', '2015-02-25 18:36:23'),
(18, 0, 5, 11.00, 73, 0, 0, '2015-02-26 13:22:02', '2015-02-27 12:42:33'),
(19, 5, 999999, 8.00, 73, 0, 0, '2015-02-26 13:22:24', '2015-02-27 12:43:12');

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
  `custom_size` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `order_no` int(11) NOT NULL DEFAULT '1',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `default_view` text COLLATE utf8_unicode_ci,
  `svg_file` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `svg_layout_id` int(11) NOT NULL DEFAULT '0',
  `jt_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `sku`, `sell_price`, `margin_up`, `short_description`, `description`, `meta_title`, `meta_description`, `custom_size`, `active`, `order_no`, `product_type_id`, `default_view`, `svg_file`, `svg_layout_id`, `jt_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(50, 'Polygon 1 ImageStylor Canvas', 'polygon-1-imagestylor-canvas', 'IC-2053', 10, 0, '', '<div style="font-size:12px;">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p style="font-size:12px;">&nbsp;</p>\r\n\r\n<div style="font-size:12px;">\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\r\n\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n\r\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\r\n</div>\r\n', '', '', 1, 1, 5, 5, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 14:44:38'),
(69, 'Right Triangle ImageStylor Canvas', 'right-triangle-imagestylor-canvas', 'IC-2052', 0, 0, '', '<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\r\n\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n\r\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\r\n</div>\r\n', '', '', 1, 1, 4, 2, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 14:42:39'),
(70, 'Equilateral Triangle ImageStylor Canvas', 'equilateral-triangle-imagestylor-canvas', 'IC-2050', 0, 0, '', '<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\r\n\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n\r\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\r\n</div>\r\n', '', '', 1, 1, 2, 3, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-04 13:59:05'),
(71, 'Rhombus ImageStylor Canvas', 'rhombus-imagestylor-canvas', 'IC-2051', 0, 0, '', '<div style="box-sizing:border-box;color:#444444;font-family:HelveticaNeue-Light, \'Helvetica Neue Light\', \'Helvetica Neue\', Helvetica, Arial, \'Lucida Grande\', sans-serif;letter-spacing:1px;">\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.</span></p>\r\n\r\n<p style="box-sizing:border-box;font-size:11px;font-family:Comfortaa, sans-serif;letter-spacing:1px;line-height:17.6000003814697px;text-align:justify;margin-bottom:15px !important;"><span style="box-sizing:border-box;font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n\r\n<p style="box-sizing:border-box;color:#000000;font-size:11px;margin-bottom:20px;">&nbsp;</p>\r\n</div>\r\n', '', '', 1, 1, 3, 4, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 14:59:39'),
(72, 'Hexagon ImageStylor Canvas', 'hexagon-imagestylor-canvas', 'IC-2049', 0, 0, '', 'The Shaped Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. These unique shapes will help you add dimension and creativity to your wall displays.<br />\r\n<br />\r\nChoose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!', '', '', 1, 1, 1, 1, '["31","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-04 13:51:18'),
(74, 'ImageStylor Canvas Common Sizes', 'imagestylor-canvas-common-sizes', 'IC-2043', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 1, 1, 1, 0, '["32","25","12"]', 'assets/svg/13-03-15-03-03-47-12.svg', 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:00:13'),
(75, 'ImageStylor Canvas Double Width (2:1)', 'imagestylor-canvas-double-width-21', 'IC-2048', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 1, 1, 6, 0, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:00:30'),
(77, 'ImageStylor Canvas Square', 'imagestylor-canvas-square', 'IC-2047', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 1, 1, 5, 0, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:00:47'),
(79, 'ImageStylor Canvas Panorama', 'imagestylor-canvas-panorama', 'IC-2046', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 1, 1, 4, 0, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:01:04'),
(80, 'ImageStylor Canvas Digital Camera (4:3)', 'imagestylor-canvas-digital-camera-43', 'IC-2045', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 1, 1, 3, 0, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:01:21'),
(81, 'ImageStylor Canvas Digital SLR Camera (3:2)', 'imagestylor-canvas-digital-slr-camera-32', 'IC-2044', 0, 0, '', '<p><span style="font-size:x-small;">The Imagestylor Canvas is the latest and most innovative product in our wall art decor line. It&rsquo;s a canvas wrap like you&rsquo;ve never seen before! The catch? It&rsquo;s not canvas - it&rsquo;s made from a rigid board with a canvas like texture. The waterproofing allows for outdoor usage giving the Imagestylor Canvas yet another advantage over a canvas wrap. Any shape with an edge can be made-to-order here. </span></p>\r\n\r\n<p><span style="font-size:x-small;">Choose to wrap your entire image all the way around OR select a fun colour for some creative flare for the edges. The best feature about this product is the fast turn around time of only 2 working days!</span></p>\r\n', '', '', 1, 1, 2, 0, '["32","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:01:38'),
(90, 'ImageStyle 24 x 36', 'imagestyle-24-x-36', 'is24x36', 0, 0, '', '<strong>ImageStyle</strong><span style="line-height:27.0399990081787px;">&nbsp;is a custom framed photo print developed by <strong>Anvy Digital</strong>. This unique photo product combines a stylish frame system with a silky smooth finished print elegantly wrapped onto a rigid backing panel. ImageStyles color and finish are clean and spectacular, a sure fit for your home or office. With a variety of frame options available, ImageStyles vibrant prints are the perfect way to cherish your fond memories.</span>', '', '', 1, 1, 0, 10, '["27","25"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:01:55'),
(95, 'ImageStyle 20 x 24', 'imagestyle-20-x-24', 'is20x24', 0, 0, '', '<strong>ImageStyle</strong><span style="line-height:27.0399990081787px;">&nbsp;is a custom framed photo print developed by <strong>Anvy Digital</strong>. This unique photo product combines a stylish frame system with a silky smooth finished print elegantly wrapped onto a rigid backing panel. ImageStyles color and finish are clean and spectacular, a sure fit for your home or office. With a variety of frame options available, ImageStyles vibrant prints are the perfect way to cherish your fond memories.</span>', '', '', 1, 1, 0, 10, '["27","25"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:02:12'),
(96, 'ImageStyle 16 x 20', 'imagestyle-16-x-20', 'is16x20', 0, 0, '', '<strong>ImageStyle</strong><span style="line-height:27.0399990081787px;">&nbsp;is a custom framed photo print developed by <strong>Anvy Digital</strong>. This unique photo product combines a stylish frame system with a silky smooth finished print elegantly wrapped onto a rigid backing panel. ImageStyles color and finish are clean and spectacular, a sure fit for your home or office. With a variety of frame options available, ImageStyles vibrant prints are the perfect way to cherish your fond memories.</span>', '', '', 1, 1, 0, 10, '["27","25"]', 'assets/svg/drawing.svg', 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:02:30'),
(187, 'Alloy Image Box - White', 'alloy-image-box-white', 'WEB-818', 0, 0, '', '<span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">This finished, 3D box is contour cut and folded using our patented Photo-Box&trade; cut-and-fold system, fashioning a ready-to-hang product. The self-framing, brushed finish of the Alloy Image Box makes a professional and refined statement. Whether your space longs for a moody black-and-white photo, or a crisp and professional business portrait, the Alloy Image Box is a brilliant solution.&nbsp;</span><span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">Your high-definition photo is printed directly to aluminium, then a protective UV liquid coating is applied. &nbsp;The printed metal sheet is mitre grooved and fabricated to create the finished Alloy Box, which is secured neatly to the wall with concealed keyhole fixings.</span>', '', '', 1, 1, 1, 0, '["31","25","12"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:02:46'),
(188, 'Alloy Image Box - Brushed Aluminum', 'alloy-image-box-brushed-aluminum', 'WEB-819', 0, 0, '', '<span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">This finished, 3D box is contour cut and folded using our patented Photo-Box&trade; cut-and-fold system, fashioning a ready-to-hang product. The self-framing, brushed finish of the Alloy Image Box makes a professional and refined statement. Whether your space longs for a moody black-and-white photo, or a crisp and professional business portrait, the Alloy Image Box is a brilliant solution.&nbsp;</span><span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">Your high-definition photo is printed directly to aluminium, then a protective UV liquid coating is applied. &nbsp;The printed metal sheet is mitre grooved and fabricated to create the finished Alloy Box, which is secured neatly to the wall with concealed keyhole fixings.</span>', '', '', 1, 1, 2, 8, '["38","31","25"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:03:04'),
(189, 'Double Pyramid', 'double-pyramid', 'ws-3', 0, 0, '', 'The Double Pyramid Collage is perfect for a vertical display solution and can easily make any small space look attractive. Choose from either the Imagestylor Canvas or Smart Plaque for this display.', '', '', 1, 1, 0, 6, '["32","35","12"]', 'assets/svg/07-04-15-02-04-58-DOUBLE_PYRAMID-new3.svg', 55, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-18 08:30:00'),
(190, 'Smart Plaque', 'smart-plaque', 'WEB-820', 0, 0, '', '<span style="color:#3f3f3f;font-family:\'Open Sans\', Arial, Helvetica, sans-serif;font-size:14px;">The Smart Plaque is a direct print to a highly durable and waterproof subtrate, which makes it great for indoor and outdoor applications. It is very ridgid, with a high UV stability and humidity resistance. There is no adhesive between any layers of the print or the core which means it won&#39;t fall apart. The smart plaque is available in a 10mm thickness.</span>', '', '', 1, 1, 1, 0, '["35","25"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:03:38'),
(191, 'Flower Split', 'flower-split', 'ws-2', 0, 0, '', '', '', '', 1, 1, 0, 6, '[]', 'assets/svg/06-04-15-04-04-50-Flower_Split.svg', 54, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-18 07:38:01'),
(193, 'Rhombus Smart Plaque', 'rhombus-smart-plaque', 'rsp100', 0, 0, '', '', '', '', 1, 0, 0, 4, '["35","25"]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:04:12'),
(195, 'Rhombus and Right Triangle ', 'rhombus-and-right-triangle', 'ws-4', 0, 0, '', '', '', '', 1, 1, 0, 6, '[]', 'assets/svg/06-04-15-04-04-18-Rhombus_and_Right_Triangle.svg', 49, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-17 10:45:28'),
(196, '3 Square Diamond', '3-square-diamond', 'ws-5', 0, 0, '', '', '', '', 1, 1, 0, 6, '[]', 'assets/svg/07-04-15-02-04-10-3_Square_Diamond_new.svg', 48, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-17 10:45:04'),
(197, 'Square Centre Rhombus Spread', 'square-centre-rhombus-spread', 'wc-2', 0, 0, '', '', '', '', 1, 1, 0, 0, '[]', NULL, 52, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-18 03:26:06'),
(198, 'Tri-photo HBL', 'tri-photo-hbl', 'thbl-1', 0, 0, '', '<p style="font-family:Arial, Verdana, sans-serif;">Our Tri-photo HBL (high bond laminate) is comprised of several materials layered together by a high pressurized system. The tri-photo HBL has three layers: a base, the graphic and the protective laminate. The graphic is printed directly to a metal composite, then a layer of solid, clear laminate is applied on top using high pressured compressors. The result is a beautiful wear resistant substrate perfect for high traffic areas in tradeshows, schools, retail spaces, hotels, museums, hospitals, anywhere that needs protective signage. It&rsquo;s extremely durable, scuff proof and the graphic will never fade.</p>\r\n\r\n<p style="font-family:Arial, Verdana, sans-serif;">&nbsp;</p>\r\n', '', '', 1, 1, 0, 0, '[]', NULL, 0, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:05:20'),
(199, 'Trapedzoid and Triangles', 'trapedzoid-and-triangles', 'wc-4', 0, 0, '', '', '', '', 1, 1, 0, 0, '[]', NULL, 51, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-17 12:51:03'),
(201, 'Single Pyramid', 'single-pyramid', 'ws-6', 0, 0, '', '', '', '', 1, 1, 0, 6, '[]', 'assets/svg/9bc60a579fb0f857e3b48d55e25d55ef.svg', 47, NULL, 8, 8, '0000-00-00 00:00:00', '2015-06-17 10:44:46'),
(202, 'Vertical Drop', 'vertical-drop', 'wc-6', 0, 0, '', '', '', '', 1, 1, 0, 0, '["12"]', NULL, 53, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-23 08:43:11'),
(203, 'Tritych M1 - 62” x 16”', 'tritych-m1-62-x-16', 'WC-2001', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych M1<br />\r\nSKU: WC-2001<br />\r\nWall Size : 62&rdquo; x 16&rdquo;<br />\r\nContains: 2-16&rdquo;x16&quot;, 1-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas<br />\r\n<br />\r\nTechnical\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;"><strong style="box-sizing: border-box;">Finished sizes:</strong>&nbsp;2 - 20&rdquo; x 20&rdquo; and 1 - 20&rdquo;x 30&rdquo;</p>\r\n\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;"><strong style="box-sizing: border-box;">Border:</strong>&nbsp;2&rdquo; or custom setting</p>\r\n\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;"><strong style="box-sizing: border-box;">Depth Box:</strong>&nbsp;2&rdquo;</p>\r\n\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;">Direct printing technologies give our Aluminade product superior and long lasting results. We direct print your image onto the surface of the metal sheet, then apply a UV protective coating on top.</p>\r\n\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;">Other techniques attempting to imitate the direct printing process are known as laminating or sandwich methods.</p>\r\n\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;"><strong style="box-sizing: border-box;">We would like to make you aware that:</strong></p>\r\n\r\n<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;">\r\n	<li style="box-sizing: border-box;">Laminated methods can peel off over time.</li>\r\n	<li style="box-sizing: border-box;">Laminated methods mean that you are looking at the image through a layer of adhesive (this is normally visible)</li>\r\n	<li style="box-sizing: border-box;">Laminated methods can look messy at the edges.</li>\r\n	<li style="box-sizing: border-box;">Laminated methods are not outdoor durable. The direct to substrate printing method is indoor and outdoor durable.</li>\r\n</ul>\r\n\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(63, 63, 63); font-family: &quot;Open Sans&quot;, Ubuntu, &quot;Trebuchet MS&quot;, Arial, Helvetica, sans-serif; font-size: 12px;">Direct printing uses advanced inks and technologies. These technologies give superior results with a wider range of print possibilities, including the ability to print white inks directly onto the metal surface.</p>\r\n', '', '', 1, 1, 1, 7, '["12"]', NULL, 3, NULL, 8, 3, '0000-00-00 00:00:00', '2017-01-30 22:39:59'),
(204, 'Tritych M2 - 62” x 16”', 'tritych-m2-62-x-16', 'WC-2002', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych M2<br />\r\nSKU: WC-2002<br />\r\nWall Size : 62&rdquo; x 16&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 2, 7, '["12"]', NULL, 4, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:06:45'),
(205, 'Tritych M3 - 62” x 16”', 'tritych-m3-62-x-16', 'WC-2003', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L2<br />\r\nSKU: WC-2003<br />\r\nWall Size : 76&rdquo; x 20&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 3, 7, '["12"]', NULL, 5, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:02'),
(206, 'Tritych L1 - 76” x 20”', 'tritych-l1-76-x-20', 'WC-2004', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L1<br />\r\nSKU: WC-2004<br />\r\nWall Size : 76&rdquo; x 20&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 4, 7, '["12"]', NULL, 6, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:20'),
(207, 'Tritych L2 - 76” x 20”', 'tritych-l2-76-x-20', 'WC-2005', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L2<br />\r\nSKU: WC-2005<br />\r\nWall Size : 76&rdquo; x 20&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 5, 7, '["12"]', NULL, 8, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:37'),
(209, 'Stair Climber L1 - 86” x 59”', 'stair-climber-l1-86-x-59', 'WC-2042', 0, 0, '', 'Style: Stair Climber<br />\r\nArrangement: Stair Climber L1<br />\r\nSKU: WC-2042<br />\r\nWall Size : 86&rdquo; x 59&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 3-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 4, 7, '["12"]', NULL, 2, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:07:54'),
(210, 'Tritych L3 - 76” x 20”', 'tritych-l3-76-x-20', 'WC-2006', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L3<br />\r\nSKU: WC-2006<br />\r\nWall Size : 76&rdquo; x 20&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 6, 7, '["12"]', NULL, 9, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:08:11'),
(211, 'Tritych M4 - 43” x 35”', 'tritych-m4-43-x-35', 'WC-2007', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych M4<br />\r\nSKU: WC-2007<br />\r\nWall Size : 43&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 7, 7, '["12"]', NULL, 10, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:08:28'),
(212, 'Tritych M5 - 43” x 35”', 'tritych-m5-43-x-35', 'WC-2008', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych M5<br />\r\nSKU: WC-2008<br />\r\nWall Size : 43&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 8, 7, '["12"]', NULL, 11, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:08:45'),
(213, 'Tritych M6 - 54” x 24”', 'tritych-m6-54-x-24', 'WC-2009', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych M6<br />\r\nSKU: WC-2009<br />\r\nWall Size : 54&rdquo; x 24&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rsquo;, 1-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 9, 7, '["12"]', NULL, 12, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:02'),
(214, 'Tritych L4 - 53” x 43”', 'tritych-l4-53-x-43', 'WC-2010', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L4<br />\r\nSKU: WC-2010<br />\r\nWall Size : 53&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 10, 7, '["12"]', NULL, 13, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:19'),
(215, 'Tritych L5 - 53” x 43”', 'tritych-l5-53-x-43', 'WC-2011', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L5<br />\r\nSKU: WC-2011<br />\r\nWall Size : 53&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 11, 7, '["12"]', NULL, 14, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:36'),
(216, 'Tritych L6 - 66” x 30”', 'tritych-l6-66-x-30', 'WC-2012', 0, 0, '', 'Style: Tritych<br />\r\nArrangement: Tritych L6<br />\r\nSKU: WC-2012<br />\r\nWall Size : 66&rdquo; x 30&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 1-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 12, 7, '["12"]', NULL, 15, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:09:53'),
(217, 'Four Square M1 - 35” x 35”', 'four-square-m1-35-x-35', 'WC-2013', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square M1<br />\r\nSKU: WC-2013<br />\r\nWall Size : 35&rdquo; x 35&rdquo;<br />\r\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 1, 1, 7, '["12"]', NULL, 16, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:10:10'),
(218, 'Four Square L1 - 43” x 43”', 'four-square-l1-43-x-43', 'WC-2014', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square L1<br />\r\nSKU: WC-2014<br />\r\nWall Size : 43&rdquo; x 43&rdquo;<br />\r\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 1, 2, 7, '["12"]', NULL, 17, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:10:27'),
(219, 'Four Square M2 - 73” x 16”', 'four-square-m2-73-x-16', 'WC-2015', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square M2<br />\r\nSKU: WC-2015<br />\r\nWall Size : 73&rdquo; x 16&rdquo;<br />\r\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 1, 3, 7, '["12"]', NULL, 18, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:10:44'),
(220, 'Four Square L2 - 89” x 20”', 'four-square-l2-89-x-20', 'WC-2016', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square L2<br />\r\nSKU: WC-2016<br />\r\nWall Size : 89&rdquo; x 20&rdquo;<br />\r\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 1, 4, 7, '["12"]', NULL, 19, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:01'),
(221, 'Four Square M3 - 16” x 73”', 'four-square-m3-16-x-73', 'WC-2017', 0, 0, '', '4 Square<br />\r\nArrangement: Four Square M3<br />\r\nSKU: WC-2017<br />\r\nWall Size : 16&rdquo; x 73&rdquo;<br />\r\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 1, 5, 7, '["12"]', NULL, 20, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:18'),
(222, 'Four Square L3 - 20” x 89”', 'four-square-l3-20-x-89', 'WC-2018', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square L3<br />\r\nSKU: WC-2018<br />\r\nWall Size : 20&rdquo; x 89&rdquo;<br />\r\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 1, 6, 7, '["12"]', NULL, 21, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:36'),
(223, 'Four Square M4 - 54” x 35”', 'four-square-m4-54-x-35', 'WC-2019', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square M4<br />\r\nSKU: WC-2019<br />\r\nWall Size : 54&rdquo; x 35&rdquo;<br />\r\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 1, 7, 7, '["12"]', NULL, 22, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:11:53'),
(224, 'Four Square L4 - 66” x 43”', 'four-square-l4-66-x-43', 'WC-2020', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square L4<br />\r\nSKU: WC-2020<br />\r\nWall Size : 66&rdquo; x 43&rdquo;<br />\r\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 1, 8, 7, '["12"]', NULL, 23, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:12:10'),
(225, 'Four Square M5 - 35” x 54”', 'four-square-m5-35-x-54', 'WC-2021', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square M5<br />\r\nSKU: WC-2021<br />\r\nWall Size : 35&rdquo; x 54&rdquo;<br />\r\nContains: 4 - 16&rdquo;x16&rdquo; ImageStylor Canvas', '', '', 1, 1, 9, 7, '["12"]', NULL, 24, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:12:27'),
(226, 'Four Square L5 - 43” x 66”', 'four-square-l5-43-x-66', 'WC-2022', 0, 0, '', 'Style: 4 Square<br />\r\nArrangement: Four Square L5<br />\r\nSKU: WC-2022<br />\r\nWall Size : 43&rdquo; x 66&rdquo;<br />\r\nContains: 4-20&rdquo;x20&rdquo; ImageStylor Canvas', '', '', 1, 1, 10, 7, '["12"]', NULL, 25, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:12:44'),
(227, 'Mordern M1 - 62” x 35”', 'mordern-m1-62-x-35', 'WC-2023', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M1<br />\r\nSKU: WC-2023<br />\r\nWall Size : 62&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 1, 7, '["12"]', NULL, 26, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:01'),
(228, 'Mordern M2 - 62” x 35”', 'mordern-m2-62-x-35', 'WC-2024', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M2<br />\r\nSKU: WC-2024<br />\r\nWall Size : 62&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 2, 7, '["12"]', NULL, 27, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:18'),
(229, 'Mordern M3 - 62” x 35”', 'mordern-m3-62-x-35', 'WC-2025', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M3<br />\r\nSKU: WC-2025<br />\r\nWall Size : 62&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 3, 7, '["12"]', NULL, 28, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:35'),
(230, 'Mordern M4 - 62” x 35”', 'mordern-m4-62-x-35', 'WC-2026', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M4<br />\r\nSKU: WC-2026<br />\r\nWall Size : 62&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 4, 7, '["12"]', NULL, 29, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:13:52'),
(231, 'Mordern M5 - 54” x 35”', 'mordern-m5-54-x-35', 'WC-2027', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M5<br />\r\nSKU: WC-2027<br />\r\nWall Size : 54&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 5, 7, '["12"]', NULL, 30, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:14:09'),
(232, 'Mordern M6 - 70” x 35”', 'mordern-m6-70-x-35', 'WC-2028', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M6<br />\r\nSKU: WC-2028<br />\r\nWall Size : 70&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 6, 7, '["12"]', NULL, 31, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:14:26'),
(233, 'Mordern M7 - 70” x 35”', 'mordern-m7-70-x-35', 'WC-2029', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M7<br />\r\nSKU: WC-2029<br />\r\nWall Size : 70&rdquo; x 35&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 7, 7, '["12"]', NULL, 32, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:14:43'),
(234, 'Mordern M8 - 62” x 43”', 'mordern-m8-62-x-43', 'WC-2030', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern M8<br />\r\nSKU: WC-2030<br />\r\nWall Size : 62&rdquo; x 43&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 2-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 8, 7, '["12"]', NULL, 33, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:00'),
(235, 'Mordern L1 - 76” x 43”', 'mordern-l1-76-x-43', 'WC-2031', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L1<br />\r\nSKU: WC-2031<br />\r\nWall Size : 76&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 9, 7, '["12"]', NULL, 34, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:17'),
(236, 'Mordern L2 - 76” x 43”', 'mordern-l2-76-x-43', 'WC-2032', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L2<br />\r\nSKU: WC-2032<br />\r\nWall Size : 76&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 10, 7, '["12"]', NULL, 35, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:35'),
(237, 'Mordern L3 - 76” x 43”', 'mordern-l3-76-x-43', 'WC-2033', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L3<br />\r\nSKU: WC-2033<br />\r\nWall Size : 76&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 11, 7, '["12"]', NULL, 36, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:15:52'),
(238, 'Mordern L4 - 86” x 43”', 'mordern-l4-86-x-43', 'WC-2034', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L4<br />\r\nSKU: WC-2034<br />\r\nWall Size : 86&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 12, 7, '["12"]', NULL, 37, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:16:09'),
(239, 'Mordern L5 - 76” x 53”', 'mordern-l5-76-x-53', 'WC-2035', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L5<br />\r\nSKU: WC-2035<br />\r\nWall Size : 86&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 13, 7, '["12"]', NULL, 38, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:16:26'),
(240, 'Mordern L6 - 76” x 43”', 'mordern-l6-76-x-43', 'WC-2036', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L6<br />\r\nSKU: WC-2036<br />\r\nWall Size : 76&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 14, 7, '["12"]', NULL, 39, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:16:43'),
(241, 'Mordern L7 - 66” x 43”', 'mordern-l7-66-x-43', 'WC-2037', 0, 0, '', 'Style: Modern<br />\r\nArrangement: Mordern L7<br />\r\nSKU: WC-2037<br />\r\nWall Size : 66&rdquo; x 43&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 2-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 15, 7, '["12"]', NULL, 40, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:00'),
(242, 'Mordern L8 - 86” x 43”', 'mordern-l8-86-x-43', 'WC-2038', 0, 0, '', '', '', '', 1, 1, 16, 7, '["12"]', NULL, 41, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:17'),
(243, 'Stair Climber M1 - 70” x 49”', 'stair-climber-m1-70-x-49', 'WC-2039', 0, 0, '', 'Style: Stair Climber<br />\r\nArrangement: Stair Climber M1<br />\r\nSKU: WC-2039<br />\r\nWall Size : 70&rdquo; x 49&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 3-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 1, 7, '["12"]', NULL, 42, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:34'),
(244, 'Stair Climber M2 - 70” x 49”', 'stair-climber-m2-70-x-49', 'WC-2040', 0, 0, '', 'Style: Stair Climber<br />\r\nArrangement: Stair Climber M2<br />\r\nSKU: WC-2040<br />\r\nWall Size : 70&rdquo; x 49&rdquo;<br />\r\nContains: 2-16&rdquo;x16&rdquo;, 3-16&rdquo;x24&rdquo;<br />\r\nImageStylor Canvas', '', '', 1, 1, 2, 7, '["12"]', NULL, 43, NULL, 8, 3, '0000-00-00 00:00:00', '2015-04-17 15:17:51'),
(245, 'Stair Climber L2 - 86” x 59”', 'stair-climber-l2-86-x-59', 'WC-2041', 0, 20, '', 'Style: Stair Climber<br />\r\nArrangement: Stair Climber L2<br />\r\nSKU: WC-2041<br />\r\nWall Size : 86&rdquo; x 59&rdquo;<br />\r\nContains: 2-20&rdquo;x20&rdquo;, 3-20&rdquo;x30&rdquo;<br />\r\nImageStylor Canvas', '', '', 0, 1, 3, 7, '["12"]', NULL, 44, NULL, 8, 3, '0000-00-00 00:00:00', '2015-06-02 03:59:07'),
(246, 'NewProduct', 'newproduct', 'newpro-213', 5000, 5, '', '', '', '', 1, 1, 1, 7, '[]', NULL, 0, NULL, 0, 0, '2017-01-30 23:42:13', '2017-01-31 00:17:40');

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
(6, 74, 51),
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
(70, 246, 58),
(71, 246, 28),
(72, 246, 29);

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
(1, 'Root', 0, 0, '2015-04-20 22:16:33', '2015-04-20 22:16:33');

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
  `points` text COLLATE utf8_unicode_ci,
  `transform` text COLLATE utf8_unicode_ci,
  `shape_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shape_layout_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size_lists`
--

CREATE TABLE `size_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizew` double NOT NULL,
  `sizeh` double NOT NULL,
  `cost_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `sell_percent` double NOT NULL,
  `bigger_price` double NOT NULL,
  `bigger_percent` double NOT NULL,
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
(22, 12, 8, 0, 36.470001220703, 0, 0, 0, 50, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 01:57:42'),
(25, 10, 10, 0, 36.779998779297, 0, 0, 0, 69, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 01:58:29'),
(28, 11.60000038147, 10, 0, 39.180000305176, 0, 0, 0, 70, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 01:58:55'),
(31, 20, 12, 0, 55.439998626709, 0, 0, 0, 71, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 01:59:39'),
(34, 18, 15, 0, 58.409999847412, 0, 0, 0, 72, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 01:59:56'),
(40, 11, 14, 0, 44.590000152588, 0, 0, 0, 74, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:13'),
(49, 8, 8, 0, 31.75, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(55, 24, 8, 0, 51.819999694824, 0, 0, 0, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:04'),
(186, 16, 20, 0, 50, 0, 0, 0, 96, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:02:30'),
(187, 20, 24, 0, 70, 0, 0, 0, 95, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:02:12'),
(191, 24, 36, 0, 85, 0, 0, 0, 90, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:55'),
(241, 11, 14, 0, 12, 0, 0, 0, 0, 1, 8, 8, '0000-00-00 00:00:00', '2015-03-03 20:08:52'),
(242, 8, 10, 0, 18, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:03:03'),
(243, 11, 14, 0, 30, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:03:03'),
(244, 16, 20, 0, 55, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:03:03'),
(245, 24, 36, 0, 80, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:03:03'),
(261, 5, 7, 0, 12, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:07:41'),
(262, 8, 10, 0, 18, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:07:41'),
(263, 11, 14, 0, 30, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:07:41'),
(264, 16, 20, 0, 55, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:07:41'),
(265, 24, 36, 0, 80, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-04 19:07:41'),
(606, 5, 7, 0, 10, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-30 21:45:10'),
(607, 8, 10, 0, 15, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-30 21:45:10'),
(608, 11, 14, 0, 25, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-30 21:45:10'),
(609, 16, 20, 0, 45, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-30 21:45:10'),
(610, 24, 36, 0, 60, 0, 0, 0, 0, 0, 8, 8, '0000-00-00 00:00:00', '2014-07-30 21:45:10'),
(806, 12, 16, 0, 48.959999084473, 0, 0, 0, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:21'),
(808, 12, 24, 0, 61.909999847412, 0, 0, 0, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:30'),
(812, 12, 18, 0, 52.200000762939, 0, 0, 0, 81, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:38'),
(813, 16, 24, 0, 71.98999786377, 0, 0, 0, 81, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:38'),
(814, 20, 30, 0, 92.699996948242, 0, 0, 0, 81, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:38'),
(815, 24, 36, 0, 118.91000366211, 0, 0, 0, 81, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:38'),
(816, 28, 42, 0, 145.13000488281, 0, 0, 0, 81, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:38'),
(817, 18, 24, 0, 74.930000305176, 0, 0, 0, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:21'),
(818, 24, 32, 0, 109.12999725342, 0, 0, 0, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:21'),
(819, 30, 40, 0, 146.80000305176, 0, 0, 0, 80, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:21'),
(820, 32, 8, 0, 62.349998474121, 0, 0, 0, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:04'),
(821, 36, 12, 0, 79.069999694824, 0, 0, 0, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:04'),
(822, 48, 12, 0, 97.879997253418, 0, 0, 0, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:04'),
(823, 48, 16, 0, 114.66000366211, 0, 0, 0, 79, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:04'),
(824, 18, 36, 0, 98.98999786377, 0, 0, 0, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:30'),
(825, 20, 40, 0, 114.23000335693, 0, 0, 0, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:30'),
(826, 24, 48, 0, 144.78999328613, 0, 0, 0, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:30'),
(827, 12, 12, 0, 43.099998474121, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(828, 16, 16, 0, 56.639999389648, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(829, 20, 20, 0, 73.199996948242, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(830, 24, 24, 0, 89.589996337891, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(831, 28, 28, 0, 110.30000305176, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(832, 32, 32, 0, 130.2799987793, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(833, 36, 36, 0, 154.9700012207, 0, 0, 0, 77, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:47'),
(834, 16, 20, 0, 64.319999694824, 0, 0, 0, 74, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:13'),
(835, 20, 24, 0, 79.819999694824, 0, 0, 0, 74, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:13'),
(836, 24, 36, 0, 118.90000152588, 0, 0, 0, 74, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:13'),
(838, 16, 20, 0, 125, 0, 150, 0, 187, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:02:47'),
(839, 16, 20, 0, 125, 0, 150, 0, 188, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:03:04'),
(840, 11, 14, 0, 39.110000610352, 0, 49.110000610352, 0, 190, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:03:38'),
(842, 9, 12, 34.880001068115, 34.880001068115, 0, 34.880001068115, 0, 80, 1, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:21'),
(843, 8, 12, 0, 36.209999084473, 0, 0, 0, 81, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:01:38'),
(844, 8, 16, 0, 41.529998779297, 0, 0, 0, 75, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:30'),
(845, 8, 10, 0, 33.549999237061, 0, 0, 0, 74, 0, 8, 8, '0000-00-00 00:00:00', '2015-04-17 02:00:13'),
(846, 12, 12, 0, 0, 0, 0, 100, 246, 1, 0, 0, '2017-01-30 23:42:13', '2017-01-31 00:19:07');

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
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `subscribe`, `remember_token`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Ernestina', 'Homenick', 'ukunze@caspersimonis.com', '$2y$10$Ymp3UUwY/4tx2cFkKly1xO02DQqZyYtDLaQk5HbnXOiDiY98FIQgS', 0, NULL, 1, 0, 0, '2015-04-16 01:26:57', '2015-04-16 01:26:57'),
(2, 'Julius', 'Corkery', 'wlegros@grady.com', '$2y$10$OEhSqUV5tOebpPOXNRDc9OCn8RpfR.xttNLBXup4t1y5HArA4L1oi', 0, NULL, 1, 0, 0, '2015-04-16 01:26:57', '2015-04-16 01:26:57'),
(3, 'Elyse', 'Fay', 'layne.o\'keefe@lebsack.com', '$2y$10$ROsVQRgiZceJQi9WeZNCC.DlCdzrhWbR/3iqBUqrG3OZ.kVmBfBhK', 0, NULL, 1, 0, 0, '2015-04-16 01:26:57', '2015-04-16 01:26:57'),
(4, 'Luigi', 'Kulas', 'kessler.kathryn@hessel.com', '$2y$10$BpWHN69ILWl1MKmmCLdimOVtS6D3BRI1W37RcCHG9wIbFt0cUdMqC', 0, NULL, 1, 0, 0, '2015-04-16 01:26:57', '2015-04-16 01:26:57'),
(5, 'Dayton', 'Senger', 'alvis.weissnat@dubuquekuphal.org', '$2y$10$IxMcN/khNcbFO8f1G7puM.yztvvMmm/i5aMyUSNL7dhe.G5mJh/uW', 0, NULL, 1, 0, 0, '2015-04-16 01:26:57', '2015-04-16 01:26:57');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_short_name_index` (`short_name`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_menu_id_index` (`menu_id`);

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

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_created_by_index` (`created_by`),
  ADD KEY `orders_updated_by_index` (`updated_by`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `configures`
--
ALTER TABLE `configures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `layout_details`
--
ALTER TABLE `layout_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `optionables`
--
ALTER TABLE `optionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1914;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `price_breaks`
--
ALTER TABLE `price_breaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shape_layouts`
--
ALTER TABLE `shape_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shape_layout_details`
--
ALTER TABLE `shape_layout_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size_lists`
--
ALTER TABLE `size_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=847;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
