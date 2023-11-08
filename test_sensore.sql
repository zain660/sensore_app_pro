-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2023 at 07:05 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_sensore`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uninstall_files` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `email_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Amine', 'hhdhxhdjfk@gmail.com', '0541029808', 0, '1556780563user.png', '$2y$10$OyOYsz54hOGxfwaa3lcnl.ffsPt/I1gwTegiY13VS1p1kGKmMq.si', 1, '4ZobInFFyl2OOYsAJD0hlpjMOv7nK2U2aIjGBCBxVPcDdRBQR6fdvjbw2YFD', NULL, '2018-02-28 23:27:08', '2023-10-29 22:21:56', 'DzyShop'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'shaon@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, '7nIlCaoDI2jBZDDZVeJPV6FGVjtrfVM6t7QnWx0L8AwUw24wp5IQxbU3YNLe', NULL, '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int NOT NULL,
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
(2, 0, 'Bangla', '1567247534xTuVLrXh.json', '1567247534xTuVLrXh', 1),
(3, 0, 'عربى', '15970374764TGUNJJs.json', '15970374764TGUNJJs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
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
(1, 'Scammer', 2, 'rgrg', '2023-10-30 13:07:47', '2023-10-30 13:07:47', 'Ticket', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int NOT NULL,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'rgrg', 2, '2023-10-30 13:07:47', '2023-10-30 13:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_sections`
--

