-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 12:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CID` char(9) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE` char(10) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `PASSWORD` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CID`, `FNAME`, `LNAME`, `EMAIL`, `ADDRESS`, `PHONE`, `STATUS`, `PASSWORD`) VALUES
('100000000', 'ayubo', 'smayen', 'famousmeyub@gmail.com', 'nabeul', '29966019', 9, '12345'),
('100000001', 'Shibo', 'Yao', 'sy123@njit.edu', '567 Central Ave, Harrison, NJ', '1233211234', 0, '1234'),
('100000002', 'Shaobo', 'Liu', 'sl638@njit.edu', '435 Forest St, Kearny, NJ', '2012732585', 1, NULL),
('100000003', 'Jeremy', 'Hui', 'jh123@njit.edu', 'Harrison', '1234567890', 0, '123'),
('100000004', 'test', 'T', 'test@gmail.com', 'NJIT', '6666777888', 0, '6666777888'),
('100000005', 'YanYi', 'Fong', 'yan@gmail.com', 'NY', '7778889999', 0, '17778889999'),
('100000006', 'Jim', 'Yao', 'jy@gmail.com', 'China', '1333333333', 2, '1234'),
('100000007', 'Dimitri', 'Theodo', 'dt@njit.edu', 'NJIT', '2222333444', 0, '2222333444'),
('100000008', 'Lilian', 'Kuo', 'lk@njit.edu', 'NJIT', '2222999900', 0, '222'),
('100000009', 'Yan', 'Shu', 'sy@ucsd.edu', 'Walmart', '2222333333', 0, '2222'),
('100000010', 'test21', 't', 'sy372', 'njit', '1111111111', 0, '123'),
('100000011', 'ShaoBo', 'Liu', 'sliu36@stevens.edu', '412 Central Ave, Newark', '2132421111', 0, '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
