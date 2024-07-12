-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 01:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weightedproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `kandidats`
--

CREATE TABLE `kandidats` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kandidats`
--

INSERT INTO `kandidats` (`id`, `nama`, `jk`, `tanggal_lahir`, `alamat`, `telp`, `foto`, `created_at`, `updated_at`) VALUES
(8, 'Arya Wiguna', 'L', '2014-06-11', 'jl.halmahera 02', '085880888745', 'gambars/5zKpF0WUE98GwdNCHbCvqDevyvQypzjyFz1LJSc0.png', '2024-07-10 11:32:09', '2024-07-10 11:32:09'),
(9, 'Dari Mana', 'P', '2017-11-11', 'jl.halmahera 02', '085880888745', NULL, '2024-07-10 11:32:51', '2024-07-10 11:32:51'),
(10, 'Wiranto', 'L', '2010-06-11', 'jl.halmahera 02', '085880888745', NULL, '2024-07-10 11:33:18', '2024-07-10 11:33:18'),
(11, 'Subur', 'L', '2011-06-11', 'jl.halmahera 02', '085880888745', NULL, '2024-07-10 11:33:46', '2024-07-10 11:33:46'),
(12, 'Rodi Hadi', 'L', '2012-05-11', 'jl.halmahera 02', '085880888745', NULL, '2024-07-10 11:34:18', '2024-07-10 11:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `kriterias`
--

CREATE TABLE `kriterias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `atribut` enum('benefit','cost') NOT NULL,
  `bobot` double DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriterias`
--

INSERT INTO `kriterias` (`id`, `nama`, `atribut`, `bobot`, `keterangan`, `created_at`, `updated_at`) VALUES
(13, 'Banyaknya Transaksi', 'benefit', 4, NULL, '2024-07-10 11:35:17', '2024-07-10 11:35:17'),
(14, 'Total Nominal Transaksi', 'benefit', 4, NULL, '2024-07-10 11:35:35', '2024-07-10 11:35:35'),
(15, 'Penggunaan Kupon atau Poin Loyalitas', 'benefit', 3, NULL, '2024-07-10 11:35:56', '2024-07-10 11:35:56'),
(16, 'Pembelian Produk Spesifik', 'benefit', 5, NULL, '2024-07-10 11:36:16', '2024-07-10 11:36:16');

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
(3, '2020_04_16_083628_create_kriterias_table', 1),
(4, '2020_04_16_135639_create_kandidats_table', 1),
(5, '2020_04_16_183627_create_nilais_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(10) UNSIGNED NOT NULL,
  `kandidat_id` int(10) UNSIGNED NOT NULL,
  `kriteria_id` int(10) UNSIGNED NOT NULL,
  `nilai` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `kandidat_id`, `kriteria_id`, `nilai`, `created_at`, `updated_at`) VALUES
(88, 8, 13, 3, '2024-07-10 11:38:23', '2024-07-10 11:38:23'),
(89, 8, 14, 20, '2024-07-10 11:38:23', '2024-07-10 11:38:23'),
(90, 8, 15, 100, '2024-07-10 11:38:23', '2024-07-10 11:38:23'),
(91, 8, 16, 5, '2024-07-10 11:38:23', '2024-07-10 11:38:23'),
(93, 9, 13, 6, '2024-07-10 11:39:25', '2024-07-10 11:39:25'),
(94, 9, 14, 15, '2024-07-10 11:39:25', '2024-07-10 11:39:25'),
(95, 9, 15, 200, '2024-07-10 11:39:25', '2024-07-10 11:39:25'),
(96, 9, 16, 7, '2024-07-10 11:39:25', '2024-07-10 11:39:25'),
(98, 10, 13, 3, '2024-07-10 11:40:11', '2024-07-10 11:40:11'),
(99, 10, 14, 25, '2024-07-10 11:40:11', '2024-07-10 11:40:11'),
(100, 10, 15, 50, '2024-07-10 11:40:11', '2024-07-10 11:40:11'),
(101, 10, 16, 8, '2024-07-10 11:40:11', '2024-07-10 11:40:11'),
(103, 11, 13, 1, '2024-07-10 11:40:48', '2024-07-10 11:40:48'),
(104, 11, 14, 17, '2024-07-10 11:40:48', '2024-07-10 11:40:48'),
(105, 11, 15, 150, '2024-07-10 11:40:48', '2024-07-10 11:40:48'),
(106, 11, 16, 3, '2024-07-10 11:40:48', '2024-07-10 11:40:48'),
(108, 12, 13, 4, '2024-07-10 11:41:42', '2024-07-10 11:41:42'),
(109, 12, 14, 18, '2024-07-10 11:41:42', '2024-07-10 11:41:42'),
(110, 12, 15, 175, '2024-07-10 11:41:42', '2024-07-10 11:41:42'),
(111, 12, 16, 6, '2024-07-10 11:41:42', '2024-07-10 11:41:42');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `foto`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Site Administrator', 'admin@admin.com', 'gambars/QkungN7Ad1ypRPRzwz5UrWpXXcoPIjpupTR8fXpp.png', NULL, '$2y$10$9LnFgp.evxjrG0E21VSkIOrTT1lernxoymiTxANGP.ONQuI5Eltyu', '76HccyzzC3myaGcp9iNx5KUpJMPd4qrOKPolw35KWlfG9GArD2VKQ7KDttA8', '2021-03-09 04:22:28', '2024-07-06 21:40:42'),
(11, 'Dimas Tri Wahyudi', 'dimastriwahyudi68@gmail.com', NULL, NULL, '$2y$10$y2yc4uT6mfajuUJ.Mr.5EuxHESaqsditmhBw7DtKr8bLJwbtKosme', 'ApnP6ZmhjDu2yLQMdWxt5dG83V1WrDLeyEBmd5RJ4gFtKyEl6jj4D5Fh2gUc', '2024-07-11 05:15:47', '2024-07-11 05:15:47'),
(12, 'police', 'louisalouisa704@gmail.com', NULL, NULL, '$2y$10$hc61AHQs8wrn6PxZ0NN75unwPZmeQvIypBShgSO9lfnP3MMaG2XsO', NULL, '2024-07-12 03:28:27', '2024-07-12 03:28:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kandidats`
--
ALTER TABLE `kandidats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_kandidat_id_foreign` (`kandidat_id`),
  ADD KEY `nilai_kriteria_id_foreign` (`kriteria_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `kandidats`
--
ALTER TABLE `kandidats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kriterias`
--
ALTER TABLE `kriterias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_kandidat_id_foreign` FOREIGN KEY (`kandidat_id`) REFERENCES `kandidats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriterias` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
