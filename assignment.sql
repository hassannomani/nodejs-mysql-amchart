-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 12:20 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(3) NOT NULL,
  `machine_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `machine_name`) VALUES
(1, 'Machine-1'),
(2, 'Machine-2'),
(3, 'Machine-3'),
(4, 'Machine-4'),
(5, 'Machine-5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine_data`
--

CREATE TABLE `tbl_machine_data` (
  `id` int(3) NOT NULL,
  `machine_id` int(3) NOT NULL,
  `country` varchar(15) NOT NULL,
  `price` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_machine_data`
--

INSERT INTO `tbl_machine_data` (`id`, `machine_id`, `country`, `price`) VALUES
(1, 1, 'Germany', 2000),
(2, 1, 'Italy', 3000),
(3, 2, 'France', 2500),
(4, 3, 'Russia', 3000),
(5, 3, 'Germany', 1000),
(6, 5, 'China', 1500),
(7, 4, 'India', 500),
(8, 4, 'Pakistan', 2500),
(9, 3, 'Saudi Arabia', 4000),
(10, 2, 'Japan', 3000),
(11, 4, 'Japan', 3500),
(12, 2, 'France', 3500),
(13, 1, 'Russia', 4500),
(14, 1, 'Belgium', 2000),
(15, 3, 'Italy', 1000),
(16, 5, 'Italy', 1800),
(17, 4, 'Belgium', 2500),
(18, 5, 'Pakistan', 3500),
(19, 4, 'China', 500),
(20, 1, 'China', 3500),
(21, 2, 'China', 500),
(22, 4, 'Thailand', 2500),
(23, 2, 'Thailand', 2500),
(24, 1, 'Thailand', 3500),
(25, 1, 'Saudi Arabia', 3500),
(26, 4, 'Saudi Arabia', 3500),
(27, 5, 'Saudi Arabia', 3500),
(28, 5, 'Japan', 7500),
(29, 2, 'Japan', 2500),
(30, 5, 'Germany', 1500),
(31, 4, 'Germany', 5500),
(32, 4, 'France', 3500),
(33, 4, 'France', 3500),
(34, 4, 'Iran', 4500),
(35, 1, 'Iran', 3500),
(36, 2, 'Iran', 5000),
(37, 1, 'Iran', 3000),
(38, 1, 'Iran', 4000),
(39, 1, 'Portugal', 1000),
(40, 2, 'Portugal', 1000),
(41, 3, 'Portugal', 4000),
(42, 4, 'Portugal', 3000),
(43, 4, 'Pakistan', 1800),
(44, 1, 'Pakistan', 2000),
(45, 2, 'Pakistan', 3000),
(46, 5, 'India', 3000),
(47, 2, 'India', 3000),
(48, 3, 'Germany', 3000),
(49, 5, 'Belgium', 3000),
(50, 2, 'Iran', 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_machine_data`
--
ALTER TABLE `tbl_machine_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_machine_data`
--
ALTER TABLE `tbl_machine_data`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
