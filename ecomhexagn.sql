-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 09:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomhexagn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `created_at`) VALUES
(4, 'admin', 'admin@gmail.com', '$2a$10$nUyZVWAQn.Gtv8fQJi8.muzmjwgT6MgolLXA/TCTTc9K4DeaLMzJe', '2023-08-20 14:29:58'),
(5, 'santosh', 'santosh@gmail.com', '$2y$10$feoRGTUIQTjP2hlAcLrxM.F3lWknoiLGEVa/xbR9BNaNCyJAc2izm', '2023-08-20 14:58:12'),
(6, '', 'jinit@gmail.com', '$2y$10$XAecI2V565WU7.oEcud9d.EpnCKTRLhEPgMro/NuQ0nqUeJmbLVGy', '2023-08-21 08:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'user', '2023-08-12 12:07:12'),
(2, 2, 'user', '2023-08-17 09:05:14'),
(3, 3, 'user', '2023-08-18 03:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'tdsantosh15@gmail.com', '$2y$10$esLh.qO20hQeelrLcEnpOOWQUZWASvKB5ctN1BbynaxUgJEZnga3S', NULL, NULL, 0, '2023-08-20 14:04:39', '2023-08-12 12:07:12', '2023-08-20 14:04:39'),
(2, 2, 'email_password', NULL, 'santoshetty401105@gmail.com', '$2y$10$L2RUuY7qDe5cjcE.Uhq...v4sskaR3MjF7kYD6kkyDkQ8e0CsKOBi', NULL, NULL, 0, NULL, '2023-08-17 09:05:14', '2023-08-17 09:05:14'),
(3, 3, 'email_password', NULL, 'tdsantosh15@gmial.com', '$2y$10$u6J6BxEhbNwsOvt28205UeEp6GQSb.QArJEW9ZKh8CnGXWDljqKEi', NULL, NULL, 0, NULL, '2023-08-18 03:18:45', '2023-08-18 03:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'test@gmial.com', NULL, '2023-08-12 12:06:17', 0),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-12 12:50:15', 1),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-12 15:06:41', 1),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-13 05:42:30', 1),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:12:57', 0),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:13:06', 0),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:13:06', 0),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:13:12', 0),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:13:29', 0),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:13:32', 0),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santoshetty401105@gmail.com', NULL, '2023-08-18 03:13:58', 0),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santoshetty401105@gmail.com', NULL, '2023-08-18 03:14:04', 0),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:14:12', 0),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santoshetty401105@gmail.com', NULL, '2023-08-18 03:14:36', 0),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:17:48', 0),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:17:48', 0),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:41:11', 0),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:41:20', 0),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:41:21', 0),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:41:28', 0),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-18 03:41:28', 0),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', NULL, '2023-08-18 03:41:36', 0),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', NULL, '2023-08-18 03:41:37', 0),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 03:41:45', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 03:41:45', 1),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 03:45:58', 1),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 03:45:58', 1),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 03:52:39', 1),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 03:52:39', 1),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 04:01:58', 1),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-18 04:01:58', 1),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'naresh@gmail.com', NULL, '2023-08-20 13:47:31', 0),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-20 13:47:39', 0),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-20 13:47:42', 1),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'naresh@gmail.com', NULL, '2023-08-20 13:50:38', 0),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'santosh@gmail.com', NULL, '2023-08-20 13:50:42', 0),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-20 13:52:37', 1),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'naresh@gmail.com', NULL, '2023-08-20 13:52:47', 0),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'naresh@gmail.com', NULL, '2023-08-20 13:52:50', 0),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-20 13:57:21', 1),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-20 13:57:27', 1),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-20 13:57:31', 1),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'naresh@gmail.com', NULL, '2023-08-20 14:04:35', 0),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'tdsantosh15@gmail.com', 1, '2023-08-20 14:04:39', 1),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'naresh@gmail.com', NULL, '2023-08-20 14:40:31', 0),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'email_password', 'admin@gmail.com', NULL, '2023-08-20 14:40:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_desc`, `brand_image`, `created_at`) VALUES
(1, 'test', 'this is test brand', '', '2023-08-13 06:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts_old`
--

