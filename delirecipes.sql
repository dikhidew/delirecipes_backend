-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2024 at 03:24 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delirecipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `name`, `key`, `created_at`, `updated_at`) VALUES
(1, 'delicook indonesia', 'diki1234', '2024-12-06 06:06:07', '2024-12-06 06:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1733482827),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1733482827;', 1733482827),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1733478373),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1733478373;', 1733478373);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Bakery', 'bakery', '01JCNAASA08JWJRAB7FVNYY1FS.png', NULL, '2024-11-14 05:28:22', '2024-12-03 20:29:49'),
(2, 'Healthy', 'healthy', '01JCNANSPB46JP701F7D5BNZ4V.png', NULL, '2024-11-14 05:34:23', '2024-11-14 05:34:23'),
(3, 'Sweet', 'sweet', '01JCNAPC874ZCCHXGWBSEQJMGR.png', NULL, '2024-11-14 05:34:42', '2024-11-14 05:34:42'),
(4, 'Steam', 'steam', '01JCNAPQTHP13JAJSRWK68WNR7.png', NULL, '2024-11-14 05:34:54', '2024-11-14 05:34:54'),
(5, 'Grill', 'grill', '01JCNAQ2Y6XNMNGXB430MQAJZ3.png', NULL, '2024-11-14 05:35:05', '2024-11-14 05:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Chillies', '01JCNB2SYJDYH9HADY69ZHA73E.avif', NULL, '2024-11-14 05:41:29', '2024-11-14 05:41:29'),
(2, 'Big Meats', '01JCNB5FZJMQ1BXFAJEHGAWT02.avif', NULL, '2024-11-14 05:42:57', '2024-11-14 05:43:58'),
(3, 'Pineapple', '01JCNBKWHJ3HMVDSV09NKCAY3H.avif', NULL, '2024-11-14 05:50:49', '2024-11-14 05:50:49'),
(4, 'Soft Flour', '01JCNBNWXKZQNWX2HB4VJQ2PRH.avif', NULL, '2024-11-14 05:51:55', '2024-11-14 05:51:55'),
(5, 'Raw Eggs', '01JCNBRAS1ZXQDM22MG3XM9TW6.avif', NULL, '2024-11-14 05:53:15', '2024-11-14 05:53:15'),
(6, 'Spices', '01JCNBS6F16XHNP88A3TPCWWEN.avif', NULL, '2024-11-14 05:53:43', '2024-11-14 05:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_13_114211_create_categories_table', 2),
(5, '2024_11_13_114636_create_ingredients_table', 2),
(6, '2024_11_13_114702_create_recipe_authors_table', 2),
(7, '2024_11_13_114713_create_recipes_table', 2),
(8, '2024_11_13_114731_create_recipe_ingredients_table', 2),
(9, '2024_11_13_114749_create_recipe_photos_table', 2),
(10, '2024_11_13_114801_create_recipe_tutorials_table', 2),
(11, '2024_11_16_031014_create_personal_access_tokens_table', 3),
(12, '2024_12_06_125608_create_api_keys_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `recipe_author_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `thumbnail`, `url_file`, `url_video`, `about`, `category_id`, `recipe_author_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Burger Tebal Makin Hot', '01JCNFG768KJME7BJ393ND58ER.avif', '01JCNFG76J3BM9334M5FV7YQ4D.pdf', 'kTg4svA2_4w', 'Burger tebal asal kota jogja ini sangat membuat lapar dan sehat untuk tubuh kita terutama ketika sendang bulking pada masa otot terbaru setelah olahraga', 1, 1, 'burger-tebal-makin-hot', NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(2, 'Telur Mata Sapi', '01JE7WDP0QN11QKGJ14YMVHZ17.jpg', '01JE7WDP0VXZ3VEQNY2R4BXFYZ.pdf', 'kTg4svA2_4w', 'Telur Mata sapi adalah masakan dari telur ayam yang di goreng', 2, 1, 'telur-mata-sapi', NULL, '2024-12-03 20:46:33', '2024-12-03 20:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_authors`
--

CREATE TABLE `recipe_authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_authors`
--

INSERT INTO `recipe_authors` (`id`, `name`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dikhi', '01JCNC1HJ7EJE5FCRD5HHN8Q9J.avif', NULL, '2024-11-14 05:58:17', '2024-11-14 05:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `ingredient_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`id`, `recipe_id`, `ingredient_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(2, 1, 1, NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(3, 1, 5, NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(4, 2, 5, NULL, '2024-12-03 20:46:33', '2024-12-03 20:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_photos`
--

CREATE TABLE `recipe_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_photos`
--

INSERT INTO `recipe_photos` (`id`, `photo`, `recipe_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '01JCNFG76B1PKAKPFPPE0R9RD6.avif', 1, NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(2, '01JCNFG76DJ84JAHST2BJAZ7XA.avif', 1, NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(3, '01JCNFG76FMHJ74Z4CCBMZZXEX.avif', 1, NULL, '2024-11-14 06:58:43', '2024-11-14 06:58:43'),
(4, '01JE7WDP0TS33GJ50D8X0WATZE.jpg', 2, NULL, '2024-12-03 20:46:33', '2024-12-03 20:46:33'),
(5, '01JEDSZWFCSPWYE0JES2XJ1Y73.jpg', 2, NULL, '2024-12-06 03:59:30', '2024-12-06 03:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_tutorials`
--

CREATE TABLE `recipe_tutorials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_tutorials`
--

INSERT INTO `recipe_tutorials` (`id`, `name`, `recipe_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Siapkan telur rebus dicampur dengan mentega rendah kalori', 1, NULL, '2024-11-14 07:00:39', '2024-11-14 07:00:39'),
(2, 'Pansakan minyak dengan api stabil agar tidak gosong nanti dagingnya', 1, NULL, '2024-11-14 07:00:52', '2024-11-14 07:00:52'),
(3, 'Roti disajikan tanpa wijen agar rasanya tidak bertabrakan dengan selada', 1, NULL, '2024-11-14 07:01:24', '2024-11-14 07:01:24'),
(4, 'Grill daging sapi dengan keaadaan frozen dan berikan sea salts', 1, NULL, '2024-11-14 07:01:39', '2024-11-14 07:01:39'),
(5, 'gabungkan satu per satu ketika masih panas jadi lebih melekat', 1, NULL, '2024-11-14 07:01:52', '2024-11-14 07:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Gxg9iJIEJwiVFMbHchCT3ucLjn0FBK7HrBsJZfVp', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTlJWNDlCMmExTDQ4MUN5RWs0TXZFU3FsY09WN1NuWnZ5N0p3dkdKOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vcmVjaXBlcy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkMWxzVEFnZGIxOXhJQUFqNjhGekhCdVA0VmwzbW9PRE0xMlFEeTBqU3FPanhwYmJqS1F0LjIiO30=', 1733403354),
('lflEPToQoywwwerGh49aBd7p7gCWm0PG1gONOJ3K', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiR2RPQnk0NUVFOVpPclVTWnlDaGJsR3dtWEIwRnZ1cmtZZXNzdGVTTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yZWNpcGVzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDFsc1RBZ2RiMTl4SUFBajY4RnpIQnVQNFZsM21vT0RNMTJRRHkwalNxT2p4cGJiaktRdC4yIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1733283995),
('LqWSArqn6eLv9me5RcpIYmWI0X399AAvDJjAFD4s', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicnlrcFMzdXBhc3hwYzd3TUFicklncHlhbEVHNzdESHFiSzlJZDI3QSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQxbHNUQWdkYjE5eElBQWo2OEZ6SEJ1UDRWbDNtb09ETTEyUUR5MGpTcU9qeHBiYmpLUXQuMiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1733491658);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$1lsTAgdb19xIAAj68FzHBuP4Vl3moODM12QDy0jSqOjxpbbjKQt.2', 'sUXmcYkNoDBvnaANRZ7HPUUjY9lxUkXmBdDTubtix4tlVpjjJSZA2OJ9szVt', '2024-11-13 06:04:43', '2024-11-13 06:04:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_keys_key_unique` (`key`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_slug_unique` (`slug`),
  ADD KEY `recipes_category_id_foreign` (`category_id`),
  ADD KEY `recipes_recipe_author_id_foreign` (`recipe_author_id`);

--
-- Indexes for table `recipe_authors`
--
ALTER TABLE `recipe_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_ingredients_recipe_id_foreign` (`recipe_id`),
  ADD KEY `recipe_ingredients_ingredient_id_foreign` (`ingredient_id`);

--
-- Indexes for table `recipe_photos`
--
ALTER TABLE `recipe_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_photos_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `recipe_tutorials`
--
ALTER TABLE `recipe_tutorials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_tutorials_recipe_id_foreign` (`recipe_id`);

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
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recipe_authors`
--
ALTER TABLE `recipe_authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recipe_photos`
--
ALTER TABLE `recipe_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recipe_tutorials`
--
ALTER TABLE `recipe_tutorials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipes_recipe_author_id_foreign` FOREIGN KEY (`recipe_author_id`) REFERENCES `recipe_authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD CONSTRAINT `recipe_ingredients_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_ingredients_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_photos`
--
ALTER TABLE `recipe_photos`
  ADD CONSTRAINT `recipe_photos_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_tutorials`
--
ALTER TABLE `recipe_tutorials`
  ADD CONSTRAINT `recipe_tutorials_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
