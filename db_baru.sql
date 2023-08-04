-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 03, 2023 at 04:59 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_mania`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deactivated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `section`, `email`, `basic_salary`, `deleted_at`, `created_at`, `updated_at`, `deactivated_at`) VALUES
('08f3d98f52aa0e4c6d2e9446e28d7dc0', 'Khafidha Sukma Dewi', 'Developer', 'khafidha@can.co.id', 3750000, NULL, '2023-07-14 08:45:05', '2023-07-14 08:45:05', NULL),
('09b3e47b575bf2404701faf21e0b9298', 'Husna Kahfi Annawawi', 'Designer', 'husna@can.co.id', 3750000, NULL, '2023-07-14 08:46:50', '2023-07-14 08:46:50', NULL),
('0a4e8b938c726444549903d3a250445e', 'Elva Nareswari', 'Account Executive', 'elvanari@can.co.id', 3750000, NULL, '2023-07-14 10:44:18', '2023-07-14 10:44:18', NULL),
('0b39a51b37b6cdf49f9ee47b21707a7b', 'Muhammad Anif Arzaqoni', 'Developer', 'anif@can.co.id', 4000000, NULL, '2023-07-14 08:38:35', '2023-07-14 08:38:35', NULL),
('19054f58336c5c0bb8bda568e917702a', 'Feri Fajariandi', 'Designer', 'ferifajariandi@gmail.com', 1200000, NULL, '2023-07-18 23:32:36', '2023-07-18 23:32:36', NULL),
('2889035253caf1c85587e8c8d4b9535c', 'Sofita Nur Fitriana', 'Developer', 'sofita@can.co.id', 4000000, NULL, '2023-07-14 08:44:10', '2023-07-14 08:57:44', NULL),
('31d9011146aeadd650ac58df019604e4', 'Satrio Nugroho', 'Developer', 'satrion93@gmail.com', 7000000, NULL, '2023-07-10 08:55:12', '2023-07-10 09:04:55', NULL),
('47981f1a00ed4fd5eefe4d1e151c71e8', 'Bayu Trisakti', 'Developer', 'bayutri@can.co.id', 4000000, NULL, '2023-07-14 08:39:18', '2023-07-14 08:39:18', NULL),
('4af688eb4300676c660b9f552bc97b08', 'Rafi Hidayat', 'Business Analyst', 'rafihidayatta@gmail.com', 4500000, NULL, '2023-07-10 06:36:55', '2023-07-14 08:34:52', NULL),
('8912d93a8f8ca2ddd8dc582915f292d5', 'Rinny Utary', 'Account Executive', 'rinny@can.co.id', 5000000, NULL, '2023-07-14 08:36:08', '2023-07-14 08:36:08', NULL),
('ba790815e06810e2a54357ea47a06466', 'Rafli Ramadhan', 'Developer', 'rafliramdhan1361@gmail.com', 5000000, NULL, '2023-07-10 08:47:13', '2023-07-19 17:42:09', '2023-07-19 17:42:09'),
('f7bd1a1b25c61c41d17753f487e2bf8b', 'Angga Ardyansah', 'Designer', 'angga@can.co.id', 4750000, NULL, '2023-07-14 08:37:16', '2023-07-19 17:42:25', NULL),
('faa5072848af9bb88655afff66b30f76', 'Mushafa Fadzan Andira', 'Developer', 'mushafa@can.co.id', 4000000, NULL, '2023-07-14 08:43:07', '2023-07-14 08:43:07', NULL),
('fd7f250f734c04c4ca40b1726fb481ed', 'Freza Ade Nugraha', 'Developer', 'freza@can.co.id', 4750000, NULL, '2023-07-14 08:36:48', '2023-07-14 08:36:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financials`
--

CREATE TABLE `financials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('additional','deductions') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financials`
--

