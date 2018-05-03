-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 10:16 PM
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
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `denumire` varchar(30) NOT NULL,
  `cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`denumire`, `cod`) VALUES
('Procesor', 1),
('Placa video', 2),
('Placa de sunet', 3),
('Placa de baza', 4),
('Memorie', 5),
('Antivirus', 6);

-- --------------------------------------------------------

--
-- Table structure for table `componenta`
--

CREATE TABLE `componenta` (
  `cod_produs` int(4) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `categorie` int(11) NOT NULL,
  `pret` int(5) DEFAULT NULL,
  `an_fabricatie` int(4) DEFAULT NULL,
  `garantie` int(2) DEFAULT NULL,
  `producator` varchar(50) DEFAULT NULL,
  `tara_provenienta` varchar(50) DEFAULT NULL,
  `stoc` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `componenta`
--

INSERT INTO `componenta` (`cod_produs`, `marca`, `categorie`, `pret`, `an_fabricatie`, `garantie`, `producator`, `tara_provenienta`, `stoc`) VALUES
(1001, 'Intel Core  3', 1, 480, 2016, 3, 'Intel Corporation', 'USA', 35),
(1002, 'AMD RYZEN 7', 1, 1500, 2017, 5, 'Advanced ', 'USA', 15),
(1003, 'AMD RYZEN 3', 1, 450, 2015, 2, 'Advanced Micro Devices', 'USA', 50),
(2001, 'Pulse Radeon RX 570', 2, 1600, 2017, 3, 'Sapphire Technology', 'Hong Kong', 20),
(2002, 'ROG STRIX RX 570', 2, 1600, 2016, 2, 'Asus', 'Taiwan', 25),
(2003, 'Gigabyte GeForce GTX 1050', 2, 1600, 2017, 5, 'Nvidia', 'USA', 55),
(3001, 'ASUS Xonar U3', 3, 170, 2014, 1, 'Asus', 'Taiwan', 20),
(3002, 'Creative Audigy RX', 3, 292, 2015, 1, 'Creative Technology', 'Singapore', 0),
(4001, 'MSI Z270 GAMING M5', 4, 1005, 2017, 1, 'Micro-Star International', 'Taiwan', 10),
(4002, 'ASUS PRIME Z270-K', 4, 640, 2016, 3, 'Asus', 'Taiwan', 5),
(5001, 'Corsair Vengeance LED Blue 32 GB', 5, 2100, 2018, 7, 'Corsair Components', 'USA', 5),
(5002, 'Kingston 8GB', 5, 300, 2014, 1, 'Kingston Technology Corporation', 'USA', 5),
(6001, 'Bitdefender GravityZone Business Security', 6, 1200, 2018, 1, 'Bitdifender', 'Romania', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `componenta`
--
ALTER TABLE `componenta`
  ADD PRIMARY KEY (`cod_produs`),
  ADD KEY `categorie_fk` (`categorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `componenta`
--
ALTER TABLE `componenta`
  MODIFY `cod_produs` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6002;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `componenta`
--
ALTER TABLE `componenta`
  ADD CONSTRAINT `categorie_fk` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
