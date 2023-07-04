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
-- Table structure for table `accessoire`
--

CREATE TABLE `accessoire` (
  `id` int(11) NOT NULL,
  `Marque_du_accessoire` varchar(250) NOT NULL,
  `Marque_du_téléphone` varchar(250) NOT NULL,
  `s1` timestamp NULL DEFAULT current_timestamp(),
  `s2` timestamp NULL DEFAULT current_timestamp(),
  `s3` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appears_in`
--

CREATE TABLE `appears_in` (
  `CARTID` char(10) NOT NULL,
  `PID` char(9) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICESOLD` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appears_in`
--

INSERT INTO `appears_in` (`CARTID`, `PID`, `QUANTITY`, `PRICESOLD`) VALUES
('1000000000', '100000001', 1, '999.99'),
('1000000002', '100000002', 4, '899.99'),
('1000000003', '100000000', 1, '1299.99'),
('1000000003', '100000001', 2, '999.99'),
('1000000003', '100000002', 3, '899.99'),
('1000000004', '100000001', 3, '999.99'),
('1000000004', '100000002', 1, '899.99'),
('1000000005', '100000001', 9, '999.99'),
('1000000005', '100000002', 8, '899.99'),
('1000000006', '100000002', 6, '899.99'),
('1000000007', '111122221', 1, '289.99'),
('1000000009', '999999999', 1, '39.99'),
('1000000010', '111122221', 2, '299.99'),
('1000000010', '999999999', 2, '39.99'),
('1000000011', '244444444', 1, '4999.99'),
('1000000012', '244444444', 1, '4999.99'),
('1000000015', '100000001', 2, '999.99'),
('1000000016', '111122221', 2, '289.99');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CARTID` char(10) NOT NULL,
  `CID` char(9) NOT NULL,
  `SANAME` varchar(15) DEFAULT NULL,
  `CCNUMBER` varchar(16) DEFAULT NULL,
  `TSTATUS` int(11) NOT NULL,
  `TDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CARTID`, `CID`, `SANAME`, `CCNUMBER`, `TSTATUS`, `TDATE`) VALUES
