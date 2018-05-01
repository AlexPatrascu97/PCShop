-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 12:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `componenta`
--

CREATE TABLE `componenta` (
  `cod_produs` int(4) NOT NULL,
  `pret` int(5) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `an_fabricatie` int(4) DEFAULT NULL,
  `garantie` int(2) DEFAULT NULL,
  `producator` varchar(50) DEFAULT NULL,
  `tara_provenienta` varchar(50) DEFAULT NULL,
  `stoc` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `componenta`
--

INSERT INTO `componenta` (`cod_produs`, `pret`, `marca`, `an_fabricatie`, `garantie`, `producator`, `tara_provenienta`, `stoc`) VALUES
(1001, 480, 'Intel Core  3', 2016, 3, 'Intel Corporation', 'USA', 35),
(1002, 1500, 'AMD RYZEN 7', 2017, 5, 'Advanced ', 'USA', 15),
(1003, 450, 'AMD RYZEN 3', 2015, 2, 'Advanced Micro Devices', 'USA', 50),
(2001, 1600, 'Pulse Radeon RX 570', 2017, 3, 'Sapphire Technology', 'Hong Kong', 20),
(2002, 1600, 'ROG STRIX RX 570', 2016, 2, 'Asus', 'Taiwan', 25),
(2003, 1600, 'Gigabyte GeForce GTX 1050', 2017, 5, 'Nvidia', 'USA', 55),
(3001, 170, 'ASUS Xonar U3', 2014, 1, 'Asus', 'Taiwan', 20),
(3002, 292, 'Creative Audigy RX', 2015, 1, 'Creative Technology', 'Singapore', 0),
(4001, 1005, 'MSI Z270 GAMING M5', 2017, 1, 'Micro-Star International', 'Taiwan', 10),
(4002, 640, 'ASUS PRIME Z270-K', 2016, 3, 'Asus', 'Taiwan', 5),
(5001, 2100, 'Corsair Vengeance LED Blue 32 GB', 2018, 7, 'Corsair Components', 'USA', 5),
(5002, 300, 'Kingston 8GB', 2014, 1, 'Kingston Technology Corporation', 'USA', 5),
(6001, 1200, 'Bitdefender GravityZone Business Security', 2018, 1, 'Bitdifender', 'Romania', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `componenta`
--
ALTER TABLE `componenta`
  ADD PRIMARY KEY (`cod_produs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `componenta`
--
ALTER TABLE `componenta`
  MODIFY `cod_produs` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6002;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
