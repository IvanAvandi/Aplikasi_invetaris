-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 04:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekuts_pbo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `merek` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `kategori_barang`, `merek`) VALUES
('001', 'Laptop', 'Elektronik', 'Lenovo'),
('002', 'Handphone', 'Elektronik', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventariskeluar`
--

CREATE TABLE `tbl_inventariskeluar` (
  `kd_inventaris_keluar` char(15) NOT NULL,
  `kd_inventaris_masuk` char(15) NOT NULL,
  `jumlah` double NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `id_user` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inventariskeluar`
--

INSERT INTO `tbl_inventariskeluar` (`kd_inventaris_keluar`, `kd_inventaris_masuk`, `jumlah`, `tanggal_keluar`, `id_user`) VALUES
('OUT0001', 'IN0001', 3, '2024-11-22', '1111'),
('OUT0002', 'IN0002', 5, '2024-11-22', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventarismasuk`
--

CREATE TABLE `tbl_inventarismasuk` (
  `kd_inventaris_masuk` char(15) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `jumlah` float NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `id_user` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inventarismasuk`
--

INSERT INTO `tbl_inventarismasuk` (`kd_inventaris_masuk`, `kd_barang`, `jumlah`, `tanggal_masuk`, `id_user`) VALUES
('IN0001', '001', 6, '2024-11-15', '1111'),
('IN0002', '001', 7, '2024-11-22', '1111'),
('IN0003', '002', 6, '2024-11-22', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `jenis_kelamin`, `alamat`) VALUES
('1111', 'admin', 'admin', 'Ivan Avandi', 'Laki - laki', 'Banjarbaru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_inventariskeluar`
--
ALTER TABLE `tbl_inventariskeluar`
  ADD PRIMARY KEY (`kd_inventaris_keluar`);

--
-- Indexes for table `tbl_inventarismasuk`
--
ALTER TABLE `tbl_inventarismasuk`
  ADD PRIMARY KEY (`kd_inventaris_masuk`,`kd_barang`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