('1000000000', '100000001', 'old', '2345234523452345', 1, '2018-04-22'),
('1000000002', '100000001', NULL, NULL, 0, '2018-04-22'),
('1000000003', '100000003', 'NYU', '1688168816881688', 2, '2018-04-28'),
('1000000004', '100000003', 'NYU', '8888999988889999', 1, '2018-04-28'),
('1000000005', '100000006', 'laocheng', '123412341234', 1, '2018-04-28'),
('1000000006', '100000006', 'home', '432143214321', 3, '2018-04-28'),
('1000000007', '100000006', 'yizhong', '123412341234', 1, '2018-05-02'),
('1000000008', '100000007', NULL, NULL, 0, '2018-04-28'),
('1000000009', '100000003', 'Harrison330', '8888999988889999', 1, '2018-04-29'),
('1000000010', '100000003', 'Harrison330', '777888777888', 4, '2018-04-29'),
('1000000011', '100000006', 'Home', '123412341234', 2, '2018-05-02'),
('1000000012', '100000006', 'yizhong', '123412341234', 1, '2018-05-03'),
('1000000013', '100000003', NULL, NULL, 0, '2018-05-03'),
('1000000014', '100000010', NULL, NULL, 0, '2018-05-03'),
('1000000015', '100000006', 'Home', '123123', 1, '2018-05-03'),
('1000000016', '100000006', NULL, NULL, 0, '2018-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `PID` char(9) NOT NULL,
  `CPUTYPE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`PID`, `CPUTYPE`) VALUES
('233333333', 'i7'),
('244444444', 'i7');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `CARDNUMBER` varchar(16) NOT NULL,
  `SECNUMBER` varchar(5) DEFAULT NULL,
  `OWNERNAME` varchar(15) NOT NULL,
  `CARTYPE` varchar(6) DEFAULT NULL,
  `BILLINGADDRESS` varchar(30) NOT NULL,
  `EXPDATE` date NOT NULL,
  `STORED_CARD` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`CARDNUMBER`, `SECNUMBER`, `OWNERNAME`, `CARTYPE`, `BILLINGADDRESS`, `EXPDATE`, `STORED_CARD`) VALUES
('123123', '123', 'shibo', 'master', 'njit', '2020-02-02', 0),
('123412341234', '1234', 'Jim', 'master', 'China', '2020-02-02', 1),
('1234123412341234', '1234', 'Shibo', 'Visa', 'Nutley NJ', '2020-01-01', 1),
('1688168816881688', '168', 'Jeremy Hui', 'ame', 'Harrison NJ', '2021-08-08', 1),
('2345234523452345', '2345', 'Yao', 'master', 'Stony Brook, NY', '2019-12-12', 1),
('432143214321', '4321', 'Shibo', 'union', 'Tianjin', '2222-01-01', 0),
('456456456456', '456', 'Jeremy', 'ame', 'Harrison NJ', '2019-01-01', 0),
('666777888999', '6789', 'Dimitri', 'master', 'NJIT', '2020-09-09', 1),
('777888777888', '7878', 'Jeremy', 'visa', 'Harrison', '2020-09-09', 0),
('8888999988889999', '8899', 'Jeremy Hui', 'master', 'Harrison NJ', '2020-09-09', 1),
('999888777666', '9876', 'Dimitri', 'visa', 'NJIT', '2019-01-09', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `PID` char(9) NOT NULL,
  `BTYPE` varchar(8) NOT NULL,
  `WEIGHT` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`PID`, `BTYPE`, `WEIGHT`) VALUES
('100000000', 'regular', '1.90'),
('100000001', 'premium', '0.99'),
('100000002', 'plus', '2.10');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `member_name` varchar(250) NOT NULL,
  `member_surname` varchar(250) NOT NULL,
  `member_phone` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offer_product`
--

CREATE TABLE `offer_product` (
  `PID` char(9) NOT NULL,
  `OFFERPRICE` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_product`
--

INSERT INTO `offer_product` (`PID`, `OFFERPRICE`) VALUES
('111122221', '289.99'),
('233333333', '3099.99');

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `PID` char(9) NOT NULL,
  `PRINTERTYPE` varchar(10) NOT NULL,
  `RESOLUTION` decimal(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`PID`, `PRINTERTYPE`, `RESOLUTION`) VALUES
('111122221', 'blackwhite', '3000000'),
('111122222', 'color', '8000000'),
('111222333', 'color', '3000000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PID` char(9) NOT NULL,
  `PTYPE` varchar(20) NOT NULL,
  `PNAME` varchar(50) NOT NULL,
  `PPRICE` decimal(8,2) DEFAULT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `PQUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PID`, `PTYPE`, `PNAME`, `PPRICE`, `DESCRIPTION`, `PQUANTITY`) VALUES
('100000000', 'Laptop', 'MacbookPro', '1299.99', 'Newest version Apple MacbookPro.', 5),
('100000001', 'Laptop', 'Macbook', '999.99', 'The newest version Apple Macbook.', 20),
('100000002', 'Laptop', 'Dell XPS14', '899.99', 'New Dell XPS14 ultrabook.', 10),
('111122221', 'Printer', 'Canon blackwhite', '333.33', 'Canon black and white light printer.', 20),
('111122222', 'Printer', 'Canon color Econ', '444.44', 'Canon black and white light printer.', 30),
('111222333', 'Printer', 'Canon color', '666.66', 'Canon colorful printer.', 20),
('233333333', 'Computer', 'Mac', '3299.99', 'Mac desktop. ', 4),
('244444444', 'Desktop', 'Dell workstation', '4999.99', 'Dell strong workstation for intencive computing.', 3),
('666666666', 'Other', 'Silver Membership', '66.66', 'Silver membership. Can enjoy some offers.', 99999),
('888888888', 'Other', 'Gold Membership', '88.88', 'Gold membership. Can enjoy all offers.', 99999),
('999999999', 'Other', 'Verticle Mouse', '39.99', 'Verticle mouse that helps relax your arm.', 30);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_naame` varchar(250) NOT NULL,
  `product_manufacturer` varchar(250) NOT NULL,
  `product_price` varchar(250) NOT NULL,
  `product_quota` varchar(250) NOT NULL,
  `product_img` varchar(250) NOT NULL,
  `dt_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `dt_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `dell` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ship_address`
--

CREATE TABLE `ship_address` (
  `CID` char(9) NOT NULL,
  `RECEPIENTNAME` varchar(15) NOT NULL,
  `COUNTRY` varchar(10) NOT NULL,
  `STATE` varchar(20) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `ZIP` varchar(10) NOT NULL,
  `STREET` varchar(20) NOT NULL,
  `SNUMBER` varchar(9) NOT NULL,
  `SANAME` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship_address`
--

INSERT INTO `ship_address` (`CID`, `RECEPIENTNAME`, `COUNTRY`, `STATE`, `CITY`, `ZIP`, `STREET`, `SNUMBER`, `SANAME`) VALUES
('100000001', 'test1', 'TN', 'NABEUL', 'Nutley', '5000', 'Main ST', '1', 'mtesty'),
('100000001', 'test2', 'Tn', 'NAB', 'Stony Brook', '5000', 'Stony Brook Rd.', '1', 'test'),
('100000003', 'ytest3', 'TN', 'TUNIS', 'Harrison', '5000', 'Harrison Ave', '330', 'testyu'),
('100000003', 'test4', 'TN', 'NY', 'NYC', '5000', '5th Ave', '1', 'testyu5'),
('100000006', 'ytesty6', 'TN', 'Tunis', 'Tianjin', '5000', 'Xian Road', '157', 'ayubo'),
('100000006', 'testy5', 'TN', 'NBl', 'Tianjin', '5000', 'Huaming', '168', 'home'),
('100000006', 'ytest6', 'TN', 'Tunis', 'Tianjin', '5000', 'Liuzhou Road', '23', 'latest'),
('100000007', 'test7', 'TN', 'Nabeul', 'Newark', '5000', 'Broadway', '123', 'ayub'),
('100000007', 'tst8', 'TN', 'Nabeul', 'Newark', '5000', 'MLK bld', '3', 'newarksmayen');

-- --------------------------------------------------------

--
-- Table structure for table `silver_and_above`
--

CREATE TABLE `silver_and_above` (
  `CID` char(9) NOT NULL,
  `CREDITLINE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `silver_and_above`
--

INSERT INTO `silver_and_above` (`CID`, `CREDITLINE`) VALUES
('100000001', 2000),
('100000006', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `stored_card`
--

CREATE TABLE `stored_card` (
  `CCNUMBER` char(16) NOT NULL,
  `CID` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stored_card`
--

INSERT INTO `stored_card` (`CCNUMBER`, `CID`) VALUES
('1234123412341234', '100000001'),
('2345234523452345', '100000001'),
('1688168816881688', '100000003'),
('8888999988889999', '100000003'),
('123412341234', '100000006'),
('666777888999', '100000007'),
('999888777666', '100000007');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessoire`
--
ALTER TABLE `accessoire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appears_in`
--
ALTER TABLE `appears_in`
  ADD PRIMARY KEY (`CARTID`,`PID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CARTID`),
  ADD KEY `CCNUMBER` (`CCNUMBER`);

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`CARDNUMBER`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_address`
--
ALTER TABLE `ship_address`
  ADD PRIMARY KEY (`CID`,`SANAME`);

--
-- Indexes for table `silver_and_above`
--
ALTER TABLE `silver_and_above`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `stored_card`
--
ALTER TABLE `stored_card`
  ADD PRIMARY KEY (`CCNUMBER`),
  ADD KEY `CID` (`CID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessoire`
--
ALTER TABLE `accessoire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appears_in`
--
ALTER TABLE `appears_in`
  ADD CONSTRAINT `APPEARS_IN_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`),
  ADD CONSTRAINT `APPEARS_IN_ibfk_3` FOREIGN KEY (`CARTID`) REFERENCES `cart` (`CARTID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `CART_ibfk_1` FOREIGN KEY (`CCNUMBER`) REFERENCES `credit_card` (`CARDNUMBER`);

--
-- Constraints for table `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `COMPUTER_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`);

--
-- Constraints for table `laptop`
--
ALTER TABLE `laptop`
  ADD CONSTRAINT `LAPTOP_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`);

--
-- Constraints for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD CONSTRAINT `OFFER_PRODUCT_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`);

--
-- Constraints for table `printer`
--
ALTER TABLE `printer`
  ADD CONSTRAINT `PRINTER_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`);

--
-- Constraints for table `ship_address`
--
ALTER TABLE `ship_address`
  ADD CONSTRAINT `SHIP_ADDRESS_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`);

--
-- Constraints for table `silver_and_above`
--
ALTER TABLE `silver_and_above`
  ADD CONSTRAINT `SILVER_AND_ABOVE_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`);

--
-- Constraints for table `stored_card`
--
ALTER TABLE `stored_card`
  ADD CONSTRAINT `STORED_CARD_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`),
  ADD CONSTRAINT `STORED_CARD_ibfk_2` FOREIGN KEY (`CCNUMBER`) REFERENCES `credit_card` (`CARDNUMBER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
