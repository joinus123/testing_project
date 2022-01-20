-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 01:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role` enum('Admin','User','','') COLLATE utf8mb4_unicode_ci DEFAULT 'Admin',
  `status` enum('Active','Deactive','','') COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fullname`, `lastname`, `phone_number`, `email`, `Role`, `status`, `password`, `Image`, `created_at`, `updated_at`) VALUES
(112, 'Gwendolyn', 'Laura', '753', 'geragykox@mailinator.com', 'Admin', 'Active', '$2y$10$nYblZ0Pv5b88.SpJ.c5okOUHw9itZUcB7.oyFNOarYLTGQYV8q8va', '1642636360.png', '2022-01-19 18:52:40', '2022-01-19 18:52:40'),
(113, 'Justin', 'Ariel', '130', 'hyfi@mailinator.com', 'Admin', 'Active', '$2y$10$8zdYrLx/91Nrfv5zPzXznOrfBhjgcYjDhR9lEbXZ4tB.SOirsJAkq', '1642636442.jpg', '2022-01-19 18:54:02', '2022-01-19 18:54:02'),
(114, 'Anthony', 'Kiara', '744', 'dexicyr@mailinator.com', 'Admin', 'Active', '$2y$10$j7Dg3ViKVpOyd8jPcNIovOjyo.0axD.TfA5q4lBRfUu/9blixawMq', '1642636498.png', '2022-01-19 18:54:58', '2022-01-19 18:54:58'),
(115, 'Jocelyn', 'Jordan', '433', 'gohol@mailinator.com', 'Admin', 'Active', '$2y$10$QryMSGsCRTWvdadIyIGuQ.SX1kGoICOBZ1AP8/kSVh/BsCdH0D1JS', '1642636616.jpg', '2022-01-19 18:56:56', '2022-01-19 18:56:56');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_17_181618_create_employees_table', 2),
(9, '2022_01_19_001200_create_user_images_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'john', 'john@gmail.com', NULL, '$2y$10$BUurIUhKXf2/Dy33YngB7u.UYJQiOY2MN7/ligxOwfQthQsu.msn6', NULL, '2022-01-14 15:51:31', '2022-01-14 15:51:31'),
(8, 'Drake Douglas', 'sopija@mailinator.com', NULL, '$2y$10$hL935eWP14nD6P7tUpGIkOgFVucarw8tJ2IDHEh8Ulno4FRQycGPa', NULL, '2022-01-14 16:45:01', '2022-01-14 16:45:01'),
(9, 'Shafira Houston', 'tevicyhoh@mailinator.com', NULL, '$2y$10$E2aEtufDei73AFs1ZNAd9.WWpjd/7WejSjhC7/.aO/zOvz5Ft52pu', NULL, '2022-01-17 20:37:35', '2022-01-17 20:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `user_id`, `main_image`, `created_at`, `updated_at`) VALUES
(1, 108, 'inv.png', '2022-01-19 18:04:00', '2022-01-19 18:04:00'),
(2, 108, 'login-bg.jpg', '2022-01-19 18:04:00', '2022-01-19 18:04:00'),
(3, 108, 'login-left-img.png', '2022-01-19 18:04:00', '2022-01-19 18:04:00'),
(4, 108, 'login-left-img-2.png', '2022-01-19 18:04:00', '2022-01-19 18:04:00'),
(5, 109, 'client-profile-img.jpg', '2022-01-19 18:42:01', '2022-01-19 18:42:01'),
(6, 109, 'inv.png', '2022-01-19 18:42:01', '2022-01-19 18:42:01'),
(7, 109, 'Profile_03.png', '2022-01-19 18:42:01', '2022-01-19 18:42:01'),
(8, 109, 'userprof.jpg', '2022-01-19 18:42:01', '2022-01-19 18:42:01'),
(9, 110, 'student-pro-girl.png', '2022-01-19 18:50:11', '2022-01-19 18:50:11'),
(10, 110, 'ticket-status.png', '2022-01-19 18:50:11', '2022-01-19 18:50:11'),
(11, 110, 'time-icon.png', '2022-01-19 18:50:11', '2022-01-19 18:50:11'),
(12, 110, 'time-left-icon.png', '2022-01-19 18:50:11', '2022-01-19 18:50:11'),
(13, 111, 'review-icon.png', '2022-01-19 18:50:54', '2022-01-19 18:50:54'),
(14, 111, 'ticket-status.png', '2022-01-19 18:50:54', '2022-01-19 18:50:54'),
(15, 111, 'time-left-icon.png', '2022-01-19 18:50:54', '2022-01-19 18:50:54'),
(16, 112, 'userprof.jpg', '2022-01-19 18:52:40', '2022-01-19 18:52:40'),
(17, 112, 'client-profile-img.jpg', '2022-01-19 18:52:40', '2022-01-19 18:52:40'),
(18, 112, 'inv.png', '2022-01-19 18:52:40', '2022-01-19 18:52:40'),
(19, 112, 'Profile_03.png', '2022-01-19 18:52:40', '2022-01-19 18:52:40'),
(20, 113, '1642531575.png', '2022-01-19 18:54:02', '2022-01-19 18:54:02'),
(21, 113, '1642535975.jpg', '2022-01-19 18:54:02', '2022-01-19 18:54:02'),
(22, 113, '1642536479.jpg', '2022-01-19 18:54:02', '2022-01-19 18:54:02'),
(23, 113, '1642537396.jpg', '2022-01-19 18:54:02', '2022-01-19 18:54:02'),
(24, 114, 'check.png', '2022-01-19 18:54:58', '2022-01-19 18:54:58'),
(25, 114, 'cross-sign.png', '2022-01-19 18:54:58', '2022-01-19 18:54:58'),
(26, 114, 'delete-icon.png', '2022-01-19 18:54:58', '2022-01-19 18:54:58'),
(27, 114, 'edit-icon.png', '2022-01-19 18:54:58', '2022-01-19 18:54:58'),
(28, 115, '1641937085.jpg', '2022-01-19 18:56:56', '2022-01-19 18:56:56'),
(29, 115, '1641938757.jpg', '2022-01-19 18:56:56', '2022-01-19 18:56:56'),
(30, 115, '1641938777.jpg', '2022-01-19 18:56:56', '2022-01-19 18:56:56'),
(31, 115, '1641938854.jpg', '2022-01-19 18:56:56', '2022-01-19 18:56:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