CREATE TABLE `arrival_sections` (
  `id` int NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `header` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `up_sale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int NOT NULL,
  `attributable_id` int DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 0, 1, '2019-10-12 03:22:03', '2020-11-09 02:26:58'),
(39, 16, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(40, 16, 'App\\Models\\Category', 'Warrenty', 'warrenty', 1, 1, '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(41, 16, 'App\\Models\\Category', 'Belt', 'belt', 1, 1, '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(43, 20, 'App\\Models\\Category', 'Warranty', 'warranty', 0, 1, '2023-10-31 13:34:49', '2023-10-31 13:34:49'),
(44, 22, 'App\\Models\\Category', 'Warrant', 'warrant', 0, 1, '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(45, 24, 'App\\Models\\Category', 'Warranty', 'warranty', 1, 1, '2023-10-31 13:38:37', '2023-11-02 12:10:52'),
(46, 25, 'App\\Models\\Category', 'Warranty', 'warranty', 0, 1, '2023-10-31 13:41:50', '2023-10-31 13:41:50'),
(47, 26, 'App\\Models\\Category', 'Warranty', 'warranty', 0, 1, '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(48, 35, 'App\\Models\\Subcategory', 'Subscription Type', 'subscription_type', 0, 1, '2023-10-31 13:45:27', '2023-10-31 13:45:27'),
(49, 40, 'App\\Models\\Subcategory', 'Subscription Type', 'subscription_type', 0, 1, '2023-10-31 13:46:08', '2023-10-31 13:46:08'),
(50, 46, 'App\\Models\\Subcategory', 'Type', 'type', 0, 1, '2023-10-31 13:47:01', '2023-10-31 13:47:01'),
(51, 56, 'App\\Models\\Subcategory', 'Type', 'type', 0, 1, '2023-10-31 13:47:59', '2023-10-31 13:47:59'),
(52, 35, 'App\\Models\\Subcategory', 'Subscription duration', 'subscription_duration', 1, 1, '2023-10-31 19:07:58', '2023-10-31 19:07:58'),
(53, 38, 'App\\Models\\Subcategory', 'Subscription duration', 'subscription_duration', 1, 1, '2023-10-31 22:22:08', '2023-10-31 22:22:08'),
(54, 39, 'App\\Models\\Subcategory', 'Subscription duration', 'subscription_duration', 1, 1, '2023-10-31 22:23:46', '2023-10-31 22:23:46'),
(55, 40, 'App\\Models\\Subcategory', 'Subscription duration', 'subscription_duration', 1, 1, '2023-10-31 22:25:16', '2023-10-31 22:25:16'),
(56, 45, 'App\\Models\\Subcategory', 'Subscription duration', 'subscription_duration', 1, 1, '2023-10-31 22:26:36', '2023-10-31 22:26:36'),
(57, 23, 'App\\Models\\Category', 'Subscription duration', 'subscription_duration', 1, 1, '2023-11-02 11:51:49', '2023-11-02 11:51:49'),
(58, 24, 'App\\Models\\Category', 'Subscription duration', 'subscription_duration', 0, 1, '2023-11-02 12:09:29', '2023-11-02 12:12:58'),
(59, 25, 'App\\Models\\Category', 'Type', 'type', 0, 1, '2023-11-04 17:37:29', '2023-11-04 17:37:29'),
(60, 68, 'App\\Models\\Subcategory', 'Subscription duration', 'subscription_duration', 1, 1, '2023-11-05 01:15:19', '2023-11-05 01:15:19'),
(61, 27, 'App\\Models\\Category', 'Quantity', 'quantity', 1, 1, '2023-11-05 13:20:36', '2023-11-05 13:20:36'),
(62, 43, 'App\\Models\\Childcategory', 'Android version', 'android_version', 0, 1, '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(63, 44, 'App\\Models\\Childcategory', 'IOS version', 'ios_version', 0, 1, '2023-11-06 16:53:54', '2023-11-06 16:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int NOT NULL,
  `attribute_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
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
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(259, 33, '1 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(260, 33, '2 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(261, 33, '3 GB', '2020-11-09 02:26:58', '2020-11-09 02:26:58'),
(269, 39, 'G-Shock', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(270, 39, 'Diesel', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(271, 39, 'Longines', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(272, 39, 'Hamilton', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(273, 39, 'Citizen', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(274, 40, 'Local Sell Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(275, 40, 'Manufacture Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(276, 40, 'International Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(277, 41, 'Leather', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(278, 41, 'Stainless steel', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(279, 41, 'Rubber', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(280, 41, 'Normal', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(290, 44, '7 Days', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(291, 44, '15 Days', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(292, 44, '1 Months', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(293, 44, '3 Months', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(294, 44, '6 Months', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(295, 44, '12 Months', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(296, 44, 'Full duration mentioned', '2023-10-31 13:37:08', '2023-10-31 13:37:08'),
(297, 43, '7 Days', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(298, 43, '15 Days', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(299, 43, '1 Month', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(300, 43, '3 Month', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(301, 43, '6 Month', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(302, 43, '12 Month', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(303, 43, 'Full duration mentioned', '2023-10-31 13:37:18', '2023-10-31 13:37:18'),
(313, 46, '1 Month', '2023-10-31 13:41:50', '2023-10-31 13:41:50'),
(314, 46, '3 Months', '2023-10-31 13:41:50', '2023-10-31 13:41:50'),
(315, 46, '6 Months', '2023-10-31 13:41:50', '2023-10-31 13:41:50'),
(316, 46, '1 Year', '2023-10-31 13:41:50', '2023-10-31 13:41:50'),
(317, 46, 'Life time', '2023-10-31 13:41:50', '2023-10-31 13:41:50'),
(318, 47, '7 Days', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(319, 47, '15 Days', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(320, 47, '1 Month', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(321, 47, '3 Month', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(322, 47, '6 Months', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(323, 47, '1 Year', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(324, 47, 'Full duration mentioned', '2023-10-31 13:42:54', '2023-10-31 13:42:54'),
(325, 48, 'Basic', '2023-10-31 13:45:27', '2023-10-31 13:45:27'),
(326, 48, 'Standard', '2023-10-31 13:45:27', '2023-10-31 13:45:27'),
(327, 48, 'Premium UHD', '2023-10-31 13:45:27', '2023-10-31 13:45:27'),
(328, 49, 'VIP', '2023-10-31 13:46:08', '2023-10-31 13:46:08'),
(329, 49, 'SPORT', '2023-10-31 13:46:08', '2023-10-31 13:46:08'),
(330, 50, 'PC', '2023-10-31 13:47:01', '2023-10-31 13:47:01'),
(331, 50, 'Console', '2023-10-31 13:47:01', '2023-10-31 13:47:01'),
(332, 51, 'Edu', '2023-10-31 13:47:59', '2023-10-31 13:47:59'),
(333, 51, 'Pro', '2023-10-31 13:47:59', '2023-10-31 13:47:59'),
(334, 52, '1 Month', '2023-10-31 19:07:58', '2023-10-31 19:07:58'),
(335, 52, '3 Months', '2023-10-31 19:07:58', '2023-10-31 19:07:58'),
(336, 52, '6 Months', '2023-10-31 19:07:58', '2023-10-31 19:07:58'),
(337, 52, '12 Months', '2023-10-31 19:07:58', '2023-10-31 19:07:58'),
(338, 53, '1 Month', '2023-10-31 22:22:08', '2023-10-31 22:22:08'),
(339, 53, '3 Month', '2023-10-31 22:22:08', '2023-10-31 22:22:08'),
(340, 53, '6 Month', '2023-10-31 22:22:08', '2023-10-31 22:22:08'),
(341, 53, '12 Month', '2023-10-31 22:22:08', '2023-10-31 22:22:08'),
(342, 54, '1 Month', '2023-10-31 22:23:46', '2023-10-31 22:23:46'),
(343, 54, '3 Months', '2023-10-31 22:23:46', '2023-10-31 22:23:46'),
(344, 54, '6 Months', '2023-10-31 22:23:46', '2023-10-31 22:23:46'),
(345, 54, '12 Months', '2023-10-31 22:23:46', '2023-10-31 22:23:46'),
(346, 55, '1 Month', '2023-10-31 22:25:16', '2023-10-31 22:25:16'),
(347, 55, '3 Months', '2023-10-31 22:25:16', '2023-10-31 22:25:16'),
(348, 55, '6 Months', '2023-10-31 22:25:16', '2023-10-31 22:25:16'),
(349, 55, '12 Months', '2023-10-31 22:25:16', '2023-10-31 22:25:16'),
(350, 56, '1 Month', '2023-10-31 22:26:36', '2023-10-31 22:26:36'),
(351, 56, '3 Months', '2023-10-31 22:26:36', '2023-10-31 22:26:36'),
(352, 56, '6 Months', '2023-10-31 22:26:36', '2023-10-31 22:26:36'),
(353, 56, '12 Months', '2023-10-31 22:26:36', '2023-10-31 22:26:36'),
(354, 57, '1 Month', '2023-11-02 11:51:49', '2023-11-02 11:51:49'),
(355, 57, '2 Months', '2023-11-02 11:51:49', '2023-11-02 11:51:49'),
(356, 57, '3 Moths', '2023-11-02 11:51:49', '2023-11-02 11:51:49'),
(357, 57, '6 Months', '2023-11-02 11:51:49', '2023-11-02 11:51:49'),
(358, 57, '12 Months', '2023-11-02 11:51:49', '2023-11-02 11:51:49'),
(365, 45, '1 month', '2023-11-02 12:10:52', '2023-11-02 12:10:52'),
(366, 45, '3 Months', '2023-11-02 12:10:52', '2023-11-02 12:10:52'),
(367, 45, '6 Months', '2023-11-02 12:10:52', '2023-11-02 12:10:52'),
(368, 45, '1 Year', '2023-11-02 12:10:52', '2023-11-02 12:10:52'),
(369, 45, 'Full duration mentioned', '2023-11-02 12:10:52', '2023-11-02 12:10:52'),
(370, 58, '1 Month', '2023-11-02 12:12:58', '2023-11-02 12:12:58'),
(371, 58, '3 Months', '2023-11-02 12:12:58', '2023-11-02 12:12:58'),
(372, 58, '6 Months', '2023-11-02 12:12:58', '2023-11-02 12:12:58'),
(373, 58, '12 Months', '2023-11-02 12:12:58', '2023-11-02 12:12:58'),
(374, 58, '2 years', '2023-11-02 12:12:58', '2023-11-02 12:12:58'),
(375, 58, '3 years', '2023-11-02 12:12:58', '2023-11-02 12:12:58'),
(378, 59, 'License key', '2023-11-04 17:38:12', '2023-11-04 17:38:12'),
(379, 59, 'Account', '2023-11-04 17:38:12', '2023-11-04 17:38:12'),
(380, 60, '1 Month', '2023-11-05 01:15:19', '2023-11-05 01:15:19'),
(381, 60, '2 Months', '2023-11-05 01:15:19', '2023-11-05 01:15:19'),
(382, 60, '3 Months', '2023-11-05 01:15:19', '2023-11-05 01:15:19'),
(383, 60, '6 Months', '2023-11-05 01:15:19', '2023-11-05 01:15:19'),
(384, 60, '12 Months', '2023-11-05 01:15:19', '2023-11-05 01:15:19'),
(389, 61, '1K', '2023-11-05 13:22:23', '2023-11-05 13:22:23'),
(390, 61, '2K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(391, 61, '3K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(392, 61, '4K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(393, 61, '5K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(394, 61, '10K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(395, 61, '20K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(396, 61, '30K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(397, 61, '50K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(398, 61, '100K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(399, 61, '200K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(400, 61, '500K', '2023-11-05 13:22:24', '2023-11-05 13:22:24'),
(401, 62, '12.0', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(402, 62, '11.0', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(403, 62, '10.0', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(404, 62, '9.0', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(405, 62, '8.1', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(406, 62, '8.0', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(407, 62, '7.2.x', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(408, 62, '7,1,x', '2023-11-06 16:52:31', '2023-11-06 16:52:31'),
(409, 63, '15', '2023-11-06 16:53:54', '2023-11-06 16:53:54'),
(410, 63, '14', '2023-11-06 16:53:54', '2023-11-06 16:53:54'),
(411, 63, '13', '2023-11-06 16:53:54', '2023-11-06 16:53:54'),
(412, 63, '12', '2023-11-06 16:53:54', '2023-11-06 16:53:54'),
(413, 63, '11', '2023-11-06 16:53:54', '2023-11-06 16:53:54'),
(414, 63, '10.0.x', '2023-11-06 16:53:54', '2023-11-06 16:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`, `title`, `text`) VALUES
(3, '1698961021Tiktokpng.png', 'https://saheldz.com/category/Social-Media-Services', 'BottomSmall', NULL, NULL),
(11, '1698938524Untitleddesign2png.png', 'https://saheldz.com/category/VPN', 'TopSmall', 'Protection', 'Premium VPN'),
(12, '1698935925Untitleddesignpng.png', 'https://saheldz.com/category/Design--Graphique', 'TopSmall', 'Creative Tools', 'Creative Tools'),
(15, '1698960355image1-3png.png', 'https://saheldz.com/category/Social-Media-Services', 'BottomSmall', NULL, NULL),
(18, '1698937682Untitleddesign1png.png', 'https://saheldz.com/category/STREAMING', 'TopSmall', 'Best Selections', 'Streaming'),
(19, '1698938924Untitleddesign3png.png', 'https://saheldz.com/category/Music', 'TopSmall', 'Music', 'Mood'),
(20, '1698940183Untitleddesign4png.png', 'https://saheldz.com/category/Console', 'TopSmall', 'XBOX & PS', 'Gaming'),
(21, '1698940865Untitleddesign5png.png', 'https://saheldz.com/category/Social-Media-Services', 'TopSmall', 'Social Media', 'Like, Followers');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design effective arts?', 'how-to-design-effective-artsoCiZ', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543362116423090481560403334beautiful-cellphone-cute-761963jpgjpg.jpg', 'www.geniusocean.com', 47, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41'),
(10, 3, 'How to design effective arts?', 'how-to-design-effective-artsWAVi', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543363216423090781560403521afro-attractive-beautiful-2253065jpgjpg.jpg', 'www.geniusocean.com', 20, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(12, 2, 'How to design effective arts?', 'how-to-design-effective-artsLUx6', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '164543360916423090171560403662beautiful-brown-hair-casual-1989252jpgjpg.jpg', 'www.geniusocean.com', 25, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20'),
(13, 3, 'How to design effective arts?', 'how-to-design-effective-artsSCtj', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '1645433598164069213125pngpng.png', 'www.geniusocean.com', 63, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36'),
(14, 2, 'How to design effective arts?', 'how-to-design-effective-arts5Xoo', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1645433573164069202629pngpng.png', 'www.geniusocean.com', 8, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30'),
(15, 3, 'How to design effective arts?', 'how-to-design-effective-artsq2Rz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543355515542700676-minjpg.jpg', 'www.geniusocean.com', 15, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53'),
(16, 2, 'How to design effective arts?', 'how-to-design-effective-artsGnee', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543353615542699045-minjpg.jpg', 'www.geniusocean.com', 11, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(17, 3, 'How to design effective arts?', 'how-to-design-effective-artsOYf3', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543351615542698954-minjpg.jpg', 'www.geniusocean.com', 60, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(18, 2, 'How to design effective arts?', 'how-to-design-effective-artsrJ9k', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454339504png.png', 'www.geniusocean.com', 218, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(20, 2, 'How to design effective arts?', 'how-to-design-effective-artspnST', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543347015542698832-minjpg.jpg', 'www.geniusocean.com', 16, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(21, 3, 'How to design effective arts?', 'how-to-design-effective-arts1kzz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334471572852760blog7png.png', 'www.geniusocean.com', 44, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(22, 2, 'How to design effective arts?', 'how-to-design-effective-artsAmHL', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543402825png.png', 'www.geniusocean.com', 86, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(23, 7, 'How to design effective arts?', 'how-to-design-effective-artszYxx', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334081572852731blog3jpg.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(24, 3, 'How to design effective arts?', 'how-to-design-effective-arts8bQ1', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454333931572852725blog2jpg.jpg', 'www.geniusocean.com', 44, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(25, 3, 'How to design effective arts?', 'how-to-design-effective-artsSt80', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p><p align=\"justify\"><br></p><p align=\"justify\"><img onclick=\"alert(\'Hacked\')\" src=\"https://i.imgur.com/jtEirwY.png\" width=\"128\"><br></p><p align=\"justify\"><br></p>\r\n\r\n<script>alert(\'Hacked\');</script>', '16454333771572852720blog1png.png', 'www.geniusocean.com', 87, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Web Services', 'web-services'),
(3, 'Business Philosophy', 'business-philosophy'),
(4, 'Business Help', 'business-help'),
(5, 'Random Thoughts', 'random-thoughts'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `image`, `is_featured`) VALUES
(20, 'STREAMING', 'streaming', 1, '', '1698599498Servicos-de-streamingjpg.jpg', 1),
(22, 'Music', 'Music', 1, NULL, '1698715396music-notepng.png', 1),
(23, 'Console & Games', 'Console', 1, NULL, '1698715766buttonspng.png', 1),
(24, 'VPN', 'VPN', 1, NULL, '1698716422vpnpng.png', 1),
(25, 'Logiciel et Application', 'Logiciel-et-Application', 1, NULL, '1698716831toolpng.png', 1),
(26, 'Design & Graphique', 'Design--Graphique', 1, NULL, '1698717485uxpng.png', 1),
(27, 'Social Media Services', 'Social-Media-Services', 1, NULL, '1698717988facebookpng.png', 1),
(28, 'Formation', 'Formation', 1, NULL, '1698718275lobtention-du-diplomepng.png', 1),
(29, 'Website & app Creation', 'Website-and-app-Creation', 1, NULL, '1699288276website-design-2png.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int NOT NULL,
  `user_id` int NOT NULL,
  `last_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_file` int NOT NULL,
  `last_seen` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(35, 36, 'Films et series', 'Films-et-series', 1),
(36, 36, 'Musique', 'Musique', 1),
(37, 37, 'Xbox', 'Xbox', 1),
(38, 37, 'PlayStation', 'PlayStation', 1),
(39, 37, 'Nintendo', 'Nintendo', 1),
(40, 48, 'Xbox Game', 'Xbox-Game', 1),
(41, 48, 'PlayStation Game', 'PlayStation-Game', 1),
(42, 48, 'Nintendo Game', 'Nintendo-Game', 1),
(43, 77, 'Andoid', 'Andoid', 1),
(44, 77, 'IOS', 'IOS', 1),
(45, 77, 'Flutter', 'Flutter', 1),
(46, 77, 'Native Web', 'Native-Web', 1),
(47, 77, 'Titanium', 'Titanium', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(26, 22, 163, 'I think it nice', '2021-12-23 21:48:54', '2021-12-23 21:48:54'),
(27, 22, 170, 'Hello world!', '2021-12-26 12:00:56', '2021-12-26 12:00:56'),
(28, 22, 178, 'fjhdfgt890', '2022-02-07 05:07:05', '2022-02-07 05:42:32'),
(29, 22, 169, 'ghdduery', '2022-03-07 22:35:34', '2022-03-07 22:35:34'),
(30, 22, 162, 'Good product', '2022-10-13 00:00:26', '2022-10-13 00:00:26'),
(31, 50, 162, 'Good Product', '2022-10-13 00:01:57', '2022-10-13 00:01:57'),
(32, 50, 162, 'Good', '2022-10-13 02:00:23', '2022-10-13 02:00:23'),
(33, 22, 129, 'Test Comment 1', '2022-10-16 11:03:50', '2022-10-16 11:05:36'),
(34, 22, 128, 'Test Comment', '2022-10-16 21:50:51', '2022-10-16 21:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int NOT NULL,
  `recieved_user` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int NOT NULL DEFAULT '0',
  `todays_count` int NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 926, 0, NULL),
(3, 'browser', 'Windows 10', 7215, 0, NULL),
(4, 'browser', 'Linux', 290, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 1574, 0, NULL),
(6, 'browser', 'Windows 7', 504, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 556, 0, NULL),
(9, 'referral', 'www.google.com', 37, 0, NULL),
(10, 'browser', 'Android', 1383, 0, NULL),
(11, 'browser', 'Mac OS X', 817, 0, NULL),
(12, 'referral', 'l.facebook.com', 4, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 7, 0, NULL),
(15, 'browser', 'Windows 8', 3, 0, NULL),
(16, 'browser', 'iPad', 6, 0, NULL),
(17, 'browser', 'Ubuntu', 9, 0, NULL),
(18, 'browser', 'iPhone', 54, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 4, 0, NULL),
(20, 'referral', 'baidu.com', 1, 0, NULL),
(21, 'referral', 'org.telegram.messenger', 3, 0, NULL),
(22, 'referral', 'm.facebook.com', 7, 0, NULL),
(23, 'referral', 'ravemodal-dev.herokuapp.com', 1, 0, NULL),
(24, 'referral', NULL, 26, 0, NULL),
(25, 'referral', 'www.google.fr', 1, 0, NULL),
(26, 'referral', 'com.google.android.googlequicksearchbox', 1, 0, NULL),
(27, 'referral', 'localhost', 2, 0, NULL),
(28, 'referral', 'web.skype.com', 1, 0, NULL),
(29, 'referral', 'hpanel.hostinger.com', 1, 0, NULL),
(30, 'referral', 'www.google.com.hk', 4, 0, NULL),
(31, 'referral', 'web.telegram.org', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `tax` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `tax`, `status`) VALUES
(1, 'AF', 'Afghanistan', 0, 1),
(2, 'AL', 'Albania', 0, 1),
(3, 'DZ', 'Algeria', 0, 1),
(4, 'DS', 'American Samoa', 0, 0),
(5, 'AD', 'Andorra', 0, 0),
(6, 'AO', 'Angola', 0, 0),
(7, 'AI', 'Anguilla', 0, 0),
(8, 'AQ', 'Antarctica', 0, 0),
(9, 'AG', 'Antigua and Barbuda', 0, 0),
(10, 'AR', 'Argentina', 0, 0),
(11, 'AM', 'Armenia', 0, 0),
(12, 'AW', 'Aruba', 0, 0),
(13, 'AU', 'Australia', 0, 1),
(14, 'AT', 'Austria', 0, 1),
(15, 'AZ', 'Azerbaijan', 0, 0),
(16, 'BS', 'Bahamas', 0, 0),
(17, 'BH', 'Bahrain', 0, 0),
(18, 'BD', 'Bangladesh', 0, 1),
(19, 'BB', 'Barbados', 0, 0),
(20, 'BY', 'Belarus', 0, 1),
(21, 'BE', 'Belgium', 0, 0),
(22, 'BZ', 'Belize', 0, 0),
(23, 'BJ', 'Benin', 0, 0),
(24, 'BM', 'Bermuda', 0, 0),
(25, 'BT', 'Bhutan', 0, 0),
(26, 'BO', 'Bolivia', 0, 0),
(27, 'BA', 'Bosnia and Herzegovina', 0, 0),
(28, 'BW', 'Botswana', 0, 0),
(29, 'BV', 'Bouvet Island', 0, 0),
(30, 'BR', 'Brazil', 0, 0),
(31, 'IO', 'British Indian Ocean Territory', 0, 0),
(32, 'BN', 'Brunei Darussalam', 0, 0),
(33, 'BG', 'Bulgaria', 0, 0),
(34, 'BF', 'Burkina Faso', 0, 0),
(35, 'BI', 'Burundi', 0, 0),
(36, 'KH', 'Cambodia', 0, 0),
(37, 'CM', 'Cameroon', 0, 0),
(38, 'CA', 'Canada', 0, 0),
(39, 'CV', 'Cape Verde', 0, 0),
(40, 'KY', 'Cayman Islands', 0, 0),
(41, 'CF', 'Central African Republic', 0, 0),
(42, 'TD', 'Chad', 0, 0),
(43, 'CL', 'Chile', 0, 0),
(44, 'CN', 'China', 0, 0),
(45, 'CX', 'Christmas Island', 0, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(47, 'CO', 'Colombia', 0, 0),
(48, 'KM', 'Comoros', 0, 0),
(49, 'CD', 'Democratic Republic of the Congo', 0, 0),
(50, 'CG', 'Republic of Congo', 0, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 0, 0),
(53, 'HR', 'Croatia (Hrvatska)', 0, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 0, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 0, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 0, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 0, 0),
(63, 'EG', 'Egypt', 0, 0),
(64, 'SV', 'El Salvador', 0, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 0, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 0, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 0, 0),
(81, 'DE', 'Germany', 0, 0),
(82, 'GH', 'Ghana', 0, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GK', 'Guernsey', 0, 0),
(85, 'GR', 'Greece', 0, 0),
(86, 'GL', 'Greenland', 0, 0),
(87, 'GD', 'Grenada', 0, 0),
(88, 'GP', 'Guadeloupe', 0, 0),
(89, 'GU', 'Guam', 0, 0),
(90, 'GT', 'Guatemala', 0, 0),
(91, 'GN', 'Guinea', 0, 0),
(92, 'GW', 'Guinea-Bissau', 0, 0),
(93, 'GY', 'Guyana', 0, 0),
(94, 'HT', 'Haiti', 0, 0),
(95, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(96, 'HN', 'Honduras', 0, 0),
(97, 'HK', 'Hong Kong', 0, 0),
(98, 'HU', 'Hungary', 0, 0),
(99, 'IS', 'Iceland', 0, 0),
(100, 'IN', 'India', 0, 1),
(101, 'IM', 'Isle of Man', 0, 0),
(102, 'ID', 'Indonesia', 0, 0),
(103, 'IR', 'Iran (Islamic Republic of)', 0, 0),
(104, 'IQ', 'Iraq', 0, 0),
(105, 'IE', 'Ireland', 0, 0),
(106, 'IL', 'Israel', 0, 0),
(107, 'IT', 'Italy', 0, 0),
(108, 'CI', 'Ivory Coast', 0, 0),
(109, 'JE', 'Jersey', 0, 0),
(110, 'JM', 'Jamaica', 0, 0),
(111, 'JP', 'Japan', 0, 0),
(112, 'JO', 'Jordan', 0, 0),
(113, 'KZ', 'Kazakhstan', 0, 0),
(114, 'KE', 'Kenya', 0, 0),
(115, 'KI', 'Kiribati', 0, 0),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0),
(117, 'KR', 'Korea, Republic of', 0, 0),
(118, 'XK', 'Kosovo', 0, 0),
(119, 'KW', 'Kuwait', 0, 0),
(120, 'KG', 'Kyrgyzstan', 0, 0),
(121, 'LA', 'Lao People\'s Democratic Republic', 0, 0),
(122, 'LV', 'Latvia', 0, 0),
(123, 'LB', 'Lebanon', 0, 0),
(124, 'LS', 'Lesotho', 0, 0),
(125, 'LR', 'Liberia', 0, 0),
(126, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(127, 'LI', 'Liechtenstein', 0, 0),
(128, 'LT', 'Lithuania', 0, 0),
(129, 'LU', 'Luxembourg', 0, 0),
(130, 'MO', 'Macau', 0, 0),
(131, 'MK', 'North Macedonia', 0, 0),
(132, 'MG', 'Madagascar', 0, 0),
(133, 'MW', 'Malawi', 0, 0),
(134, 'MY', 'Malaysia', 0, 0),
(135, 'MV', 'Maldives', 0, 0),
(136, 'ML', 'Mali', 0, 0),
(137, 'MT', 'Malta', 0, 0),
(138, 'MH', 'Marshall Islands', 0, 0),
(139, 'MQ', 'Martinique', 0, 0),
(140, 'MR', 'Mauritania', 0, 0),
(141, 'MU', 'Mauritius', 0, 0),
(142, 'TY', 'Mayotte', 0, 0),
(143, 'MX', 'Mexico', 0, 0),
(144, 'FM', 'Micronesia, Federated States of', 0, 0),
(145, 'MD', 'Moldova, Republic of', 0, 0),
(146, 'MC', 'Monaco', 0, 0),
(147, 'MN', 'Mongolia', 0, 0),
(148, 'ME', 'Montenegro', 0, 0),
(149, 'MS', 'Montserrat', 0, 0),
(150, 'MA', 'Morocco', 0, 0),
(151, 'MZ', 'Mozambique', 0, 0),
(152, 'MM', 'Myanmar', 0, 0),
(153, 'NA', 'Namibia', 0, 0),
(154, 'NR', 'Nauru', 0, 0),
(155, 'NP', 'Nepal', 0, 0),
(156, 'NL', 'Netherlands', 0, 0),
(157, 'AN', 'Netherlands Antilles', 0, 0),
(158, 'NC', 'New Caledonia', 0, 0),
(159, 'NZ', 'New Zealand', 0, 0),
(160, 'NI', 'Nicaragua', 0, 0),
(161, 'NE', 'Niger', 0, 0),
(162, 'NG', 'Nigeria', 0, 0),
(163, 'NU', 'Niue', 0, 0),
(164, 'NF', 'Norfolk Island', 0, 0),
(165, 'MP', 'Northern Mariana Islands', 0, 0),
(166, 'NO', 'Norway', 0, 0),
(167, 'OM', 'Oman', 0, 0),
(168, 'PK', 'Pakistan', 0, 0),
(169, 'PW', 'Palau', 0, 0),
(170, 'PS', 'Palestine', 0, 0),
(171, 'PA', 'Panama', 0, 0),
(172, 'PG', 'Papua New Guinea', 0, 0),
(173, 'PY', 'Paraguay', 0, 0),
(174, 'PE', 'Peru', 0, 0),
(175, 'PH', 'Philippines', 0, 0),
(176, 'PN', 'Pitcairn', 0, 0),
(177, 'PL', 'Poland', 0, 0),
(178, 'PT', 'Portugal', 0, 0),
(179, 'PR', 'Puerto Rico', 0, 0),
(180, 'QA', 'Qatar', 0, 0),
(181, 'RE', 'Reunion', 0, 0),
(182, 'RO', 'Romania', 0, 0),
(183, 'RU', 'Russian Federation', 0, 1),
(184, 'RW', 'Rwanda', 0, 0),
(185, 'KN', 'Saint Kitts and Nevis', 0, 0),
(186, 'LC', 'Saint Lucia', 0, 0),
(187, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(188, 'WS', 'Samoa', 0, 0),
(189, 'SM', 'San Marino', 0, 0),
(190, 'ST', 'Sao Tome and Principe', 0, 0),
(191, 'SA', 'Saudi Arabia', 0, 0),
(192, 'SN', 'Senegal', 0, 0),
(193, 'RS', 'Serbia', 0, 0),
(194, 'SC', 'Seychelles', 0, 0),
(195, 'SL', 'Sierra Leone', 0, 0),
(196, 'SG', 'Singapore', 0, 0),
(197, 'SK', 'Slovakia', 0, 0),
(198, 'SI', 'Slovenia', 0, 0),
(199, 'SB', 'Solomon Islands', 0, 0),
(200, 'SO', 'Somalia', 0, 0),
(201, 'ZA', 'South Africa', 0, 0),
(202, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(203, 'SS', 'South Sudan', 0, 0),
(204, 'ES', 'Spain', 0, 0),
(205, 'LK', 'Sri Lanka', 0, 0),
(206, 'SH', 'St. Helena', 0, 0),
(207, 'PM', 'St. Pierre and Miquelon', 0, 0),
(208, 'SD', 'Sudan', 0, 0),
(209, 'SR', 'Suriname', 0, 0),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 0, 0),
(211, 'SZ', 'Swaziland', 0, 0),
(212, 'SE', 'Sweden', 0, 0),
(213, 'CH', 'Switzerland', 0, 0),
(214, 'SY', 'Syrian Arab Republic', 0, 0),
(215, 'TW', 'Taiwan', 0, 0),
(216, 'TJ', 'Tajikistan', 0, 0),
(217, 'TZ', 'Tanzania, United Republic of', 0, 0),
(218, 'TH', 'Thailand', 0, 0),
(219, 'TG', 'Togo', 0, 0),
(220, 'TK', 'Tokelau', 0, 0),
(221, 'TO', 'Tonga', 0, 0),
(222, 'TT', 'Trinidad and Tobago', 0, 0),
(223, 'TN', 'Tunisia', 0, 0),
(224, 'TR', 'Turkey', 0, 0),
(225, 'TM', 'Turkmenistan', 0, 0),
(226, 'TC', 'Turks and Caicos Islands', 0, 0),
(227, 'TV', 'Tuvalu', 0, 0),
(228, 'UG', 'Uganda', 0, 1),
(229, 'UA', 'Ukraine', 0, 0),
(230, 'AE', 'United Arab Emirates', 0, 0),
(231, 'GB', 'United Kingdom', 0, 1),
(232, 'US', 'United States', 0, 1),
(233, 'UM', 'United States minor outlying islands', 0, 0),
(234, 'UY', 'Uruguay', 0, 0),
(235, 'UZ', 'Uzbekistan', 0, 0),
(236, 'VU', 'Vanuatu', 0, 0),
(237, 'VA', 'Vatican City State', 2, 1),
(238, 'VE', 'Venezuela', 0, 1),
(239, 'VN', 'Vietnam', 0, 1),
(240, 'VG', 'Virgin Islands (British)', 0, 1),
(241, 'VI', 'Virgin Islands (U.S.)', 0, 1),
(242, 'WF', 'Wallis and Futuna Islands', 0, 1),
(243, 'EH', 'Western Sahara', 0, 1),
(244, 'YE', 'Yemen', 0, 1),
(245, 'ZM', 'Zambia', 5, 1),
(246, 'ZW', 'Zimbabwe', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `category` int DEFAULT NULL,
  `sub_category` int DEFAULT NULL,
  `child_category` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`, `coupon_type`, `category`, `sub_category`, `child_category`) VALUES
(11, 'Welcome', 0, 20, NULL, 0, 1, '2023-11-02', '2024-01-31', 'category', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(6, 'EUR', '€', 0.89, 0),
(12, 'Algerian dinars', 'DZD', 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `deposit_number` varchar(255) DEFAULT NULL,
  `currency` blob,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `currency_value` double DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int NOT NULL,
  `email_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8mb3_unicode_ci,
  `email_body` longtext COLLATE utf8mb3_unicode_ci,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Cart', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`) VALUES
(1, 'Right my front it wound cause fully', '<div style=\"text-align: justify;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</div>'),
(3, 'Man particular insensible celebrated', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(4, 'Civilly why how end viewing related', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(5, 'Six started far placing saw respect', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div></div>'),
(7, 'Duis eu molestie quam, sed rhoncus nibh', '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0); text-align: justify; padding: 0px;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `vendor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int NOT NULL,
  `is_default` tinyint DEFAULT '0',
  `font_family` varchar(100) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 0, 'Roboto', 'Roboto'),
(3, 0, 'Roboto Mono', 'Roboto+Mono'),
(4, 0, 'Libre Caslon Display', 'Libre+Caslon+Display'),
(5, 0, 'Pangolin', 'Pangolin'),
(6, 0, 'Dancing Script', 'Dancing+Script'),
(7, 1, 'Open Sans', 'Open+Sans');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(274, 178, '1639377201kIRW1EDl.jpg'),
(275, 178, '16393772019VK5FLtl.jpg'),
(276, 178, '1639377201krle8zlu.jpg'),
(277, 175, '16393776956AA40xFx.jpg'),
(278, 175, '16393776955klqsJ7E.jpg'),
(279, 175, '1639377695kWR5DE5x.jpg'),
(280, 169, '1639377747A3Pknjfy.jpg'),
(281, 169, '1639377747dxsp2VSK.jpg'),
(282, 164, '16393780458Yr3ZAOE.jpg'),
(283, 164, '1639378045UMFwFsPS.jpg'),
(284, 164, '16393780453ZLjK3mm.jpg'),
(285, 163, '1639378095FKuTnjNm.jpg'),
(286, 163, '1639378095fjzWQrCS.jpg'),
(287, 163, '16393780950yzaxhTO.jpg'),
(288, 162, '1639378165t5CzXscD.jpg'),
(289, 162, '1639378165qI2PTBtC.jpg'),
(290, 162, '1639378165jYceIttx.jpg'),
(291, 161, '1639378430m3XEmUer.jpg'),
(292, 161, '1639378430qqzusNiP.jpg'),
(293, 161, '1639378430euqFZ796.jpg'),
(294, 160, '1639392393qABYd9Jp.jpg'),
(295, 160, '1639392393M7WZcZyF.jpg'),
(296, 160, '1639392394NcXuluij.jpg'),
(297, 144, '1639392542Hi8kqofd.jpg'),
(298, 144, '1639392543aNErwy42.jpg'),
(299, 144, '1639392543TClWju2X.jpg'),
(303, 135, '1639392748zU2kggIw.jpg'),
(304, 135, '1639392748KS5BV2nQ.jpg'),
(305, 135, '1639392748T3zkUMnp.jpg'),
(309, 114, '16394527172MC08Ov5.jpg'),
(310, 114, '1639452717EByuwyqy.jpg'),
(311, 114, '1639452717nNfXnbRZ.jpg'),
(312, 128, '16394564079EvhKQXl.jpg'),
(313, 128, '1639456407vtTRoAr7.jpg'),
(314, 128, '1639456408cd9XLUJ1.jpg'),
(326, 170, '1646901584l8MraaNk.jpg'),
(327, 170, '1646901584I1CFhs35.jpg'),
(328, 170, '1646901584Okkqp3E2.jpg'),
(329, 170, '1646901585daDTZaH9.jpg'),
(330, 168, '1648013520wLz6NjQ8.jpg'),
(331, 168, '1648013521CUVnKkuW.jpg'),
(332, 168, '1648013521ZCJGdOET.jpg'),
(333, 168, '1648013521cfKHnzKx.jpg'),
(334, 168, '1648013521nwKHsHXv.jpg'),
(335, 165, '16480136903vx2nVLT.jpg'),
(336, 165, '1648013690zDZkb083.jpg'),
(337, 165, '1648013690prNoHG1K.jpg'),
(341, 452, '1699299006mv04eZuTjpeg'),
(342, 452, '1699299006hCRRBPBujpeg'),
(343, 452, '1699299006QUGDV04Hjpeg'),
(344, 452, '1699299006ffiwxTUJjpeg'),
(345, 452, '1699299006jwAWEnHnjpeg'),
(346, 452, '16992990063iZnQtTqjpeg'),
(347, 452, '1699299006sO27zosojpeg'),
(348, 452, '1699299006P4PNrK0kjpeg'),
(349, 452, '1699299006hOBPOBf4jpeg'),
(350, 452, '1699299006gy6lRllRgif'),
(351, 452, '16992990061jmcYdmijpeg'),
(352, 452, '1699299006bD5LSfDijpeg'),
(353, 452, '1699299006WSp6H84fjpeg'),
(354, 452, '1699299006sfvCzDgDjpeg'),
(355, 452, '1699299006rt1X3IFcjpeg'),
(356, 452, '1699299006nmRsYP1Wjpeg'),
(357, 452, '169929900666jJ3eL1jpeg'),
(358, 452, '16992990065qvgcPkzjpeg'),
(359, 452, '1699299006bVVMYtRdjpeg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` bigint NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `wholesell` int NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `capcha_secret_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capcha_site_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_404` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_500` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `breadcrumb_banner` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `header_color` enum('light','dark') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `is_buy_now` tinyint NOT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT '1',
  `verify_product` tinyint(1) NOT NULL DEFAULT '0',
  `page_count` int NOT NULL DEFAULT '0',
  `flash_count` int NOT NULL DEFAULT '0',
  `hot_count` int NOT NULL DEFAULT '0',
  `new_count` int NOT NULL DEFAULT '0',
  `sale_count` int NOT NULL DEFAULT '0',
  `best_seller_count` int NOT NULL DEFAULT '0',
  `popular_count` int NOT NULL DEFAULT '0',
  `top_rated_count` int NOT NULL DEFAULT '0',
  `big_save_count` int NOT NULL DEFAULT '0',
  `trending_count` int NOT NULL DEFAULT '0',
  `seller_product_count` int NOT NULL DEFAULT '0',
  `wishlist_count` int NOT NULL DEFAULT '0',
  `vendor_page_count` int NOT NULL DEFAULT '0',
  `min_price` double NOT NULL DEFAULT '0',
  `max_price` double NOT NULL DEFAULT '0',
  `post_count` tinyint(1) NOT NULL DEFAULT '0',
  `product_page` text COLLATE utf8mb4_unicode_ci,
  `wishlist_page` text COLLATE utf8mb4_unicode_ci,
  `is_contact_seller` tinyint(1) NOT NULL DEFAULT '0',
  `is_debug` tinyint(1) NOT NULL DEFAULT '0',
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cookie` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate_bonus` int NOT NULL DEFAULT '0',
  `is_reward` int NOT NULL DEFAULT '0',
  `reward_point` int NOT NULL DEFAULT '0',
  `reward_dolar` int NOT NULL DEFAULT '0',
  `physical` tinyint NOT NULL DEFAULT '1',
  `digital` tinyint NOT NULL DEFAULT '1',
  `license` tinyint NOT NULL DEFAULT '1',
  `affilite` tinyint NOT NULL DEFAULT '1',
  `partner_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_text` longtext COLLATE utf8mb4_unicode_ci,
  `deal_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_details` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_time` date DEFAULT NULL,
  `deal_background` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `is_disqus`, `disqus`, `guest_checkout`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `shipping_cost`, `mail_driver`, `mail_host`, `mail_port`, `mail_encryption`, `mail_user`, `mail_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `is_affilate`, `affilate_charge`, `affilate_banner`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `footer_color`, `copyright_color`, `copyright`, `is_admin_loader`, `is_verification_email`, `wholesell`, `is_capcha`, `capcha_secret_key`, `capcha_site_key`, `error_banner_404`, `error_banner_500`, `is_popup`, `popup_background`, `breadcrumb_banner`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `footer_logo`, `show_stock`, `is_maintain`, `header_color`, `maintain_text`, `is_buy_now`, `version`, `affilate_product`, `verify_product`, `page_count`, `flash_count`, `hot_count`, `new_count`, `sale_count`, `best_seller_count`, `popular_count`, `top_rated_count`, `big_save_count`, `trending_count`, `seller_product_count`, `wishlist_count`, `vendor_page_count`, `min_price`, `max_price`, `post_count`, `product_page`, `wishlist_page`, `is_contact_seller`, `is_debug`, `decimal_separator`, `thousand_separator`, `is_cookie`, `product_affilate`, `product_affilate_bonus`, `is_reward`, `reward_point`, `reward_dolar`, `physical`, `digital`, `license`, `affilite`, `partner_title`, `partner_text`, `deal_title`, `deal_details`, `deal_time`, `deal_background`, `listing`) VALUES
(1, '16991243561699062580Capture-decran-2023-10-30-a-222006pngpng.png', '1699065756faviconpng.png', 'SahelSz', '#c61111', '1564224328loading3.gif', '1564224329loading3.gif', 1, '1hec8e1d3', 1, 1, 0, 'junnun', 1, 1, 5, 5, 5, 'sendmail', 'smtp.mailtrap.io', '2525', 'TLS', '77c8df7c3e0779', '509dc95e1382f5', 'test@junnun.royalscripts.com', 'GeniusTest', 1, 1, 1, 1, 10, '15587771131554048228onepiece.jpeg', 5, 5, 1, 1, 1, 1, '#143250', '#02020c', 'COPYRIGHT © 2023. All Rights Reserved By SahelSz', 1, 0, 6, 0, '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '1566878455404.png', '1587792059error-500.png', 1, '1698956679-50png.png', '1648110638breadpng.png', '1699062582Capture-decran-2023-10-30-a-222006png.png', '1699115460default-avatarpng.png', '#666666', 1, 1, '1699128524Fichier2png.png', 1, 0, 'light', '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 1, '4.1', 1, 1, 16, 6, 12, 12, 12, 12, 6, 4, 4, 6, 3, 16, 16, 0, 30000, 6, NULL, '12,24,36,48,60', 1, 1, '.', ',', 1, 1, 5, 1, 10, 15, 1, 1, 1, 1, 'Our Partners', 'Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.', 'CLICK SHOP NOW FOR ALL DEAL OF THE PRODUCT', 'Donec condimentum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus pretium sapien, in pulvinar ipsum molestie id. Aliquam erat volutpat. Duis quam tellus, ullamcorper.....', '2022-09-23', '164743040383png.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1684403411sQWZMppH.json', '1684403411sQWZMppH', 0),
(2, 0, 'العربية', '1662525873Kynbiefk.json', '1662525873Kynbiefk', 1),
(6, 0, 'Français', '16985497223MW9bUGl.json', '16985497223MW9bUGl', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int DEFAULT NULL,
  `recieved_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_11_07_171928_create_chats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(10, NULL, 2, NULL, NULL, NULL, 1, '2023-10-29 03:39:47', '2023-11-04 02:37:47'),
(11, NULL, 3, NULL, NULL, NULL, 1, '2023-10-29 03:45:31', '2023-11-04 02:37:47'),
(12, NULL, NULL, NULL, NULL, 1, 1, '2023-10-30 13:07:47', '2023-10-31 13:23:03'),
(13, NULL, 4, NULL, NULL, NULL, 1, '2023-11-01 03:56:05', '2023-11-04 02:37:47'),
(14, NULL, 5, NULL, NULL, NULL, 1, '2023-11-01 05:19:00', '2023-11-04 02:37:47'),
(15, NULL, 6, NULL, NULL, NULL, 1, '2023-11-02 00:18:48', '2023-11-04 02:37:47'),
(16, NULL, 7, NULL, NULL, NULL, 1, '2023-11-02 00:20:01', '2023-11-04 02:37:47'),
(17, NULL, 8, NULL, NULL, NULL, 1, '2023-11-02 22:36:04', '2023-11-04 02:37:47'),
(18, NULL, 9, NULL, NULL, NULL, 1, '2023-11-02 23:36:54', '2023-11-04 02:37:47'),
(19, NULL, 10, NULL, NULL, NULL, 1, '2023-11-03 00:22:22', '2023-11-04 02:37:47'),
(20, NULL, 11, NULL, NULL, NULL, 1, '2023-11-03 00:31:54', '2023-11-04 02:37:47'),
(21, NULL, 12, NULL, NULL, NULL, 1, '2023-11-04 03:37:40', '2023-11-04 13:40:11'),
(61, 53, NULL, NULL, NULL, NULL, 0, '2023-11-06 23:22:16', '2023-11-06 23:22:16'),
(62, 54, NULL, NULL, NULL, NULL, 0, '2023-11-06 23:22:34', '2023-11-06 23:22:34'),
(63, NULL, NULL, NULL, 427, NULL, 0, '2023-11-06 23:22:34', '2023-11-06 23:22:34'),
(64, 55, NULL, NULL, NULL, NULL, 0, '2023-11-06 23:25:11', '2023-11-06 23:25:11'),
(65, NULL, NULL, NULL, 427, NULL, 0, '2023-11-06 23:25:11', '2023-11-06 23:25:11'),
(66, 56, NULL, NULL, NULL, NULL, 0, '2023-11-06 23:29:06', '2023-11-06 23:29:06'),
(67, NULL, NULL, NULL, 427, NULL, 0, '2023-11-06 23:29:06', '2023-11-06 23:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` double NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL,
  `tax_location` varchar(191) DEFAULT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int NOT NULL DEFAULT '0',
  `vendor_packing_id` int NOT NULL DEFAULT '0',
  `wallet_price` double NOT NULL DEFAULT '0',
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `affilate_users` text,
  `commission` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(10, 2, '{\"totalQty\":5,\"totalPrice\":80,\"items\":{\"383\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":16000,\"item\":{\"id\":383,\"user_id\":\"0\",\"slug\":\"alger-4h3383u7a\",\"name\":\"Alger\",\"photo\":\"1698552133RWjXuDiH.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":16000,\"stock\":null,\"type\":\"Digital\",\"file\":null,\"link\":\"hiyvibivbi\",\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":80,\"discount\":0,\"affilate_user\":\"0\"}}}', 'El Dahabia / CIB', 'shipto', 'Azampur', '5', 80, NULL, NULL, 'KHQCBJ1698642687', 'Pending', 'haddoud.amine@hotmail.com', 'AMINE ABDELILAH HADDOUD', 'Algeria', '+213541029808', 'vieux ain naadja birkhadem algiers', 'algiers', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-10-30 05:11:27', '2023-10-30 05:11:27', NULL, NULL, 'DZD', '200', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(11, 2, '{\"totalQty\":5,\"totalPrice\":80,\"items\":{\"383\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3200000,\"item\":{\"id\":383,\"user_id\":\"0\",\"slug\":\"alger-4h3383u7a\",\"name\":\"Alger\",\"photo\":\"1698552133RWjXuDiH.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3200000,\"stock\":null,\"type\":\"Digital\",\"file\":null,\"link\":\"hiyvibivbi\",\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":80,\"discount\":0,\"affilate_user\":\"0\"}}}', 'El Dahabia / CIB', 'shipto', 'Azampur', '5', 80, NULL, NULL, 'ATZWPR1698643032', 'Pending', 'haddoud.amine@hotmail.com', 'AMINE ABDELILAH HADDOUD', 'Algeria', '+213541029808', 'vieux ain naadja birkhadem algiers', 'algiers', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-10-30 05:17:12', '2023-10-30 05:17:12', NULL, NULL, 'DZD', '200', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(12, 2, '{\"totalQty\":5,\"totalPrice\":80,\"items\":{\"383\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":640000000,\"item\":{\"id\":383,\"user_id\":\"0\",\"slug\":\"alger-4h3383u7a\",\"name\":\"Alger\",\"photo\":\"1698552133RWjXuDiH.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":640000000,\"stock\":null,\"type\":\"Digital\",\"file\":null,\"link\":\"hiyvibivbi\",\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":80,\"discount\":0,\"affilate_user\":\"0\"}}}', 'El Dahabia / CIB', 'shipto', 'Azampur', '5', 80, NULL, NULL, 'SVZF8Z1698667786', 'Pending', 'hhdhxhdjfk@gmail.com', 'had Amine', 'Algeria', '0541029808', 'Kouba Alger', 'Algiers', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-10-30 12:09:46', '2023-10-30 12:09:46', NULL, NULL, 'DZD', '200', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(13, 2, '{\"totalQty\":5,\"totalPrice\":80,\"items\":{\"383\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":128000000000,\"item\":{\"id\":383,\"user_id\":\"0\",\"slug\":\"alger-4h3383u7a\",\"name\":\"Alger\",\"photo\":\"1698552133RWjXuDiH.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":128000000000,\"stock\":null,\"type\":\"Digital\",\"file\":null,\"link\":\"hiyvibivbi\",\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":80,\"discount\":0,\"affilate_user\":\"0\"}}}', 'El Dahabia / CIB', 'shipto', 'Azampur', '5', 80, NULL, NULL, 'W9LAFR1698689577', 'Completed', 'haddoud.amine@hotmail.com', 'AMINE ABDELILAH HADDOUD', 'Algeria', '+213541029808', 'vieux ain naadja birkhadem algiers', 'algiers', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-10-30 18:12:57', '2023-11-03 03:07:20', NULL, NULL, 'DZD', '200', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, 0),
(14, 2, '{\"totalQty\":1,\"totalPrice\":3,\"items\":{\"3981Month1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3,\"item\":{\"id\":398,\"user_id\":\"0\",\"slug\":\"disney-cmd398xl4\",\"name\":\"Disney+\",\"photo\":\"1698816317x6Bh2EoD.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"htps:\\/\\/disneyplus.com\",\"license\":[\"fbsdfbdfbdfbfq\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Month\\\",\\\"6 Month\\\",\\\"12 Month\\\"],\\\"prices\\\":[0,0,0,0],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\"],\\\"prices\\\":[0,6,15,32],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_duration\",\"values\":\"1 Month,1 Month\",\"item_price\":3,\"discount\":0,\"affilate_user\":\"0\"},\"398\":{\"license\":\"fbsdfbdfbdfbfq\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'iJ751699099082', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'admin@gmail.com', 'd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 11:58:02', '2023-11-04 11:58:02', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 3, NULL, NULL, NULL, NULL, 0, NULL, 0),
(15, 2, '{\"totalQty\":1,\"totalPrice\":3.75,\"items\":{\"4211month1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3.75,\"item\":{\"id\":421,\"user_id\":\"0\",\"slug\":\"expressvpn-d6l421kja\",\"name\":\"ExpressVpn\",\"photo\":\"1698928017Cx2xlLoq.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3.75,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"expressvpn.com\",\"license\":[\"lejfpzeijfpzejfipzj\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"1 month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"1 Year\\\"],\\\"prices\\\":[0,2.5,5,10],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\",\\\"2 years\\\",\\\"3 years\\\"],\\\"prices\\\":[0,0,0,0,0,0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_duration\",\"values\":\"1 month,1 Month\",\"item_price\":3.75,\"discount\":0,\"affilate_user\":\"0\"},\"421\":{\"license\":\"lejfpzeijfpzejfipzj\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 3.75, NULL, NULL, 'DmLk1699099158', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Albania', '+213541029808', 'admin@gmail.com', 'sd', '213213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 11:59:18', '2023-11-04 11:59:18', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Fier', 1, NULL, 0, 0, 3.75, NULL, NULL, '18', NULL, 0, NULL, 0),
(16, 2, '{\"totalQty\":1,\"totalPrice\":3.5,\"items\":{\"4221month1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3.5,\"item\":{\"id\":422,\"user_id\":\"0\",\"slug\":\"ipvanish-8jc422ezz\",\"name\":\"IpVanish\",\"photo\":\"1698928144ZYMoA7td.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3.5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"invanish.com\",\"license\":[\"lejfpzeijfpzejfipzj\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"1 month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"1 Year\\\"],\\\"prices\\\":[0,2.5,5,10],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\",\\\"2 years\\\",\\\"3 years\\\"],\\\"prices\\\":[0,0,0,0,0,0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_duration\",\"values\":\"1 month,1 Month\",\"item_price\":3.5,\"discount\":0,\"affilate_user\":\"0\"},\"422\":{\"license\":\"lejfpzeijfpzejfipzj\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, '58qt1699099267', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Australia', '+213541029808', 'admin@gmail.com', 'sda', '123213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:01:07', '2023-11-04 12:01:07', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Victoria', 1, NULL, 0, 0, 3.5, NULL, NULL, '20', NULL, 0, NULL, 0),
(17, 2, '{\"totalQty\":1,\"totalPrice\":2.5,\"items\":{\"4131Months\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":2.5,\"item\":{\"id\":413,\"user_id\":\"0\",\"slug\":\"napster-xb4413duj\",\"name\":\"Napster\",\"photo\":\"1698925398NVOalGfV.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":2.5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"http:\\/\\/napster.com\",\"license\":[\"zekgpzefqpf\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warrant\\\":{\\\"values\\\":[\\\"1 Months\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warrant\",\"values\":\"1 Months\",\"item_price\":2.5,\"discount\":0,\"affilate_user\":\"0\"},\"413\":{\"license\":\"zekgpzefqpf\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'CZlb1699099566', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Australia', '+213541029808', 'admin@gmail.com', 'asd', '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:06:06', '2023-11-04 12:06:06', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Tasmania', 1, NULL, 0, 0, 2.5, NULL, NULL, '21', NULL, 0, NULL, 0),
(18, 2, '{\"totalQty\":1,\"totalPrice\":3,\"items\":{\"389FulldurationmentionedStandard1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3,\"item\":{\"id\":389,\"user_id\":\"0\",\"slug\":\"netflix-standard-4jr389zug\",\"name\":\"Netflix Standard\",\"photo\":\"1698780055u4pLXRwy.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/netflix.com\",\"license\":[\"defnosdnfosijpsijvpsv\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"Full duration mentioned\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1},\\\"subscription_type\\\":{\\\"values\\\":[\\\"Standard\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\"],\\\"prices\\\":[0,6,15,27],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_type,subscription_duration\",\"values\":\"Full duration mentioned,Standard,1 Month\",\"item_price\":3,\"discount\":0,\"affilate_user\":\"0\"},\"389\":{\"license\":\"defnosdnfosijpsijvpsv\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'GQOZ1699099755', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Afghanistan', '+213541029808', 'admin@gmail.com', '213', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:09:15', '2023-11-04 12:09:15', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Kabul', 1, NULL, 0, 0, 3, NULL, NULL, '16', NULL, 0, NULL, 0),
(19, 2, '{\"totalQty\":1,\"totalPrice\":3.5,\"items\":{\"4201month1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3.5,\"item\":{\"id\":420,\"user_id\":\"0\",\"slug\":\"nordvpn-7zd420hmv\",\"name\":\"NordVpn\",\"photo\":\"1698927506d3cTqRKi.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3.5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"nordaccount.com\",\"license\":[\"hibiugighusds\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"1 month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"1 Year\\\"],\\\"prices\\\":[0,2.5,5,10],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\",\\\"2 years\\\",\\\"3 years\\\"],\\\"prices\\\":[0,0,0,0,0,0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_duration\",\"values\":\"1 month,1 Month\",\"item_price\":3.5,\"discount\":0,\"affilate_user\":\"0\"},\"420\":{\"license\":\"hibiugighusds\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'mn211699100039', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Albania', '+213541029808', 'admin@gmail.com', 'sad', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:13:59', '2023-11-04 12:13:59', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Fier', 1, NULL, 0, 0, 3.5, NULL, NULL, '18', NULL, 0, NULL, 0),
(20, 2, '{\"totalQty\":1,\"totalPrice\":4,\"items\":{\"405\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":4,\"item\":{\"id\":405,\"user_id\":\"0\",\"slug\":\"canva-pro-\",\"name\":\"CANVA Pro\",\"photo\":\"16989216406T8LQOMA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":4,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"Canva.com\",\"license\":[\"sdjvsoldnvslnvxfb\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":4,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'KkRC1699100307', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Venezuela', '+213541029808', 'admin@gmail.com', 'asd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:18:27', '2023-11-04 12:18:27', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Venezuela', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL, 0, NULL, 0),
(21, 2, '{\"totalQty\":1,\"totalPrice\":3.5,\"items\":{\"408FulldurationmentionedVIP1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3.5,\"item\":{\"id\":408,\"user_id\":\"0\",\"slug\":\"shahid-vip-8nu408ayq\",\"name\":\"Shahid VIP\",\"photo\":\"1698923660tozHmASY.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3.5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"http:\\/\\/shahid.net\\/\",\"license\":[\"zieghpeig\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"Full duration mentioned\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1},\\\"subscription_type\\\":{\\\"values\\\":[\\\"VIP\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\"],\\\"prices\\\":[0,7,17.5,35],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_type,subscription_duration\",\"values\":\"Full duration mentioned,VIP,1 Month\",\"item_price\":3.5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'mzVs1699100371', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Russian Federation', '+213541029808', 'admin@gmail.com', 'ads', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:19:31', '2023-11-04 12:19:31', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Adygea', 1, NULL, 0, 0, 3.5, NULL, NULL, '29', NULL, 0, NULL, 0),
(22, 2, '{\"totalQty\":1,\"totalPrice\":3.5,\"items\":{\"408FulldurationmentionedVIP1Month\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":3.5,\"item\":{\"id\":408,\"user_id\":\"0\",\"slug\":\"shahid-vip-8nu408ayq\",\"name\":\"Shahid VIP\",\"photo\":\"1698923660tozHmASY.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":3.5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"http:\\/\\/shahid.net\\/\",\"license\":[\"zieghpeig\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"Full duration mentioned\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1},\\\"subscription_type\\\":{\\\"values\\\":[\\\"VIP\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1},\\\"subscription_duration\\\":{\\\"values\\\":[\\\"1 Month\\\",\\\"3 Months\\\",\\\"6 Months\\\",\\\"12 Months\\\"],\\\"prices\\\":[0,7,17.5,35],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty,subscription_type,subscription_duration\",\"values\":\"Full duration mentioned,VIP,1 Month\",\"item_price\":3.5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'SzC81699100372', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Russian Federation', '+213541029808', 'admin@gmail.com', 'ads', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:19:32', '2023-11-04 12:19:32', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Adygea', 1, NULL, 0, 0, 3.5, NULL, NULL, '29', NULL, 0, NULL, 0),
(23, 2, '{\"totalQty\":1,\"totalPrice\":2.5,\"items\":{\"4111Months\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":2.5,\"item\":{\"id\":411,\"user_id\":\"0\",\"slug\":\"deezer-premium-wn4411odu\",\"name\":\"Deezer Premium\",\"photo\":\"1698924991L0XaLWQD.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":2.5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"http:\\/\\/deezer.com\",\"license\":[\"dfnspeifspd\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warrant\\\":{\\\"values\\\":[\\\"1 Months\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warrant\",\"values\":\"1 Months\",\"item_price\":2.5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 2.5, NULL, NULL, 'Axyo1699100424', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Albania', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:20:24', '2023-11-04 12:20:24', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Albania', 1, NULL, 0, 0, 2.5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(24, 2, '{\"totalQty\":1,\"totalPrice\":4,\"items\":{\"4247Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":4,\"item\":{\"id\":424,\"user_id\":\"0\",\"slug\":\"freepik-hw3424os7\",\"name\":\"Freepik\",\"photo\":\"1698928970cJ29jYWN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":4,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"freepik.com\",\"license\":[\"egspgijsipgvsdgsd\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":4,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'hgjk1699100671', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'United Kingdom', '+213541029808', 'admin@gmail.com', '213', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:24:31', '2023-11-04 12:24:31', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'United Kingdom', 1, NULL, 0, 0, 4, NULL, NULL, NULL, NULL, 0, NULL, 0),
(25, 2, '{\"totalQty\":1,\"totalPrice\":4.25,\"items\":{\"4121Months\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":4.25,\"item\":{\"id\":412,\"user_id\":\"0\",\"slug\":\"apple-music-yhg412vwb\",\"name\":\"Apple Music +\",\"photo\":\"1698925238YaV2mKaq.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":4.25,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"http:\\/\\/apple.com\",\"license\":[\"sgsgshsgs\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warrant\\\":{\\\"values\\\":[\\\"1 Months\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warrant\",\"values\":\"1 Months\",\"item_price\":4.25,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, '2MFV1699100783', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Vatican City State', '+213541029808', 'admin@gmail.com', 'sad', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:26:23', '2023-11-04 12:26:23', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Sancta Sedes', 1, NULL, 0, 0, 4.25, NULL, NULL, '5', NULL, 0, NULL, 0),
(26, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"5\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":499,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"5\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"500\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'xtSh1699101050', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Venezuela', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 12:30:50', '2023-11-04 12:30:50', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Venezuela', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(27, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"4\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":498,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"4\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"499\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'jwPW1699112513', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'United States', '+213541029808', 'admin@gmail.com', 'fdf', '13213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 15:41:53', '2023-11-04 15:41:53', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'United States', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(28, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"3\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":497,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"3\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"498\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 5, NULL, NULL, 'JKYy1699113462', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Vatican City State', '+213541029808', 'admin@gmail.com', 'fdgdf', '345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 15:57:42', '2023-11-04 15:57:42', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Sancta Sedes', 1, NULL, 0, 0, 5, NULL, NULL, '5', NULL, 0, NULL, 0),
(29, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"2\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":496,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"2\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"497\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'imJ11699115688', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'admin@gmail.com', '2', '21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 16:34:48', '2023-11-04 16:34:48', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(30, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"1\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":495,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"1\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"496\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'qnoD1699115843', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Vietnam', '+213541029808', 'admin@gmail.com', 'dsa', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 16:37:23', '2023-11-04 16:37:23', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Vietnam', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(31, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":494,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"495\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'Ekb91699116297', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Australia', '+213541029808', 'admin@gmail.com', 'asd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 16:44:57', '2023-11-04 16:44:57', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Tasmania', 1, NULL, 0, 0, 5, NULL, NULL, '21', NULL, 0, NULL, 0),
(32, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":493,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"494\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'YMAd1699116690', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Afghanistan', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 16:51:30', '2023-11-04 16:51:30', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Kapisa', 1, NULL, 0, 0, 5, NULL, NULL, '17', NULL, 0, NULL, 0),
(33, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":492,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"493\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'bWH41699116774', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Venezuela', '+213541029808', 'admin@gmail.com', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 16:52:54', '2023-11-04 16:52:54', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Venezuela', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(34, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":491,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"492\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'dwDz1699116800', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Albania', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 16:53:20', '2023-11-04 16:53:20', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Korce', 1, NULL, 0, 0, 5, NULL, NULL, '19', NULL, 0, NULL, 0),
(35, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":491,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"492\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'iDlS1699117334', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'United States', '+213541029808', 'admin@gmail.com', 'asdsad', '123213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:02:14', '2023-11-04 17:02:14', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'United States', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(36, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":490,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"491\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'QCCI1699117656', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'United Kingdom', '+213541029808', 'admin@gmail.com', 'asd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:07:36', '2023-11-04 17:07:36', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'United Kingdom', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(37, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":489,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"490\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'EAfJ1699117806', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Venezuela', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:10:06', '2023-11-04 17:10:06', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Venezuela', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(38, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":488,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"489\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'fQAR1699117888', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Vatican City State', '+213541029808', 'admin@gmail.com', 'asdasd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:11:28', '2023-11-04 17:11:28', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Sancta Sedes', 1, NULL, 0, 0, 5, NULL, NULL, '5', NULL, 0, NULL, 0),
(39, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":487,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"488\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, '9hoU1699119051', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:30:51', '2023-11-04 17:30:51', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(40, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":486,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"487\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'Du0P1699119270', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Austria', '+213541029808', 'admin@gmail.com', 'asdsa', '21323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:34:30', '2023-11-04 17:34:30', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Styria', 1, NULL, 0, 0, 5, NULL, NULL, '23', NULL, 0, NULL, 0),
(41, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":485,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"486\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'P6aP1699119380', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Afghanistan', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:36:20', '2023-11-04 17:36:20', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Kapisa', 1, NULL, 0, 0, 5, NULL, NULL, '17', NULL, 0, NULL, 0),
(42, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":484,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"485\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'FVaP1699119408', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'admin@gmail.com', 'asd', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:36:48', '2023-11-04 17:36:48', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(43, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":483,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"484\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'bVJx1699119430', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'admin@gmail.com', 'asd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:37:10', '2023-11-04 17:37:10', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`) VALUES
(44, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":482,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"483\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'r2LT1699119474', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'admin@gmail.com', 'asd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:37:54', '2023-11-04 17:37:54', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(45, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":481,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"482\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'jEhl1699119621', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Albania', '+213541029808', 'admin@gmail.com', 'asdas', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:40:21', '2023-11-04 17:40:21', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Fier', 1, NULL, 0, 0, 5, NULL, NULL, '18', NULL, 0, NULL, 0),
(46, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":480,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"481\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'YbKn1699119759', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Venezuela', '+213541029808', 'admin@gmail.com', 'asd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:42:39', '2023-11-04 17:42:39', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Venezuela', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(47, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":479,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"480\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'Yvj81699119920', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Venezuela', '+213541029808', 'admin@gmail.com', 'asdsa', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:45:20', '2023-11-04 17:45:20', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'Venezuela', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(48, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":478,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"479\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'QmST1699120099', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'United Kingdom', '+213541029808', 'admin@gmail.com', 'adsasd', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:48:19', '2023-11-04 17:48:19', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'United Kingdom', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(49, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":477,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"478\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, '7GB61699120654', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'United Kingdom', '+213541029808', 'admin@gmail.com', 'sad', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 17:57:34', '2023-11-04 17:57:34', NULL, NULL, 'DZD', 'Algerian dinars', 200, 0, 0, 0, 'United Kingdom', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(50, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":476,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"477\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 't8Mf1699121071', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Austria', '+213541029808', 'admin@gmail.com', 'sadasd', '123213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 18:04:31', '2023-11-04 18:04:31', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Vienna', 1, NULL, 0, 0, 5, NULL, NULL, '22', NULL, 0, NULL, 0),
(51, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"427\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5,\"item\":{\"id\":427,\"user_id\":\"0\",\"slug\":\"windows-10-pro-\",\"name\":\"Windows 10 Pro\",\"photo\":\"1699119773TTn0AhFV.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":null,\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/support.microsoft.com\\/fr-fr\\/windows\\/activer-windows-c39005d4-95ee-b91e-b399-2820fda32227\",\"license\":[\"edkfmzekmekgv\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'zqr11699121316', 'Completed', 'hhdhxhdjfk@gmail.com', 'Amine had', 'Algeria', '0541029808', 'Kouba Alger', 'Algiers', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 18:08:36', '2023-11-04 18:08:36', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(52, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"4257Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"0\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":475,\"price\":5,\"item\":{\"id\":425,\"user_id\":\"0\",\"slug\":\"shutterstock-6i842585k\",\"name\":\"Shutterstock\",\"photo\":\"16989294165uIt0i3w.png\",\"size\":\"\",\"size_qty\":[\"0\"],\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"476\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/www.shutterstock.com\\/\",\"license\":[\"jjdhdgst\"],\"license_qty\":[\"5\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'kdY81699130299', 'Completed', 'haddoud.amine@hotmail.com', 'AMINE ABDELILAH HADDOUD', 'Algeria', '0541029808', '350 WEST 39TH ST HELL\'s kitchen', 'NEW YORK', '10018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-04 20:38:19', '2023-11-04 20:38:19', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(53, 2, '{\"totalQty\":1,\"totalPrice\":1.065,\"items\":{\"4547Days\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":49,\"price\":1.065,\"item\":{\"id\":454,\"user_id\":\"0\",\"slug\":\"asd-uzu454b9b\",\"name\":\"asd\",\"photo\":\"1699312518SjW4H5L5.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1.065,\"stock\":\"50\",\"type\":\"License\",\"file\":null,\"link\":\"asdasdsad\",\"license\":[\"adsasdasdsad @E @ @! @!#! @#!@ #!@# ! #!@#\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"{\\\"warranty\\\":{\\\"values\\\":[\\\"7 Days\\\"],\\\"prices\\\":[0,0,0,0,0,0,0],\\\"details_status\\\":1}}\",\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"warranty\",\"values\":\"7 Days\",\"item_price\":1.065,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'KTOw1699312936', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Albania', '+213541029808', 'admin@gmail.com', 'asd', '52250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-06 23:22:16', '2023-11-06 23:22:16', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Korce', 1, NULL, 0, 0, 1.07, NULL, NULL, '19', NULL, 0, NULL, 0),
(54, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"427\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":3,\"price\":5,\"item\":{\"id\":427,\"user_id\":\"0\",\"slug\":\"windows-10-pro-\",\"name\":\"Windows 10 Pro\",\"photo\":\"1699119773TTn0AhFV.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"4\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/support.microsoft.com\\/fr-fr\\/windows\\/activer-windows-c39005d4-95ee-b91e-b399-2820fda32227\",\"license\":[\"edkfmzekmekgv\",\"dsvsdv\",\"vsdvsd\",\"vsdvsdv:;,\"],\"license_qty\":[\"1\",\"1\",\"1\",\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'YDCT1699312954', 'Completed', 'hhdhxhdjfk@gmail.com', '5CinqDz Amine', 'Algeria', '+213541029808', 'Kouba Alger', 'Algiers', '16000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-06 23:22:34', '2023-11-06 23:22:34', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Algeria', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(55, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"427\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":2,\"price\":5,\"item\":{\"id\":427,\"user_id\":\"0\",\"slug\":\"windows-10-pro-\",\"name\":\"Windows 10 Pro\",\"photo\":\"1699119773TTn0AhFV.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"3\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/support.microsoft.com\\/fr-fr\\/windows\\/activer-windows-c39005d4-95ee-b91e-b399-2820fda32227\",\"license\":[\"edkfmzekmekgv\",\"dsvsdv\",\"vsdvsd\",\"vsdvsdv\"],\"license_qty\":[\"1\",\"1\",\"1\",\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, 'GJXR1699313111', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Virgin Islands (U.S.)', '+213541029808', 'admin@gmail.com', 'asd', '5055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-06 23:25:11', '2023-11-06 23:25:11', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Virgin Islands (U.S.)', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0),
(56, 2, '{\"totalQty\":1,\"totalPrice\":5,\"items\":{\"427\":{\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":2,\"price\":5,\"item\":{\"id\":427,\"user_id\":\"0\",\"slug\":\"windows-10-pro-\",\"name\":\"Windows 10 Pro\",\"photo\":\"1699119773TTn0AhFV.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5,\"stock\":\"3\",\"type\":\"License\",\"file\":null,\"link\":\"https:\\/\\/support.microsoft.com\\/fr-fr\\/windows\\/activer-windows-c39005d4-95ee-b91e-b399-2820fda32227\",\"license\":[\"edkfmzekmekgv\"],\"license_qty\":[\"1\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"1\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":5,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Wallet', 'shipto', 'Azampur', '1', 0, NULL, NULL, '47kw1699313346', 'Completed', 'admin@gmail.com', '5CinqDz Amine', 'Uganda', '+213541029808', 'admin@gmail.coam', 'asd', '52250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2023-11-06 23:29:06', '2023-11-06 23:29:06', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Uganda', 1, NULL, 0, 0, 5, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(10, 14, 'Pending', 'You have successfully placed your order.', '2023-11-04 11:58:02', '2023-11-04 11:58:02'),
(11, 15, 'Pending', 'You have successfully placed your order.', '2023-11-04 11:59:18', '2023-11-04 11:59:18'),
(12, 16, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:01:07', '2023-11-04 12:01:07'),
(13, 17, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:06:06', '2023-11-04 12:06:06'),
(14, 18, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:09:15', '2023-11-04 12:09:15'),
(15, 19, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:13:59', '2023-11-04 12:13:59'),
(16, 20, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:18:27', '2023-11-04 12:18:27'),
(17, 21, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:19:31', '2023-11-04 12:19:31'),
(18, 22, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:19:32', '2023-11-04 12:19:32'),
(19, 23, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:20:24', '2023-11-04 12:20:24'),
(20, 24, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:24:31', '2023-11-04 12:24:31'),
(21, 25, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:26:23', '2023-11-04 12:26:23'),
(22, 26, 'Pending', 'You have successfully placed your order.', '2023-11-04 12:30:50', '2023-11-04 12:30:50'),
(23, 27, 'Pending', 'You have successfully placed your order.', '2023-11-04 15:41:53', '2023-11-04 15:41:53'),
(24, 28, 'Pending', 'You have successfully placed your order.', '2023-11-04 15:57:42', '2023-11-04 15:57:42'),
(25, 29, 'Pending', 'You have successfully placed your order.', '2023-11-04 16:34:48', '2023-11-04 16:34:48'),
(26, 30, 'Pending', 'You have successfully placed your order.', '2023-11-04 16:37:23', '2023-11-04 16:37:23'),
(27, 31, 'Pending', 'You have successfully placed your order.', '2023-11-04 16:44:57', '2023-11-04 16:44:57'),
(28, 32, 'Pending', 'You have successfully placed your order.', '2023-11-04 16:51:30', '2023-11-04 16:51:30'),
(29, 33, 'Pending', 'You have successfully placed your order.', '2023-11-04 16:52:54', '2023-11-04 16:52:54'),
(30, 34, 'Pending', 'You have successfully placed your order.', '2023-11-04 16:53:20', '2023-11-04 16:53:20'),
(31, 35, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:02:14', '2023-11-04 17:02:14'),
(32, 36, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:07:36', '2023-11-04 17:07:36'),
(33, 37, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:10:06', '2023-11-04 17:10:06'),
(34, 38, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:11:28', '2023-11-04 17:11:28'),
(35, 39, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:30:51', '2023-11-04 17:30:51'),
(36, 40, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:34:30', '2023-11-04 17:34:30'),
(37, 41, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:36:20', '2023-11-04 17:36:20'),
(38, 42, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:36:48', '2023-11-04 17:36:48'),
(39, 43, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:37:10', '2023-11-04 17:37:10'),
(40, 44, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:37:54', '2023-11-04 17:37:54'),
(41, 45, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:40:21', '2023-11-04 17:40:21'),
(42, 46, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:42:39', '2023-11-04 17:42:39'),
(43, 47, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:45:20', '2023-11-04 17:45:20'),
(44, 48, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:48:19', '2023-11-04 17:48:19'),
(45, 49, 'Pending', 'You have successfully placed your order.', '2023-11-04 17:57:34', '2023-11-04 17:57:34'),
(46, 50, 'Pending', 'You have successfully placed your order.', '2023-11-04 18:04:31', '2023-11-04 18:04:31'),
(47, 51, 'Pending', 'You have successfully placed your order.', '2023-11-04 18:08:36', '2023-11-04 18:08:36'),
(48, 52, 'Pending', 'You have successfully placed your order.', '2023-11-04 20:38:19', '2023-11-04 20:38:19'),
(49, 53, 'Pending', 'You have successfully placed your order.', '2023-11-06 23:22:16', '2023-11-06 23:22:16'),
(50, 54, 'Pending', 'You have successfully placed your order.', '2023-11-06 23:22:34', '2023-11-06 23:22:34'),
(51, 55, 'Pending', 'You have successfully placed your order.', '2023-11-06 23:25:11', '2023-11-06 23:25:11'),
(52, 56, 'Pending', 'You have successfully placed your order.', '2023-11-06 23:29:06', '2023-11-06 23:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15),
(4, 22, 'Large box', 'Large box', 2),
(5, 2, 'sbs', 'sfbs', 1.17);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `photo`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"></div>', '164593825554png.png', NULL, NULL, 1, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593897354png.png', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 0),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.44444; font-size: 52px; color: rgb(20, 50, 80); font-family: &quot;Open Sans&quot;, sans-serif;\"><font size=\"6\" style=\"box-sizing: border-box;\">Title number 1</font><br style=\"box-sizing: border-box;\"></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></h2><h2 style=\"line-height: 1.44444;\"><font size=\"6\">Title number 2</font><br></h2><h2><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"color: rgb(70, 85, 65); font-size: 16px;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div></h2></div>', '164593902254png.png', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int UNSIGNED NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_text` text COLLATE utf8mb4_unicode_ci,
  `rightbanner1` text COLLATE utf8mb4_unicode_ci,
  `rightbanner2` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink1` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink2` text COLLATE utf8mb4_unicode_ci,
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  `contact` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `arrival_section` tinyint(1) NOT NULL DEFAULT '1',
  `our_services` tinyint(1) NOT NULL DEFAULT '1',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `partner` tinyint(1) NOT NULL DEFAULT '1',
  `top_big_trending` tinyint(1) NOT NULL DEFAULT '0',
  `top_banner` int NOT NULL DEFAULT '1',
  `large_banner` int NOT NULL DEFAULT '1',
  `bottom_banner` int NOT NULL DEFAULT '1',
  `best_selling` int NOT NULL DEFAULT '1',
  `newsletter` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_email`, `street`, `phone`, `fax`, `email`, `site`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `big_save_banner_subtitle`, `big_save_banner_title`, `big_save_banner_text`, `rightbanner1`, `rightbanner2`, `rightbannerlink1`, `rightbannerlink2`, `home`, `blog`, `faq`, `contact`, `category`, `arrival_section`, `our_services`, `slider`, `partner`, `top_big_trending`, `top_banner`, `large_banner`, `bottom_banner`, `best_selling`, `newsletter`) VALUES
(1, 'support@saheldz.com', NULL, 'Telegram : @Dzyshp', NULL, 'support@saheldz.com', 'https://Saheldz.com/', '1639369899side-banner22png.png', 'http://google.com', '1639370813Bottom31png.png', 'http://google.com', '1639369899bottom3-bigg1png.png', 'http://google.com', '1698956014-50png.png', 'https://saheldz.com/category', 'SPECIAL OFFER', 'Special Black Friday Discount code : (BLACKFRIDAY)', '28/09/2023.', '1573547281sm-banner.jpg', '1573547653sm-banner.jpg', 'https://codecanyon.net/user/geniusocean/portfolio', 'https://codecanyon.net/user/geniusocean/portfolio', 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(8, '1571289601p2.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(9, '1571289608p3.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(10, '1571289614p4.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(11, '1571289621p5.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(12, '1571289627p6.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(13, '1571289634p7.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(14, '1571289642p8.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(15, '1571289650p9.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(16, '1571289657p10.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(18, '1571289669p12.jpg', 'https://codecanyon.net/user/geniusocean/portfolio'),
(19, '1571289675p13.jpg', 'https://codecanyon.net/user/geniusocean/portfolio');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '*',
  `checkout` int NOT NULL DEFAULT '1',
  `deposit` int NOT NULL DEFAULT '1',
  `subscription` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '*', 1, 0, 0),
(2, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', NULL, 'manual', NULL, NULL, '*', 0, 0, 0),
(4, NULL, NULL, NULL, 'SSLCommerz', 'automatic', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":1,\"text\":\"Pay Via SSLCommerz.\"}', 'sslcommerz', '[\"4\"]', 0, 0, 0),
(6, NULL, NULL, NULL, 'Flutter Wave', 'automatic', '{\"public_key\":\"FLWPUBK_TEST-299dc2c8bf4c7f14f7d7f48c32433393-X\",\"secret_key\":\"FLWSECK_TEST-afb1f2a4789002d7c0f2185b830450b7-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '[\"1\",\"9\"]', 0, 0, 0),
(7, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"sandbox_check\":1,\"text\":\"Pay Via MercadoPago\"}', 'mercadopago', '[\"1\"]', 0, 0, 0),
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize.net', '[\"1\"]', 0, 0, 0),
(9, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"8\"]', 0, 0, 0),
(10, NULL, NULL, NULL, 'Mollie Payment', 'automatic', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\",\"text\":\"Pay with Mollie Payment.\"}', 'mollie', '[\"1\",\"6\"]', 0, 0, 0),
(11, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '[\"8\"]', 0, 0, 0),
(12, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"9\"]', 0, 0, 0),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 0, 0, 0),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"ARCvjsfofSJG1cvxZFnMZxxjHvnyAnF6eabpxRdv5Y3d1m2Tg7yjcumaQ_T_w_hM2lEIEUTn35raJE9w\",\"client_secret\":\"EIkzpJiUYAm2mH67UXKDWzD_MdiquzK25FXIyxbkmvFOxo_VN9SwE5UDRXRRUeKkHDYCMwglNUv03xT-\",\"sandbox_check\":0,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\",\"6\"]', 1, 1, 1),
(20, NULL, NULL, NULL, 'El Dahabia / CIB', 'automatic', '{\"api_key\":\"api_iZO9kxAXOU3ztsWty9s6mn86Oip2bDNIwPm39P4oxe8aANfxt3yZD9NP68RnrE5M\",\"api_secret\":\"secret_b1ca51d792ab8e6838311d2833fcddb27ac03dd463b9dce2f21dc53012811c19\",\"text\":\"DAHABIA\\/CIB\"}', 'chargily', '[\"12\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int UNSIGNED NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int NOT NULL DEFAULT '0',
  `category_id` int UNSIGNED NOT NULL,
  `subcategory_id` int UNSIGNED DEFAULT NULL,
  `childcategory_id` int UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License','Listing') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` date DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int NOT NULL DEFAULT '0',
  `preordered` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_all` text,
  `size_all` text,
  `stock_check` int NOT NULL DEFAULT '1',
  `delievery_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`, `delievery_time`) VALUES
(388, NULL, 'normal', NULL, 1, 20, 35, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1},\"subscription_type\":{\"values\":[\"Basic\"],\"prices\":[0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\"],\"prices\":[0,4,10,20],\"details_status\":1}}', 'Netflix Basic', 'netflix-basic-qx2388jbp', '1698779668rgDDjrwN.png', '16987796687p6D0PRE.jpg', NULL, NULL, NULL, NULL, NULL, 2, 0, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', NULL, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', 1, 13, 'Netflix,netflix basic', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'defnosdnfosijpsijvpsv', '0', 'https://netflix.com', NULL, 'Global', 'Account', NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-10-31 19:14:28', '2023-11-05 14:13:04', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(389, NULL, 'normal', NULL, 1, 20, 35, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1},\"subscription_type\":{\"values\":[\"Standard\"],\"prices\":[0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\"],\"prices\":[0,6,15,27],\"details_status\":1}}', 'Netflix Standard', 'netflix-standard-4jr389zug', '1698780055u4pLXRwy.png', '169878005553cCrw3P.jpg', NULL, NULL, NULL, NULL, NULL, 3, 0, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', NULL, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', 1, 16, 'Netflix,Netflix standard,standard', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'defnosdnfosijpsijvpsv', '0', 'https://netflix.com', NULL, 'Global', 'Account', NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2023-10-31 19:20:55', '2023-11-04 12:09:15', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(390, NULL, 'normal', NULL, 1, 20, 35, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1},\"subscription_type\":{\"values\":[\"Premium UHD\"],\"prices\":[0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\"],\"prices\":[0,8,20,36],\"details_status\":1}}', 'Netflix Premium 4K', 'netflix-premium-4k-9hf390upd', '1698780167waqxj3PF.png', '1698780167K7qQEjPg.jpg', NULL, NULL, NULL, NULL, NULL, 4, 0, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', NULL, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', 1, 42, 'Netflix,NETFLIX PREMIUM,UHD,4K', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'defnosdnfosijpsijvpsv', '0', 'https://netflix.com', NULL, 'Global', 'Account', NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-10-31 19:22:47', '2023-11-07 12:05:53', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(398, NULL, 'normal', NULL, 1, 20, 39, NULL, '{\"warranty\":{\"values\":[\"1 Month\",\"3 Month\",\"6 Month\",\"12 Month\"],\"prices\":[0,0,0,0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\"],\"prices\":[0,6,15,32],\"details_status\":1}}', 'Disney+', 'disney-cmd398xl4', '1698816317x6Bh2EoD.png', '1698816317PYTtQ5nT.jpg', NULL, NULL, NULL, NULL, NULL, 3, 0, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', NULL, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', 1, 25, 'disney+,disney,disney plus', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'fbsdfbdfbdfbfq', '0', 'htps://disneyplus.com', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2023-11-01 05:25:17', '2023-11-06 09:33:57', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(405, NULL, 'normal', NULL, 1, 26, 56, NULL, NULL, 'CANVA Pro', 'canva-pro-', '16989216406T8LQOMA.png', '1698921640O0GAbNbO.jpg', NULL, NULL, NULL, NULL, NULL, 4, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 222px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\"><div class=\"xianxi p-d-textbody-height-auto\" style=\"white-space-collapse: collapse; height: 222px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅ CANVA PRO\r\n🛒 WHAT YOU WILL GET:\r\n✅ 100% renewal of Canva PRO student subscription\r\n✅ 100% quality service&nbsp;</div><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅ Up to 3 year suscription&nbsp;</div><div class=\"wb_text_in\" style=\"margin-top: 10px;\">&nbsp;After payment, you will receive a Canva invitation link.\r\nLog in with your username or create a new account.\r\nEnjoy unlimited access to Canva PRO.\r\nNo refunds, only replacement in case of a defect for the same product! USAGE GUARANTEE AFTER PURCHASE FOR 6 MONTHS.<br></div>\r\n</div></div></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 222px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\"><div class=\"xianxi p-d-textbody-height-auto\" style=\"white-space-collapse: collapse; height: 222px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅ CANVA PRO\r\n🛒 WHAT YOU WILL GET:\r\n✅ 100% renewal of Canva PRO student subscription\r\n✅ 100% quality service&nbsp;</div><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅ Up to 3 year suscription&nbsp;</div><div class=\"wb_text_in\" style=\"margin-top: 10px;\">&nbsp;After payment, you will receive a Canva invitation link.\r\nLog in with your username or create a new account.\r\nEnjoy unlimited access to Canva PRO.\r\nNo refunds, only replacement in case of a defect for the same product! USAGE GUARANTEE AFTER PURCHASE FOR 6 MONTHS.<br></div>\r\n</div></div></div></div></div>', 1, 10, 'canva,canva pro,canva edu', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'sdjvsoldnvslnvxfb', '1', 'Canva.com', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2023-11-02 10:40:40', '2023-11-04 18:14:50', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(406, NULL, 'normal', NULL, 1, 20, 38, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Month\",\"6 Month\",\"12 Month\"],\"prices\":[0,6,15,30],\"details_status\":1}}', 'Amazon Prime Video', 'amazon-prime-video-gx2406czx', '16989220518VLMZlPl.png', '1698922051PbpxLGWt.jpg', NULL, NULL, NULL, NULL, NULL, 3, 0, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', NULL, '<div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Works on any device.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ You can change the language while watching.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account won\'t stop working if you don\'t change credentials (email, password).</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ Contact us for any issue, if the account stops working before the duration</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Safety Account Warranty 100%</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ If you have any questions or need a custom deal you can contact us beforehand using Z2u chat.</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Support 24/7</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅Delivery Full Info when you made Purchase ⚡Faster and safe⚡</div><div style=\"color: rgb(118, 118, 120); font-family: &quot;Open Sans&quot;; font-size: 16px;\">✅ The account have a 15 days warranty and may last couple of month with auto-renew suscription</div>', 1, 8, 'Prime video,amazon prime', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'dvqsvmjmkjzgpe', '1', 'https://www.primevideo.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 10:47:31', '2023-11-05 20:47:24', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(407, NULL, 'normal', NULL, 1, 20, 45, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"3 Months\",\"6 Months\",\"12 Months\"],\"prices\":[0,7.5,20],\"details_status\":1}}', 'Apple TV', 'apple-tv-nhq407rnp', '16989231539q8tbXHN.png', '16989231535hSktXXY.jpg', NULL, NULL, NULL, NULL, NULL, 7.5, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">* Account are opened exclusively for you\r\n*The accounting period you will purchase is 3 month.\r\n*accounts full access will given to buyer.\r\n* \" we assure Full Support .\r\n♦️Warranty Note :\r\n*Accounts you receive are never closed before they expire.\r\n✅ If the subscription ends before the time we give you and the account remains active, we offer a replacement.<br></div>\r\n</div></div><div class=\"show-all product_page_description_btn_box\" style=\"margin-bottom: -100px; top: -80px; width: 804px; height: 114px; background: none; z-index: 2; padding-top: 40px; color: rgb(252, 67, 57); position: relative; font-family: Goth;\"></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">* Account are opened exclusively for you\r\n*The accounting period you will purchase is 3 month.\r\n*accounts full access will given to buyer.\r\n* \" we assure Full Support .\r\n♦️Warranty Note :\r\n*Accounts you receive are never closed before they expire.\r\n✅ If the subscription ends before the time we give you and the account remains active, we offer a replacement.<br></div>\r\n</div></div>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'aalihohidvq', '0', 'https://www.apple.com/tv-home/', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2023-11-02 11:05:53', '2023-11-04 12:21:40', 1, '2023-11-07', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(408, NULL, 'normal', NULL, 1, 20, 40, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1},\"subscription_type\":{\"values\":[\"VIP\"],\"prices\":[0],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\"],\"prices\":[0,7,17.5,35],\"details_status\":1}}', 'Shahid VIP', 'shahid-vip-8nu408ayq', '1698923660tozHmASY.png', '1698923660UTsG3xJQ.jpg', NULL, NULL, NULL, NULL, NULL, 3.5, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\"><br>🔥OFFICIAL SHAHID VIP\r\n✅1 Months Warranty\r\n✅ Account might work for months if you follow the account\r\n✅ I usually respond in just a few minutes if I am not asleep or away from home.\r\nrules and tips\r\nshared account<br></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">🔥OFFICIAL SHAHID VIP\r\n✅1 Months Warranty\r\n✅ Account might work for months if you follow the account\r\n✅ I usually respond in just a few minutes if I am not asleep or away from home.\r\nrules and tips\r\nshared account<br></div></div></div>', 1, 9, 'shahid,shahid vip,vip', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'zieghpeig', '1', 'http://shahid.net/', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 11:14:20', '2023-11-05 20:47:23', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(409, NULL, 'normal', NULL, 1, 20, 60, NULL, '{\"warranty\":{\"values\":[\"Full duration mentioned\"],\"prices\":[0],\"details_status\":1}}', 'Youtube Premium +', 'youtube-premium-tm64094ku', '16989244450M11hECL.png', '1698924445fhxhsV5z.jpg', NULL, NULL, NULL, NULL, NULL, 3, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅ 1 Month 𝐘𝐎𝐔𝐓𝐔𝐁𝐄 Private Account.\r\n✅Mail Accessible.\r\n✅Instantly Delivery\r\n🌍 Work Worldwide\r\n✅ Full Warranty and Support\r\n✅ Can Change Password<br></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅ 1 Month 𝐘𝐎𝐔𝐓𝐔𝐁𝐄 Private Account.\r\n✅Mail Accessible.\r\n✅Instantly Delivery\r\n🌍 Work Worldwide\r\n✅ Full Warranty and Support\r\n✅ Can Change Password<br></div></div></div>', 1, 12, 'Youtube premium', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'jefqmnfksmqdnv', '0', 'http://youtube.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-02 11:27:25', '2023-11-07 00:07:04', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(410, NULL, 'normal', NULL, 1, 22, 41, NULL, '{\"warrant\":{\"values\":[\"1 Months\"],\"prices\":[0],\"details_status\":1}}', 'Spotify Premium', 'spotify-premium-0au410jjo', '1698924809gsGn5DvJ.png', '1698924809IjAKg9FG.jpg', NULL, NULL, NULL, NULL, NULL, 3, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">After purchase please send us your spotify acocunt to upgrade it\r\n1 month subscription\r\ninstant delivery\r\n* Can be used on All devices – Android, IOS, PC, Mac, Playstation, etc\r\nNo interruptions – Play the\r\n* music you love, ad-free.\r\n*Offline playback – Save your data by listening offline.\r\n* Worldwide and All Devices<br></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">After purchase please send us your spotify acocunt to upgrade it\r\n1 month subscription\r\ninstant delivery\r\n* Can be used on All devices – Android, IOS, PC, Mac, Playstation, etc\r\nNo interruptions – Play the\r\n* music you love, ad-free.\r\n*Offline playback – Save your data by listening offline.\r\n* Worldwide and All Devices<br></div></div></div>', 1, 11, 'spotify,spotify premium', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'oidvpsdvpsov,', '0', 'http://spotify.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-02 11:33:29', '2023-11-06 05:28:26', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(411, NULL, 'normal', NULL, 1, 22, 42, NULL, '{\"warrant\":{\"values\":[\"1 Months\"],\"prices\":[0],\"details_status\":1}}', 'Deezer Premium', 'deezer-premium-wn4411odu', '1698924991L0XaLWQD.png', '1698924991C3S7M3am.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">Deezer premium\r\n1-month private account\r\nAfter purchase, you will receive brand new login info subscribed to Deezer premium<br></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">Deezer premium\r\n1-month private account\r\nAfter purchase, you will receive brand new login info subscribed to Deezer premium<br></div></div></div>', 1, 9, 'Deezer,deezer premium,music', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'dfnspeifspd', '1', 'http://deezer.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-02 11:36:31', '2023-11-05 08:13:42', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(412, NULL, 'normal', NULL, 1, 22, 43, NULL, '{\"warrant\":{\"values\":[\"1 Months\"],\"prices\":[0],\"details_status\":1}}', 'Apple Music +', 'apple-music-yhg412vwb', '1698925238YaV2mKaq.png', '1698925238W6Lsw8sD.jpg', NULL, NULL, NULL, NULL, NULL, 4.25, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅Private account\r\n✅30 day subscription\r\n✅instant delivery max 5 minutes\r\n✅Account region (work worldwide)\r\nIf you have any question you can contact us via chat<br></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅Private account\r\n✅30 day subscription\r\n✅instant delivery max 5 minutes\r\n✅Account region&nbsp; (work worldwide)\r\nIf you have any question you can contact us via chat<br></div></div></div>', 1, 10, 'Apple music,apple', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'sgsgshsgs', '1', 'http://apple.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 11:40:38', '2023-11-05 20:46:50', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(413, NULL, 'normal', NULL, 1, 22, 44, NULL, '{\"warrant\":{\"values\":[\"1 Months\"],\"prices\":[0],\"details_status\":1}}', 'Napster', 'napster-xb4413duj', '1698925398NVOalGfV.png', '1698925399K2VNLNyr.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅Private account\r\n✅30 day subscription\r\n✅instant delivery max 5 minutes\r\n✅Account region (work worldwide)\r\nIf you have any question you can contact us via chat<br></div></div></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 195px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅Private account\r\n✅30 day subscription\r\n✅instant delivery max 5 minutes\r\n✅Account region&nbsp; (work worldwide)\r\nIf you have any question you can contact us via chat<br></div></div></div>', 1, 6, 'napster,music', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'zekgpzefqpf', '0', 'http://napster.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-02 11:43:18', '2023-11-04 12:08:28', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(419, NULL, 'normal', NULL, 1, 23, 46, NULL, NULL, 'Xbox Game Passe Ultimate', 'xbox-game-passe-ultimate-', '1698927557sPsd3oBJ.png', '1698927557VRdaZbS9.jpg', NULL, NULL, NULL, NULL, NULL, 1.5, 0, '<br>', NULL, '<br>', 1, 15, 'xbox,game pass ultimate', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'sievpjsidjvspov', '0', 'xobx.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:02:01', '2023-11-06 03:34:43', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(420, NULL, 'normal', NULL, 1, 24, 49, NULL, '{\"warranty\":{\"values\":[\"1 month\",\"3 Months\",\"6 Months\",\"1 Year\"],\"prices\":[0,2.5,5,10],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\",\"2 years\",\"3 years\"],\"prices\":[0,0,0,0,0,0],\"details_status\":1}}', 'NordVpn', 'nordvpn-7zd420hmv', '1698927506d3cTqRKi.png', '1698927506a9bNAa3Z.jpg', NULL, NULL, NULL, NULL, NULL, 3.5, 0, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', NULL, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', 1, 11, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'hibiugighusds', '0', 'nordaccount.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:18:26', '2023-11-06 22:22:05', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(421, NULL, 'normal', NULL, 1, 24, 50, NULL, '{\"warranty\":{\"values\":[\"1 month\",\"3 Months\",\"6 Months\",\"1 Year\"],\"prices\":[0,2.5,5,10],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\",\"2 years\",\"3 years\"],\"prices\":[0,0,0,0,0,0],\"details_status\":1}}', 'ExpressVpn', 'expressvpn-d6l421kja', '1698928017Cx2xlLoq.png', '1698928017UGRyspsN.jpg', NULL, NULL, NULL, NULL, NULL, 3.75, 0, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', NULL, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', 1, 12, 'expressvpn', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'lejfpzeijfpzejfipzj', '0', 'expressvpn.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:26:57', '2023-11-04 13:09:43', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(422, NULL, 'normal', NULL, 1, 24, 51, NULL, '{\"warranty\":{\"values\":[\"1 month\",\"3 Months\",\"6 Months\",\"1 Year\"],\"prices\":[0,2.5,5,10],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\",\"2 years\",\"3 years\"],\"prices\":[0,0,0,0,0,0],\"details_status\":1}}', 'IpVanish', 'ipvanish-8jc422ezz', '1698928144ZYMoA7td.png', '16989281446Omdsypq.jpg', NULL, NULL, NULL, NULL, NULL, 3.5, 0, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', NULL, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', 1, 12, 'ipvanish', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'lejfpzeijfpzejfipzj', '0', 'invanish.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:29:04', '2023-11-06 19:32:01', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(423, NULL, 'normal', NULL, 1, 24, 52, NULL, '{\"warranty\":{\"values\":[\"1 month\",\"3 Months\",\"6 Months\",\"1 Year\"],\"prices\":[0,2.5,5,10],\"details_status\":1},\"subscription_duration\":{\"values\":[\"1 Month\",\"3 Months\",\"6 Months\",\"12 Months\",\"2 years\",\"3 years\"],\"prices\":[0,0,0,0,0,0],\"details_status\":1}}', 'TunnelBear', 'tunnelbear-9bg4239tj', '1698928258pAhhfvWa.png', '1698928258FMyNLA3T.jpg', NULL, NULL, NULL, NULL, NULL, 3.75, 0, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', NULL, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">*Most of these Accounts Have Automatic Renew.</p>', 1, 9, 'TunnelBear', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'djnfhozehufzihe', '0', 'TunnelBear.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:30:58', '2023-11-05 20:48:04', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(424, NULL, 'normal', NULL, 1, 26, 57, NULL, '{\"warranty\":{\"values\":[\"7 Days\"],\"prices\":[0],\"details_status\":1}}', 'Freepik', 'freepik-hw3424os7', '1698928970cJ29jYWN.png', '1698928970ZvXMGA2T.jpg', NULL, NULL, NULL, NULL, NULL, 4, 0, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\"><span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Delivered as account and password or key</span><br></p>', NULL, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\"><span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Delivered as account and password or key</span><br></p>', 1, 9, 'freepik', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'egspgijsipgvsdgsd', '1', 'freepik.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:42:50', '2023-11-07 03:23:10', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(425, NULL, 'normal', NULL, 1, 26, 58, NULL, '{\"warranty\":{\"values\":[\"7 Days\"],\"prices\":[0],\"details_status\":1}}', 'Shutterstock', 'shutterstock-6i842585k', '16989294165uIt0i3w.png', '1698929416rYdR0UsL.jpg', NULL, NULL, '0', NULL, NULL, 5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">✅ Private Account\r\n✅ 10 Download Rights\r\n✅ Image Vector\r\n✅ Must be used within 10-15 days\r\n✔ Delivery Time May Take 24 Hours</span><br>', 475, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\"><span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">✅ Private Account\r\n✅ 10 Download Rights\r\n✅ Image Vector\r\n✅ Must be used within 10-15 days\r\n✔ Delivery Time May Take 24 Hours</span><br></p>', 1, 62, 'Shutterstock', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'jjdhdgst', '5', 'https://www.shutterstock.com/', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:50:16', '2023-11-05 20:46:56', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(426, NULL, 'normal', NULL, 1, 26, 59, NULL, '{\"warranty\":{\"values\":[\"15 Days\"],\"prices\":[0],\"details_status\":1}}', 'Adobe Creative Cloud', 'adobe-creative-cloud-as4426pvc', '169892985107r2Zac6.png', '1698929851kNc4Uj24.jpg', NULL, NULL, NULL, NULL, NULL, 5, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 171px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅14 days subscription\r\n✅Private account (you can change the email and password)\r\n✅ NOT CRACKED\r\n✅Newest versions\r\n🌟 What\'s included in this account? Here are the highlights:\r\n🌟️ Access To + 20 Apps + Updates\r\n🌟️ Access All Beta apps\r\n🌟️ On your Adobe ID (Personal email)\r\n🌟️ 2 Devices Can be connected\r\n🌟️ Mac / Windows / Ipad / Android\r\n🌟️ 100 GB Storage\r\n💎If you have any questions please contact me via&nbsp; chat</div>\r\n</div></div><div class=\"show-all product_page_description_btn_box\" style=\"margin-bottom: -100px; top: -80px; width: 804px; height: 114px; background: none; z-index: 2; padding-top: 40px; color: rgb(252, 67, 57); position: relative; font-family: Goth;\"></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 171px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">✅14 days subscription\r\n✅Private account (you can change the email and password)\r\n✅ NOT CRACKED\r\n✅Newest versions\r\n🌟 What\'s included in this account? Here are the highlights:\r\n🌟️ Access To + 20 Apps + Updates\r\n🌟️ Access All Beta apps\r\n🌟️ On your Adobe ID (Personal email)\r\n🌟️ 2 Devices Can be connected\r\n🌟️ Mac / Windows / Ipad / Android\r\n🌟️ 100 GB Storage\r\n💎If you have any questions please contact me via&nbsp; chat</div>\r\n</div></div>', 1, 34, 'crative clouds,cc,adobe', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'sdispoijfsodj', '0', 'https://account.adobe.com/', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-02 12:57:31', '2023-11-05 20:46:57', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(427, NULL, 'normal', NULL, 1, 25, 53, NULL, NULL, 'Windows 10 Pro', 'windows-10-pro-', '1699119773TTn0AhFV.png', '1699119773AZqXTXOP.jpg', NULL, NULL, NULL, NULL, NULL, 5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">🔥Welcome Our Store🔥\r\n✅ The key for activate 01 Windows 10 Professional device (Windows 11 PRO)\r\n✅ This is Retail License.\r\n✅ After payment, you will instantly receive a license activation key for Windows 10 Pro\r\n✅ The product is issued in the format of a 25-digit code.\r\n✅ If you encounter any problems, please contact me in private messages</span><br>', 2, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">🔥Welcome Our Store🔥\r\n✅ The key for activate 01 Windows 10 Professional device (Windows 11 PRO)\r\n✅ This is Retail License.\r\n✅ After payment, you will instantly receive a license activation key for Windows 10 Pro\r\n✅ The product is issued in the format of a 25-digit code.\r\n✅ If you encounter any problems, please contact me in private messages</span><br>', 1, 7, 'windows 10,windows,windows 10 pro', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'edkfmzekmekgv', '1', 'https://support.microsoft.com/fr-fr/windows/activer-windows-c39005d4-95ee-b91e-b399-2820fda32227', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-04 17:42:53', '2023-11-06 23:29:06', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`, `delievery_time`) VALUES
(428, NULL, 'normal', NULL, 1, 20, 68, NULL, NULL, 'Crunchyroll Premium', 'crunchyroll-premium-', '1699186831nh2sqnkZ.png', '1699186831vdIXy38l.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">💼 After purchase you get:\r\n✅ CRUNCHYROLL with subscription\r\n✅ Product warranty.\r\n✅ Support 24/7.\r\n* Purchased data format: Mail &amp; Password.\r\n* Product warranty 1 month.\r\n* All accounts have auto-renewal of registration.\r\nOther:\r\n📌 Changing data is prohibited!\r\n📌 There is no refund, only a replacement for an identical item or for any of our other items for sale.\r\n📌 If you have problems accessing your account, you will receive a replacement.</span>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">💼 After purchase you get:\r\n✅ CRUNCHYROLL with subscription\r\n✅ Product warranty.\r\n✅ Support 24/7.\r\n* Purchased data format: Mail &amp; Password.\r\n* Product warranty 1 month.\r\n* All accounts have auto-renewal of registration.\r\nOther:\r\n📌 Changing data is prohibited!\r\n📌 There is no refund, only a replacement for an identical item or for any of our other items for sale.\r\n📌 If you have problems accessing your account, you will receive a replacement.</span>', 1, 3, 'crunchyrolls', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'fezfzefzeefef', '1', 'https://crunchyrolls.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2023-11-05 10:07:07', '2023-11-05 20:48:01', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(429, NULL, 'normal', NULL, 1, 25, 53, NULL, NULL, 'Windows 11 Pro', 'windows-11-pro-', '16991882013ZTyDLss.png', '1699188201LBw2Tht4.jpg', NULL, NULL, NULL, NULL, NULL, 6, 0, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 171px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">This is a 100% genuine retail product key for lifetime activation of Microsoft\r\nWindows 10/11 Home in any available languages.\r\nBecause this the highest tier retail license and not an OEM key,\r\nyou can use this product key to install Windows on any compatible PC.\r\nWindows 10/11 Home Activation\r\nactivte your windows (32bit or 64bit)\r\n100% working\r\n100%permanent/lifetime Activation\r\nLimited Offer Only!!!\r\nNO BOX, NO CD. ONLY ACTIVATION KEY.\r\nCustomer Support 100% gauranteed!\r\nACTIVATION KEY will be sent via email\r\nMONEY BACK GUARANTEE if not working!\r\nEasy to use 1 Click\r\n24/7 Tech Assistance</div>\r\n</div></div><div class=\"show-all product_page_description_btn_box\" style=\"margin-bottom: -100px; top: -80px; width: 804px; height: 114px; background: none; z-index: 2; padding-top: 40px; color: rgb(252, 67, 57); position: relative; font-family: Goth;\"></div>', NULL, '<div class=\"xianxi p-d-textbody-height-auto\" style=\"height: 171px; border-top: 1px solid rgb(237, 237, 242); margin-top: 15px; padding-top: 0px; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; overflow: hidden;\"><div class=\"wenben\" style=\"white-space-collapse: preserve-breaks; overflow-wrap: break-word;\"><div class=\"wb_text_in\" style=\"margin-top: 10px;\">This is a 100% genuine retail product key for lifetime activation of Microsoft\r\nWindows 10/11 Home in any available languages.\r\nBecause this the highest tier retail license and not an OEM key,\r\nyou can use this product key to install Windows on any compatible PC.\r\nWindows 10/11 Home Activation\r\nactivte your windows (32bit or 64bit)\r\n100% working\r\n100%permanent/lifetime Activation\r\nLimited Offer Only!!!\r\nNO BOX, NO CD. ONLY ACTIVATION KEY.\r\nCustomer Support 100% gauranteed!\r\nACTIVATION KEY will be sent via email\r\nMONEY BACK GUARANTEE if not working!\r\nEasy to use 1 Click\r\n24/7 Tech Assistance</div>\r\n</div></div><div class=\"show-all product_page_description_btn_box\" style=\"margin-bottom: -100px; top: -80px; width: 804px; height: 114px; background: none; z-index: 2; padding-top: 40px; color: rgb(252, 67, 57); position: relative; font-family: Goth;\"></div>', 1, 0, 'windows 11 PRO', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'egzegsegsgs', '1', 'windows', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-05 12:41:50', '2023-11-05 12:43:22', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(430, NULL, 'normal', NULL, 1, 25, 54, NULL, NULL, 'Office 365', 'office-365-', '1699188499Tce1ZJM0.png', '1699188499kWgyehHq.jpg', NULL, NULL, NULL, NULL, NULL, 5, 0, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Private account</p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Win/Mac<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Office 365 FAMILY Web OneDrive 1TB 1 MONTHS<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅6 USERS<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅CHOOSE YOUR OWN USERNAME.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Domain Outlook<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Save your photos, videos, music and any file you want.</p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅1TB you can save (always keep a backup).<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Access your account from any device.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅You Can Change your password.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Support most languages.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅30 days<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">After purchase you will get: Email and Password</p>', NULL, '<p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Private account</p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Win/Mac<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Office 365 FAMILY Web OneDrive 1TB 1 MONTHS<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅6 USERS<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅CHOOSE YOUR OWN USERNAME.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Domain Outlook<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Save your photos, videos, music and any file you want.</p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅1TB you can save (always keep a backup).<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Access your account from any device.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅You Can Change your password.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅Support most languages.<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">✅30 days<span class=\"Apple-converted-space\">&nbsp;</span></p><p class=\"p1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;; color: rgb(0, 0, 0);\">After purchase you will get: Email and Password</p>', 1, 0, 'MS OFFICE,365', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'License', 'EFSOEFZOEZFZ', '1', 'Ms office 365', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-05 12:48:19', '2023-11-05 12:50:15', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(434, NULL, 'normal', NULL, 1, 27, 62, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\",\"100K\",\"200K\",\"500K\"],\"prices\":[0,2,4,6,8,18,38,58,98,198,398,750],\"details_status\":1}}', 'Instagram Reels Likes [instant]', 'instagram-reels-likes-instant-kao43492m', '16991925029r8Nuv8G.png', '1699192503pl2eOeRx.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM views<br></span><span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM views\r\nYou need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', 1, 2, 'instagram,Views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Instagram.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-05 13:55:02', '2023-11-06 18:57:12', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(435, NULL, 'normal', NULL, 1, 27, 62, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\",\"100K\",\"200K\",\"500K\"],\"prices\":[0,2,4,6,8,18,38,58,98,198,398,750],\"details_status\":1}}', 'Instagram Comment', 'instagram-comment-yzu435l9q', '1699192590e9w2Qa1x.png', '1699192590lhUpMLQl.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM comments&nbsp;<br></span><span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', NULL, '<span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">👤 INSTAGRAM comments&nbsp;<br></span><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', 1, 2, 'instagram,Views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Instagram.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 13:56:30', '2023-11-06 18:57:29', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(436, NULL, 'normal', NULL, 1, 27, 62, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\",\"100K\",\"200K\",\"500K\"],\"prices\":[0,2,4,6,8,18,38,58,98,198,398,750],\"details_status\":1}}', 'Instagram Story Views', 'instagram-story-views-bk7436zut', '16991926851kye5FrP.png', '1699192685CKYPiPiO.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM Story viws&nbsp;<br></span><span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', NULL, '<span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">👤 INSTAGRAM Story viws&nbsp;<br></span><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', 1, 1, 'instagram,Views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Instagram.com', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-05 13:58:05', '2023-11-05 14:09:07', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(437, NULL, 'normal', NULL, 1, 27, 62, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\",\"100K\",\"200K\",\"500K\"],\"prices\":[0,2,4,6,8,18,38,58,98,198,398,750],\"details_status\":1}}', 'Instagram Followers', 'instagram-followers-8bq437emx', '1699193261N0HDXHC5.png', '1699193261fLcFVcbG.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">👤 INSTAGRAM Followers<br></span><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', NULL, '<span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">👤 INSTAGRAM Followers<br></span><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', 1, 1, 'Instagram followers,followers,instagram', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:07:41', '2023-11-05 15:14:22', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(438, NULL, 'normal', NULL, 1, 27, 62, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\",\"100K\",\"200K\",\"500K\"],\"prices\":[0,2,4,6,8,18,38,58,98,198,398,750],\"details_status\":1}}', 'Instagram Like & Post Like', 'instagram-like-post-like-1e5438h6w', '1699193312w1wqNA8r.png', '1699193312Nl2X9UTj.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<font color=\"#444444\" face=\"Goth\"><span style=\"font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM&nbsp; Like &amp; Post Like</span></font><br><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', NULL, '<font color=\"#444444\" face=\"Goth\"><span style=\"font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM&nbsp; Like &amp; Post Like</span></font><br><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', 1, 1, 'instagram,like,post like', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:08:32', '2023-11-05 15:14:15', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(439, NULL, 'normal', NULL, 1, 27, 62, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\",\"100K\",\"200K\",\"500K\"],\"prices\":[0,2,4,6,8,18,38,58,98,198,398,750],\"details_status\":1}}', 'Instagram Views', 'instagram-views-ega4397o9', '1699193383maa7fyUh.png', '16991933837899OaUn.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<font color=\"#444444\" face=\"Goth\"><span style=\"font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM&nbsp;&nbsp;Views</span></font><br><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', NULL, '<font color=\"#444444\" face=\"Goth\"><span style=\"font-size: 12px; white-space-collapse: preserve-breaks;\">👤 INSTAGRAM&nbsp;&nbsp;Views</span></font><br><span style=\"white-space-collapse: preserve-breaks; color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\">&nbsp;You need to Provide On Instagram ID and profil Link\r\nProfile Must be Open ( Public) not Private. after the delivery you can switch to private if you want..</span><br>', 1, 1, 'instagram,Views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-05 14:09:43', '2023-11-05 14:10:20', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(440, NULL, 'normal', NULL, 1, 27, 61, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\"],\"prices\":[0,2,4,6,8,18,38,58,98],\"details_status\":1}}', 'Facebook Page Followers', 'facebook-page-followers-dlt440gju', '1699194262811FBjZk.png', '1699194262tXHMkEut.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', 1, 0, 'facebook page followers,followers', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:24:22', '2023-11-05 15:15:02', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(441, NULL, 'normal', NULL, 1, 27, 61, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\"],\"prices\":[0,2,4,6,8,18,38,58,98],\"details_status\":1}}', 'Facebook Page Likes', 'facebook-page-likes-ii6441szp', '1699194445iDLSz9Md.png', '16991944451wfhsZpb.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', 1, 0, 'facebook like,page like,like', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:27:25', '2023-11-05 15:16:01', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(442, NULL, 'normal', NULL, 1, 27, 61, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\"],\"prices\":[0,2,4,6,8,18,38,58,98],\"details_status\":1}}', 'Facebook Post Likes', 'facebook-post-likes-ig6442jmc', '1699194528K5ksupLG.png', '1699194528ruhnz1fz.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', 1, 0, 'Facebook Post Likes', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:28:48', '2023-11-05 15:14:54', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(443, NULL, 'normal', NULL, 1, 27, 61, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\",\"30K\",\"50K\"],\"prices\":[0,2,4,6,8,18,38,58,98],\"details_status\":1}}', 'Facebook Post Reactions', 'facebook-post-reactions-fad443xt6', '1699194651RhFc8Gty.png', '1699194651SxW0wrBV.jpg', NULL, NULL, NULL, NULL, NULL, 2.5, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', 1, 0, 'Facebook Post Likes', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:30:51', '2023-11-05 15:14:49', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(444, NULL, 'normal', NULL, 1, 27, 61, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\"],\"prices\":[0,7.5,15],\"details_status\":1}}', 'Facebook Package [Likes + Emoticons + Shares + Comments + Reach]', 'facebook-package-likes-emoticons-shares-comments-reach-dzu444udp', '1699194794hdJ4bbko.png', '1699194794knhJ82Nd.jpg', NULL, NULL, NULL, NULL, NULL, 10, 0, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', NULL, '<span style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px; white-space-collapse: preserve-breaks;\">Just send us the Facebook fan page Link</span><br>', 1, 0, 'PACKAGE', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:33:14', '2023-11-05 15:14:44', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(445, NULL, 'normal', NULL, 1, 27, 63, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\"],\"prices\":[0,0.25,0.5,0.75,1,2,4],\"details_status\":1}}', 'TikTok Views', 'tiktok-views-mn1445izb', '1699195359SpqmsFXf.png', '1699195359twcihlko.jpg', NULL, NULL, NULL, NULL, NULL, 0.5, 0, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', NULL, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', 1, 0, 'tiktok views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-05 14:42:39', '2023-11-05 14:42:39', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(446, NULL, 'normal', NULL, 1, 27, 63, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\"],\"prices\":[0,0.25,0.5,0.75,1,2,4],\"details_status\":1}}', 'TikTok Views + Likes', 'tiktok-views-likes-ng0446h3l', '1699195503BEd04fRR.png', '1699195503eO9BrUOi.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', NULL, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', 1, 0, 'tiktok views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:45:03', '2023-11-05 15:16:25', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(447, NULL, 'normal', NULL, 1, 27, 63, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\"],\"prices\":[0,0.25,0.5,0.75,1,2,4],\"details_status\":1}}', 'TikTok Views + Shares', 'tiktok-views-shares-mqs447c9t', '1699195870SSQKfMAc.png', '1699195870ZLgeosax.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', NULL, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', 1, 0, 'tiktok views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:51:10', '2023-11-05 15:16:20', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(448, NULL, 'normal', NULL, 1, 27, 63, NULL, '{\"quantity\":{\"values\":[\"1K\",\"2K\",\"3K\",\"4K\",\"5K\",\"10K\",\"20K\"],\"prices\":[0,0.25,0.5,0.75,1,2,4],\"details_status\":1}}', 'TikTok Likes', 'tiktok-likes-b0u448uxn', '1699195976wmwoyLJ7.png', '1699195976DgAqCiXF.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', NULL, '<div class=\"wb_text_in\" style=\"margin-top: 10px; white-space-collapse: preserve-breaks;\">Just send us the TIKTOK fan page Link</div><div><br style=\"color: rgb(68, 68, 68); font-family: Goth; font-size: 12px;\"></div>', 1, 2, 'tiktok views', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, 'Send me your invoice on message or on telegram : @dzyshp', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2023-11-05 14:52:56', '2023-11-06 17:45:52', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL),
(452, NULL, 'normal', NULL, 1, 29, 77, 45, NULL, 'MightyStore WooCommerce - E-commerce Full App 18.0', 'mightystore-woocommerce-e-commerce-full-app-180-', '1699327869kY3IGjso.png', '1699327869M4sHfpMI.jpg', '1699299006j3qpPe6Kzip', NULL, NULL, NULL, NULL, 22.5, 0, '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">MightyStore app is universal app for e-commerce app build from Flutter framework that was developed by Google. This ultimate app saves a hefty amount of hours you should otherwise have to spend on designing, developing and testing. The ready-to-use UI design templates serves as a complete solution to launch your e-commerce shopping app. MightyStore is optimized to deliver the smart and functional app to build your e-commerce app.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Additionally, the design elements and feature set helps you develop cost-efficient and highly productive way to work on your app project. If your business already have a website that is built based on WooCommerce framework, then MightyStore is best solution to build your mobile app.</p>', NULL, '<li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Simple, Grouped, Variation/Variable, External/Artifiate, Upsells Product</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Google &amp; Apple SignIn</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">OTP login</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Dokan Multi vendor support</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Shipping method</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Multi product attributes</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Upcoming sale information</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Multi-language support</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Special price offer</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Woocommers backend</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Webview/Native payment gateway</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Dark/Light mode</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">GUI App builder</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">RTL language</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Offline images caching</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Shipment tracking</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Delivery &amp; Pickup date time</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Featured product video</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">News/Blog</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Google Analytics</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">OneSignal push notification</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Admob integration</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Search &amp; filter functionality</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Order Tracking</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Guest user sign in</li><li style=\"color: rgb(84, 84, 84); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Enable/Disable push notification from the mobile app</li><li></li>', 1, 9, 'E-commece', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-06 19:30:06', '2023-11-07 03:31:16', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 159, '2023-05-21'),
(2, 170, '2023-10-29'),
(3, 135, '2023-10-29'),
(4, 128, '2023-10-29'),
(5, 162, '2023-10-29'),
(6, 112, '2023-10-29'),
(7, 95, '2023-10-29'),
(8, 112, '2023-10-29'),
(9, 116, '2023-10-29'),
(10, 168, '2023-10-29'),
(11, 160, '2023-10-29'),
(12, 112, '2023-10-29'),
(13, 384, '2023-10-29'),
(14, 161, '2023-10-29'),
(15, 116, '2023-10-29'),
(16, 95, '2023-10-29'),
(17, 128, '2023-10-29'),
(18, 384, '2023-10-29'),
(19, 383, '2023-10-29'),
(20, 383, '2023-10-30'),
(21, 381, '2023-10-30'),
(22, 383, '2023-10-30'),
(23, 383, '2023-10-30'),
(24, 383, '2023-10-30'),
(25, 383, '2023-10-30'),
(26, 383, '2023-10-30'),
(27, 381, '2023-10-30'),
(28, 170, '2023-10-30'),
(29, 383, '2023-10-30'),
(30, 383, '2023-10-30'),
(31, 128, '2023-10-30'),
(32, 383, '2023-10-30'),
(33, 383, '2023-10-30'),
(34, 383, '2023-10-30'),
(35, 383, '2023-10-31'),
(36, 112, '2023-10-31'),
(43, 388, '2023-10-31'),
(44, 388, '2023-10-31'),
(45, 390, '2023-10-31'),
(46, 390, '2023-10-31'),
(47, 389, '2023-10-31'),
(48, 389, '2023-10-31'),
(49, 389, '2023-10-31'),
(50, 389, '2023-10-31'),
(51, 390, '2023-11-01'),
(52, 390, '2023-11-01'),
(53, 390, '2023-11-01'),
(54, 390, '2023-11-01'),
(55, 390, '2023-11-01'),
(59, 398, '2023-11-01'),
(60, 390, '2023-11-01'),
(61, 398, '2023-11-02'),
(62, 390, '2023-11-02'),
(63, 390, '2023-11-02'),
(65, 398, '2023-11-02'),
(66, 398, '2023-11-02'),
(67, 398, '2023-11-02'),
(70, 398, '2023-11-02'),
(71, 390, '2023-11-02'),
(72, 388, '2023-11-02'),
(73, 398, '2023-11-02'),
(75, 398, '2023-11-02'),
(76, 390, '2023-11-02'),
(77, 398, '2023-11-02'),
(78, 390, '2023-11-02'),
(79, 390, '2023-11-02'),
(80, 398, '2023-11-02'),
(81, 398, '2023-11-02'),
(82, 390, '2023-11-02'),
(83, 398, '2023-11-02'),
(84, 390, '2023-11-02'),
(85, 389, '2023-11-02'),
(86, 390, '2023-11-02'),
(87, 398, '2023-11-02'),
(88, 398, '2023-11-02'),
(89, 390, '2023-11-02'),
(90, 389, '2023-11-02'),
(98, 405, '2023-11-02'),
(100, 406, '2023-11-02'),
(101, 406, '2023-11-02'),
(102, 407, '2023-11-02'),
(103, 426, '2023-11-02'),
(104, 426, '2023-11-02'),
(105, 419, '2023-11-02'),
(106, 419, '2023-11-02'),
(107, 425, '2023-11-02'),
(108, 425, '2023-11-02'),
(109, 406, '2023-11-02'),
(110, 406, '2023-11-02'),
(111, 390, '2023-11-02'),
(112, 390, '2023-11-02'),
(113, 390, '2023-11-02'),
(114, 420, '2023-11-02'),
(115, 389, '2023-11-02'),
(116, 390, '2023-11-02'),
(117, 389, '2023-11-02'),
(118, 412, '2023-11-02'),
(119, 412, '2023-11-02'),
(120, 412, '2023-11-02'),
(121, 412, '2023-11-02'),
(122, 398, '2023-11-02'),
(123, 398, '2023-11-02'),
(124, 388, '2023-11-02'),
(125, 388, '2023-11-02'),
(126, 409, '2023-11-02'),
(127, 409, '2023-11-02'),
(128, 410, '2023-11-02'),
(129, 410, '2023-11-02'),
(130, 388, '2023-11-02'),
(131, 388, '2023-11-02'),
(132, 421, '2023-11-02'),
(133, 421, '2023-11-02'),
(134, 405, '2023-11-02'),
(135, 405, '2023-11-02'),
(136, 426, '2023-11-02'),
(137, 420, '2023-11-02'),
(138, 409, '2023-11-02'),
(139, 388, '2023-11-02'),
(140, 389, '2023-11-03'),
(141, 412, '2023-11-03'),
(142, 426, '2023-11-03'),
(143, 425, '2023-11-03'),
(144, 426, '2023-11-03'),
(145, 425, '2023-11-03'),
(146, 422, '2023-11-03'),
(147, 426, '2023-11-03'),
(148, 426, '2023-11-03'),
(149, 426, '2023-11-03'),
(150, 421, '2023-11-03'),
(151, 421, '2023-11-03'),
(152, 424, '2023-11-03'),
(153, 424, '2023-11-03'),
(154, 422, '2023-11-03'),
(155, 422, '2023-11-03'),
(156, 420, '2023-11-03'),
(157, 420, '2023-11-03'),
(158, 425, '2023-11-03'),
(159, 425, '2023-11-03'),
(160, 419, '2023-11-03'),
(161, 419, '2023-11-03'),
(162, 408, '2023-11-03'),
(163, 408, '2023-11-03'),
(164, 389, '2023-11-03'),
(165, 389, '2023-11-03'),
(166, 390, '2023-11-03'),
(167, 411, '2023-11-03'),
(168, 411, '2023-11-03'),
(169, 407, '2023-11-03'),
(170, 424, '2023-11-03'),
(171, 424, '2023-11-03'),
(172, 422, '2023-11-03'),
(173, 422, '2023-11-03'),
(174, 420, '2023-11-03'),
(175, 420, '2023-11-03'),
(176, 405, '2023-11-03'),
(177, 405, '2023-11-03'),
(178, 407, '2023-11-03'),
(179, 407, '2023-11-03'),
(180, 411, '2023-11-03'),
(181, 411, '2023-11-03'),
(182, 410, '2023-11-03'),
(183, 410, '2023-11-03'),
(184, 406, '2023-11-03'),
(185, 406, '2023-11-03'),
(186, 407, '2023-11-03'),
(187, 407, '2023-11-03'),
(188, 398, '2023-11-03'),
(189, 398, '2023-11-03'),
(190, 408, '2023-11-03'),
(191, 408, '2023-11-03'),
(192, 410, '2023-11-03'),
(193, 409, '2023-11-03'),
(194, 409, '2023-11-03'),
(195, 388, '2023-11-03'),
(196, 388, '2023-11-03'),
(197, 390, '2023-11-03'),
(198, 390, '2023-11-03'),
(199, 389, '2023-11-03'),
(200, 389, '2023-11-03'),
(201, 425, '2023-11-03'),
(202, 422, '2023-11-03'),
(203, 413, '2023-11-03'),
(204, 413, '2023-11-03'),
(205, 423, '2023-11-03'),
(206, 423, '2023-11-03'),
(207, 413, '2023-11-03'),
(208, 413, '2023-11-03'),
(209, 425, '2023-11-03'),
(210, 420, '2023-11-03'),
(211, 422, '2023-11-03'),
(212, 426, '2023-11-04'),
(213, 409, '2023-11-04'),
(214, 409, '2023-11-04'),
(215, 408, '2023-11-04'),
(216, 412, '2023-11-04'),
(217, 426, '2023-11-04'),
(218, 426, '2023-11-04'),
(219, 408, '2023-11-04'),
(220, 411, '2023-11-04'),
(221, 419, '2023-11-04'),
(222, 389, '2023-11-04'),
(223, 426, '2023-11-04'),
(224, 426, '2023-11-04'),
(225, 419, '2023-11-04'),
(226, 390, '2023-11-04'),
(227, 390, '2023-11-04'),
(228, 426, '2023-11-04'),
(229, 426, '2023-11-04'),
(230, 421, '2023-11-04'),
(231, 419, '2023-11-04'),
(232, 426, '2023-11-04'),
(233, 426, '2023-11-04'),
(234, 419, '2023-11-04'),
(235, 422, '2023-11-04'),
(236, 410, '2023-11-04'),
(237, 426, '2023-11-04'),
(238, 426, '2023-11-04'),
(239, 426, '2023-11-04'),
(240, 425, '2023-11-04'),
(241, 425, '2023-11-04'),
(242, 405, '2023-11-04'),
(243, 407, '2023-11-04'),
(244, 424, '2023-11-04'),
(245, 425, '2023-11-04'),
(246, 407, '2023-11-04'),
(247, 425, '2023-11-04'),
(248, 425, '2023-11-04'),
(249, 425, '2023-11-04'),
(250, 425, '2023-11-04'),
(251, 425, '2023-11-04'),
(252, 426, '2023-11-04'),
(253, 425, '2023-11-04'),
(254, 425, '2023-11-04'),
(255, 425, '2023-11-04'),
(256, 426, '2023-11-04'),
(257, 426, '2023-11-04'),
(258, 426, '2023-11-04'),
(259, 426, '2023-11-04'),
(260, 426, '2023-11-04'),
(261, 426, '2023-11-04'),
(262, 426, '2023-11-04'),
(263, 426, '2023-11-04'),
(264, 421, '2023-11-04'),
(265, 420, '2023-11-04'),
(266, 421, '2023-11-04'),
(267, 421, '2023-11-04'),
(268, 398, '2023-11-04'),
(269, 409, '2023-11-04'),
(270, 419, '2023-11-04'),
(271, 390, '2023-11-04'),
(272, 423, '2023-11-04'),
(273, 426, '2023-11-04'),
(274, 398, '2023-11-04'),
(275, 426, '2023-11-04'),
(276, 421, '2023-11-04'),
(277, 409, '2023-11-04'),
(278, 419, '2023-11-04'),
(279, 419, '2023-11-04'),
(280, 422, '2023-11-04'),
(281, 422, '2023-11-04'),
(282, 422, '2023-11-04'),
(283, 421, '2023-11-04'),
(284, 409, '2023-11-04'),
(285, 413, '2023-11-04'),
(286, 413, '2023-11-04'),
(287, 426, '2023-11-04'),
(288, 388, '2023-11-04'),
(289, 388, '2023-11-04'),
(290, 389, '2023-11-04'),
(291, 389, '2023-11-04'),
(292, 420, '2023-11-04'),
(293, 398, '2023-11-04'),
(294, 405, '2023-11-04'),
(295, 405, '2023-11-04'),
(296, 423, '2023-11-04'),
(297, 408, '2023-11-04'),
(298, 390, '2023-11-04'),
(299, 390, '2023-11-04'),
(300, 411, '2023-11-04'),
(301, 390, '2023-11-04'),
(302, 423, '2023-11-04'),
(303, 407, '2023-11-04'),
(304, 407, '2023-11-04'),
(305, 398, '2023-11-04'),
(306, 388, '2023-11-04'),
(307, 425, '2023-11-04'),
(308, 425, '2023-11-04'),
(309, 425, '2023-11-04'),
(310, 425, '2023-11-04'),
(311, 390, '2023-11-04'),
(312, 424, '2023-11-04'),
(313, 411, '2023-11-04'),
(314, 410, '2023-11-04'),
(315, 412, '2023-11-04'),
(316, 419, '2023-11-04'),
(317, 420, '2023-11-04'),
(318, 421, '2023-11-04'),
(319, 410, '2023-11-04'),
(320, 425, '2023-11-04'),
(321, 424, '2023-11-04'),
(322, 421, '2023-11-04'),
(323, 412, '2023-11-04'),
(324, 405, '2023-11-04'),
(325, 423, '2023-11-04'),
(326, 411, '2023-11-04'),
(327, 425, '2023-11-04'),
(328, 419, '2023-11-04'),
(329, 410, '2023-11-04'),
(330, 425, '2023-11-04'),
(331, 425, '2023-11-04'),
(332, 425, '2023-11-04'),
(333, 425, '2023-11-04'),
(334, 425, '2023-11-04'),
(335, 425, '2023-11-04'),
(336, 419, '2023-11-04'),
(337, 425, '2023-11-04'),
(338, 425, '2023-11-04'),
(339, 425, '2023-11-04'),
(340, 425, '2023-11-04'),
(341, 425, '2023-11-04'),
(342, 425, '2023-11-04'),
(343, 425, '2023-11-04'),
(344, 425, '2023-11-04'),
(345, 425, '2023-11-04'),
(346, 425, '2023-11-04'),
(347, 425, '2023-11-04'),
(348, 425, '2023-11-04'),
(349, 425, '2023-11-04'),
(350, 425, '2023-11-04'),
(351, 425, '2023-11-04'),
(352, 425, '2023-11-04'),
(353, 425, '2023-11-04'),
(354, 425, '2023-11-04'),
(355, 425, '2023-11-04'),
(356, 425, '2023-11-04'),
(357, 425, '2023-11-04'),
(358, 425, '2023-11-04'),
(359, 425, '2023-11-04'),
(360, 425, '2023-11-04'),
(361, 425, '2023-11-04'),
(362, 425, '2023-11-04'),
(363, 425, '2023-11-04'),
(364, 425, '2023-11-04'),
(365, 427, '2023-11-04'),
(366, 405, '2023-11-04'),
(367, 427, '2023-11-04'),
(368, 398, '2023-11-04'),
(369, 398, '2023-11-04'),
(370, 425, '2023-11-04'),
(371, 425, '2023-11-04'),
(372, 410, '2023-11-04'),
(373, 412, '2023-11-04'),
(374, 406, '2023-11-05'),
(375, 409, '2023-11-05'),
(376, 423, '2023-11-05'),
(377, 423, '2023-11-05'),
(378, 411, '2023-11-05'),
(379, 427, '2023-11-05'),
(380, 427, '2023-11-05'),
(381, 408, '2023-11-05'),
(383, 438, '2023-11-05'),
(386, 434, '2023-11-05'),
(387, 435, '2023-11-05'),
(388, 436, '2023-11-05'),
(389, 439, '2023-11-05'),
(390, 437, '2023-11-05'),
(391, 428, '2023-11-05'),
(392, 428, '2023-11-05'),
(393, 412, '2023-11-05'),
(394, 426, '2023-11-05'),
(395, 425, '2023-11-05'),
(396, 426, '2023-11-05'),
(397, 408, '2023-11-05'),
(398, 406, '2023-11-05'),
(399, 390, '2023-11-05'),
(400, 424, '2023-11-05'),
(401, 428, '2023-11-05'),
(402, 423, '2023-11-05'),
(403, 448, '2023-11-05'),
(404, 419, '2023-11-06'),
(405, 410, '2023-11-06'),
(406, 398, '2023-11-06'),
(408, 448, '2023-11-06'),
(412, 390, '2023-11-06'),
(413, 434, '2023-11-06'),
(414, 435, '2023-11-06'),
(415, 452, '2023-11-06'),
(416, 452, '2023-11-06'),
(417, 422, '2023-11-06'),
(418, 420, '2023-11-06'),
(421, 427, '2023-11-06'),
(424, 427, '2023-11-06'),
(425, 427, '2023-11-06'),
(426, 390, '2023-11-06'),
(438, 390, '2023-11-06'),
(439, 390, '2023-11-06'),
(440, 390, '2023-11-07'),
(441, 390, '2023-11-07'),
(446, 409, '2023-11-07'),
(451, 452, '2023-11-07'),
(452, 452, '2023-11-07'),
(453, 452, '2023-11-07'),
(454, 452, '2023-11-07'),
(457, 452, '2023-11-07'),
(458, 452, '2023-11-07'),
(465, 452, '2023-11-07'),
(467, 424, '2023-11-07'),
(468, 390, '2023-11-07'),
(469, 390, '2023-11-07'),
(470, 390, '2023-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comment_id` int UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint NOT NULL,
  `order_amount` double NOT NULL DEFAULT '0',
  `reward` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `order_amount`, `reward`) VALUES
(13, 200, 15),
(14, 300, 20);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , categories , products , affilate_products , bulk_product_upload , product_discussion , set_coupons , customers , customer_deposits , vendors , vendor_subscriptions , vendor_verifications , vendor_subscription_plans , messages , general_settings , home_page_settings , menu_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `facebook_pixel`, `meta_keys`, `meta_description`) VALUES
(1, 'UA-137437974-1', 'UA-137437974-1', 'Genius,Ocean,Sea,Etc,SeaGenius', 'dsjhdeykfuyoty');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(10, 0, '1. Register', 'Register for free and start your first purchase on Z2U.', '1698945560stepicon1png.png'),
(11, 0, '2. communication', 'Chat with the seller before\r\npaying and specify order details', '1698945908stepicon2png.png'),
(12, 0, '3. Payment', 'Place an order and pay for it', '1698945983stepicon3png.png'),
(13, 0, '4. Processing', 'Wait for the seller to\r\nfinish your order', '1698946042stepicon4png.png'),
(32, 0, '5. confirmation', 'Confirm the order delivery.\r\nThe seller gets paid only now', '1698946084stepicon5png.png'),
(33, 0, '6. REVIEW', 'Leave a review about the\r\nseller’s job to help others\r\nmake the right choice', '1698946137stepicon6png.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10),
(5, 22, 'EMS', '8-15 Days', 26);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
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
(23, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1699062540big-show-pic02png.png', 'left', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint NOT NULL DEFAULT '1',
  `g_status` tinyint NOT NULL DEFAULT '1',
  `t_status` tinyint NOT NULL DEFAULT '1',
  `l_status` tinyint NOT NULL DEFAULT '1',
  `d_status` tinyint NOT NULL DEFAULT '1',
  `f_check` tinyint DEFAULT NULL,
  `g_check` tinyint DEFAULT NULL,
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
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://dev.geniusocean.net/xcart/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'https://dev.geniusocean.net/xcart/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `link`, `icon`, `status`) VALUES
(1, 0, 'https://www.facebook.com/', 'fab fa-facebook-f', 1),
(2, 0, 'https://twitter.com/', 'fab fa-twitter', 1),
(3, 0, 'https://linkedin.com/', 'fab fa-linkedin-in', 1),
(4, 0, 'https://www.google.com/', 'fab fa-google-plus-g', 1),
(5, 0, 'https://dribbble.com/', 'fab fa-dribbble', 1),
(6, 13, 'https://www.google.com/', 'fab fa-google', 1),
(7, 13, 'https://twitter.com/', 'fab fa-twitter', 1),
(8, 13, 'https://www.facebook.com/', 'fab fa-facebook', 1),
(9, 13, 'https://linkedin.com/', 'fab fa-linkedin', 1),
(10, 22, 'https://www.google.com/', 'fab fa-google', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint NOT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `state` varchar(111) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `owner_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `tax`, `status`, `owner_id`) VALUES
(2, 245, 'New Youk', 2, 1, 0),
(4, 246, 'Virginia', 4, 1, 0),
(5, 237, 'Sancta Sedes', 0, 1, 0),
(6, 246, 'Harare', 0, 1, 0),
(7, 245, 'Lusaka', 0, 1, 0),
(8, 244, 'Zinjibar', 0, 1, 0),
(9, 244, 'Mukalla', 0, 1, 0),
(10, 243, 'Smara', 0, 1, 0),
(11, 243, 'Hawza', 0, 1, 0),
(12, 242, 'Vaitupu', 0, 1, 0),
(13, 242, 'Leava', 0, 1, 0),
(14, 18, 'Dhaka', 0, 1, 0),
(15, 18, 'Comilla', 0, 1, 0),
(16, 1, 'Kabul', 0, 1, 0),
(17, 1, 'Kapisa', 0, 1, 0),
(18, 2, 'Fier', 0, 1, 0),
(19, 2, 'Korce', 0, 1, 0),
(20, 13, 'Victoria', 0, 1, 0),
(21, 13, 'Tasmania', 0, 1, 0),
(22, 14, 'Vienna', 0, 1, 0),
(23, 14, 'Styria', 0, 1, 0),
(24, 20, 'Brest Oblast', 0, 1, 0),
(25, 20, 'Vitebsk Oblast', 0, 1, 0),
(26, 100, 'Assam', 0, 1, 0),
(27, 100, 'Bihar', 0, 1, 0),
(28, 100, 'Bombay', 0, 1, 0),
(29, 183, 'Adygea', 0, 1, 0),
(30, 183, 'Buryatia', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(35, 20, 'NETFLIX', 'NETFLIX', 1),
(38, 20, 'Amazon Prime Video', 'Amazon-Prime-Video', 1),
(39, 20, 'Disney+', 'Disney-plus', 1),
(40, 20, 'Shahid', 'Shahid', 1),
(41, 22, 'Spotify', 'Spotify', 1),
(42, 22, 'Deezer', 'Deezer', 1),
(43, 22, 'Apple Music', 'Apple-Music', 1),
(44, 22, 'Napster', 'Napster', 1),
(45, 20, 'Apple TV', 'Apple-TV', 1),
(46, 23, 'Xbox Game Passe Ultimate', 'Xbox-Game-Passe-Ultimate', 1),
(47, 23, 'PlayStation Now', 'PlayStation-Now', 1),
(48, 23, 'Digital Games', 'Digital-Games', 1),
(49, 24, 'NordVpn', 'NordVpn', 1),
(50, 24, 'ExpressVpn', 'ExpressVpn', 1),
(51, 24, 'IpVanish', 'IpVanish', 1),
(52, 24, 'TunnelBear', 'TunnelBear', 1),
(53, 25, 'Windows Key', 'Windows-Key', 1),
(54, 25, 'Microsoft Office', 'Microsoft-Office', 1),
(55, 25, 'Adobe Photoshop', 'Adobe-Photoshop', 1),
(56, 26, 'CANVA Pro', 'CANVA-Pro', 1),
(57, 26, 'Freepik', 'Freepik', 1),
(58, 26, 'Shutterstock', 'Shutterstock', 1),
(59, 26, 'Adobe Creative Cloud', 'Adobe-Creative-Cloud', 1),
(60, 20, 'Youtube Premium +', 'Youtube-Premium', 1),
(61, 27, 'Facebook', 'Facebook', 1),
(62, 27, 'Instagram', 'Instagram', 1),
(63, 27, 'Tiktok', 'Tiktok', 1),
(64, 27, 'Youtube', 'Youtube', 1),
(65, 27, 'Télégramme', 'Telegramme', 1),
(66, 28, 'Udemy', 'Udemy', 1),
(67, 28, 'Coursera', 'Coursera', 1),
(68, 20, 'Others', 'Others', 1),
(69, 22, 'Others', 'Others-music', 1),
(70, 23, 'Others', 'Others-concole', 1),
(71, 24, 'Others', 'Others-vpn', 1),
(72, 25, 'Others', 'Others-app', 1),
(73, 26, 'Others', 'Others-design', 1),
(74, 27, 'Others', 'others-smm', 1),
(75, 28, 'Others', 'Others-platforms', 1),
(76, 29, 'Website scripts', 'Website-scripts', 1),
(77, 29, 'Mobile Applications scripts', 'Mobile-Applications-scripts', 1),
(78, 29, 'Templates', 'Templates', 1),
(79, 29, 'Add-on', 'Add-on', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int NOT NULL,
  `allowed_products` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `price`, `days`, `allowed_products`, `details`) VALUES
(1, 'Free', 0, 30, 0, 'vkjvhk');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `reward_point` double DEFAULT '0',
  `reward_dolar` double NOT NULL DEFAULT '0',
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double DEFAULT '0',
  `currency_sign` blob,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reward_point`, `reward_dolar`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 'sQm3253kTH', 50, 0x24, 'USD', 1, NULL, NULL, 'Test', 'plus', '2023-10-31 17:27:33', '2023-10-31 17:27:33'),
(2, 2, 0, 0, 'wCf3339V7W', 50, 0x24, 'USD', 1, NULL, NULL, 'Test', 'plus', '2023-10-31 17:28:59', '2023-10-31 17:28:59'),
(3, 2, 0, 0, 'rdM3415cv7', 10000, 0x24, 'USD', 1, NULL, NULL, 'Test', 'plus', '2023-10-31 17:30:15', '2023-10-31 17:30:15'),
(4, 8, 0, 0, 'U7n4766cy4', 10000, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Test', 'plus', '2023-11-02 22:39:26', '2023-11-02 22:39:26'),
(5, 9, 0, 0, 'xwl9992zAy', 10000, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Test', 'plus', '2023-11-03 00:06:32', '2023-11-03 00:06:32'),
(6, 10, 0, 0, 'nsZ1497ncu', 100000, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Test', 'plus', '2023-11-03 00:31:37', '2023-11-03 00:31:37'),
(7, 2, 0, 0, 'epW17841Tk', 1000000, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Test', 'plus', '2023-11-03 00:36:24', '2023-11-03 00:36:24'),
(8, 2, 0, 0, 'qOv90829gh', 3, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 11:58:02', '2023-11-04 11:58:02'),
(9, 2, 0, 0, 'AGf9158rrZ', 3.75, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 11:59:18', '2023-11-04 11:59:18'),
(10, 2, 0, 0, 'dZM9267xEM', 3.5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:01:07', '2023-11-04 12:01:07'),
(11, 2, 0, 0, '4IE9566sW4', 2.5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:06:06', '2023-11-04 12:06:06'),
(12, 2, 0, 0, 'Z6s97551ZE', 3, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:09:15', '2023-11-04 12:09:15'),
(13, 2, 0, 0, 'K0e0039CWf', 3.5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:13:59', '2023-11-04 12:13:59'),
(14, 2, 0, 0, '6zt0307AbL', 4, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:18:27', '2023-11-04 12:18:27'),
(15, 2, 0, 0, 'TGm0371q4E', 3.5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:19:31', '2023-11-04 12:19:31'),
(16, 2, 0, 0, 'u9g0372pNU', 3.5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:19:32', '2023-11-04 12:19:32'),
(17, 2, 0, 0, '0ms0424wvg', 2.5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:20:24', '2023-11-04 12:20:24'),
(18, 2, 0, 0, 'a6F0671jP6', 4, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:24:31', '2023-11-04 12:24:31'),
(19, 2, 0, 0, 'v2k078354U', 4.25, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:26:23', '2023-11-04 12:26:23'),
(20, 2, 0, 0, 'fI71050lpn', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 12:30:50', '2023-11-04 12:30:50'),
(21, 2, 0, 0, 'SzT2513fKh', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 15:41:53', '2023-11-04 15:41:53'),
(22, 2, 0, 0, 'PPc3462xef', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 15:57:42', '2023-11-04 15:57:42'),
(23, 2, 0, 0, 'bgV5688QiQ', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 16:34:48', '2023-11-04 16:34:48'),
(24, 2, 0, 0, 'GkU5843rqc', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 16:37:23', '2023-11-04 16:37:23'),
(25, 2, 0, 0, 'Bhq62972Ph', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 16:44:57', '2023-11-04 16:44:57'),
(26, 2, 0, 0, 'kOs6690CLP', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 16:51:30', '2023-11-04 16:51:30'),
(27, 2, 0, 0, 'eKs7334jZJ', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:02:14', '2023-11-04 17:02:14'),
(28, 2, 0, 0, 'waR7656yPs', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:07:36', '2023-11-04 17:07:36'),
(29, 2, 0, 0, 'xIA7806Cvi', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:10:06', '2023-11-04 17:10:06'),
(30, 2, 0, 0, '7rU7888PYF', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:11:28', '2023-11-04 17:11:28'),
(31, 2, 0, 0, 'u6C9051pWz', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:30:51', '2023-11-04 17:30:51'),
(32, 2, 0, 0, 'ogc9270xZX', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:34:30', '2023-11-04 17:34:30'),
(33, 2, 0, 0, 'jDT9380AaM', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:36:20', '2023-11-04 17:36:20'),
(34, 2, 0, 0, 'tWX9408FgH', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:36:48', '2023-11-04 17:36:48'),
(35, 2, 0, 0, 'yK79430MQG', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:37:10', '2023-11-04 17:37:10'),
(36, 2, 0, 0, '0mU947465w', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:37:54', '2023-11-04 17:37:54'),
(37, 2, 0, 0, 'zeP9621nMh', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:40:21', '2023-11-04 17:40:21'),
(38, 2, 0, 0, '0hJ9759UmB', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:42:39', '2023-11-04 17:42:39'),
(39, 2, 0, 0, '2Zj99206Vr', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:45:20', '2023-11-04 17:45:20'),
(40, 2, 0, 0, 'mV30099ip7', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:48:19', '2023-11-04 17:48:19'),
(41, 2, 0, 0, 'UNM0241b9w', 100, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'as', 'plus', '2023-11-04 17:50:41', '2023-11-04 17:50:41'),
(42, 2, 0, 0, 'CVj0350Y9v', 1, 0x445a44, 'Algerian dinars', 200, NULL, NULL, '201,980,800', 'minus', '2023-11-04 17:52:30', '2023-11-04 17:52:30'),
(43, 2, 0, 0, 'nos0372ykd', 202000600, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'asdasd', 'minus', '2023-11-04 17:52:52', '2023-11-04 17:52:52'),
(44, 2, 0, 0, '2Sb0401Gjg', 1, 0x445a44, 'Algerian dinars', 200, NULL, NULL, '40,198,119,400', 'plus', '2023-11-04 17:53:21', '2023-11-04 17:53:21'),
(45, 2, 0, 0, 'jdQ04152r6', 40198119400, 0x445a44, 'Algerian dinars', 200, NULL, NULL, '213213', 'plus', '2023-11-04 17:53:35', '2023-11-04 17:53:35'),
(46, 2, 0, 0, 'RIx06543Vj', 5, 0x445a44, 'Algerian dinars', 200, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 17:57:34', '2023-11-04 17:57:34'),
(47, 2, 0, 0, 'I2T1071lpi', 5, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 18:04:31', '2023-11-04 18:04:31'),
(48, 2, 0, 0, 'ahd13168bt', 5, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 18:08:36', '2023-11-04 18:08:36'),
(49, 2, 0, 0, 'l9E2783VvU', 39997128789, 0x24, 'USD', 1, NULL, NULL, 'asdsadsa', 'minus', '2023-11-04 18:33:03', '2023-11-04 18:33:03'),
(50, 2, 0, 0, 'bYs0265K2Z', 1000, 0x24, 'USD', 1, NULL, NULL, 'Test', 'plus', '2023-11-04 20:37:45', '2023-11-04 20:37:45'),
(51, 2, 0, 0, 'hiw0299lQh', 5, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-04 20:38:19', '2023-11-04 20:38:19'),
(52, 2, 0, 0, '4Xx2936xub', 1.07, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-06 23:22:16', '2023-11-06 23:22:16'),
(53, 2, 0, 0, 'Uax2954Z8t', 5, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-06 23:22:34', '2023-11-06 23:22:34'),
(54, 2, 0, 0, 'CjY3111feS', 5, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-06 23:25:11', '2023-11-06 23:25:11'),
(55, 2, 0, 0, 'OqX3346yz0', 5, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2023-11-06 23:29:06', '2023-11-06 23:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
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
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `balance` double NOT NULL DEFAULT '0',
  `reward` double NOT NULL DEFAULT '0',
  `email_token` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `reward`, `email_token`) VALUES
(1, 'user@gmail.com', '16846462883976792131664439121jpg.jpg', '1234', 'US', 'United States', 'US', 'US', '09000000', '345353', 'user@gmail.com', '$2y$10$IrkaESLjmB16hZWxBUHM0.QcCvht0FJ.tqFmxV233Ep6jgYdoQj1e', NULL, '2023-05-20 23:18:08', '2023-10-31 17:27:33', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 50, 0, NULL),
(2, '5CinqDz Amine', '1699115446default-avatarpng.png', NULL, NULL, NULL, NULL, 'admin@gmail.com', '+213541029808', NULL, 'admin@gmail.com', '$2y$10$idqmEK3TKgJ5.443UmLQGu1kFZmFcMfCxjfy3UgblIaMbNYkHAT7a', NULL, '2023-10-29 03:39:47', '2023-11-06 23:29:06', 0, 0, '9c9391677d49ae070c1f61087aaa2611', 'Yes', '56b5c3958e5e5565f60b7184a15ceb3a', 0, 'DzyShop', 'amine', '0541029808', 'jvkvbjlb', '35746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2023-11-30', 0, 978.93, 645, NULL),
(3, '5CinqDz Amine', NULL, NULL, NULL, NULL, NULL, 'Kouba Alger', '+213541029808', NULL, 'SELMA@gmail.com', '$2y$10$hQq4zkj6SaXsdC.uXxWXYeAV9vVd/GFXWM44BsB9PpM/zLaWtNsFu', NULL, '2023-10-29 03:45:31', '2023-10-29 03:46:32', 0, 0, '1f83b5acd33db6b4bd30e1a25b7a1ecf', 'Yes', '5585152bc83ff2acc572683972ad6d23', 0, 'HHDH', 'amine', '0541029808', 'Kouba Alger', '35746', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(4, 'Saeed Hossen', NULL, NULL, NULL, NULL, NULL, 'dhaka, Bangladesh', '01780861887', NULL, 'appsaeed0@gmail.com', '$2y$10$3s0mZUrpbzUBxRN1nh.Kkexo7BR/1p8WfOF/QHavp6Z7Rj71j6YUm', NULL, '2023-11-01 03:56:05', '2023-11-01 03:56:05', 0, 0, '2d93e5271ddc5e0e7b5d404411558644', 'Yes', '203a071436947941de0b3b180e9f7932', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(5, 'jahid', NULL, NULL, NULL, NULL, NULL, 'Dhaka, Bangladeh', '017623453453', NULL, 'jahid.contact.0@gmail.com', '$2y$10$Ke5Irw6WIml6wAF5VwU/t.M.42Fpiy/H1oHQBm.p7HypEwICfAd2q', NULL, '2023-11-01 05:19:00', '2023-11-01 05:19:00', 0, 0, '02f6233f77d52b6dd79523af54caed2d', 'Yes', 'faf9b6d3f28ad91705d95814a67c0d26', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(6, 'Emily May', NULL, NULL, NULL, NULL, NULL, 'Modi voluptatem Nul', '+1 (626) 788-1116', NULL, 'reta@mailinator.com', '$2y$10$ZgJRAR8xYF...yNX1azfcu8vkGiBTswDz48KdFbwbaceJPpfijHZC', NULL, '2023-11-02 00:18:48', '2023-11-02 00:18:48', 0, 0, 'a952a2d37cb88b69eb21fb5d0f76ded0', 'Yes', '411f23dc8b10dca60bf96c99f26fc752', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(7, 'news', NULL, NULL, NULL, NULL, NULL, 'Ian', '+1 (738) 979-1046', NULL, 'daliqukop@mailinator.com', '$2y$10$c8g5McaKsfIiotQ350CQ0Oed3/VQPlEkjH9/Uf8LxLFOn/z9cNYs2', NULL, '2023-11-02 00:20:01', '2023-11-02 00:20:01', 0, 0, 'd9991a183510059173fe3435f3c3e704', 'Yes', '764ce1e98a40fa2fcf458ad5125a7891', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(8, 'RE', NULL, NULL, NULL, NULL, NULL, 'Ian', '+1 (738) 979-1046', NULL, 'rekdde@mailinator.com', '$2y$10$h8a3RpBsjT6O93wFi2JkluXszqAZIqikXSjRxYkDDq/SxkV1ycvE6', NULL, '2023-11-02 22:36:04', '2023-11-02 22:39:26', 0, 0, '9fffa10a91120e6a024e43eb83f8257e', 'Yes', '1b305e0191c497248933ff709027b770', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 10000, 0, NULL),
(9, 'Geoffrey Thompson', NULL, NULL, NULL, NULL, NULL, 'Ian', '+1 (738) 979-1046', NULL, 'edfd@mailinator.com', '$2y$10$8ixQjYQSmRrQIU6o7bqYlOrUAJ38d2QRx5UaIlwt9ZOunTyAaw6IC', NULL, '2023-11-02 23:36:54', '2023-11-03 00:06:32', 0, 0, 'd1d3c2e2f3551f253b593bd7fc0a376b', 'Yes', '79ab42ef04bbeed2b3d43943dc095702', 0, 'Jermaine Dickson', 'Jermaine Dickson', '123000', 'Canada', '54884521210', 'fddsf dfd', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 10000, 0, NULL),
(10, 'Tharuka', NULL, NULL, NULL, NULL, NULL, 'abc', '12345678', NULL, 'test@gmail.com', '$2y$10$YvuOlyTfmqoi0zcvWTXBUeZj5NFfAry75.QFnqtxD4kLBFBERz.Uy', NULL, '2023-11-03 00:22:22', '2023-11-03 00:31:37', 0, 0, '088c8650c330df66e43d582f9b0b479a', 'Yes', 'cb68f01ee6b3250bfe9bad913bb8ba6f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 100000, 0, NULL),
(11, 'Test', NULL, NULL, NULL, NULL, NULL, 'Islamabad', '+923110723149', NULL, 'test12@gmail.com', '$2y$10$i4J7u2uBDCp9n21.vwWrUuwjsGhdh/8shawAXGFhr/Mpik5WjE/PC', NULL, '2023-11-03 00:31:54', '2023-11-03 00:31:54', 0, 0, 'bfc814457b208dc6ba544f4edaf92212', 'Yes', 'b1152eb5738076603a2b31661f4a0b03', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL),
(12, 'webdoctor', NULL, NULL, NULL, NULL, NULL, 'pakistan Lahore', '+923110411688', NULL, 'nadeem77599@gmail.com', '$2y$10$Gqs0gQ92Soo1GdDVMD/zxe8N91iMsRFTToMGl2Q6T4TBVOuJbkEim', NULL, '2023-11-04 03:37:40', '2023-11-04 03:37:40', 0, 0, '8724918b08f4b9167e4b24d93e4b160c', 'Yes', '0119cf2d2fd1c494bf387bc17570dc43', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 100, 0, NULL),
(13, 'Amine', '1699075402faviconpng.png', '16000', 'Algiers', 'Algeria', NULL, 'Kouba Alger', '+213541029808', NULL, '5cinqdz@gmail.com', '$2y$10$fs4IM7N5G9LZUPtJ2/lhL..Z7ZaKHSPHL.NBeSQysHyXOQouY5GBO', NULL, '2023-11-04 05:23:22', '2023-11-04 05:23:22', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int NOT NULL,
  `allowed_products` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency_sign`, `currency_code`, `currency_value`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(1, 2, 1, 'Free', 'DZD', 'Algerian dinars', '200', 0, 30, 0, 'vkjvhk', 'Free', NULL, NULL, NULL, '2023-10-31 23:14:14', '2023-10-31 23:14:14', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
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
(1, 3, '169855133538006307110566044986780489064398210894050416njpg.jpg', 'Verified', 'cvsd vs', 0, 'dd', '2023-10-29 03:48:26', '2023-10-29 03:49:10'),
(2, 3, NULL, NULL, NULL, 1, 'n ,n', '2023-10-31 23:15:40', '2023-10-31 23:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(1, 8, 409);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
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
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
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
-- Indexes for table `chats`
--
ALTER TABLE `chats`
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
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
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
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
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
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrival_sections`
--
ALTER TABLE `arrival_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
