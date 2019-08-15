-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2019 at 03:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_grp_google_place`
--

CREATE TABLE `wp_grp_google_place` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `user_ratings_total` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_grp_google_place`
--

INSERT INTO `wp_grp_google_place` (`id`, `place_id`, `name`, `photo`, `icon`, `address`, `rating`, `user_ratings_total`, `url`, `website`, `updated`) VALUES
(1, 'ChIJS8-XRluMaS4R-VAjprzSfyw', 'Prestisa | Toko Bunga', NULL, 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png', 'Perumahan Inkopol, Jl. Merak V No.5A, Jakasampurna, Kec. Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 4.8, 1185, 'https://maps.google.com/?cid=3206513167394099449', 'http://www.prestisa.com/', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_grp_google_place`
--
ALTER TABLE `wp_grp_google_place`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grp_place_id` (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_grp_google_place`
--
ALTER TABLE `wp_grp_google_place`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
