-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Des 2022 pada 14.49
-- Versi server: 5.7.33
-- Versi PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(2, 'ac repair', 'fMfUiaaLQ3bQbwQP0OE7hB6jWAEE7pjKynAuNCfC.png', '2022-11-18 07:09:53', '2022-11-18 07:09:53'),
(3, 'beuty', 'iNDoiJD7hYac159msAwgX0ib5wE9i2ygo4iIsFQ3.png', '2022-11-18 07:10:10', '2022-11-18 07:10:10'),
(4, 'Appliance', 'storage/service/8lOUV8wsrYqzYBEHJJnYc9o0FVxHF6H2eZIoGaVw.png', '2022-11-19 00:03:18', '2022-11-19 00:03:18'),
(5, 'Cleaning', 'storage/service/siTLVcIzTiX4MCxEBvNQN3Z7QlmdQ1rK9JfNKAWa.png', '2022-11-19 00:03:35', '2022-11-19 00:03:35'),
(6, 'Painting', 'storage/service/W113bXTNxUmRUN4Q2YNRlF5SG7sNsOfcyK3Q259k.png', '2022-11-19 00:03:50', '2022-11-19 00:03:50'),
(7, 'Men\'s Salon', 'storage/service/uLUzG849oYcu3rSQq5tbFyvL05AvGg9lkxWrNW1i.png', '2022-11-19 00:04:01', '2022-11-19 00:04:01'),
(8, 'Electronics', 'storage/service/la139vAuiCmvQwlmuDqDpyWn826iBEhL5PYUa5ub.png', '2022-11-19 00:04:14', '2022-11-19 00:04:14'),
(9, 'Shifting', 'storage/service/imDO2LvJCh3no8XfvtB4EaEXwEY2YPoO6zmSrjha.png', '2022-11-19 00:04:25', '2022-11-19 00:04:25'),
(10, 'Plumbing', 'storage/service/KkaktwhOPQaeDRin3EWFY2KB4ivThbyDpBblSa9B.png', '2022-11-19 00:05:42', '2022-11-19 00:05:42'),
(11, 'Laundry', 'storage/service/HgQsX9X4TOchImrKwGGWMXNDtiirHkjcnOZLsZpO.png', '2022-11-19 00:05:52', '2022-11-19 00:05:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `service_id`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', '5', '2022-11-26 15:39:56', '2022-11-26 15:39:56'),
(2, 1, 1, 'keren cuk', '4', '2022-11-26 15:39:56', '2022-11-26 15:39:56'),
(3, 1, 2, 'mantap men', '5', '2022-11-26 15:39:56', '2022-11-26 15:39:56'),
(4, 1, 3, 'hhaha bersih', '5', '2022-11-26 15:39:56', '2022-11-26 15:39:56'),
(5, 1, 4, 'hhhhhhhhh', '5', '2022-12-13 21:53:17', '2022-12-13 21:53:17'),
(6, 4, 4, 'tes review', '5', '2022-12-14 04:57:15', '2022-12-14 04:57:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `service_id`, `created_at`, `updated_at`) VALUES
(32, 5, 2, '2022-11-27 03:42:00', '2022-11-27 03:42:00'),
(33, 5, 3, '2022-12-13 23:09:48', '2022-12-13 23:09:48'),
(34, 1, 5, '2022-12-13 23:36:41', '2022-12-13 23:36:41'),
(36, 2, 3, '2022-12-14 00:08:20', '2022-12-14 00:08:20'),
(51, 1, 4, '2022-12-14 02:53:09', '2022-12-14 02:53:09'),
(52, 1, 3, '2022-12-14 02:55:50', '2022-12-14 02:55:50'),
(53, 4, 2, '2022-12-14 03:00:35', '2022-12-14 03:00:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_18_051322_create_services_table', 2),
(6, '2022_11_18_051556_create_categories_table', 3),
(7, '2022_11_20_111311_create_favorites_table', 4),
(9, '2022_11_26_142256_create_permission_tables', 5),
(13, '2022_11_26_152741_create_comments_table', 6),
(14, '2022_11_27_122904_create_transactions_table', 7),
(15, '2022_12_03_081038_create_profiles_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(11, 'App\\Models\\User', 5, 'auth_token', 'baff2e994240a839a9a8b445783ad96018d148994e4da3ed80590cad0e036141', '[\"*\"]', '2022-12-13 23:09:48', NULL, '2022-11-26 06:47:55', '2022-12-13 23:09:48'),
(16, 'App\\Models\\User', 6, 'auth_token', '6bae5af10944466b7fc34d973a9c96982dddedb97d664dc96a60aae3d6b41887', '[\"*\"]', NULL, NULL, '2022-12-03 00:39:44', '2022-12-03 00:39:44'),
(24, 'App\\Models\\User', 2, 'auth_token', 'bc2de0fa96f869b5ae4ecd1ca44b9b37e6e452a3f7de0c2fe8bd7872c6a8c956', '[\"*\"]', '2022-12-07 23:17:15', NULL, '2022-12-04 22:38:41', '2022-12-07 23:17:15'),
(30, 'App\\Models\\User', 2, 'auth_token', 'c654f301840e0e28b39b56acbd2819e986286881223cef1b667ce530604f8303', '[\"*\"]', '2022-12-14 04:02:41', NULL, '2022-12-13 23:39:01', '2022-12-14 04:02:41'),
(41, 'App\\Models\\User', 1, 'auth_token', '228f7d5ad18ac86f1ebdf5cf3cd62a6dea64aebeed46c43e67dba8d8400c309c', '[\"*\"]', '2022-12-14 05:35:46', NULL, '2022-12-14 04:59:08', '2022-12-14 05:35:46'),
(42, 'App\\Models\\User', 2, 'auth_token', 'ba409c255ef7063d55fc553028cd0673542fc225940361500592160d1b8f1ae3', '[\"*\"]', '2022-12-14 05:30:57', NULL, '2022-12-14 05:07:45', '2022-12-14 05:30:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `birthday`, `phone`, `gender`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'storage/user/8x9sG9SyA7dNXv60rxVF8PWs2A2dWQNeRp2TSQA9.jpg', '17-12-2022', '085242476416', 'Male', 'Parepare Sulawesi Selatan', '2022-12-03 08:15:20', '2022-12-13 22:01:40'),
(2, 2, 'storage/user/gxgRVlSYO9e8xIpj8rPg1xP3ayt7hPFeFFhWmcLB.jpg', '03-12-2022', '1234567890', 'Male', 'qwertyuiopasdfghjkl', '2022-12-03 08:15:20', '2022-12-04 04:05:42'),
(3, 6, 'storage/user/1sosbTNFwVF8zVGxYCUUFdBZamVKPPREqPE7NOno.jpg', '03-12-2022', '0987654321', 'male', 'parepare lapadde mas', '2022-12-03 00:39:44', '2022-12-03 04:41:52'),
(5, 4, 'storage/user/XE28nBNR56DibMsl5piNUpDL7WVPFbx70n5g0pgY.jpg', '04-12-2022', '87654678', 'male', 'weyuiop', '2022-12-03 04:58:47', '2022-12-04 03:16:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-11-26 06:39:41', '2022-11-26 06:39:41'),
(2, 'user', 'web', '2022-11-26 06:39:46', '2022-11-26 06:39:46'),
(3, 'seller', 'web', '2022-11-26 06:39:53', '2022-11-26 06:39:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `user_id`, `image`, `title`, `category_id`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'storage/service/nVwejUUcjRorgozNbJSIiUNY9Aiej5gpplnfdhKd.jpg', 'cuci berascuci beras', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', '15000', '2022-11-18 22:48:06', '2022-11-18 22:48:06'),
(2, 1, 'storage/service/ZpsFR1RuPfppP3URM2a7jVQWMaBF3hT2jgLRMZxA.jpg', 'cuci baju', '2', 'descriptionssss', '15000', '2022-11-18 22:48:47', '2022-11-18 22:48:47'),
(3, 2, 'storage/service/m21PBhsOCXsEh8XRAF1y8YOFEjqwdqjlE312u1a3.jpg', 'cuci celana', '2', 'descriptionssss', '25000', '2022-11-18 22:49:07', '2022-11-18 22:49:07'),
(4, 1, 'storage/service/tp35AE5OnM6jZB0BRfc9PY9nG2jXINxMuv3n5Zox.jpg', 'cleaning service', '3', 'descriptionssss', '25000', '2022-11-18 22:49:23', '2022-11-18 22:49:23'),
(5, 4, 'storage/service/rXTkiaVkg0vMonNuFIVJB7q4BQOPIPeNwtGehj7P.jpg', 'AC Repair', '3', 'descriptionssss', '25000', '2022-11-18 22:49:50', '2022-11-18 22:49:50'),
(6, 4, 'storage/service/PL6vJtT4DCb21McpITuHlHKSUAKl80MXZBzx7jmS.jpg', 'Buang AC', '3', 'descriptionssss', '27000', '2022-11-18 22:50:09', '2022-11-18 22:50:09'),
(7, 5, 'storage/service/DHLovqcxr9u8aLs6VwfQZGPoyGQLH2x8ExtezPxE.jpg', 'House cleaning', '4', 'descriptionssss', '27000', '2022-11-19 00:08:41', '2022-11-19 00:08:41'),
(8, 1, 'storage/service/QF9KIVadNbQ5ZcNU6o53UygXDXpLBOJXTmJV16hb.jpg', 'Car cleaning', '10', 'descriptionssss', '27000', '2022-11-19 00:09:18', '2022-11-19 00:09:18'),
(9, 1, 'storage/service/dUfCk37kbVwR8r7i3hH8ZUhkMO0JeQk5eYUTGnhj.jpg', 'Car repaint', '8', 'descriptionssss', '27000', '2022-11-19 00:09:35', '2022-11-19 00:09:35'),
(10, 2, 'storage/service/d1u5YOUvpw0Yf9JdWdG6gUtFT2pCIc6d59R5OFpN.jpg', 'Painting house', '11', 'descriptionssss', '27000', '2022-11-19 00:09:53', '2022-11-19 00:09:53'),
(11, 4, 'storage/service/GfSGzSdqikij9lTwsbt2dnkYWzlBPCqRDKA7p8JC.jpg', 'Loundry Service', '6', 'descriptionssss', '27000', '2022-11-19 00:10:09', '2022-11-19 00:10:09'),
(12, 5, 'storage/service/c8wvX9g7kRGCa3GXPtQfQXgUzQDz9ETdm2LidVSZ.jpg', 'Applience Service', '5', 'descriptionssss', '27000', '2022-11-19 00:10:19', '2022-11-19 00:10:19'),
(13, 5, 'storage/service/7Iug9WBS4j4VR8L2yjMch0IebDGAv57iOnXPRaSR.jpg', 'Plumbing Repaint', '8', 'descriptionssss', '27000', '2022-11-19 00:10:32', '2022-11-19 00:10:32'),
(14, 4, 'storage/service/j2o0gzpqzR2SYFy6fyLexxM8XW1qtqZFI5Av2RJW.jpg', 'House shifting', '7', 'descriptionssss', '27000', '2022-11-19 00:10:58', '2022-11-19 00:10:58'),
(15, 1, 'storage/service/xjQfkc285cJLJQGpUQpCjg3RrHOSs0NAnDEl4zY1.jpg', 'Test response', '3', 'bongkar ac bosku', '15000', '2022-11-27 22:38:59', '2022-11-27 22:38:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `penjual_id` int(10) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `invoice`, `service_id`, `category_id`, `user_id`, `penjual_id`, `date`, `time`, `hours`, `description`, `address`, `amount`, `status`, `confirm`, `created_at`, `updated_at`) VALUES
(1, 'INVOICE-20221201-0001', 4, 3, 1, 0, '2022-12-02 00:00:00.000', '10:00', 1, 'qwer', 'qwer', '50000', 'Completed', 'Completed', '2022-11-30 21:00:37', '2022-12-13 21:53:17'),
(2, 'INVOICE-20221201-0002', 4, 3, 2, 0, '2022-12-02 00:00:00.000', '10:00', 1, 'jjj', 'vvvv', '50000', 'Cancelled', NULL, '2022-11-30 21:00:37', '2022-11-30 21:00:37'),
(3, 'INVOICE-20221201-0003', 4, 3, 1, 0, '2022-12-02 00:00:00.000', '10:00', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled', 'vvvv', '50000', 'Completed', 'Completed', '2022-11-30 21:00:37', '2022-11-30 21:00:37'),
(4, 'INVOICE-20221201-0004', 4, 3, 1, 0, '2022-12-03 00:00:00.000', '10:00', 1, 'jjj', 'vvvv', '50000', 'Cancelled', NULL, '2022-11-30 21:00:37', '2022-12-02 22:49:47'),
(5, 'INVOICE-20221201-0005', 5, 3, 2, 0, '2022-12-03 00:00:00.000', '10:00', 1, 'jjj', 'vvvv', '50000', 'Upcoming', NULL, '2022-11-30 21:00:37', '2022-12-01 23:00:33'),
(8, 'INVOICE-20221214-0006', 4, 3, 4, 1, '2022-12-15 00:00:00.000', '10:00', 2, 'ac tidak dingin', 'lapadde mas', '50000', 'Completed', 'Completed', '2022-12-14 03:25:21', '2022-12-14 04:57:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fajar', 'fajar@gmail.com', NULL, '$2y$10$I6AWU0BcWVXHO6lr.zLApePl.5d.u2GA8BlGSpzhWX32eskBrV0zq', NULL, '2022-11-17 21:06:29', '2022-11-17 21:06:29'),
(2, 'jarr', 'jar@gmail.com', NULL, '$2y$10$PX5HG1t4kRAVf9OpT8uOq.fXdyGBbsUHSdYQjzgWRMvc63ag0zBV2', NULL, '2022-11-20 05:16:21', '2022-11-20 05:16:21'),
(4, 'Fajar Yasin', 'aku@gmail.com', NULL, '$2y$10$tT9r1cSSKH.wzgD5klwPLOQvn7woKqQgTnVpgq0YY2V08HoSUMb/C', NULL, '2022-11-20 06:05:06', '2022-11-20 06:05:06'),
(5, 'putra', 'putra@gmail.com', NULL, '$2y$10$tWLWxsYtB8uxYP0Nk2Z/6eOpUWfVsG3C9Qp8mKdbHnL6ZgEVm5cFu', NULL, '2022-11-26 06:47:55', '2022-11-26 06:47:55'),
(6, 'putri', 'putri@gmail.com', NULL, '$2y$10$x38BVqlUgyhxbtJ0bQFq9OJFBu51VQbs.UqnVv5g/5uqMlwe9d7Gy', NULL, '2022-12-03 00:39:44', '2022-12-03 00:39:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
