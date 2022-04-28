-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Apr 2022 pada 03.39
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_testing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`categories_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Mudah Pecah', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(2, 'Tidak Mudah Pecah', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(3, 'Tidak Mudah Pecah', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(4, 'Mudah Pecah', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(5, 'Tidak Mudah Pecah', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(6, 'Mudah Pecah', '2022-04-27 00:16:36', '2022-04-27 00:16:36');

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
(5, '2022_04_26_065055_create_product_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `tokenable_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `name`, `token`, `abilities`, `tokenable_id`, `tokenable_type`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'token-name', '87cd9b1147c23c644564e36acbec9b484c823c03251ed49148f6f087ca2d2493', '[\"*\"]', '1', 'App\\Models\\User', NULL, '2022-04-26 23:31:27', '2022-04-26 23:31:27'),
(2, 'token-name', '0d2b6d10521ada271ad5fc12d8dee770fb9c24fd65afedfd16033449c8d47040', '[\"*\"]', '1', 'App\\Models\\User', '2022-04-27 01:11:31', '2022-04-26 23:48:19', '2022-04-27 01:11:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `productdetails`
--

CREATE TABLE `productdetails` (
  `productdetails_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `warna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `productdetails`
--

INSERT INTO `productdetails` (`productdetails_id`, `products_id`, `categories_id`, `warna`, `berat`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'nila', '71 Kg', 1, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(2, 1, 2, 'merah', '44 Kg', 6, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(3, 2, 1, 'merah marun', '54 Kg', 9, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(4, 1, 2, 'magenta', '34 Kg', 3, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(5, 4, 1, 'merah marun', '50 Kg', 8, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(6, 9, 1, 'zaitun', '66 Kg', 7, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(7, 8, 2, 'toska', '49 Kg', 3, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(8, 8, 2, 'nila', '80 Kg', 5, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(9, 7, 2, 'merah', '21 Kg', 7, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(10, 4, 2, 'jingga', '95 Kg', 8, '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(11, 7, 2, 'abu-abu', '58 Kg', 5, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(12, 2, 2, 'cokelat', '87 Kg', 10, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(13, 6, 2, 'toska', '00 Kg', 4, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(14, 3, 2, 'cokelat', '79 Kg', 4, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(15, 2, 2, 'biru dongker', '94 Kg', 10, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(16, 6, 1, 'emas', '68 Kg', 3, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(17, 9, 2, 'sepia', '54 Kg', 10, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(18, 2, 2, 'biru', '36 Kg', 3, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(19, 6, 2, 'hitam', '74 Kg', 5, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(20, 8, 1, 'violet', '87 Kg', 3, '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(21, 8, 2, 'jingga', '84 Kg', 2, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(22, 8, 1, 'violet', '11 Kg', 7, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(23, 7, 2, 'sepia', '97 Kg', 3, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(24, 4, 1, 'nila', '74 Kg', 2, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(25, 5, 1, 'cokelat', '61 Kg', 6, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(26, 7, 1, 'nila', '50 Kg', 7, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(27, 10, 2, 'teal', '99 Kg', 1, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(28, 7, 1, 'violet', '84 Kg', 8, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(29, 8, 2, 'emas', '00 Kg', 10, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(30, 5, 2, 'krem', '98 Kg', 5, '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(31, 6, 1, 'cokelat', '36 Kg', 7, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(32, 7, 2, 'toska', '50 Kg', 9, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(33, 3, 1, 'abu-abu', '83 Kg', 10, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(34, 7, 1, 'violet', '37 Kg', 1, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(35, 2, 2, 'merah jambu', '94 Kg', 6, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(36, 4, 2, 'biru', '37 Kg', 6, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(37, 3, 2, 'jingga', '42 Kg', 4, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(38, 1, 1, 'krem', '99 Kg', 10, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(39, 7, 2, 'biru dongker', '58 Kg', 2, '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(40, 8, 2, 'biru laut', '29 Kg', 10, '2022-04-27 00:16:36', '2022-04-27 00:16:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`products_id`, `categories_id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'PRODKH', 'quidem', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(2, 2, 'PRODEH', 'accusantium', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(3, 1, 'PRODYO', 'ipsa', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(4, 2, 'PRODUK', 'eaque', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(5, 2, 'PRODTC', 'magnam', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(6, 1, 'PRODAZ', 'ut', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(7, 2, 'PRODJM', 'et', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(8, 2, 'PRODFA', 'consequuntur', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(9, 1, 'PRODOK', 'molestias', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(10, 1, 'PRODEC', 'ad', '2022-04-26 23:08:49', '2022-04-26 23:08:49'),
(11, 2, 'PRODAI', 'voluptatibus', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(12, 2, 'PRODKG', 'sequi', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(13, 1, 'PRODPR', 'hic', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(14, 2, 'PRODRQ', 'veniam', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(15, 2, 'PRODFD', 'magni', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(16, 2, 'PRODMQ', 'commodi', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(17, 1, 'PRODUS', 'non', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(18, 2, 'PRODZW', 'qui', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(19, 2, 'PRODNH', 'ducimus', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(20, 2, 'PRODBH', 'natus', '2022-04-27 00:09:54', '2022-04-27 00:09:54'),
(21, 1, 'PRODAD', 'natus', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(22, 1, 'PRODTM', 'deleniti', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(23, 2, 'PRODQH', 'numquam', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(24, 1, 'PRODEK', 'minima', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(25, 2, 'PRODFH', 'ut', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(26, 2, 'PRODET', 'natus', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(27, 2, 'PRODOV', 'cum', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(28, 1, 'PRODTR', 'unde', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(29, 1, 'PRODEA', 'necessitatibus', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(30, 2, 'PRODDD', 'omnis', '2022-04-27 00:15:52', '2022-04-27 00:15:52'),
(31, 2, 'PRODAH', 'in', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(32, 1, 'PRODEM', 'consequuntur', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(33, 2, 'PRODJV', 'et', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(34, 2, 'PRODXA', 'exercitationem', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(35, 2, 'PRODBS', 'tenetur', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(36, 2, 'PRODWS', 'praesentium', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(37, 2, 'PRODAB', 'qui', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(38, 1, 'PRODNC', 'sunt', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(39, 1, 'PRODFD', 'repellendus', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(40, 1, 'PRODHQ', 'consequatur', '2022-04-27 00:16:17', '2022-04-27 00:16:17'),
(41, 1, 'PRODQD', 'ad', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(42, 1, 'PRODJX', 'quia', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(43, 1, 'PRODDR', 'ratione', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(44, 2, 'PRODZS', 'tempora', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(45, 1, 'PRODQL', 'voluptatem', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(46, 2, 'PRODBU', 'porro', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(47, 2, 'PRODEF', 'consectetur', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(48, 1, 'PRODOP', 'sint', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(49, 2, 'PRODBW', 'optio', '2022-04-27 00:16:36', '2022-04-27 00:16:36'),
(50, 2, 'PRODEZ', 'et', '2022-04-27 00:16:36', '2022-04-27 00:16:36');

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
(1, 'raihan', 'raihan.evanza20@gmail.com', NULL, 'raihanevanza1', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`);

--
-- Indeks untuk tabel `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`productdetails_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `productdetails_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
