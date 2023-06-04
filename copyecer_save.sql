-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2023 at 12:33 PM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copyecer_save`
--

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_29_034241_create_savewriteup_table', 1);

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
-- Table structure for table `saves`
--

CREATE TABLE `saves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `writeup` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saves`
--

INSERT INTO `saves` (`id`, `code`, `writeup`, `created_at`, `updated_at`) VALUES
(44, '6PRV', 'hello world', '2023-06-04 02:11:14', '2023-06-04 02:11:14'),
(45, 'K1AU', 'Testing from mobile', '2023-06-04 02:14:25', '2023-06-04 02:14:25'),
(46, '2MXG', 'Test', '2023-06-04 02:17:00', '2023-06-04 02:17:00'),
(47, 'GBVR', 'Mememememe', '2023-06-04 02:18:31', '2023-06-04 02:18:31'),
(48, 'KG3E', 'Jsjsnsvsbs dksjsbh djsbs', '2023-06-04 02:19:33', '2023-06-04 02:19:33'),
(49, 'BGKT', 'Jehshehe', '2023-06-04 02:20:54', '2023-06-04 02:20:54'),
(50, '5748', 'https://filevaulthq.com/', '2023-06-04 02:28:31', '2023-06-04 02:28:31'),
(51, 'XEM5', 'jksdgjsd dsjdsjkds', '2023-06-04 02:33:32', '2023-06-04 02:33:32'),
(52, '0LKS', 'Hey my boo,I love you always', '2023-06-04 02:35:26', '2023-06-04 02:35:26'),
(53, 'IYUL', 'Thank you so much my darling, I love so so much', '2023-06-04 02:37:31', '2023-06-04 02:37:31'),
(54, 'WWBZ', 'dfdfdfffdfd', '2023-06-04 02:39:45', '2023-06-04 02:39:45'),
(55, '2TBT', 'erfererererere', '2023-06-04 02:40:10', '2023-06-04 02:40:10'),
(56, 'YJEW', 'sdsdsdsdsdsdsdsds', '2023-06-04 02:41:46', '2023-06-04 02:41:46'),
(57, '9y8c', 'sdsdsdsdssdsdfs', '2023-06-04 02:46:50', '2023-06-04 02:46:50'),
(58, 'slh3', 'day two', '2023-06-04 19:01:07', '2023-06-04 19:01:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saves`
--
ALTER TABLE `saves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
