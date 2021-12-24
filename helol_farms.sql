-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2021 at 09:06 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helol_farms`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Smart Delivery'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.hostinger.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'productdelivery@smartersvision.com'),
(24, 'mail_password', 'NnvAwk&&E7'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'productdelivery@smartersvision.com'),
(27, 'mail_from_name', 'Smarter Vision'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '020a2dd4-4277-425a-b450-426663f52633'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '0'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#25D366'),
(117, 'main_dark_color', '#25D366'),
(118, 'second_color', '#043832'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyDuhSlCNvUq_4HfkfAVKvvIHCuzHjUsNUU'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '2.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0'),
(157, 'distance_unit', 'km');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_options`
--

CREATE TABLE `cart_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Foods', 'Ullam labore assumenda maxime consequatur quaerat. Est expedita voluptatem iure et commodi. Non totam impedit velit totam ab tempora. Et voluptatem nostrum dolorem maiores sunt quis quidem. Aut sed qui sunt officiis sit delectus totam quas.', '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(2, 'Medicines', 'Soluta sit est et voluptatem et consectetur. Ut animi consectetur est nulla est. Culpa et at consectetur dignissimos est. Consectetur voluptatem aut possimus est. Quasi quo eum accusantium rerum hic repellendus officia fugiat.', '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(3, 'Fish', 'Non quo laborum mollitia nulla quas cumque aperiam. Ea est consequatur autem porro ut fuga. Quis adipisci recusandae doloremque cupiditate. Impedit laudantium totam harum. Consequatur voluptatem atque corrupti et sit expedita nemo corporis.', '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(4, 'Vegetables', 'Optio sunt recusandae veritatis molestiae excepturi voluptatum. Illo hic accusamus dolores expedita quibusdam provident. Est id in atque quam. Qui iste accusantium autem animi maiores. Esse ab provident sed.', '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(5, 'Drinks', 'Et eum enim qui voluptatem. Et vel distinctio sed quia voluptas. Laboriosam consequatur ut hic sed. Tempore totam aliquam velit vero sint saepe. Tempore facere exercitationem sunt magni.', '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(6, 'Medicines', 'Et corporis dicta ea assumenda sapiente. Rerum est rerum repudiandae pariatur. Possimus mollitia quisquam perferendis reiciendis. Repellat et porro sapiente quod impedit sint eos veritatis. Minima nam quas illo necessitatibus.', '2021-12-16 22:35:09', '2021-12-16 22:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 22:50:48', '2019-10-22 22:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 22:51:39', '2019-10-22 22:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2019-10-22 22:52:50', '2019-10-22 22:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2019-10-22 22:53:22', '2019-10-22 22:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 22:54:00', '2019-10-22 22:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2019-10-22 22:55:51', '2019-10-22 22:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2019-10-22 22:56:26', '2019-10-22 22:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-07 04:30:00', '2019-09-07 04:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-07 04:43:58', '2019-09-07 04:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-07 04:49:22', '2019-09-07 04:49:22'),
(7, 'verifiedPhone', 'text', NULL, 1, 0, 0, 6, 4, 'App\\Models\\User', '2021-03-20 17:49:22', '2021-03-20 17:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-07 04:52:30', '2019-09-07 04:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-07 04:52:30', '2019-10-17 02:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-07 04:52:30', '2019-10-17 02:32:35'),
(32, '+136 226 5660', '+136 226 5660', 4, 'App\\Models\\User', 1, '2019-09-07 04:53:58', '2019-09-27 15:12:04'),
(33, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 1, '2019-09-07 04:53:58', '2019-10-17 02:23:53'),
(34, '569 Braxton Street Cortland, IL 60112', '569 Braxton Street Cortland, IL 60112', 6, 'App\\Models\\User', 1, '2019-09-07 04:53:58', '2019-10-17 02:23:53'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-16 00:21:32', '2019-10-18 06:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-16 00:21:32', '2019-10-18 06:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-16 00:21:32', '2019-10-18 06:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-17 02:31:46', '2019-10-17 02:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-17 02:31:46', '2019-10-17 02:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-17 02:31:46', '2019-10-17 02:31:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-16 01:49:44', '2019-12-16 01:49:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-16 01:49:44', '2019-12-16 01:49:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-16 01:49:44', '2019-12-16 01:49:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-30 00:28:04', '2020-03-30 00:28:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-30 00:28:05', '2020-03-30 00:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-30 00:28:05', '2020-03-30 00:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'In nihil dolorum odit dicta in.', '12663 Floy Bypass Suite 861\nRodriguezport, MN 36748', '25.125327', '71.146139', 0, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(3, 'Ipsa facilis officia ut laborum ea ut autem.', '753 Marianne Wall\nNorth Marjorie, KY 02926', '-80.296697', '14.754547', 1, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(4, 'Quia rerum asperiores at harum sapiente.', '734 Sanford Plains Apt. 203\nSerenaport, KS 62792-7315', '15.324374', '-84.620434', 0, 5, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(5, 'Dignissimos recusandae totam magnam est fugiat.', '5581 Abshire Creek\nEast Fritzmouth, NH 01024-3484', '-84.671445', '35.198004', 0, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(8, 'Non molestias pariatur enim.', '2636 Macejkovic Motorway Apt. 897\nSouth Namemouth, WI 01298-5736', '-69.515909', '39.914669', 0, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(9, 'Perferendis nihil voluptatibus ipsum dolorem.', '417 Dietrich Port Suite 480\nPort Isaiahview, KY 38960-8358', '-25.922379', '-60.888412', 1, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(11, 'Ut aut debitis velit.', '25952 Dickens Ford Suite 420\nWildermanberg, DC 32010', '30.694037', '172.529544', 1, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(12, 'Dolorem velit ea nulla est deserunt.', '10084 Lesch Shore Suite 305\nRodolfofort, KY 80716-7768', '63.986219', '-150.699111', 0, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(13, 'Et quibusdam non laborum deleniti ea maiores itaque.', '9544 Rowe Meadow Suite 767\nEast Harleybury, MD 45528', '23.232801', '168.564814', 0, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(14, 'Rem accusantium porro in est vel sint.', '1401 Lakin Prairie\nWest Zachariahmouth, NJ 84374-9371', '-25.723584', '-150.67636', 0, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_markets`
--

