-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2022 at 12:51 AM
-- Server version: 10.1.48-MariaDB-0+deb9u2
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bc`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_akun`
--

CREATE TABLE `t_akun` (
  `akunID` int(11) NOT NULL,
  `akunNIS` int(11) NOT NULL,
  `akunNama` text NOT NULL,
  `akunKelas` text NOT NULL,
  `akunProfil` text NOT NULL,
  `akunUsername` text NOT NULL,
  `akunPassword` text NOT NULL,
  `akunSebagai` text NOT NULL,
  `akunStatus` text NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_akun`
--

INSERT INTO `t_akun` (`akunID`, `akunNIS`, `akunNama`, `akunKelas`, `akunProfil`, `akunUsername`, `akunPassword`, `akunSebagai`, `akunStatus`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted`) VALUES
(1, 0, 'TIM IT SMK WAHIDIN', '', '', 'dev@sgara.id', '$2y$10$quF29S9nKhYttwVBSPcHUeH6fi8356pr2d8Flkfke/nFqXbp7XWHa', 'Developer', 'Aktif', 'system', '2021-11-11 03:51:32', NULL, NULL, 0),
(2, 0, 'EVA ROSDIANAH, SE', '', '', 'eva', '$2y$10$zvgMrZp2lMo/e6Aj..8y8.9hNVdUfQMMQ59P4vIdpYAhhaVx.rfm.', 'Kepala Toko', 'Aktif', 'TIM IT SMK WAHIDIN', '2021-11-15 07:35:08', NULL, NULL, 0),
(3, 0, 'WENDI MULYA SANDI', '', '', 'wendi', '$2y$10$71G309FCCW4hZlxqDfPXiOSOxYtvk/43XUst8APT0fRv17/V6AozW', 'Pengawas Kasir', 'Aktif', 'EVA ROSDIANAH, SE', '2021-11-15 07:35:39', NULL, NULL, 0),
(4, 171810416, 'Aji', 'XII RPL 2', 'Muhamad Aji Dian Permana', 'aji', '$2y$10$3NoFF5n8QPl6xbHdlozqROcnTAcXsIDJjVVH45IeDM.5Db3Rj3ye2', 'Kasir', 'Aktif', 'WENDI MULYA SANDI', '2021-11-16 03:07:26', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE `t_barang` (
  `barangID` int(11) NOT NULL,
  `kategoriID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `akunID` int(11) NOT NULL,
  `barangKode` text NOT NULL,
  `barangNama` text NOT NULL,
  `barangSlug` text NOT NULL,
  `barangMerk` text NOT NULL,
  `barangDeskripsi` text NOT NULL,
  `barangHBeli` int(11) NOT NULL,
  `barangHJual` int(11) NOT NULL,
  `barangStok` int(11) NOT NULL,
  `barangSMinimal` int(11) NOT NULL,
  `barangSMaximal` int(11) NOT NULL,
  `barangToko` int(11) NOT NULL,
  `barangSToko` int(11) NOT NULL,
  `barangMarket` text NOT NULL,
  `barangGambar` text,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`barangID`, `kategoriID`, `supplierID`, `akunID`, `barangKode`, `barangNama`, `barangSlug`, `barangMerk`, `barangDeskripsi`, `barangHBeli`, `barangHJual`, `barangStok`, `barangSMinimal`, `barangSMaximal`, `barangToko`, `barangSToko`, `barangMarket`, `barangGambar`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted`) VALUES
(1, 3, 5, 3, '1', 'ROK HITAM L', 'rok-hitam-l', '-', '-', 50000, 60000, 0, 10, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(2, 3, 13, 3, '1501006', 'Kaos kaki bola ', 'kaos-kaki-bola', '-', '-', 6000, 8000, 0, 5, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(3, 3, 13, 3, '2', 'MANSET HITAM', 'manset-hitam', '-', '-', 6500, 8000, 0, 5, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(4, 3, 13, 3, '3', 'MANSET PUTIH ', 'manset-putih', '-', '-', 6500, 8000, 0, 5, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(5, 3, 13, 3, '4', 'MANSET COKLAT', 'manset-coklat', '-', '-', 6500, 8000, 0, 5, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(6, 3, 13, 3, '8918889878929', 'KAOS KAKI PUTIH PANJANG ', 'kaos-kaki-putih-panjang', '-', '-', 8000, 10000, 0, 5, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(7, 3, 13, 3, '5', 'Kaos kaki hitam spandex', 'kaos-kaki-hitam-spandex', '-', '-', 6000, 7000, 0, 5, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(8, 3, 13, 3, '6', 'KAOS KAKI PUTIH ', 'kaos-kaki-putih', '-', '-', 4000, 6000, 0, 10, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(9, 3, 13, 3, '7', 'KAOS KAKI HITAM ', 'kaos-kaki-hitam', '-', '-', 4000, 6000, 0, 10, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(10, 3, 13, 3, '8', 'Kaos kaki hitam putih', 'kaos-kaki-hitam-putih', '-', '-', 4000, 6000, 0, 10, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(11, 3, 13, 3, '9', 'KAOS KAKI PUTIH PENDEK ', 'kaos-kaki-putih-pendek', '-', '-', 3000, 5000, 0, 10, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(12, 3, 13, 3, '10', 'SARUNG TANGAN LUPO', 'sarung-tangan-lupo', '-', '-', 10000, 15000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(13, 3, 13, 3, '11', 'KAOS KAKI WARNA', 'kaos-kaki-warna', '-', '-', 3000, 5000, 0, 10, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(14, 3, 13, 3, '12', 'KAOS KAKI COKLAT HITAM', 'kaos-kaki-coklat-hitam', '-', '-', 8000, 10000, 0, 10, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(15, 3, 13, 3, '13', 'KAOS HITAM HITAM MARWAH', 'kaos-hitam-hitam-marwah', '-', '-', 8000, 10000, 0, 10, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(16, 3, 13, 3, '14', 'SARUNG TANGAN WELLUP', 'sarung-tangan-wellup', '-', '-', 15000, 20000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(17, 6, 6, 3, '8991389308059', 'NOTA KONTAN', 'nota-kontan', '-', '-', 2100, 3000, 0, 5, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(18, 6, 6, 3, '8991389241592', 'BUKU SAMPUL KECIL 100 L', 'buku-sampul-kecil-100-l', '-', '-', 8000, 10000, 0, 5, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(19, 6, 6, 3, '8991389301685', 'BUKU SAMPUL BESAR 100 L', 'buku-sampul-besar-100-l', '-', '-', 14000, 16000, 0, 5, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(20, 6, 6, 3, '8991389241608', 'BUKU SAMPUL 200 L', 'buku-sampul-200-l', '-', '-', 18000, 20000, 0, 2, 10, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(21, 6, 6, 3, '8997014310121', 'BUKU SAMPUL PANJANG ', 'buku-sampul-panjang', '-', '-', 7000, 9000, 0, 2, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(22, 6, 6, 3, '8997023381334', 'PENGARIS 30 CM', 'pengaris-30-cm', '-', '-', 2500, 4000, 0, 10, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(23, 6, 6, 3, '8997205140025', 'BUKU GAMBAR A4', 'buku-gambar-a4', '-', '-', 2500, 3500, 0, 2, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(24, 6, 6, 3, '8991389220054', 'BUKU TULIS 58 L', 'buku-tulis-58-l', '-', '-', 3000, 4000, 0, 3, 30, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(25, 6, 6, 3, '501060049867', 'BUKU TULIS 38 L', 'buku-tulis-38-l', '-', '-', 2500, 3000, 0, 3, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(26, 6, 6, 3, '8997014310053', 'BUKU BOXY 42', 'buku-boxy-42', '-', '-', 3500, 5000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(27, 1, 0, 3, '8999908059901', 'My BABY FRESH FRUITY', 'my-baby-fresh-fruity', '-', '-', 9000, 11000, 0, 5, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(28, 1, 0, 3, '8999908734808', 'MARINA E COLLAGEN ASTA', 'marina-e-collagen-asta', '-', '-', 5500, 7000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(29, 1, 0, 3, '8999908214706', 'MARINA RICH MOISTURIZING 100 ML', 'marina-rich-moisturizing-100-ml', '-', '-', 3000, 4500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(30, 1, 0, 3, '8999908060709', 'MARINA NOURISHED & HEALTHY', 'marina-nourished-healthy', '-', '-', 3000, 4500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(31, 1, 0, 3, '8999908060600', 'MARINA PROTECTS &CARES 100 ML', 'marina-protects-cares-100-ml', '-', '-', 3000, 4500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(32, 1, 0, 3, '8999908060808', 'MARINA SMOOTH & GLOW 100 ML', 'marina-smooth-glow-100-ml', '-', '-', 3000, 4500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(33, 1, 0, 3, '8999999041854', 'MOLTO ALL IN 1 ', 'molto-all-in-1', '-', '-', 8000, 10000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(34, 1, 0, 3, '8999999050009', 'SUNLIGH 95 ML ', 'sunligh-95-ml', '-', '-', 1700, 2000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(35, 1, 0, 3, '8998866105125', 'MAMA LEMON 58 ML', 'mama-lemon-58-ml', '-', '-', 800, 1000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(36, 1, 0, 3, '8999999049034', 'SUNLIGHT 45 ML ', 'sunlight-45-ml', '-', '-', 800, 1000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(37, 1, 0, 3, '8991102104180', 'PAKET HEMAT FORMULA ', 'paket-hemat-formula', '-', '-', 4000, 5000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(38, 1, 0, 3, '8886030323904', 'PORSTEX', 'porstex', '-', '-', 14000, 16500, 0, 1, 6, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(39, 1, 0, 3, '8992747180201', 'VIXAL 800 ML ', 'vixal-800-ml', '-', '-', 14000, 16500, 0, 1, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(40, 1, 0, 3, '8998866802314', 'WPC 250 ML', 'wpc-250-ml', '-', '-', 5500, 7000, 0, 1, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(41, 1, 0, 3, '8999999500672', 'VIXAL 190 ML', 'vixal-190-ml', '-', '-', 4000, 5000, 0, 1, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(42, 1, 0, 3, '899886667971', 'SO KLINIK LANTAI 800 ML', 'so-klinik-lantai-800-ml', '-', '-', 8000, 10000, 0, 2, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(43, 1, 0, 3, '8998866679602', 'SO KLINIK LANTAI AROMATIC 800 ML', 'so-klinik-lantai-aromatic-800-ml', '-', '-', 8000, 10000, 0, 1, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(44, 1, 0, 3, '8998866803649', 'SO KLIN LIQUID 750 ML', 'so-klin-liquid-750-ml', '-', '-', 8000, 10000, 0, 2, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(45, 1, 0, 3, '8999999390198', 'SUNLIGHT 800 ML', 'sunlight-800-ml', '-', '-', 13000, 14500, 0, 2, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(46, 1, 0, 3, '8992931005228', 'TESSA 250 SHEET', 'tessa-250-sheet', '-', '-', 7000, 10000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(47, 4, 0, 3, '8995227500261', 'LARUTAN CAP KAKI TIGA 500 ML', 'larutan-cap-kaki-tiga-500-ml', '-', '-', 4500, 6500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(48, 4, 0, 3, '8995227500124', 'LARUTAN CAP KAKI TIGA 200 ML', 'larutan-cap-kaki-tiga-200-ml', '-', '-', 2500, 3500, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(49, 6, 6, 3, '101', 'STEROFORM ', 'steroform', '-', '-', 6000, 7000, 0, 5, 30, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(50, 6, 6, 3, '1204201844022', 'PENGARIS 20 CM ', 'pengaris-20-cm', '-', '-', 1500, 2500, 0, 5, 30, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(51, 6, 6, 3, '8997221490173', 'MAP COKLAT ', 'map-coklat', '-', '-', 800, 1000, 0, 10, 100, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(52, 6, 6, 3, '102', 'CUTTER KNIFE ', 'cutter-knife', '-', '-', 2000, 3000, 0, 5, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(53, 6, 6, 3, '8993988440031', 'PENGHAPUS PAPAN JOYKO', 'penghapus-papan-joyko', '-', '-', 7500, 10000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(54, 6, 6, 3, '2810000903', 'PAPAN TULIS CLEAR', 'papan-tulis-clear', '-', '-', 7500, 10000, 0, 3, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(55, 6, 6, 3, '103', 'GUNTING EML-855 TC', 'gunting-eml-855-tc', '-', '-', 3000, 4000, 0, 3, 20, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(56, 6, 0, 3, '8993988050001', 'TIPE X JOYKO', 'tipe-x-joyko', '-', '-', 3000, 4000, 0, 5, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(57, 6, 6, 3, '104', 'LEM INIKOL ', 'lem-inikol', '-', '-', 800, 1000, 0, 10, 48, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(58, 6, 6, 3, '8993988111009', 'LEM JOYKO GLUE STICK', 'lem-joyko-glue-stick', '-', '-', 2000, 3000, 0, 5, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(59, 6, 6, 3, '105', 'CUTTER KNIFE 046 XQ', 'cutter-knife-046-xq', '-', '-', 3000, 4000, 0, 5, 30, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(60, 6, 6, 3, '6921696180002', 'KENKO PUNCH ', 'kenko-punch', '-', '-', 6000, 7000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(61, 6, 6, 3, '106', 'PENGHAPUS JOYKO B40BL', 'penghapus-joyko-b40bl', '-', '-', 500, 1000, 0, 10, 80, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(62, 6, 0, 3, '8993988690054', 'PENGHAPUS JOYKO B40P', 'penghapus-joyko-b40p', '-', '-', 500, 1000, 0, 10, 80, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(63, 6, 6, 3, '107', 'PENGHAPUS JOYKO B40CO', 'penghapus-joyko-b40co', '-', '-', 500, 1000, 0, 10, 80, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(64, 3, 0, 3, '108', 'MASKER KAIN ', 'masker-kain', '-', '-', 3500, 5000, 0, 5, 50, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(65, 3, 0, 3, '109', 'SANDAL NIKE ', 'sandal-nike', '-', '-', 8000, 10000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(66, 6, 6, 3, '110', 'KERTAS LIPAT 12 X 12 CM', 'kertas-lipat-12-x-12-cm', '-', '-', 5000, 6000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(67, 6, 6, 3, '111', 'KERTAS LIPAT 14 X 14 CM', 'kertas-lipat-14-x-14-cm', '-', '-', 5500, 7000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(68, 6, 6, 3, '112', 'KERTAS LIPAT 16 X 16 CM ', 'kertas-lipat-16-x-16-cm', '-', '-', 6000, 8000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(69, 6, 6, 3, '113', 'KERTAS LIPAT 20 X 20 CM', 'kertas-lipat-20-x-20-cm', '-', '-', 7500, 9000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(70, 6, 6, 3, '4970430100518', 'ISI STEPLESS', 'isi-stepless', '-', '-', 800, 1500, 0, 5, 48, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(71, 1, 0, 3, '8999999509811', 'WIPOL 40 ML', 'wipol-40-ml', '-', '-', 800, 1000, 0, 5, 50, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(72, 1, 0, 3, '8998866611121', 'EKONOMI', 'ekonomi', '-', '-', 1800, 2000, 0, 2, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(73, 1, 0, 3, '8998866603829', 'EKONOMI 86 G', 'ekonomi-86-g', '-', '-', 800, 1000, 0, 2, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(74, 1, 0, 3, '8999908358707', 'CLAUDIA SAIDAH', 'claudia-saidah', '-', '-', 2000, 3000, 0, 2, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(75, 1, 0, 3, '8998866603881', 'So klin rose bouquet', 'so-klin-rose-bouquet', '-', '-', 400, 500, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(76, 1, 0, 3, '8998866603799', 'SO KLIN FLORAL LAVENDER ', 'so-klin-floral-lavender', '-', '-', 400, 500, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(77, 3, 0, 3, '114', 'JAS HUJAN HDPE', 'jas-hujan-hdpe', '-', '-', 6500, 10000, 0, 2, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(78, 3, 0, 3, '15', 'SEPATU PANTOPEL KARET', 'sepatu-pantopel-karet', '-', '-', 20000, 35000, 0, 5, 50, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(79, 3, 0, 3, '115', 'SANDAL BATIK ', 'sandal-batik', '-', '-', 15000, 20000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(80, 3, 0, 3, '116', 'SANDAL CONCERT', 'sandal-concert', '-', '-', 8000, 10000, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(81, 1, 0, 3, '8934868015031', 'REXONA DEO-LOTION', 'rexona-deo-lotion', '-', '-', 2000, 2500, 0, 3, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(82, 1, 0, 3, '8997021870151', 'FRESHCARE ROLL ON HOT 10 ML', 'freshcare-roll-on-hot-10-ml', '-', '-', 10000, 12500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(83, 1, 0, 3, '8997021870076', 'FRESHCARE SANDALWOOD 10 ML', 'freshcare-sandalwood-10-ml', '-', '-', 10000, 12500, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(84, 1, 0, 3, '8993176131239', 'VFRESH HOT 4 ML', 'vfresh-hot-4-ml', '-', '-', 7000, 8000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(85, 1, 0, 3, '8993176130911', 'VFRESH GREEN TEA 4 ML', 'vfresh-green-tea-4-ml', '-', '-', 7000, 8000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(86, 1, 0, 3, '8993176130898', 'VFRESH LAVENDER 4 ML', 'vfresh-lavender-4-ml', '-', '-', 7000, 8000, 0, 2, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(87, 2, 0, 3, '8998685011033', 'HEXOS', 'hexos', '-', '-', 2500, 1800, 0, 0, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(88, 3, 0, 3, '8993417440915', 'Samantha royal jelly ', 'samantha-royal-jelly', '-', '-', 3000, 5000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(89, 3, 0, 3, '8993417440946', 'SAMANTHA GINSENG ', 'samantha-ginseng', '-', '-', 3000, 5000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(90, 3, 0, 3, '8999999007768', 'Fair & lovely MULTY VITAMIN', 'fair-lovely-multy-vitamin', '-', '-', 3000, 4500, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(91, 3, 0, 3, '8999999055752', 'FAIR & LOVELY FACIAL FOAM', 'fair-lovely-facial-foam', '-', '-', 2000, 3000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(92, 1, 0, 3, '8934868015024', 'REXONA DEO-LOTION FREE SPIRIT', 'rexona-deo-lotion-free-spirit', '-', '-', 2500, 3500, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(93, 1, 0, 3, '8999999500610', 'DOVE DEO LOTION', 'dove-deo-lotion', '-', '-', 2000, 2500, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(94, 1, 0, 3, '8992964112320', 'Cotton 48 pcs', 'cotton-48-pcs', '-', '-', 3000, 5000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(95, 1, 0, 3, '8993417454417', 'SAMANTHA PROFESIONAL HAIR BLEACHING', 'samantha-profesional-hair-bleaching', '-', '-', 6000, 8000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(96, 1, 0, 3, '8993417457449', 'SAMANTHA S-4. 41', 'samantha-s-4.-41', '-', '-', 6000, 8000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(97, 1, 0, 3, '8993417457418', 'SAMANTHA S-2. 5', 'samantha-s-2.-5', '-', '-', 6000, 8000, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(98, 1, 0, 3, '8992856890428', 'SUMBER AYU ORCHID', 'sumber-ayu-orchid', '-', '-', 5000, 6500, 0, 0, 12, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(99, 2, 0, 3, '8998898101409', 'TOLAK ANGIN SIDO MUNCUL', 'tolak-angin-sido-muncul', '-', '-', 2500, 3500, 0, 0, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(100, 1, 0, 3, '8992745320289', 'STELLA APPLE FIESTA 200 ML', 'stella-apple-fiesta-200-ml', '-', '-', 11500, 14000, 0, 0, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(101, 1, 0, 3, '8992745320319', 'STELLA ROSE GARDEN 200 ML', 'stella-rose-garden-200-ml', '-', '-', 11500, 14000, 0, 0, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(102, 1, 0, 3, '8992745320302', 'STELLA LEMO FRESH 200 ML', 'stella-lemo-fresh-200-ml', '-', '-', 11500, 14000, 0, 0, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(103, 1, 0, 3, '8992745320326', 'STELLA ORANGE TWIST', 'stella-orange-twist', '-', '-', 11500, 14000, 0, 0, 24, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(104, 1, 0, 3, '8998000501868', 'PIC KNOCK', 'pic-knock', '-', '-', 2000, 3000, 0, 0, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(105, 6, 6, 3, '1112380010476', 'PULPEN QUANTUM QS 01', 'pulpen-quantum-qs-01', '-', '-', 800, 1000, 0, 0, 150, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(106, 6, 6, 3, '1100120010473', 'PULPEN STANDAR AE7 HITAM', 'pulpen-standar-ae7-hitam', '-', '-', 1500, 2000, 0, 0, 144, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(107, 2, 15, 3, '8996001355756', 'BENG BENG MAXX', 'beng-beng-maxx', '-', '-', 2000, 2500, 0, 1, 72, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(108, 2, 9, 3, '8996001354001', 'KALPA', 'kalpa', '-', '-', 1800, 2000, 0, 1, 72, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(109, 2, 9, 3, '8886001038011', 'BENG BENG FRIENSHIP', 'beng-beng-frienship', '-', '-', 1300, 1500, 0, 1, 72, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(110, 2, 9, 3, '8996001301364', 'ROMA KELAPA CREAM ', 'roma-kelapa-cream', '-', '-', 1800, 2000, 0, 5, 72, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(111, 4, 0, 3, '8996001600269', 'le mineral', 'le-mineral', '-', '-', 1600, 2500, 0, 24, 92, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(112, 4, 0, 3, '8996006852045', 'prima 600 ml', 'prima-600-ml', '-', '-', 1400, 2000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(113, 4, 0, 3, '8996006320117', 'teh botol 200 ml', 'teh-botol-200-ml', '-', '-', 1700, 2000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(114, 4, 0, 3, '8996006858016', 'Teh botol 350 ml ', 'teh-botol-350-ml', '-', '-', 3800, 4000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(115, 4, 0, 3, '8996006120014', 'fruit tea 200 ml ', 'fruit-tea-200-ml', '-', '-', 1800, 2000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(116, 4, 0, 3, '8994016008254', 'cleo 1500 ml', 'cleo-1500-ml', '-', '-', 5700, 6000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(117, 4, 0, 3, '8996001600146', 'teh pucuk 350 ml', 'teh-pucuk-350-ml', '-', '-', 2700, 3000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(118, 4, 0, 3, '8994016008223', 'cleo 250 ml', 'cleo-250-ml', '-', '-', 300, 500, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(119, 4, 0, 3, '8991102228008', 'teh gelas 250 ml', 'teh-gelas-250-ml', '-', '-', 2500, 3000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(120, 4, 0, 3, '8992752011408', 'vit 550 ml', 'vit-550-ml', '-', '-', 2500, 3000, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(121, 4, 0, 3, '8993298310147', 'mountoya', 'mountoya', '-', '-', 2300, 2500, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(122, 4, 0, 3, '8992752011095', 'vit 330 ml', 'vit-330-ml', '-', '-', 1200, 1500, 0, 24, 200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(123, 2, 0, 3, '8886013222408', 'French fries 2000 8g', 'french-fries-2000-8g', '-', '-', 800, 1000, 0, 5, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(124, 2, 0, 3, '89686596427', 'LAYS RASA RUMPUT LAUT ', 'lays-rasa-rumput-laut', '-', '-', 1800, 2000, 0, 5, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(125, 2, 0, 3, '8999999000165', 'TARO NET', 'taro-net', '-', '-', 800, 1000, 0, 0, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(126, 2, 9, 3, '8991001243034', 'TOP TRIPLE CHOC 9G', 'top-triple-choc-9g', '-', '-', 800, 1000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(127, 2, 9, 3, '8991001242570', 'TOP STAWBERRY 9G', 'top-stawberry-9g', '-', '-', 800, 1000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(128, 2, 0, 3, '8991001242983', 'TOP BLACK IN WHITE 9G', 'top-black-in-white-9g', '-', '-', 800, 1000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(129, 2, 0, 3, '8991001242013', 'TOP CHOCOLATE', 'top-chocolate', '-', '-', 800, 1000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(130, 2, 0, 3, '653314504025', 'KUSUKA CASSAVA CHIPS 20G', 'kusuka-cassava-chips-20g', '-', '-', 1800, 2000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(131, 2, 0, 3, '8888166994393', 'MONDE SNACK GOLD', 'monde-snack-gold', '-', '-', 1800, 2000, 0, 1, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(132, 2, 0, 3, '8993175551663', 'NABATI CARAMELRAMA ', 'nabati-caramelrama', '-', '-', 1800, 2000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(133, 2, 0, 3, '8986196000336', 'PIATTOS SAPI PANGGANG ', 'piattos-sapi-panggang', '-', '-', 800, 1000, 0, 1, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(134, 4, 0, 3, '8992761145033', 'FANTA 250 ML', 'fanta-250-ml', '-', '-', 2500, 3000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(135, 4, 0, 3, '8992761145019', 'COLA COLA 250 ML', 'cola-cola-250-ml', '-', '-', 2500, 3000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(136, 4, 0, 3, '8992761145026', 'SPRITE 250 ML', 'sprite-250-ml', '-', '-', 2500, 3000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(137, 4, 0, 3, '8992761002015', 'COLA COLA 390 ML', 'cola-cola-390-ml', '-', '-', 4000, 5000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(138, 4, 0, 3, '8992761002022', 'SPRITE 390 ML', 'sprite-390-ml', '-', '-', 4000, 5000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(139, 4, 0, 3, '8982761147143', 'SPRITE WATERLYMON', 'sprite-waterlymon', '-', '-', 4000, 5000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(140, 4, 0, 3, '8992761002039', 'FANTA 390 ML', 'fanta-390-ml', '-', '-', 4000, 5000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(141, 4, 0, 3, '8992761110048', 'MINUTE MAID JERUK 270 ML', 'minute-maid-jeruk-270-ml', '-', '-', 1800, 2000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(142, 4, 0, 3, '8992761110017', 'FRESTEA TEH MELATI 270 ML', 'frestea-teh-melati-270-ml', '-', '-', 1800, 2000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(143, 4, 0, 3, '8992775712931', 'MOUNTEA BIG 270 ML', 'mountea-big-270-ml', '-', '-', 1800, 2000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(144, 4, 0, 3, '8992761139018', 'ADES 600 ML ', 'ades-600-ml-', '-', '-', 1600, 2500, 0, 24, 240, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(145, 4, 0, 3, '8998866202725', 'MILKU 300 ML', 'milku-300-ml', '-', '-', 2800, 3000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(146, 4, 0, 3, '8992775717004', 'CLEVO CHOCOLATE 115 ML', 'clevo-chocolate-115-ml', '-', '-', 2500, 3000, 0, 6, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(147, 4, 0, 3, '8998866500708', 'FLORIDINA 350 ML', 'floridina-350-ml', '-', '-', 2500, 3000, 0, 12, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(148, 4, 0, 3, '8992775709061', 'GOODMOOD SUNTORY 450 ML', 'goodmood-suntory-450-ml', '-', '-', 3500, 4500, 0, 6, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(149, 4, 0, 3, '8995203300021', 'TIRTA GELAS 220  ML', 'tirta-gelas-220--ml', '-', '-', 400, 500, 0, 24, 1200, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(150, 4, 0, 3, '8991002122000', 'ABC CHOCO MALT COFFE 200 ML', 'abc-choco-malt-coffe-200-ml', '-', '-', 2500, 300, 0, 6, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(151, 4, 0, 3, '8991002122017', 'ABC KOPI SUSU 200ML', 'abc-kopi-susu-200ml', '-', '-', 2500, 3000, 0, 12, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(152, 4, 0, 3, '8992775406380', 'OKKY JELLY DRINK BIG 220 ML', 'okky-jelly-drink-big-220-ml', '-', '-', 1800, 2000, 0, 24, 72, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(153, 6, 0, 3, '8991389228234', 'KUITANSI 40 SHEET', 'kuitansi-40-sheet', '-', '-', 2500, 3000, 0, 12, 48, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(154, 4, 0, 3, '8992775406281', 'OKKY JELLY DRINK BIG STROBERI 220 ML', 'okky-jelly-drink-big-stroberi-220-ml', '-', '-', 1800, 2000, 0, 24, 74, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(155, 2, 0, 3, '8993110071508', 'SOSIS SO NICE', 'sosis-so-nice', '-', '-', 800, 1000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(156, 6, 0, 3, '8881389248034', 'NOTA KONTAN 25 SET', 'nota-kontan-25-set', '-', '-', 2500, 3000, 0, 12, 36, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(157, 2, 0, 3, '7622201436521', 'BISKUIT WONDERFULLS', 'biskuit-wonderfulls', '-', '-', 1800, 2000, 0, 24, 48, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(158, 2, 0, 3, '8996001304921', 'Slai olai', 'slai-olai', '-', '-', 800, 1000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(159, 2, 0, 3, '8896001355756', 'BENG BENG MAXX', 'beng-beng-maxx', '-', '-', 2000, 2500, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(160, 2, 0, 3, '8993175539210', 'NABATI NEXTAR BROWNIES COKLAT', 'nabati-nextar-brownies-coklat', '-', '-', 800, 1800, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(161, 2, 0, 3, '8993175538541', 'NEXTAR PINEAPPLE JAM', 'nextar-pineapple-jam', '-', '-', 1800, 2000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(162, 2, 0, 3, '8993175532891', 'NABATI', 'nabati', '-', '-', 800, 1000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(163, 2, 0, 3, '8994391135439', 'TRICKS ASIAN BBQ', 'tricks-asian-bbq', '-', '-', 800, 1000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(164, 2, 0, 3, '8993175531863', 'NABATI RASA KEJu', 'nabati-rasa-keju', '-', '-', 800, 1000, 0, 24, 120, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0),
(165, 4, 0, 3, '8996006855145', 'TEH BOTOL SOSRO 450ML', 'teh-botol-sosro-450ml', '-', '-', 4500, 5500, 0, 12, 60, 0, 0, 'Non Aktif', NULL, 'WENDI MULYA SANDI', '2021-12-16 07:30:23', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE `t_kategori` (
  `kategoriID` int(11) NOT NULL,
  `kategoriNama` text NOT NULL,
  `kategoriSlug` text NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`kategoriID`, `kategoriNama`, `kategoriSlug`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted`) VALUES
(1, 'NON FOOD', 'non-food', 'system', '2021-12-16 07:17:47', NULL, NULL, 0),
(2, 'FOOD', 'food', 'system', '2021-12-16 07:17:47', NULL, NULL, 0),
(3, 'FASHION', 'fashion', 'system', '2021-12-16 07:17:47', NULL, NULL, 0),
(4, 'DRINK', 'drink', 'system', '2021-12-16 07:17:47', NULL, NULL, 0),
(5, 'HMS', 'hms', 'system', '2021-12-16 07:17:47', NULL, NULL, 0),
(6, 'ATK', 'atk', 'system', '2021-12-16 07:17:47', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_kurir`
--

CREATE TABLE `t_kurir` (
  `kurirID` int(11) NOT NULL,
  `kurirNama` text NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_mutasi`
--

CREATE TABLE `t_mutasi` (
  `mutasiID` int(11) NOT NULL,
  `mutasiKeterangan` text NOT NULL,
  `mutasiNominal` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_pembayaran`
--

CREATE TABLE `t_pembayaran` (
  `pembayaranID` int(11) NOT NULL,
  `pembayaranDengan` text NOT NULL,
  `pembayaranNoTujuan` text NOT NULL,
  `pembayaranANTujuan` text NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_pembeli`
--

CREATE TABLE `t_pembeli` (
  `pembeliID` int(11) NOT NULL,
  `pembeliNama` text NOT NULL,
  `pembeliNoHP` text NOT NULL,
  `pembeliAlamat` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_pengeluaran_barang`
--

CREATE TABLE `t_pengeluaran_barang` (
  `pengeluaranBID` int(11) NOT NULL,
  `pengeluaranBTanggal` text NOT NULL,
  `akunID` int(11) NOT NULL,
  `barangID` int(11) NOT NULL,
  `pengeluaranBJumlah` int(11) NOT NULL,
  `pengeluaranBStatus` text NOT NULL,
  `pengeluaranBTipe` text NOT NULL,
  `pengeluaranBAlasan` text NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_so`
--

CREATE TABLE `t_so` (
  `soID` int(11) NOT NULL,
  `soTanggal` text NOT NULL,
  `soJam` text NOT NULL,
  `barangID` int(11) NOT NULL,
  `akunID` int(11) NOT NULL,
  `soJumlah` int(11) NOT NULL,
  `soSToko` int(11) NOT NULL,
  `soKurang` int(11) NOT NULL,
  `soStatus` text NOT NULL,
  `soAlasan` text,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_supplier`
--

CREATE TABLE `t_supplier` (
  `supplierID` int(11) NOT NULL,
  `supplierNama` text NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_supplier`
--

INSERT INTO `t_supplier` (`supplierID`, `supplierNama`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted`) VALUES
(1, 'PT. MY', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(2, 'UNILEVER', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(3, 'WALLS', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(4, 'WINGS', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(5, 'HMS', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(6, 'Toko AA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(7, 'TOKO NAM', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(8, 'ALFAMART', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(9, 'MYORA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(10, 'TOKO LATAZA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(11, 'PT. PRASTATA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(12, 'PT. PANJUNAN', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(13, 'TOKO ASTOP', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(14, 'TOKO ANYAR', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(15, 'PT. MYORA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(16, 'UD. MULYA BAROKAH ', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(17, 'UD.SUMBER DAYA MANDIRI ', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(18, 'PT. SAMYUAN MANUNGGAL PERKASA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(19, 'AQUA HOME SERVISE AD', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(20, 'PT. GRAHA PRIMA MENTARI', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(21, 'PT. ASIA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(22, 'ANEKA TUNGGAL', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(23, 'TA. PENGGUNG ', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(24, 'PT. SINAR NIAGA SEJAHTERA', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0),
(25, 'TOKO KURMAN', 'WENDI MULYA SANDI', '2021-12-16 07:19:23', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE `t_transaksi` (
  `transaksiID` int(11) NOT NULL,
  `transaksiTanggal` text NOT NULL,
  `transaksiJam` text NOT NULL,
  `akunID` int(11) NOT NULL,
  `transaksiAID` int(11) NOT NULL,
  `transaksiTotal` int(11) NOT NULL,
  `transaksiBayar` int(11) NOT NULL,
  `transaksiKembali` int(11) NOT NULL,
  `transaksiTipe` text NOT NULL,
  `transaksiStatus` text NOT NULL,
  `pembayaranID` int(11) NOT NULL,
  `pembeliID` int(11) NOT NULL,
  `transaksiBuktiBayar` text,
  `kurirID` int(11) NOT NULL,
  `transaksiOngkir` int(11) NOT NULL,
  `transaksiNoResi` text,
  `transaksiAlasan` text,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi_akun`
--

CREATE TABLE `t_transaksi_akun` (
  `transaksiAID` int(11) NOT NULL,
  `transaksiABuka` text NOT NULL,
  `transaksiABJam` text NOT NULL,
  `transaksiATutup` text,
  `transaksiATJam` text,
  `akunID` int(11) NOT NULL,
  `transaksiATutupOleh` int(11) NOT NULL,
  `transaksiATotal` int(11) NOT NULL,
  `transaksiAStatus` text NOT NULL,
  `transaksiAAlasan` text,
  `transaksiAVerif` int(11) NOT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT '''system''',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` text,
  `updated_date` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi_detail`
--

CREATE TABLE `t_transaksi_detail` (
  `transaksiDID` int(11) NOT NULL,
  `transaksiID` int(11) NOT NULL,
  `barangID` int(11) NOT NULL,
  `transaksiDJumlah` int(11) NOT NULL,
  `transaksiDHarga` int(11) NOT NULL,
  `transaksiDUntung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_akun`
--
ALTER TABLE `t_akun`
  ADD PRIMARY KEY (`akunID`);

--
-- Indexes for table `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`barangID`);

--
-- Indexes for table `t_kategori`
--
ALTER TABLE `t_kategori`
  ADD PRIMARY KEY (`kategoriID`);

--
-- Indexes for table `t_kurir`
--
ALTER TABLE `t_kurir`
  ADD PRIMARY KEY (`kurirID`);

--
-- Indexes for table `t_mutasi`
--
ALTER TABLE `t_mutasi`
  ADD PRIMARY KEY (`mutasiID`);

--
-- Indexes for table `t_pembayaran`
--
ALTER TABLE `t_pembayaran`
  ADD PRIMARY KEY (`pembayaranID`);

--
-- Indexes for table `t_pembeli`
--
ALTER TABLE `t_pembeli`
  ADD PRIMARY KEY (`pembeliID`);

--
-- Indexes for table `t_pengeluaran_barang`
--
ALTER TABLE `t_pengeluaran_barang`
  ADD PRIMARY KEY (`pengeluaranBID`);

--
-- Indexes for table `t_so`
--
ALTER TABLE `t_so`
  ADD PRIMARY KEY (`soID`);

--
-- Indexes for table `t_supplier`
--
ALTER TABLE `t_supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  ADD PRIMARY KEY (`transaksiID`);

--
-- Indexes for table `t_transaksi_akun`
--
ALTER TABLE `t_transaksi_akun`
  ADD PRIMARY KEY (`transaksiAID`);

--
-- Indexes for table `t_transaksi_detail`
--
ALTER TABLE `t_transaksi_detail`
  ADD PRIMARY KEY (`transaksiDID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_akun`
--
ALTER TABLE `t_akun`
  MODIFY `akunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `barangID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `t_kategori`
--
ALTER TABLE `t_kategori`
  MODIFY `kategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_kurir`
--
ALTER TABLE `t_kurir`
  MODIFY `kurirID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_mutasi`
--
ALTER TABLE `t_mutasi`
  MODIFY `mutasiID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pembayaran`
--
ALTER TABLE `t_pembayaran`
  MODIFY `pembayaranID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pembeli`
--
ALTER TABLE `t_pembeli`
  MODIFY `pembeliID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pengeluaran_barang`
--
ALTER TABLE `t_pengeluaran_barang`
  MODIFY `pengeluaranBID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_so`
--
ALTER TABLE `t_so`
  MODIFY `soID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_supplier`
--
ALTER TABLE `t_supplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  MODIFY `transaksiID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_transaksi_akun`
--
ALTER TABLE `t_transaksi_akun`
  MODIFY `transaksiAID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_transaksi_detail`
--
ALTER TABLE `t_transaksi_detail`
  MODIFY `transaksiDID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