INSERT INTO `financials` (`id`, `user_id`, `name`, `category`, `value`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project', 'additional', 10000000, 'Project', '2023-07-14 08:33:00', '2023-06-28 17:00:00', '2023-07-14 08:33:00'),
(2, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project', 'additional', 15000000, NULL, '2023-07-10 08:44:11', '2023-06-09 17:00:00', '2023-07-10 08:44:11'),
(3, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 1', 'additional', 15000000, NULL, '2023-07-14 08:32:55', '2023-07-09 17:00:00', '2023-07-14 08:32:55'),
(4, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 1 Mei 2023', 'additional', 15000000, 'Perpanjangan Project 1, Mei 2023', NULL, '2023-05-07 17:00:00', '2023-07-14 09:51:00'),
(5, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 2 Mei 2023', 'additional', 25000000, 'Perpanjangan Project 2, Mei 2023', NULL, '2023-05-10 17:00:00', '2023-07-14 09:50:42'),
(6, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 3 Mei 2023', 'additional', 18000000, 'Perpanjangan Project 3, Mei 2023', NULL, '2023-05-15 17:00:00', '2023-07-14 09:50:27'),
(7, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 4 Mei 2023', 'additional', 20000000, 'Perpanjangan Project 4, Mei 2023', NULL, '2023-05-16 17:00:00', '2023-07-14 09:50:12'),
(8, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 5 Mei 2023', 'additional', 15000000, 'Perpanjangan Project 5, Mei 2023', NULL, '2023-05-29 17:00:00', '2023-07-14 10:15:59'),
(9, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Pengeluaran Bulan Mei 2023', 'deductions', 3267000, '1. Listrik : Rp. 585.000\r\n2. Air PDAM : Rp. 180.000\r\n3. Internet Indihome : Rp. 1.300.000\r\n4. Internet Myrepublic : Rp. 655.000\r\n5. Restock Minuman sachet : Rp. 165.000\r\n6. Snack : Rp. 80.000\r\n7. Refill Air Galon : Rp. 102.000\r\n8. Solar Dexlite Genset : Rp. 50.000\r\n9. Bensin Transport : Rp. 150.000', NULL, '2023-05-30 17:00:00', '2023-07-14 10:16:57'),
(10, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 2 Juni 2023', 'additional', 25000000, 'Perpanjang Project 2, Juni', NULL, '2023-06-08 17:00:00', '2023-07-14 10:25:10'),
(11, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 1 Juni 2023', 'additional', 15000000, 'Perpanjangan Project 1, Juni', NULL, '2023-06-05 17:00:00', '2023-07-14 10:24:48'),
(12, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 3 Juni 2023', 'additional', 18000000, 'Perpanjangan Project 3, Juni', NULL, '2023-06-11 17:00:00', '2023-07-14 10:23:52'),
(13, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 4 Juni 2023', 'additional', 20000000, 'Perpanjangan Project 4, Juni', NULL, '2023-06-18 17:00:00', '2023-07-14 10:26:10'),
(14, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 5 Juni 2023', 'additional', 15000000, 'Perpanjangan Project 5, Juni', NULL, '2023-06-25 17:00:00', '2023-07-14 10:27:27'),
(15, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Project 6 DP Juni 2023', 'additional', 2500000, 'DP Project 6, Juni', NULL, '2023-06-28 17:00:00', '2023-07-14 10:29:04'),
(16, '6fc1240d471215ee993aa5bfbb6b9a2d', 'Pengeluaran Bulan Juni 2023', 'deductions', 6452000, '1. Listrik : Rp. 585.000\r\n2. Air PDAM : Rp. 180.000\r\n3. Internet Indihome : Rp. 1.300.000\r\n4. Internet Myrepublic : Rp. 655.000\r\n5. Restock Minuman sachet : Rp. 165.000\r\n6. Snack : Rp. 80.000\r\n7. Refill Air Galon : Rp. 102.000\r\n8. Solar Dexlite Genset : Rp. 50.000\r\n9. Bensin Transport : Rp. 150.000\r\n10. Perbaikan Listrik : Rp. 200.000\r\n11. Domain Project 6 : Rp. 285.000\r\n12. Hosting Project 6 : Rp. 2.700.000', NULL, '2023-06-29 17:00:00', '2023-07-14 10:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `login_histories`
--

CREATE TABLE `login_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_histories`
--

INSERT INTO `login_histories` (`id`, `user_id`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '6fc1240d471215ee993aa5bfbb6b9a2d', 'logout', NULL, '2023-07-10 06:30:20', '2023-07-10 06:30:20'),
(2, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-07-10 06:30:30', '2023-07-10 06:30:30'),
(3, '6fc1240d471215ee993aa5bfbb6b9a2d', 'logout', NULL, '2023-07-10 06:30:42', '2023-07-10 06:30:42'),
(4, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-07-10 06:31:41', '2023-07-10 06:31:41'),
(5, '6fc1240d471215ee993aa5bfbb6b9a2d', 'logout', NULL, '2023-07-10 06:34:26', '2023-07-10 06:34:26'),
(6, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-07-10 06:34:43', '2023-07-10 06:34:43'),
(7, '6fc1240d471215ee993aa5bfbb6b9a2d', 'logout', NULL, '2023-07-14 13:01:05', '2023-07-14 13:01:05'),
(8, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-07-17 04:43:52', '2023-07-17 04:43:52'),
(9, '6fc1240d471215ee993aa5bfbb6b9a2d', 'logout', NULL, '2023-07-17 12:01:47', '2023-07-17 12:01:47'),
(10, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-07-17 12:02:39', '2023-07-17 12:02:39'),
(11, '6fc1240d471215ee993aa5bfbb6b9a2d', 'logout', NULL, '2023-07-17 12:10:55', '2023-07-17 12:10:55'),
(12, '6196a3df82d8fbd4b252446ad8cd9234', 'login', NULL, '2023-07-17 12:11:07', '2023-07-17 12:11:07'),
(13, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-07-18 23:31:33', '2023-07-18 23:31:33'),
(14, '6fc1240d471215ee993aa5bfbb6b9a2d', 'login', NULL, '2023-08-03 16:55:01', '2023-08-03 16:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_07_28_182324_create_users_table', 1),
(5, '2022_09_26_015332_create_login_histories_table', 1),
(6, '2022_10_28_004608_create_sessions_table', 1),
(7, '2022_10_28_094940_create_notifications_table', 1),
(8, '2022_10_31_105525_create_permission_tables', 1),
(9, '2022_11_16_004125_create_payrolls_table', 1),
(10, '2022_11_16_004205_create_payroll_categories_table', 1),
(11, '2022_11_16_004325_create_employees_table', 1),
(12, '2022_11_16_004430_create_financials_table', 1),
(13, '2022_11_16_093232_create_payroll_details_table', 1),
(14, '2023_07_12_131132_update_employees_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', '3f427f3aacbee3b71c22e353f148101e'),
(1, 'App\\Models\\User', '6196a3df82d8fbd4b252446ad8cd9234'),
(1, 'App\\Models\\User', '6fc1240d471215ee993aa5bfbb6b9a2d'),
(1, 'App\\Models\\User', 'dce008754d566e5b987b28244c830819');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `user_id`, `employee_id`, `date`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-06-01', 'Catatan', '2023-07-12 08:57:40', '2023-07-10 06:39:47', '2023-07-12 08:57:40'),
(2, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-06-01', 'Catatan', '2023-07-10 08:15:54', '2023-07-10 06:40:07', '2023-07-10 08:15:54'),
(3, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-06-01', NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20'),
(4, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-06-01', NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22'),
(5, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-07-01', NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:08', '2023-07-14 08:33:23'),
(6, '6fc1240d471215ee993aa5bfbb6b9a2d', '31d9011146aeadd650ac58df019604e4', '2023-07-01', NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43'),
(7, '6fc1240d471215ee993aa5bfbb6b9a2d', '8912d93a8f8ca2ddd8dc582915f292d5', '2023-05-01', NULL, NULL, '2023-07-14 09:32:11', '2023-07-14 09:32:11'),
(8, '6fc1240d471215ee993aa5bfbb6b9a2d', 'fd7f250f734c04c4ca40b1726fb481ed', '2023-05-01', NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34'),
(9, '6fc1240d471215ee993aa5bfbb6b9a2d', 'f7bd1a1b25c61c41d17753f487e2bf8b', '2023-05-01', NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15'),
(10, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-05-01', NULL, NULL, '2023-07-14 09:34:59', '2023-07-14 09:34:59'),
(11, '6fc1240d471215ee993aa5bfbb6b9a2d', '0b39a51b37b6cdf49f9ee47b21707a7b', '2023-05-01', NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41'),
(12, '6fc1240d471215ee993aa5bfbb6b9a2d', '47981f1a00ed4fd5eefe4d1e151c71e8', '2023-05-01', NULL, NULL, '2023-07-14 09:36:20', '2023-07-14 09:36:20'),
(13, '6fc1240d471215ee993aa5bfbb6b9a2d', 'faa5072848af9bb88655afff66b30f76', '2023-05-01', NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54'),
(14, '6fc1240d471215ee993aa5bfbb6b9a2d', '2889035253caf1c85587e8c8d4b9535c', '2023-05-01', NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39'),
(15, '6fc1240d471215ee993aa5bfbb6b9a2d', '08f3d98f52aa0e4c6d2e9446e28d7dc0', '2023-05-01', NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07'),
(16, '6fc1240d471215ee993aa5bfbb6b9a2d', '09b3e47b575bf2404701faf21e0b9298', '2023-05-01', NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36'),
(17, '6fc1240d471215ee993aa5bfbb6b9a2d', '8912d93a8f8ca2ddd8dc582915f292d5', '2023-06-01', NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36'),
(18, '6fc1240d471215ee993aa5bfbb6b9a2d', 'fd7f250f734c04c4ca40b1726fb481ed', '2023-06-01', NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49'),
(19, '6fc1240d471215ee993aa5bfbb6b9a2d', 'f7bd1a1b25c61c41d17753f487e2bf8b', '2023-06-01', NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39'),
(20, '6fc1240d471215ee993aa5bfbb6b9a2d', '4af688eb4300676c660b9f552bc97b08', '2023-06-01', NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16'),
(21, '6fc1240d471215ee993aa5bfbb6b9a2d', '0b39a51b37b6cdf49f9ee47b21707a7b', '2023-06-01', NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07'),
(22, '6fc1240d471215ee993aa5bfbb6b9a2d', '47981f1a00ed4fd5eefe4d1e151c71e8', '2023-06-01', NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59'),
(23, '6fc1240d471215ee993aa5bfbb6b9a2d', 'faa5072848af9bb88655afff66b30f76', '2023-06-01', NULL, NULL, '2023-07-14 10:41:50', '2023-07-14 10:41:50'),
(24, '6fc1240d471215ee993aa5bfbb6b9a2d', '2889035253caf1c85587e8c8d4b9535c', '2023-06-01', NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27'),
(25, '6fc1240d471215ee993aa5bfbb6b9a2d', '08f3d98f52aa0e4c6d2e9446e28d7dc0', '2023-06-01', NULL, NULL, '2023-07-14 10:42:57', '2023-07-14 10:42:57'),
(26, '6fc1240d471215ee993aa5bfbb6b9a2d', '09b3e47b575bf2404701faf21e0b9298', '2023-06-01', NULL, NULL, '2023-07-14 10:43:30', '2023-07-14 10:43:30'),
(27, '6fc1240d471215ee993aa5bfbb6b9a2d', '0a4e8b938c726444549903d3a250445e', '2023-06-01', NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_categories`
--

CREATE TABLE `payroll_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('static','dynamic') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_default` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_categories`
--

INSERT INTO `payroll_categories` (`id`, `name`, `type`, `value_default`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tunjangan Jabatan', 'dynamic', 100000, 'Note', NULL, '2023-07-10 06:38:42', '2023-07-10 08:20:39'),
(2, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-10 08:21:08', '2023-07-10 08:21:08'),
(3, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-10 08:21:38', '2023-07-10 08:21:38'),
(4, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-10 08:22:05', '2023-07-10 08:22:05'),
(5, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-10 08:22:38', '2023-07-10 08:22:38'),
(6, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-10 08:22:58', '2023-07-10 08:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_details`
--

CREATE TABLE `payroll_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('static','dynamic') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payroll_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_details`
--

INSERT INTO `payroll_details` (`id`, `name`, `type`, `value`, `description`, `deleted_at`, `created_at`, `updated_at`, `payroll_category_id`, `payroll_id`) VALUES
(1, 'Gaji Pokok', 'static', 5000000, NULL, '2023-07-12 08:57:40', '2023-07-10 06:39:47', '2023-07-12 08:57:40', NULL, 1),
(2, 'BPJS', 'static', 200000, NULL, '2023-07-12 08:57:40', '2023-07-10 06:39:47', '2023-07-12 08:57:40', 1, 1),
(3, 'Gaji Pokok', 'static', 5000000, NULL, '2023-07-10 08:15:54', '2023-07-10 06:40:07', '2023-07-10 08:15:54', NULL, 2),
(4, 'BPJS', 'static', 200000, NULL, '2023-07-10 08:15:54', '2023-07-10 06:40:07', '2023-07-10 08:15:54', 1, 2),
(5, 'Gaji Pokok', 'static', 5000000, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', NULL, 3),
(6, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', 1, 3),
(7, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', 2, 3),
(8, 'Piutang', 'dynamic', 0, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', 3, 3),
(9, 'BPJS JKK', 'static', -95515, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', 4, 3),
(10, 'BPJS JKM', 'static', -119936, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', 5, 3),
(11, 'BPJS Kesehatan', 'static', -35000, NULL, '2023-07-10 08:34:20', '2023-07-10 08:32:52', '2023-07-10 08:34:20', 6, 3),
(12, 'Gaji Pokok', 'static', 5000000, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', NULL, 4),
(13, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', 1, 4),
(14, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', 2, 4),
(15, 'Piutang', 'dynamic', 0, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', 3, 4),
(16, 'BPJS JKK', 'static', -95515, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', 4, 4),
(17, 'BPJS JKM', 'static', -119936, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', 5, 4),
(18, 'BPJS Kesehatan', 'static', -35000, NULL, '2023-07-10 08:40:22', '2023-07-10 08:38:27', '2023-07-10 08:40:22', 6, 4),
(19, 'Gaji Pokok', 'static', 5000000, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:08', '2023-07-14 08:33:23', NULL, 5),
(20, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:08', '2023-07-14 08:33:23', 1, 5),
(21, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:08', '2023-07-14 08:33:23', 2, 5),
(22, 'Piutang', 'dynamic', 0, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:08', '2023-07-14 08:33:23', 3, 5),
(23, 'BPJS JKK', 'static', -95515, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:09', '2023-07-14 08:33:23', 4, 5),
(24, 'BPJS JKM', 'static', -119936, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:09', '2023-07-14 08:33:23', 5, 5),
(25, 'BPJS Kesehatan', 'static', -35000, NULL, '2023-07-14 08:33:23', '2023-07-10 08:46:09', '2023-07-14 08:33:23', 6, 5),
(26, 'Gaji Pokok', 'static', 7000000, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', NULL, 6),
(27, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', 1, 6),
(28, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', 2, 6),
(29, 'Piutang', 'dynamic', 0, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', 3, 6),
(30, 'BPJS JKK', 'static', -95515, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', 4, 6),
(31, 'BPJS JKM', 'static', -119936, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', 5, 6),
(32, 'BPJS Kesehatan', 'static', -35000, NULL, '2023-07-10 09:04:43', '2023-07-10 08:56:18', '2023-07-10 09:04:43', 6, 6),
(33, 'Gaji Pokok', 'static', 5000000, NULL, NULL, '2023-07-14 09:32:11', '2023-07-14 09:32:11', NULL, 7),
(34, 'Tunjangan Jabatan', 'dynamic', 200000, NULL, NULL, '2023-07-14 09:32:11', '2023-07-14 09:32:11', 1, 7),
(35, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:32:12', '2023-07-14 09:32:12', 2, 7),
(36, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:32:12', '2023-07-14 09:32:12', 3, 7),
(37, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:32:12', '2023-07-14 09:32:12', 4, 7),
(38, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:32:12', '2023-07-14 09:32:12', 5, 7),
(39, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:32:12', '2023-07-14 09:32:12', 6, 7),
(40, 'Gaji Pokok', 'static', 4750000, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', NULL, 8),
(41, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', 1, 8),
(42, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', 2, 8),
(43, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', 3, 8),
(44, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', 4, 8),
(45, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', 5, 8),
(46, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:33:34', '2023-07-14 09:33:34', 6, 8),
(47, 'Gaji Pokok', 'static', 4750000, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', NULL, 9),
(48, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', 1, 9),
(49, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', 2, 9),
(50, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', 3, 9),
(51, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', 4, 9),
(52, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', 5, 9),
(53, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:34:15', '2023-07-14 09:34:15', 6, 9),
(54, 'Gaji Pokok', 'static', 4500000, NULL, NULL, '2023-07-14 09:34:59', '2023-07-14 09:34:59', NULL, 10),
(55, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:34:59', '2023-07-14 09:34:59', 1, 10),
(56, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:34:59', '2023-07-14 09:34:59', 2, 10),
(57, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:34:59', '2023-07-14 09:34:59', 3, 10),
(58, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:35:00', '2023-07-14 09:35:00', 4, 10),
(59, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:35:00', '2023-07-14 09:35:00', 5, 10),
(60, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:35:00', '2023-07-14 09:35:00', 6, 10),
(61, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', NULL, 11),
(62, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', 1, 11),
(63, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', 2, 11),
(64, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', 3, 11),
(65, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', 4, 11),
(66, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', 5, 11),
(67, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:35:41', '2023-07-14 09:35:41', 6, 11),
(68, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 09:36:20', '2023-07-14 09:36:20', NULL, 12),
(69, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:36:20', '2023-07-14 09:36:20', 1, 12),
(70, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:36:20', '2023-07-14 09:36:20', 2, 12),
(71, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:36:20', '2023-07-14 09:36:20', 3, 12),
(72, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:36:20', '2023-07-14 09:36:20', 4, 12),
(73, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:36:21', '2023-07-14 09:36:21', 5, 12),
(74, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:36:21', '2023-07-14 09:36:21', 6, 12),
(75, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', NULL, 13),
(76, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', 1, 13),
(77, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', 2, 13),
(78, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', 3, 13),
(79, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', 4, 13),
(80, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', 5, 13),
(81, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:36:54', '2023-07-14 09:36:54', 6, 13),
(82, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', NULL, 14),
(83, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', 1, 14),
(84, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', 2, 14),
(85, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', 3, 14),
(86, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', 4, 14),
(87, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', 5, 14),
(88, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:37:39', '2023-07-14 09:37:39', 6, 14),
(89, 'Gaji Pokok', 'static', 3750000, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', NULL, 15),
(90, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', 1, 15),
(91, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', 2, 15),
(92, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', 3, 15),
(93, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', 4, 15),
(94, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', 5, 15),
(95, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:38:07', '2023-07-14 09:38:07', 6, 15),
(96, 'Gaji Pokok', 'static', 3750000, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', NULL, 16),
(97, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', 1, 16),
(98, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', 2, 16),
(99, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', 3, 16),
(100, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', 4, 16),
(101, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', 5, 16),
(102, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 09:38:36', '2023-07-14 09:38:36', 6, 16),
(103, 'Gaji Pokok', 'static', 5000000, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', NULL, 17),
(104, 'Tunjangan Jabatan', 'dynamic', 250000, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', 1, 17),
(105, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', 2, 17),
(106, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', 3, 17),
(107, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', 4, 17),
(108, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', 5, 17),
(109, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:36:36', '2023-07-14 10:36:36', 6, 17),
(110, 'Gaji Pokok', 'static', 4750000, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', NULL, 18),
(111, 'Tunjangan Jabatan', 'dynamic', 200000, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', 1, 18),
(112, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', 2, 18),
(113, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', 3, 18),
(114, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', 4, 18),
(115, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', 5, 18),
(116, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:37:49', '2023-07-14 10:37:49', 6, 18),
(117, 'Gaji Pokok', 'static', 4750000, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', NULL, 19),
(118, 'Tunjangan Jabatan', 'dynamic', 200000, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', 1, 19),
(119, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', 2, 19),
(120, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', 3, 19),
(121, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', 4, 19),
(122, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', 5, 19),
(123, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:38:39', '2023-07-14 10:38:39', 6, 19),
(124, 'Gaji Pokok', 'static', 4500000, NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16', NULL, 20),
(125, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16', 1, 20),
(126, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16', 2, 20),
(127, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16', 3, 20),
(128, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16', 4, 20),
(129, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:39:16', '2023-07-14 10:39:16', 5, 20),
(130, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:39:17', '2023-07-14 10:39:17', 6, 20),
(131, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', NULL, 21),
(132, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', 1, 21),
(133, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', 2, 21),
(134, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', 3, 21),
(135, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', 4, 21),
(136, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', 5, 21),
(137, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:40:07', '2023-07-14 10:40:07', 6, 21),
(138, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', NULL, 22),
(139, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', 1, 22),
(140, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', 2, 22),
(141, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', 3, 22),
(142, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', 4, 22),
(143, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', 5, 22),
(144, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:40:59', '2023-07-14 10:40:59', 6, 22),
(145, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 10:41:50', '2023-07-14 10:41:50', NULL, 23),
(146, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:41:50', '2023-07-14 10:41:50', 1, 23),
(147, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:41:50', '2023-07-14 10:41:50', 2, 23),
(148, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:41:50', '2023-07-14 10:41:50', 3, 23),
(149, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:41:51', '2023-07-14 10:41:51', 4, 23),
(150, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:41:51', '2023-07-14 10:41:51', 5, 23),
(151, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:41:51', '2023-07-14 10:41:51', 6, 23),
(152, 'Gaji Pokok', 'static', 4000000, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', NULL, 24),
(153, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', 1, 24),
(154, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', 2, 24),
(155, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', 3, 24),
(156, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', 4, 24),
(157, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', 5, 24),
(158, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:42:27', '2023-07-14 10:42:27', 6, 24),
(159, 'Gaji Pokok', 'static', 3750000, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', NULL, 25),
(160, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', 1, 25),
(161, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', 2, 25),
(162, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', 3, 25),
(163, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', 4, 25),
(164, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', 5, 25),
(165, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:42:58', '2023-07-14 10:42:58', 6, 25),
(166, 'Gaji Pokok', 'static', 3750000, NULL, NULL, '2023-07-14 10:43:30', '2023-07-14 10:43:30', NULL, 26),
(167, 'Tunjangan Jabatan', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:43:30', '2023-07-14 10:43:30', 1, 26),
(168, 'Tunjangan Hari Raya', 'dynamic', 150000, NULL, NULL, '2023-07-14 10:43:30', '2023-07-14 10:43:30', 2, 26),
(169, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:43:30', '2023-07-14 10:43:30', 3, 26),
(170, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:43:30', '2023-07-14 10:43:30', 4, 26),
(171, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:43:31', '2023-07-14 10:43:31', 5, 26),
(172, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:43:31', '2023-07-14 10:43:31', 6, 26),
(173, 'Gaji Pokok', 'static', 3750000, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', NULL, 27),
(174, 'Tunjangan Jabatan', 'dynamic', 100000, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', 1, 27),
(175, 'Tunjangan Hari Raya', 'dynamic', 0, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', 2, 27),
(176, 'Piutang', 'dynamic', 0, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', 3, 27),
(177, 'BPJS JKK', 'static', -95515, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', 4, 27),
(178, 'BPJS JKM', 'static', -119936, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', 5, 27),
(179, 'BPJS Kesehatan', 'static', -35000, NULL, NULL, '2023-07-14 10:45:22', '2023-07-14 10:45:22', 6, 27);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-07-31 02:57:43', '2023-07-31 02:57:43'),
(2, 'accounting', 'web', '2023-07-31 02:57:44', '2023-07-31 02:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-07-31 02:57:43', '2023-07-31 02:57:43'),
(2, 'accounting', 'web', '2023-07-31 02:57:44', '2023-07-31 02:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female','hidden') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `date_born` date NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `phone`, `gender`, `address`, `date_born`, `profile_pic`, `email_verified_at`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
('3f427f3aacbee3b71c22e353f148101e', 'rafihidayatta@gmail.com', '$2y$10$DUz867u.pcqhlUMJ67bkZePBRcb2C8wKNipngBzPxP.bOyT2mmblq', 'Rafi Hidayat', '8984444905', 'male', 'Yogyakarta', '2023-02-28', NULL, NULL, NULL, NULL, '2023-07-10 06:36:27', '2023-07-10 06:36:27'),
('6196a3df82d8fbd4b252446ad8cd9234', 'rinny@cann.my.id', '$2y$10$1Yv03sKhCcLin/I0Ox5sMeT6LBlMnQ9o189IwAuTVmZ.BXWYSQzFa', 'Rinny Utary', '81516363432', 'female', 'Jl. Sentyaki', '1998-02-13', NULL, NULL, 'g3F7sGCpKa1lcch2JFs5NUNSFcCw2zGI1AcBs0BLGtC8716dt7g5bSEkfMeH', NULL, '2023-07-17 12:10:36', '2023-07-17 12:10:36'),
('6fc1240d471215ee993aa5bfbb6b9a2d', 'admin@cann.my.id', '$2y$10$rNPnRqYwd5OS.R2LgPY3L.Vo3YjA1cMnex9KoO2U9nYWsMeAxC.36', 'Accounting', '1231231231', 'hidden', 'ksandkjandkjandkjasdn', '2010-03-07', '', '2023-07-09 21:46:20', 'vQ5udACuGK36VzUOdJx047ARckpDAqZF3eqp2rpvj2X8M3yhYc6MvzLAZTnt', NULL, '2023-07-09 21:46:20', '2023-07-09 21:46:20'),
('dce008754d566e5b987b28244c830819', 'rafliramdhan1361@gmail.com', '$2y$10$rT14AkieU3nhIhgWVEax6.0YkW1o6R324YdN6dEQWnNKJJ5he8UL.', 'Rafli Ramadhan', '81275465576', 'male', '-', '1999-10-07', NULL, NULL, NULL, NULL, '2023-07-10 08:49:08', '2023-07-10 08:49:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `financials`
--
ALTER TABLE `financials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financials_user_id_foreign` (`user_id`);

--
-- Indexes for table `login_histories`
--
ALTER TABLE `login_histories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_user_id_foreign` (`user_id`);

--
-- Indexes for table `payroll_categories`
--
ALTER TABLE `payroll_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_details_payroll_category_id_foreign` (`payroll_category_id`),
  ADD KEY `payroll_details_payroll_id_foreign` (`payroll_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financials`
--
ALTER TABLE `financials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login_histories`
--
ALTER TABLE `login_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payroll_categories`
--
ALTER TABLE `payroll_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payroll_details`
--
ALTER TABLE `payroll_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financials`
--
ALTER TABLE `financials`
  ADD CONSTRAINT `financials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payroll_details`
--
ALTER TABLE `payroll_details`
  ADD CONSTRAINT `payroll_details_payroll_category_id_foreign` FOREIGN KEY (`payroll_category_id`) REFERENCES `payroll_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payroll_details_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
