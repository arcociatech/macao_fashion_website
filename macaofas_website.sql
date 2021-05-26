-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 26, 2021 at 03:35 PM
-- Server version: 5.7.34
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macaofas_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1556780563user.png', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'KjOSdD37uOWJKIwuhq2wsQn5kS12Y9kgTRFSV1qdRt4crXIvL0aX81RADxMO', '2018-02-28 23:27:08', '2021-01-17 19:18:37', 'Macao Fashion'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(2, 0, 'RTL English', '1584887310NzfWDhO8.json', '1584887310NzfWDhO8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'Order Confirmation', 22, 'rfgdfgfd', '2020-01-21 01:18:38', '2020-01-21 01:18:38', 'Ticket', NULL),
(2, 'test', 29, 'test message', '2021-03-22 13:24:26', '2021-03-22 13:24:26', NULL, NULL),
(3, 'tests', 29, 'test ii', '2021-03-22 16:43:52', '2021-03-22 16:43:52', NULL, NULL),
(4, 'test', 31, 'test', '2021-03-23 12:46:24', '2021-03-23 12:46:24', NULL, NULL),
(5, '11', 31, '111', '2021-03-23 12:48:15', '2021-03-23 12:48:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'rfgdfgfd', 22, '2020-01-21 01:18:38', '2020-01-21 01:18:38'),
(2, 2, 'test message', NULL, '2021-03-22 13:24:26', '2021-03-22 13:24:26'),
(3, 3, 'test ii', NULL, '2021-03-22 16:43:52', '2021-03-22 16:43:52'),
(4, 4, 'test', NULL, '2021-03-23 12:46:24', '2021-03-23 12:46:24'),
(5, 5, '111', NULL, '2021-03-23 12:48:15', '2021-03-23 12:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 03:22:03', '2019-10-12 23:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(243, 33, '1 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(244, 33, '2 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(245, 33, '3 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1568889151top2.jpg', 'https://www.google.com/', 'TopSmall'),
(2, '1568889146top1.jpg', NULL, 'TopSmall'),
(3, '1568889164bottom1.jpg', 'https://www.google.com/', 'Large'),
(4, '1564398600side-triple3.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1564398579side-triple2.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1564398571side-triple1.jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(26, 9, 'Quoi porter en Belgique au printemps, en été et en automne.', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:115%\">La Belgique\r\nest peut-être un petit pays, mais il regorge de sites magnifiques et de plats\r\nincroyables. Chaque fois que vous décidez de visiter, suivez nos conseils pour\r\nsavoir quoi porter en Belgique tout au long de l\'année.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:16.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">Quoi porter en Belgique<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:16.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">Comme dans la plupart des pays d’Europe, les saisons les plus chargées de\r\nla Belgique incluent l’été jusqu’à l’automne en raison du beau temps et la\r\nplupart des attractions sont ouvertes à cette période, le printemps et l’hiver\r\noffrant un temps plus frais mais plus d’espaces ouverts.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">Cependant, vous pouvez facilement profiter de ce pays pittoresque et\r\nmagnifique à toute saison de l\'année!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">Voici un petit guide sur ce qu\'il faut porter en Belgique au printemps,\r\nen été et en automne:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom: 0.0001pt; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;\r\nmso-bidi-font-family:Symbol;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-bidi-font-weight:bold\">Belgique Style de vêtements<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333;\r\nmso-font-kerning:18.0pt;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-bidi-font-weight:bold\">Que porter en Belgique au printemps<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333;\r\nmso-font-kerning:18.0pt;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-bidi-font-weight:bold\">Que porter en Belgique en été<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333;\r\nmso-font-kerning:18.0pt;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-bidi-font-weight:bold\">Quoi porter en Belgique à l\'automne<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333;\r\nmso-font-kerning:18.0pt;mso-bidi-font-weight:bold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-bidi-font-weight:bold\">Belgique Hébergements<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-bottom: 0.0001pt; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><!--[if !supportLists]--><span style=\"font-size:14.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;\r\nmso-bidi-font-family:Symbol;color:#333333;mso-font-kerning:18.0pt;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:14.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-bidi-font-weight:bold\">Belgique Transport<o:p></o:p></span></p>\r\n\r\n<span style=\"font-size:14.0pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333;mso-font-kerning:18.0pt;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA;\r\nmso-bidi-font-weight:bold\">Que faire en Belgique</span><br>', '1619479069what-to-wear-in-belgium-cover.jpg', 'Mode', 52, 1, NULL, NULL, 'Mode', '2021-04-26 22:17:49'),
(27, 9, 'La mode en Belgique.', '<p class=\"MsoNormal\"><b><span style=\"font-size:18.0pt;line-height:115%\">Vente de vêtements en Belgique<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Dans tous\r\nles cas, le début des soldes est toujours marqué par le genre de frénésie de\r\nshopping que nous voyons habituellement aux États-Unis le lendemain de\r\nThanksgiving. Cette année, j\'ai rejoint un ami flamand qui avait pris une\r\njournée de congé pour faire du shopping le premier jour des soldes dans notre\r\nville natale de Hasselt. Les remises peuvent aller de 10 pour cent négligeables\r\nà 70 pour cent plus tentants sur les prix d\'origine.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Et pourtant,\r\ncette année, j\'ai trouvé très peu de vêtements (bien sûr, nous parlons surtout\r\nde vêtements ici) que je voulais, même en solde. Ces derniers temps, la mode\r\nsemble avoir empiré. Bien, bien pire. Des chemisiers mamie à col montant, des\r\nimprimés géométriques forts tout droit des années 70, des jupes et des\r\npantalons conçus pour mettre en valeur les parties les moins attrayantes de\r\nl\'anatomie féminine. Les couleurs sont soit vives, soit ternes comme la boue.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Ma\r\nmagnifique, mince et blonde amie a eu de la chance et a trouvé une robe qui\r\nflattait sa silhouette dans un joli tissu à motifs de bon goût - à moitié prix.\r\nElle semble toujours savoir quoi acheter. Je pense que c’est un truc belge.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\"><br></span></p><p class=\"MsoNormal\"><b><span style=\"font-size:18.0pt;line-height:115%\">Bien s\'habiller en Belgique</span></b><span style=\"font-size:18.0pt;line-height:115%\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">Les Belges\r\nsont généralement beaucoup plus à la mode que les Américains. Très bien,\r\nj’admets que cela ne veut pas dire grand-chose. Les Américains sont parmi les\r\npersonnes les moins à la mode du monde. (Suivi de près par les Néerlandais, les\r\nAustraliens et les Britanniques.) Vous pouvez toujours repérer l\'Américain en\r\nEurope: jeans baggy, baskets, sweat-shirt et sac à dos. Toutes choses dans\r\nlesquelles aucun Belge de plus de 12 ans ne serait pris au dépourvu.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">Une autre\r\nchose que j’ai remarquée, c’est que les Belges n’ont aucun problème à porter la\r\nmême tenue deux jours de suite. Quand il rentre du travail, mon mari enlève ses\r\nvêtements de bureau, les raccroche et se change en jeans. Le lendemain, il\r\nporte à nouveau la même chemise et le même pantalon. Il a dit qu\'on lui avait\r\nappris à faire cela comme un enfant. Quand il est rentré de l\'école, il a\r\nraccroché ses vêtements d\'école et s\'est changé en vêtements de jeu.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">Quand\r\nj\'étais enfant, porter la même tenue deux jours de suite était littéralement\r\ninconcevable. Nous avons eu une fille dans notre classe qui n\'a jamais, jamais\r\nporté deux fois la même tenue. (Je me suis toujours demandé ce qu\'elle faisait\r\nde ses vêtements après qu\'ils aient été portés une fois, pour ne plus jamais\r\nréapparaître sur sa personne.) Bien sûr, c\'est un exemple extrême, mais mon\r\ncamarade de classe adolescente a clairement atteint le but ultime: de nouveaux\r\nvêtements tous les jours. .<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">L\'approche\r\nflamande des vêtements est beaucoup plus pratique, sensée et économique. Pour\r\nautant que je sache, ils ont tendance à acheter moins de vêtements et à les\r\nporter plus souvent. L\'Américain typique a des placards remplis de vêtements,\r\ndont la plupart sont portés plusieurs fois puis oubliés - pour être remplacés\r\nla saison suivante par un tas de nouveaux vêtements.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\"><span style=\"font-size:18.0pt;line-height:115%\">Donc, d’une\r\ncertaine manière, je suis content de ne pas avoir trouvé quoi que ce soit pour\r\nme tenter pendant les soldes. J\'essaie d\'acheter des vêtements à la flamande:\r\noccasionnellement et avec soin. Après tout, je n’ai pas à avoir une tenue\r\ndifférente chaque jour de la semaine. De plus, je peux porter la même robe à\r\ndeux soirées différentes, même si certaines des mêmes personnes peuvent me voir\r\nles deux fois. Ici en Flandre, personne ne sera choqué.<o:p></o:p></span></p>', '16194794172018-05-25.jpg', 'Mode', 38, 1, NULL, NULL, 'Mode', '2021-04-26 22:23:37'),
(28, 9, 'Vente de vêtements en Belgique.', '<p class=\"MsoNormal\"><b><span style=\"font-size:16.0pt;line-height:115%\">À l\'insu de beaucoup, la Belgique est\r\nsilencieusement devenue l\'un des hauts lieux de la mode en Europe. Apprenez\r\ntout sur les styles de mode locaux en Belgique.<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:16.0pt;line-height:115%\">&nbsp;</span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Les\r\nvêtements et plus particulièrement la tenue d\'affaires à Bruxelles prennent un\r\npeu de temps à remarquer. Eh bien, pour moi, c\'est le cas. Bruxelles n’est pas\r\nconnue pour la haute couture, mais les gens qui y vivent ont définitivement le\r\nsens du style (comme dans d’autres villes européennes). Tout le monde va\r\ntravailler en tenue professionnelle. Dans l\'organisation pour laquelle je\r\ntravaille, les jeans sont acceptables et le code vestimentaire est\r\nofficiellement semi-décontracté. Cependant, ce n\'est pas comme les nombreux\r\nbureaux canadiens semi-décontractés où des gens portent des jeans, un t-shirt\r\nou un pull uni (parfois même un chandail à capuchon) avec une paire de\r\nchaussures pratiques. J\'ai même vu des chaussures de course sur certaines\r\nfemmes.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">À Bruxelles,\r\nsemi-décontracté pour les dames signifie: une jupe - une jupe courte dans la\r\nplupart des cas - des nylons ou des leggings de couleur foncée (généralement\r\nnoirs, bruns ou bleus), des talons hauts qui ont tendance à mesurer un à deux\r\npouces de haut avec un très épais talon pour la stabilité sur les pavés, un\r\nchemisier ou une chemise féminine souvent transparent ou moulant, une très\r\njolie veste coupée (style trench ou veste courte en cuir), des bijoux assortis\r\nà la tenue, et bien sûr une écharpe. Ici, les foulards sont pratiquement comme\r\nun sac à main. Vous ne quittez pas la maison sans foulard.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Vous devez\r\négalement accessoiriser. Personne ne fait les bases. La tenue de chaque femme\r\nest différente, même si elle fait ses achats dans le même magasin. Une fois,\r\nj\'ai vu une femme porter la même robe que moi dans une couleur différente, mais\r\ncomme elles accessoirisent tellement ici, il était difficile de dire que\r\nc\'était la même robe.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Même les\r\nfemmes plus âgées (40-60 ans) portent des jupes courtes (souvent plus courtes\r\nque la mienne et je suis dans la vingtaine), avec des bas nylon, des talons\r\nhauts et des cheveux parfaitement coiffés et beaucoup de maquillage. Plusieurs\r\nfois, je me suis retrouvé à marcher derrière une dame qui se retourne et j\'ai\r\nété choqué de voir qu\'elle a dans la cinquantaine. En général, les femmes\r\nd\'Europe occidentale ont un certain style sombre et semi-désordonné.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-size:16.0pt;line-height:115%\">Si vous voulez vous intégrer aux\r\nfilles d\'Europe occidentale:<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">1) Soyez\r\nmince.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">2) Portez\r\nune jupe courte avec des nylons foncés PARTOUT, au travail, à l\'épicerie, dans\r\nun patio, une fête, etc.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">3) Talons\r\nhauts robustes et non pointus<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">4) Portez un\r\nhaut de couleur foncée, qui peut être ample ou serré. Je décrirais certains des\r\ncombos chemise et pull comme «bâclés» d\'une certaine manière.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">5) Une\r\nécharpe - généralement pas une écharpe tricotée à moins qu\'elle ne fasse\r\nvraiment froid dehors.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">6) Une veste\r\nen cuir courte avec une fermeture éclair (pas de boutons). Les couleurs\r\nacceptables incluent: noir, brun foncé, orange-tan ou une couleur\r\npierre-marine. Une autre option serait un trench-coat au genou.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:16.0pt;line-height:115%\">Avis aux\r\nautres Canadiennes, avant de voyager en Europe de l\'Ouest, surtout si vous\r\nvoyagez avec votre petit ami, votre mari ou tout autre homme qui vous est cher,\r\nvous devez FAIRE DU SHOPPING et suivre cette liste. Si vous allez en Europe de\r\nl’Est… c’est une toute autre liste.<o:p></o:p></span></p>', '1619479668fashiontrendweb-1200x700.jpg', 'Mode', 86, 1, NULL, NULL, 'Mode', '2021-04-26 22:27:48'),
(29, 9, 'Bien s\'habiller en Belgique', '<div>Les Belges sont généralement beaucoup plus à la mode que les Américains. Très bien, j’admets que cela ne veut pas dire grand-chose. Les Américains sont parmi les personnes les moins à la mode du monde. (Suivi de près par les Néerlandais, les Australiens et les Britanniques.) Vous pouvez toujours repérer l\'Américain en Europe: jeans baggy, baskets, sweat-shirt et sac à dos. Toutes choses dans lesquelles aucun Belge de plus de 12 ans ne serait pris au dépourvu.</div><div><br></div><div>Une autre chose que j’ai remarquée, c’est que les Belges n’ont aucun problème à porter la même tenue deux jours de suite. Quand il rentre du travail, mon mari enlève ses vêtements de bureau, les raccroche et se change en jeans. Le lendemain, il porte à nouveau la même chemise et le même pantalon. Il a dit qu\'on lui avait appris à faire cela comme un enfant. Quand il est rentré de l\'école, il a raccroché ses vêtements d\'école et s\'est changé en vêtements de jeu.</div><div><br></div><div>Quand j\'étais enfant, porter la même tenue deux jours de suite était littéralement inconcevable. Nous avons eu une fille dans notre classe qui n\'a jamais, jamais porté deux fois la même tenue. (Je me suis toujours demandé ce qu\'elle faisait de ses vêtements après qu\'ils aient été portés une fois, pour ne plus jamais réapparaître sur sa personne.) Bien sûr, c\'est un exemple extrême mais mon camarade de classe adolescente a clairement atteint le but ultime: de nouveaux vêtements tous les jours. .</div><div><br></div><div>L\'approche flamande des vêtements est beaucoup plus pratique, sensée et économique. Pour autant que je sache, ils ont tendance à acheter moins de vêtements et à les porter plus souvent. L\'Américain typique a des placards remplis de vêtements, dont la plupart sont portés plusieurs fois puis oubliés - pour être remplacés la saison suivante par un tas de nouveaux vêtements.</div><div><br></div><div>Donc, d’une certaine manière, je suis content de ne pas avoir trouvé quoi que ce soit pour me tenter pendant les soldes. J\'essaie d\'acheter des vêtements à la flamande: occasionnellement et avec soin. Après tout, je n’ai pas à avoir une tenue différente chaque jour de la semaine. De plus, je peux porter la même robe à deux soirées différentes, même si certaines des mêmes personnes peuvent me voir les deux fois. Ici en Flandre, personne ne sera choqué.</div>', '1619479899princess-elisabeth-pic-z.jpg', 'Mode', 74, 1, NULL, NULL, 'Mode', '2021-04-26 22:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(9, 'Mode', 'mode');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(1, 'ACCESSOIRE', 'accessoire', 1, NULL, 0, NULL),
(2, 'BIJOUX', 'bijoux', 1, NULL, 0, NULL),
(3, 'CHAUSSURE', 'chaussure', 1, NULL, 0, NULL),
(4, 'WOMEN', 'women', 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 19, 'GILLET', 'gillet', 1),
(2, 19, 'BLAZER', 'blazer', 1),
(3, 19, 'VESTE LONG', 'veste-long', 1),
(4, 20, 'BLOUSE', 'blouse', 1),
(5, 20, 'CHEMISE', 'chemise', 1),
(6, 20, 'PULL', 'pull', 1),
(7, 20, 'T-SHIRT', 't-shirt', 1),
(8, 21, 'PANTALON', 'pantalon', 1),
(9, 21, 'DENIM JEANS', 'denim-jeans', 1),
(10, 21, 'SHORT', 'short', 1),
(11, 21, 'TROUSURE', 'trouser', 1),
(12, 21, 'COMBIPANTALON', 'combipantalon', 1),
(13, 21, 'COMBISHORT', 'combishort', 1),
(14, 21, 'BAS COLLANT', 'bas-collant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(1, 'order not recieved', 30, 30, 'hello i make an order', '2021-03-27 14:53:38', '2021-03-27 14:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 939, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 385, 0, NULL),
(6, 'browser', 'Windows 7', 415, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 355, 0, NULL),
(11, 'browser', 'Mac OS X', 504, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(6, 'EUR', '€', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(100, 106, '1568026836ErM5FJxg.jpg'),
(101, 106, '1568026836VLrxIk0u.jpg'),
(102, 106, '1568026836lgLuMV6p.jpg'),
(103, 106, '1568026836JBUTQX8v.jpg'),
(242, 396, 'hyvrHPzOgs.jpg'),
(244, 418, 'iIS7cQInP6.jpg'),
(245, 418, 'mp4FCrHNCn.jpg'),
(246, 418, '5heV5iJb7a.jpg'),
(247, 418, 'GadUK3qB1M.jpg'),
(248, 418, 'k4WRikQxUG.jpg'),
(249, 418, 'oFCxy83kG7.jpg'),
(250, 417, '9XiPaGizWC.jpg'),
(251, 417, '9Z23bkjxSs.jpg'),
(252, 417, 'e8fO0KhqdF.jpg'),
(253, 416, 'nRASzRAa2H.jpg'),
(254, 416, 'LxexjNzMnR.jpg'),
(256, 414, 'lX26pjBOw2.jpg'),
(257, 414, 'WPp48IhNiH.jpg'),
(258, 413, '162pJyQSli.jpg'),
(259, 413, 'RyBVoQ84Ov.jpg'),
(260, 431, 'hig9ejoQzX.jpg'),
(261, 430, 'JZGg9c5nOc.jpg'),
(262, 430, 'uhvpaIgarQ.jpg'),
(263, 429, '0MV60vZdB5.jpg'),
(264, 429, 'Ws9j6Fl3ho.jpg'),
(265, 428, 'RgIE4PHPin.jpg'),
(266, 427, 'ikTtVfy8Ag.jpg'),
(267, 426, '1gqjEKNhLk.jpg'),
(269, 424, 'hmuDodqAXq.jpg'),
(270, 424, 'C3HBC1SOju.jpg'),
(272, 411, 'fMWk9TR8lo.jpg'),
(273, 410, 'qwDZYwZGx7.jpg'),
(274, 410, 'hVXHSJAMbY.jpg'),
(275, 410, 'qxniaJCNdP.jpg'),
(276, 409, 'zfk9dGgimm.jpg'),
(279, 409, 'XSGJ6KS6uu.jpg'),
(281, 409, 'OOpihwUdzy.jpg'),
(284, 408, 'JhLIcvhXad.jpg'),
(285, 408, 'f8ibdVUOHz.jpg'),
(286, 408, '66FHRaUvIg.jpg'),
(287, 407, 'ctle0KPsEE.jpg'),
(289, 407, 'ohx0Tawgx2.jpg'),
(290, 406, 'DIvWn9vHSM.jpg'),
(291, 406, 'XJVjVsWvBQ.jpg'),
(292, 406, '8bQ12E3zq8.jpg'),
(293, 405, 'L0x6RqcUJg.jpg'),
(297, 402, 'dbJJIjKjDP.jpg'),
(298, 402, 'oAuRIm3xRH.jpg'),
(299, 401, 'lPxwgLjuI9.jpg'),
(300, 401, 'bCMuhYhmF4.jpg'),
(301, 400, 'VvHOGB7TbN.jpg'),
(303, 400, 'ZT8uIlMXaS.jpg'),
(304, 398, 'oMEmMx7Tyv.jpg'),
(305, 398, 'Dwr5R8U718.jpg'),
(308, 397, 'dX1vziqeO2.jpg'),
(309, 397, 'Z3e3DHNq0P.jpg'),
(310, 397, 'MoN8nqnNxY.jpg'),
(312, 397, 'xBiafsXEep.jpg'),
(313, 397, 'JYD4QbcbzD.jpg'),
(314, 397, 'Nkcp6MoBwg.jpg'),
(318, 396, 'ni2B2AkDAb.jpg'),
(321, 394, 'Nu9Jqv5q71.jpg'),
(322, 394, 'Mfbcf80YyK.jpg'),
(323, 394, '4sotdfJd6X.jpg'),
(324, 394, '87AzyK67Vz.jpg'),
(325, 394, 'kmb5Inu5nU.jpg'),
(326, 394, '0TISIMgbKp.jpg'),
(327, 394, 'YkJkuVfLry.jpg'),
(328, 393, '02CY2c5fYR.jpg'),
(329, 393, '4Lkdt7VOeK.jpg'),
(330, 393, 'nxi4BIc044.jpg'),
(331, 392, 'yEvihulvPI.jpg'),
(332, 392, 'FhJ4t3dwv7.jpg'),
(333, 392, 'ysOfdhqlXm.jpg'),
(334, 392, 'FNMIWXospF.jpg'),
(335, 392, 'HIQSGBtbEG.jpg'),
(336, 390, 'BpMfkaZqZg.jpg'),
(337, 390, 'osA2bQHkva.jpg'),
(338, 388, 'vml3nCG3ul.jpg'),
(339, 388, 'KvDrFCd3xz.jpg'),
(340, 389, 'ORHBtpGGgf.jpg'),
(341, 385, 'TxiXoQRdkx.jpg'),
(342, 384, 'UqjYDgkqMN.jpg'),
(343, 384, 'OSXf1t7LaK.jpg'),
(344, 383, '4pUWlp7w6T.jpg'),
(345, 382, 'FcjsG5ECRD.jpg'),
(346, 382, 'jRGZzQNl99.jpg'),
(347, 380, 'fkknECUaWp.jpg'),
(348, 380, 'OZqb5nsyhC.jpg'),
(349, 380, 'g6eO3JudrP.jpg'),
(350, 370, 'PEjCB3a5CW.jpg'),
(351, 370, 'ENHYyCpJfa.jpg'),
(352, 370, 'c7iLCP98zE.jpg'),
(353, 370, 'SOmD7SOuAK.jpg'),
(354, 369, 'HS6px9DmyM.jpg'),
(355, 369, 'P4yONacmYj.jpg'),
(356, 369, 'ZY6V6hdl5q.jpg'),
(357, 369, 'isGTAMwi5N.jpg'),
(358, 369, 'Ku3MMxqbLS.jpg'),
(359, 369, 'mdVtQPFvbf.jpg'),
(360, 368, 'qMZqmxpPLT.jpg'),
(361, 368, 's7Aan7KCvZ.jpg'),
(362, 368, 'DecVTPsXVt.jpg'),
(363, 368, 't6Za65biH5.jpg'),
(364, 368, 'sUoFVsoLW4.jpg'),
(365, 363, 'Ri5oyT90B3.jpg'),
(366, 363, 'RvbdMFQWNw.jpg'),
(367, 363, 'j98kmq3QPW.jpg'),
(368, 361, '6UZkfO7TtE.jpg'),
(369, 361, 'G0MSDBE1zq.jpg'),
(370, 359, '3GeIONGZOx.jpg'),
(371, 359, '1zw8lORCe1.jpg'),
(372, 359, '24CMWBzMDQ.jpg'),
(373, 359, 'RJSzI3FZx0.jpg'),
(374, 359, 'EfsYGU7QMw.jpg'),
(375, 359, 'XADVwq19Nx.jpg'),
(376, 359, 'wkH8jAF0Xe.jpg'),
(377, 359, 'XHksFLKSbf.jpg'),
(378, 359, 'omXkitp03q.jpg'),
(379, 342, 'mHcBixhVO1.jpg'),
(380, 334, 'FcP9tjaynD.jpg'),
(381, 337, 'JeEf3XpVMz.jpg'),
(382, 336, 'dJNuoJlOZ3.jpg'),
(383, 337, 'CJVOiTPD8t.jpg'),
(384, 335, 'ODdbGfUtWE.jpg'),
(385, 328, 'dPqPsBmxJd.jpg'),
(386, 503, 'YVoGFfzFGh.jpg'),
(387, 339, '1JH6k3WG6Z.jpg'),
(388, 339, 'May3DNFg1B.jpg'),
(389, 339, 'ehtxZfOWti.jpg'),
(390, 341, 'twGj99NVdv.jpg'),
(391, 340, 'LYuS3D1ySg.jpg'),
(392, 334, 'JwaByscfFp.jpg'),
(393, 334, 'pUe8jgEeK3.jpg'),
(394, 334, '2YnndkEb2U.jpg'),
(395, 516, 'ECyLoCmcRt.jpg'),
(396, 516, 'iQXIyz97Jr.jpg'),
(397, 516, 'bpmAisoMz6.jpg'),
(398, 516, 'FePmIjNjZu.jpg'),
(399, 515, 'mXDJYupDi3.jpg'),
(401, 504, 'UcRcPV9qKM.jpg'),
(402, 480, '2neNe4WiOo.jpg'),
(403, 480, 'SUsVWdwBcQ.jpg'),
(404, 480, 'xgpP2iGETc.jpg'),
(405, 474, 'DnLPWhuij0.jpg'),
(406, 415, '8sTDOluJHJ.jpg'),
(407, 450, 'Z4dWlLTUpH.jpg'),
(408, 381, 'KwmOngL5cP.jpg'),
(409, 547, '7fPyc8dNEb.jpg'),
(410, 546, '1h4AzpilIH.jpg'),
(411, 545, 'ZFI9OPX7jf.jpg'),
(412, 531, 'rcJN6nQnvJ.jpg'),
(413, 540, '9kMS5V2VT7.jpg'),
(414, 530, 'gBLBKJCqku.jpg'),
(415, 521, 'EuS7jHUGDz.jpg'),
(416, 521, 'qSXPUAWBCS.jpg'),
(417, 520, 'gm6rgiydKx.jpg'),
(418, 519, 'DbmfSaT2Vp.jpg'),
(419, 519, 'gOBijpJcCf.jpg'),
(420, 518, 'Fk5TsuNvRW.jpg'),
(421, 518, 'lG6LOWxQhM.jpg'),
(422, 518, 'ackzk4Dlyu.jpg'),
(423, 518, 'ycNWox5gd4.jpg'),
(424, 518, 'VsqUxXgc96.jpg'),
(425, 541, 'VSW1ls4bSC.jpg'),
(426, 520, 'dhCKycCqtL.jpg'),
(427, 530, 'RESwajaUuD.jpg'),
(428, 530, 'xhbcAQAoib.jpg'),
(429, 531, 'MrBcvyHGp7.jpg'),
(430, 540, 'Y8vyy3R1sI.jpg'),
(431, 545, 'k2235vMMOH.jpg'),
(432, 546, 'gF1wZZA5qE.jpg'),
(433, 547, '5I5ggBAgDq.jpg'),
(434, 547, 'wSa1WsQoqM.jpg'),
(435, 547, 'IRnV8f2bq8.jpg'),
(436, 547, 'zBgptABpz2.jpg'),
(437, 543, 'BgS6BYYXaL.jpg'),
(438, 543, 'ES6B9F0XBJ.jpg'),
(439, 543, 'OhAx0WdhYg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_check` tinyint(1) NOT NULL DEFAULT '0',
  `cod_check` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `add_cart` text COLLATE utf8mb4_unicode_ci,
  `out_stock` text COLLATE utf8mb4_unicode_ci,
  `add_wish` text COLLATE utf8mb4_unicode_ci,
  `already_wish` text COLLATE utf8mb4_unicode_ci,
  `wish_remove` text COLLATE utf8mb4_unicode_ci,
  `add_compare` text COLLATE utf8mb4_unicode_ci,
  `already_compare` text COLLATE utf8mb4_unicode_ci,
  `compare_remove` text COLLATE utf8mb4_unicode_ci,
  `color_change` text COLLATE utf8mb4_unicode_ci,
  `coupon_found` text COLLATE utf8mb4_unicode_ci,
  `no_coupon` text COLLATE utf8mb4_unicode_ci,
  `already_coupon` text COLLATE utf8mb4_unicode_ci,
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `already_cart` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `cod_text` text COLLATE utf8mb4_unicode_ci,
  `paypal_text` text COLLATE utf8mb4_unicode_ci,
  `stripe_text` text COLLATE utf8mb4_unicode_ci,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `is_paystack` tinyint(1) NOT NULL DEFAULT '0',
  `paystack_key` text COLLATE utf8mb4_unicode_ci,
  `paystack_email` text COLLATE utf8mb4_unicode_ci,
  `paystack_text` text COLLATE utf8mb4_unicode_ci,
  `wholesell` int(191) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_title` text COLLATE utf8mb4_unicode_ci,
  `popup_text` text COLLATE utf8mb4_unicode_ci,
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT '0',
  `paypal_business` text COLLATE utf8mb4_unicode_ci,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci,
  `paytm_website` text COLLATE utf8mb4_unicode_ci,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci,
  `is_paytm` int(11) NOT NULL DEFAULT '1',
  `paytm_text` text COLLATE utf8mb4_unicode_ci,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT '0',
  `molly_key` text COLLATE utf8mb4_unicode_ci,
  `molly_text` text COLLATE utf8mb4_unicode_ci,
  `is_razorpay` int(11) NOT NULL DEFAULT '1',
  `razorpay_key` text COLLATE utf8mb4_unicode_ci,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `viva_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viva_merchant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viva_public` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viva_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viva_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viva_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viva_env` enum('live','production') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'live',
  `viva_check` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `viva_key`, `viva_merchant`, `viva_public`, `viva_client`, `viva_client_secret`, `viva_text`, `viva_env`, `viva_check`) VALUES
(1, '16137231191591262403_image001.png', '1571567283favicon.png', 'Macao Fashion', 'smtp', '0123 456789', '00 32 489 51 41 18\r\n<br />\r\ninfo@macaofashion.be\r\n<br />\r\nMacao cora lalouviere\r\n<br />\r\n00 32 64 67 73 58\r\n<br />\r\nRue franco belge 228,7100,lalouvier\r\n<br />\r\nMacao shopping douaire\r\n<br />\r\n010 454225\r\n<br />\r\nAvenue de douaire\r\n<br />\r\n1340,Ottignies-Louvain-la-Neuve\r\n<br />\r\nMacao belle lle liege\r\n<br />\r\n+32 485 15 25 64\r\n<br />\r\nQuai des Vennes 1,4020,Liège\r\n<br />', 'COPYRIGHT © 2021. All Rights Reserved By <a href=\"https://arcocia.tech\" title=\"Arcocia\" target=\"_blank\">Arcocia </a>', '#1175e5', '1564224328loading3.gif', '1564224329loading3.gif', 1, '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/605cf843067c2605c0bc54ec/1f1liji49\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 0, 0, 0, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 0, 0, 0, 5, 'macaofashion.be', '465', 'info@macaofashion.be', 'Pakistan2900@', 'info@macaofashion.be', 'Macao Fashion', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 0, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 0, 0, 1, 0, 1, 0, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#143250', '#02020c', 1, '#ff5500', '#02020c', 1, 1, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 1, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1584934329adv-banner.jpg', '16137232681591262403_image001.png', '1567655174profile.jpg', '#666666', 1, 1, 0, 'shaon143-facilitator-1@gmail.com', '16137231161591262403_image001.png', 'SSL', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'sandbox', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', '79NmkEMw9LO2kL31x9Q5rU9H6n3YJF', 'd6bed000-a78b-4183-a321-806c216c161f', 'NzF2wMMAs3V+EwZUdoXsuxm5nxUagzQHZxO7CBcCbI0=', 'y8gmdn28cdqsd02mnitmqr90hwt1dzruav685fhvkewg3.apps.vivapayments.com', 'rnVLx2cQia1J77yEd8C3E901nV128O', 'Pay via Card', 'live', '1');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 0, 'English', '1579926860LzpDa1Y7.json'),
(3, 1, 'FR', 'zJ2Cuizb0m.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'hello i make an order', 30, NULL, '2021-03-27 14:53:38', '2021-03-27 14:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 30, NULL, NULL, NULL, 1, '2021-02-06 18:01:14', '2021-03-08 18:13:02'),
(2, 45, NULL, NULL, NULL, NULL, 1, '2021-03-01 16:55:56', '2021-03-08 18:12:44'),
(3, 46, NULL, NULL, NULL, NULL, 1, '2021-03-01 17:02:51', '2021-03-08 18:12:44'),
(4, 46, NULL, NULL, NULL, NULL, 1, '2021-03-01 17:04:13', '2021-03-08 18:12:44'),
(5, 54, NULL, NULL, NULL, NULL, 1, '2021-03-10 13:24:31', '2021-03-18 20:20:33'),
(6, NULL, 32, NULL, NULL, NULL, 0, '2021-03-27 17:23:28', '2021-03-27 17:23:28'),
(7, NULL, 32, NULL, NULL, NULL, 0, '2021-03-27 17:23:33', '2021-03-27 17:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_order_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `payment_order_id`, `transaction_id`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(22, NULL, 'BZh91AY&SY\n\"5.\0ß@\0Pø+üD¿ïÿúPé<5#¡Ðè!$<¦ÐôÑõ@ÓÔ\Z4\0)¤Ú\0\0\0\0Ð\0I©D\Z\0\0h4\0Ð`\0&\00\0\0\"@@êi´¤4\'z Ð\0¦Ôp$@©	-¢½chq¯ÜÙ²$Sè(ö°ãQGAÍ¸T:¥Ój@Â®üêlërrT4!yÂ!5Úü)µ*«{i\"XËuf*¸Ó½\"Làµ°°BÑ$a)\0¤/è31\0L\Zè%B`_Aá ÌKÆ\nPþ\n$¿2ä* b.\r\\BIË.ÄY640t­kJ¹f&ADÖE\0±Z\"Ô¼¼K?qÌ¸ h×áy$0`T8\nê :ÕBR¡\0ªCË¥ÊÑl.ï)_BEÚ¤©9@ Edxm(ÁN£\r0¥1&,qS|ÉR.ÅC$1\Z\Zøà-M¹$@[æ5Ö$#$eB*3»TåP¡`Æ¨¢îIIï§iO²|Â`)²W.Z\Z¢,¶Qr)E@ÚKE#Np0,`DD¶¤\n@RÉ¡õ`4RIzâ(¤ËÒ£²3CÕ:SMpOoR2`SéXÐ¶oneiÑÉ&JPµG]jµoZÛ,P­Sdly{¶wÙÚ²<§>éx^v.=KVq)#q?YÚ@Ó&ÆPLQW`ð1Y¥OK,¢03 \ZÈ\ZÁÉpsfVÝÑº§YEöí²&\0Èe3ÔÌô845U#cÍyÐ`ÀÈt8vüÇ±ÃOÌ>ÓÚ40+Æi0,TÈÐâaP~nGeñhlZ¢Ö¹Ó#\\óP30¸Ñ¸ù£æýÃ%Ë´ÅùtÇR&Ane¶jbµÏ@è§QØdTi\nD%¡	b3¼dXÔzÔx=èN¨ROo&g,¶¬¡£Záä|À@û=âÏe_êw¤%½ÎhcHë7=TêÂ\ZÂäÙ)µ¥1¤XK%ÐlêæZNõf `W§inlahÄÈ¨k:eh$K%ØK¡uV\n$;c\nÁ½ÂÊ:P ¡$\nÂù+Qòf\Zô¿O&fzÝÿö,j4Ë\raå¬o¡Ð¢Pp6G¡±¸ØLàc6è«ëÄêCø´¤)IFÎ$á¥pë ÕÈ¹Ï?vÕÝ_à1ÆbU¡¡b´l;JéÒN´·¼­N  dÑÈÛÕ!G\0ÊC¹¹¦±{¦Ñ@Æ@Ubc.qBeÕÂË!òE	¬Zø#æÅ~<ze¡ÜÃ¾IQQEÖÈd¾cÛ°B°6¹4Abf¿¶ùrì1bÇ  R\rOñw$S	\0¢#Rà', 'Viva Payment', 'shipto', 'Azampur', '1', 31.9, '123', NULL, 'RpkzR5imZE', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Afrasiyab Haider', 'Pakistan', '03357997550', 'Shadman colony, rehman shaheed road', 'Gujrat', '50700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-12 14:24:17', '2021-02-12 14:24:17', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(23, NULL, 'BZh91AY&SYÙÎò\0ë_@\0Pø+ö¿ïÿúPÛ<Llë¸\nA	JH444i Ä4ÈÄÑ\r\0	OÕ=@\r\0\0\0ié\0Ñ£ 4\Z\0\0\Z\0\0s\0\0\0\0\0\0\0\0$HÑ\04å\0ÄÈjP©p©â\Z¯°õ§ÙÉG¹éé|Î,^ êaDéúK1Ð(è9®iT©cRÂ·%4ëX8L4!WÍ6\njUU=ä8Z]\r>g¯ÈâYPùo±ÉgcUÊèh!ÔI3<.ðäà{ÉÅ0^\0Y§h\'èHQ ¨C\ZAª\rB\ZYÒðY ³TL¸ÂA¡µæó(4 \rb+6ÁUG Á6°`æO9æ Ù773Ð(¢W5	­Á4rÁU	·Í\rÌ(DUYw®©GpØ±)P.ÞãÔaðÐ±-fÄA7,dPLK!Jâv¢Ö\Z.¦É³NôX·,´J{¶©°d\"æQÜ\"qs\"=:E$%¥TLxÓd\\o¸Ü#\"\"!uryÓbFUA³EæBC$l¥ð\\$R Âµ\"TA	$f3\nÄhÁ\\ >c3K5É\"Ýø­8âïRw|d¥²¬dZ6§.rèæIJ*:ç0óÁ´çWB¢cREÆÚíõNj¢ÞU%\"<x4NhB¤ü®ÄBÄw,`4lï\'È]%ûâ|U$PU@«gb,ØGírwHtaÖhÈvgÙ¤\\fmRG3ÍyÉUBá¼ÌrküÏ3Äæâæ±ßDyÖXü·U\"NâæFfã,ÂHGír2Ö#Ê¡±mEîj{Í¥µj\nC$5à4w¢>ÏÚ2»Â0ãÒ¸©0U ½\"åµ\"iÄøñ¸äfHÓ3P©R£*l!,{\"çìÀx¼äÏu-§3éý|JísìgÌÅÛjí\náK\r\0ó÷Fÿ)üp(»æÂB)Hp¸Ü2îß1Û ¢³Ö`AêÌ(QU¬±¼ÝèQp\nlBâ´7s/;MèÍà±-§RüØÂñÂdX\n5ªÂ*ZPIJÍr)ÅÉk+©$#e%U`ufâÃ\nR¸¨8À2[ÆcPoÐ[ÿ-0ÔÄíõ)êYXi>Æ&CY~#¶Ã©)A´ÑSB°ØT÷c(«F`uFrÚ;dm8Wd!ø´T¢r\nPÒ¸p Üè\\å³KvgL<ò14oÞÈHcUDa¢! !\"-D\Z°Ð±¼Ôu×Ò<ê)^âÖ610Ê¢\nMÐd\Zº8L<¦¼isHÉkP1YSIS]f>(¡{£&¼èÅÁZç¬ì9¶*0]Êz§\"\0a\nàÚâÑeÈ\ZµWÔeuýPþ\nrï# H@ÿ¹\"(Hlçy	\0', 'Paypal', 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'uZBio94PU5', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Afrasiyab Haider', 'Pakistan', '03357997550', 'Shadman colony, rehman shaheed road', 'Gujrat', '50700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-12 15:24:23', '2021-02-12 15:24:23', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(24, NULL, 'BZh91AY&SYðr:\0íß@\0Pø+ö¿ïÿúPÛÝhÚ`\nA\0\0\0\0\0\0\0\0h51 \0\Z\0\0\0\0ÚOA©¡§¥PÓL=\0\0\0\0\0\0\0\0$DA¤ièm&&	êhJ\n\naÊîÂHy%\rÍ»p0¼\"ïø&îAüIûRZ½ ÝK±\'²:ÍX,PMf%.l×øQUV\Z|	\0å¤«.H<Þ°\'ÇY;VyI)£±@t\nÇiyq@¸;0¶ð´¼Ôa#ÔV@æC\'H+\'R@K4ÁJaKóBò V²!¡sx2bà3J À`í{Þ¬¨o\0`Ø­[^ÅB TdÚÁ¬ÍZ¹¡ó4XAV ³Å(±ýt Ìh¶\'-H*!°£¤Íw,(hC\"Ój=@Ê&¢µ:V93 ì$$â`©3$¦EBªÕ2UæÀ¬ÑÂ\0jqaHHEõM1@Bd5ÝÀ1jô]Âð,°\nRL×K¹+¼l	\0	ÑD+fÈØ6A\r\r©PU6A6eÔ,DDB¢% \"ä2ã¦S, @yek6j\"N<°kjå½\nò+|ªBÀí82Í/&-©*VÅfiÖ÷/«|TÀ*1èÈA©ñ.0CÈ«X}MùKðï5:ÏS¨©ðTú|m5>öÍÄ®¹=Ã¡ÈñÁGÇ±³V6ø ÿO#ZwÞÙì ÜñESÜ|õ>M\rUHØõ¯]J).SR`p=ÅÃ\"Q#4*{xQ#qbæ,Â¤%ð¢3ÖCÎ¡±jj`9Tó%·ï¨o2ÀÑÐ|Ñö~#\'B1çµ2U(a2¤ýJl.6Õ{¬3èq;M\r3AI$§y	f3Äè¹¨÷Ôy>úp¦àöæ|ÿÑ¯yð(yÚÛÀß±·%á<á7.@ÝÜ938o8\ZI[±$\"CK³F{\ZÓaDÏmITk<¯[¢>ä®À]« Ù¯qzñ:3îÎ@d[§RýÌaxñ37n¸¨P.ÐD¢æOk©J¥H$Ä4©EH©*Ã\n¸¤p/f¹>ÆàãÐ\\»Zm0Üáö\'ðYØi2\ZËÛÊ;÷\n¥d}Mñ°¡ÒgQF\0èWÛ3­8BäÐf2°¦TeÈPx\r+a®KÚxínömB> Æ&_\n$±)@(FJ		44!°èXän:ïÚ^Äº«ñ-c##DAB!tÖÃvÎ©¿)¹&»¢à c .´4è©C%]nh©@¾h×¡v,¸õt3ÝÀðàóÊUUQ²#¸¸ùs ®\r®Ö4.@Õ¨¾¤+Ñð¡>d	\0¤	GÜ]ÉáBCÁÈtè', NULL, 'shipto', 'Azampur', '1', 29.9, NULL, NULL, 'cVA6m6E0qS', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Afrasiyab Haider', 'Pakistan', '03357997550', 'Shadman colony, rehman shaheed road', 'Gujrat', '50700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-13 12:15:46', '2021-02-13 12:15:46', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(25, NULL, 'BZh91AY&SYCß:²\0ß@\0Pø+üD¿ïÿúPéx8p4:I!4¨#OÔOSÔ\Z\0=OPhzOP\0J\0H¦j\04\0\0\0\0&¥5A h£ \0\0Ð@9L\0\0À\0L\0\'©¦ÒzÐQ¦C@ÂHx=:X\nä}y¡ÅþæÍ) P0ê1Dûüµú\n:mÂ¡Õ.äRwû)³­ÉÉPÐçÔKkð¦Ôª¬qç9ä²8KYûÎ²[¤\\[¹jQ&J	ëY\nÊÄ 7EÌÄ»\ròâzÆ2yò$%`¼O)\0d2YAJÑbÁDñ\\QEÁ«PÉ9aØ1Æ­iDNà2¬b´E©xRò,@f0þG2âM l;ÚWÚÅ TÑ äÄu¬ÕZ&\r¢\'*IX°u	9Å0DU\\wÎ\"ª\0¤ËÌAåb	âZ%¶(£8rp4HÂ8Ä(p±ÆIMðc%H»`Ähkãµ6æ)o×X¨ÎîSB>:E\Z¢VLK¸-%\'¼¤=§Á.!X!urc©acTSeE(¨IaHÓd-R )dÇL¿z¯é$½ðReéQYÃ¡Çj)¦¸\'7©0\r©ô¬h[7·2´èäD%(Z£®µZÉ7­m(VÄ)²6<½Û;ìÅíY	\nCÅÁqØ<°õ, `µ¨ñI¹óï;HÒÙJpÊ*Ê<ÒLÕ´A±©ZÄÍmQZñï°A%AüÏÜï5ã»gàA¼Ôç÷=LÏ¡Ä¡ª©åî¡5\"Áèpì\r	û±ÃO$~\' 07&h`WÒ6`X©¡ÄÃ0¡üàÝËã\0ÐØµE¬s=G¹ç% faq£qóGô.Ò/åÒxH¹*ØXm©ÖW>ÐùGaQ¦d)$80%ÏEcQè3Qà÷ xcÇ{Aíò2qÒå¢²S*håU¸yIHl³Ô,öUöSÀm!-îsC\ZD ðX¹ßµN©ì(¡Þ\\» %6±ÂÔ²&3êIu¸!r]Î®e©ÄèÏ«5½;KscDn&E@YÔS+D\"Y.Â\\;ª°T(@ã¶0¡ÌÑ),,©#¥\n\nb@°/bµfa¯Aköòihi¨ßñ.õFs¬=ºÆú\n%d}\r\rÆÂd/(´dD\\í\\G\\N\'TøB± Äe!JJ0Äd&q$w\r+Y®EÎyúv®ìÚþ´|¼IPAÆ%Q\n\n\r¤44aÚTÔÌßNu¥¸¨½Ejp!`\\c&&D.Þ¨1ú8RÍÍ0Ý4V2«s.®Y(L-db×­lWà3Ë¡ZÁÌ<$]læKÌ{vV×&2,@Ò­§ðÐ1mÂ}8¡\nA©þ.äp¡ ¾ud', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'SupWG206Y0', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-13 15:26:26', '2021-02-13 15:26:26', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(26, NULL, 'BZh91AY&SY¶\"}L\0ë_@\0Pø+ö¿ïÿúPÛ<S:î\0h4¨ôCCFCLMÐ	@$õ4\0\0\0\0iê\0M 4\Z\0\0\Z2440\0\0\0\0\0\0\0D3BPÔÈP©`©ê¯À÷¦¹ÌÙ®KSê( ô°ãæuJ8E)(»ä¦k	*ù¢1ÏáMJª±ÏÛI#ª2ÈÔgõ;<ÍåT]µ:U:¦¤¬O31BH¹S#Àbí=BA,às!ñb$*`¡h\nR\Z5« «AV¤a¡­©jYUc`Ø«JÚH$9ÚÁ¥7O1å Úq8èQ+×bÍ°m¼°¹ ÔP¡a&Âe+l,r2.+4oqÈÁé0øhX³d!q,¡1$AC¤ÄT[,ÔV£E*4ñ ZÅ¹e¤@SÝµM¤#!0îáì!Ò(ÌY!-* ¤ÂcÄEÂçdB@$BD,®´ÚHÊ¢¢H6´\\d(¤1FÔ.BÁ\"´P	$TLë©o úe)*µª#^Û+L0vM¥-WÔ±¼«Ó9ts$%BsyÍàÜçWB¢cREÆÝÛ;êÔD$)¼«(JD(xði.ÑIù]îXÀ)4hØG¸X9ÎýºKõ©Î|VU$PU@«g`-m\'Ùì`³lR\Z²õ­!§Ðk\ZÕàz/JR,LCOæz\'\06345ý	#Ðf§å²i8Àr\nÚhÄvXÅ­°oò25Ñ¢.J@Ðaq£ø£Ý÷W2/ßÆx*S ´2Å[\rµAS¸ºÀùñ°ê2(4ÌÈ&LàÆZKä¢Æáê¸x<¨eºzUÏöþÆ¾Ö¸t2à`ë­tDÎÐ`@øyFj¿qðw¤%Òç1¤BõÁÎº\'ÄQ#IØ\\¯ %6±ÂÔ²&3àÜÔ½f6làZÌÙðÍ °+\"ÜÂÑÄÈ¨iÂD  `x#iÖª¸îJR`ÀÃÖÂ4&§6UL&!À¾aÚ0÷4ÜÅ·ñÞÓ\ri¨=u¬j4Éæ#Xþ£¦£D Öfc2 ØL÷áDM£ 9\"ç5¬uÄÖn¨Cñh1HR1\n±¥`ÜA±È±ÕË:ôgø#ÔÄÐ1¿&B@Â¨\n#%		j `Ð\reM¦0nK¨»ÊÔÔBÀ¸ÆMLYìÑÅÀ2îr4á+ºi­*2«p.®Yz(L-db×>¯¨gfi:Ý	QQE×G_ãÔ@!X[Ú È±Uö=o$?<|HÈP%?âîH§\nÄO©', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'u05ygf75A7', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 12:42:30', '2021-02-14 12:42:30', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(27, NULL, 'BZh91AY&SYÅðU\0ð_@ Pø+ö¿ïÿúPÙíÆÎÊ\n:\nIJ~S*g¨êj=F@Põ\r\0jjj\0\0\0\0\0$\n§©\ZhÈ \04ò\rÌ\0\00\0\0\0\0HI¦a4d&FêjXT¸©Ætmü½:}RÝ&ýù4\\ÁGq£§ì[Rö(ÞBÉc¯ØÍífbô1çäÌIÚÊÎ&¬Ç}\'5érmÁÃ½X|2U@7NFùÇXâf&éà+å:ÆNi\0òt6æØÀ|ç-\r¨[mÞ`²dØÒB `#b4©mQcf\Z `\"@Ö59^B\r æ«Õ±. KÚ×ö²fkSR	_ÀÀ ÉåI¬j\\Áä{ä\rÙK\Z\Z(XI°YJÛËÆÂâ³@2÷çäjTÑTr\r\nMRÒ¬ï4*jA¡ rÁ\"\n$$B¢àf¢°Q%a(«Ø)jËJ;BÍ2¶GEAæ(ÌÀñY¤(Èö0´ÒRÚ¹§<¯/Ò6	\0	µmÝMÉTTIía(¤9#t2D,$ Â½\"TBEIbã8¶WY @~ãJJ­nµ\"fíù\nÓvÃ2³z!Ç\n)Ec]ÐÐ\Z÷w&¦1æÅ¸ì)x^¢c2­KÙÄiYï¸.-Òz_7ÔËù¶=ö{	.3	üG3yáro\nÿo>n­T`Ú^$j&¦?ôýeÚ?Ñ³ñ Øí53ây2f!ÕEê«j1 ÊLF+G9@795úG¸fOËtÒ(r70fn1P| îFeñ\0ÐØµE¬=&f¥vlP6\\hî$}Év÷x¿g)ä¨]LÒ=¥¶j§uó?ãqÚfPi L1Ám!,ñ$]8hÎÉçC=çÂ\r\Zèmø µh¥è_q«/9 \ZD° |læ«ë<Ï´ºÜâ4Aâ²3©èï©º|4=È;ó	SkZDÆy\\[P»1³wÔÔæÏ6o^}qcDw+ Z<9æp\\¿Ý-Ü(ðåÓ%(MN6n$ª0M+\nC|xÃìl\rüÅ¿ßØÓ\ri¨~¤»Ö*4Éc#XüøG]§BA©ÍS«mÈ^ÃQhÌ¹ÜµpjpØC_{K)\nRQB¼iX8nr,vçéç^¬åR>Æ&m$±*¢0Qm	C@Á eMæÃ¦¡àAQx©´q ¹î³e!Üèi¬^é¤ah c *°b\\bË«cìE	¬5êÍ«ííæePaÄ<!**(ºäâKÌ|»H+}(3,@Õf¾¤/Âsøþ\nÜÜèÈP%?ñw$S	¬_P', NULL, 'shipto', 'Azampur', '6', 95.7, NULL, NULL, 'Jfvb6x4YXd', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 12:43:37', '2021-02-14 12:43:37', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(28, NULL, 'BZh91AY&SYÅðU\0ð_@ Pø+ö¿ïÿúPÙíÆÎÊ\n:\nIJ~S*g¨êj=F@Põ\r\0jjj\0\0\0\0\0$\n§©\ZhÈ \04ò\rÌ\0\00\0\0\0\0HI¦a4d&FêjXT¸©Ætmü½:}RÝ&ýù4\\ÁGq£§ì[Rö(ÞBÉc¯ØÍífbô1çäÌIÚÊÎ&¬Ç}\'5érmÁÃ½X|2U@7NFùÇXâf&éà+å:ÆNi\0òt6æØÀ|ç-\r¨[mÞ`²dØÒB `#b4©mQcf\Z `\"@Ö59^B\r æ«Õ±. KÚ×ö²fkSR	_ÀÀ ÉåI¬j\\Áä{ä\rÙK\Z\Z(XI°YJÛËÆÂâ³@2÷çäjTÑTr\r\nMRÒ¬ï4*jA¡ rÁ\"\n$$B¢àf¢°Q%a(«Ø)jËJ;BÍ2¶GEAæ(ÌÀñY¤(Èö0´ÒRÚ¹§<¯/Ò6	\0	µmÝMÉTTIía(¤9#t2D,$ Â½\"TBEIbã8¶WY @~ãJJ­nµ\"fíù\nÓvÃ2³z!Ç\n)Ec]ÐÐ\Z÷w&¦1æÅ¸ì)x^¢c2­KÙÄiYï¸.-Òz_7ÔËù¶=ö{	.3	üG3yáro\nÿo>n­T`Ú^$j&¦?ôýeÚ?Ñ³ñ Øí53ây2f!ÕEê«j1 ÊLF+G9@795úG¸fOËtÒ(r70fn1P| îFeñ\0ÐØµE¬=&f¥vlP6\\hî$}Év÷x¿g)ä¨]LÒ=¥¶j§uó?ãqÚfPi L1Ám!,ñ$]8hÎÉçC=çÂ\r\Zèmø µh¥è_q«/9 \ZD° |læ«ë<Ï´ºÜâ4Aâ²3©èï©º|4=È;ó	SkZDÆy\\[P»1³wÔÔæÏ6o^}qcDw+ Z<9æp\\¿Ý-Ü(ðåÓ%(MN6n$ª0M+\nC|xÃìl\rüÅ¿ßØÓ\ri¨~¤»Ö*4Éc#XüøG]§BA©ÍS«mÈ^ÃQhÌ¹ÜµpjpØC_{K)\nRQB¼iX8nr,vçéç^¬åR>Æ&m$±*¢0Qm	C@Á eMæÃ¦¡àAQx©´q ¹î³e!Üèi¬^é¤ah c *°b\\bË«cìE	¬5êÍ«ííæePaÄ<!**(ºäâKÌ|»H+}(3,@Õf¾¤/Âsøþ\nÜÜèÈP%?ñw$S	¬_P', NULL, 'shipto', 'Azampur', '6', 95.7, NULL, NULL, 'U5782nr8i9', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Afrasiyab Haider', 'Pakistan', '03367788990', 'Dev dev dev', 'Unknown', '50705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 12:44:21', '2021-02-14 12:44:21', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(29, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'uYWTw5uDpL', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 12:51:42', '2021-02-14 12:51:42', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(30, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'kEs2MAt8xe', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 12:54:40', '2021-02-14 12:54:40', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(31, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'DiBRhoMUKy', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 12:55:51', '2021-02-14 12:55:51', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(32, NULL, 'BZh91AY&SYp¾j\0ëß@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·*Ô2¥Ó$0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥@©1 (R!¢\"®-Z\nµ$Ë(\rmKR5àPîÌÛvý!¢Ø i\n-µ­´¾\'3%¡¡ Ãê0!0xZkÉ+h­åÌÍ\nl!ÖR¶fEÅfS1ò:I= ä¢£<´,Sa¹G0Æã$aME8É\"uQKj¡P´Ef®sa\"ùuIÈFT\"£;¸ENUø\néjZ!1.à´nñ<Ã¡\ZB )\nCYæäÇb0É(vssFnvK-á!¡%$Û2)RáàÎ£\nð Ð(¤ËÒ£Ò38áÔ©Öà$Þ¤dÁ\r©ô¬h[7·2´èäD!J¨ë­CÖ²Më[eVÄ8ÆÔFD¾c;ínmÙ	\nyÏ\rA¨Äsö43ÒGK¬ÐÄÙ3goPdúfã¾äÞ*ÿ6n<ÝZ¨Á´¼H0 ÐEDo³Ì±÷FÖÌb@ÎÓE@Àï6Z~RX¤Bó§&\r²¤U¨Äç/Òc¡Í££ºØ¤HÑ\0-&()-(¤$A4£Ù`<`\ZµÏq¡\\óP30¸ÑØ>Hö~ñëì\"ñ~§¡u2Hù*ØXmª\nòëÌÿ§YA¦d.a2dÇ¬TrN¬bá³52)º9Áö°¼õù\ZýIíqèeÄÁ×EÒ	;ÂV,\Zãä,õUøcÀm!.8¡\"x,èwvÔÛ>B$ä\nAÇQeFi¥2\"1êàzÐ·fÞ%©¡«>ÌÜºó-Å-Ø&E@YÐ(<ºuÇë,wi-$±\r¨MN6m$ª0M+\nCy+pÃØÌ7j-ß>\r0Í\r2õ§©.ÕF#ØÀÄk¦øé°æQ(45G©©Ðl&Bûp¢&ÑÑs±h:âhoÈCø4¤)IFhÒ°o ÚäXëËÝ­z3üQèbhß!K3a1	\Z°Ô©¸ÌçÕÊMésZ@AÉ¢	]°bòp¤;Î¬%b÷M#Ô c *±1¡2êáeø\"ÂÖE¹&JzÆ:ð3SQ¾$ëB!xùY\00`mph\"Ä\rVkÔdó;ù¡z|~h(Çþ.äp¡ á|Õ', NULL, 'shipto', 'Azampur', '11', 31.9, NULL, NULL, 'LuUrBfQ62d', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-14 13:53:56', '2021-02-14 13:53:56', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(33, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'lvJTA79rkP', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-17 14:51:28', '2021-02-17 14:51:28', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(34, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'rPsUQdlBNV', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-17 14:53:01', '2021-02-17 14:53:01', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(35, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'eSU4AtshRn', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-17 14:53:13', '2021-02-17 14:53:13', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(36, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'gq9IiOVpNe', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-17 14:53:36', '2021-02-17 14:53:36', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(37, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, 'yPFL0J1cYB', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-17 14:53:51', '2021-02-17 14:53:51', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(38, NULL, 'BZh91AY&SYç³ÿ\0ë_@\0Pø+ö¿ïÿúPÛ<4ÃÝJÐtuh©äÉ=G¦¦ê\ZhÐ\0=A(\"§¨\0h\0\0\Z4\0¤F\0Ð\0\0\Z\09\0\0\0\0\0\0\0$Ú	MÉ¤Ñ£G©ê4É0TÐ©ôª+÷j~Èù¦Ç/.óln!Õ:cïôÖcê(è9·-Cª]1É¤0¢ïÒ¦Î·\'%CB±	¨×áM©UXãÙJ\"Ó:Adl-ûß#yU#ÓmN*¦¤¬OÈBQ$\\©â1w@ñ<	`/Æ@Ká>¥I\0TÁBÐ)PÊ¹Z\n´jIP\Z:Ú¥j1À ¡Ý¶íúCE°@Ò[k[i|O\"fKCBAÔ`C`ð´Ö:1?WÑ[Ë\n,$ØC¬¥mÌÍ\0¦cätzAÉEFyhX¦ÃraÇ8HÂ1&,qDê¢ÕB¡iÍ\\,çÃ E-ó\Zë¨EFwpªð!Ò,Õ´Bb]Ái)>$ÝâyB4HR\ZÏ7&;ÙIC³æ1Üì[ÂCBJH1¶\"dR¥7ÃÁ\'FàA QI¥F9¤g8qÃ©S­-Á<I½HÉSéXÐ¶oneiÑÉ&B-Q×Z­dÖ¶Ë­q¨|ÆwÚÜÚ²ó\ZQçìi\"f\'5¤Y?¡²fÎ:Þ È\'ôÍÇ}É¼UþlÜyºµQh-x`A  ßgcî­Ä¦Þl(´ü*¤±Hæ+NLe#H«QÎ^¤ÆCF#Gu±H¢\0ZLPRZQHH< iF#²ÀxÀ46-k	ã#B¹ç% faq£°|ìýã%×ØEâü9OBêdò,U°°ÛT=åÖÿN³\"LÈ\\ÂdÉY¨å\rXÅÃfjdStsíayëò5ú;ÚãÐË®¤&w¬X5ÇÈYê«ñ>ÇÚB].qC\ZD ðXÐîí©¶|*8IÈ¢ÊÓJdDc!ÕÀõ¡n,Í¼KSCV}¸uæ[Z#°L&³¡*P$x#tëÖYîÒZI#;c\nPlÚITa0VóVá±nÔ[¾|\Za\ZeêOR]«\Z2G±Ö?MñÓaÌ¢PhjSR ØL÷áDM£ 9¢çbÐuÄÐß=ðh1HR1\nÑ¥`ÞAµÈ±×»Zôg+ø£ÐÄÐ1¿&B f3\0Âb	\n)$4a©SqÏ«\"Òæ*/µ60.1D\"»`Ä3äàHw9XJÅîF+©@Æ@Ubc.1BeÕÂË!ðE	¬s#&õuàf¦£|/H%%%	ÖBñò.²\0a\nÀÚàÑE\Z¬×¨ÉæwóBõ8øüÐPü]ÉáBCÏþ,', NULL, 'shipto', 'Azampur', '1', 31.9, NULL, NULL, '2apCjg85at', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-02-17 14:54:08', '2021-02-17 14:54:08', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(39, NULL, 'BZh91AY&SYZI{\0í_@\0Pø+ö¿ïÿúPÛ<Õ´3c²49%%?I=CM\0Ð\r\0=C@\0\0%\0$PÑ\0\r\0\0¦@MHÉ¦ÐFÑL¦ÐÌ\0\0\0\0\0\0\0\0  Í&<DhÑ£@6IC8nÂIÞN¸yÛ\n4j4éÄÈ\\ÀGTû\n ÇWÔ{XqGAÍ¸êRé(µ!~6u¹8ª\Z¼ãMD¶¿\nmJªÇ7i(Lé´·Ðï÷\n©=Õ8¬ªq2±>g1\rDr¦GÄ3æ3Úx`/#Î@	Ioµi*@MyP\\X¨T¤£`³AV¤a¡­©jQ\ZP\nL*¯6a¸!\ríkÚt7NÀ×@ 2\Z¦Ó$&ÍÀÃc¤|ÑkËJ,$ØC¬¥mÍ\0ÌÇÈé$õ\0ä¢£Ë½a¹\' Æã$aM1&8Xã$ÖE-ªBÒ)¸X-Î9$@[æ5Ö$#!Pîá9T#à(C¤X1ª%hÄ»ÒR|iº©¨!°«44T¸±ª)ò\"T¬¼\ZHQAÐC±i!´÷\Za\Z1%t Å&^äáÍLf,AËÌMêFLÚßJÆ¬ÞÜËÓ£M(b¦´5k ß5¶X¥lCmDdHæ3¾ÖæÐ=§ êà{QâK£Iäãj\"?/1ãM.eRÝnÁÌÞx\\Å_ÞÍçÅÕªAkÄ\rÔÇÿ¹¤»ú¶~$»MA©ð>F;©°¢¡23R>¨£©È¥d# âÑÀ§ÀT=6?=ÓH¡Î\0ÜXÄÈÜcP~Ðv£Ù`<`\ZµÏ¸ÈÐ®yÀEÉC(\\hí4}Évvx¿sÁPº¤~E¶j§uñ>¦ã°È Ó2@2cm!,Fy.´gàò¡	æ®¼ãü\Zù<\ZåÔË®¬&x¬X5ËÚ,õUûÏSÈm!.·9!\"y,êw÷TÝ>bòäÙ)µ¥1¤\0Ô.+Q³w\"ÔÐÕ¬Þºô-É-Ú&E@YÔDÊ	Ý;õÖF;ÔHÃØÂÒBDlÜITa0Vø+xÃìfõÿfz×ÐrÆ£Lö01\ZÇáÂ:í:J\r\rQèj@u	¿(´dD\\íZ¸\'¶ì¤)IFpÒ°p(ø¶2û¹qãN\rngHÀEÌÄª\"BÀA6\Z76sS]EäV¦ÒFÆ2hdB×t|Ü)çCf±{¦Ø c *±1(¡2êáeø¢ÂÖF-y£ÕûF{µ0ËaÔrJ.¹¢9õ>Â\0a\nÀÚâÑE\Z¬× ÉæxtBôÿ§ÖA@¤\ZâîH§\nkI/`', 'Viva Payment', 'shipto', 'Azampur', '1', 15.95, NULL, NULL, 'zLi8gl04vI', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 11:05:04', '2021-03-01 11:05:04', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(40, NULL, 'BZh91AY&SYZI{\0í_@\0Pø+ö¿ïÿúPÛ<Õ´3c²49%%?I=CM\0Ð\r\0=C@\0\0%\0$PÑ\0\r\0\0¦@MHÉ¦ÐFÑL¦ÐÌ\0\0\0\0\0\0\0\0  Í&<DhÑ£@6IC8nÂIÞN¸yÛ\n4j4éÄÈ\\ÀGTû\n ÇWÔ{XqGAÍ¸êRé(µ!~6u¹8ª\Z¼ãMD¶¿\nmJªÇ7i(Lé´·Ðï÷\n©=Õ8¬ªq2±>g1\rDr¦GÄ3æ3Úx`/#Î@	Ioµi*@MyP\\X¨T¤£`³AV¤a¡­©jQ\ZP\nL*¯6a¸!\ríkÚt7NÀ×@ 2\Z¦Ó$&ÍÀÃc¤|ÑkËJ,$ØC¬¥mÍ\0ÌÇÈé$õ\0ä¢£Ë½a¹\' Æã$aM1&8Xã$ÖE-ªBÒ)¸X-Î9$@[æ5Ö$#!Pîá9T#à(C¤X1ª%hÄ»ÒR|iº©¨!°«44T¸±ª)ò\"T¬¼\ZHQAÐC±i!´÷\Za\Z1%t Å&^äáÍLf,AËÌMêFLÚßJÆ¬ÞÜËÓ£M(b¦´5k ß5¶X¥lCmDdHæ3¾ÖæÐ=§ êà{QâK£Iäãj\"?/1ãM.eRÝnÁÌÞx\\Å_ÞÍçÅÕªAkÄ\rÔÇÿ¹¤»ú¶~$»MA©ð>F;©°¢¡23R>¨£©È¥d# âÑÀ§ÀT=6?=ÓH¡Î\0ÜXÄÈÜcP~Ðv£Ù`<`\ZµÏ¸ÈÐ®yÀEÉC(\\hí4}Évvx¿sÁPº¤~E¶j§uñ>¦ã°È Ó2@2cm!,Fy.´gàò¡	æ®¼ãü\Zù<\ZåÔË®¬&x¬X5ËÚ,õUûÏSÈm!.·9!\"y,êw÷TÝ>bòäÙ)µ¥1¤\0Ô.+Q³w\"ÔÐÕ¬Þºô-É-Ú&E@YÔDÊ	Ý;õÖF;ÔHÃØÂÒBDlÜITa0Vø+xÃìfõÿfz×ÐrÆ£Lö01\ZÇáÂ:í:J\r\rQèj@u	¿(´dD\\íZ¸\'¶ì¤)IFpÒ°p(ø¶2û¹qãN\rngHÀEÌÄª\"BÀA6\Z76sS]EäV¦ÒFÆ2hdB×t|Ü)çCf±{¦Ø c *±1(¡2êáeø¢ÂÖF-y£ÕûF{µ0ËaÔrJ.¹¢9õ>Â\0a\nÀÚâÑE\Z¬× ÉæxtBôÿ§ÖA@¤\ZâîH§\nkI/`', 'Viva Payment', 'shipto', 'Azampur', '1', 15.95, NULL, NULL, 'zB6SUWWVNb', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 11:05:18', '2021-03-01 11:05:18', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(41, NULL, 'BZh91AY&SYZI{\0í_@\0Pø+ö¿ïÿúPÛ<Õ´3c²49%%?I=CM\0Ð\r\0=C@\0\0%\0$PÑ\0\r\0\0¦@MHÉ¦ÐFÑL¦ÐÌ\0\0\0\0\0\0\0\0  Í&<DhÑ£@6IC8nÂIÞN¸yÛ\n4j4éÄÈ\\ÀGTû\n ÇWÔ{XqGAÍ¸êRé(µ!~6u¹8ª\Z¼ãMD¶¿\nmJªÇ7i(Lé´·Ðï÷\n©=Õ8¬ªq2±>g1\rDr¦GÄ3æ3Úx`/#Î@	Ioµi*@MyP\\X¨T¤£`³AV¤a¡­©jQ\ZP\nL*¯6a¸!\ríkÚt7NÀ×@ 2\Z¦Ó$&ÍÀÃc¤|ÑkËJ,$ØC¬¥mÍ\0ÌÇÈé$õ\0ä¢£Ë½a¹\' Æã$aM1&8Xã$ÖE-ªBÒ)¸X-Î9$@[æ5Ö$#!Pîá9T#à(C¤X1ª%hÄ»ÒR|iº©¨!°«44T¸±ª)ò\"T¬¼\ZHQAÐC±i!´÷\Za\Z1%t Å&^äáÍLf,AËÌMêFLÚßJÆ¬ÞÜËÓ£M(b¦´5k ß5¶X¥lCmDdHæ3¾ÖæÐ=§ êà{QâK£Iäãj\"?/1ãM.eRÝnÁÌÞx\\Å_ÞÍçÅÕªAkÄ\rÔÇÿ¹¤»ú¶~$»MA©ð>F;©°¢¡23R>¨£©È¥d# âÑÀ§ÀT=6?=ÓH¡Î\0ÜXÄÈÜcP~Ðv£Ù`<`\ZµÏ¸ÈÐ®yÀEÉC(\\hí4}Évvx¿sÁPº¤~E¶j§uñ>¦ã°È Ó2@2cm!,Fy.´gàò¡	æ®¼ãü\Zù<\ZåÔË®¬&x¬X5ËÚ,õUûÏSÈm!.·9!\"y,êw÷TÝ>bòäÙ)µ¥1¤\0Ô.+Q³w\"ÔÐÕ¬Þºô-É-Ú&E@YÔDÊ	Ý;õÖF;ÔHÃØÂÒBDlÜITa0Vø+xÃìfõÿfz×ÐrÆ£Lö01\ZÇáÂ:í:J\r\rQèj@u	¿(´dD\\íZ¸\'¶ì¤)IFpÒ°p(ø¶2û¹qãN\rngHÀEÌÄª\"BÀA6\Z76sS]EäV¦ÒFÆ2hdB×t|Ü)çCf±{¦Ø c *±1(¡2êáeø¢ÂÖF-y£ÕûF{µ0ËaÔrJ.¹¢9õ>Â\0a\nÀÚâÑE\Z¬× ÉæxtBôÿ§ÖA@¤\ZâîH§\nkI/`', 'Viva Payment', 'shipto', 'Azampur', '1', 15.95, NULL, NULL, 'c0HL0NRkly', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 11:05:31', '2021-03-01 11:05:31', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(42, NULL, 'BZh91AY&SYZI{\0í_@\0Pø+ö¿ïÿúPÛ<Õ´3c²49%%?I=CM\0Ð\r\0=C@\0\0%\0$PÑ\0\r\0\0¦@MHÉ¦ÐFÑL¦ÐÌ\0\0\0\0\0\0\0\0  Í&<DhÑ£@6IC8nÂIÞN¸yÛ\n4j4éÄÈ\\ÀGTû\n ÇWÔ{XqGAÍ¸êRé(µ!~6u¹8ª\Z¼ãMD¶¿\nmJªÇ7i(Lé´·Ðï÷\n©=Õ8¬ªq2±>g1\rDr¦GÄ3æ3Úx`/#Î@	Ioµi*@MyP\\X¨T¤£`³AV¤a¡­©jQ\ZP\nL*¯6a¸!\ríkÚt7NÀ×@ 2\Z¦Ó$&ÍÀÃc¤|ÑkËJ,$ØC¬¥mÍ\0ÌÇÈé$õ\0ä¢£Ë½a¹\' Æã$aM1&8Xã$ÖE-ªBÒ)¸X-Î9$@[æ5Ö$#!Pîá9T#à(C¤X1ª%hÄ»ÒR|iº©¨!°«44T¸±ª)ò\"T¬¼\ZHQAÐC±i!´÷\Za\Z1%t Å&^äáÍLf,AËÌMêFLÚßJÆ¬ÞÜËÓ£M(b¦´5k ß5¶X¥lCmDdHæ3¾ÖæÐ=§ êà{QâK£Iäãj\"?/1ãM.eRÝnÁÌÞx\\Å_ÞÍçÅÕªAkÄ\rÔÇÿ¹¤»ú¶~$»MA©ð>F;©°¢¡23R>¨£©È¥d# âÑÀ§ÀT=6?=ÓH¡Î\0ÜXÄÈÜcP~Ðv£Ù`<`\ZµÏ¸ÈÐ®yÀEÉC(\\hí4}Évvx¿sÁPº¤~E¶j§uñ>¦ã°È Ó2@2cm!,Fy.´gàò¡	æ®¼ãü\Zù<\ZåÔË®¬&x¬X5ËÚ,õUûÏSÈm!.·9!\"y,êw÷TÝ>bòäÙ)µ¥1¤\0Ô.+Q³w\"ÔÐÕ¬Þºô-É-Ú&E@YÔDÊ	Ý;õÖF;ÔHÃØÂÒBDlÜITa0Vø+xÃìfõÿfz×ÐrÆ£Lö01\ZÇáÂ:í:J\r\rQèj@u	¿(´dD\\íZ¸\'¶ì¤)IFpÒ°p(ø¶2û¹qãN\rngHÀEÌÄª\"BÀA6\Z76sS]EäV¦ÒFÆ2hdB×t|Ü)çCf±{¦Ø c *±1(¡2êáeø¢ÂÖF-y£ÕûF{µ0ËaÔrJ.¹¢9õ>Â\0a\nÀÚâÑE\Z¬× ÉæxtBôÿ§ÖA@¤\ZâîH§\nkI/`', 'Viva Payment', 'shipto', 'Azampur', '1', 15.95, NULL, NULL, 'TNar5yhVXv', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 11:08:20', '2021-03-01 11:08:20', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(43, NULL, 'BZh91AY&SYZI{\0í_@\0Pø+ö¿ïÿúPÛ<Õ´3c²49%%?I=CM\0Ð\r\0=C@\0\0%\0$PÑ\0\r\0\0¦@MHÉ¦ÐFÑL¦ÐÌ\0\0\0\0\0\0\0\0  Í&<DhÑ£@6IC8nÂIÞN¸yÛ\n4j4éÄÈ\\ÀGTû\n ÇWÔ{XqGAÍ¸êRé(µ!~6u¹8ª\Z¼ãMD¶¿\nmJªÇ7i(Lé´·Ðï÷\n©=Õ8¬ªq2±>g1\rDr¦GÄ3æ3Úx`/#Î@	Ioµi*@MyP\\X¨T¤£`³AV¤a¡­©jQ\ZP\nL*¯6a¸!\ríkÚt7NÀ×@ 2\Z¦Ó$&ÍÀÃc¤|ÑkËJ,$ØC¬¥mÍ\0ÌÇÈé$õ\0ä¢£Ë½a¹\' Æã$aM1&8Xã$ÖE-ªBÒ)¸X-Î9$@[æ5Ö$#!Pîá9T#à(C¤X1ª%hÄ»ÒR|iº©¨!°«44T¸±ª)ò\"T¬¼\ZHQAÐC±i!´÷\Za\Z1%t Å&^äáÍLf,AËÌMêFLÚßJÆ¬ÞÜËÓ£M(b¦´5k ß5¶X¥lCmDdHæ3¾ÖæÐ=§ êà{QâK£Iäãj\"?/1ãM.eRÝnÁÌÞx\\Å_ÞÍçÅÕªAkÄ\rÔÇÿ¹¤»ú¶~$»MA©ð>F;©°¢¡23R>¨£©È¥d# âÑÀ§ÀT=6?=ÓH¡Î\0ÜXÄÈÜcP~Ðv£Ù`<`\ZµÏ¸ÈÐ®yÀEÉC(\\hí4}Évvx¿sÁPº¤~E¶j§uñ>¦ã°È Ó2@2cm!,Fy.´gàò¡	æ®¼ãü\Zù<\ZåÔË®¬&x¬X5ËÚ,õUûÏSÈm!.·9!\"y,êw÷TÝ>bòäÙ)µ¥1¤\0Ô.+Q³w\"ÔÐÕ¬Þºô-É-Ú&E@YÔDÊ	Ý;õÖF;ÔHÃØÂÒBDlÜITa0Vø+xÃìfõÿfz×ÐrÆ£Lö01\ZÇáÂ:í:J\r\rQèj@u	¿(´dD\\íZ¸\'¶ì¤)IFpÒ°p(ø¶2û¹qãN\rngHÀEÌÄª\"BÀA6\Z76sS]EäV¦ÒFÆ2hdB×t|Ü)çCf±{¦Ø c *±1(¡2êáeø¢ÂÖF-y£ÕûF{µ0ËaÔrJ.¹¢9õ>Â\0a\nÀÚâÑE\Z¬× ÉæxtBôÿ§ÖA@¤\ZâîH§\nkI/`', 'Viva Payment', 'shipto', 'Azampur', '1', 15.95, NULL, NULL, 'DQyY2jkN2M', 'Pending', NULL, NULL, 'ping.afrasiyab.haider@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 11:08:33', '2021-03-01 11:08:33', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(44, NULL, 'BZh91AY&SYD+õ\06_@Pø+ö¿ÿÿúP¼HócÚUv5&\nz4lTý)¤=54ÈÈ\0ÃPIÄi¨i£êõ11<0T \0\0\0\0\0\0\0U\r&@hhÓA $d\n4\0Ðz4õ6$2$(:âÞ\nGDS;x&¨ÐÁ¡eÖ0?ßìiÎÁD1øTË+§;WBj4þÙ;PÖ³¢×Ù9¬NÍ[pqà¬N«]Åd\\\rÅÙÛq2I¨pXVU+Ìæ!ÐI4 yDÒªEW©Ü¨_9)¦fà\0Óò\'Bsc¤,T­@XH9¥Âµ²Cc/ ÁI0bhk¹Ê³A¬¦¨AE\Z&øÆ)r¤ÕVNã@jb¤E§¤UH	PÌ	´\rËqJrFeE\'EbEË°BÂ¡àÅÛ,àÐä+`Ìî*al-A¡Á¦¨¢*V)dqrÇ\"È%2­DV,sdhq9£\n ,Ö¥Le°Èu\ZLï®(5adL\\f\'ºÀ¥)ÔåJdñZÊ¡FÂ7FX®äµ¥¯ð®´%Ø¿ÁHÄLÈ°1/{06	qaJj2Á©È0\"RB \"HÚHm=æìFãF$®è1¤ªÔhDSÓ\'s¤ÕïC¬IqNrÛ9¸{9\\{Q%0±7²+y\',ßepKA4.WOÆAÅ¬cÌvtAÔyÈ<Qü¤r¹GàDáK¬º³@£â=fú»û¸¼îsjcÐ_¸BýOÌß/àÉöÏðWy¨:óè[Yæ\\D´Ö¤CqÚ¸È¡Dl-¹À¸ Úda¯èI,>ýfÅ©SMLd(B>tFGeæ¡±mE¬¦x\ZJë¬\\2©ÅÏÄd¹t\"ñ~]\'eRc-Å\rµ1ZÊç©êm8(5Þh)$81+%`ÌÈDËÇpÍc­å\"Ýsió?¦X¯ðÔmuð5ê]×ÁxH&Pó	\\¸v×¼[9:ÒßQÒ B±¡Îm%ô`(±3aæ`Ë@%6´Í©dLgÈâÚ#Ð²5`JÌr´	û)\'NÌL&µ¨¦V\"D´]	st<j°¨PD¢ð0Í	©ÀæÍäF	¥aHp/Ä2¸=Capû94ÃT4ËÔ>Ä¼j4Ë\Z¯·d3¸ÄP5QèbAfÛa\"mJµ².w­ã®Mç	î5õ4²2¥%ÈÈP7)Òî$Ì-Ó\Zsf5{Ñó14oX ÈÆ% Q¢`Â(i0hÃ©S©Ûgt\"Rì*/qZH@A.1D\"]ðd5îp¤;Ý4­2«&eÒ(Lº¸Yh>H¡0Ñc^ärb«PÎ8Ûqn\r\"*X\"üÝÌ¾M(4,@Õf½OSÏ´\'Ù nnnÂ((Ïñw$S	Iò¿P', 'Viva Payment', 'shipto', 'Azampur', '21', 1.2, NULL, NULL, 'v4Bd1UDHx3', 'Pending', NULL, NULL, 'devtest@gmail.com', 'Laravel dev test', 'Pakistan', '12345678910', 'dev testing 127.0.0.1', 'developent', '14566', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 16:35:29', '2021-03-01 16:35:29', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(45, NULL, 'BZh91AY&SYÉÖ@¤\06_@Pø+ö¿ÿÿúPh\0Nfº NH)êzªa2z4ÓL#@dÐdH\0 \0\0\r\0U \0\0\0\0\0\0\0\0\0\0\0\0\" !&!2\'¦4Ñµ $\"HÜù8mC£~û-~ÃõúwI øI£7Zjök»dÌ\nã:%ÕÈZÏf7gµþa¢È54Ì²Ûyi0óë¼¡ÂMõ8¬Ä+«ï;Ä 9	#¢Ôø¬Q+(äY{M¥Aä½ÅL´Ò@6C&ÐWÍ@Ô¨6i\nêªÊDJÉ)ÃH²¢÷,HÂ©(&°åÎ`ËF(¬PflFS\nCçÉb±Ô.¬BË\0ÕÅXRð¦ª¥TÓ,5P`@Ø0w¬ÒR¢£°êª¼ÖÕÓDÂE©%\\ÄÆÅ¢ân\rÛ¤â¤¨,¨ØQÒfÐµ6WLÌ©Y M)0HJjÕµMJ É!&Ê3$TÁbBäª*«3cD)ªqÚÀñ\\I\n­Q´ÅT1CeU¡ê  RÒà:@cFe/ï2	ô9``(`c^ö`6¸ð¥5`ÖBÂ2\nHTm$1§ÀßÞjÄ >ZÍá;ìErEiºPã¡[æ¤,$´´\ZåÁÞLMÔ¨pðBHÞábôÃ%_\"0-5­í®¸[÷ç¼=çÒIâ\\ÇÜ;à¹?ÀyÃLz¤Ì!­Gµ¥/0\r-&R6àò?#üMûÛ?¢\r( èi=J¦p(<¨¶¢;¡gòAt¨h¼Æ\r¿2RÉSßµ;X2hlg@©þàäué\0ÐØ»{ú§am¶¨lgG!ö£æüFOw\"1îåK¬«|*Ø\\mª\n÷X>GÈì;M\nz\rEBÎâÐg%Ñs÷Þ<¾µ5ãMmþÙ×üP{\ZéàmÐÃ·yÅxHP©ì	Áê§¨[¶Vò=!´¼psC\ZD ò243Äözìp§1EÊa^¡$ª5®­ÑA®ÐÄ)>£½u;9·«:¤Àh_ÕbüØÂñdX	kk\nª$W\"{ÝB,ª c0Ò¥ tgU\n%qHà_h¸>fÁÇ¨¸ý}Í0Ù\r3\'ÌZÒÃL²Le=]dRqÎf+G±Ë30DrÎUj)Q­ê¥ÀvÐàq¦øC_KKA2£:Ò¸wpr\\ç¯Kx3¦=ÈüAM,dcÐ(ÄBQ°P44aÐ±ÄØë»\"½©uW´µÂFLeÓ\ZÜÜ+Svfæ0Fr²ÐÒyEJX­GÜÝ\Z5æF,vû:×qàÊRªª.hDúy+}Í(5.@Õ¨¾c)±jì0áÅ  T?ÅÜN$2u)\0', 'Viva Payment', 'shipto', 'Azampur', '36', 1.6, NULL, NULL, 'TPqVzYNrz2', 'Completed', '7222109998546215', '57829eae-fbf9-40f6-a7d6-4607c5956fc2', 'ping.afrasiyab.haider@gmail.com', 'adnan nazir', 'Pakistan', '564564564', 'Shadman colony, rehman shaheed road', 'Gujrat', '50700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 16:44:59', '2021-03-01 16:44:59', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(46, NULL, 'BZh91AY&SYÉÖ@¤\06_@Pø+ö¿ÿÿúPh\0Nfº NH)êzªa2z4ÓL#@dÐdH\0 \0\0\r\0U \0\0\0\0\0\0\0\0\0\0\0\0\" !&!2\'¦4Ñµ $\"HÜù8mC£~û-~ÃõúwI øI£7Zjök»dÌ\nã:%ÕÈZÏf7gµþa¢È54Ì²Ûyi0óë¼¡ÂMõ8¬Ä+«ï;Ä 9	#¢Ôø¬Q+(äY{M¥Aä½ÅL´Ò@6C&ÐWÍ@Ô¨6i\nêªÊDJÉ)ÃH²¢÷,HÂ©(&°åÎ`ËF(¬PflFS\nCçÉb±Ô.¬BË\0ÕÅXRð¦ª¥TÓ,5P`@Ø0w¬ÒR¢£°êª¼ÖÕÓDÂE©%\\ÄÆÅ¢ân\rÛ¤â¤¨,¨ØQÒfÐµ6WLÌ©Y M)0HJjÕµMJ É!&Ê3$TÁbBäª*«3cD)ªqÚÀñ\\I\n­Q´ÅT1CeU¡ê  RÒà:@cFe/ï2	ô9``(`c^ö`6¸ð¥5`ÖBÂ2\nHTm$1§ÀßÞjÄ >ZÍá;ìErEiºPã¡[æ¤,$´´\ZåÁÞLMÔ¨pðBHÞábôÃ%_\"0-5­í®¸[÷ç¼=çÒIâ\\ÇÜ;à¹?ÀyÃLz¤Ì!­Gµ¥/0\r-&R6àò?#üMûÛ?¢\r( èi=J¦p(<¨¶¢;¡gòAt¨h¼Æ\r¿2RÉSßµ;X2hlg@©þàäué\0ÐØ»{ú§am¶¨lgG!ö£æüFOw\"1îåK¬«|*Ø\\mª\n÷X>GÈì;M\nz\rEBÎâÐg%Ñs÷Þ<¾µ5ãMmþÙ×üP{\ZéàmÐÃ·yÅxHP©ì	Áê§¨[¶Vò=!´¼psC\ZD ò243Äözìp§1EÊa^¡$ª5®­ÑA®ÐÄ)>£½u;9·«:¤Àh_ÕbüØÂñdX	kk\nª$W\"{ÝB,ª c0Ò¥ tgU\n%qHà_h¸>fÁÇ¨¸ý}Í0Ù\r3\'ÌZÒÃL²Le=]dRqÎf+G±Ë30DrÎUj)Q­ê¥ÀvÐàq¦øC_KKA2£:Ò¸wpr\\ç¯Kx3¦=ÈüAM,dcÐ(ÄBQ°P44aÐ±ÄØë»\"½©uW´µÂFLeÓ\ZÜÜ+Svfæ0Fr²ÐÒyEJX­GÜÝ\Z5æF,vû:×qàÊRªª.hDúy+}Í(5.@Õ¨¾c)±jì0áÅ  T?ÅÜN$2u)\0', 'Viva Payment', 'shipto', 'Azampur', '36', 1.6, NULL, NULL, 'aNg1rlkArh', 'Completed', '2920292398367488', '9ec8122b-d59f-4c4d-a679-d15138617889', 'ping.afrasiyab.haider@gmail.com', 'adnan nazir', 'Pakistan', '0564564564', 'Shadman colony, rehman shaheed road', 'Gujrat', '50700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-01 17:00:09', '2021-03-01 17:00:09', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(47, 22, 'BZh91AY&SY`d W\0<_@Pø+ö¿ÿÿú`=ð\0êB \0\r9\0\0\0\0\0\0\0(h\0h@\0\0`\0\0\0\0\0\0\0S@Á0\0\0L\0\0`\0\0\0\0\0\0\0Â§è¦5=OPÚ Ó&ÔIÄ%Â]¡Fn qêrå DG-ñ÷ÿÄÝÒH>c%hÇ©ºõ£X¼½h£_ÙK½M­H¢/Ô¢Í*F~K6àíâ®SmæÌÀÌ3®ò)7Ôâ³®¬[¼ïä$\Zò\"¹P,æQj5íT=BËÚYA¡î$KDÁX¤¡)jìIKI>å²j±%uUe\"%]B1\ZEVEHJªÄi¡¬;9Ìd\re8=ªaýÈYÕ0 0=5ÎµÔe) ÉR0\0ÕÅxSX+urFÓ¸ò2G@`@Ø0yÄÚÕ*)^åETÑØHµ!¬©BU(l;hµ\"o)RPCaGIÜl®¤¸©DBÃ0åFJ\"²­¬9c¤\n\\ÄÉ$0X¹$*ª©VcD)²qÁÂiRIFa(BÌ¥aä*.ÉDªª=¥ÜE 2£@T»£BY-¾òy!/ý	@Ø\r mÇÉ©N Ô¨¢ #ö D!44L	Àcm$6~cy«X@ùek6j³Ùb(oãb+LaÒ%o°ÒÐczTºÖaIª)bÕµË³,cxð\Z\n,³=Vp0ddC8g3\ne QÎCùs\nr½.*hÜáè)Ë\"ÓEÉÅÝ«AÆðA\núðá?3B>-¹ÏPt>\'ækìn$ÔÞªG#à½õ(¤¸q5MÝ n(w\Z6üÉK%OÔHí`lXÉ¡±¤#é$h;¬HÅØÜ7Ðð5;m´`eCc8\Z9µwâ2{¹Çw*]eX Ëä¹VÂãmPWºÁõ>§aÚhTkØj*$pfw<	.¸fñåõ©¯\Zlo±ô:ó?_àj6ºxt0íÞq^*yàÀuÓØ-Û+z§ Ø^89¡\"z\ZâyùXáNb7fH<µ	%Q­t½nõ%vö!IøNI³[p:³¨zÁÜKû,_^#ÀL-maPµPDªäO{¨AãeR¤Lb\ZT¢¤àJ°ÂD®)ýÃîlzåÜÓ\rÓ1`2xýÉòZXi25ðÜt*âtGòt!x6ØTï5Ò¢£\rêÅÀvÐàq¦øC_KA2£:Ò¸wpr\\ç¯§Kx3¦0£P1 cxÙ0i4Ó!\0 4Æ\n	´\0Úl:8wsWµ.¢ªö±ØBÉ¢ ¡ºp@ÛeaàênÌÜÆHÑnP1Z\ZO(©Cu¨ûR{£F½ÁêÒÇ`ÏC:î<zJUUQÍÈQóï bplîbRä\rZî2}P¾ÂAååæØ60p_EÜN$(À', 'Viva Payment', 'shipto', NULL, '10', 0.4, NULL, NULL, 'QewAZaHksv', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:03:21', '2021-03-10 13:03:21', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(48, 22, 'BZh91AY&SY`d W\0<_@Pø+ö¿ÿÿú`=ð\0êB \0\r9\0\0\0\0\0\0\0(h\0h@\0\0`\0\0\0\0\0\0\0S@Á0\0\0L\0\0`\0\0\0\0\0\0\0Â§è¦5=OPÚ Ó&ÔIÄ%Â]¡Fn qêrå DG-ñ÷ÿÄÝÒH>c%hÇ©ºõ£X¼½h£_ÙK½M­H¢/Ô¢Í*F~K6àíâ®SmæÌÀÌ3®ò)7Ôâ³®¬[¼ïä$\Zò\"¹P,æQj5íT=BËÚYA¡î$KDÁX¤¡)jìIKI>å²j±%uUe\"%]B1\ZEVEHJªÄi¡¬;9Ìd\re8=ªaýÈYÕ0 0=5ÎµÔe) ÉR0\0ÕÅxSX+urFÓ¸ò2G@`@Ø0yÄÚÕ*)^åETÑØHµ!¬©BU(l;hµ\"o)RPCaGIÜl®¤¸©DBÃ0åFJ\"²­¬9c¤\n\\ÄÉ$0X¹$*ª©VcD)²qÁÂiRIFa(BÌ¥aä*.ÉDªª=¥ÜE 2£@T»£BY-¾òy!/ý	@Ø\r mÇÉ©N Ô¨¢ #ö D!44L	Àcm$6~cy«X@ùek6j³Ùb(oãb+LaÒ%o°ÒÐczTºÖaIª)bÕµË³,cxð\Z\n,³=Vp0ddC8g3\ne QÎCùs\nr½.*hÜáè)Ë\"ÓEÉÅÝ«AÆðA\núðá?3B>-¹ÏPt>\'ækìn$ÔÞªG#à½õ(¤¸q5MÝ n(w\Z6üÉK%OÔHí`lXÉ¡±¤#é$h;¬HÅØÜ7Ðð5;m´`eCc8\Z9µwâ2{¹Çw*]eX Ëä¹VÂãmPWºÁõ>§aÚhTkØj*$pfw<	.¸fñåõ©¯\Zlo±ô:ó?_àj6ºxt0íÞq^*yàÀuÓØ-Û+z§ Ø^89¡\"z\ZâyùXáNb7fH<µ	%Q­t½nõ%vö!IøNI³[p:³¨zÁÜKû,_^#ÀL-maPµPDªäO{¨AãeR¤Lb\ZT¢¤àJ°ÂD®)ýÃîlzåÜÓ\rÓ1`2xýÉòZXi25ðÜt*âtGòt!x6ØTï5Ò¢£\rêÅÀvÐàq¦øC_KA2£:Ò¸wpr\\ç¯§Kx3¦0£P1 cxÙ0i4Ó!\0 4Æ\n	´\0Úl:8wsWµ.¢ªö±ØBÉ¢ ¡ºp@ÛeaàênÌÜÆHÑnP1Z\ZO(©Cu¨ûR{£F½ÁêÒÇ`ÏC:î<zJUUQÍÈQóï bplîbRä\rZî2}P¾ÂAååæØ60p_EÜN$(À', 'Viva Payment', 'shipto', NULL, '10', 0.4, NULL, NULL, 'BMxAmERByP', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:05:46', '2021-03-10 13:05:46', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(49, 22, 'BZh91AY&SY`d W\0<_@Pø+ö¿ÿÿú`=ð\0êB \0\r9\0\0\0\0\0\0\0(h\0h@\0\0`\0\0\0\0\0\0\0S@Á0\0\0L\0\0`\0\0\0\0\0\0\0Â§è¦5=OPÚ Ó&ÔIÄ%Â]¡Fn qêrå DG-ñ÷ÿÄÝÒH>c%hÇ©ºõ£X¼½h£_ÙK½M­H¢/Ô¢Í*F~K6àíâ®SmæÌÀÌ3®ò)7Ôâ³®¬[¼ïä$\Zò\"¹P,æQj5íT=BËÚYA¡î$KDÁX¤¡)jìIKI>å²j±%uUe\"%]B1\ZEVEHJªÄi¡¬;9Ìd\re8=ªaýÈYÕ0 0=5ÎµÔe) ÉR0\0ÕÅxSX+urFÓ¸ò2G@`@Ø0yÄÚÕ*)^åETÑØHµ!¬©BU(l;hµ\"o)RPCaGIÜl®¤¸©DBÃ0åFJ\"²­¬9c¤\n\\ÄÉ$0X¹$*ª©VcD)²qÁÂiRIFa(BÌ¥aä*.ÉDªª=¥ÜE 2£@T»£BY-¾òy!/ý	@Ø\r mÇÉ©N Ô¨¢ #ö D!44L	Àcm$6~cy«X@ùek6j³Ùb(oãb+LaÒ%o°ÒÐczTºÖaIª)bÕµË³,cxð\Z\n,³=Vp0ddC8g3\ne QÎCùs\nr½.*hÜáè)Ë\"ÓEÉÅÝ«AÆðA\núðá?3B>-¹ÏPt>\'ækìn$ÔÞªG#à½õ(¤¸q5MÝ n(w\Z6üÉK%OÔHí`lXÉ¡±¤#é$h;¬HÅØÜ7Ðð5;m´`eCc8\Z9µwâ2{¹Çw*]eX Ëä¹VÂãmPWºÁõ>§aÚhTkØj*$pfw<	.¸fñåõ©¯\Zlo±ô:ó?_àj6ºxt0íÞq^*yàÀuÓØ-Û+z§ Ø^89¡\"z\ZâyùXáNb7fH<µ	%Q­t½nõ%vö!IøNI³[p:³¨zÁÜKû,_^#ÀL-maPµPDªäO{¨AãeR¤Lb\ZT¢¤àJ°ÂD®)ýÃîlzåÜÓ\rÓ1`2xýÉòZXi25ðÜt*âtGòt!x6ØTï5Ò¢£\rêÅÀvÐàq¦øC_KA2£:Ò¸wpr\\ç¯§Kx3¦0£P1 cxÙ0i4Ó!\0 4Æ\n	´\0Úl:8wsWµ.¢ªö±ØBÉ¢ ¡ºp@ÛeaàênÌÜÆHÑnP1Z\ZO(©Cu¨ûR{£F½ÁêÒÇ`ÏC:î<zJUUQÍÈQóï bplîbRä\rZî2}P¾ÂAååæØ60p_EÜN$(À', 'Viva Payment', 'shipto', NULL, '10', 0.4, NULL, NULL, 'pHF8xV2F7x', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:07:38', '2021-03-10 13:07:38', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(50, 22, 'BZh91AY&SY]|R\0~_@ Pø+üD¿ïÿú`]ñ@\0\0P\0#b`00\0	\0sLL\0&\0&\00\0iÀÀ\0&\0`Jb\Z\0Ñ¦e4ÈÐ\ZÔi Ðæ\0L\0L\0`\0&	\0Ä mODõzjl£\'¤´*L*o§°p¢¿#à¤:, ¶LN2ZùD_ÐºIû([íIjöu.Ê(ÛèÍK½MÖ¤QÆúQfÿÆjªKpwz]LÉ¾]¸=¦{ûr½jóTR¾%<NÂ r§IxI92²s1A ö	pLÖ@²ªjK4 1#ÖqDÒa¼ \0È*]\"àÖD(eä¬kØp!]htC%\r]  \Z:ç­UÐÖáPèÑ¥è2DpDG¹æo!s(Ê&Ð66S\Z,*FÈ1Ì^cq¢åA²=D`F)5Ò± \'2$Øaâg9?R!CEDJ.)h^zlY*®Äÿ¡de\rCEÑæ\nm3MÅq$$Áb¤Á$.X¹$*¨±`hÂsåx­àj&^q½°TP©Q52µqk\np)*3b®ÅïBêª¿Ñ}5õM lCb1òjGäQ0CCj\n¦È!.æPlN¤4	dÂAÄ\r¤&#c³X@ùek6j\"C<ZaPåÌ­óR\0Õ Û.Ì\\Úòbù%JÐ¢«2ÌÍ£%ñØÎoqf3J14×¼Lêê\\¢»?ëÄüÃó;	Í&\"sS\nO@N]¬;Éöãpºm@Õ~ð<»Eå·÷gþ°Á´Äs¨?Øùg°þ-â\rè ó=çèkûÉ68ªÐ÷/Ê¥fÃ©¿ÚwÀ©àl0ßò%<\rîHð`p,ln8Ü!;#CºÈõ\0Ó`{ÎhÆº§¤øÎEøp¨p5£È}Qö~±ÓÈF:yS&cq,©&=æ¶jÅÖNìlw+ÏXl*(83;ÈKC.It\\ä=Ã9/Ê¦Üé¸\'¼¿h?_ú5ñ=%S]|ÍÝM;r^pIC!7./ä¾F¦ÃpÜ/¤¤Æ·C	V*Tê(yé0h$ô@I*k7­ÑAÁ+¸\'cÁrè^¼NÌþÌíâ_£^#ÈL5[ T-T$ì¼	ïu ó²Ê©R	&1\rT¢¤ä5a\\R8À4¹>àçØ\\ý½í0ÜÏÿèZ°Ó0dk?8òÞv*¨ýÎ¤ØPø\ZÍQFì+í£Ê!ÊheaL¨ÎBÌi\\;99.tÛÕÖÞLë½\0c@Æÿ!\Z!1¤Øm$¡¤Á ÅfãÇXE{ñWÜZÇFLeÛ\Z\rÝ\\+¿3sM#Kz²Ñ©é(a`.¶z*P/ti¯½f,pììgmçt\\¥UU]Q	è}#ÀB¸6»Ú Ø¹V¢þSqêÀØ¡UU£\0J$ÿ¹\"(H.¾H)\0', 'Viva Payment', 'shipto', NULL, '1', 17.95, NULL, NULL, '3rMn9biYDW', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:08:23', '2021-03-10 13:08:23', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `payment_order_id`, `transaction_id`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(51, 22, 'BZh91AY&SY[Ò\09ß@Pø+ö¿ÿÿú`=÷@\nØè;fBÂRQ Ð=G¨Ð\0\0\0\0%&$ÄmÍ4dÓF\00\0\0\0\0\0\0\0¤#j4õ¡\0C&M0\0\0\0\0\0\0\0D@D	?&O\Zi¡ÐÑ¡êj7MöÚ+Ð>ôé#êaÍù9ùõ\rFðÉkö>©7tÉD3m©F¯h6^£¥³x©E¦òöt*4;¦å±æ®.Pª¶6¸RJlÊÞZ¼âÎî>2p©Åf!]X·3A$`ÔzÈDQ>³rÔkÉPò<.ÒÊ\r2D´LJ®ÉdÚ\nùT\ZBºª²®¡\"«E¢É@É$%Ub@145g9,SÄ¦ÂeÒ5L(\ræu®£$¢#	0°\rXaW¥1´·W!dm;#$t	´\rM©AÝQB¢æ¨ª2;	¤0(eX¡´xÑjA7Ë)(!°£¤ÍnJ6«©.*4-.äÙ¯rË01KH*`±!rHUUVd,]©Tâ+­jôÅâ)-T t²=C¢¥/Q5²<AuÒeÉK¥øPàOâÌô !@RË:ÙIC£\r7N$d&#) É¦\ndÂÒ¥7háëg	Á\nï Ê1¬ÙªÎëCe­1J;\nß5!a%¥ ×c\ri3K8dbåð9\n&.÷l{¦±2FC©\rOf³VTÆR5§)á®uQ¨cI#u-¨c&`ý\"ëheÉ/÷3À÷»µqh1Þ!PCó8OÈÐ{gÌcÅ§¼ø\Zäÿ\r¤ÕHæ{¶¥ÃQÔÛÄ\r¥F\rRÉSÝ²X46Ð*B?¨9£AÝdz@46-È½Ã}óSqm #Ã*àhæ>(ÿÉåÌF9s¥ÖU¾Kl.6Õ{¬Cèn8\Zî5\n83;HKAäEÎÚ3xòúÔ¡,\"öx-Y:ù&R9ä#TUÉQìI0@ö÷nÅoÐñKÃD1¤B#C<_ªÇ\nt\\¡´õ õjJ£ZézÝèJâ¹\nO´êsÍÝ\nÛÕCÒ@d¿uôcÄw`%­UI:®dýN¡UJI1iR:3*Ã\n`èX?ë»:¡»wzûÔßÖKF]Iñ\nEÑ*ßDq\n\"ÊFAÈ|-¦ØTí5Ò¢£\ruFåÀvÐàvS|!¯±¥ ÊÂQBÀi\\9pr\\é¯m»ÙÛb|!õF$ÌÆ`L@áH\"ä°HY¸Úqv;øâQUy±¸DAB!vð@ÙÑÀ2°ðu6ænc	¤h¶¨È-\r\'T¡ºÔ|R{£F¼ÑèÅÃ=½¦uÚw0ñªª£¢#>éõ@1@B¸6rbØa:õ=DjÚrq#Ò(qñò#A@d\'ñw$S	½(!\0', 'Viva Payment', 'shipto', NULL, '20', 0.4, NULL, NULL, 'aEId6V26E3', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:09:20', '2021-03-10 13:09:20', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(52, 22, 'BZh91AY&SY½Þ\0:_@Pø+ö¿ÿÿúPå #h\0ÐÐG0\0\0\0\0\0\0\0D¨=1<h4\0RQ1\Z2\0\0@\00\0\0\0\0\0\0\0DOÐý@&ÐjP,IG¸<HIwñGö3ÚAÛñ>\r(±×¼b øûÛ© í(§H:·tÖn\rîéGNæs:5;ÙóeEÓ×URâ®8ù36àñ}J¤óºÚV´àÏ\rÄÈ>27Pà°VU+©¨!$\\Èx8C^Ë,ô\"aØ@	³r\0u²\ZÁ}b´rêÄI]zÆE¡Ä b\\¬M\rUÑË(Ê¬X&ÇSk	T>Jp£IC|îN]áDA¬L¡Ô!që,P¬\Zièa Á6°`âçU¥*ÉXZµÖ´&T0LIf+ÔQÀm¸[RXÂ]LÞXw,43\'+f)5«Õ,èA,Af\Z$6I\nÕ­2mªÓ¾t/$ÃP¹ÌQ½`iRYªMDÌjóZà0©U°ôRÅ½Ñµjüèû½	v®ä!°«;,,j`¤´«¢¥5ÙPB`D-D )\"É3\nÄi$üqíÛh4ã½dQßðáY¨ðxKßBÄ:§&6tÜ¾%Ie²KbÆÄk2Ç³\\Îd­¦õÉ¸9Ñ;)mo|ö°õyTü©¯9{	Ú¼	-0;þñí;\\Å[ÜÍMÆfó/,ø+@©p~ã¼Í³)îQ¼ÔÏÄý°>ªj|¾Ôó!ÐÓ\Z83ýI%CáÒ803*`bfaP| ÕËã\0ÐØ¶\"Ö\r³:\nç\\2ÆGÁgØd¸êEâüu\n¤Æ[Å\rµ1ZÊçÌù%¼2dÐ±ÔdXÜ=m¥·Ï0~ÈéÈþÿá¨<çÔÏw_A½uL¡ä¹pè´ÍW¹æwM¡%Úç$1¤BæC;^57O¢ÄÍ#DÚËRÈÏ2KKbiÐÔ³Jî:3 yÁÄKxT·&0´GQ2*Î¢Z ÉjKÐèvªÁYdLd9²@éVÅ#~AÞ0ûþßîâÓÐÓ/P0;}x¬j4Ë\raðßt9J\r´æ©ÌÕ¶Â/y4DÚ3¢.x-Ã®&ã|öÂ\Zö4±HR1\nÃJÁÄsc]ù×«9ßÖÌÈÀEæJbUC	BPhJ\ZL\Z°æTÞftÓ\"è*/IZ@AÉ¢	è1ù8RÎJÅîF+EUµ.®Y(L-db×¨^mØ3ßÌÃ-¡¨wTTQuÉ©/1òô@1@B°7Å¥E\Z¬çè0w!>É&L°\n ÔÿrE8P½Þ', 'Viva Payment', 'shipto', NULL, '3', 0.2, NULL, NULL, 'pai9PSKnRn', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:10:58', '2021-03-10 13:10:58', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(53, 22, 'BZh91AY&SYÕ C\0_@Pø;ô¿ïÿúP½X1®\0t:%!4CÔÓ@\0Ð\04dÐ\0PI¥\0h\0\0$DDCÒ\0\0hm&@0\0\0\0\0\0\0\0D\"1=44\0 ¦L¨î°gÁ!¡¢7àë:zlØ`Éò	GØ­%ÙFòmßLb&ôÆ÷0Ã¡MnMê\Z¼ãm~v¥vLå3y2Äö6È±´Ýý*wfA[*p8	\0x\n\ZhD¼¥	Æy^BÊiôo1\rVÈfÀXT/J3¡ÊáÀ®®]Ý¦ÆÐ¶ó6°l\rH4%ËÖ4Y3ý(¬PI\ZC\rÂa140x¶/2FB`¢´rPBH&n±8q£©M2GTÈkÆ5m¬£¢¢÷¬VL* ¬¡ãBètÃ&TEÉ<IH-($AT!aÞþc¦çÄQF¥Ö\"(Á©Rï[XÆ7(0q,¡ÂÇS¥,¢ÛWJÁrmÌ1\"Rß1®°)!#*QÜ\"§*|tÕ´Bb]Ái)<ès¢}G©ü!b2! ! ]²FUFÚÂQM<1¤¥DB\0@IÄnw0Wb+º*\'@¢Nå´ÇNFåÍ¡¦4¦ æØÔ&ÔÇ\r+\Zv³¹ÆÉ&¤Å5¡ëYÖÙelB#cÒp»g¹6Í°h)1MÏÝ:9CHÃ0³¨ù*\"\'åHBklÄã^Þ*©ÎOt8ë4	]¸§ýã³}dç&9P<.¢=DdÚ´y@ÇCfð68ièISïÒiØ\Z0fde¡õT`vK!â¡±mE¬Ó:Jé¤\\2heqä>£%ÃR/á¬íªM±TmÈUª±ò>FÓyLÀ¤Hà¼³!,u$Y; ÎáäùPÏÐÝE°\'n>ùñ\ZÜÖ¼Ìj]×¸ö:LC°JåÃ>>\"ÙÍWÈö<ÆÛÛ#Ò!¡.Õ7O¢FÓÈ¹lÂDÚÆV¥1ÇìMxûµ]ÍÜS¼èÏùÀÈ¯N¥¸±¢=ÂdT	5¥E2´DHkR^úM$0ã¶0¡´ÂÂMË$%Å!À°»ÆÆwò{4ËP.tö%ÕeQ¦\\ó\ZËáßöJ%ÓPõÌâGA¶Ê¤Øièid{C¢0u[Ç]\rç	î4|\Z02¤¤Ë!AØiX5 ÜäXçJögKýhs Ä!\'²\" \"16M¤(i0bM\"¦ãC¦Î0oK¨½åjm!d\\LdÑÈ|Â|\\Ã¹ÌÙ¬^ë$5±@ÇQÈ!`Äµ.®Y(L-da¯¥êËí÷r2ÏaÔ\rCß$¨¨¢ë#R^Ããà@!XMðh2Ä\rVkñ=h_ íÛÅ	°l)ÿ¹\"(HjÐ!', 'Viva Payment', 'shipto', NULL, '6', 0.6, NULL, NULL, 'pHTtG6KCBf', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:19:52', '2021-03-10 13:19:52', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(54, 22, 'BZh91AY&SYùð\0_@Pø;ô¿ïÿúP¼\r¬wCCQF(4Ð\r\Z\0\044Ð\0PD\0È\0\0hz&©©èÔ2hÉ\0hÒh40\0\0\0\0\0\0\0D@&)#FA Ñêf¦EMÁSZu@,=JD|Èë0èmÉø:º´57Òv>¦5Zh`ÚF¡»}ZfTáLëÂÞ·â¦Î·\'\n/9\"Q-¯ÂRË&CyBå6\ZõÈ¹°Ýý,mÐ×Uàp\0íEk©rK(ê*¼½jEäU ºLÊÈFC&°WÚAëT^ÒDÔ@¢ÉYJ^#\n&Á¦¬ðça\rdþP@CûhH<³Ï:Tj+\'q 6ÑQÖbÔ¾\rEnIEÈÂ&Ð6/8TPPmJö*+PZaªEÂÆC$È¾°ÌÓ,cÌU	[wÎÈEKLDTÌ|0Ç ä\"¥C½nACrHÂ8ÄPác)¼¥,¢ÛVöna\"ùuIÉPîá9T#à(C¤X0æ¨e¢îIIèNO²_ÈäÒ$HPÇÚt)±CjTUBsPD$Ò\ZÂ`C-Sw\rîÃ~Öì¤QI§rÛ«8róhiS\Z æØÔ&ÔÆúV4íföæ[\ZW$\ntÖ­dæ¶Ë+bÙ{¶}¤[ÚÆRÔà|ÎùÇÐ>e:8\"\"~YMM~1Á\0þáj.KÑ[ÞÎÀý°Á´¯Ú!P~gi®~ø¶|4w¢¸ø¹Óþ5hmU#´ø/\nR\\7\Z¦½àk(p3jùÈ±ðÕDì\rEÍ³\n88£1Ý,CbØÜ6Ðèhl-«T`e@Ôe±åúHÄc\Z_),±FÅa·\"µÏ©õ6ÌÊ31I$N%Î¤EÍ£Ô3hò[m ¬Ô:Õ¿±Qâò¤Qb\'«ª|¸ÁNð`@ùx_5oÐòlB^~G$1¤B#1¡ç}Ôæ(aâ`¿@U\ZÏ+Öè ÏCäQv6¡q]ÍÝÅëØtgÑÀÈ·N¥ù1â=BdX	kUBÕDI:.$öºsÒi$±\r¤å80HU,\nGÍv=\r@vwMÈÍ\r2õ=	ê²°Ó0y\reîìzÎERaÄ<Çö9Ðcm²§+ð5|ÍWXlÌê·Úç\nn4{3XR¥c!AÞ4®H79.sÓË¥»ÙË¯ÒÈ\"¯\\a HÁ\r*Ò%Àj;§ËÃÉ®ô¹«ØZÆÂFFÆQPYÝhäà*f¼¦æ0³!!­j;BfsÆ*PÂÀ]h>©@½Ñ^Ð>Mc`ÏqÎ qd¥UU\\Iô.Ò\0a\nâ§po£êËï#<GÁC¡\Z\nXâîH§\n>Ð', 'Viva Payment', 'shipto', NULL, '18', 1.2, NULL, NULL, '2I9G5RvbxQ', 'Completed', '8198656421751283', '50bd8303-1551-4594-bcec-9055446e0d63', 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2021-03-10 13:22:43', '2021-03-10 13:28:43', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(55, 22, 'BZh91AY&SY|Pè\0\Z_@Pø;ô¿ïÿúPÝ@Äw\0\rA	ROS&A¦Põ\r\r\0\0¦F@\0\0\0\Z\Z\0R¨hõ4\0ÀCFÌ\0\0\0\0\0\0\0\0AÀ§¡OHÑdÁ0Ñ©¨Tì\nÓiãaý©ó\"ÚFÛQÖ|¾R`P¨Ékâ1{È³ øI>v¥8¦8¹!~50×G\rVrD&Ñ-·áMRË,æÒÊj4é-sQ³æX±¯2]Wq¸Hx,\\2Eª GDw°ý¼§E¦¾2%Li\01d2p¸( PI\\*	!p@Ò Ä0i¡«;¹´b¸eÔ°BÐàä	¡­jXioX*r.°U²6à¥ËLfÈ`@Ø0sY¶°@2@d$0\n*\Zsn\"ðB2&Gw\n,AT)mÞyÇ\rÂÂ6Á%DE3c^b÷x)2ÝòÈ,cCHÂ8ÄPác)¼¥,¢ÛV¬&ÜÃ E-ó\Zë2¡ÝÂ*r¨GÀPH°aÍ¨e¢îIIð!àDû »_Â\ZÒ%!BiYÐ¦Ì2JtsSFèA½8²\Z`@P´	Mà6]½vÖìçRiÜ¶æY\Zv\ZcÆ9´Mí#&	ªc}¬ÞÜËcerI ©1GM¶¶È7ÍµVSHØôÝ³¼\Z½@ÐJZ3ºtrmHX<\rÐ#ó\n.²³¨£@à#×%æ­ëg`®ÍX`ÚWÂ5TÜÞi ý­âÝè í=§¼ËYäi$ÌÖªFóØ»ªQIpØf:v¤¡¸Èa£àJ.3Ç³E6°42311È*B>ðpFCºX(Å©¸k¡ÌÌÔ[FÀe@ÐcÍäÄr}NîanáKã%ö(Ø¬6äV²¹ø?£iQ¦d)$ÁæBXèIt\\Ö=5ÛS?y²«HRüwO!¨=\rpäeÀÁÛYês¡B§P>=ÂÓÉ[¼ó<Ûq×Ò!ÐÎ§[)ÈQ&£¼À®a$ª57­ÑAg¸¢ÞÖÁs6v¯aÍVmÜúâÆô	`%­U$æ¸½ÈÇ~dFvÆ5$$0°§(éÁcRÀR8K°aæh³´YìFHi¨`só\'¢ÆÃLÀð\ZÇÕÙ´J¥£yòq#Ó*}É_¹£àhºUkPsFGE´vÐm7Sd!¦C+\nT¢1Èd(:+\rK³ðçn¬ç¯ÞÈ\"¯bA!31!4«J9,´Çdð½åÄ®Ô¹\n«ÄµD  LÆQPY½fâà*#N3sD$5¥@ÇaÈBÈÊxEJ,ë1îEJîôîk\rC=}¦9é:À<e*ª¨ÁqDp\'Ì|wWfæf\\«QC) îää$z÷!6\rXÿÅÜN$\"ß:\0', 'Viva Payment', 'shipto', NULL, '3', 0.2, NULL, NULL, 'i9xqegnTRF', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-10 13:23:19', '2021-03-10 13:23:19', NULL, NULL, '€', 1, 0, 0, 0, 0, NULL, 0, 0),
(56, 30, 'BZh91AY&SYôáÕ\0m_@`Pÿø+þ¿ïÿú`\n¿> ª* \n¢*¥BªQDs\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&À`\00\0L`À$4SØ)êSÔd\0\0QµÔ\n #@¨ÓTõ6§¤ÈðD=4Â#FF$¸ê*¾$ïHTOÝ)?4²|¿TùÏFf%¨ùEÖ~xQ¶\n@²¶NÎ[¶cÝmi³AéÀ]\nzËÎ\ntä{7iº¸vönÝÌ~lnGilçíû!ÖÌÆsÕ414òK>G«Öé]=Þÿ|ìÉ©åeZ¾íLçâ\'ò$Ç±ÈìgØð]Äú­EçÐùSä1ÒR:\Zêpäp8ò¤±¡OÉ\'|(krI´ ¦\rZL=®è©§A ,\nXk¡öÄF²Y\ZCiEÐ\r$V1Ã9h(é¤è·õ/\ræd²P©©è«M´8ÂþÃlG´c-SÌÉqxæSÚ`ÆbàQrÅMâ\"¦¥%ªOI¨´Ð0SZ¹h°òí\\Ë@ëç3A¼^hÈÇXLV-4ÄZZ¥ê_a{<Ã Y¸Q¶mçn CC0v\Z=\0[¬¼À)ÀS/AE.ZrvÁÓÜpL/N£Ôi2ÛJ0!´ÎYs9½ÍÀò,ào36l?1£2Ûí¡°*Q8JKÉy¤åÞqpj9;Enwr½\r¡åC->DÊT&RóÂlêiq[³vFÕ©ay#êaÆBæxP¼.-©ÂJ^e-/7ÏÎFÅÅÍÆ%7,bhd\\f\\´1IÖg-i­!Ü(nti§N\\8vØ6;BíÅ¦ÎÝÓ§.ÁÊB»·-Ð°Ri³`nåÃ·.D,ì\rÛ!w@Ððä0ÌÐÚ\ZtÜ4ÃúPöª?û°+£Z¦(F Ý§ûÀ,0\"Å¦HÓ¸S(iÅ]ÀEdlz@)D\"0`ÓJ-6¡ZH\nF¢IR¤£Êk+o$ÔE9lbög½ÈÓ`ö>×¬]ááÛ´pëK´\\´<1¡á³N§MnhqÈåèäÛåx;½µG\rÛÛÝ¼6t2ò7`òàè.ðãBpé¦Ï%ã«2-ÂÎÍEbêÉàÞÅ«g¼ýz|ÈêÜäÈþÑ=	ñÒ>Ëp?Dø{ýÃøÆY>þ\'ùÖW2þ³§#Ä©âñ<é÷MS½äÁô_$rÅÈÀctí§úÞ`y1OYY?áê=Ga=Mò¥ä³©¤Â?¸ûÌúu?sscÉKOÝ&ù.f¼©pÞNÈè YAè2?¹ïn«àÀ&FãyÄÖo&%¤	c´qS8jTÝ,*)#qÊI¤Ðtcá84\r;4ÀÀ=SÌ#à¯þcñ6}ÏÓ¶¾wAÂd<8(p¸íöÓSRªT©PÅ\rfÜ|Ó÷:æã¡RÐ£rKcYyÀ´FâAs8§qZw5<&&ùÖa;³ÑòþÂ/X}ìCÅõá_d<%¼ÌÌv;çÚÓ´2þ!úÄcðÕà)1V~!5JóÌs	ö¥Î¡cÏ7`²ÝËÃ§¸@úïg½Pó Çê|CN`y°~=¢¾o iï¤¡´´ó!ÜX¼ÌL%CÍæi°YîCÀ,ðÇAêåÀ`(n^ÓKKÓc,TÆQÌ¼LÊ\'Ä¡Ð¢£bté>ùÖT(D©(Òd\'3qO	ÿ\'æj\Z¦â¡º{\'t´óN\'cØ¯Ì<ëHF0K!øÃJo´M,92G9ã5>¦ý¸@ËF·n<ô)\n¾&©i:\\Ìû&ÓÑ;Lç¤í4D(Àí`R+,J,C#\0FE¦\"@\"%R<¦GCcÍ8NÒÒLgtGaörãJ\r<Æ«Ap¦ô~ªDî|Ð0ÓÖ:6íb+Ùh Á 2¼6|Zp\r¡°t:ÄÄÀg3ºT=\"\r\'¤ûçc§°zâÅ²Âí$iñ?à#äø\n@)t {D ÐX\"ný7{àú*è=þ÷à©*P¥JhÿâîH§\n1Z ', 'Viva Payment', 'shipto', NULL, '9', 135.75, NULL, NULL, 'QMH65I2oDo', 'Pending', NULL, NULL, 'geoislamgeo@hotmail.com', 'Adnan Nazir', 'Belgium', '1234', 'charleroi', 'charleroi', '6000', NULL, 'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-03-29 20:08:06', '2021-03-29 20:08:06', NULL, NULL, '€', 1, 6, 0, 0, 0, NULL, 0, 0),
(57, 30, 'BZh91AY&SY¯±CE\0]_@ Pÿø+ü¿ïÿú`]÷\05PG4ÄÀ``\0\00JFCSH#ÔÈ\r444¦4ÄÀ``\0\00Dh0\r\0&\0\0\0sLL\0&\0&\00\0D&ôÊ4õ=FÐ5<¥KOâx+ê=)òC¼£ËØóóÀÈ./-~CÏñ&îAùI®Þ´k^H¼#n¸XREé´Y\n=öd±¤X,>%gB%ÙÒ÷¤IÉêfÎb&¦¦cIËÑ-dvß7/çASÖeö0¡mG(g(\\æÈrØ\0Â_Eö0,¨\\ÀLb;\rAÒxÈ«CCPòæÐlÏh×¬²§DøtÖóQÄÁbj\r6Úw,´â0ó.¢À0lXÄÌB°-!Em`ÁÒóz\\²0JåsMÍ-ÕMá)H´*+Æ*~Ô(3°lVVrl¹ (\Z$Ñð2@&ÃOS;wY4¹WVE-\0ÌÒsNe@± Ì­Ñ¹ú4]4Ñ¹S\nQ+FÓSywåL`%Ê3$TÁbBäª2îäÞ.BÜe®bõ¸:IÔqÑHWxÒnFH£<Ù,UA§\'µ8K±Wb\n÷¡uU_µrB^¥óÈ¤B!\"¯ØeQZ­%@¹«Ò]HÜ $R Ä-Jå\0TT~*Ï2à®$<H2µ5ÜÉåb$îç+LåÒ=¾jBÀ\Z´eÁ^L_2¤©\\Va¤d¶$­\r¤£Ø´ N£@­¢ØÓ©H«ÕÔ­qàuøM!¤ëÊj2wTº§!ÎÉü±5MÜü¶åÿ»:³V6øò²0ASÞ;ö?#Üt§ ölû8¼QAïañ>Fþîr$ÜèªG÷-ªQIpæl:>P8<M>D£à3bÇöãD%Lì!;#CºÈõ\0Ó`hä`9ÔöKpá&PàgGaôGÑý\'Ã±tñ¥ÌØIð}æ\n¶j¢ÆOûÇCEF¡I$OÈÏa%Ñs÷Ìy~u6ï¦á6íÔý?è×ROFºùu2íÉyA%XMË` }}¢ß³ñøn\nºA±¤RÜDa°cÙÀÐ§¢N¬Á¦Á$ª5¬Þ·E}I]á<P»ÝK×ÙVs%»zõcÄy	`%­ì*ªv]	ðu ó²Ê©R	&1	\rTª¬¬î%Xa@¢Wø1ÌÜ9ö?L7CLÅî4yÿâk3&µ÷÷Ç±T ârGîx¼l(BûMf¢£\rì¥ÈvÑÈî§©DJþ-*´)\ZØd(=ÃÀçþÎÖógl{þÁMþP¥1PF\n\" Ò`Ð\r¨±ÌÜòáÚ^ô¼Uí-c#&2BíÝ\0ÊÃÁäpÌÜÆHÒà c ,´jzÅJX­àÝ\ZkÜÑ¬qïìgnu²Rªª/GR~ñè@!\\ðh$jÔ_QÜþ¤?<{HÈP%?¢îH§\nö(h ', 'Viva Payment', 'shipto', NULL, '6', 85.8, NULL, NULL, 'Pk8O996fim', 'Pending', NULL, NULL, 'geoislamgeo@hotmail.com', 'Adnan Nazir', 'Belgium', '1234', 'charleroi', 'charleroi', '6000', NULL, 'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-02 09:25:39', '2021-04-02 09:25:39', NULL, NULL, '€', 1, 6, 0, 0, 0, NULL, 0, 0),
(58, 30, 'BZh91AY&SY&m>\0p_@ Pÿø+ü¿ïÿú`=\0@$#b`00\0	\0%b%M4 h=&\0æ\0L\0L\0`\0&R £G¨Ñ¦$dÈ\0\0\r\Z\09¦&\0\0\0\0\0	DDhLô)å0jmLL&CFM¦S~aÂ\nýÇØ²>F^YÒ4Sî(]ÒÃnqÖüï&!RéR¶ü)§ZÁ½0Ð^üBf1×ò¦¥UXíxý×0¢ØvüÏyæ=T8¬MPg5ÚS¬è!Ø$&³ÒdyÏ©Ü#èh#;=CÑ0^£\\\r ¤É\0¡_¡%B°I2jÄÐÔ2îE`É®ñ®Â¢ÌLñV¤P@40tÆ&YÜÉY`MjuX\ryGèRæ+Ñ0	´\r;JÖ*Y´T ³¦ ¢ðTF\nBÂã`ÚW±\0·ÁBà;JWÜTW@R&e§+OaQ@X^\">¥ITºj))ci°¡r\rdF S#`²G\ndÀ\'±OC\'¦)\rX ZÅ¹e¤@SÝµM¤#$\\Â8Èìî8¹ÁB\"ÉÒª\nL&=IÀ;Ð#JDÈR\Z3é:\nlÃ6&A¥ÃSF½ÉÒB`\Z0C h)»þöoXW¦\"Èc)Id1éB$lÝr);ÝÎfÝÅ-®¥²¬eÚ©Ë¬ÔI*9*¥)²¡Êg*òô):!Ml>bD¦wÕ9¨JSØupÁÌ{<ãæ&GÐäÿ;xÇ²ÏCÐj#Þ>¾ÄÞJÞÖp_VT`Ú^=ÁÚLÜ(xÃû3Îp`ólýH4wÀ;yñ5o?Óa#QÁP­gBjEqèkñ8¡CÃ_Ä<FfTöi4\r\nÌ(B=ÐsFC²Àòi°26\n÷\rÔ;FuëP5¸ÑÌ|÷}ã%¿ðå;©2-û²åµA^ëÄûNE¤Hà¼µw,¨fááõÐÏªzUçÄú\\IqègÄÃ®ÅÒ	;BV,ÀíóÍ®¿þ9JxC»¼bD¦!ÊÄÇYÛÙSlù\n$k;Kvf$¦ÖXµ,ü]A-¹x¦Ã?Ü\nóòâÆè&E@Zª)¢,×[Ý:ê°¨PD¢ð0eB:3i%QÂiXRà-ÃèÔ¹wöjCL½@ÚduÿÄûv\Zf²õõGMeCb?ÓF1µ2 ËDÚ3.yÁ×#a¶z`úGb&2°¥%f2JÁ¼sc®îuëg;ùQü¯bÁ,ÌfÄRÁ Pn5aÅÖÛ«xSÌV¦  É¢	Ø2\r\\)çC^%b÷M#%­@Æ@Ude.1BeÕÂË1ïE	¬ò£îÅ}xs1³¬8|¢¢®H$¾ãåÀB°6·µ3,Hj³_vý\n||ÐPü]ÉáB@M´ø', 'Viva Payment', 'shipto', NULL, '1', 23.95, NULL, NULL, 'VZbEbEYiRa', 'Pending', NULL, NULL, 'geoislamgeo@hotmail.com', 'Adnan Nazir', 'Belgium', '1234', 'charleroi', 'charleroi', '6000', NULL, 'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-02 09:32:29', '2021-04-02 09:32:29', NULL, NULL, '€', 1, 4, 0, 0, 0, NULL, 0, 0),
(59, 22, 'BZh91AY&SYçës\0Mß@ Pø+ö$¿ïÿú`1ð\0*\0\0\0æ\0	\0\0\0\0\0%4i¨ôF cF¡ 9`\0&\0\0\0\0À0\0\0\0\0\0`\0\0	\0\0\0D@D&LH2¡=@ýHziµG\r(v¤ÄM¨y\n~;÷·T\n\n:§x¢oîVcp£ æ8+©5cDÐlø©E^dÑhhJ\nKpD%âå]¿*bªªÆ®d±MUeÑ¸íþÏäq,¤ôácÖÇ#Z)W)àuì$>FÃêo¡úúd|µLÄ¤d2~PWêyC@Æ#j6ø5\ZYCkQ¨CPðæjÅD1¡ÂóCUGÉ@40eoy¾2¨Ê\ZVC â.Êb(\"Q¢  ö!âB\"Am`ÁÖóz£$4bª(ªÄ¤^ãC¨6ÌÚ¦6elVv¿yDe+!Gc¼U4ÚVt¥#)|Ñ ÖÒº\Z*\"æQYØÞT\r¤,T$¥Ë$P7+»\nêå,Å·Ü«0aReçÛeE\nµQ3!KW°§\0Â©p6*ìQa^ô.ªª¼Öä%ÅáHÚÀmh&=\Z´âhlR¢²KTC\\0\"D4&0c)D06OyÝî5bKZÍá=Ö\"\r4°ÔYb\r<E&ô,!±«v2å¦îP¦BªRb­ôc3lLW$)Bôa3k3¼Ëä>G	ÔG@ç)ÜsIÖ|rçí:>ºMx2FÑhq»¸Kìgû»5ah/Àu;UÇüG¡ÂEá7ÊmÔ¹bY÷4k<#5¥õeJ).MGSoîtqSÄÔa·ÐHÍ\nM´HâÀÚX¹¡´ÎR¶hÐwY\r6ÐùÑói¼¶íÐa\rÆp4u$}ßÉçÔF9õ¦UL*_èSâdÃa¶¬,åh}±ÀæhTi\nI$pbwFy];Ç°gxòýµ5ãM6ðè}q¨<åâiÈÃ¶åã<n\\ :#åðÎÿêy%Û$1¤B0ÈÓ;ÏéÐQ&ÓØ`ÇPU\ZÓ7À[¨ÏRWxNä.§ fþeë¡Õ¬àKuð/Í/ØL-l°¨Z¨\"IÕr\'©UJI1iR:3y*Ã\n¸¤p/@Ñp}ÍÃ¨¸~\\Za±\r3\'ÜbÒÃLÁ¬ÿNÛiÔªPn:#ù:Â/¦j4jTT0x.áßC¸ßMÐÔeaL¨Î£!Aâ4®äÜ9ëîénÌé4~ Æ&üY`Òi¦DLb h\r¡(h4aàXàl:íé¯z^ªò-cq#&2Bë¾\rgG\0ÊÃÁàmÌÜÆHÑmP1Z\ZO8©Cu¨ø¢¥÷FyÕ£~Lë´ñaïªª£¢#>£éÈB¸6qbRä\rYQ#)°÷x!AíöûÀÿrE8Pçës', 'Viva Payment', 'shipto', NULL, '2', 36.95, NULL, NULL, 'PQbWVqPS1A', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-02 18:32:28', '2021-04-02 18:32:28', NULL, NULL, '€', 1, 6, 0, 0, 0, NULL, 0, 0),
(60, 22, 'BZh91AY&SY<]\0__@ Pÿø+ü¿ïÿú`=i@fÆ5Ð\næ\0L\0L\0`\0&	@@A\Z\ZµiÀÀ\0&\0`*&õFê\04\0\0\0\0iÀÀ\0&\0`!Õ<zMS \Zð©|TÑO¹ö¤û!àQçîzz`,_2S¬Q;?ÊÃjtÎòÅ¡R¥R´ÿ)Y±­xhBk^!1ÀëÚ¦nª¬z9OuKÛØUo<sÕær-\'·ºÇ5S²\r(¡}å{D@Ù2LEÆaÄa8cpOS4<»9H+r`¶l¥+$É¡\"D4ËæD$²7ÐÐOÖ25rhj*Ôa2Í;%!!ÌÉN$¢$	\\ó½pYa\rlv.°\"12°¬!ÑD.a\"(hÜ²,¶´Xª4DÝ&c¨«òè`ÚXË#!D@dTÀ&Âîó8âYEQQZ¤ÞË\"2èóð,Q\r\rD\"c	¨¬Î\\\råLm$$È¹RdIL$.I\n¨ÜÕÍæä.#+t¶i´Í©Ê)\"R^©¦ôHFH«Â8Èìî{Uî#Ð(C¤H1[0JY-ðsuq¼#¤`!\"«Ê7PF¨C\n(* º5D8b CHh2a 	°ÒCið7åÍÂì1¬Ù¨cÝR$ßÇVÃ¥Jß*nÆV0í&åN±h!,¡J]L.	*\r¬aäRù!Lè>\"âDË;æ\\Ì$$©ó;6Nè9Ç8MGPM¼Cã	äìj:\n:m3N]¤×.1Ø¿0¶êÇÁ	µ7Hpmad_ùÖ{ÏTo¢©Î1°µÇ0yî6wé¼aÉT§±iRKAÔÛæsqS¡ Ão¸yÐ±íÝDL\rÅÍ\rÆZHGã¨ÌwY83z1ãSÈØn-·l`eCiGÉé=úÇ.¹¡$üa­Ú¨±î?ÃÈÌ¨Ó3HàÄí!,y]8`Î#Éö©§u6Û^g¿û\ZæIà×>¦Ì·®°ICÄ&åÃP({£UÁ¼É[c(¤RÆCLìxøXáN6&<4	%Q¬ò½nù»w!jrpæ^»ÍYòg2-¯ ¿60¼GQ2,µ²Â¡j \'EÈ÷RÖY* c0Î¥U`ugU\n%qHà_¨f¸?`qÔ\\}}í0ØÀÌíÿðZ\\igìî»J¥ãz?Ó¡Ôl(Búòª(Ñ \Z£¡o³7)»#àQEPe¡L¨ÏA ð\ZWò.K6yknÌ×¤~Æ1IÁ\nXcUDa\0¢! m\0CI@6Ça×n°÷%ÔU_9k@AÊ\"\n^f:8V¦Ü¦æ0Fkj²ÌÎyÅJX­ÞÝµêGÅzõ2ÓiØ9¦Rªª.düGÓ\00pmwµ4.HÕ¨¿_Ämë#ô(mmm£ H@ÿ¹\"(HL.', 'Viva Payment', 'shipto', NULL, '1', 25.95, NULL, NULL, '6rdgS1ninv', 'Pending', NULL, NULL, 'user@gmail.com', 'User', 'United States', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'United States', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-05 15:12:59', '2021-04-05 15:12:59', NULL, NULL, '€', 1, 6, 0, 0, 0, NULL, 0, 0),
(61, 30, 'BZh91AY&SYè»h\0_@`Pÿø?üD¿ÿÿú`ÿT(\0¥©BHR%À2`0&À`\00\0L`À0\0L\0L&	0`\0&L\0&Â0\0¤ÐMIà§ i¦\0\0FMÉå1¤4ôzFFF¤8HvOu3=åæ§ß\'öLOúM\'òþùOË¢ån¸X¶Êþ+iIø®[³1æl±%alï*æ·[,.~ËS.FãKoÃIÞo:ZÎSÆuÍMââu^+u¸ê·\\Yl±¥ì·æ´°É²õo»>Æ\rk¢v\\ÏDöNõÚbt§¢{æÆÎO±îM­ý_¹³\'Â­§ÐÓÂhÞ¬«ü]ÓGô¯¥P4eæ½ïy£Gµ>ßþê>ÓKï?³Ú».iã8Jx÷ÙWÝ\Zd{5´u:ízU¹N»\nwµ16¦Á»©½6~µBW\nà´Ugbïv»ò¡©VK¼iNtNÖàY,LdX¸76M.ó#!¸±~L[lZZ,},á¬Wl¯ï¤ßÄåá.ÔýTå4X,SyÚyMî\'w#uç<\rG^<©²i154ÒmLEÉu¦óÙq2ÎOdsO:m8¼wo;ê5;:SSLÙ©Ë´q´ë)©±3&dÉLL&NÓ´×K:dtx1c\'FN7éåÅ6§WwÜ¬©:N[ØÌ·ÖØÍ»Ôý¿QçáæéO=;p<&LÖ6]f-£Ú:©Ó#³Ï¹pÊuåÛÓ²î+&²ÅºØÙp³Ç+Ê»ÝbðèZ¼®û`òð.)¦S§4ö<ÒdYÒm<¦ñÒ^Z°ç»Õ<÷I»ÃÂ7ñoNÅÆÖjí<\nÁ.kkeÆ~óÅp¹Z]Å²ì¹\\-,]ËKÕt[+eª¸v-´Ì3Æ[dÓngØìæntlµNÕjm5:ÍçRdêu\'i¦ë²v«åNeÕuÒás])s\r×EÍn0il¶[RÝs\\EÍsË¥,¥ºØn¸¥©u\\ç%æã áp·Cùê©cüÔûx-,Q%7Z[mðØµ,XijiX7\\,NG¬Ê¸\rbm&Õ&@Ènµ[mE¥V,Ådú§ê¼|¥Ýd¥Ú\0ü,N\'3aÌÂóÄÚ{\'DÔÙv²×ÎÓ´ÔÞn§¢q9í8 v\\Ö§êµ¥ê¶Z\\KÀælg3´ç|e7NÒuìÑ­8fiÎ/\róG-×I¦ÓC¬ÙtgYÚt¬&;¦ó¼èpÑ¼ë8èë9NíØµÍï7ZNSSb÷/ËÚ¿q8?rý«ú¶p¾å£u÷¿,6ýl­ÃÏgÿqO¬ýv3­^§÷é?©þËûûÌü^«wíOo»ë^ç}Óº_Zï-/0á~ÅöÝc:L.ÉÎ³SÔ¥ªn²}Kñ_Öo?ÉøL¿ñ4ñ:ÍêÒûúÁ~+¹ãè¸ú½uä½*èµ>+ï§YÂÞ­!Ù<NÊzÉ7\'½à°6Åm\'ÿ1;®ü\'ÞÖ`K¢î¼í<	ÂÕ5©ëS´ÅÒè:Ì]©Pö¬ê^Ùºúó]\'ò&§U´ÔÅúóNý!ô,ñzÌZÄÚ{çÅ5:ÍN³á>3yÊv:,å³-tÚlt[ÌN&Uº9®CôÂyODí9KNÐôÖóyo3SªÙw*í2{æÓ ôY:G¢Ï5Ñdï2|§Æ{¦óÈ6\'ðá)©{ÖJöOï^Õ:¬\\/TöÕò-×ë&Ó²ê_@´²|gèUç<jé?JuúS&xúÎw6K%4ðRí,=Ózø.¶o>µ6^Kë]VÕ<	²ÚÌ§yÚs8ÅºÅüÔ÷ÓÎCòO|	é>+¬é=EòÞcÔëòJæ|q0¹O¬[NT¶X<WÞep¹\"Ùm6]ÆõzæëÔ¿åiq6è;SÔ¶hë¥ð-êÞidÞb÷-©Ña7-èrË&¸ûÉáWªÂ~õÞÔ½Ðó¯±zV©â\'EÎ¥Öz×Òl¾#²ç`ÉÒ]f«í^u¥ï_Â¼ÓÛ9§ý²ö)ó¹©ðÉebÅ¹M¶w]%7X/!>:¯^\'IÝz/tÞ{\'\'Ý-òà®×Òï6VØitç2hr¶Æa])ê/>Ó¤ö/ø×µq>¹ògýr~³>éT0²¦S)bbie1b&*ÉLÈF¦PÂÉ&`¾Êáx¯ò)¨¸ê5\\Uö®¢óM@÷MÓºì±oëSU|\'¦yOÉ ÅÄÔÉÕ>kÎvN]gZe\'zyÓKEÒ×}§Æjp·]jêNO	Ò)½8\\%Ù`úê_÷EæKô/dê¼ôRõQøÁÈr\Z:ÕñSó|Vóô,Dø-©ËÌÒìL²½ó¦LX|Xy®ëuªä?ôÉn¼¥ò\\ïjªùÊ>?òL,Xajaf«ÿÅÜN$$º.Ú\0', 'Viva Payment', 'shipto', NULL, '9', 159.6, NULL, NULL, 'UFYQDBzw5l', 'Pending', NULL, NULL, 'geoislamgeo@hotmail.com', 'Adnan Nazir', 'Belgium', '1234', 'charleroi', 'charleroi', '6000', NULL, 'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-21 13:00:57', '2021-04-21 13:00:57', NULL, NULL, '€', 1, 6, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 54, 'Processing', 'In processing', '2021-03-10 13:27:31', '2021-03-10 13:27:31'),
(2, 54, 'On Delivery', 'Delivered', '2021-03-10 13:27:59', '2021-03-10 13:27:59'),
(3, 54, 'Declined', 'Declined by Delivery service', '2021-03-10 13:28:22', '2021-03-10 13:28:22'),
(4, 54, 'Completed', 'Completed', '2021-03-10 13:28:43', '2021-03-10 13:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 1, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) NOT NULL DEFAULT '1',
  `service` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `small_banner` tinyint(1) NOT NULL DEFAULT '1',
  `best` tinyint(1) NOT NULL DEFAULT '1',
  `top_rated` tinyint(1) NOT NULL DEFAULT '1',
  `large_banner` tinyint(1) NOT NULL DEFAULT '1',
  `big` tinyint(1) NOT NULL DEFAULT '1',
  `hot_sale` tinyint(1) NOT NULL DEFAULT '1',
  `partners` tinyint(1) NOT NULL DEFAULT '0',
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `bottom_small` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `featured_category` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'info@macaofashion.be', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', 'Macao cora lalouviere', '00 32 489 51 41 18', '00 32 64 67 73 58', 'info@macaofashion.be', 'https://macaofashion.be/', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 0, 0, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via your Mobile Money.', 'Mobile Money', '<font size=\"3\"><b style=\"\">Mobile Money</b><b>&nbsp;No: 6528068515</b><br><br></font>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color_image` text,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `color_image`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(1, '135043337', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Aziyah', 'aziyah', '1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG', '1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG', NULL, '41,40,39,38,37,36', '2,2,2,1,3,1', '26.95,26.95,26.95,26.95,26.95,26.95', 'BAIGE', 'assets/images/thumbnails/1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG,assets/images/thumbnails/1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG,assets/images/thumbnails/1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG,assets/images/thumbnails/1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG,assets/images/thumbnails/1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG,assets/images/thumbnails/1596807564_2111ad97-8dff-4af0-9719-db4fd09360d6.JPG', 26.95, NULL, NULL, 23, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:17', 0, NULL, NULL, NULL, 0, 0),
(2, '135043343', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Nalani', 'nalani', '1596807981_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG', '1596807981_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG', NULL, '41,40,39,38,37,36', '0,1,3,2,0,0', '24.95,24.95,24.95,24.95,24.95,24.95', 'BLANC', 'assets/images/thumbnails/1596807981_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG,assets/images/thumbnails/1596808023_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG,assets/images/thumbnails/1596808047_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG,assets/images/thumbnails/1596808035_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG,assets/images/thumbnails/1596808078_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG,assets/images/thumbnails/1596808001_17c24b96-be95-4f92-9aa1-d1a8f0d97df1.JPG', 24.95, NULL, NULL, 20, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:16', 0, NULL, NULL, NULL, 0, 0),
(3, '135043349', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Dione', 'dione', '1596807817_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG', '1596807817_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG', NULL, '41,40,39,38,37,36', '1,1,2,0,0,-1', '27.95,27.95,27.95,27.95,27.95,27.95', 'NOIR', 'assets/images/thumbnails/1596807817_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG,assets/images/thumbnails/1596807817_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG,assets/images/thumbnails/1596807817_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG,assets/images/thumbnails/1596807817_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG,assets/images/thumbnails/1596807818_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG,assets/images/thumbnails/1596807818_3c2e25ea-bd86-4748-ad75-faba62e1ef7c.JPG', 27.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:11', 0, NULL, NULL, NULL, 0, 0),
(4, '135043355', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Clary', 'clary', '1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG', '1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG', NULL, '41,40,39,38,37,36', '0,1,0,1,0,0', '34.95,34.95,34.95,34.95,34.95,34.95', 'BLUE', 'assets/images/thumbnails/1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596807818_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG', 34.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:08', 0, NULL, NULL, NULL, 0, 0),
(5, '135043361', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Lanaya', 'lanaya', '1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG', '1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG', NULL, '41,40,39,38,37,36', '1,2,4,1,1,0', '29.95,29.95,29.95,29.95,29.95,29.95', 'BLUE', 'assets/images/thumbnails/1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG,assets/images/thumbnails/1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG,assets/images/thumbnails/1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG,assets/images/thumbnails/1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG,assets/images/thumbnails/1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG,assets/images/thumbnails/1596808253_f845af1e-628d-43ce-825c-0b255a1b485e.JPG', 29.95, NULL, NULL, 23, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:07', 0, NULL, NULL, NULL, 0, 0),
(6, '135043367', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Sarotte', 'sarotte', '1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG', '1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG', NULL, '41,40,39,38,37,36', '0,1,5,5,2,2', '34.95,34.95,34.95,34.95,34.95,34.95', 'BLANC', 'assets/images/thumbnails/1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG,assets/images/thumbnails/1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG,assets/images/thumbnails/1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG,assets/images/thumbnails/1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG,assets/images/thumbnails/1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG,assets/images/thumbnails/1596808253_95fe1d2e-2579-453f-8861-e554494c12b0.JPG', 34.95, NULL, NULL, 28, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:05', 0, NULL, NULL, NULL, 0, 0),
(7, '135043373', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Eleusine', 'eleusine', '1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG', '1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG', NULL, '41,40,39,38,37,36', '0,2,1,2,0,-1', '32.95,32.95,32.95,32.95,32.95,32.95', 'NOIR', 'assets/images/thumbnails/1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG,assets/images/thumbnails/1596808456_4da295ba-5b32-45d4-b25b-d7a8c4e1039e.JPG', 32.95, NULL, NULL, 24, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:04', 0, NULL, NULL, NULL, 0, 0),
(8, '135043379', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Erza', 'erza', '1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG', '1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG', NULL, '41,40,39,38,37,36', '1,1,0,0,0,0', '29.95,29.95,29.95,29.95,29.95,29.95', 'BLANC', 'assets/images/thumbnails/1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG,assets/images/thumbnails/1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG,assets/images/thumbnails/1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG,assets/images/thumbnails/1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG,assets/images/thumbnails/1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG,assets/images/thumbnails/1596808456_cbe933c2-3b76-40b0-baf5-3c1714bf629d.JPG', 29.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:20:00', 0, NULL, NULL, NULL, 0, 0),
(9, '135043385', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Nathalia', 'nathalia', '1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG', '1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG', NULL, '41,40,39,38,37,36', '0,0,0,0,0,0', '34.95,34.95,34.95,34.95,34.95,34.95', 'BLUE', 'assets/images/thumbnails/1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG,assets/images/thumbnails/1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG,assets/images/thumbnails/1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG,assets/images/thumbnails/1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG,assets/images/thumbnails/1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG,assets/images/thumbnails/1596808592_4cc61c43-849e-4b1a-aec5-9bc923d8fa0a.JPG', 34.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:58', 0, NULL, NULL, NULL, 0, 0),
(10, '135043391', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Kensi', 'kensi', '1597317848_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG', '1597317848_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG', NULL, '41,40,39,38,37,36', '1,2,2,0,-1,0', '30.95,30.95,30.95,30.95,30.95,30.95', 'BLUE', 'assets/images/thumbnails/1597317848_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG,assets/images/thumbnails/1597317939_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG,assets/images/thumbnails/1597317905_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG,assets/images/thumbnails/1597317818_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG,assets/images/thumbnails/1597317721_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG,assets/images/thumbnails/1597317686_3c853476-b9ab-4551-bae8-53d57f9ca936.JPG', 30.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:56', 0, NULL, NULL, NULL, 0, 0),
(11, '135043398', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Addisyn', 'addisyn', '1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG', '1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG', NULL, '41,40,39,38,37,36', '0,0,0,0,0,0', '29.95,29.95,29.95,29.95,29.95,29.95', 'NOIR', 'assets/images/thumbnails/1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG,assets/images/thumbnails/1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG,assets/images/thumbnails/1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG,assets/images/thumbnails/1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG,assets/images/thumbnails/1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG,assets/images/thumbnails/1596808880_c597d27d-161f-4053-bd15-1677c62dc0dd.JPG', 29.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:54', 0, NULL, NULL, NULL, 0, 0),
(12, '135043404', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Jaleesa', 'jaleesa', '1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG', '1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG', NULL, '41,40,39,38,37,36', '0,0,1,-1,0,0', '34.95,34.95,34.95,34.95,34.95,34.95', 'BAIGE', 'assets/images/thumbnails/1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG,assets/images/thumbnails/1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG,assets/images/thumbnails/1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG,assets/images/thumbnails/1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG,assets/images/thumbnails/1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG,assets/images/thumbnails/1596808880_16966be8-23f6-474a-839d-b217133e6fe2.JPG', 34.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:51', 0, NULL, NULL, NULL, 0, 0),
(13, '135043410', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Atalanta', 'atalanta', '1596809498_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG', '1596809498_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG', NULL, '41,40,39,38,37,36', '0,2,1,1,0,0', '34.95,34.95,34.95,34.95,34.95,34.95', 'NOIR', 'assets/images/thumbnails/1596809498_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG,assets/images/thumbnails/1596809498_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG,assets/images/thumbnails/1596809498_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG,assets/images/thumbnails/1596809499_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG,assets/images/thumbnails/1596809499_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG,assets/images/thumbnails/1596809499_75d054b3-b588-4a6a-962d-84bcd70815b4.JPG', 34.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:49', 0, NULL, NULL, NULL, 0, 0),
(14, '135043416', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Alisa', 'alisa', '1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG', '1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG', NULL, '41,40,39,38,37,36', '1,0,0,1,0,1', '30.95,30.95,30.95,30.95,30.95,30.95', 'NOIR', 'assets/images/thumbnails/1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG,assets/images/thumbnails/1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG,assets/images/thumbnails/1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG,assets/images/thumbnails/1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG,assets/images/thumbnails/1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG,assets/images/thumbnails/1596809499_3aa78187-1e5c-4ff0-8531-52c95f9d5a86.JPG', 30.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:46', 0, NULL, NULL, NULL, 0, 0),
(15, '135043422', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Brixton', 'brixton', '1596809706_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG', '1596809706_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG', NULL, '41,40,39,38,37,36', '2,4,5,3,4,2', '34.95,34.95,34.95,34.95,34.95,34.95', 'BLUE', 'assets/images/thumbnails/1596809706_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG,assets/images/thumbnails/1596809706_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG,assets/images/thumbnails/1596809707_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG,assets/images/thumbnails/1596809707_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG,assets/images/thumbnails/1596809707_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG,assets/images/thumbnails/1596809707_47b74b8d-05ac-45bd-b3bd-d44a4cea9ea2.JPG', 34.95, NULL, NULL, 28, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:45', 0, NULL, NULL, NULL, 0, 0),
(16, '135043428', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Ida', 'ida', '1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG', '1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG', NULL, '41,40,39,38,37,36', '1,2,3,3,2,1', '34.95,34.95,34.95,34.95,34.95,34.95', 'BLANC', 'assets/images/thumbnails/1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG,assets/images/thumbnails/1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG,assets/images/thumbnails/1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG,assets/images/thumbnails/1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG,assets/images/thumbnails/1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG,assets/images/thumbnails/1596809707_b1dbcade-2bd6-440c-892b-422ae9609e63.JPG', 34.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:43', 0, NULL, NULL, NULL, 0, 0),
(17, '135043434', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Joseline', 'joseline', '1596877010_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG', '1596877010_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG', NULL, '41,40,39,38,37,36', '1,1,1,1,0,0', '34.95,34.95,34.95,34.95,34.95,34.95', 'BLUE', 'assets/images/thumbnails/1596877010_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG,assets/images/thumbnails/1596809707_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG,assets/images/thumbnails/1596809707_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG,assets/images/thumbnails/1596809708_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG,assets/images/thumbnails/1596809708_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG,assets/images/thumbnails/1596809708_e24f4076-9d8f-436b-ac1e-37d7ce28359d.JPG', 34.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:40', 0, NULL, NULL, NULL, 0, 0),
(18, '135043440', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Galilea', 'galilea', '1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG', '1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG', NULL, '41,40,39,38,37,36', '1,0,0,0,1,0', '23.95,23.95,23.95,23.95,23.95,23.95', 'BLANC', 'assets/images/thumbnails/1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG,assets/images/thumbnails/1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG,assets/images/thumbnails/1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG,assets/images/thumbnails/1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG,assets/images/thumbnails/1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG,assets/images/thumbnails/1596809991_79a40387-21b7-4210-a361-d4cf4c3aa60d.JPG', 23.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:38', 0, NULL, NULL, NULL, 0, 0),
(19, '135043446', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Piaf', 'piaf', '1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG', '1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG', NULL, '41,40,39,38,37,36', '1,2,0,1,2,0', '22.95,22.95,22.95,22.95,22.95,22.95', 'CHOCO', 'assets/images/thumbnails/1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG,assets/images/thumbnails/1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG,assets/images/thumbnails/1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG,assets/images/thumbnails/1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG,assets/images/thumbnails/1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG,assets/images/thumbnails/1596809991_24b83244-3546-4af4-a577-b20dd5e97008.JPG', 22.95, NULL, NULL, 27, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:37', 0, NULL, NULL, NULL, 0, 0),
(20, '135043649', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Evolet', 'evolet', '1597134675_6121ec92-2f3e-40cb-bb11-a9843fe65cc7.JPG', '1597134675_6121ec92-2f3e-40cb-bb11-a9843fe65cc7.JPG', NULL, 'S', '3', '32.95', 'NOIR', 'assets/images/thumbnails/1597134675_6121ec92-2f3e-40cb-bb11-a9843fe65cc7.JPG', 32.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:34', 0, NULL, NULL, NULL, 0, 0),
(21, '135044179', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Chrissy', 'chrissy', '1598209551_1f05450e-66bf-440d-840b-1fa4d35accab.JPG', '1598209551_1f05450e-66bf-440d-840b-1fa4d35accab.JPG', NULL, 'M/L,S/M', '0,0', '69.95,69.95', 'JAUNE', 'assets/images/thumbnails/1598209551_1f05450e-66bf-440d-840b-1fa4d35accab.JPG,assets/images/thumbnails/1598209551_1f05450e-66bf-440d-840b-1fa4d35accab.JPG', 69.95, NULL, NULL, 15, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:32', 0, NULL, NULL, NULL, 0, 0),
(22, '135044265', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Cassadee', 'cassadee', '1598309242_IMG_2112.JPG', '1598309242_IMG_2112.JPG', NULL, 'T.U', '47', '7.95', 'BLANC', 'assets/images/thumbnails/1598309242_IMG_2112.JPG', 7.95, NULL, NULL, 47, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 11:12:57', 0, NULL, NULL, NULL, 0, 0),
(23, '135044268', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Laney', 'laney', '1598309242_IMG_2111.JPG', '1598309242_IMG_2111.JPG', NULL, 'T.U', '12', '9.95', 'MOUTARD', 'assets/images/thumbnails/1598309242_IMG_2111.JPG', 9.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:29', 0, NULL, NULL, NULL, 0, 0),
(24, '135044344', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Natalee', 'natalee', '1598518615_10da1f81-eb33-4396-b6e7-a2872878c212.JPG', '1598518615_10da1f81-eb33-4396-b6e7-a2872878c212.JPG', NULL, 'L,S,M', '2,2,1', '39.95,39.95,39.95', 'NOIR', 'assets/images/thumbnails/1598518615_10da1f81-eb33-4396-b6e7-a2872878c212.JPG,assets/images/thumbnails/1598518615_10da1f81-eb33-4396-b6e7-a2872878c212.JPG,assets/images/thumbnails/1598518615_10da1f81-eb33-4396-b6e7-a2872878c212.JPG', 39.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:25', 0, NULL, NULL, NULL, 0, 0),
(25, '135044551', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Mason', 'mason', '1598975875_d836ac79-b9c5-4f06-b0c0-ce689b241f28.JPG', '1598975875_d836ac79-b9c5-4f06-b0c0-ce689b241f28.JPG', NULL, 'XL,L,M,S', '3,2,1,-3', '29.95,29.95,29.95,29.95', 'BLANC', 'assets/images/thumbnails/1598975875_d836ac79-b9c5-4f06-b0c0-ce689b241f28.JPG,assets/images/thumbnails/1598975875_d836ac79-b9c5-4f06-b0c0-ce689b241f28.JPG,assets/images/thumbnails/1598975875_d836ac79-b9c5-4f06-b0c0-ce689b241f28.JPG,assets/images/thumbnails/1598975875_d836ac79-b9c5-4f06-b0c0-ce689b241f28.JPG', 29.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:22', 0, NULL, NULL, NULL, 0, 0),
(26, '135044552', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Chevelle', 'chevelle', '1598975875_7700fd8d-ab3e-461d-9c88-843adb2c96e8.JPG', '1598975875_7700fd8d-ab3e-461d-9c88-843adb2c96e8.JPG', NULL, 'XL,L,M,S', '-1,2,0,2', '26.95,26.95,26.95,26.95', 'CHOCO', 'assets/images/thumbnails/1598975875_7700fd8d-ab3e-461d-9c88-843adb2c96e8.JPG,assets/images/thumbnails/1598975876_7700fd8d-ab3e-461d-9c88-843adb2c96e8.JPG,assets/images/thumbnails/1598975876_7700fd8d-ab3e-461d-9c88-843adb2c96e8.JPG,assets/images/thumbnails/1598975876_7700fd8d-ab3e-461d-9c88-843adb2c96e8.JPG', 26.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:20', 0, NULL, NULL, NULL, 0, 0),
(27, '135044609', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Theo', 'theo', '1598984000_5aeb447f-a6ab-48eb-92dd-a3b0470af28c.JPG', '1598984000_5aeb447f-a6ab-48eb-92dd-a3b0470af28c.JPG', NULL, 'L/XL,M/L', '5,4', '89.95,89.95', 'BLUE', 'assets/images/thumbnails/1598984000_5aeb447f-a6ab-48eb-92dd-a3b0470af28c.JPG,assets/images/thumbnails/1598984000_5aeb447f-a6ab-48eb-92dd-a3b0470af28c.JPG', 89.95, NULL, NULL, 16, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:18', 0, NULL, NULL, NULL, 0, 0),
(28, '135044803', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Maleigha', 'maleigha', '1599771594_5f916797-8282-41a5-b91a-a917cc33b232.JPG', '1599771594_5f916797-8282-41a5-b91a-a917cc33b232.JPG', NULL, 'T.U', '0', '34.95', 'BLUE', 'assets/images/thumbnails/1599771594_5f916797-8282-41a5-b91a-a917cc33b232.JPG', 34.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:16', 0, NULL, NULL, NULL, 0, 0),
(29, '135044805', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Erynn', 'erynn', '1599771594_8384eabf-2555-4264-8aee-2c1c790b8581.JPG', '1599771594_8384eabf-2555-4264-8aee-2c1c790b8581.JPG', NULL, 'T.U', '-3', '34.95', 'NOIR', 'assets/images/thumbnails/1599771594_8384eabf-2555-4264-8aee-2c1c790b8581.JPG', 34.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:14', 0, NULL, NULL, NULL, 0, 0),
(30, '135044994', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Valencia', 'valencia', '1600378399_325f1433-d832-4aa1-b73b-8ed5e2edbfa5.JPG', '1600378399_325f1433-d832-4aa1-b73b-8ed5e2edbfa5.JPG', NULL, 'L,M,S', '0,0,0', '39.95,39.95,39.95', 'NOIR', 'assets/images/thumbnails/1600378399_325f1433-d832-4aa1-b73b-8ed5e2edbfa5.JPG,assets/images/thumbnails/1600378399_325f1433-d832-4aa1-b73b-8ed5e2edbfa5.JPG,assets/images/thumbnails/1600378399_325f1433-d832-4aa1-b73b-8ed5e2edbfa5.JPG', 39.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:12', 0, NULL, NULL, NULL, 0, 0),
(31, '135044997', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Raimonda', 'raimonda', '1600378399_44fd3c63-42d4-4b07-bb33-af755b67271c.JPG', '1600378399_44fd3c63-42d4-4b07-bb33-af755b67271c.JPG', NULL, 'L,M,S', '3,0,0', '39.95,39.95,39.95', 'NOIR', 'assets/images/thumbnails/1600378399_44fd3c63-42d4-4b07-bb33-af755b67271c.JPG,assets/images/thumbnails/1600378399_44fd3c63-42d4-4b07-bb33-af755b67271c.JPG,assets/images/thumbnails/1600378399_44fd3c63-42d4-4b07-bb33-af755b67271c.JPG', 39.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:10', 0, NULL, NULL, NULL, 0, 0),
(32, '135045000', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Aeris', 'aeris', '1600380316_a83205a6-8ecd-4590-a432-9f33f618969b.JPG', '1600380316_a83205a6-8ecd-4590-a432-9f33f618969b.JPG', NULL, 'XL,L,M,S', '0,0,0,0', '79.95,79.95,79.95,79.95', 'NOIR', 'assets/images/thumbnails/1600380316_a83205a6-8ecd-4590-a432-9f33f618969b.JPG,assets/images/thumbnails/1600380317_a83205a6-8ecd-4590-a432-9f33f618969b.JPG,assets/images/thumbnails/1600380317_a83205a6-8ecd-4590-a432-9f33f618969b.JPG,assets/images/thumbnails/1600380317_a83205a6-8ecd-4590-a432-9f33f618969b.JPG', 79.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:08', 0, NULL, NULL, NULL, 0, 0),
(33, '135045004', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Emerie', 'emerie', '1600380317_24f2a4be-2c00-46b8-ba2e-00d49ad41891.JPG', '1600380317_24f2a4be-2c00-46b8-ba2e-00d49ad41891.JPG', NULL, 'L,M,S', '0,0,0', '49.95,49.95,49.95', 'BLUE', 'assets/images/thumbnails/1600380317_24f2a4be-2c00-46b8-ba2e-00d49ad41891.JPG,assets/images/thumbnails/1600380317_24f2a4be-2c00-46b8-ba2e-00d49ad41891.JPG,assets/images/thumbnails/1600380317_24f2a4be-2c00-46b8-ba2e-00d49ad41891.JPG', 49.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:05', 0, NULL, NULL, NULL, 0, 0),
(34, '135045168', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Austen', 'austen', '1600976964_c9cbe806-1d6b-4433-a189-517a72ee6037.JPG', '1600976964_c9cbe806-1d6b-4433-a189-517a72ee6037.JPG', NULL, 'L,M,S', '0,2,1', '23.95,23.95,23.95', 'CHOCO', 'assets/images/thumbnails/1600976964_c9cbe806-1d6b-4433-a189-517a72ee6037.JPG,assets/images/thumbnails/1600976964_c9cbe806-1d6b-4433-a189-517a72ee6037.JPG,assets/images/thumbnails/1600976965_c9cbe806-1d6b-4433-a189-517a72ee6037.JPG', 23.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:03', 0, NULL, NULL, NULL, 0, 0),
(35, '135045171', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Raelyn', 'raelyn', '1600976965_6e94e347-0457-4723-9319-33214d7bb1c5.JPG', '1600976965_6e94e347-0457-4723-9319-33214d7bb1c5.JPG', NULL, 'L,M,S', '0,0,2', '25.95,25.95,25.95', 'BLUE', 'assets/images/thumbnails/1600976965_6e94e347-0457-4723-9319-33214d7bb1c5.JPG,assets/images/thumbnails/1600976965_6e94e347-0457-4723-9319-33214d7bb1c5.JPG,assets/images/thumbnails/1600976965_6e94e347-0457-4723-9319-33214d7bb1c5.JPG', 25.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:19:02', 0, NULL, NULL, NULL, 0, 0),
(36, '135045174', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Vanesa', 'vanesa', '1600976965_eef3cfb0-c723-4c22-9921-cf3cf61d6312.JPG', '1600976965_eef3cfb0-c723-4c22-9921-cf3cf61d6312.JPG', NULL, 'L,M,S', '0,3,1', '24.95,24.95,24.95', 'CHOCO', 'assets/images/thumbnails/1600976965_eef3cfb0-c723-4c22-9921-cf3cf61d6312.JPG,assets/images/thumbnails/1600976965_eef3cfb0-c723-4c22-9921-cf3cf61d6312.JPG,assets/images/thumbnails/1600976965_eef3cfb0-c723-4c22-9921-cf3cf61d6312.JPG', 24.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:58', 0, NULL, NULL, NULL, 0, 0),
(37, '135045202', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Zipporah', 'zipporah', '1601018202_abd87253-2914-4ca0-b0eb-4f56f0e272fe.JPG', '1601018202_abd87253-2914-4ca0-b0eb-4f56f0e272fe.JPG', NULL, 'M/L,S/M', '1,0', '27.95,27.95', 'CHOCO', 'assets/images/thumbnails/1601018202_abd87253-2914-4ca0-b0eb-4f56f0e272fe.JPG,assets/images/thumbnails/1601018202_abd87253-2914-4ca0-b0eb-4f56f0e272fe.JPG', 27.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:57', 0, NULL, NULL, NULL, 0, 0),
(38, '135045207', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Carmina', 'carmina', '1601018202_e1da43e5-ca1c-42ed-ac3b-7e587ca1b223.JPG', '1601018202_e1da43e5-ca1c-42ed-ac3b-7e587ca1b223.JPG', NULL, 'T.U', '1', '29.95', 'BLUE', 'assets/images/thumbnails/1601018202_e1da43e5-ca1c-42ed-ac3b-7e587ca1b223.JPG', 29.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:54', 0, NULL, NULL, NULL, 0, 0),
(39, '135045208', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Elleigh', 'elleigh', '1601018202_765aba28-e78d-40b7-b2f4-0191c8f9c4b4.JPG', '1601018202_765aba28-e78d-40b7-b2f4-0191c8f9c4b4.JPG', NULL, 'T.U', '0', '24.95', 'JAUNE', 'assets/images/thumbnails/1601018202_765aba28-e78d-40b7-b2f4-0191c8f9c4b4.JPG', 24.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:52', 0, NULL, NULL, NULL, 0, 0),
(40, '135045258', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Brooklyn', 'brooklyn', '1601024779_828ade74-f6b8-46b0-8475-530bc9a3db21.JPG', '1601024779_828ade74-f6b8-46b0-8475-530bc9a3db21.JPG', NULL, 'T.U', '84', '5.95', 'CHOCO', 'assets/images/thumbnails/1601024779_828ade74-f6b8-46b0-8475-530bc9a3db21.JPG', 5.95, NULL, NULL, 84, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:50', 0, NULL, NULL, NULL, 0, 0),
(41, '135045359', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Caiden', 'caiden', '1601458515_6062f3ba-6eaf-4de6-aa47-0eb059ff576b.JPG', '1601458515_6062f3ba-6eaf-4de6-aa47-0eb059ff576b.JPG', NULL, 'XL,L,M,S', '1,1,1,1', '74.95,74.95,74.95,74.95', 'BLANC', 'assets/images/thumbnails/1601458515_6062f3ba-6eaf-4de6-aa47-0eb059ff576b.JPG,assets/images/thumbnails/1601458515_6062f3ba-6eaf-4de6-aa47-0eb059ff576b.JPG,assets/images/thumbnails/1601458515_6062f3ba-6eaf-4de6-aa47-0eb059ff576b.JPG,assets/images/thumbnails/1601458515_6062f3ba-6eaf-4de6-aa47-0eb059ff576b.JPG', 74.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:47', 0, NULL, NULL, NULL, 0, 0),
(42, '135045368', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Liocadia', 'liocadia', '1601460033_67f462ca-7296-48ea-84a9-2c09c9d8b16c.JPG', '1601460033_67f462ca-7296-48ea-84a9-2c09c9d8b16c.JPG', NULL, 'T.U', '1', '23.95', 'BAIGE', 'assets/images/thumbnails/1601460033_67f462ca-7296-48ea-84a9-2c09c9d8b16c.JPG', 23.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:45', 0, NULL, NULL, NULL, 0, 0),
(43, '135045373', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Channing', 'channing', '1601460033_2af231cb-863c-4b1d-9235-bcab69b4a927.JPG', '1601460033_2af231cb-863c-4b1d-9235-bcab69b4a927.JPG', NULL, 'T.U', '5', '30.95', 'BAIGE', 'assets/images/thumbnails/1601460033_2af231cb-863c-4b1d-9235-bcab69b4a927.JPG', 30.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:43', 0, NULL, NULL, NULL, 0, 0),
(44, '135045599', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Liyah', 'liyah', '1601796489_674de6fc-fd62-4b24-8c03-f426ca00a2d7.JPG', '1601796489_674de6fc-fd62-4b24-8c03-f426ca00a2d7.JPG', NULL, 'T.U', '0', '29.95', '00', 'assets/images/thumbnails/1601796489_674de6fc-fd62-4b24-8c03-f426ca00a2d7.JPG', 29.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:41', 0, NULL, NULL, NULL, 0, 0),
(45, '135045600', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Jiselle', 'jiselle', '1601796489_beb752f2-8ca8-4397-8838-3dd43d59ee88.JPG', '1601796489_beb752f2-8ca8-4397-8838-3dd43d59ee88.JPG', NULL, 'L,M,S', '0,0,1', '20.95,20.95,20.95', '00', 'assets/images/thumbnails/1601796489_beb752f2-8ca8-4397-8838-3dd43d59ee88.JPG,assets/images/thumbnails/1601796489_beb752f2-8ca8-4397-8838-3dd43d59ee88.JPG,assets/images/thumbnails/1601796489_beb752f2-8ca8-4397-8838-3dd43d59ee88.JPG', 20.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:39', 0, NULL, NULL, NULL, 0, 0),
(46, '135045603', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Theia', 'theia', '1601796489_e64d1163-0f7a-47ef-bff0-f60ef3de58b9.JPG', '1601796489_e64d1163-0f7a-47ef-bff0-f60ef3de58b9.JPG', NULL, 'T.U', '1', '49.95', '00', 'assets/images/thumbnails/1601796489_e64d1163-0f7a-47ef-bff0-f60ef3de58b9.JPG', 49.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:37', 0, NULL, NULL, NULL, 0, 0),
(47, '135045605', 'normal', NULL, 0, 4, 20, 5, NULL, 'Seren', 'seren', '1601796489_713d52b8-4d41-4f2b-a808-f2a03da6c3fb.JPG', '1601796489_713d52b8-4d41-4f2b-a808-f2a03da6c3fb.JPG', NULL, 'T.U', '2', '29.95', '00', 'assets/images/thumbnails/1601796489_713d52b8-4d41-4f2b-a808-f2a03da6c3fb.JPG', 29.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:34', 0, NULL, NULL, NULL, 0, 0),
(48, '135045662', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Rosario', 'rosario', '1602052906_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG', '1602052906_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG', NULL, '41,40,39,38,37,36', '0,1,1,0,1,-1', '36.95,36.95,36.95,36.95,36.95,36.95', '00', 'assets/images/thumbnails/1602052906_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG,assets/images/thumbnails/1602052906_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG,assets/images/thumbnails/1602052906_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG,assets/images/thumbnails/1602052906_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG,assets/images/thumbnails/1602052907_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG,assets/images/thumbnails/1602052907_C3675317-41BF-4071-BD55-6C60BC6934C5.JPG', 36.95, NULL, NULL, 21, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:32', 0, NULL, NULL, NULL, 0, 0),
(49, '135045668', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Pierra', 'pierra', '1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG', '1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG', NULL, '41,40,39,38,37,36', '0,0,1,0,2,-1', '29.95,29.95,29.95,29.95,29.95,29.95', '00', 'assets/images/thumbnails/1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG,assets/images/thumbnails/1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG,assets/images/thumbnails/1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG,assets/images/thumbnails/1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG,assets/images/thumbnails/1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG,assets/images/thumbnails/1602052907_2a80992b-39d6-4c66-a23b-2dbc760df406.JPG', 29.95, NULL, NULL, 12, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:30', 0, NULL, NULL, NULL, 0, 0),
(50, '135045674', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Avonlea', 'avonlea', '1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG', '1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG', NULL, '41,40,39,38,37,36', '1,0,0,0,0,0', '29.95,29.95,29.95,29.95,29.95,29.95', '00', 'assets/images/thumbnails/1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG,assets/images/thumbnails/1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG,assets/images/thumbnails/1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG,assets/images/thumbnails/1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG,assets/images/thumbnails/1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG,assets/images/thumbnails/1602052907_a5c6b369-a7d7-4dcf-a852-15194a1dba82.JPG', 29.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:28', 0, NULL, NULL, NULL, 0, 0),
(51, '135045680', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Riyah', 'riyah', '1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG', '1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG', NULL, '41,40,39,38,37,36', '0,1,0,1,2,-1', '29.95,29.95,29.95,29.95,29.95,29.95', '00', 'assets/images/thumbnails/1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG,assets/images/thumbnails/1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG,assets/images/thumbnails/1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG,assets/images/thumbnails/1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG,assets/images/thumbnails/1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG,assets/images/thumbnails/1602053523_f0aff7df-51e3-43c0-8c1f-ab61075a3a7c.JPG', 29.95, NULL, NULL, 21, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:24', 0, NULL, NULL, NULL, 0, 0),
(52, '135045686', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Onyx', 'onyx', '1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg', '1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg', NULL, '41,40,39,38,37,36', '1,0,0,0,0,0', '23.95,23.95,23.95,23.95,23.95,23.95', '00', 'assets/images/thumbnails/1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg,assets/images/thumbnails/1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg,assets/images/thumbnails/1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg,assets/images/thumbnails/1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg,assets/images/thumbnails/1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg,assets/images/thumbnails/1602053523_E6D7E27D-4E34-4AFD-9941-3B2D2EEC1D2D.jpg', 23.95, NULL, NULL, 20, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:26', 0, NULL, NULL, NULL, 0, 0),
(53, '135045692', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Ophelia', 'ophelia', '1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG', '1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG', NULL, '41,40,39,38,37,36', '0,3,0,0,-1,1', '33.95,33.95,33.95,33.95,33.95,33.95', '00', 'assets/images/thumbnails/1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG,assets/images/thumbnails/1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG,assets/images/thumbnails/1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG,assets/images/thumbnails/1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG,assets/images/thumbnails/1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG,assets/images/thumbnails/1602053524_3ea9729e-6997-43fa-9df1-97e9d01fbdc7.JPG', 33.95, NULL, NULL, 21, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:22', 0, NULL, NULL, NULL, 0, 0),
(54, '135045698', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Brithany', 'brithany', '1602053524_1756B3D9-80EC-4693-9159-C3B055DBB1FA.JPG', '1602053524_1756B3D9-80EC-4693-9159-C3B055DBB1FA.JPG', NULL, '41,40,39,38,37,36', '0,1,0,3,0,0', '33.95,33.95,33.95,33.95,33.95,33.95', '00', 'assets/images/thumbnails/1602053524_1756B3D9-80EC-4693-9159-C3B055DBB1FA.JPG,assets/images/thumbnails/1602053524_1756B3D9-80EC-4693-9159-C3B055DBB1FA.JPG,assets/images/thumbnails/default.png,assets/images/thumbnails/default.png,assets/images/thumbnails/default.png,assets/images/thumbnails/default.png', 33.95, NULL, NULL, 21, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:19', 0, NULL, NULL, NULL, 0, 0),
(55, '135045704', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Gaia', 'gaia', '1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG', '1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG', NULL, '41,40,39,38,37,36', '2,0,4,2,0,2', '36.95,36.95,36.95,36.95,36.95,36.95', '00', 'assets/images/thumbnails/1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG,assets/images/thumbnails/1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG,assets/images/thumbnails/1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG,assets/images/thumbnails/1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG,assets/images/thumbnails/1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG,assets/images/thumbnails/1602054817_CB0F4635-675C-449A-AA2E-D084157F0B0E.JPG', 36.95, NULL, NULL, 40, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:18', 0, NULL, NULL, NULL, 0, 0),
(56, '135045710', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Georgiana', 'georgiana', '1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG', '1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG', NULL, '41,40,39,38,37,36', '1,3,4,3,2,-3', '36.95,36.95,36.95,36.95,36.95,36.95', '00', 'assets/images/thumbnails/1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG,assets/images/thumbnails/1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG,assets/images/thumbnails/1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG,assets/images/thumbnails/1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG,assets/images/thumbnails/1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG,assets/images/thumbnails/1602054817_021A0A12-FAD0-461D-A6E6-4995518EE558.JPG', 36.95, NULL, NULL, 31, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:16', 0, NULL, NULL, NULL, 0, 0),
(57, '135045716', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Landry', 'landry', '1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG', '1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG', NULL, '41,40,39,38,37,36', '0,8,4,-2,-2,0', '35.95,35.95,35.95,35.95,35.95,35.95', '00', 'assets/images/thumbnails/1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG,assets/images/thumbnails/1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG,assets/images/thumbnails/1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG,assets/images/thumbnails/1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG,assets/images/thumbnails/1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG,assets/images/thumbnails/1602054935_914F73CD-6A07-4726-87E5-E0309C0E8EB5.JPG', 35.95, NULL, NULL, 40, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:14', 0, NULL, NULL, NULL, 0, 0),
(58, '135045722', 'normal', NULL, 0, 3, 9, NULL, NULL, 'Paityn', 'paityn', '1602055074_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG', '1602055074_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG', NULL, '41,40,39,38,37,36', '2,1,-1,0,1,0', '34.95,34.95,34.95,34.95,34.95,34.95', '00', 'assets/images/thumbnails/1602055074_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG,assets/images/thumbnails/default.png,assets/images/thumbnails/1602055091_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG,assets/images/thumbnails/1602055066_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG,assets/images/thumbnails/1602055054_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG,assets/images/thumbnails/1602055082_2e9e7574-8570-476c-906b-a4c77bd0d942.JPG', 34.95, NULL, NULL, 31, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:11', 0, NULL, NULL, NULL, 0, 0),
(59, '135045883', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Laken', 'laken', '1602590500_2c9b7539-4233-41e5-9502-8b1809a5bd2b.JPG', '1602590500_2c9b7539-4233-41e5-9502-8b1809a5bd2b.JPG', NULL, 'T.U', '1', '35.95', '00', 'assets/images/thumbnails/1602590500_2c9b7539-4233-41e5-9502-8b1809a5bd2b.JPG', 35.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:09', 0, NULL, NULL, NULL, 0, 0),
(60, '135045884', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Dawson', 'dawson', '1602590500_28b228d9-7b41-478c-9c1b-ebdbe21cdaf9.JPG', '1602590500_28b228d9-7b41-478c-9c1b-ebdbe21cdaf9.JPG', NULL, 'T.U', '0', '24.95', '00', 'assets/images/thumbnails/1602590500_28b228d9-7b41-478c-9c1b-ebdbe21cdaf9.JPG', 24.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:06', 0, NULL, NULL, NULL, 0, 0),
(61, '135045888', 'normal', NULL, 0, 4, 20, 6, NULL, 'Taniyah', 'taniyah', '1602591532_bad735a0-b1cd-44a0-9b6d-9d21518a9825.JPG', '1602591532_bad735a0-b1cd-44a0-9b6d-9d21518a9825.JPG', NULL, 'T.U', '1', '18.95', '00', 'assets/images/thumbnails/1602591532_bad735a0-b1cd-44a0-9b6d-9d21518a9825.JPG', 18.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:04', 0, NULL, NULL, NULL, 0, 0),
(62, '135045893', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Caris', 'caris', '1602591654_63678494-00d7-471c-865f-ffdfcfddfc2f.JPG', '1602591654_63678494-00d7-471c-865f-ffdfcfddfc2f.JPG', NULL, 'T.U', '0', '21.95', '00', 'assets/images/thumbnails/1602591654_63678494-00d7-471c-865f-ffdfcfddfc2f.JPG', 21.95, NULL, NULL, 14, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:02', 0, NULL, NULL, NULL, 0, 0),
(63, '135045894', 'normal', NULL, 0, 4, 20, 6, NULL, 'Emely', 'emely', '1602591654_ee446af7-5f1e-473b-b4ea-aa1733bcc432.JPG', '1602591654_ee446af7-5f1e-473b-b4ea-aa1733bcc432.JPG', NULL, 'T.U', '0', '24.95', '00', 'assets/images/thumbnails/1602591654_ee446af7-5f1e-473b-b4ea-aa1733bcc432.JPG', 24.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:18:00', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `color_image`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(64, '135045895', 'normal', NULL, 0, 4, 20, 6, NULL, 'Antoinette', 'antoinette', '1602591654_aab3bcae-25d0-418b-87ad-aca7810fcad5.JPG', '1602591654_aab3bcae-25d0-418b-87ad-aca7810fcad5.JPG', NULL, 'T.U', '5', '13.95', '00', 'assets/images/thumbnails/1602591654_aab3bcae-25d0-418b-87ad-aca7810fcad5.JPG', 13.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:58', 0, NULL, NULL, NULL, 0, 0),
(65, '135045896', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Dezire', 'dezire', '1602591654_d33f3416-99a2-487c-81fa-7bc102ea4bdf.JPG', '1602591654_d33f3416-99a2-487c-81fa-7bc102ea4bdf.JPG', NULL, 'T.U', '0', '34.95', '00', 'assets/images/thumbnails/1602591654_d33f3416-99a2-487c-81fa-7bc102ea4bdf.JPG', 34.95, NULL, NULL, 13, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:55', 0, NULL, NULL, NULL, 0, 0),
(66, '135045910', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Effie', 'effie', '1602600042_47c44ebb-b45f-4e3d-8f81-fd40149febf7.JPG', '1602600042_47c44ebb-b45f-4e3d-8f81-fd40149febf7.JPG', NULL, 'T.U', '-2', '27.95', '00', 'assets/images/thumbnails/1602600042_47c44ebb-b45f-4e3d-8f81-fd40149febf7.JPG', 27.95, NULL, NULL, 21, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:53', 0, NULL, NULL, NULL, 0, 0),
(67, '135045913', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Clarita', 'clarita', '1602600042_b042364a-206f-4cf2-9ddb-e93fc5b85e07.JPG', '1602600042_b042364a-206f-4cf2-9ddb-e93fc5b85e07.JPG', NULL, 'T.U', '1', '24.95', '00', 'assets/images/thumbnails/1602600042_b042364a-206f-4cf2-9ddb-e93fc5b85e07.JPG', 24.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:51', 0, NULL, NULL, NULL, 0, 0),
(68, '135045935', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Zylah', 'zylah', '1602605645_7d42d21d-da90-4d82-841c-21e103c8aaff.JPG', '1602605645_7d42d21d-da90-4d82-841c-21e103c8aaff.JPG', NULL, 'M/L,S/M', '1,1', '69.95,69.95', '00', 'assets/images/thumbnails/1602605645_7d42d21d-da90-4d82-841c-21e103c8aaff.JPG,assets/images/thumbnails/1602605645_7d42d21d-da90-4d82-841c-21e103c8aaff.JPG', 69.95, NULL, NULL, 13, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:49', 0, NULL, NULL, NULL, 0, 0),
(69, '135046170', 'normal', NULL, 0, 4, 20, 6, NULL, 'Harbor', 'harbor', '1603486843_31900e87-17fb-4ca0-a4df-76543d38a24b.JPG', '1603486843_31900e87-17fb-4ca0-a4df-76543d38a24b.JPG', NULL, 'T.U', '0', '16.95', '00', 'assets/images/thumbnails/1603486843_31900e87-17fb-4ca0-a4df-76543d38a24b.JPG', 16.95, NULL, NULL, 14, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:42', 0, NULL, NULL, NULL, 0, 0),
(70, '135046171', 'normal', NULL, 0, 4, 20, 6, NULL, 'Adamaris', 'adamaris', '1603486843_bd8c8f1a-62ca-4190-ab9f-128d73074aaa.JPG', '1603486843_bd8c8f1a-62ca-4190-ab9f-128d73074aaa.JPG', NULL, 'T.U', '0', '25.95', '00', 'assets/images/thumbnails/1603486843_bd8c8f1a-62ca-4190-ab9f-128d73074aaa.JPG', 25.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:40', 0, NULL, NULL, NULL, 0, 0),
(71, '135046172', 'normal', NULL, 0, 4, 20, 6, NULL, 'Doroth_e', 'doroth_e', '1603486843_8cb1705c-0da5-4082-b807-4de71895172d.JPG', '1603486843_8cb1705c-0da5-4082-b807-4de71895172d.JPG', NULL, 'T.U', '2', '28.95', '00', 'assets/images/thumbnails/1603486843_8cb1705c-0da5-4082-b807-4de71895172d.JPG', 28.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:37', 0, NULL, NULL, NULL, 0, 0),
(72, '135046173', 'normal', NULL, 0, 4, 20, 5, NULL, 'Camellia', 'camellia', '1603486843_7ac177e5-0489-4164-8afa-9a6d9ffa0ad7.JPG', '1603486843_7ac177e5-0489-4164-8afa-9a6d9ffa0ad7.JPG', NULL, 'T.U', '0', '16.95', '00', 'assets/images/thumbnails/1603486843_7ac177e5-0489-4164-8afa-9a6d9ffa0ad7.JPG', 16.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:34', 0, NULL, NULL, NULL, 0, 0),
(73, '135046174', 'normal', NULL, 0, 4, 20, 5, NULL, 'Chantilly', 'chantilly', '1603486843_403900f7-6ef8-4047-85a4-d17fbb7284f8.JPG', '1603486843_403900f7-6ef8-4047-85a4-d17fbb7284f8.JPG', NULL, 'T.U', '0', '25.95', '00', 'assets/images/thumbnails/1603486843_403900f7-6ef8-4047-85a4-d17fbb7284f8.JPG', 25.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:32', 0, NULL, NULL, NULL, 0, 0),
(74, '135046175', 'normal', NULL, 0, 4, 20, 6, NULL, 'Nola', 'nola', '1603486843_7bbd94d8-aa34-4ea8-b9fb-2a5660cf9ae7.JPG', '1603486843_7bbd94d8-aa34-4ea8-b9fb-2a5660cf9ae7.JPG', NULL, 'T.U', '4', '16.95', '00', 'assets/images/thumbnails/1603486843_7bbd94d8-aa34-4ea8-b9fb-2a5660cf9ae7.JPG', 16.95, NULL, NULL, 16, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:29', 0, NULL, NULL, NULL, 0, 0),
(75, '135046176', 'normal', NULL, 0, 4, 20, 6, NULL, 'Berenice', 'berenice', '1603486843_db9caf55-4350-494f-a9b7-01f2d795a6dd.JPG', '1603486843_db9caf55-4350-494f-a9b7-01f2d795a6dd.JPG', NULL, 'T.U', '2', '17.95', '00', 'assets/images/thumbnails/1603486843_db9caf55-4350-494f-a9b7-01f2d795a6dd.JPG', 17.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:27', 0, NULL, NULL, NULL, 0, 0),
(76, '135046177', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Suzanne', 'suzanne', '1603486843_23d91fc0-6ec5-40a3-8a18-90c61ee49203.JPG', '1603486843_23d91fc0-6ec5-40a3-8a18-90c61ee49203.JPG', NULL, 'L,M,S', '0,0,0', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1603486843_23d91fc0-6ec5-40a3-8a18-90c61ee49203.JPG,assets/images/thumbnails/1603486843_23d91fc0-6ec5-40a3-8a18-90c61ee49203.JPG,assets/images/thumbnails/1603486843_23d91fc0-6ec5-40a3-8a18-90c61ee49203.JPG', 34.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:25', 0, NULL, NULL, NULL, 0, 0),
(77, '135046180', 'normal', NULL, 0, 4, 20, 6, NULL, 'Eryn', 'eryn', '1603486843_398021ad-6a0d-4be7-bd81-beddfec79d1b.JPG', '1603486843_398021ad-6a0d-4be7-bd81-beddfec79d1b.JPG', NULL, 'T.U', '2', '17.95', '00', 'assets/images/thumbnails/1603486843_398021ad-6a0d-4be7-bd81-beddfec79d1b.JPG', 17.95, NULL, NULL, 16, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:05', '2021-05-25 03:17:22', 0, NULL, NULL, NULL, 0, 0),
(78, '135046181', 'normal', NULL, 0, 4, 20, 6, NULL, 'Collette', 'collette', '1603487064_1920ac5f-1804-4b4d-beb8-67f9e6330601.JPG', '1603487064_1920ac5f-1804-4b4d-beb8-67f9e6330601.JPG', NULL, 'T.U', '28', '14.95', '00', 'assets/images/thumbnails/1603487064_1920ac5f-1804-4b4d-beb8-67f9e6330601.JPG', 14.95, NULL, NULL, 28, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:20', 0, NULL, NULL, NULL, 0, 0),
(79, '135046182', 'normal', NULL, 0, 4, 20, 5, NULL, 'Elowen', 'elowen', '1603488060_95a5c05b-fe8d-4872-9df1-3e5d0693524e.JPG', '1603488060_95a5c05b-fe8d-4872-9df1-3e5d0693524e.JPG', NULL, 'T.U', '2', '29.95', '00', 'assets/images/thumbnails/1603488060_95a5c05b-fe8d-4872-9df1-3e5d0693524e.JPG', 29.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:18', 0, NULL, NULL, NULL, 0, 0),
(80, '135046185', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Kenleigh', 'kenleigh', '1603489721_dabbc3ab-c98d-46ea-9f4e-67243bb7dbd4.JPG', '1603489721_dabbc3ab-c98d-46ea-9f4e-67243bb7dbd4.JPG', NULL, 'M/L,S/M', '0,-1', '36.95,36.95', '00', 'assets/images/thumbnails/1603489721_dabbc3ab-c98d-46ea-9f4e-67243bb7dbd4.JPG,assets/images/thumbnails/1603489721_dabbc3ab-c98d-46ea-9f4e-67243bb7dbd4.JPG', 36.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:15', 0, NULL, NULL, NULL, 0, 0),
(81, '135046187', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Z_na', 'z_na', '1603489721_aa71087a-d07b-4fe3-8ecf-0181189e6ee4.JPG', '1603489721_aa71087a-d07b-4fe3-8ecf-0181189e6ee4.JPG', NULL, 'M/L,S/M', '0,0', '36.95,36.95', '00', 'assets/images/thumbnails/1603489721_aa71087a-d07b-4fe3-8ecf-0181189e6ee4.JPG,assets/images/thumbnails/1603489721_aa71087a-d07b-4fe3-8ecf-0181189e6ee4.JPG', 36.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:12', 0, NULL, NULL, NULL, 0, 0),
(82, '135046189', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Endia', 'endia', '1603489721_549c65c7-91c8-45e5-a55d-e27e13f6d8d3.JPG', '1603489721_549c65c7-91c8-45e5-a55d-e27e13f6d8d3.JPG', NULL, 'M/L,S/M', '0,0', '36.95,36.95', '00', 'assets/images/thumbnails/1603489721_549c65c7-91c8-45e5-a55d-e27e13f6d8d3.JPG,assets/images/thumbnails/1603489721_549c65c7-91c8-45e5-a55d-e27e13f6d8d3.JPG', 36.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:10', 0, NULL, NULL, NULL, 0, 0),
(83, '135046191', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Madaline', 'madaline', '1603489721_d6ee2cfa-78f9-4178-9e18-44c995d34073.JPG', '1603489721_d6ee2cfa-78f9-4178-9e18-44c995d34073.JPG', NULL, 'L,M,S', '0,2,0', '39.95,39.95,39.95', '00', 'assets/images/thumbnails/1603489721_d6ee2cfa-78f9-4178-9e18-44c995d34073.JPG,assets/images/thumbnails/1603489721_d6ee2cfa-78f9-4178-9e18-44c995d34073.JPG,assets/images/thumbnails/1603489721_d6ee2cfa-78f9-4178-9e18-44c995d34073.JPG', 39.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:08', 0, NULL, NULL, NULL, 0, 0),
(84, '135046194', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Safiya', 'safiya', '1603489721_8cc203c0-335a-416b-8617-efec307c012d.JPG', '1603489721_8cc203c0-335a-416b-8617-efec307c012d.JPG', NULL, 'L,M,S', '1,-1,0', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1603489721_8cc203c0-335a-416b-8617-efec307c012d.JPG,assets/images/thumbnails/1603489721_8cc203c0-335a-416b-8617-efec307c012d.JPG,assets/images/thumbnails/1603489721_8cc203c0-335a-416b-8617-efec307c012d.JPG', 34.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:05', 0, NULL, NULL, NULL, 0, 0),
(85, '135046197', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Posey', 'posey', '1603490773_f47320f0-1fd2-4c5a-a12c-de4e0892edf5.JPG', '1603490773_f47320f0-1fd2-4c5a-a12c-de4e0892edf5.JPG', NULL, 'T.U', '1', '39.95', '00', 'assets/images/thumbnails/1603490773_f47320f0-1fd2-4c5a-a12c-de4e0892edf5.JPG', 39.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:03', 0, NULL, NULL, NULL, 0, 0),
(86, '135046198', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Kezia', 'kezia', '1603490773_20997b4d-a255-40fc-ac9c-041583463d35.JPG', '1603490773_20997b4d-a255-40fc-ac9c-041583463d35.JPG', NULL, 'T.U', '0', '49.95', '00', 'assets/images/thumbnails/1603490773_20997b4d-a255-40fc-ac9c-041583463d35.JPG', 49.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:17:02', 0, NULL, NULL, NULL, 0, 0),
(87, '135046199', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Khushi', 'khushi', '1603490774_71f1ba31-5fef-4a45-bce1-59a765223189.JPG', '1603490774_71f1ba31-5fef-4a45-bce1-59a765223189.JPG', NULL, 'L,M,S', '1,-1,0', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1603490774_71f1ba31-5fef-4a45-bce1-59a765223189.JPG,assets/images/thumbnails/1603490774_71f1ba31-5fef-4a45-bce1-59a765223189.JPG,assets/images/thumbnails/1603490774_71f1ba31-5fef-4a45-bce1-59a765223189.JPG', 19.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:56', 0, NULL, NULL, NULL, 0, 0),
(88, '135046202', 'normal', NULL, 0, 4, 19, 1, NULL, 'Louella', 'louella', '1603490774_514ea9e5-65ce-4a85-b0b8-865c8f66b278.JPG', '1603490774_514ea9e5-65ce-4a85-b0b8-865c8f66b278.JPG', NULL, 'T.U', '0', '15.95', '00', 'assets/images/thumbnails/1603490774_514ea9e5-65ce-4a85-b0b8-865c8f66b278.JPG', 15.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:52', 0, NULL, NULL, NULL, 0, 0),
(89, '135046203', 'normal', NULL, 0, 4, 20, 5, NULL, 'Ruhi', 'ruhi', '1603490928_56db88c3-9b37-4c74-a482-32ff623c73de.JPG', '1603490928_56db88c3-9b37-4c74-a482-32ff623c73de.JPG', NULL, 'L,M,S', '1,1,2', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1603490928_56db88c3-9b37-4c74-a482-32ff623c73de.JPG,assets/images/thumbnails/1603490928_56db88c3-9b37-4c74-a482-32ff623c73de.JPG,assets/images/thumbnails/1603490928_56db88c3-9b37-4c74-a482-32ff623c73de.JPG', 19.95, NULL, NULL, 19, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:49', 0, NULL, NULL, NULL, 0, 0),
(90, '135046206', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Carleigh', 'carleigh', '1603491441_a1130b86-ae3a-43e2-87b1-7ebac6ecbf97.JPG', '1603491441_a1130b86-ae3a-43e2-87b1-7ebac6ecbf97.JPG', NULL, 'L,M,S', '1,2,1', '27.95,27.95,27.95', '00', 'assets/images/thumbnails/1603491441_a1130b86-ae3a-43e2-87b1-7ebac6ecbf97.JPG,assets/images/thumbnails/1603491441_a1130b86-ae3a-43e2-87b1-7ebac6ecbf97.JPG,assets/images/thumbnails/1603491441_a1130b86-ae3a-43e2-87b1-7ebac6ecbf97.JPG', 27.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:47', 0, NULL, NULL, NULL, 0, 0),
(91, '135046209', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Kyara', 'kyara', '1603491441_06b5928b-4823-4fe6-9ef4-426f92b60a15.JPG', '1603491441_06b5928b-4823-4fe6-9ef4-426f92b60a15.JPG', NULL, 'L,M,S', '0,0,0', '28.95,28.95,28.95', '00', 'assets/images/thumbnails/1603491441_06b5928b-4823-4fe6-9ef4-426f92b60a15.JPG,assets/images/thumbnails/1603491441_06b5928b-4823-4fe6-9ef4-426f92b60a15.JPG,assets/images/thumbnails/1603491441_06b5928b-4823-4fe6-9ef4-426f92b60a15.JPG', 28.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:44', 0, NULL, NULL, NULL, 0, 0),
(92, '135046212', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Teaghan', 'teaghan', '1603491441_fba593cb-e728-4427-8876-23faace6a67f.JPG', '1603491441_fba593cb-e728-4427-8876-23faace6a67f.JPG', NULL, 'L,M,S', '1,2,0', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1603491441_fba593cb-e728-4427-8876-23faace6a67f.JPG,assets/images/thumbnails/1603491441_fba593cb-e728-4427-8876-23faace6a67f.JPG,assets/images/thumbnails/1603491441_fba593cb-e728-4427-8876-23faace6a67f.JPG', 29.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:42', 0, NULL, NULL, NULL, 0, 0),
(93, '135046215', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Pinelopi', 'pinelopi', '1603491962_4dc000ad-6811-4f45-9b8b-3a4cd969eef9.JPG', '1603491962_4dc000ad-6811-4f45-9b8b-3a4cd969eef9.JPG', NULL, 'XL,L,M,S', '1,2,0,2', '74.95,74.95,74.95,74.95', '00', 'assets/images/thumbnails/1603491962_4dc000ad-6811-4f45-9b8b-3a4cd969eef9.JPG,assets/images/thumbnails/1603491962_4dc000ad-6811-4f45-9b8b-3a4cd969eef9.JPG,assets/images/thumbnails/1603491962_4dc000ad-6811-4f45-9b8b-3a4cd969eef9.JPG,assets/images/thumbnails/1603491962_4dc000ad-6811-4f45-9b8b-3a4cd969eef9.JPG', 74.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:40', 0, NULL, NULL, NULL, 0, 0),
(94, '135046219', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Artemisia', 'artemisia', '1603491962_2470dcd5-038f-419d-8e42-438fa4e17077.JPG', '1603491962_2470dcd5-038f-419d-8e42-438fa4e17077.JPG', NULL, 'XL,L,M,S', '0,1,0,0', '45.95,45.95,45.95,45.95', '00', 'assets/images/thumbnails/1603491962_2470dcd5-038f-419d-8e42-438fa4e17077.JPG,assets/images/thumbnails/1603491962_2470dcd5-038f-419d-8e42-438fa4e17077.JPG,assets/images/thumbnails/1603491962_2470dcd5-038f-419d-8e42-438fa4e17077.JPG,assets/images/thumbnails/1603491962_2470dcd5-038f-419d-8e42-438fa4e17077.JPG', 45.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:37', 0, NULL, NULL, NULL, 0, 0),
(95, '135046223', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Columbita', 'columbita', '1603491962_ae4e6f41-01ed-44e0-921c-aeae75a6f691.JPG', '1603491962_ae4e6f41-01ed-44e0-921c-aeae75a6f691.JPG', NULL, 'XL,L,M,S', '1,1,0,0', '59.95,59.95,59.95,59.95', '00', 'assets/images/thumbnails/1603491962_ae4e6f41-01ed-44e0-921c-aeae75a6f691.JPG,assets/images/thumbnails/1603491962_ae4e6f41-01ed-44e0-921c-aeae75a6f691.JPG,assets/images/thumbnails/1603491962_ae4e6f41-01ed-44e0-921c-aeae75a6f691.JPG,assets/images/thumbnails/1603491962_ae4e6f41-01ed-44e0-921c-aeae75a6f691.JPG', 59.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:35', 0, NULL, NULL, NULL, 0, 0),
(96, '135046228', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Hadassa', 'hadassa', '1603536437_2eea3a86-f997-4e66-8dfb-eebcbccaf7fb.JPG', '1603536437_2eea3a86-f997-4e66-8dfb-eebcbccaf7fb.JPG', NULL, 'XL,L,M,S', '-1,1,1,1', '19.95,19.95,19.95,19.95', '00', 'assets/images/thumbnails/1603536437_2eea3a86-f997-4e66-8dfb-eebcbccaf7fb.JPG,assets/images/thumbnails/1603536438_2eea3a86-f997-4e66-8dfb-eebcbccaf7fb.JPG,assets/images/thumbnails/1603536438_2eea3a86-f997-4e66-8dfb-eebcbccaf7fb.JPG,assets/images/thumbnails/1603536438_2eea3a86-f997-4e66-8dfb-eebcbccaf7fb.JPG', 19.95, NULL, NULL, 20, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:32', 0, NULL, NULL, NULL, 0, 0),
(97, '135046234', 'normal', NULL, 0, 4, 21, 8, NULL, 'Marbella', 'marbella', '1603536438_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG', '1603536438_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG', NULL, 'XXL,XL,L,M,S', '11,10,4,7,-9', '26.95,26.95,26.95,26.95,26.95', '00', 'assets/images/thumbnails/1603536438_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG,assets/images/thumbnails/1603536438_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG,assets/images/thumbnails/1603536438_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG,assets/images/thumbnails/1603536439_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG,assets/images/thumbnails/1603536439_5c18d5ac-00ff-40b9-947b-aa2ca70a8c42.JPG', 26.95, NULL, NULL, 41, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:30', 0, NULL, NULL, NULL, 0, 0),
(98, '135046257', 'normal', NULL, 0, 1, 5, NULL, NULL, 'Akshara', 'akshara', '1603547128_e7e70a8f-a499-47c7-a269-e71514310fc2.JPG', '1603547128_e7e70a8f-a499-47c7-a269-e71514310fc2.JPG', NULL, 'T.U', '0', '39.95', '00', 'assets/images/thumbnails/1603547128_e7e70a8f-a499-47c7-a269-e71514310fc2.JPG', 39.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:27', 0, NULL, NULL, NULL, 0, 0),
(99, '135046643', 'normal', NULL, 0, 4, 20, 6, NULL, 'Eveline', 'eveline', '1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG', '1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG', NULL, 'XXL,XL,L,M,S', '14,16,18,16,-2', '17.95,17.95,17.95,17.95,17.95', '00', 'assets/images/thumbnails/1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG,assets/images/thumbnails/1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG,assets/images/thumbnails/1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG,assets/images/thumbnails/1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG,assets/images/thumbnails/1607418355_45c72065-5c49-4607-8e44-defd13f97b7c.JPG', 17.95, NULL, NULL, 91, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:25', 0, NULL, NULL, NULL, 0, 0),
(100, '135046647', 'normal', NULL, 0, 4, 20, 6, NULL, 'Aryanna', 'aryanna', '1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG', '1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG', NULL, 'XXL,XL,L,M,S', '-4,13,1,12,-4', '15.95,15.95,15.95,15.95,15.95', '00', 'assets/images/thumbnails/1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG,assets/images/thumbnails/1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG,assets/images/thumbnails/1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG,assets/images/thumbnails/1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG,assets/images/thumbnails/1607418450_48bfebc1-49c7-4161-9ae7-6c1739ec6c58.JPG', 15.95, NULL, NULL, 35, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:23', 0, NULL, NULL, NULL, 0, 0),
(101, '135046675', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Lorca', 'lorca', '1607427749_fbfa71d2-7172-4c6b-8fd6-9c4f93c25739.JPG', '1607427749_fbfa71d2-7172-4c6b-8fd6-9c4f93c25739.JPG', NULL, 'L,M,S', '-1,6,3', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1607427749_fbfa71d2-7172-4c6b-8fd6-9c4f93c25739.JPG,assets/images/thumbnails/1607427749_fbfa71d2-7172-4c6b-8fd6-9c4f93c25739.JPG,assets/images/thumbnails/1607427749_fbfa71d2-7172-4c6b-8fd6-9c4f93c25739.JPG', 29.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:21', 0, NULL, NULL, NULL, 0, 0),
(102, '135046686', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Alexus', 'alexus', '1607427750_57376478-8702-4846-960d-5e5ad6ddd00c.JPG', '1607427750_57376478-8702-4846-960d-5e5ad6ddd00c.JPG', NULL, 'L,M,S', '6,8,-3', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1607427750_57376478-8702-4846-960d-5e5ad6ddd00c.JPG,assets/images/thumbnails/1607427750_57376478-8702-4846-960d-5e5ad6ddd00c.JPG,assets/images/thumbnails/1607427750_57376478-8702-4846-960d-5e5ad6ddd00c.JPG', 29.95, NULL, NULL, 24, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:19', 0, NULL, NULL, NULL, 0, 0),
(103, '135046688', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Tamiyah', 'tamiyah', '1607427750_cd05ffc8-dbbc-4f51-88b3-a352b8c670ec.JPG', '1607427750_cd05ffc8-dbbc-4f51-88b3-a352b8c670ec.JPG', NULL, 'L,M,S', '2,0,1', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1607427750_cd05ffc8-dbbc-4f51-88b3-a352b8c670ec.JPG,assets/images/thumbnails/1607427750_cd05ffc8-dbbc-4f51-88b3-a352b8c670ec.JPG,assets/images/thumbnails/1607427750_cd05ffc8-dbbc-4f51-88b3-a352b8c670ec.JPG', 29.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:05', 0, NULL, NULL, NULL, 0, 0),
(104, '135046691', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Aurie', 'aurie', '1607428201_9a9789b4-a004-4d83-975a-0d66bdf4ea04.JPG', '1607428201_9a9789b4-a004-4d83-975a-0d66bdf4ea04.JPG', NULL, 'L,M,S', '1,0,0', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1607428201_9a9789b4-a004-4d83-975a-0d66bdf4ea04.JPG,assets/images/thumbnails/1607428201_9a9789b4-a004-4d83-975a-0d66bdf4ea04.JPG,assets/images/thumbnails/1607428202_9a9789b4-a004-4d83-975a-0d66bdf4ea04.JPG', 19.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:02', 0, NULL, NULL, NULL, 0, 0),
(105, '135046701', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Jia', 'jia', '1607428205_b8e206ba-15f2-4431-903a-c183d4acbbaa.JPG', '1607428205_b8e206ba-15f2-4431-903a-c183d4acbbaa.JPG', NULL, 'L,M,S', '2,6,4', '24.95,24.95,24.95', '00', 'assets/images/thumbnails/1607428205_b8e206ba-15f2-4431-903a-c183d4acbbaa.JPG,assets/images/thumbnails/1607428205_b8e206ba-15f2-4431-903a-c183d4acbbaa.JPG,assets/images/thumbnails/1607428205_b8e206ba-15f2-4431-903a-c183d4acbbaa.JPG', 24.95, NULL, NULL, 16, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:16:00', 0, NULL, NULL, NULL, 0, 0),
(106, '135046706', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Evelin', 'evelin', '1607433795_7d93abf0-2c80-4b22-adef-f92e8b35b853.JPG', '1607433795_7d93abf0-2c80-4b22-adef-f92e8b35b853.JPG', NULL, 'L,M,S', '1,2,0', '17.95,17.95,17.95', '00', 'assets/images/thumbnails/1607433795_7d93abf0-2c80-4b22-adef-f92e8b35b853.JPG,assets/images/thumbnails/1607433795_7d93abf0-2c80-4b22-adef-f92e8b35b853.JPG,assets/images/thumbnails/1607433795_7d93abf0-2c80-4b22-adef-f92e8b35b853.JPG', 17.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:15:57', 0, NULL, NULL, NULL, 0, 0),
(107, '135047948', 'normal', NULL, 0, 4, 21, 9, NULL, 'Laiken', 'laiken', '1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG', '1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG', NULL, '42,40,38,36,34', '1,3,2,1,-1', '34.95,34.95,34.95,34.95,34.95', '00', 'assets/images/thumbnails/1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG,assets/images/thumbnails/1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG,assets/images/thumbnails/1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG,assets/images/thumbnails/1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG,assets/images/thumbnails/1610405254_b5d90861-f6de-4fd9-abf3-f4f32eaf968f.JPG', 34.95, NULL, NULL, 13, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:14:30', 0, NULL, NULL, NULL, 0, 0),
(108, '135047965', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Orianna', 'orianna', '1610440919_IMG_5757.JPG', '1610440919_IMG_5757.JPG', NULL, 'XL,L,M,S', '1,0,0,1', '49.95,49.95,49.95,49.95', '00', 'assets/images/thumbnails/1610440919_IMG_5757.JPG,assets/images/thumbnails/1610440919_IMG_5757.JPG,assets/images/thumbnails/1610440919_IMG_5757.JPG,assets/images/thumbnails/1610440919_IMG_5757.JPG', 49.95, NULL, NULL, 10, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 04:10:25', 0, NULL, NULL, NULL, 0, 0),
(109, '135048170', 'normal', NULL, 0, 4, 21, 9, NULL, 'Lou', 'lou', '1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG', '1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG', NULL, '42,40,38,36,34', '1,0,1,2,0', '32.95,32.95,32.95,32.95,32.95', '00', 'assets/images/thumbnails/1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG,assets/images/thumbnails/1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG,assets/images/thumbnails/1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG,assets/images/thumbnails/1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG,assets/images/thumbnails/1611002831_bf31c83d-08c1-4d74-a277-db56305e3993.JPG', 32.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:14:22', 0, NULL, NULL, NULL, 0, 0),
(110, '135048175', 'normal', NULL, 0, 4, 21, 9, NULL, 'Mari', 'mari', '1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG', '1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG', NULL, '42,40,38,36,34', '0,0,1,3,1', '34.95,34.95,34.95,34.95,34.95', '00', 'assets/images/thumbnails/1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG,assets/images/thumbnails/1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG,assets/images/thumbnails/1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG,assets/images/thumbnails/1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG,assets/images/thumbnails/1611002831_dfc6888d-edc7-42cd-b086-56116d3c354b.JPG', 34.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:14:20', 0, NULL, NULL, NULL, 0, 0),
(111, '135048238', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Honesty', 'honesty', '1611137291_15d9cec9-dbc3-4b18-965a-475009ee33f4.JPG', '1611137291_15d9cec9-dbc3-4b18-965a-475009ee33f4.JPG', NULL, 'M/L,S/M', '56,53', '35.95,35.95', '00', 'assets/images/thumbnails/1611137291_15d9cec9-dbc3-4b18-965a-475009ee33f4.JPG,assets/images/thumbnails/1611137291_15d9cec9-dbc3-4b18-965a-475009ee33f4.JPG', 35.95, NULL, NULL, 56, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:37:46', 0, NULL, NULL, NULL, 0, 0),
(112, '135048251', 'normal', NULL, 0, 4, 20, 5, NULL, 'Sidney', 'sidney', '1611137480_f196c829-f0ab-4b47-83c1-0cc80cfe078f.JPG', '1611137480_f196c829-f0ab-4b47-83c1-0cc80cfe078f.JPG', NULL, 'L,M,S', '15,17,20', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1611137480_f196c829-f0ab-4b47-83c1-0cc80cfe078f.JPG,assets/images/thumbnails/1611137480_f196c829-f0ab-4b47-83c1-0cc80cfe078f.JPG,assets/images/thumbnails/1611137481_f196c829-f0ab-4b47-83c1-0cc80cfe078f.JPG', 19.95, NULL, NULL, 15, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:38:47', 0, NULL, NULL, NULL, 0, 0),
(113, '135048254', 'normal', NULL, 0, 4, 20, 5, NULL, 'Christine', 'christine', '1611137481_75017a80-3231-475c-be5e-02771df38623.JPG', '1611137481_75017a80-3231-475c-be5e-02771df38623.JPG', NULL, 'L,M,S', '4,3,2', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1611137481_75017a80-3231-475c-be5e-02771df38623.JPG,assets/images/thumbnails/1611137481_75017a80-3231-475c-be5e-02771df38623.JPG,assets/images/thumbnails/1611137481_75017a80-3231-475c-be5e-02771df38623.JPG', 19.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:14:11', 0, NULL, NULL, NULL, 0, 0),
(114, '135048257', 'normal', NULL, 0, 4, 20, 4, NULL, 'Raniya', 'raniya', '1611137481_051b57b6-3f68-4814-bbee-8e007d250a65.JPG', '1611137481_051b57b6-3f68-4814-bbee-8e007d250a65.JPG', NULL, 'L,M,S', '3,7,2', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1611137481_051b57b6-3f68-4814-bbee-8e007d250a65.JPG,assets/images/thumbnails/1611137481_051b57b6-3f68-4814-bbee-8e007d250a65.JPG,assets/images/thumbnails/1611137481_051b57b6-3f68-4814-bbee-8e007d250a65.JPG', 19.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:14:06', 0, NULL, NULL, NULL, 0, 0),
(115, '135048390', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Jeslyn', 'jeslyn', '1611667455_794769ee-1c9e-4a0b-ad47-df7efb47f6ad.JPG', '1611667455_794769ee-1c9e-4a0b-ad47-df7efb47f6ad.JPG', NULL, 'L,M,S', '6,6,5', '32.95,32.95,32.95', '00', 'assets/images/thumbnails/1611667455_794769ee-1c9e-4a0b-ad47-df7efb47f6ad.JPG,assets/images/thumbnails/1611667455_794769ee-1c9e-4a0b-ad47-df7efb47f6ad.JPG,assets/images/thumbnails/1611667455_794769ee-1c9e-4a0b-ad47-df7efb47f6ad.JPG', 32.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:14:04', 0, NULL, NULL, NULL, 0, 0),
(116, '135048472', 'normal', NULL, 0, 4, 21, 9, NULL, 'Ansley', 'ansley', '1612365608_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG', '1612365608_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG', NULL, '42,40,38,36,34', '4,2,2,0,2', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612365608_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG,assets/images/thumbnails/1612365608_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG,assets/images/thumbnails/1612365608_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG,assets/images/thumbnails/1612365608_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG,assets/images/thumbnails/1612365609_511773d2-3c5f-4fac-9007-4e79f9b19ff6.JPG', 20.95, NULL, NULL, 15, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:39:48', 0, NULL, NULL, NULL, 0, 0),
(117, '135048482', 'normal', NULL, 0, 4, 21, 9, NULL, 'Zaara', 'zaara', '1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG', '1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG', NULL, '42,40,38,36,34', '0,1,3,2,0', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG,assets/images/thumbnails/1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG,assets/images/thumbnails/1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG,assets/images/thumbnails/1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG,assets/images/thumbnails/1612366314_40d6f4ef-35b9-487c-94ac-4a079156fd2c.JPG', 20.95, NULL, NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:40:49', 0, NULL, NULL, NULL, 0, 0),
(118, '135048497', 'normal', NULL, 0, 4, 21, 9, NULL, 'Janelly', 'janelly', '1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG', '1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG', NULL, '42,40,38,36,34', '7,6,4,4,6', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG,assets/images/thumbnails/1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG,assets/images/thumbnails/1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG,assets/images/thumbnails/1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG,assets/images/thumbnails/1612366103_9cd03270-cd0a-4616-8166-617d9ada0767.JPG', 20.95, NULL, NULL, 7, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:41:51', 0, NULL, NULL, NULL, 0, 0),
(119, '135048502', 'normal', NULL, 0, 4, 21, 9, NULL, 'Maribel', 'maribel', '1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG', '1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG', NULL, '42,40,38,36,34', '3,1,-1,-2,3', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG,assets/images/thumbnails/1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG,assets/images/thumbnails/1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG,assets/images/thumbnails/1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG,assets/images/thumbnails/1612366424_eb99060e-1c43-4231-86d4-766468ca5520.JPG', 20.95, NULL, NULL, 3, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:42:52', 0, NULL, NULL, NULL, 0, 0),
(120, '135048507', 'normal', NULL, 0, 4, 21, 9, NULL, 'Winsome', 'winsome', '1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG', '1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG', NULL, '42,40,38,36,34', '5,2,-2,-2,3', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG,assets/images/thumbnails/1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG,assets/images/thumbnails/1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG,assets/images/thumbnails/1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG,assets/images/thumbnails/1612366342_52a4b49b-036f-4d76-9e7c-5e2e44ae9f59.JPG', 20.95, NULL, NULL, 22, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 22:13:08', 0, NULL, NULL, NULL, 0, 0),
(121, '135048512', 'normal', NULL, 0, 4, 21, 9, NULL, 'Win', 'win', '1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG', '1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG', NULL, '42,40,38,36,34', '5,6,7,10,2', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG,assets/images/thumbnails/1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG,assets/images/thumbnails/1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG,assets/images/thumbnails/1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG,assets/images/thumbnails/1612366242_6be70917-7f0c-4be2-b210-95f2a7aded8c.JPG', 20.95, NULL, NULL, 5, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:44:55', 0, NULL, NULL, NULL, 0, 0),
(122, '135048522', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Curtis', 'curtis', '1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG', '1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG', NULL, '42,40,38,36,34', '0,2,2,1,0', '28.95,28.95,28.95,28.95,28.95', '00', 'assets/images/thumbnails/1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG,assets/images/thumbnails/1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG,assets/images/thumbnails/1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG,assets/images/thumbnails/1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG,assets/images/thumbnails/1612366065_7849626e-6e4a-481b-bb99-839f8b8cb781.JPG', 28.95, NULL, NULL, 5, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:30', 0, NULL, NULL, NULL, 0, 0),
(123, '135048527', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Odette', 'odette', '1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG', '1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG', NULL, '42,40,38,36,34', '0,0,0,0,0', '37.95,37.95,37.95,37.95,37.95', '00', 'assets/images/thumbnails/1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG,assets/images/thumbnails/1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG,assets/images/thumbnails/1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG,assets/images/thumbnails/1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG,assets/images/thumbnails/1612366065_73813da1-a9d7-4f79-89ad-d66d5cd4a538.JPG', 37.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:28', 0, NULL, NULL, NULL, 0, 0),
(124, '135048532', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Prudenzia', 'prudenzia', '1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG', '1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG', NULL, '42,40,38,36,34', '0,0,1,1,1', '28.95,28.95,28.95,28.95,28.95', '00', 'assets/images/thumbnails/1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG,assets/images/thumbnails/1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG,assets/images/thumbnails/1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG,assets/images/thumbnails/1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG,assets/images/thumbnails/1612366066_2386de36-3d9c-42c4-8b60-e59f8461be08.JPG', 28.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:25', 0, NULL, NULL, NULL, 0, 0),
(125, '135048547', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Hali', 'hali', '1612367191_876ba443-13e3-4312-ac69-cd62c36809ab.JPG', '1612367191_876ba443-13e3-4312-ac69-cd62c36809ab.JPG', NULL, 'L,M,S,L,M,S', '2,4,4,1,2,2', '32.95,32.95,32.95,32.95,32.95,32.95', '00', 'assets/images/thumbnails/1612367191_876ba443-13e3-4312-ac69-cd62c36809ab.JPG,assets/images/thumbnails/1612367191_876ba443-13e3-4312-ac69-cd62c36809ab.JPG,assets/images/thumbnails/1612367191_876ba443-13e3-4312-ac69-cd62c36809ab.JPG,assets/images/thumbnails/1612367201_876ba443-13e3-4312-ac69-cd62c36809ab.JPG,assets/images/thumbnails/1612367201_876ba443-13e3-4312-ac69-cd62c36809ab.JPG,assets/images/thumbnails/1612367201_876ba443-13e3-4312-ac69-cd62c36809ab.JPG', 32.95, NULL, NULL, 15, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:23', 0, NULL, NULL, NULL, 0, 0),
(126, '135048550', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Lilith', 'lilith', '1612367191_1564d793-a7ef-441e-9dde-19c586a58f12.JPG', '1612367191_1564d793-a7ef-441e-9dde-19c586a58f12.JPG', NULL, 'L,M,S,L,M,S', '2,4,3,0,2,1', '34.95,34.95,34.95,34.95,34.95,34.95', '00', 'assets/images/thumbnails/1612367191_1564d793-a7ef-441e-9dde-19c586a58f12.JPG,assets/images/thumbnails/1612367191_1564d793-a7ef-441e-9dde-19c586a58f12.JPG,assets/images/thumbnails/1612367191_1564d793-a7ef-441e-9dde-19c586a58f12.JPG,assets/images/thumbnails/1612367201_1564d793-a7ef-441e-9dde-19c586a58f12.JPG,assets/images/thumbnails/1612367201_1564d793-a7ef-441e-9dde-19c586a58f12.JPG,assets/images/thumbnails/1612367201_1564d793-a7ef-441e-9dde-19c586a58f12.JPG', 34.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:21', 0, NULL, NULL, NULL, 0, 0),
(127, '135048553', 'normal', NULL, 0, 4, 19, 2, NULL, 'Marlene', 'marlene', '1612367191_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG', '1612367191_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG', NULL, 'L,M,S,L,M,S', '4,4,4,0,0,1', '29.95,29.95,29.95,29.95,29.95,29.95', '00', 'assets/images/thumbnails/1612367191_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG,assets/images/thumbnails/1612367191_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG,assets/images/thumbnails/1612367191_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG,assets/images/thumbnails/1612367201_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG,assets/images/thumbnails/1612367201_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG,assets/images/thumbnails/1612367201_3ad2e917-2cae-4908-8da8-8e2e1cd4635f.JPG', 29.95, NULL, NULL, 16, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:18', 0, NULL, NULL, NULL, 0, 0),
(128, '135048577', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Lucy', 'lucy', '1612368413_3d2c695c-0ebf-4458-8108-8eddbe35ba58.JPG', '1612368413_3d2c695c-0ebf-4458-8108-8eddbe35ba58.JPG', NULL, 'L,M,S', '0,2,0', '37.95,37.95,37.95', '00', 'assets/images/thumbnails/1612368413_3d2c695c-0ebf-4458-8108-8eddbe35ba58.JPG,assets/images/thumbnails/1612368413_3d2c695c-0ebf-4458-8108-8eddbe35ba58.JPG,assets/images/thumbnails/1612368413_3d2c695c-0ebf-4458-8108-8eddbe35ba58.JPG', 37.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:15', 0, NULL, NULL, NULL, 0, 0),
(129, '135048603', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Fajr', 'fajr', '1612370468_ddfbc523-a05b-4463-be91-156ddf8e4022.JPG', '1612370468_ddfbc523-a05b-4463-be91-156ddf8e4022.JPG', NULL, 'L,M,S', '1,1,2', '20.95,20.95,20.95', '00', 'assets/images/thumbnails/1612370468_ddfbc523-a05b-4463-be91-156ddf8e4022.JPG,assets/images/thumbnails/1612370468_ddfbc523-a05b-4463-be91-156ddf8e4022.JPG,assets/images/thumbnails/1612370468_ddfbc523-a05b-4463-be91-156ddf8e4022.JPG', 20.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:13', 0, NULL, NULL, NULL, 0, 0),
(130, '135048626', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Khali', 'khali', '1612371422_e3ee573d-75d7-4751-b7df-5789af9e88a0.JPG', '1612371422_e3ee573d-75d7-4751-b7df-5789af9e88a0.JPG', NULL, 'L,M,S', '1,1,0', '39.95,39.95,39.95', '00', 'assets/images/thumbnails/1612371422_e3ee573d-75d7-4751-b7df-5789af9e88a0.JPG,assets/images/thumbnails/1612371423_e3ee573d-75d7-4751-b7df-5789af9e88a0.JPG,assets/images/thumbnails/1612371423_e3ee573d-75d7-4751-b7df-5789af9e88a0.JPG', 39.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:10', 0, NULL, NULL, NULL, 0, 0),
(131, '135048629', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Ambrette', 'ambrette', '1612371423_39a71b91-48d7-4a77-9876-08abdbe6d244.JPG', '1612371423_39a71b91-48d7-4a77-9876-08abdbe6d244.JPG', NULL, 'L,M,S', '3,3,4', '39.95,39.95,39.95', '00', 'assets/images/thumbnails/1612371423_39a71b91-48d7-4a77-9876-08abdbe6d244.JPG,assets/images/thumbnails/1612371423_39a71b91-48d7-4a77-9876-08abdbe6d244.JPG,assets/images/thumbnails/1612371423_39a71b91-48d7-4a77-9876-08abdbe6d244.JPG', 39.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:08', 0, NULL, NULL, NULL, 0, 0),
(132, '135048632', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Kalena', 'kalena', '1612371423_881878d7-a86d-4506-8cf2-ee1452e843b2.JPG', '1612371423_881878d7-a86d-4506-8cf2-ee1452e843b2.JPG', NULL, 'L,M,S', '1,2,1', '39.95,39.95,39.95', '00', 'assets/images/thumbnails/1612371423_881878d7-a86d-4506-8cf2-ee1452e843b2.JPG,assets/images/thumbnails/1612371423_881878d7-a86d-4506-8cf2-ee1452e843b2.JPG,assets/images/thumbnails/1612371423_881878d7-a86d-4506-8cf2-ee1452e843b2.JPG', 39.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:05', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `color_image`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(133, '135048635', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Novalee', 'novalee', '1612371423_b4eb30bd-ee32-4ca3-aef4-8a3fd28cedb9.JPG', '1612371423_b4eb30bd-ee32-4ca3-aef4-8a3fd28cedb9.JPG', NULL, 'L,M,S', '2,4,2', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1612371423_b4eb30bd-ee32-4ca3-aef4-8a3fd28cedb9.JPG,assets/images/thumbnails/1612371423_b4eb30bd-ee32-4ca3-aef4-8a3fd28cedb9.JPG,assets/images/thumbnails/1612371423_b4eb30bd-ee32-4ca3-aef4-8a3fd28cedb9.JPG', 34.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:13:03', 0, NULL, NULL, NULL, 0, 0),
(134, '135048658', 'normal', NULL, 0, 4, 20, 6, NULL, 'Everest', 'everest', '1612372517_IMG_6216.JPG', '1612372517_IMG_6216.JPG', NULL, 'M/L,S/M', '5,6', '27.95,27.95', '00', 'assets/images/thumbnails/1612372517_IMG_6216.JPG,assets/images/thumbnails/1612372517_IMG_6216.JPG', 27.95, NULL, NULL, 13, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:12:54', 0, NULL, NULL, NULL, 0, 0),
(135, '135048660', 'normal', NULL, 0, 4, 20, 6, NULL, 'Nickelle', 'nickelle', '1612372517_IMG_6211.JPG', '1612372517_IMG_6211.JPG', NULL, 'M/L,S/M', '1,2', '28.95,28.95', '00', 'assets/images/thumbnails/1612372517_IMG_6211.JPG,assets/images/thumbnails/1612372517_IMG_6211.JPG', 28.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:12:52', 0, NULL, NULL, NULL, 0, 0),
(136, '135048707', 'normal', NULL, 0, 4, 20, 4, NULL, 'Kelsi', 'kelsi', '1612624212_214eeb38-9a6f-4132-9ced-de401c9d6188.JPG', '1612624212_214eeb38-9a6f-4132-9ced-de401c9d6188.JPG', NULL, 'L,M,S', '1,2,1', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1612624212_214eeb38-9a6f-4132-9ced-de401c9d6188.JPG,assets/images/thumbnails/1612624212_214eeb38-9a6f-4132-9ced-de401c9d6188.JPG,assets/images/thumbnails/1612624212_214eeb38-9a6f-4132-9ced-de401c9d6188.JPG', 19.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:57:12', 0, NULL, NULL, NULL, 0, 0),
(137, '135048710', 'normal', NULL, 0, 4, 20, 4, NULL, 'Kynlee', 'kynlee', '1612624212_ac223956-27ec-487e-8bb6-390776b85591.JPG', '1612624212_ac223956-27ec-487e-8bb6-390776b85591.JPG', NULL, 'M/L,S/M', '0,1', '19.95,19.95', '00', 'assets/images/thumbnails/1612624212_ac223956-27ec-487e-8bb6-390776b85591.JPG,assets/images/thumbnails/1612624212_ac223956-27ec-487e-8bb6-390776b85591.JPG', 19.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:56:11', 0, NULL, NULL, NULL, 0, 0),
(138, '135048712', 'normal', NULL, 0, 4, 20, 4, NULL, 'Eve', 'eve', '1612624212_a8bd019d-01b6-4996-a20b-d99077cea31a.JPG', '1612624212_a8bd019d-01b6-4996-a20b-d99077cea31a.JPG', NULL, 'M/L,S/M', '1,0', '19.95,19.95', '00', 'assets/images/thumbnails/1612624212_a8bd019d-01b6-4996-a20b-d99077cea31a.JPG,assets/images/thumbnails/1612624212_a8bd019d-01b6-4996-a20b-d99077cea31a.JPG', 19.95, NULL, NULL, 5, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-26 05:26:33', 0, NULL, NULL, NULL, 0, 0),
(139, '135048714', 'normal', NULL, 0, 4, 20, 4, NULL, 'Noel', 'noel', '1612624212_8cf48d7c-2c54-4d13-ba34-9067cf391537.JPG', '1612624212_8cf48d7c-2c54-4d13-ba34-9067cf391537.JPG', NULL, 'L,M,S', '3,3,2', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1612624212_8cf48d7c-2c54-4d13-ba34-9067cf391537.JPG,assets/images/thumbnails/1612624212_8cf48d7c-2c54-4d13-ba34-9067cf391537.JPG,assets/images/thumbnails/1612624212_8cf48d7c-2c54-4d13-ba34-9067cf391537.JPG', 19.95, NULL, NULL, 9, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-26 12:09:36', 0, NULL, NULL, NULL, 0, 0),
(140, '135048717', 'normal', NULL, 0, 4, 20, 4, NULL, 'Reema', 'reema', '1612624212_0af90134-328a-4c4c-be7c-f97e6d837c40.JPG', '1612624212_0af90134-328a-4c4c-be7c-f97e6d837c40.JPG', NULL, 'L,M,S', '1,4,2', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1612624212_0af90134-328a-4c4c-be7c-f97e6d837c40.JPG,assets/images/thumbnails/1612624212_0af90134-328a-4c4c-be7c-f97e6d837c40.JPG,assets/images/thumbnails/1612624212_0af90134-328a-4c4c-be7c-f97e6d837c40.JPG', 19.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 06:53:05', 0, NULL, NULL, NULL, 0, 0),
(141, '135048720', 'normal', NULL, 0, 4, 20, 4, NULL, 'Isha', 'isha', '1612624212_df224648-44ec-4d9d-a2a4-6093a91d5b1e.JPG', '1612624212_df224648-44ec-4d9d-a2a4-6093a91d5b1e.JPG', NULL, 'L,M,S', '0,1,2', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1612624212_df224648-44ec-4d9d-a2a4-6093a91d5b1e.JPG,assets/images/thumbnails/1612624212_df224648-44ec-4d9d-a2a4-6093a91d5b1e.JPG,assets/images/thumbnails/1612624212_df224648-44ec-4d9d-a2a4-6093a91d5b1e.JPG', 19.95, NULL, NULL, 0, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-26 09:36:33', 0, NULL, NULL, NULL, 0, 0),
(142, '135048727', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Deana', 'deana', '1612624563_2b9e62dc-61b4-46b3-82fa-c663cfab1580.JPG', '1612624563_2b9e62dc-61b4-46b3-82fa-c663cfab1580.JPG', NULL, 'M/L,S/M', '2,1', '24.95,24.95', '00', 'assets/images/thumbnails/1612624563_2b9e62dc-61b4-46b3-82fa-c663cfab1580.JPG,assets/images/thumbnails/1612624563_2b9e62dc-61b4-46b3-82fa-c663cfab1580.JPG', 24.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:35:44', 0, NULL, NULL, NULL, 0, 0),
(143, '135048729', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Mayleigh', 'mayleigh', '1612624563_e37c45a2-b4c9-4172-8b98-9116f7ea0eaa.JPG', '1612624563_e37c45a2-b4c9-4172-8b98-9116f7ea0eaa.JPG', NULL, 'M/L,S/M', '-3,4', '32.95,32.95', '00', 'assets/images/thumbnails/1612624563_e37c45a2-b4c9-4172-8b98-9116f7ea0eaa.JPG,assets/images/thumbnails/1612624563_e37c45a2-b4c9-4172-8b98-9116f7ea0eaa.JPG', 32.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:34:43', 0, NULL, NULL, NULL, 0, 0),
(144, '135048733', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Galatea', 'galatea', '1612624563_96627f18-e866-45c0-bb6e-13746255b44f.JPG', '1612624563_96627f18-e866-45c0-bb6e-13746255b44f.JPG', NULL, 'M/L,S/M', '0,3', '32.95,32.95', '00', 'assets/images/thumbnails/1612624563_96627f18-e866-45c0-bb6e-13746255b44f.JPG,assets/images/thumbnails/1612624563_96627f18-e866-45c0-bb6e-13746255b44f.JPG', 32.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:33:42', 0, NULL, NULL, NULL, 0, 0),
(145, '135048740', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Madisen', 'madisen', '1612624563_8d19a6c7-7ef0-485d-8605-67d00dd8c709.JPG', '1612624563_8d19a6c7-7ef0-485d-8605-67d00dd8c709.JPG', NULL, 'M/L,S/M', '2,1', '29.95,29.95', '00', 'assets/images/thumbnails/1612624563_8d19a6c7-7ef0-485d-8605-67d00dd8c709.JPG,assets/images/thumbnails/1612624564_8d19a6c7-7ef0-485d-8605-67d00dd8c709.JPG', 29.95, NULL, NULL, 3, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:32:40', 0, NULL, NULL, NULL, 0, 0),
(146, '135048742', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Sidony', 'sidony', '1612624564_c8c726d4-01db-4882-a31b-baa2988a3617.JPG', '1612624564_c8c726d4-01db-4882-a31b-baa2988a3617.JPG', NULL, 'M/L,S/M', '2,0', '29.95,29.95', '00', 'assets/images/thumbnails/1612624564_c8c726d4-01db-4882-a31b-baa2988a3617.JPG,assets/images/thumbnails/1612624564_c8c726d4-01db-4882-a31b-baa2988a3617.JPG', 29.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:31:39', 0, NULL, NULL, NULL, 0, 0),
(147, '135048771', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Lian', 'lian', '1612728144_361620b7-ac96-4269-98c3-7dfaff4f9595.JPG', '1612728144_361620b7-ac96-4269-98c3-7dfaff4f9595.JPG', NULL, 'M/L,S/M', '6,4', '24.95,24.95', '00', 'assets/images/thumbnails/1612728144_361620b7-ac96-4269-98c3-7dfaff4f9595.JPG,assets/images/thumbnails/1612728144_361620b7-ac96-4269-98c3-7dfaff4f9595.JPG', 24.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:30:38', 0, NULL, NULL, NULL, 0, 0),
(148, '135048773', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Reine', 'reine', '1612728144_e4db4c48-0f82-4b28-b6a2-9e970f080cac.JPG', '1612728144_e4db4c48-0f82-4b28-b6a2-9e970f080cac.JPG', NULL, 'M/L,S/M', '7,6', '24.95,24.95', '00', 'assets/images/thumbnails/1612728144_e4db4c48-0f82-4b28-b6a2-9e970f080cac.JPG,assets/images/thumbnails/1612728144_e4db4c48-0f82-4b28-b6a2-9e970f080cac.JPG', 24.95, NULL, NULL, 14, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:29:36', 0, NULL, NULL, NULL, 0, 0),
(149, '135048775', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Eleanora', 'eleanora', '1612728144_633f2ec1-cf5a-473a-b6d2-5536978a0120.JPG', '1612728144_633f2ec1-cf5a-473a-b6d2-5536978a0120.JPG', NULL, 'M/L,S/M', '7,9', '24.95,24.95', '00', 'assets/images/thumbnails/1612728144_633f2ec1-cf5a-473a-b6d2-5536978a0120.JPG,assets/images/thumbnails/1612728145_633f2ec1-cf5a-473a-b6d2-5536978a0120.JPG', 24.95, NULL, NULL, 18, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:28:35', 0, NULL, NULL, NULL, 0, 0),
(150, '135048777', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Delina', 'delina', '1612728145_3418d539-508b-4990-8dba-52e3a2d25f0a.JPG', '1612728145_3418d539-508b-4990-8dba-52e3a2d25f0a.JPG', NULL, 'M/L,S/M', '4,6', '29.95,29.95', '00', 'assets/images/thumbnails/1612728145_3418d539-508b-4990-8dba-52e3a2d25f0a.JPG,assets/images/thumbnails/1612728145_3418d539-508b-4990-8dba-52e3a2d25f0a.JPG', 29.95, NULL, NULL, 16, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 20:20:14', 0, NULL, NULL, NULL, 0, 0),
(151, '135048779', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Avie', 'avie', '1612728145_0b719e4b-1030-4a9b-a114-0ed3025542e1.JPG', '1612728145_0b719e4b-1030-4a9b-a114-0ed3025542e1.JPG', NULL, 'M/L,S/M', '5,5', '25.95,25.95', '00', 'assets/images/thumbnails/1612728145_0b719e4b-1030-4a9b-a114-0ed3025542e1.JPG,assets/images/thumbnails/1612728145_0b719e4b-1030-4a9b-a114-0ed3025542e1.JPG', 25.95, NULL, NULL, 16, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:26:33', 0, NULL, NULL, NULL, 0, 0),
(152, '135048781', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Skarlett', 'skarlett', '1612728145_d6891046-e3d8-4340-8b63-caf4531981af.JPG', '1612728145_d6891046-e3d8-4340-8b63-caf4531981af.JPG', NULL, 'M/L,S/M', '3,1', '24.95,24.95', '00', 'assets/images/thumbnails/1612728145_d6891046-e3d8-4340-8b63-caf4531981af.JPG,assets/images/thumbnails/1612728145_d6891046-e3d8-4340-8b63-caf4531981af.JPG', 24.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:25:31', 0, NULL, NULL, NULL, 0, 0),
(153, '135048783', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Becky', 'becky', '1612728145_0913397b-c2c4-47b8-9975-dc53e4caf417.JPG', '1612728145_0913397b-c2c4-47b8-9975-dc53e4caf417.JPG', NULL, 'M/L,S/M', '1,0', '24.95,24.95', '00', 'assets/images/thumbnails/1612728145_0913397b-c2c4-47b8-9975-dc53e4caf417.JPG,assets/images/thumbnails/1612728145_0913397b-c2c4-47b8-9975-dc53e4caf417.JPG', 24.95, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:24:30', 0, NULL, NULL, NULL, 0, 0),
(154, '135048793', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Alyson', 'alyson', '1612729295_7f90946b-3e49-4197-b7d2-f5233c407411.JPG', '1612729295_7f90946b-3e49-4197-b7d2-f5233c407411.JPG', NULL, 'M/L,S/M', '9,8', '25.95,25.95', '00', 'assets/images/thumbnails/1612729295_7f90946b-3e49-4197-b7d2-f5233c407411.JPG,assets/images/thumbnails/1612729295_7f90946b-3e49-4197-b7d2-f5233c407411.JPG', 25.95, NULL, NULL, 20, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:23:29', 0, NULL, NULL, NULL, 0, 0),
(155, '135048797', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Andr_e', 'andr_e', '1612729295_75679537-4e27-4517-8634-c03763152db3.JPG', '1612729295_75679537-4e27-4517-8634-c03763152db3.JPG', NULL, 'M/L,S/M', '18,18', '26.95,26.95', '00', 'assets/images/thumbnails/1612729295_75679537-4e27-4517-8634-c03763152db3.JPG,assets/images/thumbnails/1612729295_75679537-4e27-4517-8634-c03763152db3.JPG', 26.95, NULL, NULL, 43, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:22:27', 0, NULL, NULL, NULL, 0, 0),
(156, '135048799', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Mildred', 'mildred', '1612729295_e86577e7-012a-4a4c-8256-1c97f168f5b5.JPG', '1612729295_e86577e7-012a-4a4c-8256-1c97f168f5b5.JPG', NULL, 'M/L,S/M', '7,8', '26.95,26.95', '00', 'assets/images/thumbnails/1612729295_e86577e7-012a-4a4c-8256-1c97f168f5b5.JPG,assets/images/thumbnails/1612729295_e86577e7-012a-4a4c-8256-1c97f168f5b5.JPG', 26.95, NULL, NULL, 16, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:21:26', 0, NULL, NULL, NULL, 0, 0),
(157, '135048803', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Xaria', 'xaria', '1612729296_07589e52-4994-4242-a7db-3ee9b43d0bec.JPG', '1612729296_07589e52-4994-4242-a7db-3ee9b43d0bec.JPG', NULL, 'M/L,S/M', '7,3', '25.95,25.95', '00', 'assets/images/thumbnails/1612729296_07589e52-4994-4242-a7db-3ee9b43d0bec.JPG,assets/images/thumbnails/1612729296_07589e52-4994-4242-a7db-3ee9b43d0bec.JPG', 25.95, NULL, NULL, 7, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:20:25', 0, NULL, NULL, NULL, 0, 0),
(158, '135048805', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Zaniya', 'zaniya', '1612729296_2e168615-4542-40a5-8605-e220353d75e0.JPG', '1612729296_2e168615-4542-40a5-8605-e220353d75e0.JPG', NULL, 'M/L,S/M', '11,11', '25.95,25.95', '00', 'assets/images/thumbnails/1612729296_2e168615-4542-40a5-8605-e220353d75e0.JPG,assets/images/thumbnails/1612729296_2e168615-4542-40a5-8605-e220353d75e0.JPG', 25.95, NULL, NULL, 27, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:20:24', 0, NULL, NULL, NULL, 0, 0),
(159, '135048807', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Arielle', 'arielle', '1612729502_fc47730b-eee0-4066-9b1e-ab631b8d0909.JPG', '1612729502_fc47730b-eee0-4066-9b1e-ab631b8d0909.JPG', NULL, 'M/L,S/M', '1,2', '25.95,25.95', '00', 'assets/images/thumbnails/1612729502_fc47730b-eee0-4066-9b1e-ab631b8d0909.JPG,assets/images/thumbnails/1612729502_fc47730b-eee0-4066-9b1e-ab631b8d0909.JPG', 25.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:12:07', 0, NULL, NULL, NULL, 0, 0),
(160, '135048809', 'normal', NULL, 0, 4, 20, 5, NULL, 'Persis', 'persis', '1612729392_c06eb3d1-d322-4304-8bf6-b8d3828b1789.JPG', '1612729392_c06eb3d1-d322-4304-8bf6-b8d3828b1789.JPG', NULL, 'M/L,S/M', '5,6', '13.95,13.95', '00', 'assets/images/thumbnails/1612729392_c06eb3d1-d322-4304-8bf6-b8d3828b1789.JPG,assets/images/thumbnails/1612729392_c06eb3d1-d322-4304-8bf6-b8d3828b1789.JPG', 13.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:12:05', 0, NULL, NULL, NULL, 0, 0),
(161, '135048811', 'normal', NULL, 0, 4, 20, 5, NULL, 'Amberlynn', 'amberlynn', '1612729392_aacdb2e9-147a-4743-9d04-53ea02db05b4.JPG', '1612729392_aacdb2e9-147a-4743-9d04-53ea02db05b4.JPG', NULL, 'L,M,S', '7,4,4', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1612729392_aacdb2e9-147a-4743-9d04-53ea02db05b4.JPG,assets/images/thumbnails/1612729392_aacdb2e9-147a-4743-9d04-53ea02db05b4.JPG,assets/images/thumbnails/1612729392_aacdb2e9-147a-4743-9d04-53ea02db05b4.JPG', 19.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:12:02', 0, NULL, NULL, NULL, 0, 0),
(162, '135048814', 'normal', NULL, 0, 4, 20, 5, NULL, 'Macey', 'macey', '1612729392_0a63a1be-732e-415f-a6c3-1905d1315955.JPG', '1612729392_0a63a1be-732e-415f-a6c3-1905d1315955.JPG', NULL, 'L,M,S', '6,6,5', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1612729392_0a63a1be-732e-415f-a6c3-1905d1315955.JPG,assets/images/thumbnails/1612729392_0a63a1be-732e-415f-a6c3-1905d1315955.JPG,assets/images/thumbnails/1612729392_0a63a1be-732e-415f-a6c3-1905d1315955.JPG', 19.95, NULL, NULL, 22, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:12:00', 0, NULL, NULL, NULL, 0, 0),
(163, '135048858', 'normal', NULL, 0, 4, 20, 7, NULL, 'Zefera', 'zefera', '1612947535_5c523877-e7d9-45b9-8bd2-60009ab4a64a.JPG', '1612947535_5c523877-e7d9-45b9-8bd2-60009ab4a64a.JPG', NULL, 'T.U', '13', '22.95', '00', 'assets/images/thumbnails/1612947535_5c523877-e7d9-45b9-8bd2-60009ab4a64a.JPG', 22.95, NULL, NULL, 20, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:58', 0, NULL, NULL, NULL, 0, 0),
(164, '135048891', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Vida', 'vida', '1613043156_79399f1e-ae34-4ff0-9207-f8dd76abad95.JPG', '1613043156_79399f1e-ae34-4ff0-9207-f8dd76abad95.JPG', NULL, 'T.U', '6', '39.95', '00', 'assets/images/thumbnails/1613043156_79399f1e-ae34-4ff0-9207-f8dd76abad95.JPG', 39.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:42:51', 0, NULL, NULL, NULL, 0, 0),
(165, '135048892', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Amarah', 'amarah', '1613043156_690a1295-7e82-4cd5-823d-31fdfa4fc1b0.JPG', '1613043156_690a1295-7e82-4cd5-823d-31fdfa4fc1b0.JPG', NULL, 'T.U', '1', '38.95', '00', 'assets/images/thumbnails/1613043156_690a1295-7e82-4cd5-823d-31fdfa4fc1b0.JPG', 38.95, NULL, NULL, 3, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:43:53', 0, NULL, NULL, NULL, 0, 0),
(166, '135048894', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Ashby', 'ashby', '1613043156_b2df2642-ee55-4669-be12-eb7d9791edb5.JPG', '1613043156_b2df2642-ee55-4669-be12-eb7d9791edb5.JPG', NULL, 'T.U', '2', '34.95', '00', 'assets/images/thumbnails/1613043156_b2df2642-ee55-4669-be12-eb7d9791edb5.JPG', 34.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:52', 0, NULL, NULL, NULL, 0, 0),
(167, '135048895', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Amaria', 'amaria', '1613043156_423cf650-b542-4140-861b-b14cae83685a.JPG', '1613043156_423cf650-b542-4140-861b-b14cae83685a.JPG', NULL, 'T.U', '2', '38.95', '00', 'assets/images/thumbnails/1613043156_423cf650-b542-4140-861b-b14cae83685a.JPG', 38.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:49', 0, NULL, NULL, NULL, 0, 0),
(168, '135048896', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Jersey', 'jersey', '1613044231_6643c050-39c5-4426-be77-19bd615ca35e.JPG', '1613044231_6643c050-39c5-4426-be77-19bd615ca35e.JPG', NULL, 'T.U', '2', '25.95', '00', 'assets/images/thumbnails/1613044231_6643c050-39c5-4426-be77-19bd615ca35e.JPG', 25.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:46', 0, NULL, NULL, NULL, 0, 0),
(169, '135048897', 'normal', NULL, 0, 1, 6, NULL, NULL, 'B_r_nice', 'b_r_nice', '1613044231_83c45405-3e60-4854-a8a3-7a09ed903939.JPG', '1613044231_83c45405-3e60-4854-a8a3-7a09ed903939.JPG', NULL, 'T.U', '0', '27.95', '00', 'assets/images/thumbnails/1613044231_83c45405-3e60-4854-a8a3-7a09ed903939.JPG', 27.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:44', 0, NULL, NULL, NULL, 0, 0),
(170, '135048898', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Nichelle', 'nichelle', '1613044231_49767915-9d99-4a92-830b-ddd7024907f1.JPG', '1613044231_49767915-9d99-4a92-830b-ddd7024907f1.JPG', NULL, 'T.U', '3', '19.95', '00', 'assets/images/thumbnails/1613044231_49767915-9d99-4a92-830b-ddd7024907f1.JPG', 19.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:42', 0, NULL, NULL, NULL, 0, 0),
(171, '135048899', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Emili', 'emili', '1613044231_09c4f502-e3df-4fda-a868-4a1267867398.JPG', '1613044231_09c4f502-e3df-4fda-a868-4a1267867398.JPG', NULL, 'T.U', '3', '27.95', '00', 'assets/images/thumbnails/1613044231_09c4f502-e3df-4fda-a868-4a1267867398.JPG', 27.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:38', 0, NULL, NULL, NULL, 0, 0),
(172, '135048900', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Emmaleigh', 'emmaleigh', '1613044231_3741b4b9-c2fe-456c-bf85-197b55c230fa.JPG', '1613044231_3741b4b9-c2fe-456c-bf85-197b55c230fa.JPG', NULL, 'T.U', '7', '27.95', '00', 'assets/images/thumbnails/1613044231_3741b4b9-c2fe-456c-bf85-197b55c230fa.JPG', 27.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:36', 0, NULL, NULL, NULL, 0, 0),
(173, '135048901', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Galilee', 'galilee', '1613044231_ddd76746-7c7f-46d7-a768-86dfe0dea39e.JPG', '1613044231_ddd76746-7c7f-46d7-a768-86dfe0dea39e.JPG', NULL, 'T.U', '0', '19.95', '00', 'assets/images/thumbnails/1613044231_ddd76746-7c7f-46d7-a768-86dfe0dea39e.JPG', 19.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:33', 0, NULL, NULL, NULL, 0, 0),
(174, '135048902', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Jaliyah', 'jaliyah', '1613044231_5eb3e043-90fc-4a43-905f-22eb3c9fd8db.JPG', '1613044231_5eb3e043-90fc-4a43-905f-22eb3c9fd8db.JPG', NULL, 'T.U', '3', '19.95', '00', 'assets/images/thumbnails/1613044231_5eb3e043-90fc-4a43-905f-22eb3c9fd8db.JPG', 19.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:30', 0, NULL, NULL, NULL, 0, 0),
(175, '135048903', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Beth', 'beth', '1613044231_e70880b4-f3ee-41ab-a03f-389fec7e4f85.JPG', '1613044231_e70880b4-f3ee-41ab-a03f-389fec7e4f85.JPG', NULL, 'T.U', '9', '27.95', '00', 'assets/images/thumbnails/1613044231_e70880b4-f3ee-41ab-a03f-389fec7e4f85.JPG', 27.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:28', 0, NULL, NULL, NULL, 0, 0),
(176, '135048904', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Araya', 'araya', '1613044231_4ebfbb6a-9616-4efe-ad71-583bcd3991e0.JPG', '1613044231_4ebfbb6a-9616-4efe-ad71-583bcd3991e0.JPG', NULL, 'T.U', '1', '28.95', '00', 'assets/images/thumbnails/1613044231_4ebfbb6a-9616-4efe-ad71-583bcd3991e0.JPG', 28.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:26', 0, NULL, NULL, NULL, 0, 0),
(177, '135048905', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Elsy', 'elsy', '1613044231_f4563118-ebf6-4905-868e-37f272988a40.JPG', '1613044231_f4563118-ebf6-4905-868e-37f272988a40.JPG', NULL, 'T.U', '1', '20.95', '00', 'assets/images/thumbnails/1613044231_f4563118-ebf6-4905-868e-37f272988a40.JPG', 20.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:23', 0, NULL, NULL, NULL, 0, 0),
(178, '135048908', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Linnet', 'linnet', '1613052740_d1661d30-bbca-40c7-b701-abe8946decd5.JPG', '1613052740_d1661d30-bbca-40c7-b701-abe8946decd5.JPG', NULL, 'T.U', '2', '32.95', '00', 'assets/images/thumbnails/1613052740_d1661d30-bbca-40c7-b701-abe8946decd5.JPG', 32.95, NULL, NULL, 6, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:21', 0, NULL, NULL, NULL, 0, 0),
(179, '135048909', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Narda', 'narda', '1613052740_cadc2bf6-b2d1-4ec9-8a01-421e659177bf.JPG', '1613052740_cadc2bf6-b2d1-4ec9-8a01-421e659177bf.JPG', NULL, 'T.U', '0', '37.95', '00', 'assets/images/thumbnails/1613052740_cadc2bf6-b2d1-4ec9-8a01-421e659177bf.JPG', 37.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:20', 0, NULL, NULL, NULL, 0, 0),
(180, '135048910', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Irenea', 'irenea', '1613052740_4d91362a-c3bf-41f1-a660-005b1e7ec001.JPG', '1613052740_4d91362a-c3bf-41f1-a660-005b1e7ec001.JPG', NULL, 'T.U', '0', '34.95', '00', 'assets/images/thumbnails/1613052740_4d91362a-c3bf-41f1-a660-005b1e7ec001.JPG', 34.95, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:17', 0, NULL, NULL, NULL, 0, 0),
(181, '135048912', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Elisheva', 'elisheva', '1613053614_084a04f3-f345-4ee0-ad96-a48d942b440c.JPG', '1613053614_084a04f3-f345-4ee0-ad96-a48d942b440c.JPG', NULL, 'T.U', '1', '39.95', '00', 'assets/images/thumbnails/1613053614_084a04f3-f345-4ee0-ad96-a48d942b440c.JPG', 39.95, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:15', 0, NULL, NULL, NULL, 0, 0),
(182, '135048913', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Chimamanda', 'chimamanda', '1613053614_0ec550df-85a0-4b8f-8eb6-4bf33ea32d83.JPG', '1613053614_0ec550df-85a0-4b8f-8eb6-4bf33ea32d83.JPG', NULL, 'T.U', '2', '31.95', '00', 'assets/images/thumbnails/1613053614_0ec550df-85a0-4b8f-8eb6-4bf33ea32d83.JPG', 31.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:12', 0, NULL, NULL, NULL, 0, 0),
(183, '135048914', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Keturah', 'keturah', '1613053614_d0fc8c8b-74c2-4b8d-b933-536e44de159a.JPG', '1613053614_d0fc8c8b-74c2-4b8d-b933-536e44de159a.JPG', NULL, 'T.U', '0', '26.95', '00', 'assets/images/thumbnails/1613053614_d0fc8c8b-74c2-4b8d-b933-536e44de159a.JPG', 26.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:08', 0, NULL, NULL, NULL, 0, 0),
(184, '135048915', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Camry', 'camry', '1613053614_698180a5-f082-4f17-9d5b-ccb9dbcec25a.JPG', '1613053614_698180a5-f082-4f17-9d5b-ccb9dbcec25a.JPG', NULL, 'T.U', '2', '37.95', '00', 'assets/images/thumbnails/1613053614_698180a5-f082-4f17-9d5b-ccb9dbcec25a.JPG', 37.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:06', 0, NULL, NULL, NULL, 0, 0),
(185, '135048916', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Charlette', 'charlette', '1613053614_77ee87d5-3c16-4702-a288-6a732a3eda7f.JPG', '1613053614_77ee87d5-3c16-4702-a288-6a732a3eda7f.JPG', NULL, 'T.U', '2', '30.95', '00', 'assets/images/thumbnails/1613053614_77ee87d5-3c16-4702-a288-6a732a3eda7f.JPG', 30.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:04', 0, NULL, NULL, NULL, 0, 0),
(186, '135048917', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Avarie', 'avarie', '1613053614_72a66071-951b-4925-a5f6-41eb033ef3e4.JPG', '1613053614_72a66071-951b-4925-a5f6-41eb033ef3e4.JPG', NULL, 'T.U', '1', '37.95', '00', 'assets/images/thumbnails/1613053614_72a66071-951b-4925-a5f6-41eb033ef3e4.JPG', 37.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:11:01', 0, NULL, NULL, NULL, 0, 0),
(187, '135048918', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Niya', 'niya', '1613053614_bdb584fd-db18-4980-8d5c-7e8aa27c1123.JPG', '1613053614_bdb584fd-db18-4980-8d5c-7e8aa27c1123.JPG', NULL, 'T.U', '6', '37.95', '00', 'assets/images/thumbnails/1613053614_bdb584fd-db18-4980-8d5c-7e8aa27c1123.JPG', 37.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:56', 0, NULL, NULL, NULL, 0, 0),
(188, '135048919', 'normal', NULL, 0, 1, NULL, NULL, NULL, 'Indigo', 'indigo', '1613055069_e3be139c-6405-4c56-abb9-a11a4d3b4278.JPG', '1613055069_e3be139c-6405-4c56-abb9-a11a4d3b4278.JPG', NULL, 'T.U', '2', '19.95', '00', 'assets/images/thumbnails/1613055069_e3be139c-6405-4c56-abb9-a11a4d3b4278.JPG', 19.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:59', 0, NULL, NULL, NULL, 0, 0),
(189, '135048920', 'normal', NULL, 0, 1, NULL, NULL, NULL, 'Teagen', 'teagen', '1613055069_e1bf9fcd-89ce-448c-a480-2df63ca99481.JPG', '1613055069_e1bf9fcd-89ce-448c-a480-2df63ca99481.JPG', NULL, 'T.U', '3', '16.95', '00', 'assets/images/thumbnails/1613055069_e1bf9fcd-89ce-448c-a480-2df63ca99481.JPG', 16.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:54', 0, NULL, NULL, NULL, 0, 0),
(190, '135048921', 'normal', NULL, 0, 1, NULL, NULL, NULL, 'Omega', 'omega', '1613055069_a73003fe-4631-4299-a2bf-e00a34827803.JPG', '1613055069_a73003fe-4631-4299-a2bf-e00a34827803.JPG', NULL, 'T.U', '1', '22.95', '00', 'assets/images/thumbnails/1613055069_a73003fe-4631-4299-a2bf-e00a34827803.JPG', 22.95, NULL, NULL, 3, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:44:54', 0, NULL, NULL, NULL, 0, 0),
(191, '135048922', 'normal', NULL, 0, 1, NULL, NULL, NULL, 'Chia', 'chia', '1613055070_627d3225-1fa8-43a6-9655-4dee292d445a.JPG', '1613055070_627d3225-1fa8-43a6-9655-4dee292d445a.JPG', NULL, 'T.U', '6', '16.95', '00', 'assets/images/thumbnails/1613055070_627d3225-1fa8-43a6-9655-4dee292d445a.JPG', 16.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 09:57:18', 0, NULL, NULL, NULL, 0, 0),
(192, '135048923', 'normal', NULL, 0, 1, NULL, NULL, NULL, 'Jana', 'jana', '1613055070_0d2b7a33-a18b-4309-8e18-6e84b708d7b7.JPG', '1613055070_0d2b7a33-a18b-4309-8e18-6e84b708d7b7.JPG', NULL, 'T.U', '4', '17.95', '00', 'assets/images/thumbnails/1613055070_0d2b7a33-a18b-4309-8e18-6e84b708d7b7.JPG', 17.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:46:57', 0, NULL, NULL, NULL, 0, 0),
(193, '135048929', 'normal', NULL, 0, 3, NULL, NULL, NULL, 'Keely', 'keely', '1613066102_2e96b41b-cece-469b-bc07-40f31962822a.JPG', '1613066102_2e96b41b-cece-469b-bc07-40f31962822a.JPG', NULL, '41,40,39,38,37,36', '1,1,1,3,-1,1', '20.95,20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1613066102_2e96b41b-cece-469b-bc07-40f31962822a.JPG,assets/images/thumbnails/1613066103_2e96b41b-cece-469b-bc07-40f31962822a.JPG,assets/images/thumbnails/1613066103_2e96b41b-cece-469b-bc07-40f31962822a.JPG,assets/images/thumbnails/1613066103_2e96b41b-cece-469b-bc07-40f31962822a.JPG,assets/images/thumbnails/1613066103_2e96b41b-cece-469b-bc07-40f31962822a.JPG,assets/images/thumbnails/1613066104_2e96b41b-cece-469b-bc07-40f31962822a.JPG', 20.95, NULL, NULL, 10, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 05:53:10', 0, NULL, NULL, NULL, 0, 0),
(194, '135048935', 'normal', NULL, 0, 3, NULL, NULL, NULL, 'Julieta', 'julieta', '1613066104_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG', '1613066104_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG', NULL, '41,40,39,38,37,36', '1,2,1,3,2,0', '21.95,21.95,21.95,21.95,21.95,21.95', '00', 'assets/images/thumbnails/1613066104_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG,assets/images/thumbnails/1613066104_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG,assets/images/thumbnails/1613066105_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG,assets/images/thumbnails/1613066105_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG,assets/images/thumbnails/1613066105_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG,assets/images/thumbnails/1613066105_6c171d4f-7363-4520-9210-364d1fad3f5e.JPG', 21.95, NULL, NULL, 10, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 10:17:57', 0, NULL, NULL, NULL, 0, 0),
(195, '135048941', 'normal', NULL, 0, 3, NULL, NULL, NULL, 'Genisis', 'genisis', '1613066105_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG', '1613066105_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG', NULL, '41,40,39,38,37,36', '1,2,3,3,2,1', '22.95,22.95,22.95,22.95,22.95,22.95', '00', 'assets/images/thumbnails/1613066105_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG,assets/images/thumbnails/1613066106_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG,assets/images/thumbnails/1613066106_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG,assets/images/thumbnails/1613066106_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG,assets/images/thumbnails/1613066106_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG,assets/images/thumbnails/1613066106_41679932-dd6e-4c8a-82f9-d8bf2a019a9c.JPG', 22.95, NULL, NULL, 12, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 10:08:26', 0, NULL, NULL, NULL, 0, 0),
(196, '135048947', 'normal', NULL, 0, 3, NULL, NULL, NULL, 'Rayne', 'rayne', '1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG', '1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG', NULL, '41,40,39,38,37,36', '1,3,5,5,3,1', '24.95,24.95,24.95,24.95,24.95,24.95', '00', 'assets/images/thumbnails/1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG,assets/images/thumbnails/1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG,assets/images/thumbnails/1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG,assets/images/thumbnails/1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG,assets/images/thumbnails/1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG,assets/images/thumbnails/1613066503_EA8A547A-14DD-4BCF-ABAC-50105F5AC8EC.JPG', 24.95, NULL, NULL, 1, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 05:49:03', 0, NULL, NULL, NULL, 0, 0),
(197, '135048953', 'normal', NULL, 0, 3, NULL, NULL, NULL, 'Meilani', 'meilani', '1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG', '1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG', NULL, '41,40,39,38,37,36', '2,3,2,1,4,0', '22.95,22.95,22.95,22.95,22.95,22.95', '00', 'assets/images/thumbnails/1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG,assets/images/thumbnails/1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG,assets/images/thumbnails/1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG,assets/images/thumbnails/1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG,assets/images/thumbnails/1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG,assets/images/thumbnails/1613066566_A7A7294E-F918-4AF3-A4E0-E67312C86940.JPG', 22.95, NULL, NULL, 2, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 05:46:59', 0, NULL, NULL, NULL, 0, 0),
(198, '135048959', 'normal', NULL, 0, 3, NULL, NULL, NULL, 'Carlene', 'carlene', '1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG', '1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG', NULL, '41,40,39,38,37,36', '0,2,3,4,3,1', '22.95,22.95,22.95,22.95,22.95,22.95', '00', 'assets/images/thumbnails/1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG,assets/images/thumbnails/1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG,assets/images/thumbnails/1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG,assets/images/thumbnails/1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG,assets/images/thumbnails/1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG,assets/images/thumbnails/1613066599_CCF06494-307A-4FBB-91B1-59FD8115B104.JPG', 22.95, NULL, NULL, 0, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 05:44:57', 0, NULL, NULL, NULL, 0, 0),
(199, '135048965', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Lydia', 'lydia', '1613119983_190c00ef-586f-4f25-81c7-3273dc53c2b2.JPG', '1613119983_190c00ef-586f-4f25-81c7-3273dc53c2b2.JPG', NULL, 'T.U', '0', '29.95', '00', 'assets/images/thumbnails/1613119983_190c00ef-586f-4f25-81c7-3273dc53c2b2.JPG', 29.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:26', 0, NULL, NULL, NULL, 0, 0),
(200, '135049003', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Samaya', 'samaya', '1613161977_5cc56e1a-1677-4123-a57c-b913edab21c7.JPG', '1613161977_5cc56e1a-1677-4123-a57c-b913edab21c7.JPG', NULL, 'M/L,S/M', '30,30', '24.95,24.95', '00', 'assets/images/thumbnails/1613161977_5cc56e1a-1677-4123-a57c-b913edab21c7.JPG,assets/images/thumbnails/1613161977_5cc56e1a-1677-4123-a57c-b913edab21c7.JPG', 24.95, NULL, NULL, 71, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:24', 0, NULL, NULL, NULL, 0, 0),
(201, '135049050', 'normal', NULL, 0, 4, 20, 5, NULL, 'Karissa', 'karissa', '1613220269_41795209-2473-4076-97b5-72ebf7b87faa.JPG', '1613220269_41795209-2473-4076-97b5-72ebf7b87faa.JPG', NULL, 'XL,L,M,S', '0,2,2,2', '37.95,37.95,37.95,37.95', '00', 'assets/images/thumbnails/1613220269_41795209-2473-4076-97b5-72ebf7b87faa.JPG,assets/images/thumbnails/1613220269_41795209-2473-4076-97b5-72ebf7b87faa.JPG,assets/images/thumbnails/1613220269_41795209-2473-4076-97b5-72ebf7b87faa.JPG,assets/images/thumbnails/1613220269_41795209-2473-4076-97b5-72ebf7b87faa.JPG', 37.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:20', 0, NULL, NULL, NULL, 0, 0),
(202, '135049071', 'normal', NULL, 0, 4, 20, 5, NULL, 'Kaiden', 'kaiden', '1613228850_4019f703-fde2-4ca2-8c30-25e2b88e7a48.JPG', '1613228850_4019f703-fde2-4ca2-8c30-25e2b88e7a48.JPG', NULL, 'M/L,S/M', '3,2', '30.95,30.95', '00', 'assets/images/thumbnails/1613228850_4019f703-fde2-4ca2-8c30-25e2b88e7a48.JPG,assets/images/thumbnails/1613228850_4019f703-fde2-4ca2-8c30-25e2b88e7a48.JPG', 30.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:19', 0, NULL, NULL, NULL, 0, 0),
(203, '135049095', 'normal', NULL, 0, 4, 20, 5, NULL, 'Cattaleya', 'cattaleya', '1613229301_6edab84e-93ea-4320-bfbc-8b9fac8c35ac.JPG', '1613229301_6edab84e-93ea-4320-bfbc-8b9fac8c35ac.JPG', NULL, 'L,M,S', '-1,0,1', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1613229301_6edab84e-93ea-4320-bfbc-8b9fac8c35ac.JPG,assets/images/thumbnails/1613229301_6edab84e-93ea-4320-bfbc-8b9fac8c35ac.JPG,assets/images/thumbnails/1613229301_6edab84e-93ea-4320-bfbc-8b9fac8c35ac.JPG', 34.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:06', 0, NULL, NULL, NULL, 0, 0),
(204, '135049098', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Nani', 'nani', '1613229301_82e6ebab-0a9e-4190-8bd8-d1e42882db4e.JPG', '1613229301_82e6ebab-0a9e-4190-8bd8-d1e42882db4e.JPG', NULL, 'L,M,S', '1,2,1', '30.95,30.95,30.95', '00', 'assets/images/thumbnails/1613229301_82e6ebab-0a9e-4190-8bd8-d1e42882db4e.JPG,assets/images/thumbnails/1613229301_82e6ebab-0a9e-4190-8bd8-d1e42882db4e.JPG,assets/images/thumbnails/1613229301_82e6ebab-0a9e-4190-8bd8-d1e42882db4e.JPG', 30.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:04', 0, NULL, NULL, NULL, 0, 0),
(205, '135049222', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Jewel', 'jewel', '1614159659_image003.jpg', '1614159659_image003.jpg', NULL, 'T.U', '10', '0.1', '00', 'assets/images/thumbnails/1614159659_image003.jpg', 0.1, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:10:03', 0, NULL, NULL, NULL, 0, 0),
(206, '135049368', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Yurani', 'yurani', '1615014412_e9274893-31c0-40bf-a722-f6c225ea12c9.JPG', '1615014412_e9274893-31c0-40bf-a722-f6c225ea12c9.JPG', NULL, 'T.U', '3', '36.95', '00', 'assets/images/thumbnails/1615014412_e9274893-31c0-40bf-a722-f6c225ea12c9.JPG', 36.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:59', 0, NULL, NULL, NULL, 0, 0),
(207, '135049369', 'normal', NULL, 0, 4, 19, 1, NULL, 'Yahaira', 'yahaira', '1615014412_b0a88875-6e7e-48ac-9578-5d890e89a94d.JPG', '1615014412_b0a88875-6e7e-48ac-9578-5d890e89a94d.JPG', NULL, 'T.U', '3', '30.95', '00', 'assets/images/thumbnails/1615014412_b0a88875-6e7e-48ac-9578-5d890e89a94d.JPG', 30.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:58', 0, NULL, NULL, NULL, 0, 0),
(208, '135049370', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Yessenia', 'yessenia', '1615014412_89303389-d0c4-49ed-82a0-f7a015e3ccd2.JPG', '1615014412_89303389-d0c4-49ed-82a0-f7a015e3ccd2.JPG', NULL, 'T.U', '5', '29.95', '00', 'assets/images/thumbnails/1615014412_89303389-d0c4-49ed-82a0-f7a015e3ccd2.JPG', 29.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:55', 0, NULL, NULL, NULL, 0, 0),
(209, '135049371', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Lupita', 'lupita', '1615014412_7ab68fca-d851-426f-8d82-a3a23e82f4a3.JPG', '1615014412_7ab68fca-d851-426f-8d82-a3a23e82f4a3.JPG', NULL, 'T.U', '18', '21.95', '00', 'assets/images/thumbnails/1615014412_7ab68fca-d851-426f-8d82-a3a23e82f4a3.JPG', 21.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:53', 0, NULL, NULL, NULL, 0, 0),
(210, '135049372', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Nicholina', 'nicholina', '1615014412_c417438e-173f-4c8b-955d-65b8252142e0.JPG', '1615014412_c417438e-173f-4c8b-955d-65b8252142e0.JPG', NULL, 'T.U', '1', '29.95', '00', 'assets/images/thumbnails/1615014412_c417438e-173f-4c8b-955d-65b8252142e0.JPG', 29.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:50', 0, NULL, NULL, NULL, 0, 0),
(211, '135049384', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Cerise', 'cerise', '1615015405_8432ed14-3c99-48c6-a35a-639d9ce909ae.JPG', '1615015405_8432ed14-3c99-48c6-a35a-639d9ce909ae.JPG', NULL, 'T.U', '1', '39.95', '00', 'assets/images/thumbnails/1615015405_8432ed14-3c99-48c6-a35a-639d9ce909ae.JPG', 39.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:48', 0, NULL, NULL, NULL, 0, 0),
(212, '135049406', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Shaelyn', 'shaelyn', '1615017114_74379369-4043-43a5-93e3-d27f052acf2e.JPG', '1615017114_74379369-4043-43a5-93e3-d27f052acf2e.JPG', NULL, 'T.U', '6', '24.95', '00', 'assets/images/thumbnails/1615017114_74379369-4043-43a5-93e3-d27f052acf2e.JPG', 24.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:45', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `color_image`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(213, '135049407', 'normal', NULL, 0, 4, 13, NULL, NULL, 'Romilly', 'romilly', '1615017114_47600fa4-7728-4e59-a460-681d9bd1cd6f.JPG', '1615017114_47600fa4-7728-4e59-a460-681d9bd1cd6f.JPG', NULL, 'L,M,S', '1,2,1', '27.95,27.95,27.95', '00', 'assets/images/thumbnails/1615017114_47600fa4-7728-4e59-a460-681d9bd1cd6f.JPG,assets/images/thumbnails/1615017114_47600fa4-7728-4e59-a460-681d9bd1cd6f.JPG,assets/images/thumbnails/1615017114_47600fa4-7728-4e59-a460-681d9bd1cd6f.JPG', 27.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:43', 0, NULL, NULL, NULL, 0, 0),
(214, '135049410', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Tabitha', 'tabitha', '1615017114_b902f0c3-efd8-45dc-b1da-868b98442f5c.JPG', '1615017114_b902f0c3-efd8-45dc-b1da-868b98442f5c.JPG', NULL, 'L,M,S', '2,1,0', '27.95,27.95,27.95', '00', 'assets/images/thumbnails/1615017114_b902f0c3-efd8-45dc-b1da-868b98442f5c.JPG,assets/images/thumbnails/1615017114_b902f0c3-efd8-45dc-b1da-868b98442f5c.JPG,assets/images/thumbnails/1615017114_b902f0c3-efd8-45dc-b1da-868b98442f5c.JPG', 27.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:40', 0, NULL, NULL, NULL, 0, 0),
(215, '135049416', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Pamela', 'pamela', '1615017114_1748ea44-c63b-4881-ad44-494db4a82f0f.JPG', '1615017114_1748ea44-c63b-4881-ad44-494db4a82f0f.JPG', NULL, 'XL,L,M,S', '1,0,1,1', '27.95,27.95,27.95,27.95', '00', 'assets/images/thumbnails/1615017114_1748ea44-c63b-4881-ad44-494db4a82f0f.JPG,assets/images/thumbnails/1615017114_1748ea44-c63b-4881-ad44-494db4a82f0f.JPG,assets/images/thumbnails/1615017114_1748ea44-c63b-4881-ad44-494db4a82f0f.JPG,assets/images/thumbnails/1615017114_1748ea44-c63b-4881-ad44-494db4a82f0f.JPG', 27.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:38', 0, NULL, NULL, NULL, 0, 0),
(216, '135049424', 'normal', NULL, 0, 4, 20, 4, NULL, 'Zaryah', 'zaryah', '1615019004_467d6ce3-c0e1-4c44-9700-3d35adff19ab.JPG', '1615019004_467d6ce3-c0e1-4c44-9700-3d35adff19ab.JPG', NULL, 'T.U', '1', '14.95', '00', 'assets/images/thumbnails/1615019004_467d6ce3-c0e1-4c44-9700-3d35adff19ab.JPG', 14.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:35', 0, NULL, NULL, NULL, 0, 0),
(217, '135049455', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Jemsa', 'jemsa', '1615149939_IMG_7208.JPG', '1615149939_IMG_7208.JPG', NULL, 'XL,L,M,S', '0,0,0,1', '49.95,49.95,49.95,49.95', '00', 'assets/images/thumbnails/1615149939_IMG_7208.JPG,assets/images/thumbnails/1615149939_IMG_7208.JPG,assets/images/thumbnails/1615149939_IMG_7208.JPG,assets/images/thumbnails/1615149939_IMG_7208.JPG', 49.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:31', 0, NULL, NULL, NULL, 0, 0),
(218, '135049459', 'normal', NULL, 0, 4, 21, 10, NULL, 'Harli', 'harli', '1615148600_IMG_7206.JPG', '1615148600_IMG_7206.JPG', NULL, 'M/L,S/M', '5,2', '11.95,11.95', '00', 'assets/images/thumbnails/1615148600_IMG_7206.JPG,assets/images/thumbnails/1615148600_IMG_7206.JPG', 11.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:29', 0, NULL, NULL, NULL, 0, 0),
(219, '135049461', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Maliya', 'maliya', '1615148600_IMG_7205.JPG', '1615148600_IMG_7205.JPG', NULL, 'M/L,S/M', '4,5', '14.95,14.95', '00', 'assets/images/thumbnails/1615148600_IMG_7205.JPG,assets/images/thumbnails/1615148600_IMG_7205.JPG', 14.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:27', 0, NULL, NULL, NULL, 0, 0),
(220, '135049466', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Kendal', 'kendal', '1615149481_d1dcd727-2005-4eba-be0f-edf291beb69c.JPG', '1615149481_d1dcd727-2005-4eba-be0f-edf291beb69c.JPG', NULL, 'M/L,S/M', '2,2', '37.95,37.95', '00', 'assets/images/thumbnails/1615149481_d1dcd727-2005-4eba-be0f-edf291beb69c.JPG,assets/images/thumbnails/1615149481_d1dcd727-2005-4eba-be0f-edf291beb69c.JPG', 37.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:19:23', 0, NULL, NULL, NULL, 0, 0),
(221, '135049468', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Grey', 'grey', '1615149481_455929e3-5101-49c2-b44a-0d0cbc0f9589.JPG', '1615149481_455929e3-5101-49c2-b44a-0d0cbc0f9589.JPG', NULL, 'M/L,S/M', '2,0', '36.95,36.95', '00', 'assets/images/thumbnails/1615149481_455929e3-5101-49c2-b44a-0d0cbc0f9589.JPG,assets/images/thumbnails/1615149481_455929e3-5101-49c2-b44a-0d0cbc0f9589.JPG', 36.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 07:18:22', 0, NULL, NULL, NULL, 0, 0),
(222, '135049470', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Aleen', 'aleen', '1615149481_601d0b26-182a-46e7-a6f4-b465e2df3336.JPG', '1615149481_601d0b26-182a-46e7-a6f4-b465e2df3336.JPG', NULL, 'M/L,S/M', '2,3', '36.95,36.95', '00', 'assets/images/thumbnails/1615149481_601d0b26-182a-46e7-a6f4-b465e2df3336.JPG,assets/images/thumbnails/1615149481_601d0b26-182a-46e7-a6f4-b465e2df3336.JPG', 36.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:06', '2021-05-25 03:09:18', 0, NULL, NULL, NULL, 0, 0),
(223, '135049472', 'normal', NULL, 0, 4, 19, 1, NULL, 'Madalynn', 'madalynn', '1615149481_21a225f0-e7ce-4698-8c02-4ecc08cfbfc3.JPG', '1615149481_21a225f0-e7ce-4698-8c02-4ecc08cfbfc3.JPG', NULL, 'L,M,S', '0,1,2', '24.95,24.95,24.95', '00', 'assets/images/thumbnails/1615149481_21a225f0-e7ce-4698-8c02-4ecc08cfbfc3.JPG,assets/images/thumbnails/1615149481_21a225f0-e7ce-4698-8c02-4ecc08cfbfc3.JPG,assets/images/thumbnails/1615149481_21a225f0-e7ce-4698-8c02-4ecc08cfbfc3.JPG', 24.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:15', 0, NULL, NULL, NULL, 0, 0),
(224, '135049478', 'normal', NULL, 0, 4, 20, 7, NULL, 'Roxie', 'roxie', '1615149482_f09f0095-2b4a-4b95-88c6-019180ac9088.JPG', '1615149482_f09f0095-2b4a-4b95-88c6-019180ac9088.JPG', NULL, 'M/L,S/M', '8,7', '14.95,14.95', '00', 'assets/images/thumbnails/1615149482_f09f0095-2b4a-4b95-88c6-019180ac9088.JPG,assets/images/thumbnails/1615149482_f09f0095-2b4a-4b95-88c6-019180ac9088.JPG', 14.95, NULL, NULL, 24, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:13', 0, NULL, NULL, NULL, 0, 0),
(225, '135049483', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Raylyn', 'raylyn', '1615150892_e96d77dd-6298-4416-9853-ef4d5abeac4a.JPG', '1615150892_e96d77dd-6298-4416-9853-ef4d5abeac4a.JPG', NULL, 'L,M,S', '7,2,3', '9.95,9.95,9.95', '00', 'assets/images/thumbnails/1615150892_e96d77dd-6298-4416-9853-ef4d5abeac4a.JPG,assets/images/thumbnails/1615150892_e96d77dd-6298-4416-9853-ef4d5abeac4a.JPG,assets/images/thumbnails/1615150892_e96d77dd-6298-4416-9853-ef4d5abeac4a.JPG', 9.95, NULL, NULL, 17, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:11', 0, NULL, NULL, NULL, 0, 0),
(226, '135049486', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Monique', 'monique', '1615150892_cb09083f-b496-4f18-8947-35249dbd6673.JPG', '1615150892_cb09083f-b496-4f18-8947-35249dbd6673.JPG', NULL, 'L,M,S', '3,-1,1', '20.95,20.95,20.95', '00', 'assets/images/thumbnails/1615150892_cb09083f-b496-4f18-8947-35249dbd6673.JPG,assets/images/thumbnails/1615150892_cb09083f-b496-4f18-8947-35249dbd6673.JPG,assets/images/thumbnails/1615150892_cb09083f-b496-4f18-8947-35249dbd6673.JPG', 20.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:08', 0, NULL, NULL, NULL, 0, 0),
(227, '135049489', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Laela', 'laela', '1615150892_ab95862a-3141-4457-a059-ff5539ffc83e.JPG', '1615150892_ab95862a-3141-4457-a059-ff5539ffc83e.JPG', NULL, 'L,M,S', '2,0,2', '24.95,24.95,24.95', '00', 'assets/images/thumbnails/1615150892_ab95862a-3141-4457-a059-ff5539ffc83e.JPG,assets/images/thumbnails/1615150892_ab95862a-3141-4457-a059-ff5539ffc83e.JPG,assets/images/thumbnails/1615150892_ab95862a-3141-4457-a059-ff5539ffc83e.JPG', 24.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:05', 0, NULL, NULL, NULL, 0, 0),
(228, '135049492', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Zayda', 'zayda', '1615150892_8c7881c7-f5bd-4050-8531-990f319a589b.JPG', '1615150892_8c7881c7-f5bd-4050-8531-990f319a589b.JPG', NULL, 'L,M,S', '0,1,0', '39.95,39.95,39.95', '00', 'assets/images/thumbnails/1615150892_8c7881c7-f5bd-4050-8531-990f319a589b.JPG,assets/images/thumbnails/1615150892_8c7881c7-f5bd-4050-8531-990f319a589b.JPG,assets/images/thumbnails/1615150892_8c7881c7-f5bd-4050-8531-990f319a589b.JPG', 39.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:03', 0, NULL, NULL, NULL, 0, 0),
(229, '135049495', 'normal', NULL, 0, 4, 20, 7, NULL, 'Roux', 'roux', '1615150892_8adb4024-40a3-4b42-ae2f-3790dcf2ec40.JPG', '1615150892_8adb4024-40a3-4b42-ae2f-3790dcf2ec40.JPG', NULL, 'L,M,S', '1,1,0', '14.95,14.95,14.95', '00', 'assets/images/thumbnails/1615150892_8adb4024-40a3-4b42-ae2f-3790dcf2ec40.JPG,assets/images/thumbnails/1615150892_8adb4024-40a3-4b42-ae2f-3790dcf2ec40.JPG,assets/images/thumbnails/1615150892_8adb4024-40a3-4b42-ae2f-3790dcf2ec40.JPG', 14.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:09:01', 0, NULL, NULL, NULL, 0, 0),
(230, '135049498', 'normal', NULL, 0, 4, 20, 7, NULL, 'Zariah', 'zariah', '1615151186_1d9205aa-7669-48ce-a782-913a92a796e9.JPG', '1615151186_1d9205aa-7669-48ce-a782-913a92a796e9.JPG', NULL, 'L,M,S', '2,2,0', '15.95,15.95,15.95', '00', 'assets/images/thumbnails/1615151186_1d9205aa-7669-48ce-a782-913a92a796e9.JPG,assets/images/thumbnails/1615151186_1d9205aa-7669-48ce-a782-913a92a796e9.JPG,assets/images/thumbnails/1615151186_1d9205aa-7669-48ce-a782-913a92a796e9.JPG', 15.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:58', 0, NULL, NULL, NULL, 0, 0),
(231, '135049501', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Josilyn', 'josilyn', '1615153952_aa235b5e-4932-4053-b734-92f7dfb9372c.JPG', '1615153952_aa235b5e-4932-4053-b734-92f7dfb9372c.JPG', NULL, 'T.U', '1', '37.95', '00', 'assets/images/thumbnails/1615153952_aa235b5e-4932-4053-b734-92f7dfb9372c.JPG', 37.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:56', 0, NULL, NULL, NULL, 0, 0),
(232, '135049502', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Adriana', 'adriana', '1615153952_cf713991-3974-4aac-8c5e-d021f18f0035.JPG', '1615153952_cf713991-3974-4aac-8c5e-d021f18f0035.JPG', NULL, 'T.U', '0', '29.95', '00', 'assets/images/thumbnails/1615153952_cf713991-3974-4aac-8c5e-d021f18f0035.JPG', 29.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:53', 0, NULL, NULL, NULL, 0, 0),
(233, '135049503', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Miracle', 'miracle', '1615153952_9210d8d2-e391-412b-9e67-7de7c2811fef.JPG', '1615153952_9210d8d2-e391-412b-9e67-7de7c2811fef.JPG', NULL, 'T.U', '3', '38.95', '00', 'assets/images/thumbnails/1615153952_9210d8d2-e391-412b-9e67-7de7c2811fef.JPG', 38.95, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:51', 0, NULL, NULL, NULL, 0, 0),
(234, '135049504', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Anthea', 'anthea', '1615153952_87dd8c56-8916-453b-8505-d067a6d81291.JPG', '1615153952_87dd8c56-8916-453b-8505-d067a6d81291.JPG', NULL, 'T.U', '1', '39.95', '00', 'assets/images/thumbnails/1615153952_87dd8c56-8916-453b-8505-d067a6d81291.JPG', 39.95, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:48', 0, NULL, NULL, NULL, 0, 0),
(235, '135049562', 'normal', NULL, 0, 4, 20, 5, NULL, 'Lakynn', 'lakynn', '1615471737_5cc2a707-0eba-40e7-8d77-b1ab6b07605d.JPG', '1615471737_5cc2a707-0eba-40e7-8d77-b1ab6b07605d.JPG', NULL, 'L,M,S', '2,4,0', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1615471737_5cc2a707-0eba-40e7-8d77-b1ab6b07605d.JPG,assets/images/thumbnails/1615471737_5cc2a707-0eba-40e7-8d77-b1ab6b07605d.JPG,assets/images/thumbnails/1615471737_5cc2a707-0eba-40e7-8d77-b1ab6b07605d.JPG', 19.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:46', 0, NULL, NULL, NULL, 0, 0),
(236, '135049565', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Cynara', 'cynara', '1615471737_8861f239-cca0-4bbc-8814-bb0cfffb3033.JPG', '1615471737_8861f239-cca0-4bbc-8814-bb0cfffb3033.JPG', NULL, 'M/L,S/M', '-2,2', '32.95,32.95', '00', 'assets/images/thumbnails/1615471737_8861f239-cca0-4bbc-8814-bb0cfffb3033.JPG,assets/images/thumbnails/1615471737_8861f239-cca0-4bbc-8814-bb0cfffb3033.JPG', 32.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:44', 0, NULL, NULL, NULL, 0, 0),
(237, '135049567', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Janvier', 'janvier', '1615471737_4c50b271-57ac-40f8-976d-50790084f702.JPG', '1615471737_4c50b271-57ac-40f8-976d-50790084f702.JPG', NULL, 'M/L,S/M', '0,0', '32.95,32.95', '00', 'assets/images/thumbnails/1615471737_4c50b271-57ac-40f8-976d-50790084f702.JPG,assets/images/thumbnails/1615471737_4c50b271-57ac-40f8-976d-50790084f702.JPG', 32.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:42', 0, NULL, NULL, NULL, 0, 0),
(238, '135049697', 'normal', NULL, 0, 4, 20, 7, NULL, 'Emmanuelle', 'emmanuelle', '1616059767_dbdeb74c-89f8-4a90-9548-86e5d8aa41ac.JPG', '1616059767_dbdeb74c-89f8-4a90-9548-86e5d8aa41ac.JPG', NULL, 'M/L,S/M', '17,16', '8.95,8.95', '00', 'assets/images/thumbnails/1616059767_dbdeb74c-89f8-4a90-9548-86e5d8aa41ac.JPG,assets/images/thumbnails/1616059767_dbdeb74c-89f8-4a90-9548-86e5d8aa41ac.JPG', 8.95, NULL, NULL, 17, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:38', 0, NULL, NULL, NULL, 0, 0),
(239, '135049712', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Hoorain', 'hoorain', '1616078224_76022aac-7853-4a9d-b80e-9f5210019a01.JPG', '1616078224_76022aac-7853-4a9d-b80e-9f5210019a01.JPG', NULL, 'M/L,S/M', '0,2', '34.95,34.95', '00', 'assets/images/thumbnails/1616078224_76022aac-7853-4a9d-b80e-9f5210019a01.JPG,assets/images/thumbnails/1616078224_76022aac-7853-4a9d-b80e-9f5210019a01.JPG', 34.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:36', 0, NULL, NULL, NULL, 0, 0),
(240, '135049714', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Bellarose', 'bellarose', '1616078224_60a2b243-caca-42f3-8bb9-461e1ef920f2.JPG', '1616078224_60a2b243-caca-42f3-8bb9-461e1ef920f2.JPG', NULL, 'M/L,S/M', '0,3', '34.95,34.95', '00', 'assets/images/thumbnails/1616078224_60a2b243-caca-42f3-8bb9-461e1ef920f2.JPG,assets/images/thumbnails/1616078224_60a2b243-caca-42f3-8bb9-461e1ef920f2.JPG', 34.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:35', 0, NULL, NULL, NULL, 0, 0),
(241, '135049747', 'normal', NULL, 0, 4, 12, NULL, NULL, 'Kenadie', 'kenadie', '1616440569_AB85A67F-CCE8-452E-B96E-DCB6859F8714.JPG', '1616440569_AB85A67F-CCE8-452E-B96E-DCB6859F8714.JPG', NULL, 'M/L,S/M', '2,3', '17.95,17.95', '00', 'assets/images/thumbnails/1616440569_AB85A67F-CCE8-452E-B96E-DCB6859F8714.JPG,assets/images/thumbnails/1616440569_AB85A67F-CCE8-452E-B96E-DCB6859F8714.JPG', 17.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:32', 0, NULL, NULL, NULL, 0, 0),
(242, '135049749', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Delilah', 'delilah', '1616440569_IMG_7447.JPG', '1616440569_IMG_7447.JPG', NULL, 'XL,L,M,S', '0,1,0,0', '37.95,37.95,37.95,37.95', '00', 'assets/images/thumbnails/1616440569_IMG_7447.JPG,assets/images/thumbnails/1616440569_IMG_7447.JPG,assets/images/thumbnails/1616440569_IMG_7447.JPG,assets/images/thumbnails/1616440569_IMG_7447.JPG', 37.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:30', 0, NULL, NULL, NULL, 0, 0),
(243, '135049753', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Verania', 'verania', '1616440569_IMG_7446.JPG', '1616440569_IMG_7446.JPG', NULL, 'L,M,S', '0,1,1', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1616440569_IMG_7446.JPG,assets/images/thumbnails/1616440569_IMG_7446.JPG,assets/images/thumbnails/1616440569_IMG_7446.JPG', 19.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:26', 0, NULL, NULL, NULL, 0, 0),
(244, '135049756', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Jael', 'jael', '1616440629_C4E8543F-5E52-47BF-98DC-3BECA93042C5.JPG', '1616440629_C4E8543F-5E52-47BF-98DC-3BECA93042C5.JPG', NULL, 'T.U', '0', '34.95', '00', 'assets/images/thumbnails/1616440629_C4E8543F-5E52-47BF-98DC-3BECA93042C5.JPG', 34.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:24', 0, NULL, NULL, NULL, 0, 0),
(245, '135049757', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Orlee', 'orlee', '1616440629_256824CC-5EA7-42C7-81A8-6C29C6E9A08E.JPG', '1616440629_256824CC-5EA7-42C7-81A8-6C29C6E9A08E.JPG', NULL, 'T.U', '4', '34.95', '00', 'assets/images/thumbnails/1616440629_256824CC-5EA7-42C7-81A8-6C29C6E9A08E.JPG', 34.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:22', 0, NULL, NULL, NULL, 0, 0),
(246, '135049758', 'normal', NULL, 0, 4, 21, 9, NULL, 'Cesia', 'cesia', '1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG', '1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG', NULL, '42,40,38,36,34', '0,2,1,1,1', '34.95,34.95,34.95,34.95,34.95', '00', 'assets/images/thumbnails/1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG,assets/images/thumbnails/1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG,assets/images/thumbnails/1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG,assets/images/thumbnails/1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG,assets/images/thumbnails/1616441332_7f3dac06-511e-40a3-a22d-cc1ed2ed0444.JPG', 34.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:20', 0, NULL, NULL, NULL, 0, 0),
(247, '135049763', 'normal', NULL, 0, 4, 21, 9, NULL, 'Kynnedi', 'kynnedi', '1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG', '1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG', NULL, '42,40,38,36,34', '0,0,0,-1,0', '21.95,21.95,21.95,21.95,21.95', '00', 'assets/images/thumbnails/1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG,assets/images/thumbnails/1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG,assets/images/thumbnails/1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG,assets/images/thumbnails/1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG,assets/images/thumbnails/1616441332_3b9a41da-9093-4137-96f4-a76f0c1849ec.JPG', 21.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:18', 0, NULL, NULL, NULL, 0, 0),
(248, '135049768', 'normal', NULL, 0, 4, 21, 9, NULL, 'Cadence', 'cadence', '1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG', '1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG', NULL, '42,40,38,36,34', '0,1,1,0,1', '32.95,32.95,32.95,32.95,32.95', '00', 'assets/images/thumbnails/1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG,assets/images/thumbnails/1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG,assets/images/thumbnails/1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG,assets/images/thumbnails/1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG,assets/images/thumbnails/1616441400_04cec8e4-018b-4aea-a885-b7163cf1d5ce.JPG', 32.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:16', 0, NULL, NULL, NULL, 0, 0),
(249, '135049773', 'normal', NULL, 0, 4, 21, 9, NULL, 'Mishika', 'mishika', '1616441400_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG', '1616441400_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG', NULL, '42,40,38,36,34', '1,1,0,0,1', '32.95,32.95,32.95,32.95,32.95', '00', 'assets/images/thumbnails/1616441400_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG,assets/images/thumbnails/1616441400_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG,assets/images/thumbnails/1616441400_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG,assets/images/thumbnails/1616441401_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG,assets/images/thumbnails/1616441401_6bbea79b-1fc1-4b40-9e74-f7b4e69b5406.JPG', 32.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:11', 0, NULL, NULL, NULL, 0, 0),
(250, '135049778', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Juliet', 'juliet', '1616441590_9527825b-9466-49ed-9e73-264dba03a889.JPG', '1616441590_9527825b-9466-49ed-9e73-264dba03a889.JPG', NULL, 'L,M,S', '2,1,1', '26.95,26.95,26.95', '00', 'assets/images/thumbnails/1616441590_9527825b-9466-49ed-9e73-264dba03a889.JPG,assets/images/thumbnails/1616441590_9527825b-9466-49ed-9e73-264dba03a889.JPG,assets/images/thumbnails/1616441590_9527825b-9466-49ed-9e73-264dba03a889.JPG', 26.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:09', 0, NULL, NULL, NULL, 0, 0),
(251, '135049781', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Caitlyn', 'caitlyn', '1616441590_17519c56-b77b-4c43-a967-87ce5ccb9a59.JPG', '1616441590_17519c56-b77b-4c43-a967-87ce5ccb9a59.JPG', NULL, 'L,M,S', '4,2,4', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1616441590_17519c56-b77b-4c43-a967-87ce5ccb9a59.JPG,assets/images/thumbnails/1616441591_17519c56-b77b-4c43-a967-87ce5ccb9a59.JPG,assets/images/thumbnails/1616441591_17519c56-b77b-4c43-a967-87ce5ccb9a59.JPG', 29.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:06', 0, NULL, NULL, NULL, 0, 0),
(252, '135049784', 'normal', NULL, 0, 4, 20, 4, NULL, 'Addison', 'addison', '1616441591_5ff8bf3b-e2e1-4d01-8041-76c592bd7fbe.JPG', '1616441591_5ff8bf3b-e2e1-4d01-8041-76c592bd7fbe.JPG', NULL, 'L,M,S', '4,2,1', '20.95,20.95,20.95', '00', 'assets/images/thumbnails/1616441591_5ff8bf3b-e2e1-4d01-8041-76c592bd7fbe.JPG,assets/images/thumbnails/1616441591_5ff8bf3b-e2e1-4d01-8041-76c592bd7fbe.JPG,assets/images/thumbnails/1616441591_5ff8bf3b-e2e1-4d01-8041-76c592bd7fbe.JPG', 20.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:04', 0, NULL, NULL, NULL, 0, 0),
(253, '135049787', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Fantasia', 'fantasia', '1616441933_e49de499-121f-4d90-a67f-c85ef61207a4.JPG', '1616441933_e49de499-121f-4d90-a67f-c85ef61207a4.JPG', NULL, 'T.U', '2', '10.95', '00', 'assets/images/thumbnails/1616441933_e49de499-121f-4d90-a67f-c85ef61207a4.JPG', 10.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:08:02', 0, NULL, NULL, NULL, 0, 0),
(254, '135049788', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Bushra', 'bushra', '1616441933_a2d8f1fa-26d6-44cb-b63b-cdb920d5e6d3.JPG', '1616441933_a2d8f1fa-26d6-44cb-b63b-cdb920d5e6d3.JPG', NULL, 'T.U', '1', '19.95', '00', 'assets/images/thumbnails/1616441933_a2d8f1fa-26d6-44cb-b63b-cdb920d5e6d3.JPG', 19.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:59', 0, NULL, NULL, NULL, 0, 0),
(255, '135049789', 'normal', NULL, 0, 4, 19, 1, NULL, 'Lennix', 'lennix', '1616441933_06d030bf-3759-4420-aa60-a3d5218cbe58.JPG', '1616441933_06d030bf-3759-4420-aa60-a3d5218cbe58.JPG', NULL, 'T.U', '9', '27.95', '00', 'assets/images/thumbnails/1616441933_06d030bf-3759-4420-aa60-a3d5218cbe58.JPG', 27.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:56', 0, NULL, NULL, NULL, 0, 0),
(256, '135049790', 'normal', NULL, 0, 4, 15, NULL, NULL, 'Yehudis', 'yehudis', '1616441933_694569a2-ecbf-4fa1-89f1-0c1231301f47.JPG', '1616441933_694569a2-ecbf-4fa1-89f1-0c1231301f47.JPG', NULL, 'T.U', '6', '37.95', '00', 'assets/images/thumbnails/1616441933_694569a2-ecbf-4fa1-89f1-0c1231301f47.JPG', 37.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:54', 0, NULL, NULL, NULL, 0, 0),
(257, '135049791', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Breelynn', 'breelynn', '1616444202_e26d33bd-67db-4c5c-ac8c-eb0789548575.JPG', '1616444202_e26d33bd-67db-4c5c-ac8c-eb0789548575.JPG', NULL, 'T.U', '3', '19.95', '00', 'assets/images/thumbnails/1616444202_e26d33bd-67db-4c5c-ac8c-eb0789548575.JPG', 19.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:51', 0, NULL, NULL, NULL, 0, 0),
(258, '135049792', 'normal', NULL, 0, 4, 19, 1, NULL, 'Whimsy', 'whimsy', '1616444202_7634c562-595a-4259-8738-a68a9c53771b.JPG', '1616444202_7634c562-595a-4259-8738-a68a9c53771b.JPG', NULL, 'T.U', '1', '14.95', '00', 'assets/images/thumbnails/1616444202_7634c562-595a-4259-8738-a68a9c53771b.JPG', 14.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:48', 0, NULL, NULL, NULL, 0, 0),
(259, '135049793', 'normal', NULL, 0, 4, 21, 8, NULL, 'Ambar', 'ambar', '1616444202_b61e8e58-c8be-4be1-892c-0befcb90267f.JPG', '1616444202_b61e8e58-c8be-4be1-892c-0befcb90267f.JPG', NULL, 'XL,L,M,S', '1,1,0,0', '19.95,19.95,19.95,19.95', '00', 'assets/images/thumbnails/1616444202_b61e8e58-c8be-4be1-892c-0befcb90267f.JPG,assets/images/thumbnails/1616444202_b61e8e58-c8be-4be1-892c-0befcb90267f.JPG,assets/images/thumbnails/1616444202_b61e8e58-c8be-4be1-892c-0befcb90267f.JPG,assets/images/thumbnails/1616444202_b61e8e58-c8be-4be1-892c-0befcb90267f.JPG', 19.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:46', 0, NULL, NULL, NULL, 0, 0),
(260, '135049797', 'normal', NULL, 0, 4, 20, 5, NULL, 'Letha', 'letha', '1616444202_fa927234-651d-4a09-a808-6ad800854fe5.JPG', '1616444202_fa927234-651d-4a09-a808-6ad800854fe5.JPG', NULL, 'T.U', '4', '24.95', '00', 'assets/images/thumbnails/1616444202_fa927234-651d-4a09-a808-6ad800854fe5.JPG', 24.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:43', 0, NULL, NULL, NULL, 0, 0),
(261, '135049798', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Katelyn', 'katelyn', '1616444202_51bde1e6-36aa-4600-9028-a7927a77e42a.JPG', '1616444202_51bde1e6-36aa-4600-9028-a7927a77e42a.JPG', NULL, 'T.U', '1', '21.95', '00', 'assets/images/thumbnails/1616444202_51bde1e6-36aa-4600-9028-a7927a77e42a.JPG', 21.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:40', 0, NULL, NULL, NULL, 0, 0),
(262, '135049799', 'normal', NULL, 0, 4, 20, 4, NULL, 'Keegan', 'keegan', '1616444202_2f52a45e-7765-4033-b461-fa3f93463bf3.JPG', '1616444202_2f52a45e-7765-4033-b461-fa3f93463bf3.JPG', NULL, 'T.U', '4', '19.95', '00', 'assets/images/thumbnails/1616444202_2f52a45e-7765-4033-b461-fa3f93463bf3.JPG', 19.95, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:38', 0, NULL, NULL, NULL, 0, 0),
(263, '135049800', 'normal', NULL, 0, 4, 13, NULL, NULL, 'Zion', 'zion', '1616444202_aea73c1d-a687-44c9-ba41-284613b6af6a.JPG', '1616444202_aea73c1d-a687-44c9-ba41-284613b6af6a.JPG', NULL, 'L,M,S', '0,0,0', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1616444202_aea73c1d-a687-44c9-ba41-284613b6af6a.JPG,assets/images/thumbnails/1616444203_aea73c1d-a687-44c9-ba41-284613b6af6a.JPG,assets/images/thumbnails/1616444203_aea73c1d-a687-44c9-ba41-284613b6af6a.JPG', 29.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:36', 0, NULL, NULL, NULL, 0, 0),
(264, '135049803', 'normal', NULL, 0, 4, 21, 8, NULL, 'Royale', 'royale', '1616444203_15c9ef41-0ec3-4485-a508-73f5c18388cd.JPG', '1616444203_15c9ef41-0ec3-4485-a508-73f5c18388cd.JPG', NULL, 'L,M,S', '0,1,0', '22.95,22.95,22.95', '00', 'assets/images/thumbnails/1616444203_15c9ef41-0ec3-4485-a508-73f5c18388cd.JPG,assets/images/thumbnails/1616444203_15c9ef41-0ec3-4485-a508-73f5c18388cd.JPG,assets/images/thumbnails/1616444203_15c9ef41-0ec3-4485-a508-73f5c18388cd.JPG', 22.95, NULL, NULL, 13, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:33', 0, NULL, NULL, NULL, 0, 0),
(265, '135049806', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Leanna', 'leanna', '1616445239_4825797c-6119-4a00-9568-f2ff04659aca.JPG', '1616445239_4825797c-6119-4a00-9568-f2ff04659aca.JPG', NULL, 'T.U', '7', '13.95', '00', 'assets/images/thumbnails/1616445239_4825797c-6119-4a00-9568-f2ff04659aca.JPG', 13.95, NULL, NULL, 14, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:30', 0, NULL, NULL, NULL, 0, 0),
(266, '135049807', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Justina', 'justina', '1616445239_16f2eab9-6cb4-4083-8d28-030a7bf4941f.JPG', '1616445239_16f2eab9-6cb4-4083-8d28-030a7bf4941f.JPG', NULL, 'T.U', '0', '34.95', '00', 'assets/images/thumbnails/1616445239_16f2eab9-6cb4-4083-8d28-030a7bf4941f.JPG', 34.95, NULL, NULL, 2, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:26', 0, NULL, NULL, NULL, 0, 0),
(267, '135049808', 'normal', NULL, 0, 4, 21, 8, NULL, 'Mali', 'mali', '1616445239_199e2aee-18da-4630-a174-862de4e6810d.JPG', '1616445239_199e2aee-18da-4630-a174-862de4e6810d.JPG', NULL, 'L,M,S', '2,1,2', '24.95,24.95,24.95', '00', 'assets/images/thumbnails/1616445239_199e2aee-18da-4630-a174-862de4e6810d.JPG,assets/images/thumbnails/1616445239_199e2aee-18da-4630-a174-862de4e6810d.JPG,assets/images/thumbnails/1616445239_199e2aee-18da-4630-a174-862de4e6810d.JPG', 24.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:24', 0, NULL, NULL, NULL, 0, 0),
(268, '135049811', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Ariah', 'ariah', '1616445239_06ed8d80-6c88-4054-b3db-0ac57f493e42.JPG', '1616445239_06ed8d80-6c88-4054-b3db-0ac57f493e42.JPG', NULL, 'T.U', '0', '32.95', '00', 'assets/images/thumbnails/1616445239_06ed8d80-6c88-4054-b3db-0ac57f493e42.JPG', 32.95, NULL, NULL, 3, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:35:45', 0, NULL, NULL, NULL, 0, 0),
(269, '135049812', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Juno', 'juno', '1616445239_07f5ffd3-f033-42e5-91d7-2afe530e845d.JPG', '1616445239_07f5ffd3-f033-42e5-91d7-2afe530e845d.JPG', NULL, 'T.U', '5', '17.95', '00', 'assets/images/thumbnails/1616445239_07f5ffd3-f033-42e5-91d7-2afe530e845d.JPG', 17.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:19', 0, NULL, NULL, NULL, 0, 0),
(270, '135049813', 'normal', NULL, 0, 4, 20, 7, NULL, 'Meera', 'meera', '1616445239_c16f4b57-9bf1-45fa-a77d-113d73f8c17f.JPG', '1616445239_c16f4b57-9bf1-45fa-a77d-113d73f8c17f.JPG', NULL, 'T.U', '5', '11.95', '00', 'assets/images/thumbnails/1616445239_c16f4b57-9bf1-45fa-a77d-113d73f8c17f.JPG', 11.95, NULL, NULL, 5, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:51:02', 0, NULL, NULL, NULL, 0, 0),
(271, '135049814', 'normal', NULL, 0, 4, 18, NULL, NULL, 'Buena', 'buena', '1616445239_72008b17-c710-46af-9ebe-9dce69ee5045.JPG', '1616445239_72008b17-c710-46af-9ebe-9dce69ee5045.JPG', NULL, 'T.U', '1', '16.95', '00', 'assets/images/thumbnails/1616445239_72008b17-c710-46af-9ebe-9dce69ee5045.JPG', 16.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:12', 0, NULL, NULL, NULL, 0, 0),
(272, '135049815', 'normal', NULL, 0, 4, 18, NULL, NULL, 'Francesca', 'francesca', '1616445239_154cb9ec-5393-431a-8365-a055825a94f3.JPG', '1616445239_154cb9ec-5393-431a-8365-a055825a94f3.JPG', NULL, 'T.U', '8', '17.95', '00', 'assets/images/thumbnails/1616445239_154cb9ec-5393-431a-8365-a055825a94f3.JPG', 17.95, NULL, NULL, 19, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:09', 0, NULL, NULL, NULL, 0, 0),
(273, '135049816', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Vesper', 'vesper', '1616445239_d4c4e4dc-c461-4cae-b308-7f1f918f76b3.JPG', '1616445239_d4c4e4dc-c461-4cae-b308-7f1f918f76b3.JPG', NULL, 'T.U', '5', '19.95', '00', 'assets/images/thumbnails/1616445239_d4c4e4dc-c461-4cae-b308-7f1f918f76b3.JPG', 19.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:07', 0, NULL, NULL, NULL, 0, 0),
(274, '135049817', 'normal', NULL, 0, 4, 19, NULL, NULL, 'Delanee', 'delanee', '1616445239_804b1172-8164-4801-a9f6-209c4771d163.JPG', '1616445239_804b1172-8164-4801-a9f6-209c4771d163.JPG', NULL, 'L,M,S', '0,1,0', '29.95,29.95,29.95', '00', 'assets/images/thumbnails/1616445239_804b1172-8164-4801-a9f6-209c4771d163.JPG,assets/images/thumbnails/1616445239_804b1172-8164-4801-a9f6-209c4771d163.JPG,assets/images/thumbnails/1616445239_804b1172-8164-4801-a9f6-209c4771d163.JPG', 29.95, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:04', 0, NULL, NULL, NULL, 0, 0),
(275, '135049820', 'normal', NULL, 0, 4, 18, NULL, NULL, 'Sania', 'sania', '1616445812_b1f68d71-667d-4bc5-b1bc-3fbd36d69982.JPG', '1616445812_b1f68d71-667d-4bc5-b1bc-3fbd36d69982.JPG', NULL, 'T.U', '5', '22.95', '00', 'assets/images/thumbnails/1616445812_b1f68d71-667d-4bc5-b1bc-3fbd36d69982.JPG', 22.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:07:02', 0, NULL, NULL, NULL, 0, 0),
(276, '135049821', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Rozlynn', 'rozlynn', '1616445812_720abc17-9ee4-4de5-a03e-dbee0b10e3c8.JPG', '1616445812_720abc17-9ee4-4de5-a03e-dbee0b10e3c8.JPG', NULL, 'T.U', '3', '14.95', '00', 'assets/images/thumbnails/1616445812_720abc17-9ee4-4de5-a03e-dbee0b10e3c8.JPG', 14.95, NULL, NULL, 14, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:59', 0, NULL, NULL, NULL, 0, 0),
(277, '135049822', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Alycia', 'alycia', '1616445812_7509a72a-9021-4f94-8260-5908fb0a409e.JPG', '1616445812_7509a72a-9021-4f94-8260-5908fb0a409e.JPG', NULL, 'T.U', '7', '13.95', '00', 'assets/images/thumbnails/1616445812_7509a72a-9021-4f94-8260-5908fb0a409e.JPG', 13.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:56', 0, NULL, NULL, NULL, 0, 0),
(278, '135049823', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Ivory', 'ivory', '1616445812_1109d1d0-300c-4a37-944e-2e4f93a4f7a5.JPG', '1616445812_1109d1d0-300c-4a37-944e-2e4f93a4f7a5.JPG', NULL, 'T.U', '3', '13.95', '00', 'assets/images/thumbnails/1616445812_1109d1d0-300c-4a37-944e-2e4f93a4f7a5.JPG', 13.95, NULL, NULL, 19, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:54', 0, NULL, NULL, NULL, 0, 0),
(279, '135049824', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Mea', 'mea', '1616445812_9b1ea868-3055-4f15-9563-2253c650eefe.JPG', '1616445812_9b1ea868-3055-4f15-9563-2253c650eefe.JPG', NULL, 'T.U', '13', '13.95', '00', 'assets/images/thumbnails/1616445812_9b1ea868-3055-4f15-9563-2253c650eefe.JPG', 13.95, NULL, NULL, 19, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:50:00', 0, NULL, NULL, NULL, 0, 0),
(280, '135049830', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Maizey', 'maizey', '1616497329_ec5fa912-6128-4f8b-b403-d71ced502115.JPG', '1616497329_ec5fa912-6128-4f8b-b403-d71ced502115.JPG', NULL, 'M/L,S/M', '5,4', '30.95,30.95', '00', 'assets/images/thumbnails/1616497329_ec5fa912-6128-4f8b-b403-d71ced502115.JPG,assets/images/thumbnails/1616497329_ec5fa912-6128-4f8b-b403-d71ced502115.JPG', 30.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:50', 0, NULL, NULL, NULL, 0, 0),
(281, '135049832', 'normal', NULL, 0, 4, 20, 4, NULL, 'Laylani', 'laylani', '1616497329_e6bce47a-bf03-43ff-ae65-4f900f37427c.JPG', '1616497329_e6bce47a-bf03-43ff-ae65-4f900f37427c.JPG', NULL, 'M/L,S/M', '2,1', '23.95,23.95', '00', 'assets/images/thumbnails/1616497329_e6bce47a-bf03-43ff-ae65-4f900f37427c.JPG,assets/images/thumbnails/1616497329_e6bce47a-bf03-43ff-ae65-4f900f37427c.JPG', 23.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:47', 0, NULL, NULL, NULL, 0, 0),
(282, '135049834', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Chloey', 'chloey', '1616497329_c2010b12-2872-4305-87f2-02f43f486a56.JPG', '1616497329_c2010b12-2872-4305-87f2-02f43f486a56.JPG', NULL, 'M/L,S/M', '3,3', '30.95,30.95', '00', 'assets/images/thumbnails/1616497329_c2010b12-2872-4305-87f2-02f43f486a56.JPG,assets/images/thumbnails/1616497329_c2010b12-2872-4305-87f2-02f43f486a56.JPG', 30.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:44', 0, NULL, NULL, NULL, 0, 0),
(283, '135049836', 'normal', NULL, 0, 4, 20, 4, NULL, 'Makaylee', 'makaylee', '1616497329_a84e47f6-79c9-4d9d-9fc5-c0a34fd50a17.JPG', '1616497329_a84e47f6-79c9-4d9d-9fc5-c0a34fd50a17.JPG', NULL, 'M/L,S/M', '3,1', '24.95,24.95', '00', 'assets/images/thumbnails/1616497329_a84e47f6-79c9-4d9d-9fc5-c0a34fd50a17.JPG,assets/images/thumbnails/1616497329_a84e47f6-79c9-4d9d-9fc5-c0a34fd50a17.JPG', 24.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:41', 0, NULL, NULL, NULL, 0, 0),
(284, '135049838', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Karlee', 'karlee', '1616497329_a4d032b0-326c-4f82-9800-8e74af8e4bd8.JPG', '1616497329_a4d032b0-326c-4f82-9800-8e74af8e4bd8.JPG', NULL, 'M/L,S/M', '3,2', '30.95,30.95', '00', 'assets/images/thumbnails/1616497329_a4d032b0-326c-4f82-9800-8e74af8e4bd8.JPG,assets/images/thumbnails/1616497329_a4d032b0-326c-4f82-9800-8e74af8e4bd8.JPG', 30.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:39', 0, NULL, NULL, NULL, 0, 0),
(285, '135049840', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Gilda', 'gilda', '1616497329_3be2420d-65be-498b-aa71-db0d0e74e1da.JPG', '1616497329_3be2420d-65be-498b-aa71-db0d0e74e1da.JPG', NULL, 'M/L,S/M', '3,3', '29.95,29.95', '00', 'assets/images/thumbnails/1616497329_3be2420d-65be-498b-aa71-db0d0e74e1da.JPG,assets/images/thumbnails/1616497329_3be2420d-65be-498b-aa71-db0d0e74e1da.JPG', 29.95, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:36', 0, NULL, NULL, NULL, 0, 0),
(286, '135049842', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Belle', 'belle', '1616498077_b0211a5c-7b47-451c-bbef-0ba96f14b55b.JPG', '1616498077_b0211a5c-7b47-451c-bbef-0ba96f14b55b.JPG', NULL, 'M/L,S/M', '2,3', '25.95,25.95', '00', 'assets/images/thumbnails/1616498077_b0211a5c-7b47-451c-bbef-0ba96f14b55b.JPG,assets/images/thumbnails/1616498077_b0211a5c-7b47-451c-bbef-0ba96f14b55b.JPG', 25.95, NULL, NULL, 10, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:34', 0, NULL, NULL, NULL, 0, 0),
(287, '135049844', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Ariany', 'ariany', '1616498077_a326dba4-07d5-4295-8b7d-83c766213ee8.JPG', '1616498077_a326dba4-07d5-4295-8b7d-83c766213ee8.JPG', NULL, 'M/L,S/M', '7,5', '32.95,32.95', '00', 'assets/images/thumbnails/1616498077_a326dba4-07d5-4295-8b7d-83c766213ee8.JPG,assets/images/thumbnails/1616498077_a326dba4-07d5-4295-8b7d-83c766213ee8.JPG', 32.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:32', 0, NULL, NULL, NULL, 0, 0),
(288, '135049846', 'normal', NULL, 0, 4, 20, 5, NULL, 'Mazie', 'mazie', '1616498077_b075770f-2fc6-44e3-b50e-b8052510a5f9.JPG', '1616498077_b075770f-2fc6-44e3-b50e-b8052510a5f9.JPG', NULL, 'M/L,S/M', '4,6', '24.95,24.95', '00', 'assets/images/thumbnails/1616498077_b075770f-2fc6-44e3-b50e-b8052510a5f9.JPG,assets/images/thumbnails/1616498077_b075770f-2fc6-44e3-b50e-b8052510a5f9.JPG', 24.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:28', 0, NULL, NULL, NULL, 0, 0),
(289, '135049848', 'normal', NULL, 0, 4, 20, 5, NULL, 'Thomassia', 'thomassia', '1616498077_a96f60bf-157d-418d-a02d-eab7f4629b62.JPG', '1616498077_a96f60bf-157d-418d-a02d-eab7f4629b62.JPG', NULL, 'M/L,S/M', '7,6', '24.95,24.95', '00', 'assets/images/thumbnails/1616498077_a96f60bf-157d-418d-a02d-eab7f4629b62.JPG,assets/images/thumbnails/1616498077_a96f60bf-157d-418d-a02d-eab7f4629b62.JPG', 24.95, NULL, NULL, 18, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:26', 0, NULL, NULL, NULL, 0, 0),
(290, '135049850', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Maylee', 'maylee', '1616498078_a20d90ed-a240-4bd8-95ae-7a39d43f831c.JPG', '1616498078_a20d90ed-a240-4bd8-95ae-7a39d43f831c.JPG', NULL, 'M/L,S/M', '3,3', '24.95,24.95', '00', 'assets/images/thumbnails/1616498078_a20d90ed-a240-4bd8-95ae-7a39d43f831c.JPG,assets/images/thumbnails/1616498078_a20d90ed-a240-4bd8-95ae-7a39d43f831c.JPG', 24.95, NULL, NULL, 10, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:23', 0, NULL, NULL, NULL, 0, 0),
(291, '135049852', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Naomy', 'naomy', '1616498078_74642fb4-db06-454a-a5cb-98566972afaa.JPG', '1616498078_74642fb4-db06-454a-a5cb-98566972afaa.JPG', NULL, 'M/L,S/M', '3,3', '24.95,24.95', '00', 'assets/images/thumbnails/1616498078_74642fb4-db06-454a-a5cb-98566972afaa.JPG,assets/images/thumbnails/1616498078_74642fb4-db06-454a-a5cb-98566972afaa.JPG', 24.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:21', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `color_image`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(292, '135049856', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Tala', 'tala', '1616498078_6e56c971-dcdc-426f-874e-9fff2578c333.JPG', '1616498078_6e56c971-dcdc-426f-874e-9fff2578c333.JPG', NULL, 'M/L,S/M', '1,1', '30.95,30.95', '00', 'assets/images/thumbnails/1616498078_6e56c971-dcdc-426f-874e-9fff2578c333.JPG,assets/images/thumbnails/1616498078_6e56c971-dcdc-426f-874e-9fff2578c333.JPG', 30.95, NULL, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:18', 0, NULL, NULL, NULL, 0, 0),
(293, '135049858', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Lucinda', 'lucinda', '1616498078_0c9c9d1a-06b4-46d4-99ae-6c1bab0c82ea.JPG', '1616498078_0c9c9d1a-06b4-46d4-99ae-6c1bab0c82ea.JPG', NULL, 'M/L,S/M', '1,3', '24.95,24.95', '00', 'assets/images/thumbnails/1616498078_0c9c9d1a-06b4-46d4-99ae-6c1bab0c82ea.JPG,assets/images/thumbnails/1616498078_0c9c9d1a-06b4-46d4-99ae-6c1bab0c82ea.JPG', 24.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:15', 0, NULL, NULL, NULL, 0, 0),
(294, '135049860', 'normal', NULL, 0, 4, 20, 5, NULL, 'Taytum', 'taytum', '1616498078_d71e8f16-015c-487f-b26f-2cd0c5f92ee2.JPG', '1616498078_d71e8f16-015c-487f-b26f-2cd0c5f92ee2.JPG', NULL, 'L,M,S', '4,3,1', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1616498078_d71e8f16-015c-487f-b26f-2cd0c5f92ee2.JPG,assets/images/thumbnails/1616498078_d71e8f16-015c-487f-b26f-2cd0c5f92ee2.JPG,assets/images/thumbnails/1616499117_d71e8f16-015c-487f-b26f-2cd0c5f92ee2.JPG', 19.95, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:13', 0, NULL, NULL, NULL, 0, 0),
(295, '135049863', 'normal', NULL, 0, 4, 20, 4, NULL, 'Oriana', 'oriana', '1616499102_6355e021-9c96-405f-aa8e-4ad1a397776b.JPG', '1616499102_6355e021-9c96-405f-aa8e-4ad1a397776b.JPG', NULL, 'M/L,S/M', '-3,3', '19.95,19.95', '00', 'assets/images/thumbnails/1616499102_6355e021-9c96-405f-aa8e-4ad1a397776b.JPG,assets/images/thumbnails/1616499102_6355e021-9c96-405f-aa8e-4ad1a397776b.JPG', 19.95, NULL, NULL, 17, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:09', 0, NULL, NULL, NULL, 0, 0),
(296, '135049865', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Elora', 'elora', '1616498322_fae53325-60d6-447b-9eea-fe5a24cd4505.JPG', '1616498322_fae53325-60d6-447b-9eea-fe5a24cd4505.JPG', NULL, 'M/L,S/M', '0,2', '34.95,34.95', '00', 'assets/images/thumbnails/1616498322_fae53325-60d6-447b-9eea-fe5a24cd4505.JPG,assets/images/thumbnails/1616498322_fae53325-60d6-447b-9eea-fe5a24cd4505.JPG', 34.95, NULL, NULL, 11, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:06:07', 0, NULL, NULL, NULL, 0, 0),
(297, '135049867', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Coralyn', 'coralyn', '1616498322_efa74494-8b0a-4367-a849-2b06790693c9.JPG', '1616498322_efa74494-8b0a-4367-a849-2b06790693c9.JPG', NULL, 'M/L,S/M', '8,12', '26.95,26.95', '00', 'assets/images/thumbnails/1616498322_efa74494-8b0a-4367-a849-2b06790693c9.JPG,assets/images/thumbnails/1616498322_efa74494-8b0a-4367-a849-2b06790693c9.JPG', 26.95, NULL, NULL, 23, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:57', 0, NULL, NULL, NULL, 0, 0),
(298, '135049869', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Camyah', 'camyah', '1616498322_e5c650ee-690d-45d1-a9c2-617cfa1cd2a3.JPG', '1616498322_e5c650ee-690d-45d1-a9c2-617cfa1cd2a3.JPG', NULL, 'M/L,S/M', '2,1', '27.95,27.95', '00', 'assets/images/thumbnails/1616498322_e5c650ee-690d-45d1-a9c2-617cfa1cd2a3.JPG,assets/images/thumbnails/1616498322_e5c650ee-690d-45d1-a9c2-617cfa1cd2a3.JPG', 27.95, NULL, NULL, 4, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:53', 0, NULL, NULL, NULL, 0, 0),
(299, '135049871', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Jacquie', 'jacquie', '1616498322_cf7fabf0-caef-4d6e-93e0-98ae7853c9fc.JPG', '1616498322_cf7fabf0-caef-4d6e-93e0-98ae7853c9fc.JPG', NULL, 'M/L,S/M', '0,2', '27.95,27.95', '00', 'assets/images/thumbnails/1616498322_cf7fabf0-caef-4d6e-93e0-98ae7853c9fc.JPG,assets/images/thumbnails/1616498322_cf7fabf0-caef-4d6e-93e0-98ae7853c9fc.JPG', 27.95, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:49', 0, NULL, NULL, NULL, 0, 0),
(300, '135049873', 'normal', NULL, 0, 4, 20, 4, NULL, 'Daleah', 'daleah', '1616498322_d90c7ca7-fafc-44fa-9afe-6cdbb5f9a353.JPG', '1616498322_d90c7ca7-fafc-44fa-9afe-6cdbb5f9a353.JPG', NULL, 'M/L,S/M', '2,1', '19.95,19.95', '00', 'assets/images/thumbnails/1616498322_d90c7ca7-fafc-44fa-9afe-6cdbb5f9a353.JPG,assets/images/thumbnails/1616498322_d90c7ca7-fafc-44fa-9afe-6cdbb5f9a353.JPG', 19.95, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:47', 0, NULL, NULL, NULL, 0, 0),
(301, '135049875', 'normal', NULL, 0, 4, 20, 4, NULL, 'Allegra', 'allegra', '1616498322_c956618f-4b34-4056-9fc6-4c8ed0cb7fdc.JPG', '1616498322_c956618f-4b34-4056-9fc6-4c8ed0cb7fdc.JPG', NULL, 'M/L,S/M', '1,3', '19.95,19.95', '00', 'assets/images/thumbnails/1616498322_c956618f-4b34-4056-9fc6-4c8ed0cb7fdc.JPG,assets/images/thumbnails/1616498322_c956618f-4b34-4056-9fc6-4c8ed0cb7fdc.JPG', 19.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:43', 0, NULL, NULL, NULL, 0, 0),
(302, '135049877', 'normal', NULL, 0, 4, 20, 5, NULL, 'Lioria', 'lioria', '1616498322_bcf66fae-5710-4e2e-8f9c-56b466101b11.JPG', '1616498322_bcf66fae-5710-4e2e-8f9c-56b466101b11.JPG', NULL, 'L,M,S', '0,4,1', '19.95,19.95,19.95', '00', 'assets/images/thumbnails/1616498322_bcf66fae-5710-4e2e-8f9c-56b466101b11.JPG,assets/images/thumbnails/1616498322_bcf66fae-5710-4e2e-8f9c-56b466101b11.JPG,assets/images/thumbnails/1616498322_bcf66fae-5710-4e2e-8f9c-56b466101b11.JPG', 19.95, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:41', 0, NULL, NULL, NULL, 0, 0),
(303, '135049880', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Lediana', 'lediana', '1616498322_b21992a3-653e-4fb3-ad65-d53eb6fd3e8f.JPG', '1616498322_b21992a3-653e-4fb3-ad65-d53eb6fd3e8f.JPG', NULL, 'M/L,S/M', '0,0', '24.95,24.95', '00', 'assets/images/thumbnails/1616498322_b21992a3-653e-4fb3-ad65-d53eb6fd3e8f.JPG,assets/images/thumbnails/1616498322_b21992a3-653e-4fb3-ad65-d53eb6fd3e8f.JPG', 24.95, NULL, NULL, 5, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:17:21', 0, NULL, NULL, NULL, 0, 0),
(304, '135049886', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Emmalynn', 'emmalynn', '1616499635_f0b2bd4d-f739-4c7b-813d-2c14c0d630a5.JPG', '1616499635_f0b2bd4d-f739-4c7b-813d-2c14c0d630a5.JPG', NULL, 'M/L,S/M', '5,6', '24.95,24.95', '00', 'assets/images/thumbnails/1616499635_f0b2bd4d-f739-4c7b-813d-2c14c0d630a5.JPG,assets/images/thumbnails/1616499635_f0b2bd4d-f739-4c7b-813d-2c14c0d630a5.JPG', 24.95, NULL, NULL, 5, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:16:19', 0, NULL, NULL, NULL, 0, 0),
(305, '135049911', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Antonella', 'antonella', '1616652539_IMG_7565.JPG', '1616652539_IMG_7565.JPG', NULL, 'T.U', '2', '19.95', '00', 'assets/images/thumbnails/1616652539_IMG_7565.JPG', 19.95, NULL, NULL, 5, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:17:22', 0, NULL, NULL, NULL, 0, 0),
(306, '135049912', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Arista', 'arista', '1616652539_IMG_7564.JPG', '1616652539_IMG_7564.JPG', NULL, 'T.U', '4', '19.95', '00', 'assets/images/thumbnails/1616652539_IMG_7564.JPG', 19.95, NULL, NULL, 4, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:16:21', 0, NULL, NULL, NULL, 0, 0),
(307, '135049913', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Corra', 'corra', '1616652539_IMG_7563.JPG', '1616652539_IMG_7563.JPG', NULL, 'T.U', '6', '19.95', '00', 'assets/images/thumbnails/1616652539_IMG_7563.JPG', 19.95, NULL, NULL, 7, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:14:16', 0, NULL, NULL, NULL, 0, 0),
(308, '135049914', 'normal', NULL, 0, 1, 6, NULL, NULL, 'Evelina', 'evelina', '1616652539_IMG_7562.JPG', '1616652539_IMG_7562.JPG', NULL, 'T.U', '5', '19.95', '00', 'assets/images/thumbnails/1616652539_IMG_7562.JPG', 19.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:11:32', 0, NULL, NULL, NULL, 0, 0),
(309, '135049964', 'normal', NULL, 0, 4, 20, 7, NULL, 'Erielle', 'erielle', '1617718573_989c3a0c-194b-4b25-8d19-4bc9bd745541.JPG', '1617718573_989c3a0c-194b-4b25-8d19-4bc9bd745541.JPG', NULL, 'M/L,S/M', '1,2', '10.95,10.95', '00', 'assets/images/thumbnails/1617718573_989c3a0c-194b-4b25-8d19-4bc9bd745541.JPG,assets/images/thumbnails/1617718573_989c3a0c-194b-4b25-8d19-4bc9bd745541.JPG', 10.95, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:18', 0, NULL, NULL, NULL, 0, 0),
(310, '135049966', 'normal', NULL, 0, 4, 20, 7, NULL, 'Columbias', 'columbias', '1617718573_6d90141f-db66-4b7a-a0d2-eda1ae468ed5.JPG', '1617718573_6d90141f-db66-4b7a-a0d2-eda1ae468ed5.JPG', NULL, 'L/XL,S/M', '8,18', '10.95,10.95', '00', 'assets/images/thumbnails/1617718573_6d90141f-db66-4b7a-a0d2-eda1ae468ed5.JPG,assets/images/thumbnails/1617718573_6d90141f-db66-4b7a-a0d2-eda1ae468ed5.JPG', 10.95, NULL, NULL, 58, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 03:05:15', 0, NULL, NULL, NULL, 0, 0),
(311, '135050032', 'normal', NULL, 0, 4, 13, NULL, NULL, 'Kirby', 'kirby', '1619690707_c5b7105b-791d-4634-ada9-fba5db0cc30d.JPG', '1619690707_c5b7105b-791d-4634-ada9-fba5db0cc30d.JPG', NULL, 'L,M,S', '4,4,3', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1619690707_c5b7105b-791d-4634-ada9-fba5db0cc30d.JPG,assets/images/thumbnails/1619690707_c5b7105b-791d-4634-ada9-fba5db0cc30d.JPG,assets/images/thumbnails/1619690707_c5b7105b-791d-4634-ada9-fba5db0cc30d.JPG', 34.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:34:44', 0, NULL, NULL, NULL, 0, 0),
(312, '135050038', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Dariela', 'dariela', '1619690707_IMG_8074.jpg', '1619690707_IMG_8074.jpg', NULL, 'L,M,S', '2,4,3', '27.95,27.95,27.95', '00', 'assets/images/thumbnails/1619690707_IMG_8074.jpg,assets/images/thumbnails/1619690707_IMG_8074.jpg,assets/images/thumbnails/1619690707_IMG_8074.jpg', 27.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:15:17', 0, NULL, NULL, NULL, 0, 0),
(313, '135050041', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Nicole', 'nicole', '1619690707_4fbb4af0-cb10-4b65-a8c0-afcd544f45a8.JPG', '1619690707_4fbb4af0-cb10-4b65-a8c0-afcd544f45a8.JPG', NULL, 'L,M,S', '6,7,5', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1619690707_4fbb4af0-cb10-4b65-a8c0-afcd544f45a8.JPG,assets/images/thumbnails/1619690707_4fbb4af0-cb10-4b65-a8c0-afcd544f45a8.JPG,assets/images/thumbnails/1619690707_4fbb4af0-cb10-4b65-a8c0-afcd544f45a8.JPG', 34.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:14:15', 0, NULL, NULL, NULL, 0, 0),
(314, '135050044', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Nanou', 'nanou', '1619690707_e3dad5ec-aed8-4f6a-ac6c-13ed8d560dbb.JPG', '1619690707_e3dad5ec-aed8-4f6a-ac6c-13ed8d560dbb.JPG', NULL, 'L,M,S', '1,2,3', '34.95,34.95,34.95', '00', 'assets/images/thumbnails/1619690707_e3dad5ec-aed8-4f6a-ac6c-13ed8d560dbb.JPG,assets/images/thumbnails/1619690707_e3dad5ec-aed8-4f6a-ac6c-13ed8d560dbb.JPG,assets/images/thumbnails/1619690707_e3dad5ec-aed8-4f6a-ac6c-13ed8d560dbb.JPG', 34.95, NULL, NULL, 1, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:13:14', 0, NULL, NULL, NULL, 0, 0),
(315, '135050259', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Blima', 'blima', '1620472877_340ab3f9-fcf7-44ac-ae4a-ba54956c00fd.JPG', '1620472877_340ab3f9-fcf7-44ac-ae4a-ba54956c00fd.JPG', NULL, 'L,M,S,L,M,S,L,M', '1,1,2,2,0,0,2,2', '25.95,25.95,25.95,25.95,25.95,25.95,25.95,25.95', 'VERT', 'assets/images/thumbnails/1620472877_340ab3f9-fcf7-44ac-ae4a-ba54956c00fd.JPG,assets/images/thumbnails/1620472878_340ab3f9-fcf7-44ac-ae4a-ba54956c00fd.JPG,assets/images/thumbnails/1620472878_340ab3f9-fcf7-44ac-ae4a-ba54956c00fd.JPG,assets/images/thumbnails/1620472878_4142e709-1647-410b-abfd-b243bab57d66.JPG,assets/images/thumbnails/1620472878_4142e709-1647-410b-abfd-b243bab57d66.JPG,assets/images/thumbnails/1620472878_4142e709-1647-410b-abfd-b243bab57d66.JPG,assets/images/thumbnails/1620474642_04468adf-ca62-4ac5-a578-02898a933b7a.JPG,assets/images/thumbnails/1620474590_04468adf-ca62-4ac5-a578-02898a933b7a.JPG', 25.95, NULL, NULL, 12, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:11:34', 0, NULL, NULL, NULL, 0, 0),
(316, '135050268', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Gabriela', 'gabriela', '1620472878_4b2b92fe-1c5a-4064-b6b4-5d92aa5b9934.JPG', '1620472878_4b2b92fe-1c5a-4064-b6b4-5d92aa5b9934.JPG', NULL, 'L,M,S,L,M,S,L,M,S', '2,2,2,2,2,2,1,1,1', '35.95,35.95,35.95,35.95,35.95,35.95,35.95,35.95,35.95', 'ROSE', 'assets/images/thumbnails/1620472878_4b2b92fe-1c5a-4064-b6b4-5d92aa5b9934.JPG,assets/images/thumbnails/1620472878_4b2b92fe-1c5a-4064-b6b4-5d92aa5b9934.JPG,assets/images/thumbnails/1620472878_4b2b92fe-1c5a-4064-b6b4-5d92aa5b9934.JPG,assets/images/thumbnails/1620472878_d01617e5-e725-4e95-a0c4-fcbfc04e1461.JPG,assets/images/thumbnails/1620472878_d01617e5-e725-4e95-a0c4-fcbfc04e1461.JPG,assets/images/thumbnails/1620472878_d01617e5-e725-4e95-a0c4-fcbfc04e1461.JPG,assets/images/thumbnails/1620472878_82185884-a71d-4851-b9a9-55038e25da2d.JPG,assets/images/thumbnails/1620472878_82185884-a71d-4851-b9a9-55038e25da2d.JPG,assets/images/thumbnails/1620472878_82185884-a71d-4851-b9a9-55038e25da2d.JPG', 35.95, NULL, NULL, 15, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:10:33', 0, NULL, NULL, NULL, 0, 0),
(317, '135050278', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Frostine', 'frostine', '1620473398_75f724e4-c6ea-497a-9d83-a28c33809411.JPG', '1620473398_75f724e4-c6ea-497a-9d83-a28c33809411.JPG', NULL, 'L,M,S', '2,2,0', '39.95,39.95,39.95', 'BLUE', 'assets/images/thumbnails/1620473398_75f724e4-c6ea-497a-9d83-a28c33809411.JPG,assets/images/thumbnails/1620473399_75f724e4-c6ea-497a-9d83-a28c33809411.JPG,assets/images/thumbnails/1620473399_75f724e4-c6ea-497a-9d83-a28c33809411.JPG', 39.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:33:43', 0, NULL, NULL, NULL, 0, 0),
(318, '135050281', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Magali', 'magali', '1620473399_bbf1b96f-336c-4121-b142-1a12c98b9130.JPG', '1620473399_bbf1b96f-336c-4121-b142-1a12c98b9130.JPG', NULL, 'L,M,S', '1,2,1', '29.95,29.95,29.95', 'CHOCO', 'assets/images/thumbnails/1620473399_bbf1b96f-336c-4121-b142-1a12c98b9130.JPG,assets/images/thumbnails/1620473399_bbf1b96f-336c-4121-b142-1a12c98b9130.JPG,assets/images/thumbnails/1620473399_bbf1b96f-336c-4121-b142-1a12c98b9130.JPG', 29.95, NULL, NULL, 4, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:32:41', 0, NULL, NULL, NULL, 0, 0),
(319, '135050284', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Ever', 'ever', '1620473399_4a537374-4a00-4f38-9952-107888c51e8b.JPG', '1620473399_4a537374-4a00-4f38-9952-107888c51e8b.JPG', NULL, 'L,M,S,L,M,S', '2,4,4,-2,1,0', '37.95,37.95,37.95,37.95,37.95,37.95', 'NOIR', 'assets/images/thumbnails/1620473399_4a537374-4a00-4f38-9952-107888c51e8b.JPG,assets/images/thumbnails/1620473399_4a537374-4a00-4f38-9952-107888c51e8b.JPG,assets/images/thumbnails/1620473399_4a537374-4a00-4f38-9952-107888c51e8b.JPG,assets/images/thumbnails/1620473399_1c0efdc2-9316-4dd1-adcd-6424d02a5151.JPG,assets/images/thumbnails/1620473399_1c0efdc2-9316-4dd1-adcd-6424d02a5151.JPG,assets/images/thumbnails/1620473399_1c0efdc2-9316-4dd1-adcd-6424d02a5151.JPG', 37.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:31:40', 0, NULL, NULL, NULL, 0, 0),
(320, '135050290', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Cachet', 'cachet', '1620473862_ffcc1581-b91f-414c-8a68-98293f97cc4d.JPG', '1620473862_ffcc1581-b91f-414c-8a68-98293f97cc4d.JPG', NULL, 'L,M,S,L,M,S,L,M,S', '1,2,-1,7,7,4,2,2,2', '25.95,25.95,25.95,25.95,25.95,25.95,25.95,25.95,25.95', 'VERT', 'assets/images/thumbnails/1620473862_ffcc1581-b91f-414c-8a68-98293f97cc4d.JPG,assets/images/thumbnails/1620473862_ffcc1581-b91f-414c-8a68-98293f97cc4d.JPG,assets/images/thumbnails/1620473862_ffcc1581-b91f-414c-8a68-98293f97cc4d.JPG,assets/images/thumbnails/1620473862_b0dbf3a7-56a5-40b6-b9db-9cb08f09cb70.JPG,assets/images/thumbnails/1620473862_b0dbf3a7-56a5-40b6-b9db-9cb08f09cb70.JPG,assets/images/thumbnails/1620473862_b0dbf3a7-56a5-40b6-b9db-9cb08f09cb70.JPG,assets/images/thumbnails/1620473862_60d2c836-b812-43eb-9d43-5cc937ddb9c5.JPG,assets/images/thumbnails/1620473863_60d2c836-b812-43eb-9d43-5cc937ddb9c5.JPG,assets/images/thumbnails/1620473863_60d2c836-b812-43eb-9d43-5cc937ddb9c5.JPG', 25.95, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:09:31', 0, NULL, NULL, NULL, 0, 0),
(321, '135050299', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Gala', 'gala', '1620474157_a8e449bc-06f8-4fd2-a344-607147434039.JPG', '1620474157_a8e449bc-06f8-4fd2-a344-607147434039.JPG', NULL, 'L,M,S', '1,2,1', '25.95,25.95,25.95', '00', 'assets/images/thumbnails/1620474157_a8e449bc-06f8-4fd2-a344-607147434039.JPG,assets/images/thumbnails/1620474157_a8e449bc-06f8-4fd2-a344-607147434039.JPG,assets/images/thumbnails/1620474157_a8e449bc-06f8-4fd2-a344-607147434039.JPG', 25.95, NULL, NULL, 5, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 15:47:42', 0, NULL, NULL, NULL, 0, 0),
(322, '135050302', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Brayleigh', 'brayleigh', '1620474405_04468adf-ca62-4ac5-a578-02898a933b7a.JPG', '1620474405_04468adf-ca62-4ac5-a578-02898a933b7a.JPG', NULL, 'L,M,S', '2,2,2', '25.95,25.95,25.95', 'NOIR', 'assets/images/thumbnails/1620474405_04468adf-ca62-4ac5-a578-02898a933b7a.JPG,assets/images/thumbnails/1620474405_04468adf-ca62-4ac5-a578-02898a933b7a.JPG,assets/images/thumbnails/1620474405_04468adf-ca62-4ac5-a578-02898a933b7a.JPG', 25.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 05:57:33', 0, NULL, NULL, NULL, 0, 0),
(323, '135050373', 'normal', NULL, 0, 4, 13, NULL, NULL, 'Tancy', 'tancy', '1620664524_IMG_8570.jpg', '1620664524_IMG_8570.jpg', NULL, '42,40,38,36,34,42,40,38,36,34', '1,1,2,2,1,1,2,3,3,1', '27.95,27.95,27.95,27.95,27.95,27.95,27.95,27.95,27.95,27.95', 'BLUE', 'assets/images/thumbnails/1620664524_IMG_8570.jpg,assets/images/thumbnails/1620664524_IMG_8570.jpg,assets/images/thumbnails/1620664524_IMG_8570.jpg,assets/images/thumbnails/1620664524_IMG_8570.jpg,assets/images/thumbnails/1620664524_IMG_8570.jpg,assets/images/thumbnails/1620664524_IMG_8595.jpg,assets/images/thumbnails/1620664524_IMG_8595.jpg,assets/images/thumbnails/1620664524_IMG_8595.jpg,assets/images/thumbnails/1620664524_IMG_8595.jpg,assets/images/thumbnails/1620664524_IMG_8595.jpg', 27.95, NULL, NULL, 17, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:30:38', 0, NULL, NULL, NULL, 0, 0),
(324, '135050388', 'normal', NULL, 0, 4, 21, 10, NULL, 'Amairany', 'amairany', '1620666245_IMG_8599.jpg', '1620666245_IMG_8599.jpg', NULL, 'XXL,XL,L,M,S,XXL,XL,L,M,S,XXL,XL,L,M,S,XXL,XL,L,M,S,XXL,XL,L,M,S,XXL,XL,L,M,S,XXL,XL,L,M,S', '2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,1,2,2,1,2,2,1,2,2,2', '17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95', 'NOIR', 'assets/images/thumbnails/1620666245_IMG_8599.jpg,assets/images/thumbnails/1620666245_IMG_8599.jpg,assets/images/thumbnails/1620666245_IMG_8599.jpg,assets/images/thumbnails/1620666245_IMG_8599.jpg,assets/images/thumbnails/1620666245_IMG_8599.jpg,assets/images/thumbnails/1620667319_IMG_8598.jpg,assets/images/thumbnails/1620667351_IMG_8598.jpg,assets/images/thumbnails/1620667264_IMG_8598.jpg,assets/images/thumbnails/1620667278_IMG_8598.jpg,assets/images/thumbnails/1620667293_IMG_8598.jpg,assets/images/thumbnails/1620667150_IMG_8600.jpg,assets/images/thumbnails/1620667170_IMG_8600.jpg,assets/images/thumbnails/1620667185_IMG_8600.jpg,assets/images/thumbnails/1620667215_IMG_8600.jpg,assets/images/thumbnails/1620667235_IMG_8600.jpg,assets/images/thumbnails/1620667086_IMG_8601.jpg,assets/images/thumbnails/1620667010_IMG_8601.jpg,assets/images/thumbnails/1620667023_IMG_8601.jpg,assets/images/thumbnails/1620667038_IMG_8601.jpg,assets/images/thumbnails/1620667055_IMG_8601.jpg,assets/images/thumbnails/1620666878_IMG_8602.jpg,assets/images/thumbnails/1620666905_IMG_8602.jpg,assets/images/thumbnails/1620666929_IMG_8602.jpg,assets/images/thumbnails/1620666949_IMG_8602.jpg,assets/images/thumbnails/1620666962_IMG_8602.jpg,assets/images/thumbnails/1620666765_IMG_8603.jpg,assets/images/thumbnails/1620666783_IMG_8603.jpg,assets/images/thumbnails/1620666801_IMG_8603.jpg,assets/images/thumbnails/1620666815_IMG_8603.jpg,assets/images/thumbnails/1620666832_IMG_8603.jpg,assets/images/thumbnails/1620666575_IMG_8569.jpg,assets/images/thumbnails/1620666538_IMG_8569.jpg,assets/images/thumbnails/1620666518_IMG_8569.jpg,assets/images/thumbnails/1620666443_IMG_8569.jpg,assets/images/thumbnails/1620666339_IMG_8569.jpg', 17.95, NULL, NULL, 65, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:38:47', 0, NULL, NULL, NULL, 0, 0),
(325, '135050423', 'normal', NULL, 0, 4, 21, 10, NULL, 'Kallie', 'kallie', '1620667862_IMG_8572.jpg', '1620667862_IMG_8572.jpg', NULL, 'XXL,XL,L,M,S', '4,3,4,3,2', '19.95,19.95,19.95,19.95,19.95', '00', 'assets/images/thumbnails/1620667862_IMG_8572.jpg,assets/images/thumbnails/1620667863_IMG_8572.jpg,assets/images/thumbnails/1620667863_IMG_8572.jpg,assets/images/thumbnails/1620667863_IMG_8572.jpg,assets/images/thumbnails/1620667863_IMG_8572.jpg', 19.95, NULL, NULL, 16, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 05:21:33', 0, NULL, NULL, NULL, 0, 0),
(326, '135050428', 'normal', NULL, 0, 4, 21, 10, NULL, 'Guillaumette', 'guillaumette', '1620667863_IMG_8596.jpg', '1620667863_IMG_8596.jpg', NULL, 'XXL,XL,L,M,S', '3,3,4,4,3', '19.95,19.95,19.95,19.95,19.95', '00', 'assets/images/thumbnails/1620667863_IMG_8596.jpg,assets/images/thumbnails/1620667863_IMG_8596.jpg,assets/images/thumbnails/1620667863_IMG_8596.jpg,assets/images/thumbnails/1620667863_IMG_8596.jpg,assets/images/thumbnails/1620667863_IMG_8596.jpg', 19.95, NULL, NULL, 17, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 05:10:36', 0, NULL, NULL, NULL, 0, 0),
(327, '135050433', 'normal', NULL, 0, 4, 21, 10, NULL, 'Alia', 'alia', '1620667863_IMG_8571.jpg', '1620667863_IMG_8571.jpg', NULL, '42,40,38,36,34', '1,2,3,2,0', '19.95,19.95,19.95,19.95,19.95', '00', 'assets/images/thumbnails/1620667863_IMG_8571.jpg,assets/images/thumbnails/1620667863_IMG_8571.jpg,assets/images/thumbnails/1620667863_IMG_8571.jpg,assets/images/thumbnails/1620667863_IMG_8571.jpg,assets/images/thumbnails/1620667863_IMG_8571.jpg', 19.95, NULL, NULL, 1, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 03:51:46', 0, NULL, NULL, NULL, 0, 0),
(328, '135050438', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Samirah', 'samirah', '1620668440_IMG_8611.JPG', '1620668440_IMG_8611.JPG', NULL, '42,40,38,36,34', '1,1,3,2,1', '20.95,20.95,20.95,20.95,20.95', '00', 'assets/images/thumbnails/1620668440_IMG_8611.JPG,assets/images/thumbnails/1620668440_IMG_8611.JPG,assets/images/thumbnails/1620668440_IMG_8611.JPG,assets/images/thumbnails/1620668440_IMG_8611.JPG,assets/images/thumbnails/1620668440_IMG_8611.JPG', 20.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:29:37', 0, NULL, NULL, NULL, 0, 0),
(329, '135050443', 'normal', NULL, 0, 4, 21, 10, NULL, 'Laya', 'laya', '1620668440_IMG_8573.jpg', '1620668440_IMG_8573.jpg', NULL, 'XXL,XL,L,M,S,XXL,XL,L,M,S', '4,4,4,4,4,2,4,4,2,3', '18.95,18.95,18.95,18.95,18.95,18.95,18.95,18.95,18.95,18.95', 'BLANC', 'assets/images/thumbnails/1620668440_IMG_8573.jpg,assets/images/thumbnails/1620668440_IMG_8573.jpg,assets/images/thumbnails/1620668440_IMG_8573.jpg,assets/images/thumbnails/1620668440_IMG_8573.jpg,assets/images/thumbnails/1620668440_IMG_8573.jpg,assets/images/thumbnails/1620668440_IMG_8597.jpg,assets/images/thumbnails/1620668440_IMG_8597.jpg,assets/images/thumbnails/1620668440_IMG_8597.jpg,assets/images/thumbnails/1620668440_IMG_8597.jpg,assets/images/thumbnails/1620668440_IMG_8597.jpg', 18.95, NULL, NULL, 4, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 05:43:55', 0, NULL, NULL, NULL, 0, 0),
(330, '135050453', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Oakleigh', 'oakleigh', '1620671202_E222E0FE-3889-4EBC-BC35-351D8DAE539D.JPG', '1620671202_E222E0FE-3889-4EBC-BC35-351D8DAE539D.JPG', NULL, 'T.U', '6', '30.95', 'BLANC', 'assets/images/thumbnails/1620671202_E222E0FE-3889-4EBC-BC35-351D8DAE539D.JPG', 30.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:28:35', 0, NULL, NULL, NULL, 0, 0),
(331, '135050454', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Clementine', 'clementine', '1620671202_4C25DD3F-DC3B-4CE1-973E-55B53E39D71F.JPG', '1620671202_4C25DD3F-DC3B-4CE1-973E-55B53E39D71F.JPG', NULL, 'T.U', '17', '30.95', 'BLANC', 'assets/images/thumbnails/1620671202_4C25DD3F-DC3B-4CE1-973E-55B53E39D71F.JPG', 30.95, NULL, NULL, 17, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:27:34', 0, NULL, NULL, NULL, 0, 0),
(332, '135050458', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Jakiyah', 'jakiyah', '1620672442_28a39c6d-2020-4e5e-882d-a053bddf6087.JPG', '1620672442_28a39c6d-2020-4e5e-882d-a053bddf6087.JPG', NULL, 'T.U', '9', '10.95', '00', 'assets/images/thumbnails/1620672442_28a39c6d-2020-4e5e-882d-a053bddf6087.JPG', 10.95, NULL, NULL, 9, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 02:46:05', 0, NULL, NULL, NULL, 0, 0),
(333, '135050469', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Coral', 'coral', '1620817126_9680abaf-ace8-4691-ba69-ddb13b66d5ba.JPG', '1620817126_9680abaf-ace8-4691-ba69-ddb13b66d5ba.JPG', NULL, 'M/L,S/M', '4,4', '35.95,35.95', '00', 'assets/images/thumbnails/1620817126_9680abaf-ace8-4691-ba69-ddb13b66d5ba.JPG,assets/images/thumbnails/1620817126_9680abaf-ace8-4691-ba69-ddb13b66d5ba.JPG', 35.95, NULL, NULL, 8, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:26:32', 0, NULL, NULL, NULL, 0, 0),
(334, '135050497', 'normal', NULL, 0, 4, 21, 8, NULL, 'Earla', 'earla', '1621278874_5165e79e-9b7f-44d4-be33-82957258e83f.JPG', '1621278874_5165e79e-9b7f-44d4-be33-82957258e83f.JPG', NULL, 'T.U', '8', '24.95', '00', 'assets/images/thumbnails/1621278874_5165e79e-9b7f-44d4-be33-82957258e83f.JPG', 24.95, NULL, NULL, 8, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 04:59:48', 0, NULL, NULL, NULL, 0, 0),
(335, '135050499', 'normal', NULL, 0, 4, 21, 8, NULL, 'Amina', 'amina', '1621278874_b7574b77-48dd-41dd-94f9-ce1f723c59e1.JPG', '1621278874_b7574b77-48dd-41dd-94f9-ce1f723c59e1.JPG', NULL, 'T.U', '15', '19.95', '00', 'assets/images/thumbnails/1621278874_b7574b77-48dd-41dd-94f9-ce1f723c59e1.JPG', 19.95, NULL, NULL, 15, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 04:03:47', 0, NULL, NULL, NULL, 0, 0),
(336, '135050508', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Keyli', 'keyli', '1621279506_ecd87170-f2a2-4f0a-ac5d-7c7874b15111.JPG', '1621279506_ecd87170-f2a2-4f0a-ac5d-7c7874b15111.JPG', NULL, 'T.U', '13', '13.95', '00', 'assets/images/thumbnails/1621279506_ecd87170-f2a2-4f0a-ac5d-7c7874b15111.JPG', 13.95, NULL, NULL, 13, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:48:59', 0, NULL, NULL, NULL, 0, 0),
(337, '135050509', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Kyleah', 'kyleah', '1621279507_52aaa5d9-6a14-47aa-9ba7-97cde51daaf9.JPG', '1621279507_52aaa5d9-6a14-47aa-9ba7-97cde51daaf9.JPG', NULL, 'T.U', '10', '10.95', '00', 'assets/images/thumbnails/1621279507_52aaa5d9-6a14-47aa-9ba7-97cde51daaf9.JPG', 10.95, NULL, NULL, 10, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:47:58', 0, NULL, NULL, NULL, 0, 0),
(338, '135050510', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Letty', 'letty', '1621281440_IMG_0A9CE6C885E9-1.jpeg', '1621281440_IMG_0A9CE6C885E9-1.jpeg', NULL, 'M/L,S/M,M/L,S/M', '3,2,3,3', '34.95,34.95,34.95,34.95', 'NOIR', 'assets/images/thumbnails/1621281440_IMG_0A9CE6C885E9-1.jpeg,assets/images/thumbnails/1621281440_IMG_0A9CE6C885E9-1.jpeg,assets/images/thumbnails/1621281736_IMG_4F3EC68484E9-1.jpeg,assets/images/thumbnails/1621281751_IMG_4F3EC68484E9-1.jpeg', 34.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:06:28', 0, NULL, NULL, NULL, 0, 0),
(339, '135050514', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Railynn', 'railynn', '1621281440_abbef18d-cf71-4cfa-ae61-435d2d0d88fd.JPG', '1621281440_abbef18d-cf71-4cfa-ae61-435d2d0d88fd.JPG', NULL, 'M/L,S/M', '6,3', '27.95,27.95', 'ROSE', 'assets/images/thumbnails/1621281440_abbef18d-cf71-4cfa-ae61-435d2d0d88fd.JPG,assets/images/thumbnails/1621281440_abbef18d-cf71-4cfa-ae61-435d2d0d88fd.JPG', 27.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:05:26', 0, NULL, NULL, NULL, 0, 0),
(340, '135050516', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Darling', 'darling', '1621281440_IMG_48CB8BC6CEF4-1.jpeg', '1621281440_IMG_48CB8BC6CEF4-1.jpeg', NULL, 'M/L,S/M', '6,5', '26.95,26.95', 'NOIR', 'assets/images/thumbnails/1621281440_IMG_48CB8BC6CEF4-1.jpeg,assets/images/thumbnails/1621281441_IMG_48CB8BC6CEF4-1.jpeg', 26.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:04:25', 0, NULL, NULL, NULL, 0, 0),
(341, '135050518', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Marcella', 'marcella', '1621281441_bbd54b29-b2ec-42a9-878c-9ef2e16c313f.JPG', '1621281441_bbd54b29-b2ec-42a9-878c-9ef2e16c313f.JPG', NULL, 'M/L,S/M', '6,6', '34.95,34.95', 'BLANC', 'assets/images/thumbnails/1621281441_bbd54b29-b2ec-42a9-878c-9ef2e16c313f.JPG,assets/images/thumbnails/1621281441_bbd54b29-b2ec-42a9-878c-9ef2e16c313f.JPG', 34.95, NULL, NULL, 12, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:03:24', 0, NULL, NULL, NULL, 0, 0),
(342, '135050520', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Kynzie', 'kynzie', '1621281587_IMG_ECDA17B91944-1.jpeg', '1621281587_IMG_ECDA17B91944-1.jpeg', NULL, 'M/L,S/M', '5,6', '34.95,34.95', 'NOIR', 'assets/images/thumbnails/1621281587_IMG_ECDA17B91944-1.jpeg,assets/images/thumbnails/1621281587_IMG_ECDA17B91944-1.jpeg', 34.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:02:22', 0, NULL, NULL, NULL, 0, 0),
(343, '135050522', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Eyre', 'eyre', '1621282974_IMG_E325A3760400-1.jpeg', '1621282974_IMG_E325A3760400-1.jpeg', NULL, 'M/L,S/M,M/L,S/M', '2,3,1,3', '27.95,27.95,27.95,27.95', 'BLUE', 'assets/images/thumbnails/1621282974_IMG_E325A3760400-1.jpeg,assets/images/thumbnails/1621282986_IMG_E325A3760400-1.jpeg,assets/images/thumbnails/1621283007_IMG_EBD0B8CAC34E-1.jpeg,assets/images/thumbnails/1621283020_IMG_EBD0B8CAC34E-1.jpeg', 27.95, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:25:31', 0, NULL, NULL, NULL, 0, 0),
(344, '135050526', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Aur_lie', 'aur_lie', '1621283035_IMG_C39CB148364D-1.jpeg', '1621283035_IMG_C39CB148364D-1.jpeg', NULL, 'M/L,S/M', '1,2', '34.95,34.95', 'ROSE', 'assets/images/thumbnails/1621283035_IMG_C39CB148364D-1.jpeg,assets/images/thumbnails/1621283035_IMG_C39CB148364D-1.jpeg', 34.95, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:24:30', 0, NULL, NULL, NULL, 0, 0),
(345, '135050530', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Azari', 'azari', '1621282796_f25e144e-81ec-48eb-be4a-5860d8b91f69.JPG', '1621282796_f25e144e-81ec-48eb-be4a-5860d8b91f69.JPG', NULL, 'M/L,S/M', '3,3', '34.95,34.95', 'ROSE', 'assets/images/thumbnails/1621282796_f25e144e-81ec-48eb-be4a-5860d8b91f69.JPG,assets/images/thumbnails/1621282796_f25e144e-81ec-48eb-be4a-5860d8b91f69.JPG', 34.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:02:21', 0, NULL, NULL, NULL, 0, 0),
(346, '135050532', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Julianne', 'julianne', '1621282727_IMG_FF8C147E8EBD-1.jpeg', '1621282727_IMG_FF8C147E8EBD-1.jpeg', NULL, 'M/L,S/M', '3,3', '20.95,20.95', '00', 'assets/images/thumbnails/1621282727_IMG_FF8C147E8EBD-1.jpeg,assets/images/thumbnails/1621282727_IMG_FF8C147E8EBD-1.jpeg', 20.95, NULL, NULL, 6, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 07:00:29', 0, NULL, NULL, NULL, 0, 0),
(347, '135050534', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Eliani', 'eliani', '1621282887_IMG_3338693B23C8-1.jpeg', '1621282887_IMG_3338693B23C8-1.jpeg', NULL, 'M/L,S/M,M/L,S/M', '6,6,5,6', '27.95,27.95,27.95,27.95', 'BLUE CIEL', 'assets/images/thumbnails/1621282887_IMG_3338693B23C8-1.jpeg,assets/images/thumbnails/1621282900_IMG_3338693B23C8-1.jpeg,assets/images/thumbnails/1621282939_IMG_1598664ECB02-1.jpeg,assets/images/thumbnails/1621282954_IMG_1598664ECB02-1.jpeg', 27.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 18:12:40', 0, NULL, NULL, NULL, 0, 0),
(348, '135050538', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Haneen', 'haneen', '1621287154_0b90df3f-a234-4c1b-937a-f20f85378994.JPG', '1621287154_0b90df3f-a234-4c1b-937a-f20f85378994.JPG', NULL, 'L,M,S,L,M,S,L,M,S', '2,4,4,0,1,1,1,1,2', '29.95,29.95,29.95,29.95,29.95,29.95,29.95,29.95,29.95', 'NOIR', 'assets/images/thumbnails/1621287154_0b90df3f-a234-4c1b-937a-f20f85378994.JPG,assets/images/thumbnails/1621287154_0b90df3f-a234-4c1b-937a-f20f85378994.JPG,assets/images/thumbnails/1621287237_0b0dcb05-c114-4638-b075-e4f143547620.JPG,assets/images/thumbnails/1621287267_0b0dcb05-c114-4638-b075-e4f143547620.JPG,assets/images/thumbnails/1621287202_0b0dcb05-c114-4638-b075-e4f143547620.JPG,assets/images/thumbnails/1621287428_0b0dcb05-c114-4638-b075-e4f143547620.JPG,assets/images/thumbnails/1621287496_7b05dc02-d595-469b-b751-6c285f7c4fd1.JPG,assets/images/thumbnails/1621287470_7b05dc02-d595-469b-b751-6c285f7c4fd1.JPG,assets/images/thumbnails/1621287450_7b05dc02-d595-469b-b751-6c285f7c4fd1.JPG', 29.95, NULL, NULL, 21, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:23:28', 0, NULL, NULL, NULL, 0, 0),
(349, '135050547', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Mikah', 'mikah', '1621288309_f57e6dd1-f525-4a49-a115-a5ef178669a6.JPG', '1621288309_f57e6dd1-f525-4a49-a115-a5ef178669a6.JPG', NULL, 'L,M,S', '2,4,3', '35.95,35.95,35.95', 'NOIR', 'assets/images/thumbnails/1621288309_f57e6dd1-f525-4a49-a115-a5ef178669a6.JPG,assets/images/thumbnails/1621288309_f57e6dd1-f525-4a49-a115-a5ef178669a6.JPG,assets/images/thumbnails/1621288309_f57e6dd1-f525-4a49-a115-a5ef178669a6.JPG', 35.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:22:27', 0, NULL, NULL, NULL, 0, 0),
(350, '135050550', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Norma', 'norma', '1621288310_05b4348d-d557-486a-ade2-a79619080516.JPG', '1621288310_05b4348d-d557-486a-ade2-a79619080516.JPG', NULL, 'L,M,S', '1,1,1', '35.95,35.95,35.95', 'BLUE', 'assets/images/thumbnails/1621288310_05b4348d-d557-486a-ade2-a79619080516.JPG,assets/images/thumbnails/1621288310_05b4348d-d557-486a-ade2-a79619080516.JPG,assets/images/thumbnails/1621288310_05b4348d-d557-486a-ade2-a79619080516.JPG', 35.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:21:25', 0, NULL, NULL, NULL, 0, 0),
(351, '135050553', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Mandy', 'mandy', '1621288310_c29a9c62-dbc1-4a33-9d2c-a1cc6c74026a.JPG', '1621288310_c29a9c62-dbc1-4a33-9d2c-a1cc6c74026a.JPG', NULL, 'L,M,S', '2,2,2', '34.95,34.95,34.95', 'NOIR', 'assets/images/thumbnails/1621288310_c29a9c62-dbc1-4a33-9d2c-a1cc6c74026a.JPG,assets/images/thumbnails/1621288310_c29a9c62-dbc1-4a33-9d2c-a1cc6c74026a.JPG,assets/images/thumbnails/1621288310_c29a9c62-dbc1-4a33-9d2c-a1cc6c74026a.JPG', 34.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:20:24', 0, NULL, NULL, NULL, 0, 0),
(352, '135050556', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Honore', 'honore', '1621288310_664c5c5f-0b7c-47de-9673-701ce8162022.JPG', '1621288310_664c5c5f-0b7c-47de-9673-701ce8162022.JPG', NULL, 'L,M,S', '2,2,2', '34.95,34.95,34.95', 'BLANC', 'assets/images/thumbnails/1621288310_664c5c5f-0b7c-47de-9673-701ce8162022.JPG,assets/images/thumbnails/1621288310_664c5c5f-0b7c-47de-9673-701ce8162022.JPG,assets/images/thumbnails/1621288310_664c5c5f-0b7c-47de-9673-701ce8162022.JPG', 34.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:19:22', 0, NULL, NULL, NULL, 0, 0),
(353, '135050559', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Laurette', 'laurette', '1621288310_448d1ba4-3a6b-4128-82f7-7fe50465a6f3.JPG', '1621288310_448d1ba4-3a6b-4128-82f7-7fe50465a6f3.JPG', NULL, 'L,M,S', '2,4,2', '34.95,34.95,34.95', 'BLUE', 'assets/images/thumbnails/1621288310_448d1ba4-3a6b-4128-82f7-7fe50465a6f3.JPG,assets/images/thumbnails/1621288310_448d1ba4-3a6b-4128-82f7-7fe50465a6f3.JPG,assets/images/thumbnails/1621288310_448d1ba4-3a6b-4128-82f7-7fe50465a6f3.JPG', 34.95, NULL, NULL, 11, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:18:21', 0, NULL, NULL, NULL, 0, 0),
(354, '135050562', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Karley', 'karley', '1621288310_bc157d51-feb3-49f7-8a62-5798b044aec1.JPG', '1621288310_bc157d51-feb3-49f7-8a62-5798b044aec1.JPG', NULL, 'L,M,S', '5,4,2', '34.95,34.95,34.95', 'NOIR', 'assets/images/thumbnails/1621288310_bc157d51-feb3-49f7-8a62-5798b044aec1.JPG,assets/images/thumbnails/1621288310_bc157d51-feb3-49f7-8a62-5798b044aec1.JPG,assets/images/thumbnails/1621288310_bc157d51-feb3-49f7-8a62-5798b044aec1.JPG', 34.95, NULL, NULL, 14, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 08:12:01', 0, NULL, NULL, NULL, 0, 0),
(355, '135050565', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Chassity', 'chassity', '1621288999_003e0112-cd23-4a41-a327-82d92ce9ded1.JPG', '1621288999_003e0112-cd23-4a41-a327-82d92ce9ded1.JPG', NULL, 'L,M,S', '2,2,1', '34.95,34.95,34.95', 'NOIR', 'assets/images/thumbnails/1621288999_003e0112-cd23-4a41-a327-82d92ce9ded1.JPG,assets/images/thumbnails/1621288999_003e0112-cd23-4a41-a327-82d92ce9ded1.JPG,assets/images/thumbnails/1621288999_003e0112-cd23-4a41-a327-82d92ce9ded1.JPG', 34.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:16:18', 0, NULL, NULL, NULL, 0, 0),
(356, '135050568', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Elektra', 'elektra', '1621289000_16bae1e7-573e-4f3e-972a-ce5436cbf6f6.JPG', '1621289000_16bae1e7-573e-4f3e-972a-ce5436cbf6f6.JPG', NULL, 'L,M,S', '2,1,2', '34.95,34.95,34.95', 'BLANC', 'assets/images/thumbnails/1621289000_16bae1e7-573e-4f3e-972a-ce5436cbf6f6.JPG,assets/images/thumbnails/1621289000_16bae1e7-573e-4f3e-972a-ce5436cbf6f6.JPG,assets/images/thumbnails/1621289000_16bae1e7-573e-4f3e-972a-ce5436cbf6f6.JPG', 34.95, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:14:16', 0, NULL, NULL, NULL, 0, 0),
(357, '135050571', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Jovanna', 'jovanna', '1621289000_440ccfa9-16c2-424f-a4e2-1dde93effb97.JPG', '1621289000_440ccfa9-16c2-424f-a4e2-1dde93effb97.JPG', NULL, 'L,M,S', '2,2,2', '35.95,35.95,35.95', 'NOIR', 'assets/images/thumbnails/1621289000_440ccfa9-16c2-424f-a4e2-1dde93effb97.JPG,assets/images/thumbnails/1621289000_440ccfa9-16c2-424f-a4e2-1dde93effb97.JPG,assets/images/thumbnails/1621289000_440ccfa9-16c2-424f-a4e2-1dde93effb97.JPG', 35.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:13:14', 0, NULL, NULL, NULL, 0, 0),
(358, '135050574', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Annie', 'annie', '1621289000_224bc483-e433-4ce4-ae05-2d3e2dd05e2b.JPG', '1621289000_224bc483-e433-4ce4-ae05-2d3e2dd05e2b.JPG', NULL, 'L,M,S', '6,6,4', '35.95,35.95,35.95', 'NOIR', 'assets/images/thumbnails/1621289000_224bc483-e433-4ce4-ae05-2d3e2dd05e2b.JPG,assets/images/thumbnails/1621289000_224bc483-e433-4ce4-ae05-2d3e2dd05e2b.JPG,assets/images/thumbnails/1621289000_224bc483-e433-4ce4-ae05-2d3e2dd05e2b.JPG', 35.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 08:24:48', 0, NULL, NULL, NULL, 0, 0),
(359, '135050577', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Giana', 'giana', '1621289000_eed6227f-fdd9-441b-938f-8159e99a0daf.JPG', '1621289000_eed6227f-fdd9-441b-938f-8159e99a0daf.JPG', NULL, 'L,M,S', '2,2,2', '35.95,35.95,35.95', 'BLANC', 'assets/images/thumbnails/1621289000_eed6227f-fdd9-441b-938f-8159e99a0daf.JPG,assets/images/thumbnails/1621289000_eed6227f-fdd9-441b-938f-8159e99a0daf.JPG,assets/images/thumbnails/1621289000_eed6227f-fdd9-441b-938f-8159e99a0daf.JPG', 35.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:10:34', 0, NULL, NULL, NULL, 0, 0),
(360, '135050580', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Tynlee', 'tynlee', '1621289000_0c26c483-c4d7-4614-83fd-34a21db7ad6f.JPG', '1621289000_0c26c483-c4d7-4614-83fd-34a21db7ad6f.JPG', NULL, 'L,M,S', '4,3,4', '37.95,37.95,37.95', 'BLUE CIEL', 'assets/images/thumbnails/1621289000_0c26c483-c4d7-4614-83fd-34a21db7ad6f.JPG,assets/images/thumbnails/1621289000_0c26c483-c4d7-4614-83fd-34a21db7ad6f.JPG,assets/images/thumbnails/1621289000_0c26c483-c4d7-4614-83fd-34a21db7ad6f.JPG', 37.95, NULL, NULL, 12, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 06:50:57', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `color_image`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(361, '135050583', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Raleigh', 'raleigh', '1621289489_8fcc0d56-d6cd-49c7-9449-7139a9096144.JPG', '1621289489_8fcc0d56-d6cd-49c7-9449-7139a9096144.JPG', NULL, 'L,M,S', '5,5,5', '37.95,37.95,37.95', 'NOIR', 'assets/images/thumbnails/1621289489_8fcc0d56-d6cd-49c7-9449-7139a9096144.JPG,assets/images/thumbnails/1621289489_8fcc0d56-d6cd-49c7-9449-7139a9096144.JPG,assets/images/thumbnails/1621289489_8fcc0d56-d6cd-49c7-9449-7139a9096144.JPG', 37.95, NULL, NULL, 5, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 08:08:31', 0, NULL, NULL, NULL, 0, 0),
(362, '135050586', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Danette', 'danette', '1621289629_0eb14c0e-f9e1-4c91-9a64-78426363579f.JPG', '1621289629_0eb14c0e-f9e1-4c91-9a64-78426363579f.JPG', NULL, 'L,M,S', '2,2,2', '37.95,37.95,37.95', 'BLUE CIEL', 'assets/images/thumbnails/1621289629_0eb14c0e-f9e1-4c91-9a64-78426363579f.JPG,assets/images/thumbnails/1621289629_0eb14c0e-f9e1-4c91-9a64-78426363579f.JPG,assets/images/thumbnails/1621289629_0eb14c0e-f9e1-4c91-9a64-78426363579f.JPG', 37.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 10:53:46', 0, NULL, NULL, NULL, 0, 0),
(363, '135050589', 'normal', NULL, 0, 4, 16, NULL, NULL, 'Julieth', 'julieth', '1621289472_6907986a-a007-465b-b8bd-d1b0b0dfd282.JPG', '1621289472_6907986a-a007-465b-b8bd-d1b0b0dfd282.JPG', NULL, 'L,M,S', '2,2,2', '37.95,37.95,37.95', 'BLANC', 'assets/images/thumbnails/1621289472_6907986a-a007-465b-b8bd-d1b0b0dfd282.JPG,assets/images/thumbnails/1621289472_6907986a-a007-465b-b8bd-d1b0b0dfd282.JPG,assets/images/thumbnails/1621289472_6907986a-a007-465b-b8bd-d1b0b0dfd282.JPG', 37.95, NULL, NULL, 6, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 08:15:57', 0, NULL, NULL, NULL, 0, 0),
(364, '135050596', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Foster', 'foster', '1621352393_IMG_8872.jpg', '1621352393_IMG_8872.jpg', NULL, 'XL,L,M,S,XL,L,M,S', '2,4,4,4,1,4,4,3', '24.95,24.95,24.95,24.95,24.95,24.95,24.95,24.95', 'BLUE', 'assets/images/thumbnails/1621352393_IMG_8872.jpg,assets/images/thumbnails/1621352393_IMG_8872.jpg,assets/images/thumbnails/1621352393_IMG_8872.jpg,assets/images/thumbnails/1621352393_IMG_8872.jpg,assets/images/thumbnails/1621352393_daf935c2-2452-4f20-81f6-56b11a0d467f.JPG,assets/images/thumbnails/1621352393_daf935c2-2452-4f20-81f6-56b11a0d467f.JPG,assets/images/thumbnails/1621352393_daf935c2-2452-4f20-81f6-56b11a0d467f.JPG,assets/images/thumbnails/1621352394_daf935c2-2452-4f20-81f6-56b11a0d467f.JPG', 24.95, NULL, NULL, 26, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 07:00:18', 0, NULL, NULL, NULL, 0, 0),
(365, '135050604', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Anais', 'anais', '1621353191_d230c074-ed32-4415-aedb-3bca2e7ff13c.JPG', '1621353191_d230c074-ed32-4415-aedb-3bca2e7ff13c.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '2,4,4,4,2,2,4,4', '28.95,28.95,28.95,28.95,28.95,28.95,28.95,28.95', 'BLUE', 'assets/images/thumbnails/1621353191_d230c074-ed32-4415-aedb-3bca2e7ff13c.JPG,assets/images/thumbnails/1621353127_d230c074-ed32-4415-aedb-3bca2e7ff13c.JPG,assets/images/thumbnails/1621353149_d230c074-ed32-4415-aedb-3bca2e7ff13c.JPG,assets/images/thumbnails/1621353161_d230c074-ed32-4415-aedb-3bca2e7ff13c.JPG,assets/images/thumbnails/1621353177_8d5a962f-a86d-42b2-b1fa-e4dff171b8d5.JPG,assets/images/thumbnails/1621353202_8d5a962f-a86d-42b2-b1fa-e4dff171b8d5.JPG,assets/images/thumbnails/1621353091_8d5a962f-a86d-42b2-b1fa-e4dff171b8d5.JPG,assets/images/thumbnails/1621353106_8d5a962f-a86d-42b2-b1fa-e4dff171b8d5.JPG', 28.95, NULL, NULL, 2, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 06:59:15', 0, NULL, NULL, NULL, 0, 0),
(366, '135050612', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Seven', 'seven', '1621352971_db1ff8e6-9de2-417f-8baa-21ec60064e4a.JPG', '1621352971_db1ff8e6-9de2-417f-8baa-21ec60064e4a.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '1,4,4,3,0,4,4,3', '19.95,19.95,19.95,19.95,19.95,19.95,19.95,19.95', 'BLUE', 'assets/images/thumbnails/1621352971_db1ff8e6-9de2-417f-8baa-21ec60064e4a.JPG,assets/images/thumbnails/1621352993_db1ff8e6-9de2-417f-8baa-21ec60064e4a.JPG,assets/images/thumbnails/1621352929_db1ff8e6-9de2-417f-8baa-21ec60064e4a.JPG,assets/images/thumbnails/1621352955_db1ff8e6-9de2-417f-8baa-21ec60064e4a.JPG,assets/images/thumbnails/1621353014_ee005f6b-8cb6-41ac-9a88-bcb6ed63b051.JPG,assets/images/thumbnails/1621353071_ee005f6b-8cb6-41ac-9a88-bcb6ed63b051.JPG,assets/images/thumbnails/1621352827_ee005f6b-8cb6-41ac-9a88-bcb6ed63b051.JPG,assets/images/thumbnails/1621352841_ee005f6b-8cb6-41ac-9a88-bcb6ed63b051.JPG', 19.95, NULL, NULL, 1, NULL, 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 08:53:08', 0, NULL, NULL, NULL, 0, 0),
(367, '135050620', 'normal', NULL, 0, 4, 21, 10, NULL, 'Rachael', 'rachael', '1621353244_d88e7f4b-1575-4c24-8436-a52cc374b08b.JPG', '1621353244_d88e7f4b-1575-4c24-8436-a52cc374b08b.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '2,4,3,4,2,4,4,4', '19.95,19.95,19.95,19.95,19.95,19.95,19.95,19.95', 'BLUE', 'assets/images/thumbnails/1621353244_d88e7f4b-1575-4c24-8436-a52cc374b08b.JPG,assets/images/thumbnails/1621353233_d88e7f4b-1575-4c24-8436-a52cc374b08b.JPG,assets/images/thumbnails/1621353254_d88e7f4b-1575-4c24-8436-a52cc374b08b.JPG,assets/images/thumbnails/1621353390_d88e7f4b-1575-4c24-8436-a52cc374b08b.JPG,assets/images/thumbnails/1621353402_7dbe5921-0c1c-4928-9ce9-18146e1e63d4.JPG,assets/images/thumbnails/1621353413_7dbe5921-0c1c-4928-9ce9-18146e1e63d4.JPG,assets/images/thumbnails/1621353424_7dbe5921-0c1c-4928-9ce9-18146e1e63d4.JPG,assets/images/thumbnails/1621353434_7dbe5921-0c1c-4928-9ce9-18146e1e63d4.JPG', 19.95, NULL, NULL, 27, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 05:55:10', 0, NULL, NULL, NULL, 0, 0),
(368, '135050628', 'normal', NULL, 0, 4, 20, 4, NULL, 'Ara', 'ara', '1621353527_d9b45f88-f206-4c5b-bc38-32b33a88334f.JPG', '1621353527_d9b45f88-f206-4c5b-bc38-32b33a88334f.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '1,2,1,2,2,4,4,3', '20.95,20.95,20.95,20.95,20.95,20.95,20.95,20.95', 'ROUGE', 'assets/images/thumbnails/1621353527_d9b45f88-f206-4c5b-bc38-32b33a88334f.JPG,assets/images/thumbnails/1621353527_d9b45f88-f206-4c5b-bc38-32b33a88334f.JPG,assets/images/thumbnails/1621353527_d9b45f88-f206-4c5b-bc38-32b33a88334f.JPG,assets/images/thumbnails/1621353527_d9b45f88-f206-4c5b-bc38-32b33a88334f.JPG,assets/images/thumbnails/1621353527_769fe3d4-6fea-4476-81b0-89556c541531.JPG,assets/images/thumbnails/1621353527_769fe3d4-6fea-4476-81b0-89556c541531.JPG,assets/images/thumbnails/1621353527_769fe3d4-6fea-4476-81b0-89556c541531.JPG,assets/images/thumbnails/1621353527_769fe3d4-6fea-4476-81b0-89556c541531.JPG', 20.95, NULL, NULL, 1, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 06:18:08', 0, NULL, NULL, NULL, 0, 0),
(369, '135050636', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Carsen', 'carsen', '1621353770_0ef4d522-1c1c-4480-a8a9-e1d2b74a8e95.JPG', '1621353770_0ef4d522-1c1c-4480-a8a9-e1d2b74a8e95.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '0,2,2,2,2,4,4,4', '27.95,27.95,27.95,27.95,27.95,27.95,27.95,27.95', 'ROUGE', 'assets/images/thumbnails/1621353770_0ef4d522-1c1c-4480-a8a9-e1d2b74a8e95.JPG,assets/images/thumbnails/1621353770_0ef4d522-1c1c-4480-a8a9-e1d2b74a8e95.JPG,assets/images/thumbnails/1621353770_0ef4d522-1c1c-4480-a8a9-e1d2b74a8e95.JPG,assets/images/thumbnails/1621353770_0ef4d522-1c1c-4480-a8a9-e1d2b74a8e95.JPG,assets/images/thumbnails/1621353770_ed733e67-09e9-4508-867c-b1cc24b154bb.JPG,assets/images/thumbnails/1621353770_ed733e67-09e9-4508-867c-b1cc24b154bb.JPG,assets/images/thumbnails/1621353770_ed733e67-09e9-4508-867c-b1cc24b154bb.JPG,assets/images/thumbnails/1621353770_ed733e67-09e9-4508-867c-b1cc24b154bb.JPG', 27.95, NULL, NULL, 20, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 13:04:50', 0, NULL, NULL, NULL, 0, 0),
(370, '135050644', 'normal', NULL, 0, 4, 20, 4, NULL, 'Aisha', 'aisha', '1621353886_b9f17abf-8d5f-4728-b0e4-df1eaf31dbf9.JPG', '1621353886_b9f17abf-8d5f-4728-b0e4-df1eaf31dbf9.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '2,4,4,4,2,4,4,4', '20.95,20.95,20.95,20.95,20.95,20.95,20.95,20.95', 'BLANC', 'assets/images/thumbnails/1621353886_b9f17abf-8d5f-4728-b0e4-df1eaf31dbf9.JPG,assets/images/thumbnails/1621353886_b9f17abf-8d5f-4728-b0e4-df1eaf31dbf9.JPG,assets/images/thumbnails/1621353886_b9f17abf-8d5f-4728-b0e4-df1eaf31dbf9.JPG,assets/images/thumbnails/1621353886_b9f17abf-8d5f-4728-b0e4-df1eaf31dbf9.JPG,assets/images/thumbnails/default.png,assets/images/thumbnails/default.png,assets/images/thumbnails/default.png,assets/images/thumbnails/default.png', 20.95, NULL, NULL, 28, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 06:06:47', 0, NULL, NULL, NULL, 0, 0),
(371, '135050652', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Yaiza', 'yaiza', '1621354196_3e49a60d-0159-4830-b24e-d450396eea9d.JPG', '1621354196_3e49a60d-0159-4830-b24e-d450396eea9d.JPG', NULL, 'XL,L,M,S', '1,2,2,2', '17.95,17.95,17.95,17.95', 'BLUE CIEL', 'assets/images/thumbnails/1621354196_3e49a60d-0159-4830-b24e-d450396eea9d.JPG,assets/images/thumbnails/1621354197_3e49a60d-0159-4830-b24e-d450396eea9d.JPG,assets/images/thumbnails/1621354197_3e49a60d-0159-4830-b24e-d450396eea9d.JPG,assets/images/thumbnails/1621354197_3e49a60d-0159-4830-b24e-d450396eea9d.JPG', 17.95, NULL, NULL, 7, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 09:53:09', 0, NULL, NULL, NULL, 0, 0),
(372, '135050656', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Emeli', 'emeli', '1621354197_dd76b7ed-8e67-4e05-803c-dc1b365a7e10.JPG', '1621354197_dd76b7ed-8e67-4e05-803c-dc1b365a7e10.JPG', NULL, 'XL,L,M,S', '2,4,3,4', '26.95,26.95,26.95,26.95', 'ROUGE', 'assets/images/thumbnails/1621354197_dd76b7ed-8e67-4e05-803c-dc1b365a7e10.JPG,assets/images/thumbnails/1621354197_dd76b7ed-8e67-4e05-803c-dc1b365a7e10.JPG,assets/images/thumbnails/1621354197_dd76b7ed-8e67-4e05-803c-dc1b365a7e10.JPG,assets/images/thumbnails/1621354197_dd76b7ed-8e67-4e05-803c-dc1b365a7e10.JPG', 26.95, NULL, NULL, 14, NULL, 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 05:05:22', 0, NULL, NULL, NULL, 0, 0),
(373, '135050660', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Selene', 'selene', '1621354197_dd849cf3-6c68-4ecb-9a33-b0b3701aa94b.JPG', '1621354197_dd849cf3-6c68-4ecb-9a33-b0b3701aa94b.JPG', NULL, 'XL,L,M,S', '1,2,2,2', '39.95,39.95,39.95,39.95', '00', 'assets/images/thumbnails/1621354197_dd849cf3-6c68-4ecb-9a33-b0b3701aa94b.JPG,assets/images/thumbnails/1621354197_dd849cf3-6c68-4ecb-9a33-b0b3701aa94b.JPG,assets/images/thumbnails/1621354197_dd849cf3-6c68-4ecb-9a33-b0b3701aa94b.JPG,assets/images/thumbnails/1621354197_dd849cf3-6c68-4ecb-9a33-b0b3701aa94b.JPG', 39.95, NULL, NULL, 7, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 18:34:17', 0, NULL, NULL, NULL, 0, 0),
(374, '135050664', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Milana', 'milana', '1621354197_54aeee44-f057-4f49-a252-0bb442a8d427.JPG', '1621354197_54aeee44-f057-4f49-a252-0bb442a8d427.JPG', NULL, 'XL,L,M,S', '1,2,2,1', '34.95,34.95,34.95,34.95', '00', 'assets/images/thumbnails/1621354197_54aeee44-f057-4f49-a252-0bb442a8d427.JPG,assets/images/thumbnails/1621354197_54aeee44-f057-4f49-a252-0bb442a8d427.JPG,assets/images/thumbnails/1621354197_54aeee44-f057-4f49-a252-0bb442a8d427.JPG,assets/images/thumbnails/1621354197_54aeee44-f057-4f49-a252-0bb442a8d427.JPG', 34.95, NULL, NULL, 1, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 14:30:25', 0, NULL, NULL, NULL, 0, 0),
(375, '135050668', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Sanvi', 'sanvi', '1621354422_IMG_8885.jpg', '1621354422_IMG_8885.jpg', NULL, 'XL,L,M,S,XL,L,M,S', '1,2,2,2,1,2,2,0', '23.95,23.95,23.95,23.95,23.95,23.95,23.95,23.95', 'ROUGE', 'assets/images/thumbnails/1621354422_IMG_8885.jpg,assets/images/thumbnails/1621354422_IMG_8885.jpg,assets/images/thumbnails/1621354422_IMG_8885.jpg,assets/images/thumbnails/1621354422_IMG_8885.jpg,assets/images/thumbnails/1621354422_a4320665-9582-421a-a89e-7f21e9b90526.JPG,assets/images/thumbnails/1621354422_a4320665-9582-421a-a89e-7f21e9b90526.JPG,assets/images/thumbnails/1621354422_a4320665-9582-421a-a89e-7f21e9b90526.JPG,assets/images/thumbnails/1621354422_a4320665-9582-421a-a89e-7f21e9b90526.JPG', 23.95, NULL, NULL, 1, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 14:51:23', 0, NULL, NULL, NULL, 0, 0),
(376, '135050676', 'normal', NULL, 0, 4, 21, 10, NULL, 'Charisma', 'charisma', '1621354422_7defbaf4-06df-48b5-8f86-fcd8acb8d648.JPG', '1621354422_7defbaf4-06df-48b5-8f86-fcd8acb8d648.JPG', NULL, 'XL,L,M,S', '1,2,2,2', '17.95,17.95,17.95,17.95', 'NOIR', 'assets/images/thumbnails/1621354422_7defbaf4-06df-48b5-8f86-fcd8acb8d648.JPG,assets/images/thumbnails/1621354422_7defbaf4-06df-48b5-8f86-fcd8acb8d648.JPG,assets/images/thumbnails/1621354422_7defbaf4-06df-48b5-8f86-fcd8acb8d648.JPG,assets/images/thumbnails/1621354422_7defbaf4-06df-48b5-8f86-fcd8acb8d648.JPG', 17.95, NULL, NULL, 7, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 04:37:38', 0, NULL, NULL, NULL, 0, 0),
(377, '135050680', 'normal', NULL, 0, 4, 20, 7, NULL, 'Keeley', 'keeley', '1621354540_IMG_8886.jpg', '1621354540_IMG_8886.jpg', NULL, 'XL,L,M,S,XL,L,M,S', '0,4,2,4,2,4,4,4', '17.95,17.95,17.95,17.95,17.95,17.95,17.95,17.95', 'BLUE', 'assets/images/thumbnails/1621354540_IMG_8886.jpg,assets/images/thumbnails/1621354540_IMG_8886.jpg,assets/images/thumbnails/1621354540_IMG_8886.jpg,assets/images/thumbnails/1621354540_IMG_8886.jpg,assets/images/thumbnails/1621354540_45e38ada-ee8d-47b6-93ab-75a2b0a58dbf.JPG,assets/images/thumbnails/1621354540_45e38ada-ee8d-47b6-93ab-75a2b0a58dbf.JPG,assets/images/thumbnails/1621354540_45e38ada-ee8d-47b6-93ab-75a2b0a58dbf.JPG,assets/images/thumbnails/1621354540_45e38ada-ee8d-47b6-93ab-75a2b0a58dbf.JPG', 17.95, NULL, NULL, 19, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 07:11:19', 0, NULL, NULL, NULL, 0, 0),
(378, '135050688', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Amalia', 'amalia', '1621354630_e013f68a-3482-42f9-b5d5-508cd4afb2b6.JPG', '1621354630_e013f68a-3482-42f9-b5d5-508cd4afb2b6.JPG', NULL, 'XL,L,M,S,XL,L,M,S', '1,2,2,1,1,2,2,2', '29.95,29.95,29.95,29.95,29.95,29.95,29.95,29.95', 'ROSE', 'assets/images/thumbnails/1621354630_e013f68a-3482-42f9-b5d5-508cd4afb2b6.JPG,assets/images/thumbnails/1621354630_e013f68a-3482-42f9-b5d5-508cd4afb2b6.JPG,assets/images/thumbnails/1621354631_e013f68a-3482-42f9-b5d5-508cd4afb2b6.JPG,assets/images/thumbnails/1621354631_e013f68a-3482-42f9-b5d5-508cd4afb2b6.JPG,assets/images/thumbnails/1621354631_295d64a3-b029-4c27-8393-d4ceff643eea.JPG,assets/images/thumbnails/1621354631_295d64a3-b029-4c27-8393-d4ceff643eea.JPG,assets/images/thumbnails/1621354631_295d64a3-b029-4c27-8393-d4ceff643eea.JPG,assets/images/thumbnails/1621354631_295d64a3-b029-4c27-8393-d4ceff643eea.JPG', 29.95, NULL, NULL, 1, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 11:58:50', 0, NULL, NULL, NULL, 0, 0),
(379, '135050696', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Anaisha', 'anaisha', '1621354786_22cab0fc-9011-4515-b163-72c55f046f84.JPG', '1621354786_22cab0fc-9011-4515-b163-72c55f046f84.JPG', NULL, 'XL,L,M,S', '2,3,4,4', '29.95,29.95,29.95,29.95', 'NOIR', 'assets/images/thumbnails/1621354786_22cab0fc-9011-4515-b163-72c55f046f84.JPG,assets/images/thumbnails/1621354786_22cab0fc-9011-4515-b163-72c55f046f84.JPG,assets/images/thumbnails/1621354786_22cab0fc-9011-4515-b163-72c55f046f84.JPG,assets/images/thumbnails/1621354786_22cab0fc-9011-4515-b163-72c55f046f84.JPG', 29.95, NULL, NULL, 13, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 12:21:30', 0, NULL, NULL, NULL, 0, 0),
(380, '135050700', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Thais', 'thais', '1621354786_0c42019e-941f-4936-86fc-d43bb6d4c2a0.JPG', '1621354786_0c42019e-941f-4936-86fc-d43bb6d4c2a0.JPG', NULL, 'XL,L,M,S', '2,4,4,4', '29.95,29.95,29.95,29.95', 'ROSE', 'assets/images/thumbnails/1621354786_0c42019e-941f-4936-86fc-d43bb6d4c2a0.JPG,assets/images/thumbnails/1621354786_0c42019e-941f-4936-86fc-d43bb6d4c2a0.JPG,assets/images/thumbnails/1621354786_0c42019e-941f-4936-86fc-d43bb6d4c2a0.JPG,assets/images/thumbnails/1621354786_0c42019e-941f-4936-86fc-d43bb6d4c2a0.JPG', 29.95, NULL, NULL, 14, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 19:21:30', 0, NULL, NULL, NULL, 0, 0),
(381, '135050704', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Fatou', 'fatou', '1621354786_59323590-566f-4f4d-bf17-dcbb330078ca.JPG', '1621354786_59323590-566f-4f4d-bf17-dcbb330078ca.JPG', NULL, 'XL,L,M,S', '2,4,3,4', '24.95,24.95,24.95,24.95', 'ROSE', 'assets/images/thumbnails/1621354786_59323590-566f-4f4d-bf17-dcbb330078ca.JPG,assets/images/thumbnails/1621354787_59323590-566f-4f4d-bf17-dcbb330078ca.JPG,assets/images/thumbnails/1621354787_59323590-566f-4f4d-bf17-dcbb330078ca.JPG,assets/images/thumbnails/1621354787_59323590-566f-4f4d-bf17-dcbb330078ca.JPG', 24.95, NULL, NULL, 13, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 13:46:38', 0, NULL, NULL, NULL, 0, 0),
(382, '135050708', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Astrid', 'astrid', '1621354787_8e68786d-9a39-4841-a19d-cc342f059c78.JPG', '1621354787_8e68786d-9a39-4841-a19d-cc342f059c78.JPG', NULL, 'XL,L,M,S', '2,4,4,4', '24.95,24.95,24.95,24.95', 'ROSE', 'assets/images/thumbnails/1621354787_8e68786d-9a39-4841-a19d-cc342f059c78.JPG,assets/images/thumbnails/1621354787_8e68786d-9a39-4841-a19d-cc342f059c78.JPG,assets/images/thumbnails/1621354787_8e68786d-9a39-4841-a19d-cc342f059c78.JPG,assets/images/thumbnails/1621354787_8e68786d-9a39-4841-a19d-cc342f059c78.JPG', 24.95, NULL, NULL, 14, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 12:43:32', 0, NULL, NULL, NULL, 0, 0),
(383, '135050712', 'normal', NULL, 0, 4, 21, 13, NULL, 'Cullin', 'cullin', '1621364888_495f4bb2-8cae-445a-bb05-f145949fed9c.JPG', '1621364888_495f4bb2-8cae-445a-bb05-f145949fed9c.JPG', NULL, 'L/XL,S/M,L/XL,S/M,L/XL,S/M', '6,6,6,6,6,6', '23.95,23.95,23.95,23.95,23.95,23.95', 'ROSE', 'assets/images/thumbnails/1621364888_495f4bb2-8cae-445a-bb05-f145949fed9c.JPG,assets/images/thumbnails/1621364888_495f4bb2-8cae-445a-bb05-f145949fed9c.JPG,assets/images/thumbnails/1621364888_3991a786-39f6-4b5c-af67-41bc07f112d8.JPG,assets/images/thumbnails/1621364888_3991a786-39f6-4b5c-af67-41bc07f112d8.JPG,assets/images/thumbnails/1621364888_cd6472ca-2a45-4912-b5aa-8a61c94422f0.JPG,assets/images/thumbnails/1621364888_cd6472ca-2a45-4912-b5aa-8a61c94422f0.JPG', 23.95, NULL, NULL, 36, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 04:48:45', 0, NULL, NULL, NULL, 0, 0),
(384, '135050718', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Erianna', 'erianna', '1621364888_41392e7a-7d50-414a-b8ac-fdb9857c7f8e.JPG', '1621364888_41392e7a-7d50-414a-b8ac-fdb9857c7f8e.JPG', NULL, 'L/XL,S/M', '2,3', '29.95,29.95', 'NOIR', 'assets/images/thumbnails/1621364888_41392e7a-7d50-414a-b8ac-fdb9857c7f8e.JPG,assets/images/thumbnails/1621364888_41392e7a-7d50-414a-b8ac-fdb9857c7f8e.JPG', 29.95, NULL, NULL, 2, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-25 13:25:09', 0, NULL, NULL, NULL, 0, 0),
(385, '135050720', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Yaretzy', 'yaretzy', '1621366537_84f3f3ab-115e-41ce-91a2-9eb525795f0b.JPG', '1621366537_84f3f3ab-115e-41ce-91a2-9eb525795f0b.JPG', NULL, 'M/L,S/M,M/L,S/M', '4,4,6,6', '20.95,20.95,20.95,20.95', 'NOIR', 'assets/images/thumbnails/1621366537_84f3f3ab-115e-41ce-91a2-9eb525795f0b.JPG,assets/images/thumbnails/1621366563_84f3f3ab-115e-41ce-91a2-9eb525795f0b.JPG,assets/images/thumbnails/1621366608_e29b0c9e-2d8a-4ac2-813a-63b94e3dc6b7.JPG,assets/images/thumbnails/1621366587_e29b0c9e-2d8a-4ac2-813a-63b94e3dc6b7.JPG', 20.95, NULL, NULL, 16, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 10:23:54', 0, NULL, NULL, NULL, 0, 0),
(386, '135050724', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Giulietta', 'giulietta', '1621365395_94a64c5f-0c6c-49b8-b436-6f91aa8f5f6b.JPG', '1621365395_94a64c5f-0c6c-49b8-b436-6f91aa8f5f6b.JPG', NULL, 'M/L,S/M,M/L,S/M', '6,6,6,0', '20.95,20.95,20.95,20.95', 'NOIR', 'assets/images/thumbnails/1621365395_94a64c5f-0c6c-49b8-b436-6f91aa8f5f6b.JPG,assets/images/thumbnails/1621365395_94a64c5f-0c6c-49b8-b436-6f91aa8f5f6b.JPG,assets/images/thumbnails/1621365395_d4f5fac2-cbb2-40a9-a59f-812e803aedde.JPG,assets/images/thumbnails/1621365395_d4f5fac2-cbb2-40a9-a59f-812e803aedde.JPG', 20.95, NULL, NULL, 20, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 06:49:54', 0, NULL, NULL, NULL, 0, 0),
(387, '135050728', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Wesley', 'wesley', '1621365395_01beb8eb-912f-404e-af83-35deac51adab.JPG', '1621365395_01beb8eb-912f-404e-af83-35deac51adab.JPG', NULL, 'M/L,S/M,M/L,S/M', '2,2,3,2', '20.95,20.95,20.95,20.95', 'ROSE', 'assets/images/thumbnails/1621365395_01beb8eb-912f-404e-af83-35deac51adab.JPG,assets/images/thumbnails/1621365395_01beb8eb-912f-404e-af83-35deac51adab.JPG,assets/images/thumbnails/1621365395_81a88003-3e08-4617-a956-a187e537c3d6.JPG,assets/images/thumbnails/1621365395_81a88003-3e08-4617-a956-a187e537c3d6.JPG', 20.95, NULL, NULL, 2, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:07', '2021-05-26 09:23:07', 0, NULL, NULL, NULL, 0, 0),
(388, '135050732', 'normal', NULL, 0, 4, 11, NULL, NULL, 'Loretta', 'loretta', '1621365547_2f35ee56-de38-4107-9ed9-6b20e4d5293c.JPG', '1621365547_2f35ee56-de38-4107-9ed9-6b20e4d5293c.JPG', NULL, 'L/XL,S/M', '6,6', '26.95,26.95', 'BAIGE', 'assets/images/thumbnails/1621365547_2f35ee56-de38-4107-9ed9-6b20e4d5293c.JPG,assets/images/thumbnails/1621365547_2f35ee56-de38-4107-9ed9-6b20e4d5293c.JPG', 26.95, NULL, NULL, 16, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 14:08:36', 0, NULL, NULL, NULL, 0, 0),
(389, '135050734', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Elona', 'elona', '1621365547_8e57ff44-e277-46e3-8814-edddd9337020.JPG', '1621365547_8e57ff44-e277-46e3-8814-edddd9337020.JPG', NULL, 'M/L,S/M,M/L,S/M', '6,6,6,4', '20.95,20.95,20.95,20.95', 'ROSE', 'assets/images/thumbnails/1621365547_8e57ff44-e277-46e3-8814-edddd9337020.JPG,assets/images/thumbnails/1621365548_8e57ff44-e277-46e3-8814-edddd9337020.JPG,assets/images/thumbnails/1621365548_e2aac2e9-e86d-4062-acb4-a558bba4ca3f.JPG,assets/images/thumbnails/1621365548_e2aac2e9-e86d-4062-acb4-a558bba4ca3f.JPG', 20.95, NULL, NULL, 20, NULL, 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 06:39:28', 0, NULL, NULL, NULL, 0, 0),
(390, '135050738', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Calypso', 'calypso', '1621365548_aa89f6cd-61b9-41ce-adaf-057a97dd1e55.JPG', '1621365548_aa89f6cd-61b9-41ce-adaf-057a97dd1e55.JPG', NULL, 'M/L,S/M', '1,2', '20.95,20.95', 'NOIR', 'assets/images/thumbnails/1621365548_aa89f6cd-61b9-41ce-adaf-057a97dd1e55.JPG,assets/images/thumbnails/1621365548_aa89f6cd-61b9-41ce-adaf-057a97dd1e55.JPG', 20.95, NULL, NULL, 1, NULL, 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 06:29:04', 0, NULL, NULL, NULL, 0, 0),
(391, '135050740', 'normal', NULL, 0, 4, 20, NULL, NULL, 'Solstice', 'solstice', '1621365633_f8602f07-daec-459e-9966-66caf510f47e.JPG', '1621365633_f8602f07-daec-459e-9966-66caf510f47e.JPG', NULL, 'M/L,S/M,M/L,S/M,M/L,S/M,M/L,S/M', '5,5,5,5,2,1,5,6', '20.95,20.95,20.95,20.95,20.95,20.95,20.95,20.95', 'BLUE CIEL', 'assets/images/thumbnails/1621365633_f8602f07-daec-459e-9966-66caf510f47e.JPG,assets/images/thumbnails/1621365633_f8602f07-daec-459e-9966-66caf510f47e.JPG,assets/images/thumbnails/1621365633_ebeb1ab4-5ee8-4df7-994e-ada44d90ec83.JPG,assets/images/thumbnails/1621365633_ebeb1ab4-5ee8-4df7-994e-ada44d90ec83.JPG,assets/images/thumbnails/1621365633_c906d5ca-0732-4066-9d69-5549ae26db61.JPG,assets/images/thumbnails/1621365633_c906d5ca-0732-4066-9d69-5549ae26db61.JPG,assets/images/thumbnails/1621365633_2347c8a6-0593-4d8c-876f-e314b7f7799b.JPG,assets/images/thumbnails/1621365633_2347c8a6-0593-4d8c-876f-e314b7f7799b.JPG', 20.95, NULL, NULL, 5, NULL, 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 09:25:05', 0, NULL, NULL, NULL, 0, 0),
(392, '135050752', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Heather', 'heather', '1621438392_861f44f1-1840-49d2-b452-1ec36ddc7ce2.JPG', '1621438392_861f44f1-1840-49d2-b452-1ec36ddc7ce2.JPG', NULL, 'T.U', '23', '10.95', '00', 'assets/images/thumbnails/1621438392_861f44f1-1840-49d2-b452-1ec36ddc7ce2.JPG', 10.95, NULL, NULL, 23, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 22:41:32', 0, NULL, NULL, NULL, 0, 0),
(393, '135050753', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Kaya', 'kaya', '1621438392_210d0147-8541-4024-9e1a-19d58f7ef733.JPG', '1621438392_210d0147-8541-4024-9e1a-19d58f7ef733.JPG', NULL, 'T.U', '11', '13.95', '00', 'assets/images/thumbnails/1621438392_210d0147-8541-4024-9e1a-19d58f7ef733.JPG', 13.95, NULL, NULL, 11, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 11:47:46', 0, NULL, NULL, NULL, 0, 0),
(394, '135050754', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Everli', 'everli', '1621439338_ece98476-200a-4930-a8ac-068a4096ceef.JPG', '1621439338_ece98476-200a-4930-a8ac-068a4096ceef.JPG', NULL, 'T.U', '7', '12.95', '00', 'assets/images/thumbnails/1621439338_ece98476-200a-4930-a8ac-068a4096ceef.JPG', 12.95, NULL, NULL, 7, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 21:40:26', 0, NULL, NULL, NULL, 0, 0),
(395, '135050755', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Dorsey', 'dorsey', '1621439338_d138fe86-3b4f-47d6-bdfc-676a15cfafd7.JPG', '1621439338_d138fe86-3b4f-47d6-bdfc-676a15cfafd7.JPG', NULL, 'T.U', '2', '11.95', '00', 'assets/images/thumbnails/1621439338_d138fe86-3b4f-47d6-bdfc-676a15cfafd7.JPG', 11.95, NULL, NULL, 2, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 21:09:40', 0, NULL, NULL, NULL, 0, 0),
(396, '135050756', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Kalea', 'kalea', '1621439338_1bf2032e-3968-4eb9-8aa7-2991750e2cce.JPG', '1621439338_1bf2032e-3968-4eb9-8aa7-2991750e2cce.JPG', NULL, 'T.U', '12', '11.95', '00', 'assets/images/thumbnails/1621439338_1bf2032e-3968-4eb9-8aa7-2991750e2cce.JPG', 11.95, NULL, NULL, 12, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 11:20:25', 0, NULL, NULL, NULL, 0, 0),
(397, '135050757', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Falcon', 'falcon', '1621440127_09a61a2c-c00e-41af-94b6-203532f07693.JPG', '1621440127_09a61a2c-c00e-41af-94b6-203532f07693.JPG', NULL, 'T.U', '5', '11.95', '00', 'assets/images/thumbnails/1621440127_09a61a2c-c00e-41af-94b6-203532f07693.JPG', 11.95, NULL, NULL, 5, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 10:52:03', 0, NULL, NULL, NULL, 0, 0),
(398, '135050758', 'normal', NULL, 0, 1, 2, NULL, NULL, 'Aniyah', 'aniyah', '1621440127_0ca56f35-38c1-47f7-8625-f8e485e709ef.JPG', '1621440127_0ca56f35-38c1-47f7-8625-f8e485e709ef.JPG', NULL, 'T.U', '11', '8.95', '00', 'assets/images/thumbnails/1621440127_0ca56f35-38c1-47f7-8625-f8e485e709ef.JPG', 8.95, NULL, NULL, 11, NULL, 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 20:39:24', 0, NULL, NULL, NULL, 0, 0),
(399, '135050759', 'normal', NULL, 0, 4, 10, NULL, NULL, 'Kenya', 'kenya', '1621508889_7738feaf-70cd-4585-8e53-e91d14187e0d.JPG', '1621508889_7738feaf-70cd-4585-8e53-e91d14187e0d.JPG', NULL, 'M/L,S/M', '3,3', '20.95,20.95', 'VERT', 'assets/images/thumbnails/1621508889_7738feaf-70cd-4585-8e53-e91d14187e0d.JPG,assets/images/thumbnails/1621508889_7738feaf-70cd-4585-8e53-e91d14187e0d.JPG', 20.95, NULL, NULL, 6, NULL, 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-25 06:27:33', 0, NULL, NULL, NULL, 0, 0),
(400, '135050761', 'normal', NULL, 0, 4, 21, 8, NULL, 'Kaydence', 'kaydence', '1621508889_efe858bb-5c25-4602-bf79-4188fd387ac0.JPG', '1621508889_efe858bb-5c25-4602-bf79-4188fd387ac0.JPG', NULL, 'M/L,S/M', '3,3', '25.95,25.95', 'BLUE', 'assets/images/thumbnails/1621508889_efe858bb-5c25-4602-bf79-4188fd387ac0.JPG,assets/images/thumbnails/1621508889_efe858bb-5c25-4602-bf79-4188fd387ac0.JPG', 25.95, NULL, NULL, 6, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 05:32:43', 0, NULL, NULL, NULL, 0, 0),
(401, '135050765', 'normal', NULL, 0, 4, 21, 8, NULL, 'Avah', 'avah', '1621508889_79d64890-7663-4107-b955-42ee16572a74.JPG', '1621508889_79d64890-7663-4107-b955-42ee16572a74.JPG', NULL, 'M/L,S/M', '3,3', '25.95,25.95', '00', 'assets/images/thumbnails/1621508889_79d64890-7663-4107-b955-42ee16572a74.JPG,assets/images/thumbnails/1621508889_79d64890-7663-4107-b955-42ee16572a74.JPG', 25.95, NULL, NULL, 6, NULL, 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 04:15:05', 0, NULL, NULL, NULL, 0, 0),
(402, '135050767', 'normal', NULL, 0, 4, 21, 13, NULL, 'Calia', 'calia', '1621508889_9f688da6-3edd-465c-bbca-9e50ebd9e1c9.JPG', '1621508889_9f688da6-3edd-465c-bbca-9e50ebd9e1c9.JPG', NULL, 'L,M,S', '1,2,1', '27.95,27.95,27.95', '00', 'assets/images/thumbnails/1621508889_9f688da6-3edd-465c-bbca-9e50ebd9e1c9.JPG,assets/images/thumbnails/1621508889_9f688da6-3edd-465c-bbca-9e50ebd9e1c9.JPG,assets/images/thumbnails/1621508889_9f688da6-3edd-465c-bbca-9e50ebd9e1c9.JPG', 27.95, NULL, NULL, 4, NULL, 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-05-24 20:56:08', '2021-05-26 04:26:28', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(19, 935, '2021-01-26'),
(20, 989, '2021-01-26'),
(21, 928, '2021-01-28'),
(22, 1001, '2021-01-28'),
(23, 919, '2021-01-28'),
(24, 995, '2021-01-29'),
(25, 919, '2021-01-29'),
(26, 973, '2021-01-29'),
(27, 1004, '2021-01-29'),
(28, 970, '2021-01-29'),
(770, 106, '2021-03-10'),
(771, 106, '2021-03-10'),
(775, 106, '2021-03-11'),
(776, 106, '2021-03-11'),
(777, 106, '2021-03-11'),
(779, 106, '2021-03-12'),
(784, 106, '2021-03-14'),
(786, 106, '2021-03-15'),
(788, 106, '2021-03-15'),
(792, 106, '2021-03-16'),
(793, 106, '2021-03-16'),
(794, 106, '2021-03-16'),
(797, 106, '2021-03-18'),
(803, 106, '2021-03-19'),
(820, 106, '2021-03-19'),
(862, 221, '2021-03-21'),
(863, 223, '2021-03-21'),
(864, 217, '2021-03-21'),
(865, 215, '2021-03-21'),
(867, 216, '2021-03-21'),
(868, 213, '2021-03-21'),
(869, 212, '2021-03-21'),
(870, 220, '2021-03-21'),
(871, 214, '2021-03-21'),
(872, 219, '2021-03-21'),
(873, 222, '2021-03-21'),
(874, 218, '2021-03-21'),
(875, 106, '2021-03-21'),
(876, 211, '2021-03-21'),
(877, 209, '2021-03-21'),
(878, 210, '2021-03-21'),
(879, 221, '2021-03-21'),
(880, 223, '2021-03-21'),
(884, 217, '2021-03-21'),
(885, 215, '2021-03-21'),
(886, 216, '2021-03-21'),
(888, 211, '2021-03-21'),
(889, 209, '2021-03-21'),
(890, 210, '2021-03-22'),
(891, 213, '2021-03-22'),
(892, 212, '2021-03-22'),
(1043, 106, '2021-03-24'),
(1047, 220, '2021-03-24'),
(1051, 214, '2021-03-24'),
(1053, 106, '2021-03-24'),
(1066, 219, '2021-03-24'),
(1069, 222, '2021-03-24'),
(1070, 218, '2021-03-25'),
(1103, 106, '2021-03-27'),
(1105, 223, '2021-03-27'),
(1106, 223, '2021-03-27'),
(1107, 223, '2021-03-27'),
(1108, 292, '2021-03-27'),
(1109, 212, '2021-03-27'),
(1110, 429, '2021-03-27'),
(1111, 430, '2021-03-27'),
(1112, 431, '2021-03-27'),
(1113, 431, '2021-03-27'),
(1114, 429, '2021-03-27'),
(1115, 430, '2021-03-27'),
(1116, 430, '2021-03-27'),
(1117, 431, '2021-03-27'),
(1118, 430, '2021-03-27'),
(1119, 429, '2021-03-27'),
(1120, 431, '2021-03-27'),
(1121, 431, '2021-03-27'),
(1122, 431, '2021-03-27'),
(1123, 431, '2021-03-27'),
(1124, 431, '2021-03-27'),
(1125, 430, '2021-03-27'),
(1126, 431, '2021-03-27'),
(1127, 431, '2021-03-27'),
(1128, 106, '2021-03-27'),
(1129, 399, '2021-03-27'),
(1130, 338, '2021-03-27'),
(1131, 327, '2021-03-27'),
(1132, 339, '2021-03-27'),
(1133, 334, '2021-03-27'),
(1134, 330, '2021-03-27'),
(1135, 415, '2021-03-27'),
(1136, 405, '2021-03-27'),
(1137, 426, '2021-03-27'),
(1138, 424, '2021-03-27'),
(1139, 423, '2021-03-27'),
(1140, 431, '2021-03-27'),
(1141, 430, '2021-03-27'),
(1142, 425, '2021-03-27'),
(1143, 427, '2021-03-27'),
(1144, 428, '2021-03-27'),
(1145, 401, '2021-03-27'),
(1146, 406, '2021-03-27'),
(1147, 331, '2021-03-27'),
(1148, 328, '2021-03-27'),
(1149, 340, '2021-03-27'),
(1150, 370, '2021-03-27'),
(1151, 395, '2021-03-27'),
(1152, 377, '2021-03-27'),
(1153, 334, '2021-03-27'),
(1154, 339, '2021-03-28'),
(1155, 328, '2021-03-28'),
(1156, 330, '2021-03-28'),
(1157, 327, '2021-03-28'),
(1158, 331, '2021-03-28'),
(1159, 340, '2021-03-28'),
(1160, 358, '2021-03-28'),
(1161, 356, '2021-03-28'),
(1162, 357, '2021-03-28'),
(1163, 370, '2021-03-28'),
(1164, 349, '2021-03-28'),
(1165, 395, '2021-03-28'),
(1166, 375, '2021-03-28'),
(1167, 364, '2021-03-28'),
(1168, 392, '2021-03-28'),
(1169, 345, '2021-03-28'),
(1170, 338, '2021-03-28'),
(1171, 338, '2021-03-28'),
(1172, 330, '2021-03-28'),
(1173, 331, '2021-03-28'),
(1174, 339, '2021-03-28'),
(1175, 327, '2021-03-28'),
(1176, 334, '2021-03-28'),
(1177, 377, '2021-03-28'),
(1178, 366, '2021-03-28'),
(1179, 365, '2021-03-28'),
(1180, 385, '2021-03-28'),
(1181, 382, '2021-03-28'),
(1182, 419, '2021-03-28'),
(1183, 337, '2021-03-28'),
(1184, 335, '2021-03-28'),
(1185, 421, '2021-03-28'),
(1186, 422, '2021-03-28'),
(1187, 386, '2021-03-28'),
(1188, 404, '2021-03-28'),
(1189, 389, '2021-03-28'),
(1190, 372, '2021-03-28'),
(1191, 369, '2021-03-28'),
(1192, 400, '2021-03-28'),
(1193, 361, '2021-03-28'),
(1194, 359, '2021-03-28'),
(1195, 371, '2021-03-28'),
(1196, 390, '2021-03-28'),
(1197, 403, '2021-03-28'),
(1198, 348, '2021-03-28'),
(1199, 363, '2021-03-28'),
(1200, 344, '2021-03-28'),
(1201, 387, '2021-03-28'),
(1202, 384, '2021-03-28'),
(1203, 379, '2021-03-28'),
(1204, 380, '2021-03-28'),
(1205, 360, '2021-03-28'),
(1206, 354, '2021-03-28'),
(1207, 399, '2021-03-28'),
(1208, 416, '2021-03-28'),
(1209, 415, '2021-03-28'),
(1210, 425, '2021-03-28'),
(1211, 431, '2021-03-28'),
(1212, 431, '2021-03-28'),
(1213, 427, '2021-03-28'),
(1214, 426, '2021-03-28'),
(1215, 383, '2021-03-28'),
(1216, 373, '2021-03-28'),
(1217, 378, '2021-03-28'),
(1218, 350, '2021-03-28'),
(1219, 398, '2021-03-28'),
(1220, 401, '2021-03-28'),
(1221, 346, '2021-03-28'),
(1222, 407, '2021-03-28'),
(1223, 405, '2021-03-28'),
(1224, 397, '2021-03-28'),
(1225, 388, '2021-03-28'),
(1226, 367, '2021-03-28'),
(1227, 353, '2021-03-28'),
(1228, 408, '2021-03-28'),
(1229, 343, '2021-03-28'),
(1230, 352, '2021-03-28'),
(1231, 341, '2021-03-28'),
(1232, 356, '2021-03-28'),
(1233, 351, '2021-03-28'),
(1234, 394, '2021-03-28'),
(1235, 393, '2021-03-28'),
(1236, 340, '2021-03-28'),
(1237, 342, '2021-03-28'),
(1238, 409, '2021-03-28'),
(1239, 406, '2021-03-28'),
(1240, 362, '2021-03-28'),
(1241, 391, '2021-03-28'),
(1242, 376, '2021-03-28'),
(1243, 374, '2021-03-28'),
(1244, 357, '2021-03-28'),
(1245, 355, '2021-03-28'),
(1246, 381, '2021-03-28'),
(1247, 336, '2021-03-28'),
(1248, 418, '2021-03-28'),
(1249, 417, '2021-03-28'),
(1250, 424, '2021-03-28'),
(1251, 423, '2021-03-28'),
(1252, 386, '2021-03-28'),
(1253, 375, '2021-03-28'),
(1254, 389, '2021-03-28'),
(1255, 369, '2021-03-28'),
(1256, 364, '2021-03-28'),
(1257, 392, '2021-03-28'),
(1258, 361, '2021-03-28'),
(1259, 359, '2021-03-28'),
(1260, 390, '2021-03-28'),
(1261, 348, '2021-03-28'),
(1262, 431, '2021-03-28'),
(1263, 425, '2021-03-28'),
(1264, 424, '2021-03-28'),
(1265, 423, '2021-03-28'),
(1266, 413, '2021-03-28'),
(1267, 412, '2021-03-28'),
(1268, 411, '2021-03-28'),
(1269, 414, '2021-03-28'),
(1270, 410, '2021-03-28'),
(1271, 431, '2021-03-28'),
(1272, 428, '2021-03-28'),
(1273, 427, '2021-03-28'),
(1274, 426, '2021-03-28'),
(1275, 430, '2021-03-28'),
(1276, 429, '2021-03-28'),
(1277, 349, '2021-03-28'),
(1278, 372, '2021-03-28'),
(1279, 366, '2021-03-28'),
(1280, 371, '2021-03-28'),
(1281, 345, '2021-03-28'),
(1282, 396, '2021-03-28'),
(1283, 363, '2021-03-28'),
(1284, 344, '2021-03-28'),
(1285, 368, '2021-03-28'),
(1286, 387, '2021-03-28'),
(1287, 384, '2021-03-28'),
(1288, 379, '2021-03-28'),
(1289, 380, '2021-03-28'),
(1290, 360, '2021-03-28'),
(1291, 347, '2021-03-28'),
(1292, 365, '2021-03-28'),
(1293, 354, '2021-03-28'),
(1294, 383, '2021-03-28'),
(1295, 373, '2021-03-28'),
(1296, 378, '2021-03-28'),
(1297, 350, '2021-03-28'),
(1298, 385, '2021-03-28'),
(1299, 346, '2021-03-28'),
(1300, 397, '2021-03-28'),
(1301, 388, '2021-03-28'),
(1302, 367, '2021-03-28'),
(1303, 353, '2021-03-28'),
(1304, 343, '2021-03-28'),
(1305, 352, '2021-03-28'),
(1306, 341, '2021-03-28'),
(1307, 351, '2021-03-28'),
(1308, 382, '2021-03-28'),
(1309, 394, '2021-03-28'),
(1310, 393, '2021-03-28'),
(1311, 342, '2021-03-28'),
(1312, 376, '2021-03-28'),
(1313, 334, '2021-03-28'),
(1314, 220, '2021-03-28'),
(1315, 327, '2021-03-28'),
(1316, 337, '2021-03-28'),
(1317, 209, '2021-03-28'),
(1318, 215, '2021-03-28'),
(1319, 223, '2021-03-28'),
(1320, 106, '2021-03-28'),
(1321, 419, '2021-03-28'),
(1322, 338, '2021-03-28'),
(1323, 328, '2021-03-28'),
(1324, 214, '2021-03-28'),
(1325, 219, '2021-03-28'),
(1326, 335, '2021-03-28'),
(1327, 212, '2021-03-28'),
(1328, 339, '2021-03-28'),
(1329, 420, '2021-03-28'),
(1330, 423, '2021-03-28'),
(1331, 373, '2021-03-28'),
(1332, 210, '2021-03-28'),
(1333, 340, '2021-03-28'),
(1334, 388, '2021-03-28'),
(1335, 222, '2021-03-28'),
(1336, 351, '2021-03-28'),
(1337, 417, '2021-03-28'),
(1338, 347, '2021-03-28'),
(1339, 330, '2021-03-28'),
(1340, 356, '2021-03-28'),
(1341, 413, '2021-03-28'),
(1342, 345, '2021-03-28'),
(1343, 349, '2021-03-28'),
(1344, 360, '2021-03-28'),
(1345, 422, '2021-03-28'),
(1346, 336, '2021-03-28'),
(1347, 353, '2021-03-28'),
(1348, 221, '2021-03-28'),
(1349, 216, '2021-03-28'),
(1350, 361, '2021-03-28'),
(1351, 385, '2021-03-28'),
(1352, 418, '2021-03-28'),
(1353, 415, '2021-03-28'),
(1354, 378, '2021-03-28'),
(1355, 425, '2021-03-28'),
(1356, 382, '2021-03-28'),
(1357, 352, '2021-03-28'),
(1358, 402, '2021-03-28'),
(1359, 405, '2021-03-28'),
(1360, 359, '2021-03-28'),
(1361, 408, '2021-03-28'),
(1362, 411, '2021-03-28'),
(1363, 364, '2021-03-28'),
(1364, 421, '2021-03-28'),
(1365, 365, '2021-03-28'),
(1366, 354, '2021-03-28'),
(1367, 404, '2021-03-28'),
(1368, 218, '2021-03-28'),
(1369, 400, '2021-03-28'),
(1370, 357, '2021-03-28'),
(1371, 407, '2021-03-28'),
(1372, 412, '2021-03-28'),
(1373, 414, '2021-03-28'),
(1374, 355, '2021-03-28'),
(1375, 341, '2021-03-28'),
(1376, 409, '2021-03-28'),
(1377, 406, '2021-03-28'),
(1378, 431, '2021-03-28'),
(1379, 358, '2021-03-28'),
(1380, 348, '2021-03-28'),
(1381, 344, '2021-03-28'),
(1382, 211, '2021-03-28'),
(1383, 362, '2021-03-28'),
(1384, 369, '2021-03-28'),
(1385, 370, '2021-03-28'),
(1386, 427, '2021-03-28'),
(1387, 372, '2021-03-28'),
(1388, 366, '2021-03-28'),
(1389, 343, '2021-03-28'),
(1390, 217, '2021-03-28'),
(1391, 426, '2021-03-28'),
(1392, 391, '2021-03-28'),
(1393, 424, '2021-03-28'),
(1394, 363, '2021-03-28'),
(1395, 401, '2021-03-28'),
(1396, 384, '2021-03-28'),
(1397, 428, '2021-03-28'),
(1398, 362, '2021-03-28'),
(1399, 381, '2021-03-28'),
(1400, 342, '2021-03-28'),
(1401, 398, '2021-03-28'),
(1402, 376, '2021-03-28'),
(1403, 331, '2021-03-28'),
(1404, 403, '2021-03-28'),
(1405, 367, '2021-03-28'),
(1406, 397, '2021-03-28'),
(1407, 399, '2021-03-28'),
(1408, 380, '2021-03-28'),
(1409, 429, '2021-03-28'),
(1410, 374, '2021-03-28'),
(1411, 383, '2021-03-28'),
(1412, 350, '2021-03-28'),
(1413, 374, '2021-03-28'),
(1414, 393, '2021-03-28'),
(1415, 396, '2021-03-28'),
(1416, 389, '2021-03-28'),
(1417, 390, '2021-03-28'),
(1418, 430, '2021-03-28'),
(1419, 379, '2021-03-28'),
(1420, 346, '2021-03-28'),
(1421, 395, '2021-03-28'),
(1422, 394, '2021-03-28'),
(1423, 355, '2021-03-28'),
(1424, 387, '2021-03-28'),
(1425, 213, '2021-03-28'),
(1426, 391, '2021-03-28'),
(1427, 410, '2021-03-28'),
(1428, 375, '2021-03-28'),
(1429, 416, '2021-03-28'),
(1430, 386, '2021-03-28'),
(1431, 392, '2021-03-29'),
(1432, 377, '2021-03-29'),
(1433, 381, '2021-03-29'),
(1434, 371, '2021-03-29'),
(1435, 368, '2021-03-29'),
(1436, 420, '2021-03-29'),
(1437, 419, '2021-03-29'),
(1438, 420, '2021-03-29'),
(1439, 337, '2021-03-29'),
(1440, 421, '2021-03-29'),
(1441, 335, '2021-03-29'),
(1442, 336, '2021-03-29'),
(1443, 422, '2021-03-29'),
(1444, 399, '2021-03-29'),
(1445, 398, '2021-03-29'),
(1446, 401, '2021-03-29'),
(1447, 405, '2021-03-29'),
(1448, 406, '2021-03-29'),
(1449, 328, '2021-03-29'),
(1450, 416, '2021-03-29'),
(1451, 413, '2021-03-29'),
(1452, 412, '2021-03-29'),
(1453, 415, '2021-03-29'),
(1454, 411, '2021-03-29'),
(1455, 418, '2021-03-29'),
(1456, 414, '2021-03-29'),
(1457, 417, '2021-03-29'),
(1458, 410, '2021-03-29'),
(1459, 212, '2021-03-29'),
(1460, 431, '2021-03-29'),
(1461, 431, '2021-03-29'),
(1462, 428, '2021-03-29'),
(1463, 430, '2021-03-29'),
(1464, 219, '2021-03-29'),
(1465, 429, '2021-03-29'),
(1466, 429, '2021-03-29'),
(1467, 396, '2021-03-29'),
(1468, 418, '2021-03-29'),
(1469, 403, '2021-03-29'),
(1470, 403, '2021-03-29'),
(1471, 402, '2021-03-29'),
(1472, 401, '2021-03-29'),
(1473, 388, '2021-03-29'),
(1474, 411, '2021-03-29'),
(1475, 414, '2021-03-29'),
(1476, 513, '2021-03-29'),
(1477, 513, '2021-03-29'),
(1478, 513, '2021-03-29'),
(1479, 513, '2021-03-29'),
(1480, 513, '2021-03-29'),
(1481, 513, '2021-03-29'),
(1482, 502, '2021-03-29'),
(1483, 498, '2021-03-29'),
(1484, 513, '2021-03-29'),
(1485, 499, '2021-03-29'),
(1486, 499, '2021-03-29'),
(1487, 502, '2021-03-29'),
(1488, 509, '2021-03-29'),
(1489, 511, '2021-03-29'),
(1490, 513, '2021-03-29'),
(1492, 510, '2021-03-29'),
(1493, 513, '2021-04-02'),
(1494, 513, '2021-04-02'),
(1495, 417, '2021-04-02'),
(1496, 222, '2021-04-02'),
(1497, 498, '2021-04-02'),
(1498, 459, '2021-04-02'),
(1499, 513, '2021-04-02'),
(1500, 480, '2021-04-02'),
(1501, 479, '2021-04-02'),
(1502, 499, '2021-04-02'),
(1503, 330, '2021-04-02'),
(1504, 399, '2021-04-02'),
(1505, 383, '2021-04-02'),
(1506, 328, '2021-04-02'),
(1507, 216, '2021-04-02'),
(1508, 513, '2021-04-02'),
(1509, 372, '2021-04-02'),
(1510, 506, '2021-04-02'),
(1511, 513, '2021-04-02'),
(1512, 506, '2021-04-02'),
(1513, 212, '2021-04-02'),
(1514, 506, '2021-04-02'),
(1515, 502, '2021-04-02'),
(1516, 498, '2021-04-02'),
(1517, 498, '2021-04-02'),
(1518, 106, '2021-04-02'),
(1519, 506, '2021-04-02'),
(1520, 502, '2021-04-02'),
(1521, 447, '2021-04-02'),
(1522, 374, '2021-04-02'),
(1523, 502, '2021-04-02'),
(1524, 458, '2021-04-02'),
(1525, 339, '2021-04-02'),
(1526, 345, '2021-04-02'),
(1528, 510, '2021-04-03'),
(1529, 505, '2021-04-03'),
(1530, 507, '2021-04-03'),
(1531, 509, '2021-04-03'),
(1532, 508, '2021-04-03'),
(1533, 209, '2021-04-03'),
(1534, 504, '2021-04-03'),
(1535, 513, '2021-04-03'),
(1536, 511, '2021-04-03'),
(1537, 503, '2021-04-03'),
(1538, 334, '2021-04-03'),
(1539, 506, '2021-04-03'),
(1540, 347, '2021-04-03'),
(1541, 479, '2021-04-03'),
(1542, 480, '2021-04-03'),
(1543, 460, '2021-04-03'),
(1544, 459, '2021-04-03'),
(1545, 377, '2021-04-03'),
(1547, 382, '2021-04-04'),
(1548, 211, '2021-04-04'),
(1549, 378, '2021-04-04'),
(1550, 407, '2021-04-04'),
(1551, 106, '2021-04-04'),
(1552, 344, '2021-04-04'),
(1553, 336, '2021-04-04'),
(1554, 490, '2021-04-04'),
(1555, 486, '2021-04-04'),
(1556, 495, '2021-04-04'),
(1557, 447, '2021-04-04'),
(1558, 502, '2021-04-04'),
(1559, 438, '2021-04-04'),
(1560, 504, '2021-04-04'),
(1561, 440, '2021-04-04'),
(1562, 432, '2021-04-04'),
(1563, 433, '2021-04-04'),
(1564, 434, '2021-04-04'),
(1565, 441, '2021-04-04'),
(1566, 439, '2021-04-04'),
(1567, 479, '2021-04-04'),
(1568, 499, '2021-04-04'),
(1569, 491, '2021-04-04'),
(1570, 458, '2021-04-04'),
(1571, 488, '2021-04-04'),
(1572, 492, '2021-04-04'),
(1573, 460, '2021-04-04'),
(1574, 489, '2021-04-04'),
(1575, 496, '2021-04-04'),
(1576, 485, '2021-04-04'),
(1577, 498, '2021-04-04'),
(1578, 456, '2021-04-04'),
(1579, 457, '2021-04-04'),
(1580, 480, '2021-04-04'),
(1581, 487, '2021-04-04'),
(1582, 455, '2021-04-04'),
(1583, 459, '2021-04-04'),
(1584, 494, '2021-04-04'),
(1585, 513, '2021-04-04'),
(1586, 493, '2021-04-04'),
(1587, 346, '2021-04-04'),
(1588, 506, '2021-04-04'),
(1589, 406, '2021-04-04'),
(1590, 413, '2021-04-05'),
(1591, 222, '2021-04-05'),
(1592, 330, '2021-04-05'),
(1593, 383, '2021-04-05'),
(1594, 216, '2021-04-05'),
(1595, 513, '2021-04-05'),
(1597, 511, '2021-04-05'),
(1598, 510, '2021-04-05'),
(1599, 509, '2021-04-05'),
(1600, 508, '2021-04-05'),
(1601, 507, '2021-04-05'),
(1602, 506, '2021-04-05'),
(1603, 505, '2021-04-05'),
(1604, 504, '2021-04-05'),
(1605, 503, '2021-04-05'),
(1606, 502, '2021-04-05'),
(1607, 447, '2021-04-05'),
(1608, 376, '2021-04-05'),
(1609, 373, '2021-04-05'),
(1610, 350, '2021-04-05'),
(1611, 499, '2021-04-05'),
(1612, 498, '2021-04-05'),
(1613, 480, '2021-04-05'),
(1614, 479, '2021-04-05'),
(1615, 460, '2021-04-05'),
(1616, 459, '2021-04-05'),
(1617, 458, '2021-04-05'),
(1618, 457, '2021-04-05'),
(1619, 456, '2021-04-05'),
(1620, 455, '2021-04-05'),
(1621, 441, '2021-04-05'),
(1622, 440, '2021-04-05'),
(1623, 439, '2021-04-05'),
(1624, 438, '2021-04-05'),
(1625, 434, '2021-04-05'),
(1626, 433, '2021-04-05'),
(1627, 432, '2021-04-05'),
(1628, 385, '2021-04-05'),
(1629, 382, '2021-04-05'),
(1630, 377, '2021-04-05'),
(1631, 367, '2021-04-05'),
(1632, 366, '2021-04-05'),
(1633, 431, '2021-04-05'),
(1634, 430, '2021-04-05'),
(1635, 429, '2021-04-05'),
(1636, 428, '2021-04-05'),
(1637, 427, '2021-04-05'),
(1638, 426, '2021-04-05'),
(1639, 496, '2021-04-05'),
(1640, 495, '2021-04-05'),
(1641, 494, '2021-04-05'),
(1642, 493, '2021-04-05'),
(1643, 492, '2021-04-05'),
(1644, 491, '2021-04-05'),
(1645, 490, '2021-04-05'),
(1646, 489, '2021-04-05'),
(1647, 488, '2021-04-05'),
(1648, 487, '2021-04-05'),
(1649, 486, '2021-04-05'),
(1650, 485, '2021-04-05'),
(1651, 106, '2021-04-05'),
(1652, 327, '2021-04-05'),
(1653, 328, '2021-04-05'),
(1654, 330, '2021-04-05'),
(1655, 331, '2021-04-05'),
(1656, 334, '2021-04-05'),
(1657, 339, '2021-04-05'),
(1658, 340, '2021-04-05'),
(1659, 501, '2021-04-05'),
(1660, 500, '2021-04-05'),
(1661, 497, '2021-04-05'),
(1662, 478, '2021-04-05'),
(1663, 477, '2021-04-05'),
(1664, 476, '2021-04-05'),
(1665, 475, '2021-04-05'),
(1666, 474, '2021-04-05'),
(1667, 473, '2021-04-05'),
(1668, 472, '2021-04-05'),
(1669, 471, '2021-04-05'),
(1670, 470, '2021-04-05'),
(1671, 469, '2021-04-05'),
(1672, 468, '2021-04-05'),
(1673, 467, '2021-04-05'),
(1674, 466, '2021-04-05'),
(1675, 465, '2021-04-05'),
(1676, 464, '2021-04-05'),
(1677, 463, '2021-04-05'),
(1678, 462, '2021-04-05'),
(1679, 461, '2021-04-05'),
(1680, 454, '2021-04-05'),
(1681, 453, '2021-04-05'),
(1682, 452, '2021-04-05'),
(1683, 451, '2021-04-05'),
(1684, 450, '2021-04-05'),
(1685, 449, '2021-04-05'),
(1686, 448, '2021-04-05'),
(1687, 446, '2021-04-05'),
(1688, 445, '2021-04-05'),
(1689, 444, '2021-04-05'),
(1690, 443, '2021-04-05'),
(1691, 442, '2021-04-05'),
(1692, 437, '2021-04-05'),
(1693, 436, '2021-04-05'),
(1694, 435, '2021-04-05'),
(1695, 425, '2021-04-05'),
(1696, 424, '2021-04-05'),
(1697, 423, '2021-04-05'),
(1698, 418, '2021-04-05'),
(1699, 417, '2021-04-05'),
(1700, 416, '2021-04-05'),
(1701, 415, '2021-04-05'),
(1702, 414, '2021-04-05'),
(1703, 413, '2021-04-05'),
(1704, 412, '2021-04-05'),
(1705, 411, '2021-04-05'),
(1706, 410, '2021-04-05'),
(1707, 409, '2021-04-05'),
(1708, 408, '2021-04-05'),
(1709, 407, '2021-04-05'),
(1710, 406, '2021-04-05'),
(1711, 405, '2021-04-05'),
(1712, 404, '2021-04-05'),
(1713, 403, '2021-04-05'),
(1714, 402, '2021-04-05'),
(1715, 401, '2021-04-05'),
(1716, 400, '2021-04-05'),
(1717, 399, '2021-04-05'),
(1718, 398, '2021-04-05'),
(1719, 397, '2021-04-05'),
(1720, 396, '2021-04-05'),
(1721, 395, '2021-04-05'),
(1722, 394, '2021-04-05'),
(1723, 393, '2021-04-05'),
(1724, 392, '2021-04-05'),
(1725, 391, '2021-04-05'),
(1726, 390, '2021-04-05'),
(1727, 389, '2021-04-05'),
(1728, 388, '2021-04-05'),
(1729, 387, '2021-04-05'),
(1730, 386, '2021-04-05'),
(1731, 384, '2021-04-05'),
(1732, 383, '2021-04-05'),
(1733, 381, '2021-04-05'),
(1734, 380, '2021-04-05'),
(1735, 379, '2021-04-05'),
(1736, 378, '2021-04-05'),
(1737, 375, '2021-04-05'),
(1738, 374, '2021-04-05'),
(1739, 372, '2021-04-05'),
(1740, 371, '2021-04-05'),
(1741, 370, '2021-04-05'),
(1742, 369, '2021-04-05'),
(1743, 368, '2021-04-05'),
(1744, 365, '2021-04-05'),
(1745, 364, '2021-04-05'),
(1746, 363, '2021-04-05'),
(1747, 362, '2021-04-05'),
(1748, 361, '2021-04-05'),
(1749, 360, '2021-04-05'),
(1750, 359, '2021-04-05'),
(1751, 358, '2021-04-05'),
(1752, 357, '2021-04-05'),
(1753, 356, '2021-04-05'),
(1754, 355, '2021-04-05'),
(1755, 354, '2021-04-05'),
(1756, 353, '2021-04-05'),
(1757, 352, '2021-04-05'),
(1758, 351, '2021-04-05'),
(1759, 349, '2021-04-05'),
(1760, 348, '2021-04-05'),
(1761, 347, '2021-04-05'),
(1762, 346, '2021-04-05'),
(1763, 345, '2021-04-05'),
(1764, 344, '2021-04-05'),
(1765, 343, '2021-04-05'),
(1766, 342, '2021-04-05'),
(1767, 341, '2021-04-05'),
(1768, 209, '2021-04-05'),
(1769, 210, '2021-04-05'),
(1770, 211, '2021-04-05'),
(1771, 212, '2021-04-05'),
(1772, 213, '2021-04-05'),
(1773, 214, '2021-04-05'),
(1774, 215, '2021-04-05'),
(1775, 216, '2021-04-05'),
(1776, 484, '2021-04-05'),
(1777, 483, '2021-04-05'),
(1778, 482, '2021-04-05'),
(1779, 481, '2021-04-05'),
(1780, 422, '2021-04-05'),
(1781, 421, '2021-04-05'),
(1782, 420, '2021-04-05'),
(1783, 419, '2021-04-05'),
(1784, 337, '2021-04-05'),
(1785, 336, '2021-04-05'),
(1786, 335, '2021-04-05'),
(1787, 223, '2021-04-05'),
(1788, 222, '2021-04-05'),
(1789, 221, '2021-04-05'),
(1790, 220, '2021-04-05'),
(1791, 219, '2021-04-05'),
(1792, 218, '2021-04-05'),
(1793, 217, '2021-04-05'),
(1794, 212, '2021-04-05'),
(1795, 457, '2021-04-05'),
(1796, 404, '2021-04-05'),
(1797, 511, '2021-04-05'),
(1798, 461, '2021-04-05'),
(1799, 339, '2021-04-05'),
(1800, 513, '2021-04-05'),
(1801, 507, '2021-04-05'),
(1802, 503, '2021-04-05'),
(1803, 513, '2021-04-05'),
(1804, 464, '2021-04-05'),
(1805, 499, '2021-04-05'),
(1806, 328, '2021-04-05'),
(1807, 106, '2021-04-05'),
(1808, 505, '2021-04-05'),
(1809, 506, '2021-04-05'),
(1810, 409, '2021-04-06'),
(1811, 408, '2021-04-06'),
(1812, 407, '2021-04-06'),
(1813, 410, '2021-04-06'),
(1814, 476, '2021-04-06'),
(1815, 475, '2021-04-06'),
(1816, 510, '2021-04-06'),
(1817, 505, '2021-04-06'),
(1818, 367, '2021-04-06'),
(1819, 363, '2021-04-06'),
(1820, 362, '2021-04-06'),
(1821, 377, '2021-04-06'),
(1822, 504, '2021-04-06'),
(1823, 509, '2021-04-06'),
(1824, 467, '2021-04-06'),
(1826, 468, '2021-04-06'),
(1827, 510, '2021-04-06'),
(1828, 382, '2021-04-06'),
(1829, 211, '2021-04-06'),
(1830, 513, '2021-04-06'),
(1831, 407, '2021-04-06'),
(1832, 378, '2021-04-06'),
(1833, 442, '2021-04-06'),
(1834, 364, '2021-04-06'),
(1835, 506, '2021-04-06'),
(1836, 513, '2021-04-06'),
(1837, 506, '2021-04-06'),
(1838, 106, '2021-04-06'),
(1839, 513, '2021-04-06'),
(1840, 498, '2021-04-06'),
(1841, 344, '2021-04-06'),
(1842, 502, '2021-04-06'),
(1843, 508, '2021-04-06'),
(1844, 473, '2021-04-07'),
(1845, 220, '2021-04-07'),
(1846, 462, '2021-04-07'),
(1847, 508, '2021-04-07'),
(1848, 453, '2021-04-07'),
(1849, 456, '2021-04-07'),
(1850, 218, '2021-04-07'),
(1851, 504, '2021-04-07'),
(1852, 366, '2021-04-07'),
(1853, 506, '2021-04-07'),
(1854, 471, '2021-04-07'),
(1855, 408, '2021-04-07'),
(1856, 346, '2021-04-07'),
(1857, 454, '2021-04-07'),
(1858, 451, '2021-04-07'),
(1859, 469, '2021-04-07'),
(1860, 330, '2021-04-07'),
(1861, 356, '2021-04-07'),
(1862, 440, '2021-04-07'),
(1863, 441, '2021-04-07'),
(1865, 436, '2021-04-07'),
(1866, 435, '2021-04-07'),
(1867, 472, '2021-04-07'),
(1868, 455, '2021-04-08'),
(1869, 219, '2021-04-08'),
(1870, 503, '2021-04-08'),
(1871, 216, '2021-04-08'),
(1872, 511, '2021-04-08'),
(1873, 457, '2021-04-08'),
(1874, 327, '2021-04-08'),
(1875, 437, '2021-04-08'),
(1876, 461, '2021-04-08'),
(1877, 509, '2021-04-08'),
(1878, 222, '2021-04-08'),
(1879, 438, '2021-04-08'),
(1880, 440, '2021-04-08'),
(1881, 432, '2021-04-08'),
(1882, 433, '2021-04-08'),
(1883, 434, '2021-04-08'),
(1884, 441, '2021-04-08'),
(1885, 439, '2021-04-08'),
(1886, 507, '2021-04-08'),
(1887, 419, '2021-04-08'),
(1888, 404, '2021-04-08'),
(1889, 400, '2021-04-08'),
(1890, 464, '2021-04-08'),
(1891, 418, '2021-04-08'),
(1892, 403, '2021-04-08'),
(1893, 402, '2021-04-08'),
(1894, 407, '2021-04-08'),
(1895, 408, '2021-04-08'),
(1896, 409, '2021-04-08'),
(1897, 473, '2021-04-08'),
(1898, 470, '2021-04-08'),
(1899, 482, '2021-04-08'),
(1900, 460, '2021-04-08'),
(1901, 484, '2021-04-08'),
(1902, 438, '2021-04-08'),
(1903, 479, '2021-04-08'),
(1904, 451, '2021-04-08'),
(1905, 474, '2021-04-08'),
(1906, 490, '2021-04-08'),
(1907, 478, '2021-04-08'),
(1908, 483, '2021-04-08'),
(1909, 470, '2021-04-08'),
(1910, 486, '2021-04-08'),
(1911, 505, '2021-04-08'),
(1912, 439, '2021-04-08'),
(1913, 472, '2021-04-08'),
(1914, 499, '2021-04-08'),
(1915, 502, '2021-04-08'),
(1916, 334, '2021-04-08'),
(1917, 495, '2021-04-08'),
(1918, 436, '2021-04-08'),
(1919, 442, '2021-04-08'),
(1920, 461, '2021-04-08'),
(1921, 469, '2021-04-08'),
(1922, 468, '2021-04-08'),
(1923, 491, '2021-04-08'),
(1924, 458, '2021-04-08'),
(1925, 215, '2021-04-08'),
(1926, 213, '2021-04-08'),
(1927, 212, '2021-04-08'),
(1928, 214, '2021-04-08'),
(1929, 456, '2021-04-08'),
(1930, 360, '2021-04-08'),
(1931, 457, '2021-04-08'),
(1932, 454, '2021-04-08'),
(1933, 449, '2021-04-08'),
(1934, 463, '2021-04-08'),
(1935, 488, '2021-04-08'),
(1936, 445, '2021-04-08'),
(1937, 492, '2021-04-08'),
(1938, 460, '2021-04-08'),
(1939, 460, '2021-04-08'),
(1940, 357, '2021-04-08'),
(1941, 211, '2021-04-08'),
(1942, 209, '2021-04-08'),
(1943, 210, '2021-04-08'),
(1944, 351, '2021-04-08'),
(1945, 433, '2021-04-08'),
(1946, 216, '2021-04-08'),
(1947, 513, '2021-04-08'),
(1948, 489, '2021-04-08'),
(1949, 496, '2021-04-08'),
(1950, 451, '2021-04-08'),
(1951, 511, '2021-04-08'),
(1952, 327, '2021-04-08'),
(1953, 327, '2021-04-08'),
(1954, 327, '2021-04-08'),
(1955, 485, '2021-04-08'),
(1956, 498, '2021-04-08'),
(1957, 452, '2021-04-08'),
(1958, 450, '2021-04-08'),
(1959, 466, '2021-04-08'),
(1960, 446, '2021-04-08'),
(1961, 448, '2021-04-08'),
(1962, 352, '2021-04-08'),
(1963, 480, '2021-04-08'),
(1964, 458, '2021-04-08'),
(1965, 464, '2021-04-08'),
(1966, 463, '2021-04-08'),
(1967, 462, '2021-04-08'),
(1968, 445, '2021-04-08'),
(1969, 210, '2021-04-08'),
(1970, 475, '2021-04-08'),
(1971, 409, '2021-04-09'),
(1972, 214, '2021-04-09'),
(1973, 466, '2021-04-09'),
(1974, 500, '2021-04-09'),
(1975, 487, '2021-04-09'),
(1976, 506, '2021-04-09'),
(1977, 455, '2021-04-09'),
(1978, 499, '2021-04-09'),
(1979, 459, '2021-04-09'),
(1980, 507, '2021-04-09'),
(1981, 453, '2021-04-09'),
(1982, 359, '2021-04-09'),
(1984, 443, '2021-04-09'),
(1985, 215, '2021-04-09'),
(1986, 443, '2021-04-09'),
(1987, 494, '2021-04-09'),
(1988, 221, '2021-04-09'),
(1989, 444, '2021-04-09'),
(1990, 437, '2021-04-09'),
(1991, 358, '2021-04-09'),
(1992, 467, '2021-04-09'),
(1993, 211, '2021-04-09'),
(1994, 213, '2021-04-09'),
(1995, 209, '2021-04-09'),
(1996, 212, '2021-04-09'),
(1997, 349, '2021-04-09'),
(1998, 210, '2021-04-09'),
(1999, 432, '2021-04-09'),
(2000, 216, '2021-04-09'),
(2001, 435, '2021-04-09'),
(2002, 497, '2021-04-09'),
(2003, 449, '2021-04-09'),
(2004, 435, '2021-04-09'),
(2005, 446, '2021-04-09'),
(2006, 437, '2021-04-09'),
(2007, 465, '2021-04-09'),
(2008, 447, '2021-04-09'),
(2009, 444, '2021-04-09'),
(2010, 452, '2021-04-09'),
(2011, 448, '2021-04-09'),
(2012, 355, '2021-04-09'),
(2013, 498, '2021-04-09'),
(2014, 414, '2021-04-09'),
(2015, 413, '2021-04-09'),
(2016, 414, '2021-04-09'),
(2017, 401, '2021-04-09'),
(2018, 339, '2021-04-09'),
(2019, 471, '2021-04-09'),
(2020, 493, '2021-04-09'),
(2021, 211, '2021-04-09'),
(2022, 481, '2021-04-09'),
(2023, 215, '2021-04-09'),
(2024, 340, '2021-04-09'),
(2025, 353, '2021-04-09'),
(2026, 354, '2021-04-10'),
(2027, 350, '2021-04-10'),
(2028, 361, '2021-04-10'),
(2029, 434, '2021-04-10'),
(2030, 328, '2021-04-10'),
(2031, 459, '2021-04-10'),
(2032, 480, '2021-04-10'),
(2033, 465, '2021-04-10'),
(2034, 450, '2021-04-10'),
(2035, 223, '2021-04-10'),
(2036, 478, '2021-04-10'),
(2037, 508, '2021-04-10'),
(2038, 469, '2021-04-10'),
(2039, 331, '2021-04-10'),
(2040, 365, '2021-04-10'),
(2041, 217, '2021-04-10'),
(2044, 330, '2021-04-10'),
(2046, 510, '2021-04-10'),
(2047, 351, '2021-04-10'),
(2048, 513, '2021-04-10'),
(2049, 354, '2021-04-10'),
(2050, 213, '2021-04-10'),
(2051, 217, '2021-04-10'),
(2052, 504, '2021-04-10'),
(2053, 436, '2021-04-10'),
(2054, 503, '2021-04-10'),
(2055, 442, '2021-04-10'),
(2056, 506, '2021-04-10'),
(2057, 445, '2021-04-10'),
(2058, 446, '2021-04-10'),
(2059, 500, '2021-04-10'),
(2060, 443, '2021-04-10'),
(2061, 444, '2021-04-10'),
(2062, 501, '2021-04-10'),
(2063, 473, '2021-04-11'),
(2064, 474, '2021-04-11'),
(2065, 478, '2021-04-11'),
(2066, 390, '2021-04-11'),
(2067, 212, '2021-04-11'),
(2068, 217, '2021-04-11'),
(2069, 472, '2021-04-11'),
(2070, 510, '2021-04-11'),
(2071, 505, '2021-04-11'),
(2072, 507, '2021-04-11'),
(2073, 509, '2021-04-11'),
(2074, 508, '2021-04-11'),
(2075, 475, '2021-04-11'),
(2076, 476, '2021-04-11'),
(2077, 477, '2021-04-11'),
(2078, 451, '2021-04-11'),
(2079, 470, '2021-04-11'),
(2080, 461, '2021-04-11'),
(2081, 469, '2021-04-11'),
(2082, 468, '2021-04-11'),
(2083, 418, '2021-04-11'),
(2084, 502, '2021-04-11'),
(2085, 463, '2021-04-11'),
(2086, 452, '2021-04-11'),
(2087, 450, '2021-04-11'),
(2088, 466, '2021-04-11'),
(2089, 214, '2021-04-11'),
(2090, 482, '2021-04-11'),
(2091, 484, '2021-04-11'),
(2092, 419, '2021-04-11'),
(2093, 360, '2021-04-11'),
(2094, 483, '2021-04-11'),
(2095, 481, '2021-04-11'),
(2096, 448, '2021-04-11'),
(2097, 464, '2021-04-11'),
(2098, 462, '2021-04-11'),
(2099, 453, '2021-04-11'),
(2100, 467, '2021-04-11'),
(2101, 465, '2021-04-11'),
(2102, 223, '2021-04-11'),
(2103, 221, '2021-04-11'),
(2104, 209, '2021-04-11'),
(2105, 463, '2021-04-11'),
(2106, 220, '2021-04-11'),
(2107, 219, '2021-04-11'),
(2108, 222, '2021-04-11'),
(2109, 506, '2021-04-11'),
(2110, 393, '2021-04-11'),
(2111, 409, '2021-04-11'),
(2112, 471, '2021-04-11'),
(2113, 513, '2021-04-11'),
(2114, 506, '2021-04-11'),
(2115, 334, '2021-04-11'),
(2116, 359, '2021-04-11'),
(2117, 466, '2021-04-11'),
(2118, 331, '2021-04-11'),
(2119, 507, '2021-04-11'),
(2120, 348, '2021-04-11'),
(2121, 330, '2021-04-11'),
(2122, 355, '2021-04-11'),
(2123, 221, '2021-04-11'),
(2124, 223, '2021-04-11'),
(2125, 339, '2021-04-11'),
(2126, 341, '2021-04-11'),
(2127, 328, '2021-04-11'),
(2128, 327, '2021-04-11'),
(2129, 479, '2021-04-11'),
(2130, 358, '2021-04-11'),
(2131, 347, '2021-04-11'),
(2132, 352, '2021-04-12'),
(2133, 349, '2021-04-12'),
(2134, 334, '2021-04-12'),
(2135, 331, '2021-04-12'),
(2136, 357, '2021-04-12'),
(2137, 385, '2021-04-12'),
(2138, 214, '2021-04-12'),
(2139, 435, '2021-04-12'),
(2140, 449, '2021-04-12'),
(2141, 330, '2021-04-12'),
(2142, 218, '2021-04-12'),
(2143, 446, '2021-04-12'),
(2144, 375, '2021-04-12'),
(2145, 444, '2021-04-12'),
(2146, 353, '2021-04-12'),
(2147, 452, '2021-04-12'),
(2148, 448, '2021-04-12'),
(2149, 339, '2021-04-12'),
(2150, 328, '2021-04-12'),
(2151, 211, '2021-04-12'),
(2152, 215, '2021-04-12'),
(2153, 327, '2021-04-12'),
(2154, 339, '2021-04-12'),
(2155, 354, '2021-04-12'),
(2156, 350, '2021-04-12'),
(2157, 361, '2021-04-12'),
(2158, 513, '2021-04-12'),
(2159, 506, '2021-04-12'),
(2160, 331, '2021-04-12'),
(2161, 434, '2021-04-12'),
(2162, 342, '2021-04-12'),
(2163, 459, '2021-04-12'),
(2164, 368, '2021-04-12'),
(2165, 480, '2021-04-12'),
(2166, 465, '2021-04-12'),
(2167, 450, '2021-04-12'),
(2168, 346, '2021-04-12'),
(2169, 476, '2021-04-12'),
(2170, 365, '2021-04-13'),
(2171, 331, '2021-04-13'),
(2172, 217, '2021-04-13'),
(2173, 351, '2021-04-13'),
(2174, 486, '2021-04-13'),
(2175, 354, '2021-04-13'),
(2176, 335, '2021-04-13'),
(2177, 335, '2021-04-13'),
(2178, 516, '2021-04-13'),
(2179, 497, '2021-04-13'),
(2180, 387, '2021-04-13'),
(2181, 340, '2021-04-13'),
(2182, 468, '2021-04-13'),
(2183, 467, '2021-04-13'),
(2184, 466, '2021-04-13'),
(2185, 436, '2021-04-13'),
(2186, 409, '2021-04-13'),
(2187, 413, '2021-04-13'),
(2188, 372, '2021-04-13'),
(2189, 398, '2021-04-13'),
(2190, 398, '2021-04-13'),
(2191, 398, '2021-04-13'),
(2192, 467, '2021-04-13'),
(2193, 418, '2021-04-13'),
(2194, 485, '2021-04-13'),
(2195, 371, '2021-04-13'),
(2196, 515, '2021-04-13'),
(2197, 390, '2021-04-13'),
(2198, 212, '2021-04-13'),
(2199, 515, '2021-04-13'),
(2200, 515, '2021-04-13'),
(2201, 515, '2021-04-13'),
(2202, 515, '2021-04-13'),
(2203, 515, '2021-04-13'),
(2204, 435, '2021-04-13'),
(2205, 481, '2021-04-13'),
(2206, 472, '2021-04-13'),
(2207, 340, '2021-04-13'),
(2208, 515, '2021-04-13'),
(2209, 384, '2021-04-14'),
(2210, 492, '2021-04-14'),
(2211, 336, '2021-04-14'),
(2212, 348, '2021-04-14'),
(2213, 378, '2021-04-14'),
(2214, 393, '2021-04-14'),
(2215, 381, '2021-04-14'),
(2216, 355, '2021-04-14'),
(2217, 502, '2021-04-14'),
(2218, 446, '2021-04-14'),
(2219, 445, '2021-04-14'),
(2220, 510, '2021-04-14'),
(2221, 475, '2021-04-14'),
(2222, 440, '2021-04-14'),
(2223, 434, '2021-04-14'),
(2224, 434, '2021-04-14'),
(2225, 385, '2021-04-14'),
(2226, 424, '2021-04-14'),
(2227, 480, '2021-04-14'),
(2228, 514, '2021-04-14'),
(2229, 511, '2021-04-14'),
(2230, 515, '2021-04-14'),
(2231, 223, '2021-04-14'),
(2232, 343, '2021-04-14'),
(2233, 514, '2021-04-14'),
(2234, 511, '2021-04-14'),
(2235, 458, '2021-04-14'),
(2236, 372, '2021-04-14'),
(2237, 220, '2021-04-14'),
(2238, 347, '2021-04-14'),
(2239, 494, '2021-04-14'),
(2240, 369, '2021-04-14'),
(2241, 496, '2021-04-14'),
(2242, 352, '2021-04-14'),
(2243, 357, '2021-04-14'),
(2244, 376, '2021-04-14'),
(2245, 392, '2021-04-14'),
(2246, 349, '2021-04-14'),
(2247, 377, '2021-04-14'),
(2248, 488, '2021-04-14'),
(2249, 488, '2021-04-14'),
(2250, 219, '2021-04-14'),
(2251, 428, '2021-04-14'),
(2252, 495, '2021-04-14'),
(2253, 436, '2021-04-15'),
(2254, 486, '2021-04-15'),
(2255, 344, '2021-04-15'),
(2256, 387, '2021-04-15'),
(2257, 218, '2021-04-15'),
(2258, 222, '2021-04-15'),
(2259, 350, '2021-04-15'),
(2260, 391, '2021-04-15'),
(2261, 356, '2021-04-15'),
(2262, 439, '2021-04-15'),
(2263, 377, '2021-04-15'),
(2264, 456, '2021-04-15'),
(2265, 370, '2021-04-15'),
(2266, 491, '2021-04-15'),
(2267, 443, '2021-04-15'),
(2268, 515, '2021-04-15'),
(2269, 491, '2021-04-15'),
(2270, 488, '2021-04-15'),
(2271, 217, '2021-04-15'),
(2272, 373, '2021-04-15'),
(2273, 220, '2021-04-15'),
(2274, 489, '2021-04-15'),
(2275, 493, '2021-04-15'),
(2276, 341, '2021-04-15'),
(2277, 490, '2021-04-15'),
(2278, 494, '2021-04-15'),
(2279, 494, '2021-04-15'),
(2280, 383, '2021-04-15'),
(2281, 492, '2021-04-15'),
(2282, 492, '2021-04-15'),
(2283, 490, '2021-04-15'),
(2284, 385, '2021-04-15'),
(2285, 490, '2021-04-15'),
(2286, 490, '2021-04-15'),
(2287, 386, '2021-04-15'),
(2288, 426, '2021-04-15'),
(2289, 500, '2021-04-15'),
(2290, 492, '2021-04-15'),
(2291, 487, '2021-04-15'),
(2292, 495, '2021-04-15'),
(2293, 495, '2021-04-15'),
(2294, 489, '2021-04-15'),
(2295, 489, '2021-04-15'),
(2296, 389, '2021-04-15'),
(2297, 388, '2021-04-15'),
(2298, 491, '2021-04-15'),
(2299, 212, '2021-04-15'),
(2300, 384, '2021-04-15'),
(2301, 434, '2021-04-15'),
(2302, 488, '2021-04-16'),
(2303, 427, '2021-04-16'),
(2304, 386, '2021-04-16'),
(2305, 390, '2021-04-16'),
(2306, 498, '2021-04-16'),
(2307, 431, '2021-04-16'),
(2308, 431, '2021-04-16'),
(2309, 516, '2021-04-16'),
(2310, 491, '2021-04-16'),
(2311, 430, '2021-04-16'),
(2312, 380, '2021-04-16'),
(2313, 391, '2021-04-16'),
(2314, 515, '2021-04-16'),
(2315, 435, '2021-04-16'),
(2316, 428, '2021-04-16'),
(2317, 495, '2021-04-16'),
(2318, 379, '2021-04-16'),
(2319, 427, '2021-04-16'),
(2320, 426, '2021-04-16'),
(2321, 430, '2021-04-16'),
(2322, 429, '2021-04-16'),
(2323, 496, '2021-04-16'),
(2324, 374, '2021-04-16'),
(2325, 389, '2021-04-16'),
(2326, 516, '2021-04-16'),
(2327, 515, '2021-04-16'),
(2328, 513, '2021-04-16'),
(2329, 506, '2021-04-16'),
(2330, 499, '2021-04-16'),
(2331, 498, '2021-04-16'),
(2332, 480, '2021-04-16'),
(2333, 479, '2021-04-16'),
(2334, 460, '2021-04-16'),
(2335, 459, '2021-04-16'),
(2336, 458, '2021-04-16'),
(2337, 457, '2021-04-16'),
(2338, 510, '2021-04-16'),
(2339, 509, '2021-04-16'),
(2340, 508, '2021-04-16'),
(2341, 507, '2021-04-16'),
(2342, 505, '2021-04-16'),
(2343, 478, '2021-04-16'),
(2344, 477, '2021-04-16'),
(2345, 476, '2021-04-16'),
(2346, 475, '2021-04-16'),
(2347, 474, '2021-04-16'),
(2348, 473, '2021-04-16'),
(2349, 472, '2021-04-16'),
(2350, 441, '2021-04-16'),
(2351, 440, '2021-04-16'),
(2352, 439, '2021-04-16'),
(2353, 438, '2021-04-16'),
(2354, 434, '2021-04-16'),
(2355, 433, '2021-04-16'),
(2356, 432, '2021-04-16'),
(2357, 385, '2021-04-16'),
(2358, 382, '2021-04-16'),
(2359, 377, '2021-04-16'),
(2360, 367, '2021-04-16'),
(2361, 366, '2021-04-16'),
(2362, 502, '2021-04-16'),
(2363, 501, '2021-04-16'),
(2364, 500, '2021-04-16'),
(2365, 447, '2021-04-16'),
(2366, 446, '2021-04-16'),
(2367, 445, '2021-04-16'),
(2368, 444, '2021-04-16'),
(2369, 443, '2021-04-16'),
(2370, 442, '2021-04-16'),
(2371, 392, '2021-04-16'),
(2372, 376, '2021-04-16'),
(2373, 373, '2021-04-16'),
(2374, 504, '2021-04-16'),
(2375, 503, '2021-04-16'),
(2376, 374, '2021-04-16'),
(2377, 340, '2021-04-16'),
(2378, 431, '2021-04-16'),
(2379, 430, '2021-04-16'),
(2380, 429, '2021-04-16'),
(2381, 428, '2021-04-16'),
(2382, 427, '2021-04-16'),
(2383, 426, '2021-04-16'),
(2384, 496, '2021-04-16'),
(2385, 495, '2021-04-16'),
(2386, 494, '2021-04-16'),
(2387, 493, '2021-04-16'),
(2388, 492, '2021-04-16'),
(2389, 491, '2021-04-16'),
(2390, 490, '2021-04-16'),
(2391, 489, '2021-04-16'),
(2392, 488, '2021-04-16'),
(2393, 487, '2021-04-16'),
(2394, 486, '2021-04-16'),
(2395, 485, '2021-04-16'),
(2396, 514, '2021-04-16'),
(2397, 511, '2021-04-16'),
(2398, 327, '2021-04-16'),
(2399, 328, '2021-04-16'),
(2400, 330, '2021-04-16'),
(2401, 331, '2021-04-16'),
(2402, 334, '2021-04-16'),
(2403, 339, '2021-04-16'),
(2404, 341, '2021-04-16'),
(2405, 456, '2021-04-16'),
(2406, 455, '2021-04-16'),
(2407, 454, '2021-04-16'),
(2408, 437, '2021-04-16'),
(2409, 436, '2021-04-16'),
(2410, 435, '2021-04-16'),
(2411, 425, '2021-04-16'),
(2412, 424, '2021-04-16'),
(2413, 423, '2021-04-16'),
(2414, 416, '2021-04-16'),
(2415, 415, '2021-04-16'),
(2416, 406, '2021-04-16'),
(2417, 405, '2021-04-16'),
(2418, 401, '2021-04-16'),
(2419, 399, '2021-04-16'),
(2420, 398, '2021-04-16'),
(2421, 397, '2021-04-16'),
(2422, 396, '2021-04-16'),
(2423, 395, '2021-04-16'),
(2424, 394, '2021-04-16'),
(2425, 388, '2021-04-16'),
(2426, 380, '2021-04-16'),
(2427, 378, '2021-04-16'),
(2428, 375, '2021-04-16'),
(2429, 372, '2021-04-16'),
(2430, 371, '2021-04-16'),
(2431, 370, '2021-04-16'),
(2432, 359, '2021-04-16'),
(2433, 358, '2021-04-16'),
(2434, 357, '2021-04-16'),
(2435, 356, '2021-04-16'),
(2436, 353, '2021-04-16'),
(2437, 352, '2021-04-16'),
(2438, 351, '2021-04-16'),
(2439, 471, '2021-04-16'),
(2440, 470, '2021-04-16'),
(2441, 469, '2021-04-16'),
(2442, 468, '2021-04-16'),
(2443, 467, '2021-04-16'),
(2444, 466, '2021-04-16'),
(2445, 465, '2021-04-16'),
(2446, 464, '2021-04-16'),
(2447, 463, '2021-04-16'),
(2448, 462, '2021-04-16'),
(2449, 461, '2021-04-16'),
(2450, 453, '2021-04-16'),
(2451, 452, '2021-04-16'),
(2452, 451, '2021-04-16'),
(2453, 450, '2021-04-16'),
(2454, 448, '2021-04-16'),
(2455, 418, '2021-04-16'),
(2456, 417, '2021-04-16'),
(2457, 414, '2021-04-16'),
(2458, 413, '2021-04-16'),
(2459, 412, '2021-04-16'),
(2460, 410, '2021-04-16'),
(2461, 409, '2021-04-16'),
(2462, 408, '2021-04-16'),
(2463, 407, '2021-04-16'),
(2464, 404, '2021-04-16'),
(2465, 403, '2021-04-16'),
(2466, 402, '2021-04-16'),
(2467, 400, '2021-04-16'),
(2468, 391, '2021-04-16'),
(2469, 384, '2021-04-16'),
(2470, 383, '2021-04-16'),
(2471, 379, '2021-04-16'),
(2472, 369, '2021-04-16'),
(2473, 368, '2021-04-16'),
(2474, 355, '2021-04-16'),
(2475, 354, '2021-04-16'),
(2476, 349, '2021-04-16'),
(2477, 348, '2021-04-16'),
(2478, 347, '2021-04-16'),
(2479, 342, '2021-04-16'),
(2480, 365, '2021-04-16'),
(2481, 364, '2021-04-16'),
(2482, 345, '2021-04-16'),
(2483, 361, '2021-04-16'),
(2484, 350, '2021-04-16'),
(2485, 344, '2021-04-16'),
(2486, 343, '2021-04-16'),
(2487, 209, '2021-04-16'),
(2488, 210, '2021-04-16'),
(2489, 211, '2021-04-16'),
(2490, 212, '2021-04-16'),
(2491, 213, '2021-04-16'),
(2492, 214, '2021-04-16'),
(2493, 215, '2021-04-16'),
(2494, 216, '2021-04-16'),
(2495, 484, '2021-04-16'),
(2496, 483, '2021-04-16'),
(2497, 482, '2021-04-16'),
(2498, 481, '2021-04-16'),
(2499, 422, '2021-04-16'),
(2500, 421, '2021-04-16'),
(2501, 420, '2021-04-16'),
(2502, 419, '2021-04-16'),
(2503, 337, '2021-04-16'),
(2504, 336, '2021-04-16'),
(2505, 335, '2021-04-16'),
(2506, 223, '2021-04-16'),
(2507, 222, '2021-04-16'),
(2508, 221, '2021-04-16'),
(2509, 220, '2021-04-16'),
(2510, 219, '2021-04-16'),
(2511, 218, '2021-04-16'),
(2512, 217, '2021-04-16'),
(2513, 497, '2021-04-16'),
(2514, 449, '2021-04-16'),
(2515, 411, '2021-04-16'),
(2516, 393, '2021-04-16'),
(2517, 390, '2021-04-16'),
(2518, 389, '2021-04-16'),
(2519, 387, '2021-04-16'),
(2520, 386, '2021-04-16'),
(2521, 381, '2021-04-16'),
(2522, 363, '2021-04-16'),
(2523, 362, '2021-04-16'),
(2524, 360, '2021-04-16'),
(2525, 346, '2021-04-16'),
(2526, 487, '2021-04-16'),
(2527, 440, '2021-04-16'),
(2528, 489, '2021-04-16'),
(2529, 337, '2021-04-16'),
(2530, 341, '2021-04-16'),
(2531, 501, '2021-04-16'),
(2532, 392, '2021-04-16'),
(2533, 433, '2021-04-16'),
(2534, 438, '2021-04-17'),
(2535, 493, '2021-04-17'),
(2536, 437, '2021-04-17'),
(2537, 494, '2021-04-17'),
(2538, 377, '2021-04-17'),
(2539, 516, '2021-04-17'),
(2540, 485, '2021-04-17'),
(2541, 515, '2021-04-17'),
(2542, 511, '2021-04-17'),
(2543, 442, '2021-04-17'),
(2544, 382, '2021-04-17'),
(2545, 376, '2021-04-17'),
(2546, 454, '2021-04-17'),
(2547, 414, '2021-04-17'),
(2548, 458, '2021-04-17'),
(2549, 449, '2021-04-17'),
(2550, 349, '2021-04-17'),
(2551, 497, '2021-04-17'),
(2552, 432, '2021-04-17'),
(2553, 481, '2021-04-17'),
(2554, 441, '2021-04-17'),
(2555, 376, '2021-04-17'),
(2556, 431, '2021-04-17'),
(2557, 427, '2021-04-17'),
(2558, 391, '2021-04-17'),
(2559, 426, '2021-04-17'),
(2560, 370, '2021-04-17'),
(2561, 350, '2021-04-17'),
(2562, 364, '2021-04-17'),
(2563, 356, '2021-04-17'),
(2564, 342, '2021-04-17'),
(2565, 392, '2021-04-17'),
(2566, 345, '2021-04-17'),
(2567, 370, '2021-04-17'),
(2568, 377, '2021-04-17'),
(2569, 356, '2021-04-17'),
(2570, 357, '2021-04-17'),
(2571, 429, '2021-04-17'),
(2572, 358, '2021-04-17'),
(2573, 366, '2021-04-18'),
(2574, 373, '2021-04-18'),
(2575, 365, '2021-04-18'),
(2576, 416, '2021-04-18'),
(2577, 429, '2021-04-18'),
(2578, 370, '2021-04-18'),
(2579, 377, '2021-04-18'),
(2580, 380, '2021-04-18'),
(2581, 424, '2021-04-18'),
(2582, 349, '2021-04-18'),
(2583, 367, '2021-04-18'),
(2584, 385, '2021-04-18'),
(2585, 429, '2021-04-18'),
(2586, 382, '2021-04-18'),
(2587, 376, '2021-04-18'),
(2588, 395, '2021-04-18'),
(2589, 382, '2021-04-18'),
(2590, 364, '2021-04-18'),
(2591, 395, '2021-04-18'),
(2592, 375, '2021-04-18'),
(2593, 373, '2021-04-18'),
(2594, 373, '2021-04-18'),
(2595, 223, '2021-04-18'),
(2596, 215, '2021-04-18'),
(2597, 350, '2021-04-18'),
(2598, 421, '2021-04-18'),
(2599, 219, '2021-04-18'),
(2600, 385, '2021-04-18'),
(2601, 359, '2021-04-18'),
(2602, 489, '2021-04-18'),
(2603, 365, '2021-04-18'),
(2604, 380, '2021-04-18'),
(2605, 428, '2021-04-18'),
(2606, 376, '2021-04-18'),
(2607, 425, '2021-04-18'),
(2608, 366, '2021-04-18'),
(2609, 430, '2021-04-18'),
(2610, 385, '2021-04-18'),
(2611, 398, '2021-04-18'),
(2612, 490, '2021-04-18'),
(2613, 383, '2021-04-18'),
(2614, 416, '2021-04-18'),
(2615, 386, '2021-04-18'),
(2616, 415, '2021-04-18'),
(2617, 356, '2021-04-18'),
(2618, 401, '2021-04-18'),
(2619, 410, '2021-04-18'),
(2620, 351, '2021-04-18'),
(2621, 425, '2021-04-18'),
(2622, 405, '2021-04-18'),
(2623, 330, '2021-04-18'),
(2624, 378, '2021-04-18'),
(2625, 401, '2021-04-18'),
(2626, 357, '2021-04-18'),
(2627, 350, '2021-04-18'),
(2628, 342, '2021-04-18'),
(2629, 222, '2021-04-18'),
(2630, 401, '2021-04-18'),
(2631, 410, '2021-04-18'),
(2632, 487, '2021-04-18'),
(2633, 429, '2021-04-18'),
(2634, 406, '2021-04-18'),
(2635, 424, '2021-04-18'),
(2636, 423, '2021-04-18'),
(2637, 388, '2021-04-18'),
(2638, 330, '2021-04-18'),
(2639, 501, '2021-04-18'),
(2640, 374, '2021-04-18'),
(2641, 337, '2021-04-18'),
(2642, 389, '2021-04-18'),
(2643, 426, '2021-04-18'),
(2644, 335, '2021-04-18'),
(2645, 491, '2021-04-18'),
(2646, 421, '2021-04-18'),
(2647, 422, '2021-04-18'),
(2648, 425, '2021-04-18'),
(2649, 514, '2021-04-18'),
(2650, 328, '2021-04-18'),
(2651, 510, '2021-04-18'),
(2652, 507, '2021-04-18'),
(2653, 509, '2021-04-18'),
(2654, 508, '2021-04-18'),
(2655, 513, '2021-04-18'),
(2656, 511, '2021-04-18'),
(2657, 490, '2021-04-18'),
(2658, 366, '2021-04-18'),
(2659, 495, '2021-04-18'),
(2660, 491, '2021-04-18'),
(2661, 488, '2021-04-18'),
(2662, 492, '2021-04-18'),
(2663, 489, '2021-04-18'),
(2664, 496, '2021-04-18'),
(2665, 494, '2021-04-18'),
(2666, 513, '2021-04-18'),
(2667, 493, '2021-04-18'),
(2668, 490, '2021-04-18'),
(2669, 495, '2021-04-18'),
(2670, 491, '2021-04-18'),
(2671, 488, '2021-04-18'),
(2672, 492, '2021-04-18'),
(2673, 514, '2021-04-18'),
(2674, 361, '2021-04-18'),
(2675, 404, '2021-04-18'),
(2676, 344, '2021-04-18'),
(2677, 400, '2021-04-18'),
(2678, 403, '2021-04-18'),
(2679, 348, '2021-04-18'),
(2680, 369, '2021-04-18'),
(2681, 350, '2021-04-18'),
(2682, 354, '2021-04-18'),
(2683, 489, '2021-04-18'),
(2684, 372, '2021-04-18'),
(2685, 379, '2021-04-18'),
(2686, 386, '2021-04-18'),
(2687, 496, '2021-04-18'),
(2688, 407, '2021-04-18'),
(2689, 392, '2021-04-18'),
(2690, 408, '2021-04-18'),
(2691, 343, '2021-04-18'),
(2692, 353, '2021-04-18'),
(2693, 386, '2021-04-18'),
(2694, 409, '2021-04-18'),
(2695, 336, '2021-04-18'),
(2696, 352, '2021-04-18'),
(2697, 384, '2021-04-18'),
(2698, 372, '2021-04-18'),
(2699, 359, '2021-04-18'),
(2700, 383, '2021-04-18'),
(2701, 364, '2021-04-18'),
(2702, 390, '2021-04-18'),
(2703, 411, '2021-04-18'),
(2704, 397, '2021-04-18'),
(2705, 346, '2021-04-18'),
(2706, 483, '2021-04-18'),
(2707, 389, '2021-04-18'),
(2708, 390, '2021-04-18'),
(2709, 391, '2021-04-18'),
(2710, 387, '2021-04-18'),
(2711, 416, '2021-04-18'),
(2712, 361, '2021-04-18'),
(2713, 394, '2021-04-18'),
(2714, 413, '2021-04-18'),
(2715, 412, '2021-04-18'),
(2716, 414, '2021-04-18'),
(2717, 410, '2021-04-18'),
(2718, 362, '2021-04-18'),
(2719, 378, '2021-04-18'),
(2720, 381, '2021-04-18'),
(2721, 516, '2021-04-18'),
(2722, 366, '2021-04-18'),
(2723, 471, '2021-04-18'),
(2724, 380, '2021-04-18'),
(2725, 351, '2021-04-18'),
(2726, 371, '2021-04-18'),
(2727, 424, '2021-04-18'),
(2728, 388, '2021-04-18'),
(2729, 380, '2021-04-18'),
(2730, 423, '2021-04-18'),
(2731, 363, '2021-04-18'),
(2732, 393, '2021-04-18'),
(2733, 417, '2021-04-18'),
(2734, 360, '2021-04-18'),
(2735, 494, '2021-04-18'),
(2736, 493, '2021-04-18'),
(2737, 379, '2021-04-18'),
(2738, 344, '2021-04-18'),
(2739, 345, '2021-04-18'),
(2740, 367, '2021-04-18'),
(2741, 422, '2021-04-18'),
(2742, 386, '2021-04-18'),
(2743, 515, '2021-04-18'),
(2744, 375, '2021-04-18'),
(2745, 389, '2021-04-18'),
(2746, 369, '2021-04-18'),
(2747, 345, '2021-04-18'),
(2748, 415, '2021-04-18'),
(2749, 390, '2021-04-18'),
(2750, 348, '2021-04-19'),
(2751, 343, '2021-04-19'),
(2752, 385, '2021-04-19'),
(2753, 420, '2021-04-19'),
(2754, 406, '2021-04-19'),
(2755, 382, '2021-04-19'),
(2756, 396, '2021-04-19'),
(2757, 349, '2021-04-19'),
(2758, 372, '2021-04-19'),
(2759, 479, '2021-04-19'),
(2760, 371, '2021-04-19'),
(2761, 363, '2021-04-19'),
(2762, 368, '2021-04-19'),
(2763, 387, '2021-04-19'),
(2764, 384, '2021-04-19'),
(2765, 379, '2021-04-19'),
(2766, 399, '2021-04-19'),
(2767, 397, '2021-04-19'),
(2768, 360, '2021-04-19'),
(2769, 347, '2021-04-19'),
(2770, 496, '2021-04-19'),
(2771, 209, '2021-04-19'),
(2772, 374, '2021-04-19'),
(2773, 337, '2021-04-19'),
(2774, 468, '2021-04-19'),
(2775, 334, '2021-04-19'),
(2776, 489, '2021-04-19'),
(2777, 440, '2021-04-19'),
(2778, 501, '2021-04-19'),
(2779, 394, '2021-04-19'),
(2780, 477, '2021-04-19'),
(2781, 347, '2021-04-19'),
(2782, 514, '2021-04-19'),
(2783, 507, '2021-04-19'),
(2784, 475, '2021-04-19'),
(2785, 474, '2021-04-19'),
(2786, 472, '2021-04-19'),
(2787, 470, '2021-04-19'),
(2788, 470, '2021-04-19'),
(2789, 471, '2021-04-19'),
(2790, 469, '2021-04-19'),
(2791, 465, '2021-04-19'),
(2792, 464, '2021-04-19'),
(2793, 462, '2021-04-19'),
(2794, 461, '2021-04-19'),
(2795, 453, '2021-04-19'),
(2796, 450, '2021-04-19'),
(2797, 408, '2021-04-19'),
(2798, 407, '2021-04-19'),
(2799, 328, '2021-04-19'),
(2800, 410, '2021-04-19'),
(2801, 469, '2021-04-19'),
(2802, 469, '2021-04-19'),
(2803, 344, '2021-04-19'),
(2804, 462, '2021-04-19'),
(2805, 461, '2021-04-19'),
(2806, 462, '2021-04-19'),
(2807, 465, '2021-04-19'),
(2808, 464, '2021-04-19'),
(2809, 465, '2021-04-19'),
(2810, 462, '2021-04-19'),
(2811, 507, '2021-04-19'),
(2812, 392, '2021-04-19'),
(2813, 433, '2021-04-19'),
(2814, 414, '2021-04-19'),
(2815, 346, '2021-04-19'),
(2816, 353, '2021-04-19'),
(2817, 509, '2021-04-19'),
(2818, 481, '2021-04-19'),
(2819, 405, '2021-04-19'),
(2820, 482, '2021-04-19'),
(2821, 352, '2021-04-19'),
(2822, 417, '2021-04-19'),
(2823, 438, '2021-04-19'),
(2824, 493, '2021-04-19'),
(2825, 413, '2021-04-19'),
(2826, 437, '2021-04-19'),
(2827, 494, '2021-04-19'),
(2828, 377, '2021-04-19'),
(2829, 412, '2021-04-19'),
(2830, 508, '2021-04-19'),
(2831, 484, '2021-04-19'),
(2832, 352, '2021-04-19'),
(2833, 410, '2021-04-19'),
(2834, 398, '2021-04-19'),
(2835, 411, '2021-04-19'),
(2836, 362, '2021-04-19'),
(2837, 420, '2021-04-19'),
(2838, 391, '2021-04-19'),
(2839, 421, '2021-04-19'),
(2840, 442, '2021-04-19'),
(2841, 500, '2021-04-19'),
(2842, 393, '2021-04-19'),
(2843, 374, '2021-04-19'),
(2844, 517, '2021-04-19'),
(2845, 517, '2021-04-19'),
(2846, 355, '2021-04-19'),
(2847, 470, '2021-04-19'),
(2848, 407, '2021-04-19'),
(2849, 337, '2021-04-19'),
(2850, 381, '2021-04-20'),
(2851, 478, '2021-04-20'),
(2852, 422, '2021-04-20'),
(2853, 335, '2021-04-20'),
(2854, 336, '2021-04-20'),
(2855, 414, '2021-04-20'),
(2856, 473, '2021-04-20'),
(2857, 419, '2021-04-20'),
(2858, 355, '2021-04-20'),
(2859, 401, '2021-04-20'),
(2860, 344, '2021-04-20'),
(2861, 365, '2021-04-20'),
(2862, 354, '2021-04-20'),
(2863, 432, '2021-04-20'),
(2864, 481, '2021-04-20'),
(2865, 476, '2021-04-20'),
(2866, 484, '2021-04-20'),
(2867, 516, '2021-04-20'),
(2868, 515, '2021-04-20'),
(2869, 480, '2021-04-20'),
(2870, 510, '2021-04-20'),
(2871, 474, '2021-04-20'),
(2872, 420, '2021-04-20'),
(2873, 399, '2021-04-20'),
(2874, 502, '2021-04-20'),
(2875, 367, '2021-04-20'),
(2876, 383, '2021-04-20'),
(2877, 508, '2021-04-20'),
(2878, 331, '2021-04-20'),
(2879, 414, '2021-04-20'),
(2880, 412, '2021-04-20'),
(2881, 483, '2021-04-20'),
(2882, 428, '2021-04-20'),
(2883, 216, '2021-04-20'),
(2884, 506, '2021-04-20'),
(2885, 507, '2021-04-20'),
(2886, 514, '2021-04-20'),
(2887, 421, '2021-04-20'),
(2888, 417, '2021-04-21'),
(2889, 222, '2021-04-21'),
(2890, 501, '2021-04-21'),
(2891, 330, '2021-04-21'),
(2892, 501, '2021-04-21'),
(2893, 399, '2021-04-21'),
(2894, 383, '2021-04-21'),
(2895, 216, '2021-04-21'),
(2896, 482, '2021-04-21'),
(2897, 366, '2021-04-21'),
(2898, 427, '2021-04-21'),
(2899, 498, '2021-04-21'),
(2900, 212, '2021-04-21'),
(2901, 483, '2021-04-21'),
(2902, 483, '2021-04-21'),
(2903, 477, '2021-04-21'),
(2904, 472, '2021-04-21'),
(2905, 511, '2021-04-21'),
(2906, 471, '2021-04-21'),
(2907, 339, '2021-04-21'),
(2908, 475, '2021-04-21'),
(2909, 516, '2021-04-21'),
(2910, 516, '2021-04-21'),
(2911, 516, '2021-04-21'),
(2912, 515, '2021-04-21'),
(2913, 514, '2021-04-21'),
(2914, 514, '2021-04-21'),
(2915, 479, '2021-04-21'),
(2916, 215, '2021-04-21'),
(2917, 217, '2021-04-21'),
(2918, 340, '2021-04-22'),
(2919, 430, '2021-04-22'),
(2920, 218, '2021-04-22'),
(2921, 213, '2021-04-22'),
(2922, 367, '2021-04-22'),
(2923, 363, '2021-04-22'),
(2924, 362, '2021-04-22'),
(2925, 431, '2021-04-22'),
(2926, 426, '2021-04-22'),
(2927, 431, '2021-04-22'),
(2928, 211, '2021-04-22'),
(2929, 382, '2021-04-22'),
(2930, 429, '2021-04-22'),
(2931, 378, '2021-04-22'),
(2932, 442, '2021-04-22'),
(2933, 510, '2021-04-22'),
(2934, 428, '2021-04-22'),
(2935, 427, '2021-04-22'),
(2936, 426, '2021-04-22'),
(2937, 430, '2021-04-22'),
(2938, 336, '2021-04-22'),
(2939, 429, '2021-04-22'),
(2940, 508, '2021-04-22'),
(2941, 502, '2021-04-22'),
(2942, 504, '2021-04-22'),
(2943, 499, '2021-04-22'),
(2944, 462, '2021-04-22'),
(2945, 514, '2021-04-22'),
(2946, 469, '2021-04-23'),
(2947, 453, '2021-04-23'),
(2948, 424, '2021-04-23'),
(2949, 367, '2021-04-23'),
(2950, 418, '2021-04-23'),
(2951, 502, '2021-04-23'),
(2952, 508, '2021-04-23'),
(2953, 447, '2021-04-23'),
(2954, 214, '2021-04-23'),
(2955, 471, '2021-04-23'),
(2956, 341, '2021-04-23'),
(2957, 408, '2021-04-23'),
(2958, 497, '2021-04-23'),
(2959, 514, '2021-04-23'),
(2960, 413, '2021-04-23'),
(2961, 215, '2021-04-23'),
(2962, 454, '2021-04-23'),
(2963, 492, '2021-04-23'),
(2964, 469, '2021-04-23'),
(2965, 503, '2021-04-23'),
(2966, 474, '2021-04-23'),
(2967, 356, '2021-04-23'),
(2968, 516, '2021-04-23'),
(2969, 515, '2021-04-23'),
(2970, 440, '2021-04-23'),
(2971, 441, '2021-04-23'),
(2972, 373, '2021-04-23'),
(2973, 505, '2021-04-23'),
(2974, 506, '2021-04-23'),
(2975, 383, '2021-04-23'),
(2976, 504, '2021-04-23'),
(2977, 472, '2021-04-23'),
(2978, 511, '2021-04-23'),
(2979, 216, '2021-04-23'),
(2980, 511, '2021-04-23'),
(2981, 212, '2021-04-23'),
(2982, 503, '2021-04-23'),
(2983, 330, '2021-04-24'),
(2984, 404, '2021-04-24'),
(2985, 511, '2021-04-24'),
(2986, 508, '2021-04-24'),
(2987, 412, '2021-04-24'),
(2988, 503, '2021-04-24'),
(2989, 508, '2021-04-24'),
(2990, 509, '2021-04-24'),
(2991, 431, '2021-04-24'),
(2992, 381, '2021-04-24'),
(2993, 509, '2021-04-24'),
(2994, 503, '2021-04-24'),
(2995, 513, '2021-04-24'),
(2996, 513, '2021-04-24'),
(2997, 460, '2021-04-24'),
(2998, 438, '2021-04-24'),
(2999, 516, '2021-04-24'),
(3000, 516, '2021-04-24'),
(3001, 415, '2021-04-24'),
(3002, 334, '2021-04-24'),
(3003, 427, '2021-04-24'),
(3004, 506, '2021-04-24'),
(3005, 454, '2021-04-24'),
(3006, 426, '2021-04-24'),
(3007, 222, '2021-04-24'),
(3008, 514, '2021-04-24'),
(3009, 510, '2021-04-24'),
(3010, 514, '2021-04-24'),
(3011, 507, '2021-04-24'),
(3012, 509, '2021-04-24'),
(3013, 513, '2021-04-24'),
(3014, 357, '2021-04-24'),
(3015, 507, '2021-04-24'),
(3016, 489, '2021-04-24'),
(3017, 496, '2021-04-24'),
(3018, 433, '2021-04-24'),
(3019, 366, '2021-04-24'),
(3020, 508, '2021-04-24'),
(3021, 511, '2021-04-24'),
(3022, 379, '2021-04-24'),
(3023, 340, '2021-04-24'),
(3024, 490, '2021-04-24'),
(3025, 510, '2021-04-24'),
(3026, 495, '2021-04-24'),
(3027, 422, '2021-04-24'),
(3028, 491, '2021-04-24'),
(3029, 515, '2021-04-24'),
(3030, 510, '2021-04-24'),
(3031, 488, '2021-04-24'),
(3032, 515, '2021-04-24'),
(3033, 429, '2021-04-24'),
(3034, 492, '2021-04-24'),
(3035, 213, '2021-04-24'),
(3036, 210, '2021-04-24'),
(3037, 515, '2021-04-24'),
(3038, 505, '2021-04-24'),
(3039, 494, '2021-04-24'),
(3040, 490, '2021-04-24'),
(3041, 493, '2021-04-24'),
(3042, 495, '2021-04-24'),
(3043, 507, '2021-04-24'),
(3044, 491, '2021-04-24'),
(3045, 488, '2021-04-24'),
(3046, 492, '2021-04-24'),
(3047, 489, '2021-04-24'),
(3048, 496, '2021-04-24'),
(3049, 513, '2021-04-24'),
(3050, 494, '2021-04-24'),
(3051, 493, '2021-04-24'),
(3052, 514, '2021-04-24'),
(3053, 443, '2021-04-24'),
(3054, 214, '2021-04-24');
INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(3055, 509, '2021-04-24'),
(3056, 334, '2021-04-24'),
(3057, 219, '2021-04-24'),
(3058, 447, '2021-04-25'),
(3059, 502, '2021-04-25'),
(3060, 401, '2021-04-25'),
(3061, 330, '2021-04-25'),
(3062, 438, '2021-04-25'),
(3063, 514, '2021-04-25'),
(3064, 331, '2021-04-25'),
(3065, 445, '2021-04-25'),
(3066, 440, '2021-04-25'),
(3067, 432, '2021-04-25'),
(3068, 433, '2021-04-25'),
(3069, 426, '2021-04-25'),
(3070, 447, '2021-04-25'),
(3071, 434, '2021-04-25'),
(3072, 444, '2021-04-25'),
(3073, 441, '2021-04-25'),
(3074, 510, '2021-04-25'),
(3075, 439, '2021-04-25'),
(3076, 467, '2021-04-25'),
(3077, 479, '2021-04-25'),
(3078, 499, '2021-04-25'),
(3079, 211, '2021-04-25'),
(3080, 458, '2021-04-25'),
(3081, 468, '2021-04-25'),
(3082, 460, '2021-04-25'),
(3083, 510, '2021-04-25'),
(3084, 498, '2021-04-25'),
(3085, 429, '2021-04-25'),
(3086, 480, '2021-04-25'),
(3087, 457, '2021-04-25'),
(3088, 486, '2021-04-25'),
(3089, 364, '2021-04-25'),
(3090, 330, '2021-04-25'),
(3091, 378, '2021-04-25'),
(3092, 382, '2021-04-25'),
(3093, 339, '2021-04-25'),
(3094, 442, '2021-04-25'),
(3095, 328, '2021-04-25'),
(3096, 327, '2021-04-25'),
(3097, 514, '2021-04-25'),
(3098, 334, '2021-04-25'),
(3099, 331, '2021-04-25'),
(3100, 459, '2021-04-25'),
(3101, 215, '2021-04-25'),
(3102, 513, '2021-04-25'),
(3103, 213, '2021-04-25'),
(3104, 212, '2021-04-25'),
(3105, 514, '2021-04-25'),
(3106, 214, '2021-04-25'),
(3107, 330, '2021-04-25'),
(3108, 449, '2021-04-25'),
(3109, 428, '2021-04-25'),
(3110, 430, '2021-04-25'),
(3111, 419, '2021-04-25'),
(3112, 473, '2021-04-25'),
(3113, 446, '2021-04-25'),
(3114, 421, '2021-04-25'),
(3115, 506, '2021-04-25'),
(3116, 485, '2021-04-25'),
(3117, 456, '2021-04-25'),
(3118, 487, '2021-04-25'),
(3119, 447, '2021-04-25'),
(3120, 209, '2021-04-25'),
(3121, 211, '2021-04-25'),
(3122, 210, '2021-04-25'),
(3123, 216, '2021-04-25'),
(3124, 455, '2021-04-25'),
(3125, 469, '2021-04-25'),
(3126, 456, '2021-04-25'),
(3127, 507, '2021-04-25'),
(3128, 424, '2021-04-25'),
(3129, 509, '2021-04-25'),
(3130, 218, '2021-04-25'),
(3131, 451, '2021-04-25'),
(3132, 516, '2021-04-25'),
(3133, 327, '2021-04-25'),
(3134, 509, '2021-04-25'),
(3135, 478, '2021-04-25'),
(3136, 418, '2021-04-25'),
(3137, 366, '2021-04-25'),
(3138, 447, '2021-04-25'),
(3139, 392, '2021-04-25'),
(3140, 455, '2021-04-25'),
(3141, 508, '2021-04-25'),
(3142, 425, '2021-04-25'),
(3143, 342, '2021-04-25'),
(3144, 408, '2021-04-25'),
(3145, 416, '2021-04-25'),
(3146, 497, '2021-04-25'),
(3147, 411, '2021-04-26'),
(3148, 346, '2021-04-26'),
(3149, 452, '2021-04-26'),
(3150, 406, '2021-04-26'),
(3151, 454, '2021-04-26'),
(3152, 469, '2021-04-26'),
(3153, 451, '2021-04-26'),
(3154, 413, '2021-04-26'),
(3155, 356, '2021-04-26'),
(3156, 215, '2021-04-26'),
(3157, 516, '2021-04-26'),
(3158, 373, '2021-04-26'),
(3159, 450, '2021-04-26'),
(3160, 448, '2021-04-26'),
(3161, 493, '2021-04-26'),
(3162, 495, '2021-04-26'),
(3163, 515, '2021-04-26'),
(3164, 331, '2021-04-26'),
(3165, 420, '2021-04-26'),
(3166, 453, '2021-04-26'),
(3167, 343, '2021-04-26'),
(3168, 455, '2021-04-26'),
(3169, 328, '2021-04-26'),
(3170, 327, '2021-04-26'),
(3171, 339, '2021-04-26'),
(3172, 219, '2021-04-26'),
(3173, 371, '2021-04-26'),
(3174, 211, '2021-04-26'),
(3175, 213, '2021-04-26'),
(3176, 209, '2021-04-26'),
(3177, 404, '2021-04-26'),
(3178, 212, '2021-04-26'),
(3179, 210, '2021-04-26'),
(3180, 510, '2021-04-26'),
(3181, 374, '2021-04-26'),
(3182, 216, '2021-04-26'),
(3183, 509, '2021-04-26'),
(3184, 412, '2021-04-26'),
(3185, 327, '2021-04-26'),
(3186, 511, '2021-04-26'),
(3187, 381, '2021-04-26'),
(3188, 343, '2021-04-26'),
(3189, 470, '2021-04-26'),
(3190, 222, '2021-04-26'),
(3191, 460, '2021-04-26'),
(3192, 517, '2021-04-26'),
(3193, 517, '2021-04-26'),
(3194, 502, '2021-04-26'),
(3195, 212, '2021-04-26'),
(3196, 415, '2021-04-26'),
(3197, 334, '2021-04-26'),
(3198, 376, '2021-04-26'),
(3199, 514, '2021-04-26'),
(3200, 516, '2021-04-26'),
(3201, 454, '2021-04-26'),
(3202, 506, '2021-04-27'),
(3203, 410, '2021-04-27'),
(3204, 360, '2021-04-27'),
(3205, 475, '2021-04-27'),
(3206, 513, '2021-04-27'),
(3207, 351, '2021-04-27'),
(3208, 513, '2021-04-27'),
(3209, 511, '2021-04-27'),
(3210, 379, '2021-04-27'),
(3211, 511, '2021-04-27'),
(3212, 511, '2021-04-27'),
(3213, 508, '2021-04-27'),
(3214, 463, '2021-04-27'),
(3215, 352, '2021-04-27'),
(3216, 508, '2021-04-27'),
(3217, 505, '2021-04-27'),
(3218, 503, '2021-04-27'),
(3219, 516, '2021-04-27'),
(3220, 445, '2021-04-27'),
(3221, 422, '2021-04-27'),
(3222, 516, '2021-04-27'),
(3223, 458, '2021-04-27'),
(3224, 515, '2021-04-27'),
(3225, 423, '2021-04-27'),
(3226, 214, '2021-04-27'),
(3227, 409, '2021-04-27'),
(3228, 466, '2021-04-27'),
(3229, 506, '2021-04-27'),
(3230, 499, '2021-04-27'),
(3231, 210, '2021-04-27'),
(3232, 514, '2021-04-27'),
(3233, 516, '2021-04-27'),
(3234, 359, '2021-04-27'),
(3235, 507, '2021-04-27'),
(3236, 514, '2021-04-27'),
(3237, 509, '2021-04-27'),
(3238, 513, '2021-04-27'),
(3239, 511, '2021-04-27'),
(3240, 511, '2021-04-27'),
(3241, 514, '2021-04-27'),
(3242, 501, '2021-04-27'),
(3243, 501, '2021-04-27'),
(3244, 445, '2021-04-27'),
(3245, 516, '2021-04-27'),
(3246, 516, '2021-04-27'),
(3247, 492, '2021-04-27'),
(3248, 514, '2021-04-27'),
(3249, 444, '2021-04-27'),
(3250, 340, '2021-04-27'),
(3251, 510, '2021-04-27'),
(3252, 514, '2021-04-27'),
(3253, 370, '2021-04-27'),
(3254, 447, '2021-04-27'),
(3255, 467, '2021-04-27'),
(3256, 219, '2021-04-27'),
(3257, 507, '2021-04-27'),
(3258, 516, '2021-04-27'),
(3259, 468, '2021-04-27'),
(3260, 507, '2021-04-27'),
(3261, 515, '2021-04-27'),
(3262, 510, '2021-04-27'),
(3263, 509, '2021-04-27'),
(3264, 453, '2021-04-27'),
(3265, 432, '2021-04-27'),
(3266, 509, '2021-04-27'),
(3267, 364, '2021-04-27'),
(3268, 513, '2021-04-27'),
(3269, 340, '2021-04-27'),
(3270, 412, '2021-04-27'),
(3271, 385, '2021-04-27'),
(3272, 401, '2021-04-27'),
(3273, 401, '2021-04-27'),
(3274, 419, '2021-04-27'),
(3275, 220, '2021-04-27'),
(3276, 437, '2021-04-28'),
(3277, 375, '2021-04-28'),
(3278, 498, '2021-04-28'),
(3279, 355, '2021-04-28'),
(3280, 353, '2021-04-28'),
(3281, 380, '2021-04-28'),
(3282, 510, '2021-04-28'),
(3283, 514, '2021-04-28'),
(3284, 516, '2021-04-28'),
(3285, 515, '2021-04-28'),
(3286, 514, '2021-04-28'),
(3287, 513, '2021-04-28'),
(3288, 511, '2021-04-28'),
(3289, 509, '2021-04-28'),
(3290, 510, '2021-04-28'),
(3291, 508, '2021-04-28'),
(3292, 506, '2021-04-28'),
(3293, 507, '2021-04-28'),
(3294, 505, '2021-04-28'),
(3295, 504, '2021-04-28'),
(3296, 502, '2021-04-28'),
(3297, 447, '2021-04-28'),
(3298, 500, '2021-04-28'),
(3299, 501, '2021-04-28'),
(3300, 446, '2021-04-28'),
(3301, 445, '2021-04-28'),
(3302, 442, '2021-04-28'),
(3303, 444, '2021-04-28'),
(3304, 443, '2021-04-28'),
(3305, 392, '2021-04-28'),
(3306, 373, '2021-04-28'),
(3307, 376, '2021-04-28'),
(3308, 503, '2021-04-28'),
(3309, 374, '2021-04-28'),
(3310, 340, '2021-04-28'),
(3311, 499, '2021-04-28'),
(3312, 480, '2021-04-28'),
(3313, 498, '2021-04-28'),
(3314, 479, '2021-04-28'),
(3315, 460, '2021-04-28'),
(3316, 459, '2021-04-28'),
(3317, 458, '2021-04-28'),
(3318, 457, '2021-04-28'),
(3319, 478, '2021-04-28'),
(3320, 475, '2021-04-28'),
(3321, 476, '2021-04-28'),
(3322, 477, '2021-04-28'),
(3323, 474, '2021-04-28'),
(3324, 473, '2021-04-28'),
(3325, 472, '2021-04-28'),
(3326, 431, '2021-04-28'),
(3327, 430, '2021-04-28'),
(3328, 429, '2021-04-28'),
(3329, 428, '2021-04-28'),
(3330, 427, '2021-04-28'),
(3331, 441, '2021-04-28'),
(3332, 440, '2021-04-28'),
(3333, 426, '2021-04-28'),
(3334, 439, '2021-04-28'),
(3335, 438, '2021-04-28'),
(3336, 433, '2021-04-28'),
(3337, 434, '2021-04-28'),
(3338, 432, '2021-04-28'),
(3339, 385, '2021-04-28'),
(3340, 382, '2021-04-28'),
(3341, 377, '2021-04-28'),
(3342, 367, '2021-04-28'),
(3343, 366, '2021-04-28'),
(3344, 496, '2021-04-28'),
(3345, 495, '2021-04-28'),
(3346, 494, '2021-04-28'),
(3347, 493, '2021-04-28'),
(3348, 491, '2021-04-28'),
(3349, 492, '2021-04-28'),
(3350, 490, '2021-04-28'),
(3351, 488, '2021-04-28'),
(3352, 489, '2021-04-28'),
(3353, 487, '2021-04-28'),
(3354, 486, '2021-04-28'),
(3355, 485, '2021-04-28'),
(3356, 328, '2021-04-28'),
(3357, 327, '2021-04-28'),
(3358, 330, '2021-04-28'),
(3359, 331, '2021-04-28'),
(3360, 339, '2021-04-28'),
(3361, 334, '2021-04-28'),
(3362, 341, '2021-04-28'),
(3363, 497, '2021-04-28'),
(3364, 471, '2021-04-28'),
(3365, 470, '2021-04-28'),
(3366, 469, '2021-04-28'),
(3367, 468, '2021-04-28'),
(3368, 467, '2021-04-28'),
(3369, 464, '2021-04-28'),
(3370, 466, '2021-04-28'),
(3371, 463, '2021-04-28'),
(3372, 465, '2021-04-28'),
(3373, 462, '2021-04-28'),
(3374, 461, '2021-04-28'),
(3375, 455, '2021-04-28'),
(3376, 456, '2021-04-28'),
(3377, 454, '2021-04-28'),
(3378, 453, '2021-04-28'),
(3379, 452, '2021-04-28'),
(3380, 451, '2021-04-28'),
(3381, 450, '2021-04-28'),
(3382, 449, '2021-04-28'),
(3383, 448, '2021-04-28'),
(3384, 405, '2021-04-28'),
(3385, 403, '2021-04-28'),
(3386, 404, '2021-04-28'),
(3387, 401, '2021-04-28'),
(3388, 402, '2021-04-28'),
(3389, 400, '2021-04-28'),
(3390, 399, '2021-04-28'),
(3391, 397, '2021-04-28'),
(3392, 398, '2021-04-28'),
(3393, 396, '2021-04-28'),
(3394, 395, '2021-04-28'),
(3395, 394, '2021-04-28'),
(3396, 415, '2021-04-28'),
(3397, 417, '2021-04-28'),
(3398, 416, '2021-04-28'),
(3399, 414, '2021-04-28'),
(3400, 413, '2021-04-28'),
(3401, 412, '2021-04-28'),
(3402, 411, '2021-04-28'),
(3403, 410, '2021-04-28'),
(3404, 409, '2021-04-28'),
(3405, 408, '2021-04-28'),
(3406, 407, '2021-04-28'),
(3407, 406, '2021-04-28'),
(3408, 437, '2021-04-28'),
(3409, 436, '2021-04-28'),
(3410, 435, '2021-04-28'),
(3411, 425, '2021-04-28'),
(3412, 424, '2021-04-28'),
(3413, 423, '2021-04-28'),
(3414, 418, '2021-04-28'),
(3415, 391, '2021-04-28'),
(3416, 393, '2021-04-28'),
(3417, 390, '2021-04-28'),
(3418, 389, '2021-04-28'),
(3419, 387, '2021-04-28'),
(3420, 388, '2021-04-28'),
(3421, 384, '2021-04-28'),
(3422, 386, '2021-04-28'),
(3423, 383, '2021-04-28'),
(3424, 369, '2021-04-28'),
(3425, 365, '2021-04-28'),
(3426, 368, '2021-04-28'),
(3427, 364, '2021-04-28'),
(3428, 363, '2021-04-28'),
(3429, 362, '2021-04-28'),
(3430, 361, '2021-04-28'),
(3431, 360, '2021-04-28'),
(3432, 359, '2021-04-28'),
(3433, 358, '2021-04-28'),
(3434, 381, '2021-04-28'),
(3435, 380, '2021-04-28'),
(3436, 379, '2021-04-28'),
(3437, 378, '2021-04-28'),
(3438, 375, '2021-04-28'),
(3439, 372, '2021-04-28'),
(3440, 371, '2021-04-28'),
(3441, 370, '2021-04-28'),
(3442, 357, '2021-04-28'),
(3443, 356, '2021-04-28'),
(3444, 355, '2021-04-28'),
(3445, 353, '2021-04-28'),
(3446, 352, '2021-04-28'),
(3447, 351, '2021-04-28'),
(3448, 354, '2021-04-28'),
(3449, 350, '2021-04-28'),
(3450, 349, '2021-04-28'),
(3451, 348, '2021-04-28'),
(3452, 347, '2021-04-28'),
(3453, 345, '2021-04-28'),
(3454, 346, '2021-04-28'),
(3455, 343, '2021-04-28'),
(3456, 344, '2021-04-28'),
(3457, 342, '2021-04-28'),
(3458, 209, '2021-04-28'),
(3459, 210, '2021-04-28'),
(3460, 211, '2021-04-28'),
(3461, 212, '2021-04-28'),
(3462, 214, '2021-04-28'),
(3463, 215, '2021-04-28'),
(3464, 213, '2021-04-28'),
(3465, 216, '2021-04-28'),
(3466, 484, '2021-04-28'),
(3467, 483, '2021-04-28'),
(3468, 482, '2021-04-28'),
(3469, 481, '2021-04-28'),
(3470, 422, '2021-04-28'),
(3471, 421, '2021-04-28'),
(3472, 420, '2021-04-28'),
(3473, 419, '2021-04-28'),
(3474, 337, '2021-04-28'),
(3475, 336, '2021-04-28'),
(3476, 335, '2021-04-28'),
(3477, 223, '2021-04-28'),
(3478, 222, '2021-04-28'),
(3479, 221, '2021-04-28'),
(3480, 220, '2021-04-28'),
(3481, 219, '2021-04-28'),
(3482, 218, '2021-04-28'),
(3483, 217, '2021-04-28'),
(3484, 515, '2021-04-28'),
(3485, 516, '2021-04-28'),
(3486, 514, '2021-04-28'),
(3487, 513, '2021-04-28'),
(3488, 511, '2021-04-28'),
(3489, 510, '2021-04-28'),
(3490, 509, '2021-04-28'),
(3491, 508, '2021-04-28'),
(3492, 507, '2021-04-28'),
(3493, 506, '2021-04-28'),
(3494, 505, '2021-04-28'),
(3495, 504, '2021-04-28'),
(3496, 502, '2021-04-28'),
(3497, 501, '2021-04-28'),
(3498, 447, '2021-04-28'),
(3499, 500, '2021-04-28'),
(3500, 446, '2021-04-28'),
(3501, 445, '2021-04-28'),
(3502, 444, '2021-04-28'),
(3503, 443, '2021-04-28'),
(3504, 392, '2021-04-28'),
(3505, 442, '2021-04-28'),
(3506, 376, '2021-04-28'),
(3507, 373, '2021-04-28'),
(3508, 499, '2021-04-28'),
(3509, 498, '2021-04-28'),
(3510, 480, '2021-04-28'),
(3511, 479, '2021-04-28'),
(3512, 460, '2021-04-28'),
(3513, 459, '2021-04-28'),
(3514, 458, '2021-04-28'),
(3515, 457, '2021-04-28'),
(3516, 478, '2021-04-28'),
(3517, 476, '2021-04-28'),
(3518, 477, '2021-04-28'),
(3519, 474, '2021-04-28'),
(3520, 473, '2021-04-28'),
(3521, 475, '2021-04-28'),
(3522, 472, '2021-04-28'),
(3523, 441, '2021-04-28'),
(3524, 340, '2021-04-28'),
(3525, 503, '2021-04-28'),
(3526, 374, '2021-04-28'),
(3527, 440, '2021-04-28'),
(3528, 439, '2021-04-28'),
(3529, 438, '2021-04-28'),
(3530, 434, '2021-04-28'),
(3531, 433, '2021-04-28'),
(3532, 432, '2021-04-28'),
(3533, 385, '2021-04-28'),
(3534, 382, '2021-04-28'),
(3535, 377, '2021-04-28'),
(3536, 367, '2021-04-28'),
(3537, 366, '2021-04-28'),
(3538, 431, '2021-04-28'),
(3539, 430, '2021-04-28'),
(3540, 429, '2021-04-28'),
(3541, 428, '2021-04-28'),
(3542, 426, '2021-04-28'),
(3543, 427, '2021-04-28'),
(3544, 496, '2021-04-28'),
(3545, 495, '2021-04-28'),
(3546, 493, '2021-04-28'),
(3547, 494, '2021-04-28'),
(3548, 492, '2021-04-28'),
(3549, 491, '2021-04-28'),
(3550, 489, '2021-04-28'),
(3551, 490, '2021-04-28'),
(3552, 488, '2021-04-28'),
(3553, 487, '2021-04-28'),
(3554, 485, '2021-04-28'),
(3555, 486, '2021-04-28'),
(3556, 327, '2021-04-28'),
(3557, 330, '2021-04-28'),
(3558, 328, '2021-04-28'),
(3559, 331, '2021-04-28'),
(3560, 334, '2021-04-28'),
(3561, 339, '2021-04-28'),
(3562, 341, '2021-04-28'),
(3563, 497, '2021-04-28'),
(3564, 471, '2021-04-28'),
(3565, 470, '2021-04-28'),
(3566, 469, '2021-04-28'),
(3567, 468, '2021-04-28'),
(3568, 467, '2021-04-28'),
(3569, 465, '2021-04-28'),
(3570, 466, '2021-04-28'),
(3571, 463, '2021-04-28'),
(3572, 464, '2021-04-28'),
(3573, 462, '2021-04-28'),
(3574, 461, '2021-04-28'),
(3575, 456, '2021-04-28'),
(3576, 455, '2021-04-28'),
(3577, 454, '2021-04-28'),
(3578, 453, '2021-04-28'),
(3579, 451, '2021-04-28'),
(3580, 452, '2021-04-28'),
(3581, 450, '2021-04-28'),
(3582, 449, '2021-04-28'),
(3583, 437, '2021-04-28'),
(3584, 448, '2021-04-28'),
(3585, 436, '2021-04-28'),
(3586, 435, '2021-04-28'),
(3587, 418, '2021-04-28'),
(3588, 423, '2021-04-28'),
(3589, 424, '2021-04-28'),
(3590, 425, '2021-04-28'),
(3591, 414, '2021-04-28'),
(3592, 415, '2021-04-28'),
(3593, 417, '2021-04-28'),
(3594, 416, '2021-04-28'),
(3595, 412, '2021-04-28'),
(3596, 413, '2021-04-28'),
(3597, 410, '2021-04-28'),
(3598, 411, '2021-04-28'),
(3599, 409, '2021-04-28'),
(3600, 408, '2021-04-28'),
(3601, 407, '2021-04-28'),
(3602, 406, '2021-04-28'),
(3603, 405, '2021-04-28'),
(3604, 404, '2021-04-28'),
(3605, 403, '2021-04-28'),
(3606, 402, '2021-04-28'),
(3607, 399, '2021-04-28'),
(3608, 400, '2021-04-28'),
(3609, 401, '2021-04-28'),
(3610, 398, '2021-04-28'),
(3611, 397, '2021-04-28'),
(3612, 396, '2021-04-28'),
(3613, 395, '2021-04-28'),
(3614, 394, '2021-04-28'),
(3615, 381, '2021-04-28'),
(3616, 380, '2021-04-28'),
(3617, 378, '2021-04-28'),
(3618, 379, '2021-04-28'),
(3619, 375, '2021-04-28'),
(3620, 372, '2021-04-28'),
(3621, 371, '2021-04-28'),
(3622, 370, '2021-04-28'),
(3623, 369, '2021-04-28'),
(3624, 368, '2021-04-28'),
(3625, 365, '2021-04-28'),
(3626, 364, '2021-04-28'),
(3627, 363, '2021-04-28'),
(3628, 362, '2021-04-28'),
(3629, 361, '2021-04-28'),
(3630, 360, '2021-04-28'),
(3631, 359, '2021-04-28'),
(3632, 358, '2021-04-28'),
(3633, 393, '2021-04-28'),
(3634, 391, '2021-04-28'),
(3635, 390, '2021-04-28'),
(3636, 389, '2021-04-28'),
(3637, 388, '2021-04-28'),
(3638, 387, '2021-04-28'),
(3639, 386, '2021-04-28'),
(3640, 384, '2021-04-28'),
(3641, 383, '2021-04-28'),
(3642, 357, '2021-04-28'),
(3643, 356, '2021-04-28'),
(3644, 354, '2021-04-28'),
(3645, 355, '2021-04-28'),
(3646, 353, '2021-04-28'),
(3647, 352, '2021-04-28'),
(3648, 351, '2021-04-28'),
(3649, 350, '2021-04-28'),
(3650, 349, '2021-04-28'),
(3651, 348, '2021-04-28'),
(3652, 347, '2021-04-28'),
(3653, 346, '2021-04-28'),
(3654, 345, '2021-04-28'),
(3655, 344, '2021-04-28'),
(3656, 343, '2021-04-28'),
(3657, 342, '2021-04-28'),
(3658, 209, '2021-04-28'),
(3659, 212, '2021-04-28'),
(3660, 210, '2021-04-28'),
(3661, 211, '2021-04-28'),
(3662, 213, '2021-04-28'),
(3663, 214, '2021-04-28'),
(3664, 215, '2021-04-28'),
(3665, 216, '2021-04-28'),
(3666, 220, '2021-04-28'),
(3667, 222, '2021-04-28'),
(3668, 221, '2021-04-28'),
(3669, 219, '2021-04-28'),
(3670, 218, '2021-04-28'),
(3671, 217, '2021-04-28'),
(3672, 484, '2021-04-28'),
(3673, 483, '2021-04-28'),
(3674, 482, '2021-04-28'),
(3675, 422, '2021-04-28'),
(3676, 481, '2021-04-28'),
(3677, 421, '2021-04-28'),
(3678, 420, '2021-04-28'),
(3679, 337, '2021-04-28'),
(3680, 419, '2021-04-28'),
(3681, 336, '2021-04-28'),
(3682, 335, '2021-04-28'),
(3683, 223, '2021-04-28'),
(3684, 388, '2021-04-28'),
(3685, 456, '2021-04-28'),
(3686, 339, '2021-04-28'),
(3687, 431, '2021-04-28'),
(3688, 478, '2021-04-28'),
(3689, 353, '2021-04-28'),
(3690, 354, '2021-04-28'),
(3691, 451, '2021-04-28'),
(3692, 455, '2021-04-28'),
(3693, 361, '2021-04-28'),
(3694, 366, '2021-04-28'),
(3695, 327, '2021-04-28'),
(3696, 218, '2021-04-28'),
(3697, 214, '2021-04-28'),
(3698, 215, '2021-04-28'),
(3699, 428, '2021-04-28'),
(3700, 427, '2021-04-28'),
(3701, 434, '2021-04-28'),
(3702, 426, '2021-04-28'),
(3703, 362, '2021-04-28'),
(3704, 363, '2021-04-28'),
(3705, 342, '2021-04-28'),
(3706, 398, '2021-04-28'),
(3707, 375, '2021-04-28'),
(3708, 342, '2021-04-28'),
(3709, 331, '2021-04-28'),
(3710, 459, '2021-04-28'),
(3711, 390, '2021-04-28'),
(3712, 475, '2021-04-28'),
(3713, 499, '2021-04-28'),
(3714, 452, '2021-04-28'),
(3715, 358, '2021-04-28'),
(3716, 502, '2021-04-28'),
(3717, 219, '2021-04-28'),
(3718, 453, '2021-04-28'),
(3719, 425, '2021-04-28'),
(3720, 432, '2021-04-28'),
(3721, 220, '2021-04-28'),
(3722, 392, '2021-04-28'),
(3723, 436, '2021-04-28'),
(3724, 513, '2021-04-28'),
(3725, 394, '2021-04-28'),
(3726, 435, '2021-04-28'),
(3727, 401, '2021-04-28'),
(3728, 440, '2021-04-28'),
(3729, 432, '2021-04-28'),
(3730, 220, '2021-04-29'),
(3731, 375, '2021-04-29'),
(3732, 495, '2021-04-29'),
(3733, 437, '2021-04-29'),
(3734, 366, '2021-04-29'),
(3735, 337, '2021-04-29'),
(3736, 424, '2021-04-29'),
(3737, 448, '2021-04-29'),
(3738, 433, '2021-04-29'),
(3739, 355, '2021-04-29'),
(3740, 434, '2021-04-29'),
(3741, 498, '2021-04-29'),
(3742, 452, '2021-04-29'),
(3743, 441, '2021-04-29'),
(3744, 380, '2021-04-29'),
(3745, 439, '2021-04-29'),
(3746, 442, '2021-04-29'),
(3747, 508, '2021-04-29'),
(3748, 437, '2021-04-29'),
(3749, 458, '2021-04-29'),
(3750, 216, '2021-04-29'),
(3751, 403, '2021-04-29'),
(3752, 479, '2021-04-29'),
(3753, 499, '2021-04-29'),
(3754, 340, '2021-04-29'),
(3755, 457, '2021-04-29'),
(3756, 353, '2021-04-29'),
(3757, 445, '2021-04-29'),
(3758, 396, '2021-04-29'),
(3759, 398, '2021-04-29'),
(3760, 474, '2021-04-29'),
(3761, 211, '2021-04-29'),
(3762, 486, '2021-04-29'),
(3763, 478, '2021-04-29'),
(3764, 340, '2021-04-29'),
(3765, 328, '2021-04-29'),
(3766, 472, '2021-04-29'),
(3767, 516, '2021-04-29'),
(3768, 517, '2021-04-29'),
(3769, 362, '2021-04-29'),
(3770, 436, '2021-04-29'),
(3771, 491, '2021-04-29'),
(3772, 363, '2021-04-29'),
(3773, 418, '2021-04-29'),
(3774, 438, '2021-04-29'),
(3775, 473, '2021-04-29'),
(3776, 398, '2021-04-29'),
(3777, 460, '2021-04-29'),
(3778, 331, '2021-04-29'),
(3779, 375, '2021-04-29'),
(3780, 419, '2021-04-29'),
(3781, 400, '2021-04-29'),
(3782, 404, '2021-04-29'),
(3783, 459, '2021-04-29'),
(3784, 368, '2021-04-29'),
(3785, 456, '2021-04-29'),
(3786, 446, '2021-04-29'),
(3787, 498, '2021-04-29'),
(3788, 450, '2021-04-29'),
(3789, 449, '2021-04-29'),
(3790, 402, '2021-04-29'),
(3791, 480, '2021-04-29'),
(3792, 403, '2021-04-29'),
(3793, 407, '2021-04-29'),
(3794, 465, '2021-04-29'),
(3795, 408, '2021-04-29'),
(3796, 477, '2021-04-29'),
(3797, 409, '2021-04-29'),
(3798, 480, '2021-04-29'),
(3799, 482, '2021-04-29'),
(3800, 484, '2021-04-29'),
(3801, 451, '2021-04-29'),
(3802, 210, '2021-04-29'),
(3803, 483, '2021-04-29'),
(3804, 365, '2021-04-29'),
(3805, 511, '2021-04-29'),
(3806, 459, '2021-04-29'),
(3807, 461, '2021-04-29'),
(3808, 469, '2021-04-29'),
(3809, 468, '2021-04-29'),
(3810, 454, '2021-04-29'),
(3811, 367, '2021-04-29'),
(3812, 496, '2021-04-29'),
(3813, 389, '2021-04-29'),
(3814, 348, '2021-04-29'),
(3815, 366, '2021-04-29'),
(3816, 508, '2021-04-29'),
(3817, 468, '2021-04-29'),
(3818, 378, '2021-04-29'),
(3819, 454, '2021-04-29'),
(3820, 399, '2021-04-29'),
(3821, 459, '2021-04-29'),
(3822, 390, '2021-04-29'),
(3823, 352, '2021-04-29'),
(3824, 361, '2021-04-29'),
(3825, 330, '2021-04-29'),
(3826, 439, '2021-04-29'),
(3827, 216, '2021-04-29'),
(3828, 451, '2021-04-29'),
(3829, 433, '2021-04-29'),
(3830, 438, '2021-04-29'),
(3831, 404, '2021-04-29'),
(3832, 328, '2021-04-29'),
(3833, 441, '2021-04-29'),
(3834, 212, '2021-04-29'),
(3835, 465, '2021-04-29'),
(3836, 365, '2021-04-29'),
(3837, 345, '2021-04-29'),
(3838, 347, '2021-04-29'),
(3839, 392, '2021-04-29'),
(3840, 351, '2021-04-29'),
(3841, 417, '2021-04-29'),
(3842, 355, '2021-04-29'),
(3843, 462, '2021-04-29'),
(3844, 488, '2021-04-29'),
(3845, 222, '2021-04-29'),
(3846, 211, '2021-04-29'),
(3847, 503, '2021-04-29'),
(3848, 485, '2021-04-29'),
(3849, 447, '2021-04-29'),
(3850, 470, '2021-04-29'),
(3851, 485, '2021-04-29'),
(3852, 493, '2021-04-29'),
(3853, 445, '2021-04-29'),
(3854, 472, '2021-04-29'),
(3855, 410, '2021-04-29'),
(3856, 430, '2021-04-29'),
(3857, 489, '2021-04-29'),
(3858, 359, '2021-04-29'),
(3859, 407, '2021-04-29'),
(3860, 450, '2021-04-29'),
(3861, 463, '2021-04-29'),
(3862, 449, '2021-04-29'),
(3863, 349, '2021-04-29'),
(3864, 479, '2021-04-29'),
(3865, 358, '2021-04-29'),
(3866, 500, '2021-04-29'),
(3867, 374, '2021-04-29'),
(3868, 473, '2021-04-29'),
(3869, 353, '2021-04-29'),
(3870, 481, '2021-04-29'),
(3871, 494, '2021-04-29'),
(3872, 364, '2021-04-29'),
(3873, 346, '2021-04-29'),
(3874, 435, '2021-04-29'),
(3875, 368, '2021-04-29'),
(3876, 335, '2021-04-29'),
(3877, 443, '2021-04-29'),
(3878, 499, '2021-04-29'),
(3879, 432, '2021-04-29'),
(3880, 391, '2021-04-29'),
(3881, 362, '2021-04-29'),
(3882, 453, '2021-04-29'),
(3883, 476, '2021-04-29'),
(3884, 487, '2021-04-29'),
(3885, 409, '2021-04-29'),
(3886, 344, '2021-04-29'),
(3887, 434, '2021-04-29'),
(3888, 350, '2021-04-29'),
(3889, 431, '2021-04-29'),
(3890, 457, '2021-04-29'),
(3891, 413, '2021-04-29'),
(3892, 458, '2021-04-29'),
(3893, 505, '2021-04-29'),
(3894, 460, '2021-04-29'),
(3895, 356, '2021-04-29'),
(3896, 437, '2021-04-29'),
(3897, 471, '2021-04-29'),
(3898, 363, '2021-04-29'),
(3899, 357, '2021-04-29'),
(3900, 444, '2021-04-29'),
(3901, 510, '2021-04-29'),
(3902, 428, '2021-04-29'),
(3903, 507, '2021-04-29'),
(3904, 455, '2021-04-29'),
(3905, 385, '2021-04-29'),
(3906, 469, '2021-04-29'),
(3907, 393, '2021-04-29'),
(3908, 452, '2021-04-29'),
(3909, 384, '2021-04-29'),
(3910, 442, '2021-04-29'),
(3911, 480, '2021-04-29'),
(3912, 408, '2021-04-29'),
(3913, 466, '2021-04-29'),
(3914, 490, '2021-04-29'),
(3915, 506, '2021-04-29'),
(3916, 475, '2021-04-29'),
(3917, 209, '2021-04-29'),
(3918, 464, '2021-04-29'),
(3919, 513, '2021-04-29'),
(3920, 383, '2021-04-29'),
(3921, 486, '2021-04-29'),
(3922, 372, '2021-04-29'),
(3923, 502, '2021-04-29'),
(3924, 492, '2021-04-29'),
(3925, 436, '2021-04-29'),
(3926, 360, '2021-04-29'),
(3927, 427, '2021-04-29'),
(3928, 509, '2021-04-29'),
(3929, 339, '2021-04-29'),
(3930, 354, '2021-04-29'),
(3931, 504, '2021-04-29'),
(3932, 514, '2021-04-29'),
(3933, 467, '2021-04-29'),
(3934, 491, '2021-04-29'),
(3935, 461, '2021-04-29'),
(3936, 448, '2021-04-29'),
(3937, 382, '2021-04-29'),
(3938, 377, '2021-04-29'),
(3939, 334, '2021-04-29'),
(3940, 336, '2021-04-29'),
(3941, 511, '2021-04-29'),
(3942, 387, '2021-04-29'),
(3943, 501, '2021-04-29'),
(3944, 446, '2021-04-29'),
(3945, 495, '2021-04-29'),
(3946, 414, '2021-04-29'),
(3947, 406, '2021-04-29'),
(3948, 219, '2021-04-29'),
(3949, 369, '2021-04-29'),
(3950, 456, '2021-04-29'),
(3951, 440, '2021-04-29'),
(3952, 498, '2021-04-29'),
(3953, 386, '2021-04-29'),
(3954, 426, '2021-04-29'),
(3955, 377, '2021-04-29'),
(3956, 502, '2021-04-29'),
(3957, 493, '2021-04-29'),
(3958, 382, '2021-04-29'),
(3959, 221, '2021-04-29'),
(3960, 496, '2021-04-29'),
(3961, 379, '2021-04-29'),
(3962, 508, '2021-04-29'),
(3963, 387, '2021-04-29'),
(3964, 488, '2021-04-29'),
(3965, 401, '2021-04-29'),
(3966, 503, '2021-04-29'),
(3967, 432, '2021-04-29'),
(3968, 424, '2021-04-29'),
(3969, 341, '2021-04-29'),
(3970, 209, '2021-04-29'),
(3971, 436, '2021-04-29'),
(3972, 459, '2021-04-29'),
(3973, 443, '2021-04-29'),
(3974, 220, '2021-04-29'),
(3975, 438, '2021-04-29'),
(3976, 354, '2021-04-29'),
(3977, 427, '2021-04-29'),
(3978, 425, '2021-04-29'),
(3979, 215, '2021-04-29'),
(3980, 330, '2021-04-29'),
(3981, 516, '2021-04-29'),
(3982, 480, '2021-04-29'),
(3983, 211, '2021-04-29'),
(3984, 392, '2021-04-29'),
(3985, 504, '2021-04-29'),
(3986, 406, '2021-04-29'),
(3987, 376, '2021-04-29'),
(3988, 389, '2021-04-29'),
(3989, 489, '2021-04-29'),
(3990, 491, '2021-04-29'),
(3991, 435, '2021-04-29'),
(3992, 371, '2021-04-29'),
(3993, 405, '2021-04-29'),
(3994, 222, '2021-04-29'),
(3995, 415, '2021-04-29'),
(3996, 485, '2021-04-29'),
(3997, 490, '2021-04-29'),
(3998, 495, '2021-04-29'),
(3999, 440, '2021-04-29'),
(4000, 219, '2021-04-29'),
(4001, 216, '2021-04-29'),
(4002, 423, '2021-04-29'),
(4003, 386, '2021-04-29'),
(4004, 331, '2021-04-29'),
(4005, 340, '2021-04-29'),
(4006, 347, '2021-04-29'),
(4007, 372, '2021-04-29'),
(4008, 335, '2021-04-29'),
(4009, 380, '2021-04-29'),
(4010, 439, '2021-04-29'),
(4011, 214, '2021-04-29'),
(4012, 494, '2021-04-29'),
(4013, 505, '2021-04-29'),
(4014, 336, '2021-04-29'),
(4015, 348, '2021-04-29'),
(4016, 513, '2021-04-29'),
(4017, 213, '2021-04-29'),
(4018, 399, '2021-04-29'),
(4019, 210, '2021-04-29'),
(4020, 426, '2021-04-29'),
(4021, 499, '2021-04-29'),
(4022, 344, '2021-04-29'),
(4023, 328, '2021-04-29'),
(4024, 212, '2021-04-29'),
(4025, 388, '2021-04-29'),
(4026, 334, '2021-04-29'),
(4027, 487, '2021-04-29'),
(4028, 355, '2021-04-29'),
(4029, 374, '2021-04-29'),
(4030, 217, '2021-04-29'),
(4031, 515, '2021-04-29'),
(4032, 509, '2021-04-29'),
(4033, 349, '2021-04-29'),
(4034, 383, '2021-04-29'),
(4035, 506, '2021-04-29'),
(4036, 327, '2021-04-29'),
(4037, 430, '2021-04-29'),
(4038, 391, '2021-04-29'),
(4039, 433, '2021-04-29'),
(4040, 479, '2021-04-29'),
(4041, 486, '2021-04-29'),
(4042, 385, '2021-04-29'),
(4043, 346, '2021-04-29'),
(4044, 337, '2021-04-29'),
(4045, 357, '2021-04-29'),
(4046, 384, '2021-04-29'),
(4047, 370, '2021-04-29'),
(4048, 442, '2021-04-29'),
(4049, 218, '2021-04-29'),
(4050, 352, '2021-04-29'),
(4051, 498, '2021-04-29'),
(4052, 437, '2021-04-29'),
(4053, 510, '2021-04-29'),
(4054, 342, '2021-04-29'),
(4055, 223, '2021-04-29'),
(4056, 351, '2021-04-29'),
(4057, 511, '2021-04-29'),
(4058, 356, '2021-04-29'),
(4059, 514, '2021-04-29'),
(4060, 339, '2021-04-29'),
(4061, 350, '2021-04-29'),
(4062, 441, '2021-04-29'),
(4063, 507, '2021-04-29'),
(4064, 373, '2021-04-29'),
(4065, 343, '2021-04-29'),
(4066, 390, '2021-04-29'),
(4067, 431, '2021-04-29'),
(4068, 375, '2021-04-29'),
(4069, 492, '2021-04-29'),
(4070, 434, '2021-04-29'),
(4071, 353, '2021-04-29'),
(4072, 378, '2021-04-29'),
(4073, 381, '2021-04-29'),
(4074, 443, '2021-04-29'),
(4075, 500, '2021-04-29'),
(4076, 470, '2021-04-29'),
(4077, 397, '2021-04-29'),
(4078, 223, '2021-04-29'),
(4079, 475, '2021-04-29'),
(4080, 463, '2021-04-29'),
(4081, 486, '2021-04-29'),
(4082, 491, '2021-04-29'),
(4083, 487, '2021-04-29'),
(4084, 351, '2021-04-29'),
(4085, 449, '2021-04-29'),
(4086, 354, '2021-04-29'),
(4087, 444, '2021-04-29'),
(4088, 492, '2021-04-29'),
(4089, 515, '2021-04-29'),
(4090, 327, '2021-04-29'),
(4091, 330, '2021-04-29'),
(4092, 341, '2021-04-29'),
(4093, 515, '2021-04-29'),
(4094, 402, '2021-04-29'),
(4095, 335, '2021-04-29'),
(4096, 452, '2021-04-29'),
(4097, 213, '2021-04-30'),
(4098, 450, '2021-04-30'),
(4099, 466, '2021-04-30'),
(4100, 448, '2021-04-30'),
(4101, 464, '2021-04-30'),
(4102, 462, '2021-04-30'),
(4103, 387, '2021-04-30'),
(4104, 437, '2021-04-30'),
(4105, 455, '2021-04-30'),
(4106, 216, '2021-04-30'),
(4107, 431, '2021-04-30'),
(4108, 514, '2021-04-30'),
(4109, 216, '2021-04-30'),
(4110, 453, '2021-04-30'),
(4111, 489, '2021-04-30'),
(4112, 496, '2021-04-30'),
(4113, 427, '2021-04-30'),
(4114, 508, '2021-04-30'),
(4115, 474, '2021-04-30'),
(4116, 511, '2021-04-30'),
(4117, 490, '2021-04-30'),
(4118, 485, '2021-04-30'),
(4119, 426, '2021-04-30'),
(4120, 510, '2021-04-30'),
(4121, 495, '2021-04-30'),
(4122, 430, '2021-04-30'),
(4123, 495, '2021-04-30'),
(4124, 390, '2021-04-30'),
(4125, 492, '2021-04-30'),
(4126, 467, '2021-04-30'),
(4127, 340, '2021-04-30'),
(4128, 435, '2021-04-30'),
(4129, 217, '2021-04-30'),
(4130, 494, '2021-04-30'),
(4131, 493, '2021-04-30'),
(4132, 439, '2021-04-30'),
(4133, 507, '2021-04-30'),
(4134, 491, '2021-04-30'),
(4135, 509, '2021-04-30'),
(4136, 405, '2021-04-30'),
(4137, 429, '2021-04-30'),
(4138, 507, '2021-04-30'),
(4139, 490, '2021-04-30'),
(4140, 384, '2021-04-30'),
(4141, 429, '2021-04-30'),
(4142, 400, '2021-04-30'),
(4143, 492, '2021-04-30'),
(4144, 341, '2021-04-30'),
(4145, 495, '2021-04-30'),
(4146, 491, '2021-04-30'),
(4147, 426, '2021-04-30'),
(4148, 336, '2021-04-30'),
(4149, 497, '2021-04-30'),
(4150, 488, '2021-04-30'),
(4151, 358, '2021-04-30'),
(4152, 217, '2021-04-30'),
(4153, 514, '2021-04-30'),
(4154, 492, '2021-04-30'),
(4155, 348, '2021-04-30'),
(4156, 497, '2021-04-30'),
(4157, 209, '2021-04-30'),
(4158, 489, '2021-04-30'),
(4159, 446, '2021-04-30'),
(4160, 221, '2021-04-30'),
(4161, 444, '2021-04-30'),
(4162, 465, '2021-04-30'),
(4163, 514, '2021-04-30'),
(4164, 506, '2021-04-30'),
(4165, 480, '2021-04-30'),
(4166, 384, '2021-04-30'),
(4167, 381, '2021-04-30'),
(4168, 471, '2021-04-30'),
(4169, 505, '2021-04-30'),
(4170, 476, '2021-04-30'),
(4171, 496, '2021-04-30'),
(4172, 400, '2021-04-30'),
(4173, 513, '2021-04-30'),
(4174, 218, '2021-04-30'),
(4175, 494, '2021-04-30'),
(4176, 348, '2021-04-30'),
(4177, 423, '2021-04-30'),
(4178, 405, '2021-04-30'),
(4179, 223, '2021-05-01'),
(4180, 481, '2021-05-01'),
(4181, 343, '2021-05-01'),
(4182, 514, '2021-05-01'),
(4183, 396, '2021-05-01'),
(4184, 493, '2021-05-01'),
(4185, 358, '2021-05-01'),
(4186, 488, '2021-05-01'),
(4187, 479, '2021-05-01'),
(4188, 513, '2021-05-01'),
(4189, 369, '2021-05-01'),
(4190, 395, '2021-05-01'),
(4191, 221, '2021-05-01'),
(4192, 404, '2021-05-01'),
(4193, 496, '2021-05-01'),
(4194, 428, '2021-05-01'),
(4195, 220, '2021-05-01'),
(4196, 430, '2021-05-01'),
(4197, 425, '2021-05-01'),
(4198, 392, '2021-05-01'),
(4199, 341, '2021-05-01'),
(4200, 382, '2021-05-01'),
(4201, 513, '2021-05-01'),
(4202, 394, '2021-05-01'),
(4203, 513, '2021-05-01'),
(4204, 349, '2021-05-01'),
(4205, 377, '2021-05-01'),
(4206, 428, '2021-05-01'),
(4207, 504, '2021-05-01'),
(4208, 490, '2021-05-01'),
(4209, 516, '2021-05-01'),
(4210, 447, '2021-05-01'),
(4211, 327, '2021-05-01'),
(4212, 502, '2021-05-01'),
(4213, 446, '2021-05-01'),
(4214, 444, '2021-05-01'),
(4215, 376, '2021-05-01'),
(4216, 350, '2021-05-01'),
(4217, 330, '2021-05-01'),
(4218, 508, '2021-05-01'),
(4219, 340, '2021-05-01'),
(4220, 339, '2021-05-01'),
(4221, 374, '2021-05-01'),
(4222, 505, '2021-05-01'),
(4223, 507, '2021-05-01'),
(4224, 486, '2021-05-01'),
(4225, 444, '2021-05-01'),
(4226, 503, '2021-05-01'),
(4227, 337, '2021-05-01'),
(4228, 436, '2021-05-01'),
(4229, 452, '2021-05-01'),
(4230, 344, '2021-05-01'),
(4231, 448, '2021-05-01'),
(4232, 424, '2021-05-01'),
(4233, 492, '2021-05-01'),
(4234, 442, '2021-05-01'),
(4235, 220, '2021-05-01'),
(4236, 445, '2021-05-01'),
(4237, 211, '2021-05-01'),
(4238, 509, '2021-05-01'),
(4239, 473, '2021-05-01'),
(4240, 403, '2021-05-01'),
(4241, 474, '2021-05-01'),
(4242, 446, '2021-05-01'),
(4243, 478, '2021-05-01'),
(4244, 398, '2021-05-01'),
(4245, 500, '2021-05-01'),
(4246, 439, '2021-05-01'),
(4247, 505, '2021-05-01'),
(4248, 443, '2021-05-01'),
(4249, 396, '2021-05-01'),
(4250, 475, '2021-05-01'),
(4251, 476, '2021-05-01'),
(4252, 477, '2021-05-01'),
(4253, 444, '2021-05-01'),
(4254, 361, '2021-05-01'),
(4255, 443, '2021-05-01'),
(4256, 501, '2021-05-01'),
(4257, 375, '2021-05-01'),
(4258, 472, '2021-05-01'),
(4259, 459, '2021-05-01'),
(4260, 331, '2021-05-01'),
(4261, 450, '2021-05-01'),
(4262, 449, '2021-05-01'),
(4263, 480, '2021-05-02'),
(4264, 516, '2021-05-02'),
(4265, 465, '2021-05-02'),
(4266, 346, '2021-05-02'),
(4267, 477, '2021-05-02'),
(4268, 509, '2021-05-02'),
(4269, 490, '2021-05-02'),
(4270, 223, '2021-05-02'),
(4271, 508, '2021-05-02'),
(4272, 210, '2021-05-02'),
(4273, 383, '2021-05-02'),
(4274, 217, '2021-05-02'),
(4275, 500, '2021-05-02'),
(4276, 365, '2021-05-02'),
(4277, 397, '2021-05-02'),
(4278, 389, '2021-05-02'),
(4279, 493, '2021-05-02'),
(4280, 492, '2021-05-02'),
(4281, 376, '2021-05-02'),
(4282, 451, '2021-05-02'),
(4283, 418, '2021-05-02'),
(4284, 494, '2021-05-02'),
(4285, 354, '2021-05-02'),
(4286, 470, '2021-05-02'),
(4287, 510, '2021-05-02'),
(4288, 434, '2021-05-02'),
(4289, 461, '2021-05-02'),
(4290, 335, '2021-05-02'),
(4291, 469, '2021-05-02'),
(4292, 351, '2021-05-02'),
(4293, 402, '2021-05-02'),
(4294, 468, '2021-05-02'),
(4295, 488, '2021-05-02'),
(4296, 482, '2021-05-02'),
(4297, 412, '2021-05-02'),
(4298, 387, '2021-05-02'),
(4299, 436, '2021-05-02'),
(4300, 455, '2021-05-02'),
(4301, 359, '2021-05-02'),
(4302, 216, '2021-05-02'),
(4303, 516, '2021-05-02'),
(4304, 448, '2021-05-02'),
(4305, 430, '2021-05-02'),
(4306, 380, '2021-05-02'),
(4307, 464, '2021-05-02'),
(4308, 462, '2021-05-02'),
(4309, 474, '2021-05-02'),
(4310, 395, '2021-05-02'),
(4311, 411, '2021-05-02'),
(4312, 391, '2021-05-02'),
(4313, 463, '2021-05-02'),
(4314, 422, '2021-05-02'),
(4315, 484, '2021-05-02'),
(4316, 452, '2021-05-02'),
(4317, 435, '2021-05-02'),
(4318, 453, '2021-05-02'),
(4319, 450, '2021-05-02'),
(4320, 223, '2021-05-02'),
(4321, 371, '2021-05-02'),
(4322, 466, '2021-05-02'),
(4323, 439, '2021-05-02'),
(4324, 467, '2021-05-02'),
(4325, 483, '2021-05-02'),
(4326, 496, '2021-05-02'),
(4327, 465, '2021-05-02'),
(4328, 481, '2021-05-02'),
(4329, 221, '2021-05-02'),
(4330, 220, '2021-05-02'),
(4331, 389, '2021-05-02'),
(4332, 219, '2021-05-02'),
(4333, 487, '2021-05-02'),
(4334, 222, '2021-05-02'),
(4335, 471, '2021-05-03'),
(4336, 419, '2021-05-03'),
(4337, 400, '2021-05-03'),
(4338, 492, '2021-05-03'),
(4339, 477, '2021-05-03'),
(4340, 221, '2021-05-03'),
(4341, 358, '2021-05-03'),
(4342, 223, '2021-05-03'),
(4343, 369, '2021-05-03'),
(4344, 402, '2021-05-03'),
(4345, 378, '2021-05-03'),
(4346, 476, '2021-05-03'),
(4347, 381, '2021-05-03'),
(4348, 218, '2021-05-03'),
(4349, 389, '2021-05-03'),
(4350, 348, '2021-05-03'),
(4351, 405, '2021-05-03'),
(4352, 403, '2021-05-03'),
(4353, 423, '2021-05-03'),
(4354, 510, '2021-05-03'),
(4355, 223, '2021-05-03'),
(4356, 341, '2021-05-03'),
(4357, 343, '2021-05-03'),
(4358, 396, '2021-05-03'),
(4359, 358, '2021-05-03'),
(4360, 221, '2021-05-03'),
(4361, 404, '2021-05-03'),
(4362, 479, '2021-05-03'),
(4363, 395, '2021-05-03'),
(4364, 372, '2021-05-03'),
(4365, 494, '2021-05-03'),
(4366, 369, '2021-05-03'),
(4367, 496, '2021-05-03'),
(4368, 397, '2021-05-03'),
(4369, 218, '2021-05-03'),
(4370, 511, '2021-05-03'),
(4371, 401, '2021-05-03'),
(4372, 478, '2021-05-03'),
(4373, 392, '2021-05-03'),
(4374, 476, '2021-05-03'),
(4375, 376, '2021-05-03'),
(4376, 431, '2021-05-03'),
(4377, 486, '2021-05-03'),
(4378, 349, '2021-05-03'),
(4379, 377, '2021-05-03'),
(4380, 428, '2021-05-03'),
(4381, 428, '2021-05-03'),
(4382, 427, '2021-05-03'),
(4383, 394, '2021-05-03'),
(4384, 426, '2021-05-03'),
(4385, 481, '2021-05-03'),
(4386, 486, '2021-05-03'),
(4387, 444, '2021-05-03'),
(4388, 436, '2021-05-03'),
(4389, 452, '2021-05-03'),
(4390, 344, '2021-05-03'),
(4391, 448, '2021-05-03'),
(4392, 387, '2021-05-03'),
(4393, 364, '2021-05-04'),
(4394, 399, '2021-05-04'),
(4395, 211, '2021-05-04'),
(4396, 398, '2021-05-04'),
(4397, 439, '2021-05-04'),
(4398, 502, '2021-05-04'),
(4399, 361, '2021-05-04'),
(4400, 370, '2021-05-04'),
(4401, 443, '2021-05-04'),
(4402, 375, '2021-05-04'),
(4403, 488, '2021-05-04'),
(4404, 331, '2021-05-04'),
(4405, 449, '2021-05-04'),
(4406, 459, '2021-05-04'),
(4407, 480, '2021-05-04'),
(4408, 450, '2021-05-04'),
(4409, 515, '2021-05-04'),
(4410, 346, '2021-05-04'),
(4411, 465, '2021-05-04'),
(4412, 373, '2021-05-04'),
(4413, 477, '2021-05-04'),
(4414, 223, '2021-05-04'),
(4415, 493, '2021-05-04'),
(4416, 209, '2021-05-04'),
(4417, 489, '2021-05-04'),
(4418, 210, '2021-05-04'),
(4419, 210, '2021-05-04'),
(4420, 490, '2021-05-04'),
(4421, 426, '2021-05-04'),
(4422, 217, '2021-05-04'),
(4423, 365, '2021-05-04'),
(4424, 500, '2021-05-04'),
(4425, 492, '2021-05-04'),
(4426, 487, '2021-05-04'),
(4427, 397, '2021-05-04'),
(4428, 363, '2021-05-04'),
(4429, 383, '2021-05-04'),
(4430, 388, '2021-05-04'),
(4431, 384, '2021-05-04'),
(4432, 514, '2021-05-04'),
(4433, 471, '2021-05-04'),
(4434, 335, '2021-05-04'),
(4435, 488, '2021-05-04'),
(4436, 402, '2021-05-04'),
(4437, 434, '2021-05-04'),
(4438, 516, '2021-05-04'),
(4439, 427, '2021-05-04'),
(4440, 386, '2021-05-04'),
(4441, 387, '2021-05-04'),
(4442, 436, '2021-05-04'),
(4443, 458, '2021-05-04'),
(4444, 459, '2021-05-04'),
(4445, 460, '2021-05-04'),
(4446, 480, '2021-05-04'),
(4447, 498, '2021-05-04'),
(4448, 513, '2021-05-04'),
(4449, 506, '2021-05-04'),
(4450, 457, '2021-05-04'),
(4451, 515, '2021-05-04'),
(4452, 479, '2021-05-04'),
(4453, 516, '2021-05-04'),
(4454, 499, '2021-05-04'),
(4455, 429, '2021-05-04'),
(4456, 426, '2021-05-04'),
(4457, 427, '2021-05-04'),
(4458, 428, '2021-05-04'),
(4459, 431, '2021-05-04'),
(4460, 390, '2021-05-04'),
(4461, 387, '2021-05-04'),
(4462, 359, '2021-05-04'),
(4463, 430, '2021-05-05'),
(4464, 491, '2021-05-05'),
(4465, 411, '2021-05-05'),
(4466, 474, '2021-05-05'),
(4467, 395, '2021-05-05'),
(4468, 422, '2021-05-05'),
(4469, 391, '2021-05-05'),
(4470, 371, '2021-05-05'),
(4471, 379, '2021-05-05'),
(4472, 435, '2021-05-05'),
(4473, 495, '2021-05-05'),
(4474, 515, '2021-05-05'),
(4475, 496, '2021-05-05'),
(4476, 389, '2021-05-05'),
(4477, 417, '2021-05-05'),
(4478, 337, '2021-05-05'),
(4479, 406, '2021-05-05'),
(4480, 482, '2021-05-05'),
(4481, 366, '2021-05-05'),
(4482, 501, '2021-05-05'),
(4483, 516, '2021-05-05'),
(4484, 487, '2021-05-05'),
(4485, 501, '2021-05-05'),
(4486, 369, '2021-05-05'),
(4487, 360, '2021-05-05'),
(4488, 433, '2021-05-05'),
(4489, 328, '2021-05-05'),
(4490, 482, '2021-05-05'),
(4491, 490, '2021-05-05'),
(4492, 402, '2021-05-05'),
(4493, 513, '2021-05-05'),
(4494, 378, '2021-05-05'),
(4495, 510, '2021-05-05'),
(4496, 216, '2021-05-05'),
(4497, 516, '2021-05-05'),
(4498, 513, '2021-05-05'),
(4499, 461, '2021-05-05'),
(4500, 494, '2021-05-05'),
(4501, 403, '2021-05-05'),
(4502, 509, '2021-05-05'),
(4503, 484, '2021-05-05'),
(4504, 365, '2021-05-05'),
(4505, 507, '2021-05-05'),
(4506, 416, '2021-05-05'),
(4507, 480, '2021-05-05'),
(4508, 427, '2021-05-05'),
(4509, 485, '2021-05-05'),
(4510, 410, '2021-05-05'),
(4511, 341, '2021-05-05'),
(4512, 426, '2021-05-05'),
(4513, 490, '2021-05-05'),
(4514, 416, '2021-05-05'),
(4515, 479, '2021-05-05'),
(4516, 395, '2021-05-05'),
(4517, 373, '2021-05-05'),
(4518, 389, '2021-05-05'),
(4519, 407, '2021-05-05'),
(4520, 494, '2021-05-05'),
(4521, 397, '2021-05-05'),
(4522, 496, '2021-05-05'),
(4523, 500, '2021-05-06'),
(4524, 341, '2021-05-06'),
(4525, 409, '2021-05-06'),
(4526, 491, '2021-05-06'),
(4527, 454, '2021-05-06'),
(4528, 376, '2021-05-06'),
(4529, 429, '2021-05-06'),
(4530, 401, '2021-05-06'),
(4531, 382, '2021-05-06'),
(4532, 478, '2021-05-06'),
(4533, 413, '2021-05-06'),
(4534, 429, '2021-05-06'),
(4535, 484, '2021-05-06'),
(4536, 419, '2021-05-06'),
(4537, 473, '2021-05-06'),
(4538, 509, '2021-05-06'),
(4539, 514, '2021-05-06'),
(4540, 412, '2021-05-06'),
(4541, 508, '2021-05-06'),
(4542, 430, '2021-05-06'),
(4543, 465, '2021-05-06'),
(4544, 488, '2021-05-06'),
(4545, 438, '2021-05-06'),
(4546, 441, '2021-05-06'),
(4547, 492, '2021-05-06'),
(4548, 218, '2021-05-06'),
(4549, 387, '2021-05-06'),
(4550, 222, '2021-05-06'),
(4551, 476, '2021-05-06'),
(4552, 480, '2021-05-06'),
(4553, 481, '2021-05-06'),
(4554, 393, '2021-05-06'),
(4555, 515, '2021-05-06'),
(4556, 488, '2021-05-06'),
(4557, 420, '2021-05-06'),
(4558, 496, '2021-05-06'),
(4559, 429, '2021-05-06'),
(4560, 384, '2021-05-06'),
(4561, 470, '2021-05-06'),
(4562, 469, '2021-05-06'),
(4563, 471, '2021-05-06'),
(4564, 453, '2021-05-06'),
(4565, 462, '2021-05-06'),
(4566, 370, '2021-05-06'),
(4567, 513, '2021-05-06'),
(4568, 513, '2021-05-06'),
(4569, 493, '2021-05-06'),
(4570, 459, '2021-05-06'),
(4571, 495, '2021-05-06'),
(4572, 219, '2021-05-06'),
(4573, 483, '2021-05-06'),
(4574, 493, '2021-05-06'),
(4575, 220, '2021-05-06'),
(4576, 428, '2021-05-06'),
(4577, 507, '2021-05-06'),
(4578, 442, '2021-05-06'),
(4579, 359, '2021-05-06'),
(4580, 374, '2021-05-06'),
(4581, 328, '2021-05-06'),
(4582, 473, '2021-05-06'),
(4583, 476, '2021-05-06'),
(4584, 486, '2021-05-06'),
(4585, 464, '2021-05-06'),
(4586, 430, '2021-05-06'),
(4587, 466, '2021-05-06'),
(4588, 415, '2021-05-06'),
(4589, 458, '2021-05-06'),
(4590, 458, '2021-05-06'),
(4591, 459, '2021-05-06'),
(4592, 460, '2021-05-06'),
(4593, 480, '2021-05-06'),
(4594, 498, '2021-05-06'),
(4595, 513, '2021-05-06'),
(4596, 506, '2021-05-06'),
(4597, 457, '2021-05-06'),
(4598, 515, '2021-05-06'),
(4599, 479, '2021-05-06'),
(4600, 516, '2021-05-06'),
(4601, 499, '2021-05-06'),
(4602, 429, '2021-05-06'),
(4603, 426, '2021-05-06'),
(4604, 427, '2021-05-06'),
(4605, 428, '2021-05-06'),
(4606, 490, '2021-05-06'),
(4607, 494, '2021-05-06'),
(4608, 426, '2021-05-06'),
(4609, 483, '2021-05-06'),
(4610, 408, '2021-05-06'),
(4611, 211, '2021-05-07'),
(4612, 457, '2021-05-07'),
(4613, 418, '2021-05-07'),
(4614, 487, '2021-05-07'),
(4615, 491, '2021-05-07'),
(4616, 427, '2021-05-07'),
(4617, 427, '2021-05-07'),
(4618, 498, '2021-05-07'),
(4619, 472, '2021-05-07'),
(4620, 516, '2021-05-07'),
(4621, 490, '2021-05-07'),
(4622, 460, '2021-05-07'),
(4623, 345, '2021-05-07'),
(4624, 414, '2021-05-07'),
(4625, 475, '2021-05-07'),
(4626, 511, '2021-05-07'),
(4627, 342, '2021-05-07'),
(4628, 389, '2021-05-07'),
(4629, 395, '2021-05-07'),
(4630, 431, '2021-05-07'),
(4631, 495, '2021-05-07'),
(4632, 459, '2021-05-07'),
(4633, 489, '2021-05-07'),
(4634, 406, '2021-05-07'),
(4635, 488, '2021-05-07'),
(4636, 215, '2021-05-07'),
(4637, 508, '2021-05-07'),
(4638, 490, '2021-05-07'),
(4639, 426, '2021-05-07'),
(4640, 515, '2021-05-07'),
(4641, 368, '2021-05-07'),
(4642, 463, '2021-05-07'),
(4643, 417, '2021-05-07'),
(4644, 468, '2021-05-07'),
(4645, 440, '2021-05-07'),
(4646, 489, '2021-05-07'),
(4647, 501, '2021-05-07'),
(4648, 430, '2021-05-07'),
(4649, 392, '2021-05-08'),
(4650, 412, '2021-05-08'),
(4651, 481, '2021-05-08'),
(4652, 210, '2021-05-08'),
(4653, 482, '2021-05-08'),
(4654, 462, '2021-05-08'),
(4655, 431, '2021-05-08'),
(4656, 493, '2021-05-08'),
(4657, 484, '2021-05-08'),
(4658, 485, '2021-05-08'),
(4659, 500, '2021-05-08'),
(4660, 342, '2021-05-08'),
(4661, 392, '2021-05-08'),
(4662, 470, '2021-05-08'),
(4663, 467, '2021-05-08'),
(4664, 454, '2021-05-08'),
(4665, 449, '2021-05-08'),
(4666, 478, '2021-05-08'),
(4667, 497, '2021-05-08'),
(4668, 377, '2021-05-08'),
(4669, 366, '2021-05-08'),
(4670, 373, '2021-05-08'),
(4671, 456, '2021-05-08'),
(4672, 507, '2021-05-08'),
(4673, 419, '2021-05-08'),
(4674, 413, '2021-05-08'),
(4675, 492, '2021-05-08'),
(4676, 489, '2021-05-08'),
(4677, 473, '2021-05-08'),
(4678, 495, '2021-05-08'),
(4679, 496, '2021-05-08'),
(4680, 491, '2021-05-08'),
(4681, 373, '2021-05-08'),
(4682, 376, '2021-05-08'),
(4683, 367, '2021-05-08'),
(4684, 376, '2021-05-08'),
(4685, 370, '2021-05-08'),
(4686, 385, '2021-05-08'),
(4687, 382, '2021-05-08'),
(4688, 441, '2021-05-08'),
(4689, 377, '2021-05-08'),
(4690, 508, '2021-05-08'),
(4691, 494, '2021-05-08'),
(4692, 209, '2021-05-08'),
(4693, 334, '2021-05-08'),
(4694, 364, '2021-05-08'),
(4695, 331, '2021-05-08'),
(4696, 407, '2021-05-08'),
(4697, 407, '2021-05-08'),
(4698, 334, '2021-05-08'),
(4699, 476, '2021-05-08'),
(4700, 427, '2021-05-08'),
(4701, 330, '2021-05-08'),
(4702, 331, '2021-05-08'),
(4703, 484, '2021-05-08'),
(4704, 510, '2021-05-08'),
(4705, 514, '2021-05-08'),
(4706, 511, '2021-05-08'),
(4707, 373, '2021-05-08'),
(4708, 509, '2021-05-09'),
(4709, 480, '2021-05-09'),
(4710, 511, '2021-05-09'),
(4711, 474, '2021-05-09'),
(4712, 429, '2021-05-09'),
(4713, 412, '2021-05-09'),
(4714, 496, '2021-05-09'),
(4715, 214, '2021-05-09'),
(4716, 431, '2021-05-09'),
(4717, 420, '2021-05-09'),
(4718, 345, '2021-05-09'),
(4719, 370, '2021-05-09'),
(4720, 330, '2021-05-09'),
(4721, 485, '2021-05-09'),
(4722, 339, '2021-05-09'),
(4723, 392, '2021-05-09'),
(4724, 359, '2021-05-09'),
(4725, 416, '2021-05-09'),
(4726, 327, '2021-05-09'),
(4727, 215, '2021-05-09'),
(4728, 428, '2021-05-09'),
(4729, 483, '2021-05-09'),
(4730, 497, '2021-05-09'),
(4731, 374, '2021-05-09'),
(4732, 356, '2021-05-09'),
(4733, 349, '2021-05-09'),
(4734, 415, '2021-05-09'),
(4735, 357, '2021-05-09'),
(4736, 358, '2021-05-09'),
(4737, 425, '2021-05-09'),
(4738, 464, '2021-05-09'),
(4739, 365, '2021-05-09'),
(4740, 415, '2021-05-09'),
(4741, 356, '2021-05-09'),
(4742, 211, '2021-05-09'),
(4743, 350, '2021-05-09'),
(4744, 351, '2021-05-09'),
(4745, 406, '2021-05-09'),
(4746, 424, '2021-05-09'),
(4747, 328, '2021-05-09'),
(4748, 385, '2021-05-09'),
(4749, 217, '2021-05-09'),
(4750, 380, '2021-05-09'),
(4751, 401, '2021-05-09'),
(4752, 357, '2021-05-09'),
(4753, 502, '2021-05-09'),
(4754, 408, '2021-05-09'),
(4755, 398, '2021-05-09'),
(4756, 423, '2021-05-09'),
(4757, 405, '2021-05-09'),
(4758, 395, '2021-05-09'),
(4759, 375, '2021-05-09'),
(4760, 395, '2021-05-09'),
(4761, 431, '2021-05-09'),
(4762, 378, '2021-05-09'),
(4763, 350, '2021-05-09'),
(4764, 425, '2021-05-09'),
(4765, 428, '2021-05-09'),
(4766, 401, '2021-05-09'),
(4767, 427, '2021-05-09'),
(4768, 491, '2021-05-09'),
(4769, 213, '2021-05-09'),
(4770, 366, '2021-05-09'),
(4771, 422, '2021-05-09'),
(4772, 388, '2021-05-09'),
(4773, 482, '2021-05-09'),
(4774, 367, '2021-05-09'),
(4775, 410, '2021-05-09'),
(4776, 337, '2021-05-09'),
(4777, 421, '2021-05-09'),
(4778, 335, '2021-05-09'),
(4779, 328, '2021-05-09'),
(4780, 491, '2021-05-09'),
(4781, 515, '2021-05-09'),
(4782, 505, '2021-05-09'),
(4783, 506, '2021-05-09'),
(4784, 380, '2021-05-09'),
(4785, 416, '2021-05-09'),
(4786, 400, '2021-05-09'),
(4787, 339, '2021-05-09'),
(4788, 327, '2021-05-09'),
(4789, 404, '2021-05-09'),
(4790, 498, '2021-05-09'),
(4791, 492, '2021-05-09'),
(4792, 369, '2021-05-09'),
(4793, 403, '2021-05-09'),
(4794, 407, '2021-05-09'),
(4795, 408, '2021-05-09'),
(4796, 472, '2021-05-09'),
(4797, 385, '2021-05-09'),
(4798, 348, '2021-05-09'),
(4799, 457, '2021-05-09'),
(4800, 409, '2021-05-09'),
(4801, 354, '2021-05-09'),
(4802, 382, '2021-05-09'),
(4803, 391, '2021-05-09'),
(4804, 460, '2021-05-09'),
(4805, 379, '2021-05-09'),
(4806, 353, '2021-05-09'),
(4807, 352, '2021-05-09'),
(4808, 361, '2021-05-09'),
(4809, 424, '2021-05-09'),
(4810, 411, '2021-05-09'),
(4811, 384, '2021-05-09'),
(4812, 508, '2021-05-09'),
(4813, 336, '2021-05-09'),
(4814, 359, '2021-05-09'),
(4815, 475, '2021-05-09'),
(4816, 343, '2021-05-09'),
(4817, 397, '2021-05-09'),
(4818, 412, '2021-05-09'),
(4819, 383, '2021-05-09'),
(4820, 427, '2021-05-09'),
(4821, 364, '2021-05-09'),
(4822, 415, '2021-05-09'),
(4823, 464, '2021-05-09'),
(4824, 372, '2021-05-09'),
(4825, 386, '2021-05-09'),
(4826, 381, '2021-05-09'),
(4827, 417, '2021-05-09'),
(4828, 346, '2021-05-10'),
(4829, 394, '2021-05-10'),
(4830, 406, '2021-05-10'),
(4831, 361, '2021-05-10'),
(4832, 381, '2021-05-10'),
(4833, 390, '2021-05-10'),
(4834, 362, '2021-05-10'),
(4835, 344, '2021-05-10'),
(4836, 215, '2021-05-10'),
(4837, 378, '2021-05-10'),
(4838, 389, '2021-05-10'),
(4839, 413, '2021-05-10'),
(4840, 414, '2021-05-10'),
(4841, 217, '2021-05-10'),
(4842, 363, '2021-05-10'),
(4843, 387, '2021-05-10'),
(4844, 380, '2021-05-10'),
(4845, 508, '2021-05-10'),
(4846, 371, '2021-05-10'),
(4847, 360, '2021-05-10'),
(4848, 331, '2021-05-10'),
(4849, 351, '2021-05-10'),
(4850, 454, '2021-05-10'),
(4851, 388, '2021-05-10'),
(4852, 374, '2021-05-10'),
(4853, 399, '2021-05-10'),
(4854, 393, '2021-05-10'),
(4855, 344, '2021-05-10'),
(4856, 368, '2021-05-10'),
(4857, 423, '2021-05-10'),
(4858, 463, '2021-05-10'),
(4859, 345, '2021-05-10'),
(4860, 343, '2021-05-10'),
(4861, 412, '2021-05-10'),
(4862, 440, '2021-05-10'),
(4863, 396, '2021-05-10'),
(4864, 397, '2021-05-10'),
(4865, 420, '2021-05-10'),
(4866, 489, '2021-05-10'),
(4867, 389, '2021-05-10'),
(4868, 369, '2021-05-10'),
(4869, 390, '2021-05-10'),
(4870, 430, '2021-05-10'),
(4871, 375, '2021-05-10'),
(4872, 348, '2021-05-10'),
(4873, 392, '2021-05-10'),
(4874, 349, '2021-05-10'),
(4875, 372, '2021-05-10'),
(4876, 345, '2021-05-10'),
(4877, 384, '2021-05-10'),
(4878, 431, '2021-05-10'),
(4879, 386, '2021-05-10'),
(4880, 481, '2021-05-10'),
(4881, 379, '2021-05-10'),
(4882, 515, '2021-05-10'),
(4883, 462, '2021-05-10'),
(4884, 347, '2021-05-10'),
(4885, 431, '2021-05-10'),
(4886, 363, '2021-05-10'),
(4887, 493, '2021-05-10'),
(4888, 387, '2021-05-10'),
(4889, 368, '2021-05-10'),
(4890, 394, '2021-05-10'),
(4891, 405, '2021-05-10'),
(4892, 360, '2021-05-10'),
(4893, 414, '2021-05-10'),
(4894, 371, '2021-05-10'),
(4895, 374, '2021-05-10'),
(4896, 417, '2021-05-10'),
(4897, 413, '2021-05-10'),
(4898, 353, '2021-05-10'),
(4899, 467, '2021-05-10'),
(4900, 340, '2021-05-10'),
(4901, 456, '2021-05-10'),
(4902, 340, '2021-05-10'),
(4903, 490, '2021-05-10'),
(4904, 493, '2021-05-10'),
(4905, 458, '2021-05-10'),
(4906, 459, '2021-05-10'),
(4907, 460, '2021-05-10'),
(4908, 480, '2021-05-10'),
(4909, 498, '2021-05-10'),
(4910, 513, '2021-05-10'),
(4911, 506, '2021-05-10'),
(4912, 457, '2021-05-10'),
(4913, 515, '2021-05-10'),
(4914, 479, '2021-05-10'),
(4915, 516, '2021-05-10'),
(4916, 499, '2021-05-10'),
(4917, 429, '2021-05-10'),
(4918, 426, '2021-05-10'),
(4919, 427, '2021-05-10'),
(4920, 428, '2021-05-10'),
(4921, 428, '2021-05-10'),
(4922, 491, '2021-05-10'),
(4923, 413, '2021-05-10'),
(4924, 340, '2021-05-10'),
(4925, 440, '2021-05-11'),
(4926, 412, '2021-05-11'),
(4927, 423, '2021-05-11'),
(4928, 398, '2021-05-11'),
(4929, 346, '2021-05-11'),
(4930, 510, '2021-05-11'),
(4931, 435, '2021-05-11'),
(4932, 410, '2021-05-11'),
(4933, 507, '2021-05-11'),
(4934, 421, '2021-05-11'),
(4935, 426, '2021-05-11'),
(4936, 499, '2021-05-11'),
(4937, 401, '2021-05-11'),
(4938, 516, '2021-05-11'),
(4939, 352, '2021-05-11'),
(4940, 411, '2021-05-11'),
(4941, 393, '2021-05-11'),
(4942, 420, '2021-05-11'),
(4943, 424, '2021-05-11'),
(4944, 391, '2021-05-11'),
(4945, 367, '2021-05-11'),
(4946, 421, '2021-05-11'),
(4947, 504, '2021-05-11'),
(4948, 427, '2021-05-11'),
(4949, 365, '2021-05-11'),
(4950, 435, '2021-05-11'),
(4951, 355, '2021-05-11'),
(4952, 355, '2021-05-11'),
(4953, 337, '2021-05-11'),
(4954, 422, '2021-05-11'),
(4955, 362, '2021-05-11'),
(4956, 335, '2021-05-11'),
(4957, 454, '2021-05-11'),
(4958, 376, '2021-05-11'),
(4959, 474, '2021-05-11'),
(4960, 214, '2021-05-11'),
(4961, 430, '2021-05-11'),
(4962, 501, '2021-05-11'),
(4963, 509, '2021-05-11'),
(4964, 381, '2021-05-11'),
(4965, 354, '2021-05-11'),
(4966, 514, '2021-05-11'),
(4967, 399, '2021-05-11'),
(4968, 401, '2021-05-11'),
(4969, 416, '2021-05-11'),
(4970, 341, '2021-05-11'),
(4971, 336, '2021-05-11'),
(4972, 515, '2021-05-11'),
(4973, 516, '2021-05-11'),
(4974, 491, '2021-05-11'),
(4975, 428, '2021-05-11'),
(4976, 497, '2021-05-11'),
(4977, 430, '2021-05-11'),
(4978, 429, '2021-05-11'),
(4979, 429, '2021-05-11'),
(4980, 215, '2021-05-11'),
(4981, 213, '2021-05-11'),
(4982, 406, '2021-05-11'),
(4983, 506, '2021-05-11'),
(4984, 212, '2021-05-11'),
(4985, 488, '2021-05-11'),
(4986, 413, '2021-05-11'),
(4987, 418, '2021-05-11'),
(4988, 214, '2021-05-11'),
(4989, 209, '2021-05-11'),
(4990, 211, '2021-05-11'),
(4991, 373, '2021-05-11'),
(4992, 210, '2021-05-11'),
(4993, 448, '2021-05-11'),
(4994, 399, '2021-05-11'),
(4995, 216, '2021-05-11'),
(4996, 492, '2021-05-11'),
(4997, 431, '2021-05-11'),
(4998, 481, '2021-05-11'),
(4999, 342, '2021-05-11'),
(5000, 502, '2021-05-11'),
(5001, 477, '2021-05-12'),
(5002, 383, '2021-05-12'),
(5003, 420, '2021-05-12'),
(5004, 212, '2021-05-12'),
(5005, 508, '2021-05-12'),
(5006, 495, '2021-05-12'),
(5007, 488, '2021-05-12'),
(5008, 401, '2021-05-12'),
(5009, 513, '2021-05-12'),
(5010, 496, '2021-05-12'),
(5011, 513, '2021-05-12'),
(5012, 371, '2021-05-12'),
(5013, 341, '2021-05-12'),
(5014, 430, '2021-05-12'),
(5015, 441, '2021-05-12'),
(5016, 493, '2021-05-12'),
(5017, 461, '2021-05-12'),
(5018, 210, '2021-05-12'),
(5019, 499, '2021-05-12'),
(5020, 217, '2021-05-12'),
(5021, 515, '2021-05-12'),
(5022, 516, '2021-05-12'),
(5023, 515, '2021-05-12'),
(5024, 514, '2021-05-12'),
(5025, 511, '2021-05-12'),
(5026, 505, '2021-05-12'),
(5027, 507, '2021-05-12'),
(5028, 507, '2021-05-12'),
(5029, 366, '2021-05-12'),
(5030, 494, '2021-05-12'),
(5031, 515, '2021-05-12'),
(5032, 211, '2021-05-12'),
(5033, 215, '2021-05-12'),
(5034, 213, '2021-05-12'),
(5035, 209, '2021-05-12'),
(5036, 334, '2021-05-12'),
(5037, 212, '2021-05-12'),
(5038, 453, '2021-05-12'),
(5039, 210, '2021-05-12'),
(5040, 216, '2021-05-12'),
(5041, 481, '2021-05-12'),
(5042, 516, '2021-05-13'),
(5043, 489, '2021-05-13'),
(5044, 341, '2021-05-13'),
(5045, 213, '2021-05-13'),
(5046, 508, '2021-05-13'),
(5047, 515, '2021-05-13'),
(5048, 490, '2021-05-13'),
(5049, 431, '2021-05-13'),
(5050, 347, '2021-05-13'),
(5051, 370, '2021-05-13');
INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(5052, 214, '2021-05-13'),
(5053, 429, '2021-05-13'),
(5054, 426, '2021-05-13'),
(5055, 357, '2021-05-13'),
(5056, 401, '2021-05-13'),
(5057, 211, '2021-05-13'),
(5058, 421, '2021-05-13'),
(5059, 340, '2021-05-13'),
(5060, 491, '2021-05-13'),
(5061, 499, '2021-05-13'),
(5062, 506, '2021-05-13'),
(5063, 412, '2021-05-13'),
(5064, 469, '2021-05-13'),
(5065, 341, '2021-05-13'),
(5066, 367, '2021-05-13'),
(5067, 502, '2021-05-13'),
(5068, 447, '2021-05-13'),
(5069, 425, '2021-05-13'),
(5070, 350, '2021-05-13'),
(5071, 492, '2021-05-13'),
(5072, 358, '2021-05-13'),
(5073, 357, '2021-05-13'),
(5074, 327, '2021-05-13'),
(5075, 425, '2021-05-13'),
(5076, 505, '2021-05-13'),
(5077, 504, '2021-05-13'),
(5078, 416, '2021-05-14'),
(5079, 455, '2021-05-14'),
(5080, 507, '2021-05-14'),
(5081, 411, '2021-05-14'),
(5082, 495, '2021-05-14'),
(5083, 452, '2021-05-14'),
(5084, 510, '2021-05-14'),
(5085, 428, '2021-05-14'),
(5086, 413, '2021-05-14'),
(5087, 373, '2021-05-14'),
(5088, 496, '2021-05-14'),
(5089, 214, '2021-05-14'),
(5090, 450, '2021-05-14'),
(5091, 431, '2021-05-14'),
(5092, 448, '2021-05-14'),
(5093, 509, '2021-05-14'),
(5094, 510, '2021-05-14'),
(5095, 511, '2021-05-14'),
(5096, 371, '2021-05-14'),
(5097, 508, '2021-05-14'),
(5098, 514, '2021-05-14'),
(5099, 374, '2021-05-14'),
(5100, 491, '2021-05-14'),
(5101, 428, '2021-05-14'),
(5102, 427, '2021-05-14'),
(5103, 494, '2021-05-14'),
(5104, 343, '2021-05-14'),
(5105, 503, '2021-05-14'),
(5106, 489, '2021-05-15'),
(5107, 366, '2021-05-15'),
(5108, 515, '2021-05-15'),
(5109, 216, '2021-05-15'),
(5110, 497, '2021-05-15'),
(5111, 480, '2021-05-15'),
(5112, 358, '2021-05-15'),
(5113, 422, '2021-05-15'),
(5114, 393, '2021-05-15'),
(5115, 516, '2021-05-15'),
(5116, 449, '2021-05-15'),
(5117, 396, '2021-05-15'),
(5118, 334, '2021-05-15'),
(5119, 211, '2021-05-15'),
(5120, 340, '2021-05-15'),
(5121, 343, '2021-05-15'),
(5122, 210, '2021-05-15'),
(5123, 491, '2021-05-15'),
(5124, 511, '2021-05-15'),
(5125, 370, '2021-05-15'),
(5126, 438, '2021-05-15'),
(5127, 429, '2021-05-15'),
(5128, 457, '2021-05-15'),
(5129, 435, '2021-05-15'),
(5130, 481, '2021-05-15'),
(5131, 509, '2021-05-15'),
(5132, 486, '2021-05-15'),
(5133, 479, '2021-05-15'),
(5134, 499, '2021-05-15'),
(5135, 447, '2021-05-15'),
(5136, 480, '2021-05-15'),
(5137, 452, '2021-05-15'),
(5138, 440, '2021-05-15'),
(5139, 502, '2021-05-15'),
(5140, 504, '2021-05-15'),
(5141, 217, '2021-05-15'),
(5142, 498, '2021-05-15'),
(5143, 432, '2021-05-15'),
(5144, 459, '2021-05-16'),
(5145, 433, '2021-05-16'),
(5146, 485, '2021-05-16'),
(5147, 458, '2021-05-16'),
(5148, 350, '2021-05-16'),
(5149, 469, '2021-05-16'),
(5150, 388, '2021-05-16'),
(5151, 507, '2021-05-16'),
(5152, 460, '2021-05-16'),
(5153, 505, '2021-05-16'),
(5154, 506, '2021-05-16'),
(5155, 434, '2021-05-16'),
(5156, 346, '2021-05-16'),
(5157, 327, '2021-05-16'),
(5158, 212, '2021-05-16'),
(5159, 362, '2021-05-16'),
(5160, 487, '2021-05-16'),
(5161, 441, '2021-05-16'),
(5162, 425, '2021-05-16'),
(5163, 439, '2021-05-16'),
(5164, 363, '2021-05-16'),
(5165, 457, '2021-05-16'),
(5166, 398, '2021-05-16'),
(5167, 456, '2021-05-16'),
(5168, 452, '2021-05-16'),
(5169, 510, '2021-05-16'),
(5170, 381, '2021-05-16'),
(5171, 493, '2021-05-16'),
(5172, 490, '2021-05-16'),
(5173, 386, '2021-05-16'),
(5174, 507, '2021-05-16'),
(5175, 516, '2021-05-16'),
(5176, 426, '2021-05-16'),
(5177, 450, '2021-05-16'),
(5178, 428, '2021-05-16'),
(5179, 514, '2021-05-16'),
(5180, 372, '2021-05-16'),
(5181, 427, '2021-05-16'),
(5182, 491, '2021-05-16'),
(5183, 430, '2021-05-16'),
(5184, 455, '2021-05-17'),
(5185, 429, '2021-05-17'),
(5186, 509, '2021-05-17'),
(5187, 429, '2021-05-17'),
(5188, 511, '2021-05-17'),
(5189, 507, '2021-05-17'),
(5190, 488, '2021-05-17'),
(5191, 343, '2021-05-17'),
(5192, 460, '2021-05-17'),
(5193, 495, '2021-05-17'),
(5194, 334, '2021-05-17'),
(5195, 209, '2021-05-17'),
(5196, 506, '2021-05-17'),
(5197, 488, '2021-05-17'),
(5198, 513, '2021-05-17'),
(5199, 492, '2021-05-17'),
(5200, 405, '2021-05-17'),
(5201, 418, '2021-05-17'),
(5202, 475, '2021-05-17'),
(5203, 400, '2021-05-17'),
(5204, 496, '2021-05-17'),
(5205, 497, '2021-05-17'),
(5206, 513, '2021-05-17'),
(5207, 382, '2021-05-17'),
(5208, 430, '2021-05-17'),
(5209, 445, '2021-05-17'),
(5210, 393, '2021-05-17'),
(5211, 458, '2021-05-17'),
(5212, 493, '2021-05-17'),
(5213, 465, '2021-05-17'),
(5214, 496, '2021-05-17'),
(5215, 513, '2021-05-17'),
(5216, 355, '2021-05-17'),
(5217, 218, '2021-05-17'),
(5218, 400, '2021-05-17'),
(5219, 507, '2021-05-17'),
(5220, 223, '2021-05-17'),
(5221, 349, '2021-05-18'),
(5222, 494, '2021-05-18'),
(5223, 414, '2021-05-18'),
(5224, 339, '2021-05-18'),
(5225, 376, '2021-05-18'),
(5226, 510, '2021-05-18'),
(5227, 435, '2021-05-18'),
(5228, 455, '2021-05-18'),
(5229, 428, '2021-05-18'),
(5230, 430, '2021-05-18'),
(5231, 439, '2021-05-18'),
(5232, 391, '2021-05-18'),
(5233, 350, '2021-05-18'),
(5234, 364, '2021-05-18'),
(5235, 399, '2021-05-18'),
(5236, 481, '2021-05-18'),
(5237, 510, '2021-05-18'),
(5238, 516, '2021-05-18'),
(5239, 450, '2021-05-18'),
(5240, 489, '2021-05-18'),
(5241, 515, '2021-05-18'),
(5242, 508, '2021-05-18'),
(5243, 431, '2021-05-18'),
(5244, 355, '2021-05-18'),
(5245, 427, '2021-05-18'),
(5246, 431, '2021-05-18'),
(5247, 334, '2021-05-18'),
(5248, 418, '2021-05-18'),
(5249, 431, '2021-05-18'),
(5250, 426, '2021-05-18'),
(5251, 367, '2021-05-18'),
(5252, 417, '2021-05-19'),
(5253, 435, '2021-05-19'),
(5254, 440, '2021-05-19'),
(5255, 432, '2021-05-19'),
(5256, 492, '2021-05-19'),
(5257, 433, '2021-05-19'),
(5258, 434, '2021-05-19'),
(5259, 339, '2021-05-19'),
(5260, 441, '2021-05-19'),
(5261, 439, '2021-05-19'),
(5262, 503, '2021-05-19'),
(5263, 345, '2021-05-19'),
(5264, 507, '2021-05-19'),
(5265, 212, '2021-05-19'),
(5266, 458, '2021-05-19'),
(5267, 457, '2021-05-19'),
(5268, 507, '2021-05-19'),
(5269, 495, '2021-05-19'),
(5270, 376, '2021-05-19'),
(5271, 441, '2021-05-19'),
(5272, 458, '2021-05-19'),
(5273, 502, '2021-05-19'),
(5274, 479, '2021-05-19'),
(5275, 499, '2021-05-19'),
(5276, 442, '2021-05-19'),
(5277, 410, '2021-05-19'),
(5278, 438, '2021-05-19'),
(5279, 445, '2021-05-19'),
(5280, 486, '2021-05-19'),
(5281, 431, '2021-05-19'),
(5282, 400, '2021-05-19'),
(5283, 460, '2021-05-19'),
(5284, 436, '2021-05-19'),
(5285, 498, '2021-05-19'),
(5286, 334, '2021-05-19'),
(5287, 508, '2021-05-19'),
(5288, 422, '2021-05-20'),
(5289, 446, '2021-05-20'),
(5290, 221, '2021-05-20'),
(5291, 505, '2021-05-20'),
(5292, 428, '2021-05-20'),
(5293, 217, '2021-05-20'),
(5294, 214, '2021-05-20'),
(5295, 480, '2021-05-20'),
(5296, 409, '2021-05-20'),
(5297, 429, '2021-05-20'),
(5298, 474, '2021-05-20'),
(5299, 446, '2021-05-20'),
(5300, 476, '2021-05-20'),
(5301, 427, '2021-05-20'),
(5302, 478, '2021-05-20'),
(5303, 507, '2021-05-20'),
(5304, 472, '2021-05-20'),
(5305, 218, '2021-05-20'),
(5306, 355, '2021-05-20'),
(5307, 400, '2021-05-20'),
(5308, 485, '2021-05-20'),
(5309, 514, '2021-05-20'),
(5310, 459, '2021-05-20'),
(5311, 405, '2021-05-20'),
(5312, 509, '2021-05-20'),
(5313, 437, '2021-05-20'),
(5314, 223, '2021-05-20'),
(5315, 423, '2021-05-20'),
(5316, 514, '2021-05-20'),
(5317, 511, '2021-05-20'),
(5318, 473, '2021-05-20'),
(5319, 516, '2021-05-20'),
(5320, 487, '2021-05-20'),
(5321, 217, '2021-05-20'),
(5322, 510, '2021-05-20'),
(5323, 491, '2021-05-20'),
(5324, 352, '2021-05-20'),
(5325, 334, '2021-05-20'),
(5326, 349, '2021-05-20'),
(5327, 443, '2021-05-20'),
(5328, 500, '2021-05-20'),
(5329, 436, '2021-05-20'),
(5330, 544, '2021-05-20'),
(5331, 546, '2021-05-20'),
(5332, 547, '2021-05-20'),
(5333, 331, '2021-05-20'),
(5334, 482, '2021-05-20'),
(5335, 484, '2021-05-20'),
(5336, 483, '2021-05-20'),
(5337, 347, '2021-05-20'),
(5338, 419, '2021-05-20'),
(5339, 330, '2021-05-20'),
(5340, 331, '2021-05-20'),
(5341, 485, '2021-05-20'),
(5342, 496, '2021-05-21'),
(5343, 431, '2021-05-21'),
(5344, 331, '2021-05-21'),
(5345, 427, '2021-05-21'),
(5346, 494, '2021-05-21'),
(5347, 421, '2021-05-21'),
(5348, 440, '2021-05-21'),
(5349, 222, '2021-05-21'),
(5350, 211, '2021-05-21'),
(5351, 218, '2021-05-21'),
(5352, 529, '2021-05-21'),
(5353, 523, '2021-05-21'),
(5354, 493, '2021-05-21'),
(5355, 489, '2021-05-21'),
(5356, 490, '2021-05-21'),
(5357, 426, '2021-05-21'),
(5358, 481, '2021-05-21'),
(5359, 490, '2021-05-22'),
(5360, 218, '2021-05-22'),
(5361, 219, '2021-05-22'),
(5362, 220, '2021-05-22'),
(5363, 491, '2021-05-22'),
(5364, 430, '2021-05-22'),
(5365, 547, '2021-05-22'),
(5366, 522, '2021-05-22'),
(5367, 529, '2021-05-22'),
(5368, 527, '2021-05-22'),
(5369, 519, '2021-05-22'),
(5370, 546, '2021-05-22'),
(5371, 422, '2021-05-22'),
(5372, 347, '2021-05-22'),
(5373, 428, '2021-05-22'),
(5374, 429, '2021-05-22'),
(5375, 546, '2021-05-22'),
(5376, 532, '2021-05-22'),
(5377, 547, '2021-05-22'),
(5378, 438, '2021-05-22'),
(5379, 540, '2021-05-22'),
(5380, 547, '2021-05-22'),
(5381, 547, '2021-05-22'),
(5382, 531, '2021-05-22'),
(5383, 541, '2021-05-22'),
(5384, 540, '2021-05-22'),
(5385, 539, '2021-05-22'),
(5386, 538, '2021-05-22'),
(5387, 537, '2021-05-22'),
(5388, 536, '2021-05-22'),
(5389, 535, '2021-05-22'),
(5390, 532, '2021-05-22'),
(5391, 530, '2021-05-22'),
(5392, 529, '2021-05-22'),
(5393, 331, '2021-05-22'),
(5394, 528, '2021-05-22'),
(5395, 525, '2021-05-22'),
(5396, 524, '2021-05-22'),
(5397, 522, '2021-05-22'),
(5398, 521, '2021-05-22'),
(5399, 521, '2021-05-22'),
(5400, 519, '2021-05-22'),
(5401, 518, '2021-05-22'),
(5402, 538, '2021-05-22'),
(5403, 536, '2021-05-22'),
(5404, 535, '2021-05-22'),
(5405, 541, '2021-05-22'),
(5406, 539, '2021-05-22'),
(5407, 527, '2021-05-22'),
(5408, 547, '2021-05-22'),
(5409, 545, '2021-05-22'),
(5410, 518, '2021-05-22'),
(5411, 519, '2021-05-22'),
(5412, 520, '2021-05-22'),
(5413, 521, '2021-05-22'),
(5414, 530, '2021-05-22'),
(5415, 530, '2021-05-22'),
(5416, 531, '2021-05-22'),
(5417, 540, '2021-05-22'),
(5418, 547, '2021-05-22'),
(5419, 543, '2021-05-22'),
(5420, 542, '2021-05-22'),
(5421, 541, '2021-05-22'),
(5422, 523, '2021-05-22'),
(5423, 524, '2021-05-22'),
(5424, 526, '2021-05-22'),
(5425, 543, '2021-05-22'),
(5426, 547, '2021-05-22'),
(5427, 427, '2021-05-22'),
(5428, 495, '2021-05-22'),
(5429, 517, '2021-05-22'),
(5430, 547, '2021-05-22'),
(5431, 521, '2021-05-22'),
(5432, 546, '2021-05-22'),
(5433, 330, '2021-05-22'),
(5434, 488, '2021-05-22'),
(5435, 547, '2021-05-22'),
(5436, 429, '2021-05-22'),
(5437, 523, '2021-05-22'),
(5438, 528, '2021-05-22'),
(5439, 526, '2021-05-22'),
(5440, 521, '2021-05-22'),
(5441, 544, '2021-05-22'),
(5442, 539, '2021-05-22'),
(5443, 536, '2021-05-22'),
(5444, 211, '2021-05-22'),
(5445, 488, '2021-05-22'),
(5446, 215, '2021-05-22'),
(5447, 213, '2021-05-23'),
(5448, 216, '2021-05-23'),
(5449, 496, '2021-05-23'),
(5450, 492, '2021-05-23'),
(5451, 520, '2021-05-23'),
(5452, 522, '2021-05-23'),
(5453, 529, '2021-05-23'),
(5454, 527, '2021-05-23'),
(5455, 519, '2021-05-23'),
(5456, 546, '2021-05-23'),
(5457, 489, '2021-05-23'),
(5458, 496, '2021-05-23'),
(5459, 523, '2021-05-23'),
(5460, 528, '2021-05-23'),
(5461, 546, '2021-05-23'),
(5462, 222, '2021-05-23'),
(5463, 521, '2021-05-23'),
(5464, 519, '2021-05-23'),
(5465, 430, '2021-05-23'),
(5466, 482, '2021-05-23'),
(5467, 493, '2021-05-23'),
(5468, 221, '2021-05-23'),
(5469, 520, '2021-05-23'),
(5470, 518, '2021-05-23'),
(5471, 545, '2021-05-23'),
(5472, 544, '2021-05-23'),
(5473, 220, '2021-05-23'),
(5474, 219, '2021-05-23'),
(5475, 330, '2021-05-23'),
(5476, 484, '2021-05-23'),
(5477, 487, '2021-05-23'),
(5478, 483, '2021-05-23'),
(5479, 219, '2021-05-23'),
(5480, 481, '2021-05-23'),
(5481, 218, '2021-05-24'),
(5482, 221, '2021-05-24'),
(5483, 490, '2021-05-24'),
(5484, 223, '2021-05-24'),
(5485, 419, '2021-05-24'),
(5486, 541, '2021-05-24'),
(5487, 486, '2021-05-24'),
(5488, 489, '2021-05-24'),
(5489, 522, '2021-05-24'),
(5490, 494, '2021-05-24'),
(5491, 523, '2021-05-24'),
(5492, 519, '2021-05-24'),
(5493, 426, '2021-05-24'),
(5494, 547, '2021-05-24'),
(5495, 431, '2021-05-24'),
(5496, 223, '2021-05-24'),
(5497, 481, '2021-05-24'),
(5498, 431, '2021-05-24'),
(5499, 537, '2021-05-24'),
(5500, 222, '2021-05-24'),
(5501, 523, '2021-05-24'),
(5502, 538, '2021-05-24'),
(5503, 492, '2021-05-24'),
(5504, 438, '2021-05-24'),
(5505, 1694, '2021-05-24'),
(5506, 1694, '2021-05-24'),
(5507, 1593, '2021-05-24'),
(5508, 1694, '2021-05-24'),
(5509, 1694, '2021-05-24'),
(5510, 1694, '2021-05-24'),
(5511, 1694, '2021-05-24'),
(5512, 1694, '2021-05-24'),
(5513, 1694, '2021-05-24'),
(5514, 1683, '2021-05-24'),
(5515, 1694, '2021-05-24'),
(5516, 1694, '2021-05-24'),
(5517, 1313, '2021-05-24'),
(5518, 1313, '2021-05-24'),
(5519, 1694, '2021-05-24'),
(5520, 402, '2021-05-24'),
(5521, 390, '2021-05-24'),
(5522, 368, '2021-05-24'),
(5523, 366, '2021-05-24'),
(5524, 370, '2021-05-24'),
(5525, 389, '2021-05-24'),
(5526, 371, '2021-05-24'),
(5527, 387, '2021-05-24'),
(5528, 377, '2021-05-24'),
(5529, 390, '2021-05-24'),
(5530, 385, '2021-05-24'),
(5531, 391, '2021-05-24'),
(5532, 346, '2021-05-24'),
(5533, 386, '2021-05-24'),
(5534, 55, '2021-05-24'),
(5535, 49, '2021-05-24'),
(5536, 361, '2021-05-24'),
(5537, 112, '2021-05-24'),
(5538, 286, '2021-05-25'),
(5539, 398, '2021-05-25'),
(5540, 395, '2021-05-25'),
(5541, 394, '2021-05-25'),
(5542, 180, '2021-05-25'),
(5543, 122, '2021-05-25'),
(5544, 397, '2021-05-25'),
(5545, 392, '2021-05-25'),
(5546, 149, '2021-05-25'),
(5547, 290, '2021-05-25'),
(5548, 148, '2021-05-25'),
(5549, 292, '2021-05-25'),
(5550, 178, '2021-05-25'),
(5551, 314, '2021-05-25'),
(5552, 181, '2021-05-25'),
(5553, 391, '2021-05-25'),
(5554, 391, '2021-05-25'),
(5555, 391, '2021-05-25'),
(5556, 198, '2021-05-25'),
(5557, 22, '2021-05-25'),
(5558, 108, '2021-05-25'),
(5559, 108, '2021-05-25'),
(5560, 391, '2021-05-25'),
(5561, 390, '2021-05-25'),
(5562, 389, '2021-05-25'),
(5563, 387, '2021-05-25'),
(5564, 386, '2021-05-25'),
(5565, 391, '2021-05-25'),
(5566, 385, '2021-05-25'),
(5567, 390, '2021-05-25'),
(5568, 377, '2021-05-25'),
(5569, 389, '2021-05-25'),
(5570, 371, '2021-05-25'),
(5571, 387, '2021-05-25'),
(5572, 370, '2021-05-25'),
(5573, 386, '2021-05-25'),
(5574, 368, '2021-05-25'),
(5575, 385, '2021-05-25'),
(5576, 366, '2021-05-25'),
(5577, 377, '2021-05-25'),
(5578, 346, '2021-05-25'),
(5579, 371, '2021-05-25'),
(5580, 370, '2021-05-25'),
(5581, 388, '2021-05-25'),
(5582, 368, '2021-05-25'),
(5583, 384, '2021-05-25'),
(5584, 366, '2021-05-25'),
(5585, 382, '2021-05-25'),
(5586, 346, '2021-05-25'),
(5587, 381, '2021-05-25'),
(5588, 388, '2021-05-25'),
(5589, 380, '2021-05-25'),
(5590, 384, '2021-05-25'),
(5591, 382, '2021-05-25'),
(5592, 379, '2021-05-25'),
(5593, 381, '2021-05-25'),
(5594, 380, '2021-05-25'),
(5595, 378, '2021-05-25'),
(5596, 375, '2021-05-25'),
(5597, 379, '2021-05-25'),
(5598, 374, '2021-05-25'),
(5599, 373, '2021-05-25'),
(5600, 378, '2021-05-25'),
(5601, 372, '2021-05-25'),
(5602, 375, '2021-05-25'),
(5603, 369, '2021-05-25'),
(5604, 374, '2021-05-25'),
(5605, 373, '2021-05-25'),
(5606, 372, '2021-05-25'),
(5607, 369, '2021-05-25'),
(5608, 402, '2021-05-25'),
(5609, 401, '2021-05-25'),
(5610, 400, '2021-05-25'),
(5611, 383, '2021-05-25'),
(5612, 402, '2021-05-25'),
(5613, 376, '2021-05-25'),
(5614, 401, '2021-05-25'),
(5615, 367, '2021-05-25'),
(5616, 400, '2021-05-25'),
(5617, 335, '2021-05-25'),
(5618, 383, '2021-05-25'),
(5619, 334, '2021-05-25'),
(5620, 376, '2021-05-25'),
(5621, 329, '2021-05-25'),
(5622, 367, '2021-05-25'),
(5623, 327, '2021-05-25'),
(5624, 332, '2021-05-25'),
(5625, 335, '2021-05-25'),
(5626, 326, '2021-05-25'),
(5627, 334, '2021-05-25'),
(5628, 325, '2021-05-25'),
(5629, 329, '2021-05-25'),
(5630, 327, '2021-05-25'),
(5631, 198, '2021-05-25'),
(5632, 326, '2021-05-25'),
(5633, 197, '2021-05-25'),
(5634, 325, '2021-05-25'),
(5635, 154, '2021-05-25'),
(5636, 196, '2021-05-25'),
(5637, 396, '2021-05-25'),
(5638, 195, '2021-05-25'),
(5639, 194, '2021-05-25'),
(5640, 198, '2021-05-25'),
(5641, 193, '2021-05-25'),
(5642, 197, '2021-05-25'),
(5643, 398, '2021-05-25'),
(5644, 196, '2021-05-25'),
(5645, 397, '2021-05-25'),
(5646, 195, '2021-05-25'),
(5647, 396, '2021-05-25'),
(5648, 194, '2021-05-25'),
(5649, 193, '2021-05-25'),
(5650, 395, '2021-05-25'),
(5651, 393, '2021-05-25'),
(5652, 398, '2021-05-25'),
(5653, 394, '2021-05-25'),
(5654, 397, '2021-05-25'),
(5655, 393, '2021-05-25'),
(5656, 396, '2021-05-25'),
(5657, 392, '2021-05-25'),
(5658, 395, '2021-05-25'),
(5659, 332, '2021-05-25'),
(5660, 308, '2021-05-25'),
(5661, 394, '2021-05-25'),
(5662, 307, '2021-05-25'),
(5663, 393, '2021-05-25'),
(5664, 306, '2021-05-25'),
(5665, 392, '2021-05-25'),
(5666, 313, '2021-05-25'),
(5667, 305, '2021-05-25'),
(5668, 332, '2021-05-25'),
(5669, 308, '2021-05-25'),
(5670, 307, '2021-05-25'),
(5671, 306, '2021-05-25'),
(5672, 305, '2021-05-25'),
(5673, 399, '2021-05-25'),
(5674, 111, '2021-05-25'),
(5675, 112, '2021-05-25'),
(5676, 116, '2021-05-25'),
(5677, 117, '2021-05-25'),
(5678, 118, '2021-05-25'),
(5679, 119, '2021-05-25'),
(5680, 120, '2021-05-25'),
(5681, 121, '2021-05-25'),
(5682, 357, '2021-05-25'),
(5683, 337, '2021-05-25'),
(5684, 336, '2021-05-25'),
(5685, 279, '2021-05-25'),
(5686, 270, '2021-05-25'),
(5687, 141, '2021-05-25'),
(5688, 140, '2021-05-25'),
(5689, 139, '2021-05-25'),
(5690, 138, '2021-05-25'),
(5691, 138, '2021-05-25'),
(5692, 137, '2021-05-25'),
(5693, 136, '2021-05-25'),
(5694, 365, '2021-05-25'),
(5695, 364, '2021-05-25'),
(5696, 347, '2021-05-25'),
(5697, 345, '2021-05-25'),
(5698, 342, '2021-05-25'),
(5699, 341, '2021-05-25'),
(5700, 340, '2021-05-25'),
(5701, 339, '2021-05-25'),
(5702, 338, '2021-05-25'),
(5703, 322, '2021-05-25'),
(5704, 321, '2021-05-25'),
(5705, 320, '2021-05-25'),
(5706, 316, '2021-05-25'),
(5707, 315, '2021-05-25'),
(5708, 314, '2021-05-25'),
(5709, 313, '2021-05-25'),
(5710, 312, '2021-05-25'),
(5711, 304, '2021-05-25'),
(5712, 303, '2021-05-25'),
(5713, 221, '2021-05-25'),
(5714, 220, '2021-05-25'),
(5715, 158, '2021-05-25'),
(5716, 157, '2021-05-25'),
(5717, 156, '2021-05-25'),
(5718, 155, '2021-05-25'),
(5719, 154, '2021-05-25'),
(5720, 153, '2021-05-25'),
(5721, 152, '2021-05-25'),
(5722, 151, '2021-05-25'),
(5723, 150, '2021-05-25'),
(5724, 149, '2021-05-25'),
(5725, 148, '2021-05-25'),
(5726, 147, '2021-05-25'),
(5727, 146, '2021-05-25'),
(5728, 145, '2021-05-25'),
(5729, 144, '2021-05-25'),
(5730, 143, '2021-05-25'),
(5731, 142, '2021-05-25'),
(5732, 324, '2021-05-25'),
(5733, 22, '2021-05-25'),
(5734, 164, '2021-05-25'),
(5735, 165, '2021-05-25'),
(5736, 190, '2021-05-25'),
(5737, 191, '2021-05-25'),
(5738, 192, '2021-05-25'),
(5739, 363, '2021-05-25'),
(5740, 362, '2021-05-25'),
(5741, 361, '2021-05-25'),
(5742, 360, '2021-05-25'),
(5743, 359, '2021-05-25'),
(5744, 358, '2021-05-25'),
(5745, 357, '2021-05-25'),
(5746, 356, '2021-05-25'),
(5747, 355, '2021-05-25'),
(5748, 354, '2021-05-25'),
(5749, 353, '2021-05-25'),
(5750, 352, '2021-05-25'),
(5751, 351, '2021-05-25'),
(5752, 350, '2021-05-25'),
(5753, 349, '2021-05-25'),
(5754, 348, '2021-05-25'),
(5755, 344, '2021-05-25'),
(5756, 343, '2021-05-25'),
(5757, 333, '2021-05-25'),
(5758, 331, '2021-05-25'),
(5759, 330, '2021-05-25'),
(5760, 328, '2021-05-25'),
(5761, 323, '2021-05-25'),
(5762, 319, '2021-05-25'),
(5763, 318, '2021-05-25'),
(5764, 317, '2021-05-25'),
(5765, 311, '2021-05-25'),
(5766, 268, '2021-05-25'),
(5767, 391, '2021-05-25'),
(5768, 191, '2021-05-25'),
(5769, 195, '2021-05-25'),
(5770, 194, '2021-05-25'),
(5771, 362, '2021-05-25'),
(5772, 22, '2021-05-25'),
(5773, 378, '2021-05-25'),
(5774, 402, '2021-05-25'),
(5775, 390, '2021-05-25'),
(5776, 379, '2021-05-25'),
(5777, 382, '2021-05-25'),
(5778, 369, '2021-05-25'),
(5779, 384, '2021-05-25'),
(5780, 381, '2021-05-25'),
(5781, 388, '2021-05-25'),
(5782, 374, '2021-05-25'),
(5783, 375, '2021-05-25'),
(5784, 321, '2021-05-25'),
(5785, 389, '2021-05-25'),
(5786, 347, '2021-05-25'),
(5787, 390, '2021-05-25'),
(5788, 366, '2021-05-25'),
(5789, 373, '2021-05-25'),
(5790, 380, '2021-05-25'),
(5791, 150, '2021-05-25'),
(5792, 398, '2021-05-25'),
(5793, 395, '2021-05-25'),
(5794, 394, '2021-05-25'),
(5795, 120, '2021-05-25'),
(5796, 392, '2021-05-25'),
(5797, 332, '2021-05-26'),
(5798, 327, '2021-05-26'),
(5799, 335, '2021-05-26'),
(5800, 401, '2021-05-26'),
(5801, 402, '2021-05-26'),
(5802, 376, '2021-05-26'),
(5803, 383, '2021-05-26'),
(5804, 334, '2021-05-26'),
(5805, 326, '2021-05-26'),
(5806, 325, '2021-05-26'),
(5807, 138, '2021-05-26'),
(5808, 400, '2021-05-26'),
(5809, 329, '2021-05-26'),
(5810, 367, '2021-05-26'),
(5811, 322, '2021-05-26'),
(5812, 370, '2021-05-26'),
(5813, 368, '2021-05-26'),
(5814, 390, '2021-05-26'),
(5815, 389, '2021-05-26'),
(5816, 386, '2021-05-26'),
(5817, 360, '2021-05-26'),
(5818, 141, '2021-05-26'),
(5819, 346, '2021-05-26'),
(5820, 377, '2021-05-26'),
(5821, 354, '2021-05-26'),
(5822, 363, '2021-05-26'),
(5823, 358, '2021-05-26'),
(5824, 366, '2021-05-26'),
(5825, 387, '2021-05-26'),
(5826, 141, '2021-05-26'),
(5827, 371, '2021-05-26'),
(5828, 385, '2021-05-26'),
(5829, 397, '2021-05-26'),
(5830, 396, '2021-05-26'),
(5831, 393, '2021-05-26'),
(5832, 139, '2021-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `product_id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 30, 513, 'size is large', 'size issu', '2021-03-29 19:40:32', '2021-03-29 19:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers'),
(19, 'Sub Admin', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , manage_staffs , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Macao,fashion,belgium fashion store,best cloths,discounts,quality products,belgium,macaofashion');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'LIVRAISON GRATUIT', 'A L ACHATE DE 50€', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1561348143service3.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'livraison a la porte(en belgique)', '3 jours ouvrable', 6),
(2, 0, 'livraison au point de poste(en belgique)', '3 jours ouvrable', 4),
(3, 0, 'livraison dans notre point de vente(GRATUIT)', '3 jours ouvrable', 0),
(4, 0, 'EUROPE', '5 JOURS OUVRABLE', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(11, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1611516020post1.jpg', 'slide-three', 'https://macaofashion.be/'),
(12, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1611516130post4.jpg', 'slide-two', 'NEW ARRIVAL'),
(14, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1611516253post3.jpg', 'slide-three', 'NEW ARRIVAL');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/macaolalouviere', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '3711891692224465', '1adf993fbafd48dd8d4504b450cc8e5f', 'https://macaofashion.be/auth/facebook/callback', '185404633756-sbkf1nvibaddf9usm9lss3fj10e6cv0i.apps.googleusercontent.com', '_ACHctcbgZaNlt-TBefuJ4LU', 'https://macaofashion.be/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 30, '3361530620618851', 'facebook', '2021-02-06 18:01:14', '2021-02-06 18:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(1, 1, 'BONNET', 'bonnet', 1),
(2, 1, 'CEINTURE', 'ceinture', 1),
(3, 1, 'ECHARPE', 'echarpe', 1),
(4, 1, 'FOULARD', 'foulard', 1),
(5, 1, 'PONCHO', 'poncho', 1),
(6, 1, 'SACS', 'sacs', 1),
(7, 2, 'BRCLT', 'brclt', 1),
(8, 2, 'COLIER', 'colier', 1),
(9, 3, 'BOTTES', 'bottes', 1),
(10, 4, 'JUPE', 'jupe', 1),
(11, 4, 'ROBE', 'robe', 1),
(12, 4, 'BODY', 'body', 1),
(13, 4, 'COMBI', 'combi', 1),
(14, 4, 'COMBINASION', 'combinasion', 1),
(15, 4, 'ENSAMBLE', 'ensamble', 1),
(16, 4, 'ROBE LONG', 'robe-long', 1),
(17, 4, 'T SHRT', 't-shrt', 1),
(18, 4, 'TUNIQUE', 'tunique', 1),
(19, 4, 'VESTE', 'veste', 1),
(20, 4, 'TOP', 'top', 1),
(21, 4, 'BAS', 'bas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'admin@gmail.com'),
(2, 'suzannedethier@gmail.com'),
(3, 'sabs59112@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', 'Washington, DC', 'Algeria', 'Space Needle 400 Broad St, Seattles', '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'YSQXv5omCd70FLO0rEd6urrkUIS7e1YSCQdlbLNHgRJxqkfxblOPj2YF1DbZ', '2018-03-07 18:05:44', '2020-10-26 21:44:03', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', '<br>', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 4978.02, '2019-11-24', 0),
(22, 'User', NULL, '1231', 'Test City', 'United States', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'qlhIgGKlzE6XII9oUlonzE14GTUFaWxujAgZvak1UEcgSG0j8gfK4XuWcdMP', '2019-06-20 12:26:24', '2021-03-25 21:12:26', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4963.6900000000005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, 0, '2021-04-09', 0),
(27, 'Test User', NULL, NULL, NULL, NULL, 'Space Needle 400 Broad St, Seattles', '34534534', NULL, 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', 'RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn', '2019-10-05 04:15:08', '2020-03-22 09:09:46', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, 'Test Store', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'ds', '<br>', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-24', 0),
(28, 'User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2019-10-13 05:39:13', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(29, 'ADNAN NAZIR', NULL, NULL, NULL, NULL, 'charleroi', '484906904', NULL, 'admin@macaofashion.be', '$2y$10$Os7nRsNCk/G6v1N.3yQ9FOEYqsccpEWW7ElA6fEn9Au1i.hKADWV.', NULL, '2021-01-30 10:15:05', '2021-01-30 10:15:05', 0, 0, '96b2467f39aa224baf427450c70903a3', 'No', '691fc76033bbc36be7439290f28155a9', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(30, 'Adnan Nazir', 'https://graph.facebook.com/v3.3/3361530620618851/picture?width=1920', '6000', NULL, 'Belgium', 'charleroi', '1234', NULL, 'geoislamgeo@hotmail.com', NULL, NULL, '2021-02-06 18:01:14', '2021-03-27 14:53:07', 1, 0, NULL, 'Yes', '9409fb8a31556c63ae6943a80bb81677', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(31, 'abc', NULL, NULL, NULL, NULL, 'cb kbhn 23', '03331234567', NULL, 'abc@gmail.com', '$2y$10$px4gtKxUbZSValSVsvUm9OnlfM1lJ6zOyjVAygATZKu5frbH/Nbsa', NULL, '2021-03-02 15:06:34', '2021-03-02 15:06:34', 0, 0, '3ea3f510de231fba2ccce6368a24bc17', 'No', '398052d44c2c5894f7e8df95c31a3107', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(32, 'dethier suzanne', NULL, NULL, NULL, NULL, 'Rue de la Station', '0489528903', NULL, 'SUZANNEDETHIER@GMAIL.COM', '$2y$10$Havh7D0gpMIsFbuAHNkZKeDsBdckDLEuE/T8ZHlAErJ55.6dfJfl.', NULL, '2021-03-27 16:20:31', '2021-03-27 17:23:28', 0, 0, 'dceeecc293857d2cec2c2ddfd740f0c6', 'Yes', 'a654015cb2a58cfedf2b80682b80e94a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'wuiGJCKZxG', 0, '2020-10-03 01:18:53', '2020-10-03 01:18:53'),
(2, 13, '2KdAxvuaKa', 0, '2020-10-03 01:19:57', '2020-10-03 01:19:57'),
(3, 13, 'kQSUdfSLEP', 0, '2020-10-03 01:23:33', '2020-10-03 01:23:33'),
(4, 13, 'BSjsjZ0jKs', 0, '2020-10-03 01:30:45', '2020-10-03 01:30:45'),
(5, 13, 'M7MM5XZffF', 0, '2020-10-03 01:47:29', '2020-10-03 01:47:29'),
(6, 13, 'mYcCSQ72wd', 0, '2020-10-03 01:48:33', '2020-10-03 01:48:33'),
(7, 13, 'EWWmq8tvvn', 0, '2020-10-03 01:49:40', '2020-10-03 01:49:40'),
(8, 13, 'ixyc5Hy2T5', 0, '2020-10-10 21:33:46', '2020-10-10 21:33:46'),
(9, 13, 'L1Ak0uAZKH', 0, '2020-10-10 21:36:15', '2020-10-10 21:36:15'),
(10, 13, 'ENgdWeCTWw', 0, '2020-10-10 21:46:32', '2020-10-10 21:46:32'),
(11, 13, 'i2BmG2XTwq', 0, '2020-10-10 21:50:51', '2020-10-10 21:50:51'),
(12, 13, 'EnPNwg0HBW', 0, '2020-10-11 00:13:09', '2020-10-11 00:13:09'),
(13, 13, 'syo6qqw9tj', 0, '2020-10-11 00:14:22', '2020-10-11 00:14:22'),
(14, 13, 'OTrilq0ksT', 0, '2020-10-11 00:15:23', '2020-10-11 00:15:23'),
(15, 13, 'OUt8COG6y3', 0, '2020-10-11 00:16:01', '2020-10-11 00:16:01'),
(16, 13, 'uqcXeGbPpL', 0, '2020-10-11 00:17:02', '2020-10-11 00:17:02'),
(17, 13, 'Z6keKYmaHj', 0, '2020-10-11 00:18:19', '2020-10-11 00:18:19'),
(18, 13, 'optY8xBJtR', 0, '2020-10-11 00:20:17', '2020-10-11 00:20:17'),
(19, 13, 'OqqbWR2Tnb', 0, '2020-10-11 00:20:59', '2020-10-11 00:20:59'),
(20, 13, 'pbDNzHMpqB', 0, '2020-10-11 00:23:34', '2020-10-11 00:23:34'),
(21, 13, '3DvLJRHa5R', 0, '2020-10-11 00:24:04', '2020-10-11 00:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, '2019-10-09 21:32:57', '2020-10-11 00:27:15', 1, NULL),
(84, 13, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, '2019-10-10 02:35:29', '2020-10-11 00:27:15', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(7, 22, 106);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5833;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