CREATE TABLE `driver_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `market_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Earum assumenda vel aspernatur blanditiis dolorum. Ratione nihil non quia.', 'How the Owl and the second thing is to do this, so that her neck would bend about easily in any direction, like a telescope! I think I should have croqueted the Queen\'s absence, and were quite dry.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(2, 'Quae fuga debitis quia sit perferendis. Nobis accusantium beatae omnis sint sapiente ratione.', 'Which way?\', holding her hand again, and the other arm curled round her once more, while the rest were quite dry again, the cook took the opportunity of adding, \'You\'re looking for the Duchess by.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(3, 'Praesentium et odio reiciendis quaerat. Doloremque sed fugiat alias repellat ipsa officiis.', 'ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she remembered how small she was nine feet high. \'Whoever lives there,\'.', 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(4, 'Fugiat voluptas aperiam atque. Enim fugit et provident voluptas explicabo aliquid est.', 'White Rabbit, \'but it seems to be trampled under its feet, \'I move that the Queen in front of them, with her arms folded, quietly smoking a long breath, and said to the waving of the evening.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(5, 'Officia amet nulla et. Sunt eligendi ab non ut dolorum temporibus velit.', 'Let me see--how IS it to his ear. Alice considered a little, half expecting to see it quite plainly through the air! Do you think I can kick a little!\' She drew her foot as far as they all moved.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(6, 'Est voluptate ipsum animi. Eos nisi voluptate et similique sapiente. Cumque quisquam alias illo.', 'Caterpillar\'s making such a long breath, and said \'No, never\') \'--so you can have no sort of people live about here?\' \'In THAT direction,\' waving the other guinea-pig cheered, and was just saying to.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(7, 'Velit qui possimus tempora fugit. Voluptatem iste quia et porro porro blanditiis.', 'D,\' she added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was nothing so VERY remarkable in that; nor did Alice think it so.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(8, 'Consectetur occaecati placeat autem qui deserunt. Nihil perferendis veniam vel quas debitis qui et.', 'An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the rattle of the window, I only wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(9, 'Rem ea enim est. Aut accusantium voluptate cupiditate est unde atque odio.', 'Alice in a tone of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t see,\' said the Cat; and this Alice would not join the dance? Will you, won\'t you join the dance?\"\' \'Thank.', 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(10, 'Ipsam illo et alias enim ut. Nihil nulla autem dolorum distinctio qui et.', 'Dormouse,\' thought Alice; \'I must go by the pope, was soon left alone. \'I wish I could say if I know all sorts of little animals and birds waiting outside. The poor little thing sat down at her.', 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(11, 'Sed numquam ratione quasi totam. Consequuntur rerum ipsum sint adipisci officiis.', 'Queen merely remarking as it spoke. \'As wet as ever,\' said Alice sharply, for she was out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in some alarm. This time there were.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(12, 'Officiis et sed minima. Maiores iste quis nihil velit debitis magni.', 'Mock Turtle, and to wonder what you\'re talking about,\' said Alice. \'Off with her head on her lap as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon sat up and leave the.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(13, 'Eveniet dolorem qui voluptatem distinctio ut. Ad unde deleniti quasi similique quas aut.', 'Gryphon, the squeaking of the legs of the court, she said this she looked down at her as she did not wish to offend the Dormouse crossed the court, \'Bring me the list of the trees upon her knee, and.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(14, 'Similique iste totam similique id in et dolor. Maxime amet vero optio architecto sint quidem.', 'Alice,) and round goes the clock in a court of justice before, but she stopped hastily, for the end of half an hour or so, and were resting in the distance would take the place where it had entirely.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(15, 'Ratione quo odio in id est molestiae iusto. Aut repellat consectetur quaerat placeat.', 'Either the well was very provoking to find any. And yet I wish I hadn\'t mentioned Dinah!\' she said to the shore, and then at the stick, running a very deep well. Either the well was very likely it.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(16, 'Enim et omnis nulla dolorem nam non dolore. Commodi pariatur illo sint et beatae dolor.', 'Mock Turtle replied, counting off the mushroom, and crawled away in the distance, sitting sad and lonely on a bough of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked.', 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(17, 'Ad culpa ipsum et ab. Sed aut incidunt quos quam reprehenderit est rem. Aliquid et fugit facere.', 'Alice: he had a consultation about this, and after a minute or two she walked sadly down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the jury-box, and.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(18, 'Qui et quos illo. Saepe maiores nam dolorem sunt similique laboriosam. Recusandae velit quidem ab.', 'Queen,\' and she went on in a frightened tone. \'The Queen will hear you! You see, she came upon a little way off, and Alice was too late to wish that! She went in search of her or of anything else.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(19, 'Nihil quia quibusdam non aut deserunt vero. Recusandae iusto quasi et dolore.', 'Mock Turtle said with a great hurry. \'You did!\' said the Duchess; \'I never could abide figures!\' And with that she began thinking over other children she knew, who might do something better with the.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(20, 'Unde delectus suscipit quasi. Debitis et pariatur tempore. Ut soluta ducimus qui ipsam dolor.', 'Rabbit hastily interrupted. \'There\'s a great deal too flustered to tell him. \'A nice muddle their slates\'ll be in a ring, and begged the Mouse was speaking, so that her idea of having nothing to.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(21, 'Est delectus magnam ratione quas at veniam. A rerum sint sunt eum voluptatibus aliquam.', 'SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, in a very difficult question. However, at last she spread out her hand in hand, in couples: they were.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(22, 'Aut non ut iure ullam a. Totam ut rerum et quisquam repellat qui ab. Aut debitis quia omnis.', 'And she squeezed herself up on tiptoe, and peeped over the jury-box with the strange creatures of her head down to her feet, for it flashed across her mind that she was peering about anxiously among.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(23, 'Et ipsa adipisci aut quis et sapiente. Consequatur fugiat nesciunt id omnis.', 'Dormouse, and repeated her question. \'Why did you begin?\' The Hatter was out of court! Suppress him! Pinch him! Off with his head!\' or \'Off with his tea spoon at the jury-box, and saw that, in her.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(24, 'Quae ea quas aliquid debitis rerum et. Et sint perspiciatis dolores laborum accusantium.', 'Gryphon, and, taking Alice by the officers of the crowd below, and there was generally a frog or a worm. The question is, what?\' The great question certainly was, what? Alice looked up, but it did.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(25, 'Sit ex quo in eveniet ratione. Sapiente ut magni quia. Earum optio nihil et aut.', 'Alice, (she had kept a piece of evidence we\'ve heard yet,\' said the Duchess, as she swam lazily about in the air. This time there were TWO little shrieks, and more sounds of broken glass, from which.', 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(26, 'Suscipit amet numquam rerum eveniet. Ratione officia alias est et quidem placeat illo.', 'Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to happen,\' she said to herself.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(27, 'Sint molestiae labore doloremque repudiandae. Maiores eos est velit repellendus.', 'It\'s by far the most confusing thing I ever heard!\' \'Yes, I think you\'d take a fancy to cats if you hold it too long; and that in some book, but I think I can remember feeling a little timidly: \'but.', 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(28, 'Voluptate dolorum facilis non sint in. Deleniti aspernatur beatae nobis quam hic explicabo amet.', 'There was a treacle-well.\' \'There\'s no sort of use in crying like that!\' \'I couldn\'t afford to learn it.\' said the Queen, in a very interesting dance to watch,\' said Alice, rather doubtfully, as she.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(29, 'Non sit ipsam sit et amet aut. Consectetur ut porro pariatur.', 'Who ever saw in another moment it was impossible to say anything. \'Why,\' said the Gryphon. \'I mean, what makes them sour--and camomile that makes them so often, you know.\' He was looking at them.', 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(30, 'Labore id ipsa quaerat autem possimus soluta suscipit. Ut architecto omnis voluptatem asperiores.', 'I can do no more, whatever happens. What WILL become of it; and the shrill voice of the court. All this time it all is! I\'ll try and say \"How doth the little passage: and THEN--she found herself.', 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Products', '2019-08-31 19:31:52', '2019-08-31 19:31:52'),
(2, 'Services', '2019-08-31 19:32:03', '2019-08-31 19:32:03'),
(3, 'Delivery', '2019-08-31 19:32:11', '2019-08-31 19:32:11'),
(4, 'Misc', '2019-08-31 19:32:17', '2019-08-31 19:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 16, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(10, 1, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(15, 24, 5, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(19, 24, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(29, 22, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 22:03:21', '2020-04-11 22:03:21'),
(2, 'Pharmacy', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 22:03:21', '2020-04-11 22:03:21'),
(3, 'Restaurant', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 22:03:21', '2020-04-11 22:03:21'),
(4, 'Store', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 22:03:21', '2020-04-11 22:03:21'),
(5, 'Electronics', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 22:03:21', '2020-04-11 22:03:21'),
(6, 'Furniture', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 22:03:21', '2020-04-11 22:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `market_id`, `created_at`, `updated_at`) VALUES
(1, 'Corrupti tempora laborum illum rerum.', 7, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(3, 'Deserunt eaque dolore facere illum est possimus voluptates.', 8, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(7, 'Vitae iusto voluptas dolores sint corrupti harum.', 9, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(10, 'Est fugit repellat molestiae sequi non dolorem dolor culpa.', 7, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(13, 'In animi ab deserunt mollitia.', 8, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(14, 'Quis consequatur quaerat ipsa sunt nihil ipsum.', 7, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(15, 'Maxime ipsa non ea cumque et et officia.', 9, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(16, 'Expedita sequi praesentium ea autem.', 9, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `available_for_delivery` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(7, 'Market Trantow-Schmeler', 'Qui distinctio explicabo reprehenderit vel qui ad. Nisi nam facilis officiis veritatis est ut iure. Odit repellat sunt non omnis numquam maiores perferendis. Velit quae molestiae eius earum et.', '7507 Mraz Pines\nEast Fannyport, NH 89166-7581', '47.261382', '11.650193', '(670) 739-9760 x8597', '879.580.1241', 'Aut culpa ut quia. Officia voluptates in modi cum voluptates. Reprehenderit reprehenderit ratione velit inventore.', 47.12, 8.59, 16.40, 11.94, 1, 1, 1, '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(8, 'Market Ferry Group', 'Mollitia qui dolorum ipsa voluptas et quaerat. Maxime veniam perspiciatis placeat. Delectus architecto voluptatum voluptatem est alias. Ducimus consequatur sed velit et totam.', '5252 Tiana Dam\nReillyland, NV 38008', '38.344227', '8.480876', '313.590.9971', '386.731.2362 x697', 'Quisquam accusantium et optio qui sed ea ipsa. Quia iste qui corrupti magnam molestiae. Voluptas in qui dolorum qui provident.', 15.74, 3.23, 57.86, 21.14, 0, 1, 1, '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(9, 'Furniture Murphy, O\'Keefe and Heaney', 'Veniam ut aliquid voluptatem. Ut adipisci harum ut quod ea et aspernatur. Culpa quia accusamus ut consectetur non. Eos eaque quis et consequatur quia.', '4716 Abshire Hollow Suite 249\nJasperhaven, WV 00185', '44.947836', '7.318643', '943-537-2512 x739', '(779) 408-4713', 'Cupiditate debitis iste laboriosam harum quis. Et vitae est rerum ipsam. Delectus necessitatibus consequatur suscipit maiores.', 15.39, 2.34, 5.54, 20.97, 0, 1, 0, '2021-12-16 22:35:09', '2021-12-16 22:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `markets_payouts`
--

CREATE TABLE `markets_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_fields`
--

CREATE TABLE `market_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_fields`
--

INSERT INTO `market_fields` (`field_id`, `market_id`) VALUES
(1, 7),
(2, 7),
(5, 8),
(1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `market_reviews`
--

CREATE TABLE `market_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_reviews`
--

INSERT INTO `market_reviews` (`id`, `review`, `rate`, `user_id`, `market_id`, `created_at`, `updated_at`) VALUES
(3, 'Let me see: I\'ll give them a new idea to Alice, and she jumped up on to the table to measure herself by it, and burning with curiosity, she ran with all their simple joys, remembering her own.', 3, 5, 7, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(9, 'Bill! catch hold of this was his first remark, \'It was the Cat went on, taking first one side and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, and I never.', 2, 2, 7, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(11, 'I hate cats and dogs.\' It was all about, and make out exactly what they WILL do next! If they had to run back into the court, by the little creature down, and nobody spoke for some time with one.', 3, 1, 9, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(12, 'Alice noticed, had powdered hair that WOULD always get into the garden, where Alice could speak again. In a little pattering of feet in a melancholy way, being quite unable to move. She soon got it.', 3, 3, 7, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(13, 'Pat, what\'s that in some alarm. This time there were TWO little shrieks, and more sounds of broken glass. \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'I told you that.\' \'If I\'d been the right.', 5, 1, 8, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(20, 'When they take us up and picking the daisies, when suddenly a White Rabbit hurried by--the frightened Mouse splashed his way through the little magic bottle had now had its full effect, and she had.', 4, 2, 8, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_fields_table', 1),
(10, '2019_08_29_213821_create_markets_table', 1),
(11, '2019_08_29_213822_create_categories_table', 1),
(12, '2019_08_29_213826_create_option_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_products_table', 1),
(16, '2019_08_29_213838_create_options_table', 1),
(17, '2019_08_29_213842_create_galleries_table', 1),
(18, '2019_08_29_213847_create_product_reviews_table', 1),
(19, '2019_08_29_213921_create_payments_table', 1),
(20, '2019_08_29_213922_create_delivery_addresses_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_market_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111104_create_orders_table', 1),
(25, '2019_09_04_153857_create_carts_table', 1),
(26, '2019_09_04_153858_create_favorite_options_table', 1),
(27, '2019_09_04_153859_create_cart_options_table', 1),
(28, '2019_09_04_153958_create_product_orders_table', 1),
(29, '2019_09_04_154957_create_product_order_options_table', 1),
(30, '2019_09_04_163857_create_user_markets_table', 1),
(31, '2019_10_22_144652_create_currencies_table', 1),
(32, '2019_12_14_134302_create_driver_markets_table', 1),
(33, '2020_03_25_094752_create_drivers_table', 1),
(34, '2020_03_25_094802_create_earnings_table', 1),
(35, '2020_03_25_094809_create_drivers_payouts_table', 1),
(36, '2020_03_25_094817_create_markets_payouts_table', 1),
(37, '2020_03_27_094855_create_notifications_table', 1),
(38, '2020_04_11_135804_create_market_fields_table', 1),
(39, '2020_08_23_181022_create_coupons_table', 1),
(40, '2020_08_23_181029_create_discountables_table', 1),
(41, '2020_09_01_192732_create_slides_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `product_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(3, '5L', 'Repellat ea dolorum vitae.', 43.57, 22, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(14, 'Tomato', 'In est beatae ab.', 33.12, 22, 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(15, 'Green', 'Omnis incidunt aliquam dolores id.', 47.61, 22, 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(21, 'Tomato', 'Praesentium atque illo.', 31.02, 16, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(28, '2L', 'A repellat dignissimos quia autem.', 10.16, 16, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(32, 'Red', 'Voluptates debitis et.', 11.66, 24, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(35, 'L', 'Molestiae omnis et.', 21.77, 13, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(45, '2L', 'Veritatis sunt sed consequatur natus.', 28.58, 28, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(47, 'Green', 'Magni laborum sequi id in qui.', 37.50, 16, 4, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(53, 'Tomato', 'Soluta possimus dolores aut enim.', 20.55, 9, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(54, 'XL', 'Suscipit quisquam qui voluptatibus.', 14.43, 9, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(61, 'Red', 'Repudiandae ut molestiae sit.', 11.75, 16, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(67, 'Oil', 'Dolorum quia sequi sint.', 12.26, 28, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 17:55:28', '2019-08-31 17:55:28'),
(2, 'Color', '2019-10-09 20:26:28', '2019-10-09 20:26:28'),
(3, 'Parfum', '2019-10-09 20:26:28', '2019-10-09 20:26:28'),
(4, 'Taste', '2019-10-09 20:26:28', '2019-10-09 20:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 23:39:28', '2019-10-16 01:03:14'),
(2, 'Preparing', '2019-10-16 01:03:50', '2019-10-16 01:03:50'),
(3, 'Ready', '2019-10-16 01:04:30', '2019-10-16 01:04:30'),
(4, 'On the Way', '2019-10-16 01:04:13', '2019-10-16 01:04:13'),
(5, 'Delivered', '2019-10-16 01:04:30', '2019-10-16 01:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 21:58:02', '2020-03-29 21:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 21:58:02', '2020-03-29 21:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 21:58:02', '2020-03-29 21:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 21:58:02', '2020-03-29 21:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 21:58:03', '2020-03-29 21:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(30, 'markets.index', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(31, 'markets.create', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(32, 'markets.store', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(33, 'markets.edit', 'web', '2020-03-29 21:58:04', '2020-03-29 21:58:04', NULL),
(34, 'markets.update', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(35, 'markets.destroy', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 21:58:05', '2020-03-29 21:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 21:58:06', '2020-03-29 21:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(52, 'products.index', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(53, 'products.create', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(54, 'products.store', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(55, 'products.edit', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(56, 'products.update', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(57, 'products.destroy', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 21:58:07', '2020-03-29 21:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(64, 'productReviews.index', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(65, 'productReviews.create', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(66, 'productReviews.store', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(67, 'productReviews.edit', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(68, 'productReviews.update', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(69, 'productReviews.destroy', 'web', '2020-03-29 21:58:08', '2020-03-29 21:58:08', NULL),
(76, 'options.index', 'web', '2020-03-29 21:58:09', '2020-03-29 21:58:09', NULL),
(77, 'options.create', 'web', '2020-03-29 21:58:09', '2020-03-29 21:58:09', NULL),
(78, 'options.store', 'web', '2020-03-29 21:58:09', '2020-03-29 21:58:09', NULL),
(79, 'options.show', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(80, 'options.edit', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(81, 'options.update', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(82, 'options.destroy', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 21:58:10', '2020-03-29 21:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(92, 'marketReviews.index', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(93, 'marketReviews.create', 'web', '2020-03-29 21:58:11', '2020-03-29 21:58:11', NULL),
(94, 'marketReviews.store', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(95, 'marketReviews.edit', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(96, 'marketReviews.update', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(97, 'marketReviews.destroy', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 21:58:12', '2020-03-29 21:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 21:58:13', '2020-03-29 21:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 21:58:14', '2020-03-29 21:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 21:58:15', '2020-03-29 21:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 21:58:16', '2020-03-29 21:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 21:58:17', '2020-03-29 21:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(151, 'marketsPayouts.index', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(152, 'marketsPayouts.create', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(153, 'marketsPayouts.store', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(154, 'marketsPayouts.show', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(155, 'marketsPayouts.edit', 'web', '2020-03-29 21:58:18', '2020-03-29 21:58:18', NULL),
(156, 'marketsPayouts.update', 'web', '2020-03-29 21:58:19', '2020-03-29 21:58:19', NULL),
(157, 'marketsPayouts.destroy', 'web', '2020-03-29 21:58:19', '2020-03-29 21:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 21:59:15', '2020-03-29 21:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 21:59:15', '2020-03-29 21:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 21:59:15', '2020-03-29 21:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 21:59:15', '2020-03-29 21:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 21:59:15', '2020-03-29 21:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 21:59:16', '2020-03-29 21:59:16', NULL),
(164, 'fields.index', 'web', '2020-04-11 22:04:39', '2020-04-11 22:04:39', NULL),
(165, 'fields.create', 'web', '2020-04-11 22:04:39', '2020-04-11 22:04:39', NULL),
(166, 'fields.store', 'web', '2020-04-11 22:04:39', '2020-04-11 22:04:39', NULL),
(167, 'fields.edit', 'web', '2020-04-11 22:04:39', '2020-04-11 22:04:39', NULL),
(168, 'fields.update', 'web', '2020-04-11 22:04:39', '2020-04-11 22:04:39', NULL),
(169, 'fields.destroy', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(170, 'optionGroups.index', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(171, 'optionGroups.create', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(172, 'optionGroups.store', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(173, 'optionGroups.edit', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(174, 'optionGroups.update', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(175, 'optionGroups.destroy', 'web', '2020-04-11 22:04:40', '2020-04-11 22:04:40', NULL),
(176, 'requestedMarkets.index', 'web', '2020-08-13 21:58:02', '2020-08-13 21:58:02', NULL),
(183, 'coupons.index', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(184, 'coupons.create', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(185, 'coupons.store', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(186, 'coupons.edit', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(187, 'coupons.update', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(188, 'coupons.destroy', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(189, 'slides.index', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(190, 'slides.create', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(191, 'slides.store', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(192, 'slides.edit', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(193, 'slides.update', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL),
(194, 'slides.destroy', 'web', '2020-08-23 21:58:02', '2020-08-23 21:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `capacity` double(9,2) DEFAULT '0.00',
  `package_items_count` double(9,2) DEFAULT '0.00',
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `market_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `featured`, `deliverable`, `market_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Onion', 44.08, 37.72, 'Quis ipsam exercitationem exercitationem omnis eaque. Est repellat in corporis natus. Qui est sit et ratione.', 447.32, 5.00, 'g', 0, 1, 7, 4, '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(9, 'Onion', 28.91, 0.00, 'Debitis culpa nostrum optio eius molestiae. Itaque et sint sed. Nihil voluptates non iste reprehenderit voluptates.', 188.58, 4.00, 'm²', 1, 1, 8, 2, '2021-12-16 22:35:09', '2021-12-16 22:35:09'),
(13, 'Onion', 29.93, 0.00, 'Eligendi similique alias dolore aut magnam. Praesentium deserunt aspernatur accusamus perferendis reprehenderit aut repellendus. Culpa soluta qui tempora autem.', 26.51, 6.00, 'ml', 1, 0, 7, 5, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(16, 'Acarbose', 49.27, 46.03, 'Quis voluptatibus ea rem autem. Est quis cum ea ratione eveniet eaque voluptatem enim. Maiores dolores cupiditate in quas nihil et distinctio. Minus rerum nisi debitis ut quis dolor et.', 238.29, 6.00, 'g', 0, 1, 9, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(22, 'Onion', 10.63, 2.04, 'Et delectus praesentium qui repellat sunt. Excepturi voluptatibus quaerat rerum sit. Blanditiis et ut voluptates dolore cumque sint facilis.', 256.38, 2.00, 'g', 0, 0, 7, 3, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(24, 'Milk', 43.20, 34.68, 'Enim accusantium amet quibusdam similique soluta fugit. Odit architecto omnis ab neque nisi mollitia corrupti. Qui exercitationem velit magnam non dolorum laboriosam sunt.', 311.09, 6.00, 'g', 0, 1, 7, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(28, 'Tuna steak', 38.32, 34.19, 'Facilis aut maiores maxime beatae ipsa. Et et temporibus consequatur repudiandae. Minus illum voluptatum possimus et.', 197.24, 1.00, 'ml', 1, 0, 7, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(31, 'Steak', 10.61, 6.00, 'Nemo deleniti ipsa et et odit culpa. Accusantium nesciunt accusantium consequuntur cum rerum autem. Corrupti velit cum provident rerum ut occaecati. Nihil id eveniet laborum aut at autem.', 150.04, 4.00, 'L', 0, 1, 9, 2, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(40, 'Cheese', 36.71, 0.00, 'Velit quibusdam repudiandae neque consequatur quo nostrum quae. Consequatur aliquam corrupti earum laboriosam eaque. Voluptate pariatur tempora voluptatibus modi vero. Id dolor ab aliquid est.', 209.32, 3.00, 'Oz', 0, 1, 8, 5, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_order_options`
--

CREATE TABLE `product_order_options` (
  `product_order_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `review`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(25, 'Then the Queen added to one of the door with his head!\' or \'Off with her arms round it as she had never been so much surprised, that for the first verse,\' said the King, rubbing his hands; \'so now.', 3, 3, 24, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 23:37:56', '2019-09-08 05:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-08 05:41:38', '2019-09-08 05:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-08 05:41:54', '2019-09-08 05:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-16 01:50:21', '2019-12-16 01:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(67, 2),
(68, 2),
(69, 2),
(76, 2),
(77, 2),
(78, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(103, 2),
(104, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(134, 2),
(135, 2),
(137, 2),
(138, 2),
(144, 2),
(145, 2),
(146, 2),
(148, 2),
(149, 2),
(151, 2),
(152, 2),
(153, 2),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(27, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(42, 3),
(48, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(67, 3),
(68, 3),
(76, 3),
(77, 3),
(78, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(86, 3),
(92, 3),
(95, 3),
(96, 3),
(98, 3),
(103, 3),
(104, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(113, 3),
(114, 3),
(117, 3),
(130, 3),
(134, 3),
(135, 3),
(137, 3),
(145, 3),
(146, 3),
(151, 3),
(152, 3),
(153, 3),
(164, 3),
(170, 3),
(171, 3),
(172, 3),
(176, 3),
(183, 3),
(186, 3),
(187, 3),
(1, 4),
(3, 4),
(4, 4),
(27, 4),
(30, 4),
(31, 4),
(32, 4),
(52, 4),
(64, 4),
(67, 4),
(68, 4),
(83, 4),
(86, 4),
(92, 4),
(95, 4),
(96, 4),
(98, 4),
(103, 4),
(104, 4),
(107, 4),
(111, 4),
(113, 4),
(114, 4),
(117, 4),
(164, 4),
(176, 4),
(183, 4),
(1, 5),
(3, 5),
(4, 5),
(27, 5),
(30, 5),
(48, 5),
(52, 5),
(64, 5),
(67, 5),
(68, 5),
(83, 5),
(86, 5),
(92, 5),
(95, 5),
(96, 5),
(98, 5),
(103, 5),
(104, 5),
(107, 5),
(111, 5),
(113, 5),
(114, 5),
(117, 5),
(130, 5),
(144, 5),
(145, 5),
(146, 5),
(164, 5),
(176, 5),
(183, 5);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT '0',
  `text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `market_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `product_id`, `market_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 3, 'Et alias blanditiis voluptates et.', 'Discover It', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 9, NULL, 0, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(2, 1, 'Nesciunt esse quidem sed esse.', 'Get Discount', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 0, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(3, 4, 'Fugiat cum vitae.', 'Discover It', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(4, 4, 'Ex cumque eum occaecati.', 'Discover It', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, NULL, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10'),
(5, 4, 'Voluptatibus hic reprehenderit excepturi corrupti ', 'Get Discount', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 13, NULL, 1, '2021-12-16 22:35:10', '2021-12-16 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael E. Quinn', 'admin@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T4PQhFvBcAA7k02f7ejq4I7z7QKKnvxQLV0oqGnuS6Ktz6FdWULrWrzZ3oYn', '2018-08-07 05:58:41', '2019-09-27 14:49:45'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-15 00:06:28', '2019-09-26 05:09:35'),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-13 05:31:26', '2020-03-30 00:44:30'),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-16 01:49:44', '2020-03-30 00:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_markets`
--

CREATE TABLE `user_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD PRIMARY KEY (`option_id`,`cart_id`),
  ADD KEY `cart_options_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `driver_markets_market_id_foreign` (`market_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_market_id_foreign` (`market_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_market_id_foreign` (`market_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `markets_payouts_market_id_foreign` (`market_id`);

--
-- Indexes for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD PRIMARY KEY (`field_id`,`market_id`),
  ADD KEY `market_fields_market_id_foreign` (`market_id`);

--
-- Indexes for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_reviews_user_id_foreign` (`user_id`),
  ADD KEY `market_reviews_market_id_foreign` (`market_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_product_id_foreign` (`product_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_market_id_foreign` (`market_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD PRIMARY KEY (`product_order_id`,`option_id`),
  ADD KEY `product_order_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_product_id_foreign` (`product_id`),
  ADD KEY `slides_market_id_foreign` (`market_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`),
  ADD KEY `user_markets_market_id_foreign` (`market_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_reviews`
--
ALTER TABLE `market_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD CONSTRAINT `cart_options_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD CONSTRAINT `driver_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD CONSTRAINT `markets_payouts_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD CONSTRAINT `market_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_fields_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD CONSTRAINT `market_reviews_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `market_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD CONSTRAINT `product_order_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_options_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD CONSTRAINT `user_markets_market_id_foreign` FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_markets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
