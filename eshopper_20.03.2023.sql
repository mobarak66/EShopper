-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Mar 20, 2023 at 05:38 PM
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
-- Database: `eshopper`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'World most popular brand.', 'brand-images/Samsung.jpg', 1, '2023-02-08 04:37:59', '2023-02-08 04:37:59'),
(2, 'Arong', 'Popular brand in Bangladesh.', 'brand-images/Arong.png', 1, '2023-02-16 01:03:29', '2023-02-16 01:03:29'),
(3, 'Nikon', 'World popular brand.', 'brand-images/Nikon.jpg', 1, '2023-02-17 04:06:27', '2023-02-17 04:06:27'),
(4, 'Apple', 'World popular electronics brand.', 'brand-images/Apple.jpg', 1, '2023-03-09 00:47:14', '2023-03-09 00:47:14'),
(5, 'DANO', 'Popular Milk Brand', 'brand-images/dano-milk-icon-512x346-qrdss9kp.png', 1, '2023-03-09 05:08:24', '2023-03-09 05:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Electronic item and accessories.', 'category-images/p6.jpg', 1, '2023-02-08 04:33:30', '2023-02-17 08:09:37'),
(2, 'Man Fashion.', 'Fashion item for man.', 'category-images/Jackets.png', 1, '2023-02-10 10:51:02', '2023-02-10 10:51:02'),
(3, 'Woman fashion.', 'Fashion for woman.', 'category-images/Sarees.jpg', 1, '2023-02-17 03:58:47', '2023-02-17 03:58:47'),
(4, 'Baby Food.', 'Food item for children.', 'category-images/p5.jpg', 1, '2023-02-17 04:00:23', '2023-02-17 04:00:23'),
(5, 'TV & Home Appliances.', 'Product for home use.', 'category-images/Plasma TV.jpg', 1, '2023-02-17 04:01:39', '2023-02-17 04:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile`, `image`, `nid`, `dob`, `blood_group`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobarak Hossain', 'mobarak@mobarak.com', '$2y$10$Mvc/o6TnZfU4kyYb/Q3C3e9gpq4RyXKSmVFpbMnTTEr1USxWCo1o2', '01712564585', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-18 00:38:14', '2023-02-18 00:38:14'),
(2, 'Tahera Yasmeen', 'tahera@gmail.com', '$2y$10$ngPkceRSZp7vXLMQRSwUaeFYLdkf8X.MIiRBTc2u8Y04aVpvtAvnW', '01712848586', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-18 06:55:47', '2023-03-17 10:48:48'),
(3, 'Tasnim Mobarak', 'tasnim@tasnim.com', '$2y$10$hZBoPhDc.DT8sWdQDYtnwO2HarH/dMwQFYFw0g.ZOEJ8LJxm0imAO', '01712454545', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 11:20:56', '2023-03-17 21:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_01_31_070356_create_sessions_table', 1),
(7, '2023_01_13_105423_create_categories_table', 2),
(8, '2023_01_16_115733_create_sub_categories_table', 2),
(9, '2023_01_17_132036_create_products_table', 3),
(10, '2023_01_17_063110_create_brands_table', 4),
(11, '2023_01_17_132055_create_other_images_table', 4),
(12, '2023_01_18_072112_create_units_table', 4),
(13, '2023_01_29_094537_create_orders_table', 5),
(14, '2023_01_29_094747_create_order_details_table', 5),
(15, '2023_02_18_053924_create_customers_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 17750, 2250, 500, '2023-02-18', '1676678400', 'Complete', '342, Elephant Road.', 'Complete', '2023-02-18', '1676678400', '1', 'Complete', '2023-02-18', '1676678400', NULL, NULL, '2023-02-18 00:38:14', '2023-02-18 11:23:52'),
(3, 2, 9700, 1200, 500, '2023-02-18', '1676678400', 'Cancel', 'Flat#B4, 342 Elephant Road.', 'Cancel', NULL, NULL, '1', 'Cancel', NULL, NULL, NULL, NULL, '2023-02-18 06:55:47', '2023-03-03 21:39:08'),
(4, 3, 328250, 42750, 500, '2023-03-04', '1677888000', 'Complete', '342, Elephant Road.', 'Complete', '2023-03-04', '1677888000', '1', 'Complete', '2023-03-04', '1677888000', NULL, NULL, '2023-03-03 21:35:32', '2023-03-03 21:38:36'),
(5, 3, 5560, 660, 500, '2023-03-20', '1679270400', 'Pending', '342, Elephant Road', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-03-20 08:48:52', '2023-03-20 08:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'Panjabi', 4000, 1, '2023-02-18 00:38:14', '2023-02-18 00:38:14'),
(2, 1, 4, 'Kurti', 5500, 2, '2023-02-18 00:38:14', '2023-02-18 00:38:14'),
(4, 3, 7, 'Panjabi', 4000, 2, '2023-02-18 06:55:47', '2023-02-18 06:55:47'),
(5, 4, 5, 'Smart TV.', 95000, 3, '2023-03-03 21:35:32', '2023-03-03 21:35:32'),
(6, 5, 11, 'Dano Cerelac', 1300, 2, '2023-03-20 08:48:52', '2023-03-20 08:48:52'),
(7, 5, 10, 'Dano Milk Powder', 900, 2, '2023-03-20 08:48:52', '2023-03-20 08:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'product-other-images/11163.jpg', '2023-02-08 05:33:16', '2023-02-08 05:33:16'),
(2, 2, 'product-other-images/33202.jpg', '2023-02-08 05:33:16', '2023-02-08 05:33:16'),
(7, 4, 'product-other-images/16864.jpg', '2023-02-17 04:10:33', '2023-02-17 04:10:33'),
(8, 4, 'product-other-images/45599.jpg', '2023-02-17 04:10:33', '2023-02-17 04:10:33'),
(17, 1, 'product-other-images/41256.png', '2023-03-07 10:54:29', '2023-03-07 10:54:29'),
(18, 1, 'product-other-images/11079.webp', '2023-03-07 10:54:29', '2023-03-07 10:54:29'),
(19, 1, 'product-other-images/25152.jpg', '2023-03-07 10:54:29', '2023-03-07 10:54:29'),
(20, 3, 'product-other-images/25569.jpg', '2023-03-07 10:57:39', '2023-03-07 10:57:39'),
(21, 3, 'product-other-images/45757.jpg', '2023-03-07 10:57:39', '2023-03-07 10:57:39'),
(22, 3, 'product-other-images/46181.jpg', '2023-03-07 10:57:39', '2023-03-07 10:57:39'),
(23, 6, 'product-other-images/12527.jpg', '2023-03-07 11:00:26', '2023-03-07 11:00:26'),
(24, 6, 'product-other-images/49934.jpg', '2023-03-07 11:00:26', '2023-03-07 11:00:26'),
(25, 6, 'product-other-images/21344.jpg', '2023-03-07 11:00:26', '2023-03-07 11:00:26'),
(26, 5, 'product-other-images/31658.jpg', '2023-03-07 11:06:38', '2023-03-07 11:06:38'),
(27, 5, 'product-other-images/40660.jpg', '2023-03-07 11:06:38', '2023-03-07 11:06:38'),
(28, 5, 'product-other-images/27670.jpg', '2023-03-07 11:06:38', '2023-03-07 11:06:38'),
(29, 7, 'product-other-images/13258.jpg', '2023-03-07 11:14:12', '2023-03-07 11:14:12'),
(30, 7, 'product-other-images/40624.png', '2023-03-07 11:14:12', '2023-03-07 11:14:12'),
(31, 7, 'product-other-images/36664.jpg', '2023-03-07 11:14:12', '2023-03-07 11:14:12'),
(32, 8, 'product-other-images/23071.jpg', '2023-03-09 00:54:08', '2023-03-09 00:54:08'),
(33, 8, 'product-other-images/28014.jpg', '2023-03-09 00:54:08', '2023-03-09 00:54:08'),
(34, 9, 'product-other-images/11023.jpg', '2023-03-09 01:09:51', '2023-03-09 01:09:51'),
(35, 9, 'product-other-images/27484.jpg', '2023-03-09 01:09:51', '2023-03-09 01:09:51'),
(36, 9, 'product-other-images/43348.jpg', '2023-03-09 01:09:51', '2023-03-09 01:09:51'),
(37, 10, 'product-other-images/34245.jpg', '2023-03-09 05:16:55', '2023-03-09 05:16:55'),
(38, 10, 'product-other-images/16409.jpg', '2023-03-09 05:16:55', '2023-03-09 05:16:55'),
(39, 10, 'product-other-images/18322.jpg', '2023-03-09 05:16:55', '2023-03-09 05:16:55'),
(40, 11, 'product-other-images/42805.jpg', '2023-03-09 05:29:42', '2023-03-09 05:29:42'),
(41, 11, 'product-other-images/38150.jpg', '2023-03-09 05:29:42', '2023-03-09 05:29:42'),
(42, 11, 'product-other-images/35808.jpg', '2023-03-09 05:29:42', '2023-03-09 05:29:42'),
(43, 12, 'product-other-images/10711.jpg', '2023-03-09 05:54:12', '2023-03-09 05:54:12'),
(44, 12, 'product-other-images/15089.jpg', '2023-03-09 05:54:12', '2023-03-09 05:54:12'),
(45, 12, 'product-other-images/32056.jpg', '2023-03-09 05:54:12', '2023-03-09 05:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `featured_count` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `stock_amount`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `status`, `hit_count`, `featured_count`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Smart phone', 'El_Mob_Sam_001', 12, 22000, 20000, 'Modern smart phone.', 'Modern smart phone.', 'product-images/1678208069.jpg', 1, 0, 0, '2023-02-08 05:17:36', '2023-03-07 10:54:29'),
(3, 2, 3, 2, 1, 'T-shirt for men.', 'MF_TS_AR_001', 10, 600, 500, 'T-shirt for men easy ware.', '<p><span style=\"font-size: 15.68px;\">T-shirt for men easy ware during summer season.</span><br></p>', 'product-images/1678208259.jpg', 1, 0, 0, '2023-02-16 01:07:55', '2023-03-07 10:57:39'),
(4, 3, 5, 2, 1, 'Kurti', 'WF_CL_AR_001', 8, 6000, 5500, 'Kurti for women.', '<p><span style=\"font-size: 15.68px;\">Kurti for women for summer use.</span><br></p>', 'product-images/1676628633.jpg', 1, 0, 0, '2023-02-17 04:10:33', '2023-02-18 00:38:14'),
(5, 5, 11, 1, 1, 'Smart TV.', 'TH_ST_SA_001', 6, 100000, 95000, 'Smart TV with browsing.', '<p><span style=\"font-size: 15.68px;\">Smart TV with internet browsing &amp; YouTube&nbsp; facilities.</span><br></p>', 'product-images/1678361697.jpg', 1, 0, 0, '2023-02-17 04:21:35', '2023-03-09 05:34:57'),
(7, 2, 2, 2, 1, 'Shirt', 'MF_MC_AR_PN_001', 2, 4500, 4000, 'Panjabi for men', '<p><span style=\"font-size: 15.68px;\">Panjabi for men for summer.</span><br></p>', 'product-images/1678209252.jpg', 1, 0, 0, '2023-02-17 09:19:01', '2023-03-07 11:14:12'),
(8, 1, 6, 4, 1, 'Apple Mac Book', 'EL_LA_AP_001', 5, 170000, 160000, 'Apple Mac Book', '<p>Mac Book with Unix operating system.</p>', 'product-images/1678344917.jpg', 1, 0, 0, '2023-03-09 00:54:08', '2023-03-09 00:55:17'),
(9, 3, 8, 2, 1, 'Jamdani sharee.', 'WM_SH_AR_001', 10, 15000, 17000, 'Jamdani', '<p>Jamdani from Tangail.</p>', 'product-images/1678345791.jpg', 1, 0, 0, '2023-03-09 01:09:51', '2023-03-09 01:09:51'),
(10, 4, 9, 5, 1, 'Dano Milk Powder', 'BF_MP_DA_001', 10, 1000, 900, 'Milk powder for children.', '<p><span style=\"font-size: 15.68px;\">Milk powder for children below five years.</span><br></p>', 'product-images/1678360615.jpeg', 1, 0, 0, '2023-03-09 05:16:55', '2023-03-20 08:48:52'),
(11, 4, 10, 5, 1, 'Dano Cerelac', 'BF_CE_DA_001', 10, 1400, 1300, 'Growth food for children.', '<p><span style=\"font-size: 15.68px;\">Growth food for children above three years.</span><br></p>', 'product-images/1678361382.jpg', 1, 0, 0, '2023-03-09 05:29:42', '2023-03-20 08:48:52'),
(12, 5, 12, 1, 1, 'Table fan.', 'TH_TF_SA_001', 12, 2600, 2500, 'Samsung table fan fine outlook.', '<p><span style=\"font-size: 15.68px;\">Samsung table fan fine outlook and broad collections.</span><br></p>', 'product-images/1678362852.jpg', 1, 0, 0, '2023-03-09 05:54:12', '2023-03-09 05:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3ldy2KxM46Exu0EK9LF3mh8muhng8Fk4wt6Rcv9B', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.44', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiS0JWTGduQzdDdnFZMDN3ODVBdHh1czUwWmxqcFN2R0Y5UmsyNnNrYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDcuQ0o3eUJvZ3lwYnBsU1lDM3dzeS4zL1kxRWNqeVFIRzhPcC9yYnB6RHRQWFZGbWtHT1hxIjt9', 1679325002);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile Phone', 'Modern smart phone.', 'sub-category-images/p2.jpg', 1, '2023-02-08 04:35:02', '2023-02-08 07:23:30'),
(2, 2, 'Man Clothing', 'Sub Category item of man fashion,', 'sub-category-images/Hoodies.jpg', 1, '2023-02-10 10:53:18', '2023-02-10 10:53:18'),
(3, 2, 'T-shirt', 'Man summer item.', 'sub-category-images/p3.jpg', 1, '2023-02-10 11:38:43', '2023-02-10 11:38:43'),
(5, 3, 'Kurti', 'Kurti for woman.', 'sub-category-images/Kurtis.jpg', 1, '2023-02-17 04:03:36', '2023-03-09 01:03:38'),
(6, 1, 'Laptop', 'Popular brands laptop', 'sub-category-images/Basic Laptop.jpg', 1, '2023-03-09 00:43:05', '2023-03-09 00:43:05'),
(8, 3, 'Sharees', 'Different sharees for woman.', 'sub-category-images/Sarees.jpg', 1, '2023-03-09 01:00:07', '2023-03-09 01:02:10'),
(9, 4, 'Milk powder', 'Milk powder for chield', 'sub-category-images/715Ww16wBbL._SL1500_.jpg', 1, '2023-03-09 01:43:47', '2023-03-09 05:09:18'),
(10, 4, 'Cerelac', 'Growth food for chield.', 'sub-category-images/carrot-baby-food-puree-in-bowls.jpg', 1, '2023-03-09 05:21:15', '2023-03-09 05:21:15'),
(11, 5, 'Smart TV.', 'Smart TV with internet', 'sub-category-images/Plasma TV.jpg', 1, '2023-03-09 05:32:45', '2023-03-09 05:32:45'),
(12, 5, 'Table Fan', 'Table fan collections.', 'sub-category-images/Table Fan4.jpg', 1, '2023-03-09 05:49:16', '2023-03-09 05:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pieces', 'Unit_001', 'Product in pieces', 1, '2023-02-08 05:12:27', '2023-02-08 05:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Mobarak Hossain', 'mobarak@mobarak.com', NULL, '$2y$10$7.CJ7yBogypbplSYC3wsy.3/Y1EcjyQHG8Op/rbpzDtPXVFmkGOXq', NULL, NULL, NULL, 'UDh5JNcXBBQYCXCJI5OwqRsMYPaHwUt1OhP7Mji2vHihSPtUcxhUnjtvMdEC', NULL, NULL, 2, '2023-02-02 01:09:38', '2023-02-02 01:09:38'),
(2, 'Tahera Yasmeen', 'tahera@tahera.com', NULL, '$2y$10$c0/LsOw2nb1AieaQDOScl.Y7BQc4TTTXz381b8gNhAt.oCBvEJiee', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-03 06:09:49', '2023-02-03 06:09:49'),
(3, 'Tasnim Mobarak', 'tasnim@tasnim.com', NULL, '$2y$10$372Y1g3IZ.3Ep24mhZn2duG3S.4Adab9M0doIYAoormP5X6qCjan2', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-02-03 06:31:32', '2023-02-03 06:31:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