CREATE TABLE `carts_old` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts_old`
--

INSERT INTO `carts_old` (`cart_id`, `customer_id`, `product_id`, `product_name`, `quantity`, `created_at`) VALUES
(3, 0, 8, 'Pretty Men ', 1, '2023-08-16 10:36:45'),
(4, 0, 10, 'Daily Wear ', 1, '2023-08-16 10:38:51'),
(5, 0, 12, 'Eyebogler M', 1, '2023-08-16 10:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_desc` text NOT NULL,
  `slug` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- In Active \r\n1 - Active',
  `category_image` text NOT NULL,
  `category_added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_desc`, `slug`, `status`, `category_image`, `category_added_at`) VALUES
(1, 'kids ', '<p>this is kids categories</p>\r\n', 'kids-jzf4v', 1, '', '2023-08-14 04:42:25'),
(5, 'mens', '<p>this is mens category&nbsp;</p>\r\n', 'mens', 1, '', '2023-08-14 05:14:45'),
(6, 'womens', '<p>this is women category&nbsp;</p>\r\n', 'womens', 1, '', '2023-08-14 16:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_phone_no` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_password`, `customer_email`, `customer_address`, `customer_phone_no`, `created_at`) VALUES
(2, 'santosh', '$2a$10$nUyZVWAQn.Gtv8fQJi8.muzmjwgT6MgolLXA/TCTTc9K4DeaLMzJe', 'santosh@gmail.com', 'test address', 2147483647, '2023-08-16 06:59:20'),
(3, 'santosh test', '$2y$10$fZtPA58KUtGYk5JXyRXGZ.nQKZeK1OU7VObXzK5u09Fo8tnNCDrj6', 'santosh@gmail.com', 'test road,', 987654321, '2023-08-20 11:28:39'),
(4, 'naresh', '$2y$10$NTkchceciuCalM4/CZrNE.rpxuIxr9T2AuoSBY16ot/i.y.tbW0fu', 'naresh@gmail.com', 'test road,', 987654321, '2023-08-20 11:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1691841732, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1691841732, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1691841732, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `product_id` text DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `customer_name`, `product_id`, `product_name`, `total_amount`, `payment_id`, `payer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'naresh', '12, ', 'Eyebogler Men\'s Red Ts, ', NULL, 'PAYID-MTRALHA4YS50382A12067449', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:39:13', '2023-08-21 09:50:14'),
(2, 4, 'naresh', '9, ', 'Kurti For Women\'s, ', NULL, 'PAYID-MTRAT6Y6UY57045AS2073107', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:42:00', '2023-08-21 09:50:19'),
(3, 4, 'naresh', '8, ', 'Pretty Men Shirt updat, ', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:47:04', '2023-08-20 12:47:04'),
(4, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:48:39', '2023-08-20 12:48:39'),
(5, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:50:16', '2023-08-20 12:50:16'),
(6, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:50:34', '2023-08-20 12:50:34'),
(7, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:50:52', '2023-08-20 12:50:52'),
(8, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:52:11', '2023-08-20 12:52:11'),
(9, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:57:36', '2023-08-20 12:57:36'),
(10, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 12:58:01', '2023-08-20 12:58:01'),
(11, 4, 'naresh', '', '', NULL, 'PAYID-MTRAWCY2V347341LM366893J', 'GW5CFDZYFNM4Y', '', '2023-08-20 13:01:06', '2023-08-20 13:01:06'),
(12, 4, 'naresh', '12, ', 'Eyebogler Men\'s Red Ts, ', NULL, 'PAYID-MTRBBXI27F11878EH303041F', 'GW5CFDZYFNM4Y', '', '2023-08-20 13:25:36', '2023-08-20 13:25:36'),
(13, 4, 'naresh', '', '', '0.00', 'PAYID-MTRBBXI27F11878EH303041F', 'GW5CFDZYFNM4Y', '', '2023-08-20 13:26:36', '2023-08-20 13:26:36'),
(14, 4, 'naresh', '', '', '0.00', 'PAYID-MTRBBXI27F11878EH303041F', 'GW5CFDZYFNM4Y', '', '2023-08-20 13:27:06', '2023-08-20 13:27:06'),
(15, 4, 'naresh', '', '', '0.00', 'PAYID-MTRBBXI27F11878EH303041F', 'GW5CFDZYFNM4Y', '', '2023-08-20 13:27:18', '2023-08-20 13:27:18'),
(16, 2, 'santosh', '9, 8, ', 'Kurti For Women\'s, Pretty Men Shirt updat, ', '700.00', 'PAYID-MTRBMBI1D997388RE670782D', 'GW5CFDZYFNM4Y', '', '2023-08-20 13:33:19', '2023-08-20 13:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(22) NOT NULL,
  `product_price` float NOT NULL,
  `quantity` int(6) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `feature_product` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Active\r\n1 - Inactive',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = On, 0 = Off',
  `product_added_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `quantity`, `product_desc`, `product_image`, `brand_id`, `category_id`, `feature_product`, `status`, `product_added_at`) VALUES
(8, 'Pretty Men Shirt updat', 500, 34, '<p>-A premium floral printed shirt.&nbsp;<br />\r\n-Can be worn for evening get together.<br />\r\n-Liked by&nbsp;young adults and out going people<br />\r\n-Regular collar<br />\r\n-100% premium Cotton printed fabric.<br />\r\n-Full Sleeves and regular collar<br />\r\n-Tailored Fit / Perfected pattern after extensive research on body measurements.<br />\r\n-Hand Wash - For detailed instructions- follow the wash-care label on the garment.<br />\r\n- an be paired with Rare Rabbit Denim</p>\r\n\r\n<p>Manufacturer InformationVESCOR DESIGN</p>\r\n\r\n<p>Importer InformationNo information available</p>\r\n\r\n<p>Packer InformationVESCOR DESIGN</p>\r\n\r\n<p>Net Weight(g)299</p>\r\n\r\n<p>Supplier InformationOTM Egde c/o Meesho</p>\r\n\r\n<p>Contact InformationContact seller: Subject: Contact Seller - 270207917 c/o Fashnear Technologies Private Limited (Meesho), 06-105-B, 06-102, (138 Wu) Vaishnavi Signature, No. 78/9, Outer Ring Road, Bellandur, Varthur Hobli, Bengaluru-560103, Karnataka, India</p>\r\n', 'b3c6y_512.webp', 1, 5, 1, 1, '2023-08-14 05:15:29.597723'),
(9, 'Kurti For Women\'s', 200, 10, '<p>Kurti For Women&#39;s</p>\r\n', 'edcha_512.webp', 1, 6, 1, 1, '2023-08-14 16:38:42.186459'),
(10, 'Daily Wear Printed Cre', 300, 20, '<p>Daily Wear Printed Crepe Kurti</p>\r\n', 'edcha_512.webp', 1, 6, 1, 1, '2023-08-14 16:38:42.186459'),
(11, 'Men\'s Half T-shirt', 350, 23, '<p>Men&#39;s Half T-shirt</p>\r\n', 'b3c6y_512.webp', 1, 5, 0, 0, '2023-08-14 16:41:28.647912'),
(12, 'Eyebogler Men\'s Red Ts', 500, 45, '<p>Eyebogler Men&#39;s Red Tshirts</p>\r\n', '0uayh_512.webp', 1, 5, 1, 1, '2023-08-14 16:42:11.541671'),
(13, 'Hero Men Shirt', 400, 45, '<p>Manufacturer InformationMimicry Online</p>\r\n\r\n<p>Importer InformationNo information available</p>\r\n\r\n<p>Packer InformationMimicry Online</p>\r\n\r\n<p>Net Weight(g)200</p>\r\n\r\n<p>Supplier InformationMIMICRY ONLINE c/o Meesho</p>\r\n\r\n<p>Contact InformationContact seller: Subject: Contact Seller - 223848295 c/o Fashnear Technologies Private Limited (Meesho), 06-105-B, 06-102, (138 Wu) Vaishnavi Signature, No. 78/9, Outer Ring Road, Bellandur, Varthur Hobli, Bengaluru-560103, Karnataka, India</p>\r\n\r\n<p>Legal DisclaimerSuppliers listing their products on Meesho are solely responsible for the accuracy of product information. You shall use the products in safe and legal manner, and it shall not be used for any illegal purpose. The actual product packaging, material and design may contain more or different information as mentioned here including nutritional information, declarations, claims, instructions of use, warning, disclaimers et. al. It is recommended you read the product label before using/consuming any products and do not solely rely on the product information provided on this platform. Meesho shall not assume any loss, claims, damages, or injury, that may arise from the violent or illegal use, or misuse of the product sold by the suppliers over Meesho.</p>\r\n', '0uayh_512.webp', 1, 5, 0, 1, '2023-08-17 09:54:35.440724'),
(14, 'Test Men Shirt', 400, 45, '<p>Manufacturer InformationMimicry Online</p>\r\n\r\n<p>Importer InformationNo information available</p>\r\n\r\n<p>Packer InformationMimicry Online</p>\r\n\r\n<p>Net Weight(g)200</p>\r\n\r\n<p>Supplier InformationMIMICRY ONLINE c/o Meesho</p>\r\n\r\n<p>Contact InformationContact seller: Subject: Contact Seller - 223848295 c/o Fashnear Technologies Private Limited (Meesho), 06-105-B, 06-102, (138 Wu) Vaishnavi Signature, No. 78/9, Outer Ring Road, Bellandur, Varthur Hobli, Bengaluru-560103, Karnataka, India</p>\r\n\r\n<p>Legal DisclaimerSuppliers listing their products on Meesho are solely responsible for the accuracy of product information. You shall use the products in safe and legal manner, and it shall not be used for any illegal purpose. The actual product packaging, material and design may contain more or different information as mentioned here including nutritional information, declarations, claims, instructions of use, warning, disclaimers et. al. It is recommended you read the product label before using/consuming any products and do not solely rely on the product information provided on this platform. Meesho shall not assume any loss, claims, damages, or injury, that may arise from the violent or illegal use, or misuse of the product sold by the suppliers over Meesho.</p>\r\n', '0uayh_512.webp', 1, 1, 0, 1, '2023-08-17 09:54:35.440724'),
(15, 'Stylish Men Shirt', 400, 45, '<p>Manufacturer InformationMimicry Online</p>\r\n\r\n<p>Importer InformationNo information available</p>\r\n\r\n<p>Packer InformationMimicry Online</p>\r\n\r\n<p>Net Weight(g)200</p>\r\n\r\n<p>Supplier InformationMIMICRY ONLINE c/o Meesho</p>\r\n\r\n<p>Contact InformationContact seller: Subject: Contact Seller - 223848295 c/o Fashnear Technologies Private Limited (Meesho), 06-105-B, 06-102, (138 Wu) Vaishnavi Signature, No. 78/9, Outer Ring Road, Bellandur, Varthur Hobli, Bengaluru-560103, Karnataka, India</p>\r\n\r\n<p>Legal DisclaimerSuppliers listing their products on Meesho are solely responsible for the accuracy of product information. You shall use the products in safe and legal manner, and it shall not be used for any illegal purpose. The actual product packaging, material and design may contain more or different information as mentioned here including nutritional information, declarations, claims, instructions of use, warning, disclaimers et. al. It is recommended you read the product label before using/consuming any products and do not solely rely on the product information provided on this platform. Meesho shall not assume any loss, claims, damages, or injury, that may arise from the violent or illegal use, or misuse of the product sold by the suppliers over Meesho.</p>\r\n', '0uayh_512.webp', 1, 5, 0, 1, '2023-08-17 09:54:35.440724');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'santosh', NULL, NULL, 1, NULL, '2023-08-12 12:07:12', '2023-08-12 12:07:12', NULL),
(2, 'test', NULL, NULL, 1, NULL, '2023-08-17 09:05:14', '2023-08-17 09:05:14', NULL),
(3, 'Santosh32', NULL, NULL, 1, NULL, '2023-08-18 03:18:45', '2023-08-18 03:18:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_customer_id` (`customer_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indexes for table `carts_old`
--
ALTER TABLE `carts_old`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_customer_id` (`customer_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_brand_id` (`brand_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `carts_old`
--
ALTER TABLE `carts_old`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
