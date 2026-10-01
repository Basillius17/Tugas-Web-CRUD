-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2026 at 12:43 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_kopi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `created_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$FYSYWGTahj.fvLX5JlFRBO0CZD8Ja6blU9NqzR.i8u0b5cwx7c1QG', '2026-09-30 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT '0',
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `kategori`, `deskripsi`, `harga`, `stok`, `gambar`, `created_at`) VALUES
(1, 'Americano', 'Kopi Hitam', 'Nikmati kemurnian rasa kopi hitam tanpa ampas yang memberikan suntikan energi instan di setiap sesapan! Kopi Americano kami diracik khusus dari biji kopi pilihan untuk menghasilkan secangkir kopi hitam yang bold, bersih, dan tidak terlalu pekat. Sangat cocok bagi Anda yang menyukai kopi hitam dengan karakter rasa yang halus (smooth) tanpa tambahan gula maupun susu.', 13000.00, 50, '6abd31db073ef.jpg', '2026-09-30 08:00:00'),
(2, 'Cafe Latte', 'Kopi Susu', 'Manjakan hari Anda dengan keharmonisan rasa klasik yang lembut di setiap tegukan! Cafe Latte kami diracik dari perpaduan sempurna antara espresso shot yang intens dan steamed milk (susu hangat) berkualitas tinggi yang menghasilkan tekstur lembut (creamy) dengan lapisan busa mikro (micro-foam) yang halus di permukaannya.', 25000.00, 35, '6abd31618a585.jpg', '2026-09-30 08:00:00'),
(3, 'Biji Kopi Arabika', 'Biji Kopi', 'Hadirkan suasana kafe premium langsung ke rumah Anda! Biji Kopi Arabika ini dipanen dari perkebunan pilihan untuk menghasilkan cita rasa kopi yang kaya, halus, dan beraroma kuat. Cocok untuk menemani produktivitas harian Anda atau sekadar bersantai di pagi hari.', 85000.00, 25, '6abd2f431409b.jpg', '2026-09-30 08:00:00'),
(4, 'Biji Kopi Arabika Java Ijen Raung', 'Biji Kopi', 'Rasakan keunikan cita rasa salah satu kopi terbaik nusantara yang telah diakui dunia! Biji Kopi Arabika Java Ijen Raung ditanam di dataran tinggi Bondowoso pada ketinggian 900â€“1.500 mdpl. Nutrisi dari tanah volkanik yang kaya mineral di antara Gunung Ijen dan Gunung Raung memberikan kopi ini karakter rasa yang sangat bersih (clean), kompleks, dan tidak bisa ditemukan di daerah lain.', 80000.00, 20, '6abd32beb330b.jpg', '2026-09-30 16:03:10'),
(5, 'Biji Kopi Robusta Mandailing', 'Biji Kopi', 'Kopi Robusta Mandailing menawarkan karakter rasa yang bold, tebal, dan beraroma bumi (earthy) yang khas. Ditanam di kawasan dataran tinggi Mandailing, Sumatra Utara, biji kopi ini tumbuh subur di tanah volkanik yang kaya mineral, menghasilkan kualitas Fine Robusta dengan tingkat kepahitan yang halus dan ramah di lambung.', 125000.00, 17, '6abd33b039bb8.jpg', '2026-09-30 16:07:12'),
(6, 'Cappuccino', 'Kopi Susu', 'Nikmati perpaduan klasik yang legendaris antara kekuatan kopi sejati dan kelembutan susu! Kopi Cappuccino kami diracik dengan formula tradisional Italia yang presisi, mengombinasikan espresso shot yang kuat (bold), steamed milk, dan lapisan busa susu yang tebal (thick milk foam) dengan rasio berimbang 1:1:1.', 20000.00, 33, '6abd3431c6905.jpg', '2026-09-30 16:09:21'),
(7, 'Macchiato', 'Kopi Susu', 'Rasakan esensi kopi sejati dengan sentuhan tekstur yang unik! Dalam bahasa Italia, macchiato berarti \"ditandai\" atau \"dinodai\". Kopi Macchiato kami diracik khusus untuk Anda yang mendambakan kekuatan rasa espresso shot yang intens dan pekat, namun ingin melembutkannya sedikit dengan sentuhan (noda) busa susu hangat di bagian atasnya.', 30000.00, 40, '6abd3521b66cd.jpg', '2026-09-30 16:13:21'),
(8, 'Kopi V60', 'Kopi Hitam', 'Kopi V60 adalah metode seduh manual (manual brew) populer menggunakan filter kertas yang menghasilkan secangkir kopi hitam dengan karakter rasa jernih, ringan (clean body), dan keasaman buah yang cerah.', 33000.00, 45, '6abd37a1bdb10.jpg', '2026-09-30 16:18:22'),
(9, 'Espresso', 'Kopi Hitam', 'Rasakan fondasi utama dari segala kelezatan kopi dalam wujudnya yang paling murni! Kopi Espresso ini diracik dan disangrai secara khusus untuk menghasilkan ekstraksi espresso shot yang sempurna: pekat, berkarakter kuat (bold), dan menghasilkan lapisan crema (busa emas) yang tebal dan tahan lama.', 23000.00, 37, '6abd3752b0b28.jpg', '2026-09-30 16:22:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
