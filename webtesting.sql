-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 01:54 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` varchar(10) NOT NULL,
  `Ho` varchar(100) NOT NULL,
  `Ten` varchar(30) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  `GioiTinh` char(1) NOT NULL,
  `DiaChi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(30) NOT NULL,
  `Ho` varchar(50) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` char(1) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DienThoai` varchar(12) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `LastLogin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Ho`, `Ten`, `NgaySinh`, `GioiTinh`, `Email`, `DienThoai`, `DiaChi`, `Password`, `LastLogin`) VALUES
('test', 'Nguyễn Văn', 'Test', '1999-09-03', '1', 'test@gmail.com', '012345678', 'test', '$2y$10$EkVstCC9S.BDcZ.LxIZZjOXUaUw1OuNE2FTVqhmmUPsLQK0s4Bf5G', '2021-11-02'),
('test1', 'Trần Văn', 'Test', '1990-10-10', '1', 'test@gmail.com', '0129491848', 'abc213', '$2y$10$tR6OarYv5bDlMm4MeMjururrZQ0hTL3hWM49pBSawc5dykAV0LXkG', '2021-09-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
