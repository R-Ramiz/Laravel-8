-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 05:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_yajra`
--

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Jordyn Walker', 'ola67@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'usLEJbSEYM', '2021-09-22 21:01:56', '2021-09-22 21:01:56'),
(2, 'Wilfrid Hintz', 'uparisian@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i5nNJKTrq5', '2021-09-22 21:01:56', '2021-09-22 21:01:56'),
(3, 'Edna Nitzsche', 'coby.mcglynn@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jrToHlMv0o', '2021-09-22 21:01:56', '2021-09-22 21:01:56'),
(4, 'Alexandrine Schimmel PhD', 'delaney80@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hehB38V3pU', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(5, 'Miss Christa Paucek DDS', 'gmuller@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qgeH1zYMGP', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(6, 'Braxton Ratke', 'ymitchell@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R0AkoxfgrV', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(7, 'Juvenal Bins', 'eluettgen@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uRn5GS8BPc', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(8, 'Bridgette Hickle', 'mckenzie21@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tIdGAxlPHj', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(9, 'Catharine Hill', 'shuels@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HI4Ik4OTR5', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(10, 'Kamille Torphy', 'armstrong.sabina@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZdF8Xsc48P', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(11, 'Prof. Lincoln Kutch DVM', 'jimmie33@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ALPy8IslJ', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(12, 'Dimitri Rutherford', 'nveum@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LyNl21QCkN', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(13, 'Janie Leannon V', 'modesta.goodwin@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kUKW9mwQ7v', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(14, 'Dr. Jeramy Hegmann I', 'dzulauf@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ohee8U96No', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(15, 'Arlie Davis', 'donnelly.tyrell@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C0YF7i2nOS', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(16, 'Freida Jast', 'xzieme@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GNgj7omJUs', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(17, 'Madelyn Glover', 'timothy89@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PGELAMjh2i', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(18, 'Jacynthe Welch', 'lmoen@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uKp2gtbPhy', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(19, 'Mr. Fausto Murray III', 'amely85@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zh2U9plyQ2', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(20, 'Libby Aufderhar', 'streich.dalton@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Tiy9V8UKl', '2021-09-22 21:01:57', '2021-09-22 21:01:57'),
(21, 'Rogers Carter', 'weissnat.abdul@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lqAQzaar4G', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(22, 'Mr. Erick Kessler', 'effertz.lafayette@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sKQHlBebdd', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(23, 'Consuelo Weissnat', 'andre.kuhlman@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YAnHCkbX8t', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(24, 'Mr. Mario Reinger', 'daniel.genesis@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wHRXZ2ECDt', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(25, 'Mrs. Katherine Schaden', 'elinore80@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IRM45jKE7H', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(26, 'Tomas Nolan', 'lorenz.brown@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jkRxhsEf8O', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(27, 'Willy Gulgowski', 'telly.hettinger@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xC4VmX4esg', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(28, 'Sidney Sauer', 'cummings.conor@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pFHR9biE3V', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(29, 'Alexander Stamm', 'idell.oconner@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7sofeRFGGx', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(30, 'Eliezer Feil', 'keebler.columbus@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3TwgihZE8F', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(31, 'Dave Waters', 'oboyer@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kOACqa75Mi', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(32, 'Mr. Archibald Gaylord III', 'nicola.mckenzie@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sXxmBOGbao', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(33, 'Audrey Hodkiewicz', 'lonny80@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'avOTiyQUp8', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(34, 'Ivy Harber', 'vwalsh@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yI9pPa20N3', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(35, 'Alanis Kovacek Jr.', 'kling.karlee@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qrXo3eAwtH', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(36, 'Elvera Gutmann', 'jazmyn12@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vE4WR09p3K', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(37, 'Eve Kuphal', 'grimes.marcus@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KyKC3TARg0', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(38, 'Johnnie Larson', 'aletha.koch@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Wwa83Xo3f', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(39, 'Flavio Kozey', 'iboehm@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q3ne8oRoZ5', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(40, 'Hillard Crooks Jr.', 'dwolff@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rXTcwHN2ck', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(41, 'Katelyn Kertzmann', 'kmcglynn@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pn54tE4zOw', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(42, 'Arch Skiles', 'cody.larson@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nIYt7d23R0', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(43, 'Frederick Gleason', 'lauryn01@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W9yECaDaHB', '2021-09-22 21:01:58', '2021-09-22 21:01:58'),
(44, 'Daron Fay', 'johnpaul70@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vo06onjddR', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(45, 'Constance Funk', 'loren.casper@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5pIiCSpHdz', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(46, 'Prof. Bessie Hayes', 'eldon40@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4iVttEkVBR', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(47, 'Breana Fadel', 'alanna.mraz@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GHh2ElbaHI', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(48, 'Mr. Columbus Crona', 'lstracke@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wxN5fwnMPQ', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(49, 'Mona Breitenberg', 'zwindler@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j8iyrRDFJm', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(50, 'Sally Renner', 'stefanie95@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMMnLgTzlZ', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(51, 'Velma Pagac', 'zlockman@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YaymEU3ico', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(52, 'Candice Pacocha', 'velva.wisoky@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TgsG6RNYQA', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(53, 'Ted Blick', 'margaretta15@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R7JAx5wi8W', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(54, 'Yazmin Corkery PhD', 'shayes@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ihnFOs3Yd6', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(55, 'Devante Kuphal', 'tgottlieb@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5zq22pba5U', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(56, 'Miss Elaina Wyman', 'elna.hansen@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T6NN0VuybA', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(57, 'Daphne Bashirian', 'rice.gianni@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P72XMc8w3Y', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(58, 'Rafaela Gerlach', 'sanford.vanessa@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tin6i6ucEn', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(59, 'Jayson Schultz', 'serenity73@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hnmxb6q96V', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(60, 'Miss Kenna Zulauf', 'pacocha.brennon@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y3TpVgz96w', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(61, 'Rubie Ferry', 'green.edyth@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i0GGnPKytz', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(62, 'Ms. Marion Berge', 'destinee.wisoky@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JHk63JXh4B', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(63, 'Alverta Parisian', 'reymundo43@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PvG3nHgWJO', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(64, 'Mr. Jacinto Jacobson I', 'janie98@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VLukc5ncqg', '2021-09-22 21:01:59', '2021-09-22 21:01:59'),
(65, 'Coty Harvey', 'larkin.clarissa@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ex16Y5O2V0', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(66, 'Vincenzo Lindgren', 'freeda00@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4cAFmG8mxT', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(67, 'Franco Kessler', 'meta.ortiz@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ETV7WbqWXN', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(68, 'Rae DuBuque', 'bmraz@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YuIGPHO2Zl', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(69, 'Alexandra Turcotte', 'wschowalter@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qCjTXzhkOc', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(70, 'Clemens Mertz', 'giovanna43@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NYVmJYZBD9', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(71, 'Dario Gerlach', 'supton@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FITlPLCXu4', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(72, 'Mrs. Aditya Tillman PhD', 'arno22@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2G3DRFIJkh', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(73, 'Dr. Efrain Wuckert', 'leuschke.brenna@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fmbH9upnUA', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(74, 'Violette Daniel', 'nasir.baumbach@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '02xXP2I7w3', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(75, 'Dr. Judson Ryan II', 'israel11@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'khVeY1o2bm', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(76, 'Ismael Hagenes MD', 'nedra22@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0J9YLPsyvC', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(77, 'Jesse Bode DDS', 'kihn.janis@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w7WO2KmaUG', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(78, 'Maynard McCullough', 'olowe@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6unAblKgPp', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(79, 'Garland Cummerata', 'hfriesen@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V7svksHlQU', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(80, 'Rebecca Jakubowski I', 'keeley02@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uf0CKO7K8j', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(81, 'Miss Rebeca Nitzsche', 'kkonopelski@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JYblL7ZmNg', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(82, 'Sunny Kautzer', 'murazik.verona@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hdxM1O0B9j', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(83, 'Geoffrey Roberts', 'reginald.brekke@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HVyfhuvD2e', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(84, 'Jackeline Will', 'braun.mark@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z4YbxojPYh', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(85, 'Damien Keeling', 'lexi95@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WLhispysiJ', '2021-09-22 21:02:00', '2021-09-22 21:02:00'),
(86, 'Jamey Beier', 'krystina68@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M6T9YAQGfQ', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(87, 'Aileen Klocko', 'blegros@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e6TumyOigb', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(88, 'Lilliana Bailey', 'erdman.georgette@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CdAIWqeWoM', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(89, 'Mr. Hermann Muller Sr.', 'uwhite@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u4ozEqHTJu', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(90, 'Edyth Pollich', 'rebekah00@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TQ7tHcmFxl', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(91, 'Jon Towne V', 'vito.stoltenberg@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'efIqedEYiy', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(92, 'Ericka Altenwerth', 'mcclure.ernie@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xItWRXnfta', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(93, 'Golda Shanahan', 'gunner.dibbert@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I0Usp958m0', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(94, 'Iva Ruecker', 'lebsack.carroll@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gx60Li6Bfe', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(95, 'Prof. Kellie Dibbert', 'alfonso88@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VIiQ7v8azx', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(96, 'Angelica Carroll', 'denesik.edyth@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VnxUqrytB7', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(97, 'Mrs. Monique McLaughlin PhD', 'desiree21@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uZXSed032b', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(98, 'Madge Schmitt DDS', 'burnice.schiller@example.org', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mR3F71FhmO', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(99, 'Name Fadel', 'trevion.gaylord@example.com', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nQhO4vlbNa', '2021-09-22 21:02:01', '2021-09-22 21:02:01'),
(100, 'Candido Kuhlman', 'pearl29@example.net', '2021-09-22 21:01:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jNavnF5Wqm', '2021-09-22 21:02:01', '2021-09-22 21:02:01');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
