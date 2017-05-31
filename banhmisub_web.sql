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
-- Database: `banhmisub_web`
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
(10, 'admin', 'admin', '$2a$08$UJIfGqV9BbR8qFJt9p19feoBaIC2FgZ2ZQ.ok5iDFIiplkp1kgGES', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `b_position` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'home-banner',
  `description` text COLLATE utf8_unicode_ci,
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `order_no`, `created_at`, `updated_at`, `b_position`, `description`, `product_id`, `product_name`, `alt`, `start_date`, `end_date`) VALUES
(1, 'images/banners/coffee-lover1122.24-05-17.jpg', 'http://banhmisub.com/drinks#product-item-56354ed0124dcaaa263188bd', 7, '2015-09-30 03:04:28', '2017-05-24 21:42:45', 'home-banner', '&#160;Coffee lover! Try our Espresso iced milk coffee for only $4.95', '56354ed0124dcaaa263188bd', '{"image":"http:\\/\\/jt.banhmisub.com\\/upload\\/2016_04\\/2016_04_21_160803_735237.png","name":"Iced Condensed Milk Coffee","description":"C\\u00e0 ph\\u00ea S\\u1eefa \\u0110\\u00e1","product_desciption":"<span style=\\"line-height:20.8px\\">Espresso<\\/span>","custom":0,"price":0,"combo":0,"use_group_order":0,"combo_sales":0,"id":"56354ed0124dcaaa263188bd","sell_price":4.75}', 'BanhMi SUB -  Espresso Iced Milk Coffee', NULL, NULL),
(9, 'images/banners/2016-06-_b_m_s-_slider-beef-steak-egg-sub.16-06-16.png', 'http://banhmisub.com/banh-mi-subs#product-item-56353997124dcabc1f318896', 6, '2016-06-16 22:13:30', '2017-05-04 23:56:26', 'home-slider', '', '56353997124dcabc1f318896', '{"image":"\\/themes\\/pizzahut\\/images\\/default.png","name":"Beef Steak and Egg SUB","description":"B\\u00e1nh M\\u00ec B\\u00edt T\\u1ebft & Tr\\u1ee9ng","product_desciption":"What better choice than beef steak and eggs on a freshly baked vietnamese baguette, topped with your favourite choice of greens. A perfect choice for a &#39;good morning&#39; breakfast meal or better yet, anytime of day.","custom":0,"price":0,"combo":0,"use_group_order":0,"combo_sales":0,"id":"56353997124dcabc1f318896","sell_price":13.7}', 'BanhMi SUB - Beef Steak and Egg Sub', NULL, NULL),
(12, 'images/banners/2016-06-_b_m_s-_slider-catering.16-06-16.png', 'http://banhmisub.com/catering', 5, '2016-06-16 23:12:03', '2017-05-04 23:56:24', 'home-slider', '', '', '', 'BanhMi SUB - We Cater!', NULL, NULL),
(13, 'images/banners/2016-06-_b_m_s-_slider-chicken-sate.16-06-16.png', 'http://banhmisub.com/boon-togo#product-item-5759fb11124dcaa027316d73', 4, '2016-06-16 23:12:40', '2017-05-04 23:56:23', 'home-slider', '', '5759fb11124dcaa027316d73', '{"image":"\\/themes\\/pizzahut\\/images\\/default.png","name":"Boon Togo - Chicken Sate","description":"B\\u00fan G\\u00e0 Sate","product_desciption":"Chicken Sate, Spring Rolls with Veggie served over a bed of rice vermicelli. Topped with Scallion Oil, Peanut and our Special Sauce.","custom":0,"price":0,"combo":0,"use_group_order":0,"combo_sales":"","id":"5759fb11124dcaa027316d73","sell_price":7.95}', 'BanhMi SUB - Boon Togo - Chicken Sate', NULL, NULL),
(14, 'images/banners/2017-04-_b_m_s-_slider-15off.03-05-17.jpg', 'http://banhmisub.com/banh-mi-subs', 2, '2017-04-04 05:51:45', '2017-05-18 00:24:37', 'home-slider', '', '', '', '', NULL, '2017-05-17 04:00:00'),
(15, 'images/banners/2017-04-_b_m_s-_butter_chicken.04-05-17.jpg', 'http://banhmisub.com/banh-mi-subs', 3, '2017-05-04 18:58:22', '2017-05-18 00:24:28', 'home-slider', '', '', '', '', NULL, '2017-05-17 04:00:00'),
(16, 'images/banners/2017-04-_b_m_s-_slider.17-05-17.jpg', 'http://banhmisub.com/banh-mi-subs', 1, '2017-05-04 23:55:58', '2017-05-18 00:24:10', 'home-slider', '', '', '', '', NULL, '2017-05-17 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id_category` int(11) NOT NULL,
  `image` text NOT NULL,
  `description` text,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id_category`, `image`, `description`, `alt`) VALUES
(0, 'images/banner-categories/2016-06-_b_m_s-_slider-shrimp-salad-roll-page-banner.17-06-16.png', '<br>', 'Shrimp Salad Roll'),
(1, 'images/banner-categories/2017-04-_b_m_s-_butter_chicken.18-05-17.jpg', '', 'Butter Chicken'),
(2, 'images/banner-categories/2016-06-_b_m_s-_slider-chicken-sate-page-banner.17-06-16.png', '', 'Boon ToGo - Chicken Sate'),
(3, 'images/banner-categories/2016-06-_b_m_s-_slider-catering-page-banner.17-06-16.png', '', 'BanhMi Sub - Catering'),
(4, 'images/banner-categories/2016-06-_b_m_s-_slider-combo-a-page-banner.17-06-16.png', '', 'Combo A - Classic sub, wonton soup, pop or water'),
(5, 'images/banner-categories/2016-06-_b_m_s-_slider-combo-a-page-banner31.25-05-17.jpg', '', 'Try our Espresso Iced Milk Coffee for only $4.75'),
(6, 'images/banner-categories/2016-06-_b_m_s-_slider-beef-steak-egg-sub-page-banner.17-06-16.png', '', 'Beef Steak with Egg Sub');

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
(1, 'about_footer', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `company_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_interest` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `message`, `company_name`, `contact_name`, `contact_email`, `contact_phone`, `primary_interest`, `created_at`, `created_by`, `deleted`) VALUES
(1, 'dadada', 'dad', '1213313', 'adadad', 'dad', 'adada', '0000-00-00 00:00:00', 10, 0),
(2, '121', '21212', 'hung lam', 'hunglmkpc044@gmail.com', '12121', NULL, '2016-03-23 20:58:28', 10, 1),
(3, ' ', '', 'dada', 'dadad', 'adada', 'metting', '2016-03-23 21:45:05', NULL, 0),
(4, ' dadada', 'dad', 'adad', 'dad', 'adada', 'metting', '2016-03-23 21:46:20', NULL, 0),
(5, ' dadadada', 'dad', 'ada', 'dada', 'dada', 'metting', '2016-03-23 21:47:35', NULL, 0),
(6, ' dadada', 'ada', 'dad', 'ada', 'dadad', 'metting', '2016-03-23 21:48:24', NULL, 0),
(7, ' dadada', 'ada31313131', 'dad', 'ada', 'dadad', 'metting', '2016-03-23 21:48:29', NULL, 1),
(8, 'dadada							', NULL, 'testing', 'hunglmkpc044@gmail.com', '012364788', 'question', '2016-04-29 03:58:19', NULL, 0),
(9, 'I&#39;ve visited this sandwich shop a few times since the grand opening and I&#39;ve got to say I&#39;m quite disappointed.  Your front window claims the baguettes are baked fresh daily	, but I&#39;ve been served hard and staled bread.  Old bagettes makes a bad sandwich!  If I wanted rock hard old baguettes I could go to any other banh mi shop in calgary.  I&#39;ll give this place one more try and I&#39;ll stop eating here If I get old bagettes again.  If banh mi sub really bake fresh bagettes daily it should not be hard and stale.  Be the best banh mi place in calgary and serve daily fresh baked bagettes.						', NULL, 'Banh mi customer', 'noreply@banhmisub.com', '1234567890', 'question', '2016-05-31 20:21:43', NULL, 0),
(10, 'this is a test2 2', '', 'hung lam', 'hunglmkpc044@gmail.com', '0976723656', 'metting', '0000-00-00 00:00:00', 10, 0),
(11, 'Hi my name is Cameron and I just wanted to drop you a quick note here instead of calling you. I discovered your Contact Us | Banh Mi SUB website and noticed you could have a lot more hits. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://rhr.online/2znuw', NULL, 'Cameron', 'nefjcqvrsy@denarcteal.com', 'Cameron', '', '2016-11-14 14:46:05', NULL, 0),
(12, 'I like Cats and so do you? bought a satisfied Tshirt with your hobby \r\nClick At this website: \r\nhttp://bit.ly/Cats-tshirt \r\n \r\nThank you', NULL, 'WilliamSmity', 'randolphjensensn367@hotmail.com', '123456', 'general', '2016-11-18 07:45:54', NULL, 0),
(13, 'Don&#39;t miss any wonderful memory. Buy this T-shirt to wear and show your style now! It is great. \r\nClick for info: \r\n \r\nhttp://bit.ly/Dogstee \r\n \r\nThx', NULL, 'KennethNon', 'marcospencervl995@hotmail.com', '123456', 'general', '2016-11-20 15:45:30', NULL, 0),
(14, 'Were you looking for an Ugly Christmas sweater or sweatshirt or perhaps you wanted another Chevy Chase Christmas Vacation shirt? We&#39;re sure to have your Christmas themed shirt here \r\n \r\nClick: \r\nhttp://bit.ly/ChristMAS-Tshirt \r\n \r\nThank you!', NULL, 'Danielpoown', 'dearruthl379@hotmail.com', '123456', 'general', '2016-11-21 11:13:45', NULL, 0),
(15, 'Buy this T-shirt on which your favorite dogs&#39; shape is printed and enjoy every wonderful moment with your dogs now! \r\nClick for info: \r\nhttp://bit.ly/Dogs-Tshirt \r\n \r\nThx', NULL, 'Ernestrox', 'eliashuntcs731@hotmail.com', '123456', 'general', '2016-11-21 22:31:41', NULL, 0),
(16, 'I was just looking at your Contact Us | Banh Mi SUB site and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website network which already has more than 16 million users, and most of the users are interested in websites like yours. By getting your website on this service you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can find out more about it here: http://thfox.com/4ZDf - Now, let me ask you... Do you need your website to be successful to maintain your business? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your site on the service I am describing. This traffic network advertises you to thousands, while also giving you a chance to test the network before paying anything. All the popular blogs are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://thfox.com/4ZDf', NULL, 'Rebecca', 'lfcobwevbw@yahoo.com', 'Rebecca', '', '2016-11-22 02:54:09', NULL, 0),
(17, 'I am crazy about this shirt. I do not know how to show my happiness when I wear it. The shape of my favorite dog is printed here and this drives me mad. I love it and I want to wear it all the day in all situations. This is my best friend and I feel really comfortable when it is on my body. Great! Do you want one? Order it now here!&#34; \r\nClick At this website: \r\nhttps://goo.gl/hsKHU1 \r\nThx!!!', NULL, 'Charlesomipt', 'randolphjensensn367@hotmail.com', '123456', 'general', '2016-11-23 15:01:30', NULL, 0),
(18, 'I like Cats and so do you? bought a satisfied Tshirt with Your hobby! \r\nClick here for info: \r\nhttp://bit.ly/Catsshirt \r\n \r\nThank you', NULL, 'WilberGop', 'prettymariond272@mail.ru', '123456', 'general', '2016-11-23 21:51:57', NULL, 0),
(19, 'I was just looking at your Contact Us | Banh Mi SUB website and see that your site has the potential to become very popular. I just want to tell you, In case you don&#39;t already know... There is a website service which already has more than 16 million users, and most of the users are looking for topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://nightcity25.ru/11a - Now, let me ask you... Do you need your site to be successful to maintain your way of life? Do you need targeted traffic who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your site? If your answer is YES, you can achieve these things only if you get your site on the network I am describing. This traffic network advertises you to thousands, while also giving you a chance to test the service before paying anything. All the popular blogs are using this network to boost their readership and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://thrivemarket.ru/ja\r\nNatalie Murray http://dimano.ru/33j', NULL, 'Natalie Murray', 'pkuvpscbbe@aqrsvicutj.com', 'Natalie Murray', '', '2017-01-11 22:28:33', NULL, 0),
(20, 'Hi my name is Alison Hamilton and I just wanted to send you a quick message here instead of calling you. I discovered your Contact Us | Banh Mi SUB website and noticed you could have a lot more visitors. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. http://trck.be/1SX', NULL, 'Alison Hamilton', 'ijxcccljff@lumrincz.com', 'Alison Hamilton', '', '2017-01-21 05:37:53', NULL, 0),
(21, 'Hello my name is Alison Hamilton and I just wanted to drop you a quick message here instead of calling you. I discovered your Contact Us | Banh Mi SUB website and noticed you could have a lot more hits. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted traffic from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. http://thfox.com/500s', NULL, 'Alison Hamilton', 'japzsngv@eogqpmlq.com', 'Alison Hamilton', '', '2017-01-23 20:14:40', NULL, 0),
(22, 'This is a memo to the webmaster. I came to your Contact Us | Banh Mi SUB page by searching on Google but it was hard to find as you were not on the front page of search results. I know you could have more traffic to your site. I have found a company which offers to dramatically increase your website rankings and traffic to your website: http://lis.ovh/h9 I managed to get close to 500 visitors/day using their services, you can also get a lot more targeted visitors from search engines than you have now. Their services brought significantly more visitors to my website. I hope this helps!\r\nMaria Anderson http://acortarurl.es/57', NULL, 'Maria Anderson', 'nowibqmr@yyxhbu.com', 'Maria Anderson', '', '2017-01-31 01:21:39', NULL, 0),
(23, 'Dear Mr/Mrs who owned the BANH MI SUB Restaurant, \r\nI&#39;m Minh - 27 years old. I&#39;m looking for a full time job currently in Calgary. Do you need more employee for your restaurant? \r\nIf yes, please let me know and I believe I can do it as my best.\r\nI look forward your reply. \r\n\r\nBest regards,\r\nMinh Tran', NULL, 'Minh Thu Thi Tran', 'nickyvn410@gmail.com', '4033540410', 'catering', '2017-01-31 14:10:58', NULL, 0),
(24, 'Did you just create your new Facebook page? Do you want your page to look a little more &#34;established&#34;? I found a service that can help you with that. They can send organic and 100% real likes and followers to your social pages and you can try before you buy with their free trial. Their service is completely safe and they send all likes to your page naturally and over time so nobody will suspect that you bought them. Try their service for free here: http://c.or.at/26h', NULL, 'Jennifer', 'rcgmdpaw@jybmlhwfeoa.com', 'Jennifer', '', '2017-02-04 07:38:05', NULL, 0),
(25, 'Lose up to 23 pounds of pure body fat in just 3 weeks!, how did i do that? \r\nThe 3 Week Diet is an extreme rapid weight loss program that can help you lose up to 23 pounds of pure body fat in just 3 weeks! Get your customized diet plan from our official website and find out which foods you should be eating if you want to burn your belly fat away fast! Created by acclaimed personal trainer and nutritionist Brian Flatt, The 3 Week Diet is 100% guaranteed to deliver results! \r\nlook great? dont waste your time! lets do this, join with us and bet back your beautiful body at here: \r\n \r\nhttp://tiny.cc/3WEEK4DIET \r\n \r\nThx', NULL, 'Noblefox', 'noblewet@mail.ru', '86463667218', 'startup', '2017-02-10 07:44:47', NULL, 0),
(26, 'I decided to leave a message here on your Contact Us | Banh Mi SUB page instead of calling you. Do you need more likes for your Facebook Fan Page? The more people that LIKE your website and fanpage on Facebook, the more credibility you will have with new visitors. It works the same for Twitter, Instagram and Youtube. When people visit your page and see that you have a lot of followers, they now want to follow you too. They too want to know what all the hype is and why all those people are following you. Get some free likes, followers, and views just for trying this service I found: http://ccld.eu/5', NULL, 'Sandra', 'rxmjmb@biyvftcyhpb.com', 'Sandra', '', '2017-02-16 06:46:44', NULL, 0),
(27, 'Hi my name is Sabrina Warren and I just wanted to drop you a quick message here instead of calling you. I discovered your Contact Us | Banh Mi SUB page and noticed you could have a lot more traffic. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://kfon.eu/3', NULL, 'Sabrina Warren', 'lgdrbm@kiayutwslv.com', 'Sabrina Warren', '', '2017-02-26 02:49:57', NULL, 0),
(28, 'I was just looking at your Contact Us | Banh Mi SUB website and see that your site has the potential to get a lot of visitors. I just want to tell you, In case you don&#39;t already know... There is a website network which already has more than 16 million users, and most of the users are interested in topics like yours. By getting your website on this network you have a chance to get your site more visitors than you can imagine. It is free to sign up and you can read more about it here: http://link.virtualrick.com/8u - Now, let me ask you... Do you need your website to be successful to maintain your business? Do you need targeted visitors who are interested in the services and products you offer? Are looking for exposure, to increase sales, and to quickly develop awareness for your website? If your answer is YES, you can achieve these things only if you get your website on the service I am talking about. This traffic service advertises you to thousands, while also giving you a chance to test the network before paying anything at all. All the popular blogs are using this service to boost their traffic and ad revenue! Why aren’t you? And what is better than traffic? It’s recurring traffic! That&#39;s how running a successful website works... Here&#39;s to your success! Find out more here: http://smpl.city/events/7Yypu', NULL, 'Vickie Figueroa', 'uwodsrqk@ipunufx.com', 'Vickie Figueroa', '', '2017-03-18 15:53:52', NULL, 0),
(29, 'http://stemmeries.xyz norsk kasino http://stemmeries.xyz - norsk kasino', NULL, 'PhilipCib', 'jackyapril@gmail.com', '85711225335', 'metting', '2017-04-08 09:51:42', NULL, 0),
(30, 'http://stemmeries.xyz norsk kasino http://stemmeries.xyz - norsk kasino', NULL, 'PhilipCib', 'jackyapril@gmail.com', '82274868891', 'metting', '2017-04-08 16:32:04', NULL, 0),
(31, 'Hello my name is Lela Guzman and I just wanted to drop you a quick note here instead of calling you. I came to your Contact Us | Banh Mi SUB website and noticed you could have a lot more visitors. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. http://www.axurl.com/5i', NULL, 'Lela Guzman', 'rzjxat@fhmfds.com', 'Lela Guzman', '', '2017-04-13 01:33:48', NULL, 0),
(32, 'This is a message to the Contact Us | Banh Mi SUB webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your website: http://priscilarodrigues.com.br/url/v - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)', NULL, 'Elisa Brown', 'bpzdkmffcmd@ojrpqfzh.com', 'Elisa Brown', '', '2017-05-08 07:55:51', NULL, 0),
(33, 'I came across your Contact Us | Banh Mi SUB website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://priscilarodrigues.com.br/url/v																				Unsubscribe here: http://acortarurl.es/97', NULL, 'Chelsea Wallace', 'wblzkulc@qsezqq.com', 'Chelsea Wallace', '', '2017-05-12 19:17:44', NULL, 0),
(34, 'This is a comment to the Contact Us | Banh Mi SUB admin. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your website: http://trucri.me/u5za1 - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)																				Unsubscribe here: http://www.arvut.org/1/eCV', NULL, 'Chelsea Wallace', 'sdjnumlmaa@awxpvshxsj.com', 'Chelsea Wallace', '', '2017-05-18 00:46:15', NULL, 0);

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
(6, 10, '14.187.62.231', 65535, '2016-04-22 03:28:20', '2016-04-22 03:28:20'),
(7, 10, '14.187.62.231', 65535, '2016-04-25 02:25:30', '2016-04-25 02:25:30'),
(8, 10, '14.187.62.231', 65535, '2016-04-25 02:25:35', '2016-04-25 02:25:35'),
(9, 10, '14.187.62.231', 65535, '2016-04-25 03:01:58', '2016-04-25 03:01:58'),
(10, 10, '14.187.33.178', 65535, '2016-04-26 02:28:40', '2016-04-26 02:28:40'),
(11, 10, '14.187.33.178', 65535, '2016-04-26 02:30:14', '2016-04-26 02:30:14'),
(12, 10, '14.187.33.178', 65535, '2016-04-26 02:30:18', '2016-04-26 02:30:18'),
(13, 10, '14.187.33.178', 65535, '2016-04-26 02:30:22', '2016-04-26 02:30:22'),
(14, 10, '14.187.33.178', 65535, '2016-04-26 02:30:26', '2016-04-26 02:30:26'),
(15, 10, '14.187.33.178', 65535, '2016-04-26 02:35:34', '2016-04-26 02:35:34'),
(16, 10, '14.187.33.178', 65535, '2016-04-26 02:35:38', '2016-04-26 02:35:38'),
(17, 10, '14.187.33.178', 65535, '2016-04-26 02:35:46', '2016-04-26 02:35:46'),
(18, 10, '14.186.161.17', 65535, '2016-04-29 02:37:09', '2016-04-29 02:37:09'),
(19, 10, '14.186.161.17', 65535, '2016-04-29 02:37:13', '2016-04-29 02:37:13'),
(20, 10, '14.186.161.17', 65535, '2016-04-29 02:37:24', '2016-04-29 02:37:24'),
(21, 10, '14.186.161.17', 65535, '2016-04-29 02:37:28', '2016-04-29 02:37:28'),
(22, 10, '14.186.161.17', 65535, '2016-04-29 02:37:32', '2016-04-29 02:37:32'),
(23, 10, '14.186.161.17', 65535, '2016-04-29 02:37:40', '2016-04-29 02:37:40'),
(24, 10, '14.186.161.17', 65535, '2016-04-29 03:54:55', '2016-04-29 03:54:55'),
(25, 10, '14.186.161.17', 65535, '2016-04-29 09:42:32', '2016-04-29 09:42:32'),
(26, 10, '14.186.161.17', 65535, '2016-04-29 09:42:39', '2016-04-29 09:42:39'),
(27, 10, '14.186.161.17', 65535, '2016-05-03 02:33:00', '2016-05-03 02:33:00'),
(28, 10, '14.186.161.17', 65535, '2016-05-03 02:33:04', '2016-05-03 02:33:04'),
(29, 10, '14.186.158.195', 65535, '2016-05-19 03:18:15', '2016-05-19 03:18:15'),
(30, 10, '174.0.26.72', 65535, '2016-05-26 05:22:12', '2016-05-26 05:22:12'),
(31, 10, '174.0.26.72', 65535, '2016-06-04 04:28:47', '2016-06-04 04:28:47'),
(32, 10, '14.186.151.192', 65535, '2016-06-10 01:54:54', '2016-06-10 01:54:54'),
(33, 10, '14.186.151.192', 65535, '2016-06-10 01:55:01', '2016-06-10 01:55:01'),
(34, 10, '14.186.151.192', 65535, '2016-06-10 02:20:23', '2016-06-10 02:20:23'),
(35, 10, '14.186.151.192', 65535, '2016-06-10 02:20:27', '2016-06-10 02:20:27'),
(36, 10, '14.186.151.192', 65535, '2016-06-10 02:20:32', '2016-06-10 02:20:32'),
(37, 0, '50.99.42.73', 65535, '2016-06-16 23:05:58', '2016-06-16 23:05:58'),
(38, 0, '50.99.42.73', 65535, '2016-06-16 23:06:04', '2016-06-16 23:06:04'),
(39, 0, '14.186.151.192', 65535, '2016-06-17 05:15:54', '2016-06-17 05:15:54'),
(40, 10, '14.186.151.192', 65535, '2016-06-20 07:56:23', '2016-06-20 07:56:23'),
(41, 10, '14.186.151.192', 65535, '2016-06-20 07:56:27', '2016-06-20 07:56:27'),
(42, 10, '14.186.151.192', 65535, '2016-06-20 07:56:31', '2016-06-20 07:56:31'),
(43, 10, '115.77.159.179', 65535, '2016-06-23 16:25:46', '2016-06-23 16:25:46'),
(44, 10, '115.77.159.179', 65535, '2016-06-23 16:25:50', '2016-06-23 16:25:50'),
(45, 10, '70.72.146.154', 65535, '2016-06-25 15:41:47', '2016-06-25 15:41:47'),
(46, 10, '14.186.151.192', 65535, '2016-06-30 08:16:43', '2016-06-30 08:16:43'),
(47, 10, '14.186.151.192', 65535, '2016-06-30 08:16:47', '2016-06-30 08:16:47'),
(48, 10, '50.99.42.73', 65535, '2016-08-08 15:08:02', '2016-08-08 15:08:02'),
(49, 10, '50.99.42.73', 65535, '2016-08-08 15:08:06', '2016-08-08 15:08:06'),
(50, 10, '50.99.42.73', 65535, '2016-08-08 15:08:12', '2016-08-08 15:08:12'),
(51, 10, '50.99.42.73', 65535, '2016-08-08 15:08:16', '2016-08-08 15:08:16'),
(52, 10, '50.99.42.73', 65535, '2016-08-08 15:08:22', '2016-08-08 15:08:22'),
(53, 10, '50.99.42.73', 65535, '2016-08-08 15:08:26', '2016-08-08 15:08:26'),
(54, 10, '50.99.42.73', 65535, '2016-08-08 15:08:30', '2016-08-08 15:08:30'),
(55, 10, '50.99.42.73', 65535, '2016-08-08 15:08:34', '2016-08-08 15:08:34'),
(56, 10, '50.99.42.73', 65535, '2016-08-08 15:08:43', '2016-08-08 15:08:43'),
(57, 10, '14.186.241.34', 65535, '2016-09-22 06:40:45', '2016-09-22 06:40:45'),
(58, 10, '14.186.194.220', 65535, '2016-10-10 02:22:00', '2016-10-10 02:22:00'),
(59, 10, '14.186.208.204', 65535, '2017-01-11 00:08:27', '2017-01-11 00:08:27'),
(60, 10, '14.186.208.204', 65535, '2017-01-11 00:08:37', '2017-01-11 00:08:37'),
(61, 10, '14.186.208.204', 65535, '2017-01-11 00:08:41', '2017-01-11 00:08:41'),
(62, 0, '50.99.42.160', 65535, '2017-01-11 00:11:23', '2017-01-11 00:11:23'),
(63, 10, '50.99.42.160', 65535, '2017-01-11 00:11:27', '2017-01-11 00:11:27'),
(64, 10, '50.99.42.160', 65535, '2017-01-11 00:11:31', '2017-01-11 00:11:31'),
(65, 10, '50.99.42.160', 65535, '2017-01-14 00:00:14', '2017-01-14 00:00:14'),
(66, 10, '50.99.42.160', 65535, '2017-01-14 00:00:18', '2017-01-14 00:00:18'),
(67, 10, '50.99.42.160', 65535, '2017-01-14 00:00:22', '2017-01-14 00:00:22'),
(68, 10, '50.99.42.160', 65535, '2017-01-14 00:00:26', '2017-01-14 00:00:26'),
(69, 10, '50.99.42.160', 65535, '2017-01-14 00:00:30', '2017-01-14 00:00:30'),
(70, 10, '50.99.42.160', 65535, '2017-01-14 00:00:34', '2017-01-14 00:00:34'),
(71, 10, '50.99.42.160', 65535, '2017-01-14 00:00:38', '2017-01-14 00:00:38'),
(72, 10, '14.187.63.168', 65535, '2017-02-15 23:47:39', '2017-02-15 23:47:39'),
(73, 10, '14.187.63.168', 65535, '2017-02-15 23:47:43', '2017-02-15 23:47:43'),
(74, 10, '14.187.63.168', 65535, '2017-02-15 23:47:53', '2017-02-15 23:47:53'),
(75, 10, '14.187.63.168', 65535, '2017-02-15 23:47:57', '2017-02-15 23:47:57'),
(76, 10, '14.187.63.168', 65535, '2017-02-27 07:25:56', '2017-02-27 07:25:56'),
(77, 10, '14.187.63.168', 65535, '2017-02-27 07:26:12', '2017-02-27 07:26:12'),
(78, 10, '14.187.63.168', 65535, '2017-02-27 07:26:16', '2017-02-27 07:26:16'),
(79, 10, '50.99.42.160', 65535, '2017-03-24 21:27:47', '2017-03-24 21:27:47'),
(80, 10, '50.99.42.160', 65535, '2017-03-24 21:27:51', '2017-03-24 21:27:51'),
(81, 10, '50.99.42.160', 65535, '2017-03-24 21:27:55', '2017-03-24 21:27:55'),
(82, 10, '50.99.42.160', 65535, '2017-03-24 21:27:59', '2017-03-24 21:27:59'),
(83, 10, '50.99.42.160', 65535, '2017-03-24 21:28:11', '2017-03-24 21:28:11'),
(84, 10, '50.99.42.160', 65535, '2017-03-24 21:28:15', '2017-03-24 21:28:15'),
(85, 10, '50.99.42.160', 65535, '2017-03-24 21:39:54', '2017-03-24 21:39:54'),
(86, 10, '50.99.42.160', 65535, '2017-03-24 21:39:58', '2017-03-24 21:39:58'),
(87, 10, '50.99.42.160', 65535, '2017-03-24 21:40:02', '2017-03-24 21:40:02'),
(88, 10, '50.99.42.160', 65535, '2017-03-24 21:40:06', '2017-03-24 21:40:06'),
(89, 10, '50.99.42.160', 65535, '2017-03-24 21:40:10', '2017-03-24 21:40:10'),
(90, 10, '50.99.42.160', 65535, '2017-03-24 21:40:14', '2017-03-24 21:40:14'),
(91, 10, '50.99.42.160', 65535, '2017-03-24 21:40:19', '2017-03-24 21:40:19'),
(92, 10, '50.99.42.160', 65535, '2017-03-24 21:40:25', '2017-03-24 21:40:25'),
(93, 10, '50.99.42.160', 65535, '2017-03-24 21:40:29', '2017-03-24 21:40:29'),
(94, 10, '50.99.42.160', 65535, '2017-03-24 21:40:33', '2017-03-24 21:40:33'),
(95, 10, '50.99.42.160', 65535, '2017-03-24 21:40:37', '2017-03-24 21:40:37'),
(96, 10, '50.99.42.160', 65535, '2017-03-24 21:40:41', '2017-03-24 21:40:41'),
(97, 10, '14.186.248.112', 65535, '2017-04-01 00:16:01', '2017-04-01 00:16:01'),
(98, 0, '184.64.129.99', 65535, '2017-04-02 17:12:45', '2017-04-02 17:12:45'),
(99, 10, '184.64.129.99', 65535, '2017-04-02 17:12:50', '2017-04-02 17:12:50'),
(100, 10, '184.64.129.99', 65535, '2017-04-02 17:12:54', '2017-04-02 17:12:54'),
(101, 10, '184.64.129.99', 65535, '2017-04-02 17:12:58', '2017-04-02 17:12:58'),
(102, 0, '184.64.129.99', 65535, '2017-04-02 17:19:14', '2017-04-02 17:19:14'),
(103, 10, '184.64.129.99', 65535, '2017-04-02 17:19:21', '2017-04-02 17:19:21'),
(104, 10, '184.64.129.99', 65535, '2017-04-02 17:19:25', '2017-04-02 17:19:25'),
(105, 10, '14.186.248.112', 65535, '2017-04-03 00:16:48', '2017-04-03 00:16:48'),
(106, 10, '14.186.248.112', 65535, '2017-04-03 00:16:52', '2017-04-03 00:16:52'),
(107, 10, '14.186.248.112', 65535, '2017-04-03 00:16:57', '2017-04-03 00:16:57'),
(108, 10, '14.186.248.112', 65535, '2017-04-03 00:17:01', '2017-04-03 00:17:01'),
(109, 10, '50.99.42.160', 65535, '2017-04-06 18:38:56', '2017-04-06 18:38:56'),
(110, 10, '50.99.42.160', 65535, '2017-04-06 18:39:00', '2017-04-06 18:39:00'),
(111, 10, '50.99.42.160', 65535, '2017-04-11 23:30:16', '2017-04-11 23:30:16'),
(112, 10, '50.99.42.160', 65535, '2017-04-11 23:30:20', '2017-04-11 23:30:20'),
(113, 10, '50.99.42.160', 65535, '2017-04-11 23:30:24', '2017-04-11 23:30:24'),
(114, 10, '113.172.28.253', 65535, '2017-04-13 07:41:58', '2017-04-13 07:41:58'),
(115, 10, '113.172.28.253', 65535, '2017-04-13 07:42:09', '2017-04-13 07:42:09'),
(116, 10, '113.172.28.253', 65535, '2017-04-13 07:42:13', '2017-04-13 07:42:13'),
(117, 10, '113.172.28.253', 65535, '2017-04-13 07:42:23', '2017-04-13 07:42:23'),
(118, 0, '113.172.28.253', 65535, '2017-04-13 07:42:42', '2017-04-13 07:42:42'),
(119, 10, '113.172.28.253', 65535, '2017-04-13 07:43:03', '2017-04-13 07:43:03'),
(120, 10, '113.172.28.253', 65535, '2017-04-26 00:22:02', '2017-04-26 00:22:02'),
(121, 10, '113.172.28.253', 65535, '2017-04-26 00:22:06', '2017-04-26 00:22:06'),
(122, 10, '50.99.42.160', 65535, '2017-05-01 20:38:52', '2017-05-01 20:38:52'),
(123, 10, '50.99.42.160', 65535, '2017-05-01 20:38:56', '2017-05-01 20:38:56'),
(124, 10, '50.99.42.160', 65535, '2017-05-01 20:39:00', '2017-05-01 20:39:00'),
(125, 10, '50.99.42.160', 65535, '2017-05-01 20:39:04', '2017-05-01 20:39:04'),
(126, 10, '50.99.42.160', 65535, '2017-05-01 20:39:31', '2017-05-01 20:39:31'),
(127, 10, '50.99.42.160', 65535, '2017-05-01 20:39:35', '2017-05-01 20:39:35'),
(128, 10, '50.99.42.160', 65535, '2017-05-03 17:37:55', '2017-05-03 17:37:55'),
(129, 0, '70.77.93.39', 65535, '2017-05-08 11:51:08', '2017-05-08 11:51:08'),
(130, 0, '70.77.93.39', 65535, '2017-05-08 11:51:12', '2017-05-08 11:51:12'),
(131, 10, '50.99.42.160', 65535, '2017-05-11 18:54:19', '2017-05-11 18:54:19'),
(132, 10, '50.99.42.160', 65535, '2017-05-11 18:54:23', '2017-05-11 18:54:23'),
(133, 10, '50.99.42.160', 65535, '2017-05-11 18:54:28', '2017-05-11 18:54:28'),
(134, 10, '50.99.42.160', 65535, '2017-05-11 18:54:32', '2017-05-11 18:54:32'),
(135, 10, '50.99.42.160', 65535, '2017-05-11 18:54:36', '2017-05-11 18:54:36'),
(136, 10, '50.99.42.160', 65535, '2017-05-11 18:54:40', '2017-05-11 18:54:40'),
(137, 10, '50.99.42.160', 65535, '2017-05-11 18:56:17', '2017-05-11 18:56:17'),
(138, 10, '50.99.42.160', 65535, '2017-05-11 18:56:21', '2017-05-11 18:56:21'),
(139, 0, '50.99.42.160', 65535, '2017-05-11 19:06:48', '2017-05-11 19:06:48'),
(140, 0, '50.99.42.160', 65535, '2017-05-11 19:06:52', '2017-05-11 19:06:52'),
(141, 10, '50.99.42.160', 65535, '2017-05-11 19:06:56', '2017-05-11 19:06:56'),
(142, 10, '50.99.42.160', 65535, '2017-05-11 19:07:00', '2017-05-11 19:07:00'),
(143, 10, '50.99.42.160', 65535, '2017-05-11 19:07:04', '2017-05-11 19:07:04'),
(144, 10, '50.99.42.160', 65535, '2017-05-16 20:12:37', '2017-05-16 20:12:37'),
(145, 10, '50.99.42.160', 65535, '2017-05-16 20:12:41', '2017-05-16 20:12:41'),
(146, 10, '50.99.42.160', 65535, '2017-05-16 20:12:45', '2017-05-16 20:12:45'),
(147, 10, '113.172.22.117', 65535, '2017-05-17 23:42:41', '2017-05-17 23:42:41'),
(148, 10, '113.172.22.117', 65535, '2017-05-18 00:12:02', '2017-05-18 00:12:02'),
(149, 10, '50.99.42.160', 65535, '2017-05-18 13:12:26', '2017-05-18 13:12:26'),
(150, 10, '50.99.42.160', 65535, '2017-05-18 13:12:30', '2017-05-18 13:12:30'),
(151, 10, '50.99.42.160', 65535, '2017-05-18 13:13:54', '2017-05-18 13:13:54'),
(152, 10, '50.99.42.160', 65535, '2017-05-18 13:13:58', '2017-05-18 13:13:58'),
(153, 0, '50.99.42.160', 65535, '2017-05-18 13:15:24', '2017-05-18 13:15:24'),
(154, 0, '50.99.42.160', 65535, '2017-05-18 13:15:28', '2017-05-18 13:15:28'),
(155, 10, '113.172.48.77', 65535, '2017-05-19 02:26:11', '2017-05-19 02:26:11'),
(156, 10, '50.99.42.160', 65535, '2017-05-24 20:25:12', '2017-05-24 20:25:12'),
(157, 10, '50.99.42.160', 65535, '2017-05-24 20:25:16', '2017-05-24 20:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_no` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `short_name`, `answer`, `active`, `deleted`, `created_at`, `updated_at`, `order_no`) VALUES
(8, 'Do you cater events?', 'do-you-cater-events-', 'YES we cater! Ask our staff about catering service, or check out our <a href="http://banhmisub.com/pages/catering">catering menu</a> online.', 1, 0, '2016-06-10 19:17:19', '2016-06-14 15:08:01', 4),
(9, 'Where are you located?', 'where-are-you-located-', 'BanhMi Sub is located at: 3145 - 5 Avenue NE, Calgary Alberta T2A 6K4', 1, 0, '2016-06-10 19:23:20', '2016-06-14 15:19:12', 1),
(11, 'What are your hours of operation?', 'what-are-your-hours-of-operation-', 'BanhMi Sub is open daily: 8:00 AM - 7:00 PM', 1, 0, '2016-06-14 15:04:50', '2016-06-14 15:04:50', 2),
(12, 'Can I call in my order?', 'can-i-call-in-my-order-', 'YES, you can call ahead to order. Our phone number is: 403-454-8644. Please allow at least 1/2 hour ahead for pickup.<br/>', 1, 0, '2016-06-14 15:07:26', '2016-06-24 22:33:44', 3);

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
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pages',
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `short_name`, `summary`, `content`, `category_id`, `order_no`, `image`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `type`, `alt`) VALUES
(2, 'Our Story', 'our-story', 'About BanhMi Sub<br/>', '<h1>About BanhMi Sub</h1>&#10;<p>Asian fusion submarine sandwiches, appetizers, Boba, smoothies, and much more...</p><p><br/></p><p>We are open daily: 8:00 am to 7:00 pm at 3145 - 5th Avenue NE, Calgary Alberta.</p><p><br/></p><p>Ask our staff about <a href="http://banhmisub.com/catering">Catering Service</a> or order online for takeout or delivery.</p>', 6, 1, 'images/pages/default_1466015624.png', 'About BanhMi Sub Calgary', 'Asian fusion submarine sandwiches, appetizers, Boba, smoothies, and much more...', '2015-10-04 19:09:23', '2016-06-15 22:27:05', 'pages', NULL),
(3, 'Careers', 'careers', '&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;BanhMi SUB Careers&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;', '<h1>BanhMi SUB Careers</h1>&#10;<p><a href="http://banhmisub.com/users/contact-us">Contact us</a> for more information on a career with BanhMi SUB.</p>', 6, 3, NULL, 'BahnMi Sub Careers', 'Contact us for more information on a career with BanhMi SUB Calgary', '2015-10-04 19:14:42', '2016-06-15 22:27:27', 'pages', NULL),
(4, 'Create Account', 'create-account', '&#10;&#10;Create an Account with BanhMi SUB&#10;&#10;', '<h1>Create an Account with BanhMi SUB<p><br/></p></h1>', 7, 1, NULL, 'Create an Account with BanhMi SUB', 'Create an account for faster ordering & special offers.', '2015-10-06 01:35:52', '2016-06-14 17:11:28', 'users', NULL),
(5, 'Sign In', 'sign-in', '&#10;&#10;Your Account with BanhMi SUB&#10;&#10;', '<h1>Your Account with BanhMi SUB</h1>', 7, 2, NULL, 'Your Account with BanhMi SUB', 'Speed through checkout with saved delivery addresses and payment information.', '2015-10-06 01:38:42', '2016-06-14 17:11:50', 'users', NULL),
(6, 'Contact Us', 'contact-us', 'Contact BanhMi SUB', '<p><b>Our address:</b></p><p>3145 - 5 Avenue NE<br/><span>Calgary, Alberta<br/></span><span>T2A 6K4</span><span><br/></span></p><p><b>Tel. </b>403-454-8644</p><p><b>Email: </b>order@banhmisub.com</p><p></p><p><b>Web:</b> www.banhmisub.com</p>', 8, 1, NULL, 'Contact BanhMi SUB', 'Banh Mi Sub is located at: Our address:  3145 - 5 Avenue NE Calgary. Call: 403-454-8644 for catering orders.', '2015-10-06 01:43:42', '2016-06-15 22:28:10', 'users', NULL),
(8, 'Catering', 'catering', '&#10;&#10;&#10;&#10;&#10;BanhMi SUB Catering&#10;&#10;&#10;&#10;&#10;', '<h1>BanhMi SUB Catering</h1><p>Minimum order of $50 for catering.</p><p>FREE DELIVERY within 5 km for orders $75+ before tax.</p><p>$10+ fee applies to area outside of 5km.</p><p>Tax not included in price.</p><p>We accept Cash, Visa, Mastercard  &amp; Interac.</p><p>PLACE YOUR ORDER:<br/>online: banhmisub.com<br/>call us: 403-454-8644<br/>in-store: 3145 - 5th Avenue NE Calgary</p><p>Please allow us at least 24 hours for catering orders.</p><p>50% deposit required.</p><p>Non-refundable if cancelled within 24 hours.</p>', 8, 1, 'images/pages/bannercatering.06-14-16_1466015601.png', 'BanhMi SUB Calgary Catering', 'Please allow us at least 24 hours for catering orders.', '2015-10-06 01:57:37', '2016-06-15 22:28:35', 'pages', NULL),
(9, 'Terms of Use', 'terms-of-use', '\r\n\r\nTerms of Use\r\n\r\n', '<h1><span>Terms of Use for BanhMiSub.com</span></h1><p>&#160;If you require any more information or have any questions about our Terms of Service, please feel free to contact us by email at order@banhmisub.com.</p><h2><span>Introduction</span><br/></h2><p>&#160;These terms and conditions govern your use of this website; by using this website, you accept these terms and conditions in full and without reservation. If you disagree with these terms and conditions or any part of these terms and conditions, you must not use this website.</p><p><span>You must be at least 18 [eighteen] years of age to use this website. By using this website and by agreeing to these terms and conditions, you warrant and represent that you are at least 18 years of age.</span><br/></p><h2><span>License to use website</span><br/></h2><p><span>Unless otherwise stated, and/or its licensors own the intellectual property rights published on this website and materials used on . Subject to the license below, all these intellectual property rights are reserved.</span><br/></p><p><span>You may view, download for caching purposes only, and print pages, files or other content from the website for your own personal use, subject to the restrictions set out below and elsewhere in these terms and conditions.</span><br/></p><p><span>You must not:</span><br/></p><ul><li><span>&#160; &#160; republish material from this website in neither print nor digital media or documents (including republication on another website);</span><br/></li><li><span>&#160; &#160; sell, rent or sub-license material from the website;</span><br/></li><li><span>&#160; &#160; show any material from the website in public;</span><br/></li><li><span>&#160; &#160; reproduce, duplicate, copy or otherwise exploit material on this website for a commercial purpose;</span><br/></li><li><span>&#160; &#160; edit or otherwise modify any material on the website;</span><br/></li><li><span>&#160; &#160; redistribute material from this website - except for content specifically and expressly made available for redistribution; or</span><br/></li><li><span>&#160; &#160; republish or reproduce any part of this website through the use of iframes or screenscrapers.</span></li></ul><span>Where content is specifically made available for redistribution, it may only be redistributed within your organisation.</span><h2>Acceptable use</h2><p>You must not use this website in any way that causes, or may cause, damage to the website or impairment of the availability or accessibility of or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.</p><p>You must not use this website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software.</p><p>You must not conduct any systematic or automated data collection activities on or in relation to this website without BanhMi Sub\'s express written consent.</p><p>This includes:</p><ul><li>scraping</li><li>data mining</li><li>data extraction</li><li>data harvesting</li><li>\'framing\' (iframes)</li><li>Article \'spinning\'</li></ul><p>You must not use this website or any part of it to transmit or send unsolicited commercial communications.</p><p>You must not use this website for any purposes related to marketing without the express written consent of BanhMi Sub.</p><h2>Restricted access</h2><p>Access to certain areas of this website is restricted. reserves the right to restrict access to certain areas of this website, or at our discretion, this entire website. may change or modify this policy without notice.</p><p>If provides you with a user ID and password to enable you to access restricted areas of this website or other content or services, you must ensure that the user ID and password are kept confidential. You alone are responsible for your password and user ID security.&#160;<span>BanhMi Sub may disable your user ID and password at BanhMi Sub\'s sole discretion without notice or explanation.</span></p><h2>User content</h2><p>In these terms and conditions, &#8220;your user content&#8221; means material (including without limitation text, images, audio material, video material and audio-visual material) that you submit to this website, for whatever purpose.</p><p>You grant to a worldwide, irrevocable, non-exclusive, royalty-free license to use, reproduce, adapt, publish, translate and distribute your user content in any existing or future media. You also grant to the right to sub-license these rights, and the right to bring an action for infringement of these rights.</p><p>Your user content must not be illegal or unlawful, must not infringe any third party\'s legal rights, and must not be capable of giving rise to legal action whether against you or or a third party (in each case under any applicable law).</p><p>You must not submit any user content to the website that is or has ever been the subject of any threatened or actual legal proceedings or other similar complaint.</p><p>BanhMi Sub reserves the right to edit or remove any material submitted to this website, or stored on the servers of, or hosted or published upon this website.</p><p>BanhMi Sub\'s rights under these terms and conditions in relation to user content, does not undertake to monitor the submission of such content to, or the publication of such content on, this website.</p><h2>No warranties</h2><p>This website is provided &#8220;as is&#8221; without any representations or warranties, express or implied. makes no representations or warranties in relation to this website or the information and materials provided on this website.</p><p>Without prejudice to the generality of the foregoing paragraph, does not warrant that:</p><ul><li>&#160; &#160; this website will be constantly available, or available at all; or</li><li>&#160; &#160; the information on this website is complete, true, accurate or non-misleading.</li></ul><p>Nothing on this website constitutes, or is meant to constitute, advice of any kind. If you require advice in relation to any legal, financial or medical matter you should consult an appropriate professional.</p><h2>Limitations of liability</h2><p>BanhMi Sub will not be liable to you (whether under the law of contact, the law of torts or otherwise) in relation to the contents of, or use of, or otherwise in connection with, this website:</p><ul><li>&#160; &#160; to the extent that the website is provided free-of-charge, for any direct loss;</li><li>&#160; &#160; for any indirect, special or consequential loss; or</li><li>&#160; &#160; for any business losses, loss of revenue, income, profits or anticipated savings, loss of contracts or business relationships, loss of reputation or goodwill, or loss or corruption of information or data.</li></ul><p>These limitations of liability apply even if has been expressly advised of the potential loss.</p><h2>Exceptions</h2><p>Nothing in this website disclaimer will exclude or limit any warranty implied by law that it would be unlawful to exclude or limit; and nothing in this website disclaimer will exclude or limit the liability of in respect of any:</p><ul><li>&#160; &#160; death or personal injury caused by the negligence of or its agents, employees or shareholders/owners;</li><li>&#160; &#160; fraud or fraudulent misrepresentation on the part of ; or</li><li>&#160; &#160; matter which it would be illegal or unlawful for to exclude or limit, or to attempt or purport to exclude or limit, its liability.</li></ul><h2>Reasonableness</h2><p>By using this website, you agree that the exclusions and limitations of liability set out in this website disclaimer are reasonable.</p><p>If you do not think they are reasonable, you must not use this website.</p><h2>Other parties</h2><p>You accept that, as a limited liability entity, has an interest in limiting the personal liability of its officers and employees. You agree that you will not bring any claim personally against BanhMi Sub\'s officers or employees in respect of any losses you suffer in connection with the website.</p><p>Without prejudice to the foregoing paragraph, you agree that the limitations of warranties and liability set out in this website disclaimer will protect BanhMi Sub\'s officers, employees, agents, subsidiaries, successors, assigns and sub-contractors.</p><h2>Unenforceable provisions</h2><p>If any provision of this website disclaimer is, or is found to be, unenforceable under applicable law, that will not affect the enforceability of the other provisions of this website disclaimer.</p><h2>Indemnity</h2><p>You hereby indemnify and undertake to keep indemnified against any losses, damages, costs, liabilities and expenses (including without limitation legal expenses and any amounts paid by to a third party in settlement of a claim or dispute on the advice of BanhMi Sub\'s legal advisers) incurred or suffered by arising out of any breach by you of any provision of these terms and conditions, or arising out of any claim that you have breached any provision of these terms and conditions.</p><h2>Breaches of these terms and conditions</h2><p>Without prejudice to BanhMi Sub\'s other rights under these terms and conditions, if you breach these terms and conditions in any way, may take such action as deems appropriate to deal with the breach, including suspending your access to the website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.</p><h2>Variation</h2><p>BanhMi Sub may revise these terms and conditions from time-to-time. Revised terms and conditions will apply to the use of this website from the date of the publication of the revised terms and conditions on this website. Please check this page regularly to ensure you are familiar with the current version.</p><h2>Assignment</h2><p>BanhMi Sub may transfer, sub-contract or otherwise deal with BanhMi Sub\'s rights and/or obligations under these terms and conditions without notifying you or obtaining your consent.</p><p>You may not transfer, sub-contract or otherwise deal with your rights and/or obligations under these terms and conditions.</p><h2>Severability</h2><p>If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect. If any unlawful and/or unenforceable provision would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.</p><h2>Entire agreement</h2><p>These terms and conditions, together with BanhMi Sub\'s Privacy Policy constitute the entire agreement between you and in relation to your use of this website, and supersede all previous agreements in respect of your use of this website.</p><h2>Law and jurisdiction</h2><p>These terms and conditions will be governed by and construed in accordance with the laws of Canada, and any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of Alberta.</p><h2>About these website Terms of Use</h2><p>We created these website terms and conditions using the TOS/T&amp;C generator available from <a href="http://www.privacypolicyonline.com/">Privacy Policy Online</a>.</p><p><br/></p><p><b>BanhMi Sub\'s details:</b></p><p>3145 5 Avenue NE</p><p>Calgary, Alberta</p><p>T2A 6K4</p><p><br/></p><p>Tel: 403-454-8644</p><p>Email: order@banhmisub.com</p><p>Web: www.banhmisub.com</p>', 9, 1, NULL, 'BanhMi SUB Terms of Use', 'If you require any more information or have any questions about our Terms of Service, please feel free to contact us by email at order@banhmisub.com.', '2015-10-06 01:58:13', '2016-06-15 16:48:59', 'pages', NULL),
(10, 'Privacy Policy', 'privacy-policy', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nPrivacy Policy\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '<h1>Privacy Policy</h1><p><b>Your privacy is critically important to us.</b></p><p><br/></p>&#10;<p><b>BanhMi Sub is located at:</b></p><p>3145 5 Avenue NE<br/><span>Calgary, Alberta&#160;</span><br/></p><p>Tel: 403-454-8644</p><p><br/></p><p>It is BanhMi Sub&#8217;s policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to banhmisub.com (hereinafter, &#34;us&#34;, &#34;we&#34;, or &#34;banhmisub.com&#34;). We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy (&#34;Privacy Policy&#34;) to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.</p><p>This Privacy Policy, together with the Terms and conditions posted on our Website, set forth the general rules and policies governing your use of our Website. Depending on your activities when visiting our Website, you may be required to agree to additional terms and conditions.</p><p><br/></p><p><b>Website Visitors</b></p><p>Like most website operators, BanhMi Sub collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. BanhMi Sub&#8217;s purpose in collecting non-personally identifying information is to better understand how BanhMi Sub&#8217;s visitors use its website. From time to time, BanhMi Sub may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p><p>BanhMi Sub also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on http://banhmisub.com blog posts. BanhMi Sub only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.</p><p><br/></p><p><b>Gathering of Personally-Identifying Information</b></p><p>Certain visitors to BanhMi Sub&#8217;s websites choose to interact with BanhMi Sub in ways that require BanhMi Sub to gather personally-identifying information. The amount and type of information that BanhMi Sub gathers depends on the nature of the interaction. For example, if we ask visitors who sign up for an account at http://banhmisub.com to provide a name and email address.</p><p><br/></p><p><b>Security</b></p><p>The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p><p><br/></p><p><b>Advertisements</b></p><p>Ads appearing on our website may be delivered to users by advertising partners, who may set cookies. These cookies allow the ad server to recognize your computer each time they send you an online advertisement to compile information about you or others who use your computer. This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you. This Privacy Policy covers the use of cookies by BanhMi Sub and does not cover the use of cookies by any advertisers.</p><p><br/></p><p><b>Links To External Sites</b></p><p>Our Service may contain links to external sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy and terms and conditions of every site you visit.</p><p>We have no control over, and assume no responsibility for the content, privacy policies or practices of any third party sites, products or services.</p><p><br/></p><p><b>Aggregated Statistics</b></p><p>BanhMi Sub may collect statistics about the behavior of visitors to its website. BanhMi Sub may display this information publicly or provide it to others. However, BanhMi Sub does not disclose your personally-identifying information.</p><p><br/></p><p><b>Cookies</b></p><p>To enrich and perfect your online experience, BanhMi Sub uses &#34;Cookies&#34;, similar technologies and services provided by others to display personalized content, appropriate advertising and store your preferences on your computer.</p><p>A cookie is a string of information that a website stores on a visitor&#8217;s computer, and that the visitor&#8217;s browser provides to the website each time the visitor returns. BanhMi Sub uses cookies to help BanhMi Sub identify and track visitors, their usage of http://banhmisub.com, and their website access preferences. BanhMi Sub visitors who do not wish to have cookies placed on their computers should set their browsers to refuse cookies before using BanhMi Sub&#8217;s websites, with the drawback that certain features of BanhMi Sub&#8217;s websites may not function properly without the aid of cookies.</p><p>By continuing to navigate our website without changing your cookie settings, you hereby acknowledge and agree to BanhMi Sub\'s use of cookies.</p><p><br/></p><p><b>E-commerce</b></p><p>Those who engage in transactions with BanhMi Sub &#8211; by purchasing BanhMi Sub\'s services or products, are asked to provide additional information, including as necessary the personal and financial information required to process those transactions. In each case, BanhMi Sub collects such information only insofar as is necessary or appropriate to fulfill the purpose of the visitor&#8217;s interaction with BanhMi Sub. BanhMi Sub does not disclose personally-identifying information other than as described below. And visitors can always refuse to supply personally-identifying information, with the caveat that it may prevent them from engaging in certain website-related activities.</p><p><br/></p><p><b>Privacy Policy Changes</b></p><p>Although most changes are likely to be minor, BanhMi Sub may change its Privacy Policy from time to time, and in BanhMi Sub&#8217;s sole discretion. BanhMi Sub encourages visitors to frequently check this page for any changes to its Privacy Policy. Your continued use of this site after any change in this Privacy Policy will constitute your acceptance of such change.</p><p><br/></p><p><b>Credit &amp; Contact Information</b></p><p>This privacy policy was created at privacygen.com. If you have any questions about this Privacy Policy, please email via our <a href="http://banhmisub.com/users/contact-us">contact us</a> page or phone.</p>', 9, 1, NULL, 'Privacy Policy', 'Your privacy is critically important to us.', '2015-10-06 01:58:29', '2016-06-15 16:56:11', 'pages', NULL),
(12, 'Ingredient Listing', 'ingredient-listing', '\r\nBanhMi SUB Ingredient Listing\r\n', '<h1>BanhMi SUB Ingredient Listing</h1><h2><b>Vietnamese Subs</b></h2><p>Rich, savoury meats or vegetarian option with sweet &amp; sour pickled carrots and daikon, fresh cilantro, spicy jalape&#241;os on a freshly baked vietnamese baguette.</p><h2><b>Appetizers</b></h2><p>Spring rolls, salad rolls, chicken or beef sate rolls, &#160;fried wontons, wonton soup, chicken wings, viet sushi, and shrimp skewers.</p><h2><b>Bubble Tea</b></h2><p><span>Iced beverages with tapioca pearls or lychee jelly.</span><br/></p>', 10, 1, NULL, 'BanhMi SUB Ingredient Listing', 'Vietnamese Subs, Appetizers, Bubble Tea, and much more!', '2015-10-06 01:59:15', '2016-06-14 17:14:04', 'pages', NULL),
(16, 'FAQs', 'faqs', '&#10;&#10;&#10;&#10;BanhMi SUB FAQs&#10;&#10;&#10;&#10;', '', 6, 3, NULL, 'BanhMi SUB FAQs', 'BanhMi Sub Calgary frequently asked questions.', '2016-06-01 02:09:29', '2016-06-15 22:29:02', 'faqs', NULL),
(17, 'Order History', 'order-history', 'Order History', '<h1>Order History</h1>', 7, 1, NULL, 'BanhMi SUB Order History', 'Save your favourites for faster ordering.', '2016-06-01 05:16:34', '2016-06-25 01:56:05', 'users', 'BanhMi SUB Order History');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `description`, `category_id`, `image`, `meta_title`, `meta_description`, `price`, `created_at`, `updated_at`, `alt`) VALUES
(1, 'Bánh mì dac biet', 'banh-mi-dac-biet', 'Bánh mì ngon va re nhat tren the gioi', 3, 'images/products/test 011.02-10-15.jpg', 'Bánh mì dac biet', 'Bánh mì ngon va re nhat tren the gioi', 6.8, '2015-09-29 04:48:45', '2016-06-07 22:05:44', NULL),
(2, 'Traditional Banh Mi', 'traditional-banh-mi', 'Type flavoured traditional cake from many years ago. The shape and materials of all kinds are in the traditional way.', 1, 'images/products/l_518856232_banh-mi-xa-xiu_1444097456.png', 'Traditional Banh Mi', '', 5.5, '2015-10-02 13:15:44', '2016-06-07 22:05:26', NULL),
(3, 'Pepsi', 'pepsi', 'Drinks', 4, NULL, 'BanhMi SUB Drinks', '', 1.5, '2015-10-04 21:35:31', '2016-06-07 22:04:49', NULL),
(4, 'Banh Mi custom', 'banh-mi-custom', 'Create your ideal Banh mi sub', 2, 'images/products/banhmi_1444098369.png', 'Banh Mi custom', 'Create your ideal Banh mi sub', 0, '2015-10-06 02:12:59', '2016-06-07 22:03:00', NULL);

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `short_name`, `description`, `image`, `meta_title`, `meta_description`, `parent_id`, `position`, `order_no`, `created_at`, `updated_at`, `alt`) VALUES
(1, 'Feature Promo', 'feature-promo', 'Asian fusion submarine sandwiches, Boon Togo, and special combination meals.', 'images/product-categories/michael-symons-banh-mi-sliders_recipe_1000x400_1417815108038.05-10-15.jpg', 'Feature Promotions at BanhMi Sub Calgary', 'Asian fusion submarine sandwiches, Boon Togo, and special combination meals.', 0, 1, 1, '2015-09-29 13:17:18', '2016-06-15 22:41:54', NULL),
(2, 'Banh Mi SUBS', 'banh-mi-subs', 'Asian fusion submarine sandwiches', 'images/product-categories/thuc-don-tang-can-buoi-sang-2.02-10-15.jpg', 'BanhMi SUBS', 'Asian fusion submarine sandwiches', 0, 1, 1, '2015-09-29 23:35:41', '2016-06-15 22:42:32', NULL),
(3, 'Sides', 'sides', 'Baguette Bread', 'images/product-categories/maxresdefault.02-10-15.jpg', 'BanhMi SUB Baguettes', 'Baguette Bread', 0, 1, 1, '2015-09-29 23:36:45', '2016-06-15 22:46:47', NULL),
(4, 'Drinks', 'drinks', 'Boba, smoothies, espresso iced coffee, iced tea, milk tea, coconut juice, orange juice, pop, water', 'images/product-categories/bundaberg__brewed__drinks__range.02-10-15.jpg', 'BanhMi SUB Drinks', 'Boba, smoothies, espresso iced coffee, iced tea, milk tea, coconut juice, orange juice, pop, water', 0, 1, 1, '2015-09-29 23:38:11', '2016-06-15 22:46:04', NULL),
(5, 'Catering', 'catering', 'Catering Service', 'images/product-categories/drinks-_wallpaper.02-10-15.jpg', 'BanhMi SUB Catering', 'Catering Service', 0, 1, 1, '2015-09-29 23:39:05', '2016-06-15 22:47:34', NULL),
(6, 'About Us', 'about-us', '', NULL, '', '', 0, 2, 1, '2015-10-04 15:51:19', '2015-10-04 15:57:15', NULL),
(7, 'My Account', 'my-account', '', NULL, '', '', 0, 2, 1, '2015-10-04 15:59:47', '2015-10-04 16:00:27', NULL),
(8, 'Customer Service', 'customer-service', '', NULL, '', '', 0, 2, 2, '2015-10-04 16:06:07', '2015-10-04 16:06:07', NULL),
(9, 'Policies', 'policies', '', NULL, '', '', 0, 2, 2, '2015-10-04 16:14:24', '2015-10-04 17:09:02', NULL),
(10, 'Nutrition', 'nutrition', '', NULL, '', '', 0, 2, 3, '2015-10-04 17:06:37', '2015-10-04 17:06:53', NULL),
(11, 'Become a Franchisee', 'become-a-franchisee', '', NULL, '', '', 0, 0, 3, '2015-10-04 17:09:16', '2016-06-15 15:16:51', NULL),
(12, 'Our Story', 'our-story', '', NULL, '', '', 0, 0, 1, '2015-10-04 17:17:15', '2015-10-05 15:20:22', NULL);

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
(61, 10, '14.186.190.16', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-18 02:13:24', '2016-03-18 02:13:24'),
(62, 10, '14.186.190.16', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-18 04:19:45', '2016-03-18 04:19:45'),
(63, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-18 04:46:31', '2016-03-18 04:46:31'),
(64, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36', '2016-03-18 04:46:32', '2016-03-18 04:46:32'),
(65, 10, '14.186.190.16', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-18 07:25:25', '2016-03-18 07:25:25'),
(66, 10, '14.186.190.16', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-19 01:47:05', '2016-03-19 01:47:05'),
(67, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-21 00:11:51', '2016-03-21 00:11:51'),
(68, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-23 00:19:01', '2016-03-23 00:19:01'),
(69, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-28 02:00:37', '2016-03-28 02:00:37'),
(70, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '2016-03-30 23:42:56', '2016-03-30 23:42:56'),
(71, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-13 00:35:36', '2016-04-13 00:35:36'),
(72, 10, '14.187.62.231', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36', '2016-04-22 03:28:26', '2016-04-22 03:28:26'),
(73, 10, '14.187.62.231', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36', '2016-04-23 03:30:05', '2016-04-23 03:30:05'),
(74, 10, '14.187.62.231', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36', '2016-04-23 04:14:10', '2016-04-23 04:14:10'),
(75, 10, '14.187.62.231', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-25 03:02:06', '2016-04-25 03:02:06'),
(76, 10, '14.187.33.178', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-26 02:35:42', '2016-04-26 02:35:42'),
(77, 10, '14.187.33.178', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-26 02:35:43', '2016-04-26 02:35:43'),
(78, 10, '14.187.33.178', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-26 02:35:52', '2016-04-26 02:35:52'),
(79, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-29 02:37:17', '2016-04-29 02:37:17'),
(80, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-29 02:37:19', '2016-04-29 02:37:19'),
(81, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-29 02:37:36', '2016-04-29 02:37:36'),
(82, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-29 02:37:53', '2016-04-29 02:37:53'),
(83, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36', '2016-04-29 03:10:20', '2016-04-29 03:10:20'),
(84, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-04-29 03:57:44', '2016-04-29 03:57:44'),
(85, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-04-29 09:42:48', '2016-04-29 09:42:48'),
(86, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-03 02:33:09', '2016-05-03 02:33:09'),
(87, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-04 01:31:43', '2016-05-04 01:31:43'),
(88, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-04 01:31:44', '2016-05-04 01:31:44'),
(89, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-04 03:32:01', '2016-05-04 03:32:01'),
(90, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-05 02:00:38', '2016-05-05 02:00:38'),
(91, 10, '14.186.161.17', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', '2016-05-05 02:00:38', '2016-05-05 02:00:38'),
(92, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 01:41:09', '2016-05-19 01:41:09'),
(93, 10, '14.186.158.195', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 03:18:24', '2016-05-19 03:18:24'),
(94, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-19 21:47:30', '2016-05-19 21:47:30'),
(95, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-26 03:02:07', '2016-05-26 03:02:07'),
(96, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-05-26 05:22:22', '2016-05-26 05:22:22'),
(97, 10, '14.186.251.38', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36', '2016-06-01 01:49:04', '2016-06-01 01:49:04'),
(98, 10, '14.186.251.38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-01 05:16:00', '2016-06-01 05:16:00'),
(99, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-03 23:45:40', '2016-06-03 23:45:40'),
(100, 10, '174.0.26.72', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-04 04:28:56', '2016-06-04 04:28:56'),
(101, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-06 02:47:31', '2016-06-06 02:47:31'),
(102, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36', '2016-06-06 21:54:30', '2016-06-06 21:54:30'),
(103, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-07 15:18:20', '2016-06-07 15:18:20'),
(104, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-07 16:50:11', '2016-06-07 16:50:11'),
(105, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-07 16:50:11', '2016-06-07 16:50:11'),
(106, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-07 21:59:12', '2016-06-07 21:59:12'),
(107, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-07 21:59:12', '2016-06-07 21:59:12'),
(108, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-08 09:16:27', '2016-06-08 09:16:27'),
(109, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-08 15:37:55', '2016-06-08 15:37:55'),
(110, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-08 21:13:21', '2016-06-08 21:13:21'),
(111, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-09 16:55:29', '2016-06-09 16:55:29'),
(112, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-09 21:49:41', '2016-06-09 21:49:41'),
(113, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-10 02:20:36', '2016-06-10 02:20:36'),
(114, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-10 02:20:53', '2016-06-10 02:20:53'),
(115, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-10 17:22:46', '2016-06-10 17:22:46'),
(116, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-10 19:13:43', '2016-06-10 19:13:43'),
(117, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-13 07:39:37', '2016-06-13 07:39:37'),
(118, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 07:45:01', '2016-06-13 07:45:01'),
(119, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 08:40:17', '2016-06-13 08:40:17'),
(120, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 10:06:08', '2016-06-13 10:06:08'),
(121, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 14:37:17', '2016-06-13 14:37:17'),
(122, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 20:45:20', '2016-06-13 20:45:20'),
(123, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-13 21:15:28', '2016-06-13 21:15:28'),
(124, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 03:55:06', '2016-06-14 03:55:06'),
(125, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-14 08:58:47', '2016-06-14 08:58:47'),
(126, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 15:02:56', '2016-06-14 15:02:56'),
(127, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 18:45:07', '2016-06-14 18:45:07'),
(128, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-14 20:21:03', '2016-06-14 20:21:03'),
(129, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-15 02:13:00', '2016-06-15 02:13:00'),
(130, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-15 02:43:06', '2016-06-15 02:43:06'),
(131, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-15 07:54:09', '2016-06-15 07:54:09'),
(132, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-15 14:38:26', '2016-06-15 14:38:26'),
(133, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-15 22:24:53', '2016-06-15 22:24:53'),
(134, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 04:03:05', '2016-06-16 04:03:05'),
(135, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-16 04:03:14', '2016-06-16 04:03:14'),
(136, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 04:04:09', '2016-06-16 04:04:09'),
(137, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-16 04:07:06', '2016-06-16 04:07:06'),
(138, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 15:08:01', '2016-06-16 15:08:01'),
(139, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 16:54:38', '2016-06-16 16:54:38'),
(140, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 19:40:27', '2016-06-16 19:40:27'),
(141, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-16 22:11:49', '2016-06-16 22:11:49'),
(142, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-16 23:06:21', '2016-06-16 23:06:21'),
(143, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 02:56:39', '2016-06-17 02:56:39'),
(144, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-17 04:49:00', '2016-06-17 04:49:00'),
(145, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 05:11:35', '2016-06-17 05:11:35'),
(146, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 05:16:00', '2016-06-17 05:16:00'),
(147, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 14:44:07', '2016-06-17 14:44:07'),
(148, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 18:00:16', '2016-06-17 18:00:16'),
(149, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 18:00:21', '2016-06-17 18:00:21'),
(150, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-17 20:58:07', '2016-06-17 20:58:07'),
(151, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-18 02:25:43', '2016-06-18 02:25:43'),
(152, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-20 02:22:57', '2016-06-20 02:22:57'),
(153, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-20 07:56:35', '2016-06-20 07:56:35'),
(154, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-20 07:56:39', '2016-06-20 07:56:39'),
(155, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-20 15:11:25', '2016-06-20 15:11:25'),
(156, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '2016-06-20 21:06:51', '2016-06-20 21:06:51'),
(157, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-21 06:49:44', '2016-06-21 06:49:44'),
(158, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-21 06:49:44', '2016-06-21 06:49:44'),
(159, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-22 03:10:29', '2016-06-22 03:10:29'),
(160, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-22 14:28:33', '2016-06-22 14:28:33'),
(161, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-22 14:28:34', '2016-06-22 14:28:34'),
(162, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-22 16:30:29', '2016-06-22 16:30:29'),
(163, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-23 02:10:16', '2016-06-23 02:10:16'),
(164, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-23 02:37:43', '2016-06-23 02:37:43'),
(165, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-23 14:39:29', '2016-06-23 14:39:29'),
(166, 10, '115.77.159.179', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-23 16:25:57', '2016-06-23 16:25:57'),
(167, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-23 16:28:36', '2016-06-23 16:28:36'),
(168, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-23 17:53:27', '2016-06-23 17:53:27'),
(169, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 09:06:04', '2016-06-24 09:06:04'),
(170, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 09:13:01', '2016-06-24 09:13:01'),
(171, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 09:24:04', '2016-06-24 09:24:04'),
(172, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 09:58:53', '2016-06-24 09:58:53'),
(173, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 14:44:59', '2016-06-24 14:44:59'),
(174, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-24 14:49:40', '2016-06-24 14:49:40'),
(175, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 17:11:24', '2016-06-24 17:11:24'),
(176, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-24 17:12:26', '2016-06-24 17:12:26'),
(177, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-24 19:04:14', '2016-06-24 19:04:14'),
(178, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-24 19:06:09', '2016-06-24 19:06:09'),
(179, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-24 19:58:17', '2016-06-24 19:58:17'),
(180, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-24 20:08:55', '2016-06-24 20:08:55'),
(181, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-24 20:50:01', '2016-06-24 20:50:01'),
(182, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-24 21:07:15', '2016-06-24 21:07:15'),
(183, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-25 01:40:56', '2016-06-25 01:40:56'),
(184, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-25 01:40:57', '2016-06-25 01:40:57'),
(185, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-25 01:56:56', '2016-06-25 01:56:56'),
(186, 10, '70.72.146.154', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-25 15:41:58', '2016-06-25 15:41:58'),
(187, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-27 02:08:54', '2016-06-27 02:08:54'),
(188, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-27 02:12:13', '2016-06-27 02:12:13'),
(189, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-27 02:43:33', '2016-06-27 02:43:33'),
(190, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-27 14:36:09', '2016-06-27 14:36:09'),
(191, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-27 14:36:09', '2016-06-27 14:36:09'),
(192, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-27 14:37:33', '2016-06-27 14:37:33'),
(193, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-27 17:34:27', '2016-06-27 17:34:27'),
(194, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-28 03:55:55', '2016-06-28 03:55:55'),
(195, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-28 03:59:18', '2016-06-28 03:59:18'),
(196, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-28 03:59:44', '2016-06-28 03:59:44'),
(197, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-28 14:49:15', '2016-06-28 14:49:15'),
(198, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-28 16:01:13', '2016-06-28 16:01:13'),
(199, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-30 07:14:04', '2016-06-30 07:14:04'),
(200, 10, '14.186.151.192', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-30 08:17:04', '2016-06-30 08:17:04'),
(201, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-06-30 19:06:23', '2016-06-30 19:06:23'),
(202, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-16 00:12:13', '2016-07-16 00:12:13'),
(203, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-08-08 15:06:51', '2016-08-08 15:06:51'),
(204, 10, '50.99.42.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-08-08 15:08:50', '2016-08-08 15:08:50'),
(205, 10, '14.186.241.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-09-22 06:40:55', '2016-09-22 06:40:55'),
(206, 10, '68.146.182.46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '2016-10-31 16:24:31', '2016-10-31 16:24:31'),
(207, 10, '14.186.194.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-11-18 02:04:29', '2016-11-18 02:04:29'),
(208, 10, '14.161.39.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-11-18 02:04:51', '2016-11-18 02:04:51'),
(209, 10, '115.77.49.21', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-12-03 05:38:24', '2016-12-03 05:38:24'),
(210, 10, '14.186.208.204', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 00:04:01', '2017-01-11 00:04:01'),
(211, 10, '14.186.208.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 00:08:47', '2017-01-11 00:08:47'),
(212, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 00:11:35', '2017-01-11 00:11:35'),
(213, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 00:11:35', '2017-01-11 00:11:35'),
(214, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 00:11:51', '2017-01-11 00:11:51'),
(215, 10, '14.186.208.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-11 05:13:36', '2017-01-11 05:13:36'),
(216, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-13 17:20:47', '2017-01-13 17:20:47'),
(217, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-14 00:00:45', '2017-01-14 00:00:45'),
(218, 10, '14.187.63.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-15 23:47:47', '2017-02-15 23:47:47'),
(219, 10, '14.187.63.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-15 23:47:47', '2017-02-15 23:47:47'),
(220, 10, '14.187.63.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-15 23:48:02', '2017-02-15 23:48:02'),
(221, 10, '14.187.63.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 23:48:16', '2017-02-23 23:48:16'),
(222, 10, '14.187.63.168', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-27 07:26:33', '2017-02-27 07:26:33'),
(223, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-24 21:40:14', '2017-03-24 21:40:14'),
(224, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-24 21:40:14', '2017-03-24 21:40:14'),
(225, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-24 21:40:19', '2017-03-24 21:40:19'),
(226, 10, '14.186.248.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-04 04:59:14', '2017-04-04 04:59:14'),
(227, 10, '113.172.28.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-11 23:32:42', '2017-04-11 23:32:42'),
(228, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-11 23:33:17', '2017-04-11 23:33:17'),
(229, 10, '113.172.28.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-26 00:22:10', '2017-04-26 00:22:10'),
(230, 10, '113.172.28.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-26 00:22:10', '2017-04-26 00:22:10'),
(231, 10, '113.172.28.253', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-26 02:15:24', '2017-04-26 02:15:24'),
(232, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-05-03 17:40:06', '2017-05-03 17:40:06'),
(233, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-05-04 18:50:31', '2017-05-04 18:50:31'),
(234, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-05-04 23:55:16', '2017-05-04 23:55:16'),
(235, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-05-11 19:07:58', '2017-05-11 19:07:58'),
(236, 10, '113.172.22.117', 'Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/6', '2017-05-17 23:42:48', '2017-05-17 23:42:48'),
(237, 10, '113.172.22.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 00:12:10', '2017-05-18 00:12:10'),
(238, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18 13:15:38', '2017-05-18 13:15:38'),
(239, 10, '113.172.48.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-19 02:26:28', '2017-05-19 02:26:28'),
(240, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-24 20:25:23', '2017-05-24 20:25:23'),
(241, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-24 21:40:15', '2017-05-24 21:40:15'),
(242, 10, '14.186.135.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-05-25 05:33:44', '2017-05-25 05:33:44'),
(243, 10, '50.99.42.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-25 13:12:17', '2017-05-25 13:12:17');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `birthday`, `subscribe`, `active`, `created_at`, `updated_at`) VALUES
(1, 'nmtri44@gmail.com', '$2a$08$2uTGoS6QwqhIG7oseiZ3ROj24TV7XsKM5zLeABCkkSFNmtz..9o3i', 'Kami', 'Tori', '4-4', 0, 1, '2015-10-01 04:35:02', '2015-10-01 04:35:02'),
(4, 'test@anvy.com', '$2a$08$WjfOucCHxaQYpc1WlJ8pKuv/Y3qt7T5OPcAdhwwYdzsV9eD9lNCeq', 'Test', 'Test', '1-5', 1, 1, '2015-10-02 09:59:00', '2015-10-02 09:59:00');

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
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cf_key_2` (`cf_key`),
  ADD KEY `cf_key` (`cf_key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `success_logins`
--
ALTER TABLE `success_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
