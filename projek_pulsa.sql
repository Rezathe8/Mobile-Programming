-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 06:53 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_pulsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'reza', 'reza@admin.com', '$2y$10$NaR5.9J36cHJ5h55qVdbheTx4AjL1SNXbv45ud0.V37tTjw5Q3tHK'),
(2, 'lukman', 'lukman@admin.com', '$2y$10$9GHw5JruesdP48RKslTGDeqmc1c/Wi43.omr/EuZH2dnqPQIPutnu'),
(3, 'supriyadi', 'supriyadi@admin.com', '$2y$10$10phypG0.i2TI39cSqLV.uPFyOLesWTFGTG.VLMVsR6ENyUVCcDM2'),
(4, 'Syauqie', 'Syauqie@admin.com', '$2y$10$cft7YE0Sa8Qm1xkwzT/x.eMDqP/0DueRsVu8bD7U6y8s.xLo.ENCm');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 2, 'kPHEQudBH2ZtomiKjO90b1olgQ6BmjbT3JUgGUCmMUZbkyhsasuzdHicenqYsCHgMJc0LWHviPzc78fxem8vOEHPoZAnyICB5Jqv'),
(2, 1, 'KdThzEPl3CMsUwJ8Zsldbdl7yhAVewOxvsQDuQFdBs5XGs0YSxB2NBLGHEdt285RjJ9kZtkyYOY4osB5RZh6BGvtDUsKLOAqc5x5'),
(3, 1, 'CXdMlAdjcIsYVWpdskjj3NSRSRJ0EXIHRarsnPorIXigbxsPgrWdBY88r5ulZdtBGTdYCCSPCgQfw2mvodmqwFkheu3oCe9bkeIJ'),
(4, 1, 'JSEziOyGFwgHrs2VwZVPoYKCuz3Q7KsTp8jwdYqlZlGb63DmO4gabj2G5UneDG5ydaEGyJF8cuZMortHuZvvKSTQ9yPhjkZ5Rv3d'),
(5, 1, 'LIV42l5cWQ31CkdFYREhxvnHsQEG757snRXEsAD8kVDeloxTNFCttlZqJ2LqZM3sV4JnOArnWTpqQqouFNXbOdKy9Jgdrw7MTKdZ'),
(6, 3, 'duPk8RaxOU6SBxzCxx8XaL4VCYsmy1jFsnNdqdQr9as5JjdZV581Lgt6H1LLGGOocAYyDWy6qVh9IFKmTdsoae8zrP4snVFF3not'),
(7, 1, 'smiN5s9Vda4aKqs4L3I2dpB3VdoUQyn5syTqBdn2II2P0ga6raxgqcY9tDdZZedUScKy6NaQKYMrJbmfXSdZ23iBBeByIvVzkJVS'),
(8, 3, 'ad0Om4auixnz8siBdd0SjGGBUVsmclIanmH23TZs8qqJ1TZCY1q7lb8gHRNsatdo1pMJcoAt93eldZJ3DaW96dTpUfr0RqDHEiR2'),
(9, 2, 'wNajVF4usOQHia0Sd238LL4lAXdy7f7b6SAqhH4n176tkHNMJ3CM0RrGrKbt0SEmCcDI3IGe3ZSwzrslTsli07Cxw6OmnGsYfLNJ'),
(10, 4, 'dsSe5BdbFEALdXhqHUI25syz9kseduredfPN82EYiZjWdjd6JDC6Xu67wLA3IuENMBSy01Dpl87u1ZYsmuWHzAlTQDEwfgiqERxA'),
(11, 1, 'gSddrQBsLcddScY38OsAhgBGpihcPGtuduodYKVeoPlV3bOgGFyl72np6x5JBbTXsww3UNltp0dFyZFkGex0ZdyyMEqQfRljstdN'),
(12, 1, 'd2x9Xo0U99oxJIdmsD9EhrxyEgyadbdCJslPGR2AojwMXgdGFp412bxspdA1vcdmKqM4B5dgR5V8094EyzGxB6PmjrxRjWmxhDVX');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'ax5', 'axis 5000', 6500),
(2, 'ax10', 'axis 10000', 12000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
