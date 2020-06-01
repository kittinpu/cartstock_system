-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 03:20 PM
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
-- Database: `cartstock_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `sp_member_dt`
--

CREATE TABLE `sp_member_dt` (
  `member_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `member_username` varchar(50) NOT NULL,
  `member_password` varchar(50) NOT NULL,
  `member_fullname` varchar(150) NOT NULL,
  `member_email` varchar(250) NOT NULL,
  `member_tel` int(20) NOT NULL,
  `member_address` text NOT NULL,
  `member_status` enum('0','1') NOT NULL DEFAULT '0',
  `titlename_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `member_photo` varchar(120) NOT NULL,
  `member_datesave` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_member_dt`
--

INSERT INTO `sp_member_dt` (`member_id`, `member_username`, `member_password`, `member_fullname`, `member_email`, `member_tel`, `member_address`, `member_status`, `titlename_id`, `member_photo`, `member_datesave`) VALUES
(00001, 'admin', '123456', 'admin admin', 'admin@hotmail.com', 55656477, 'Thailand', '1', 001, 'Member_5bc110227568f.png', '2018-10-13 04:20:34'),
(00013, 'user', '123456', 'user user', 'user@gmail.com', 78225985, 'thailand', '0', 001, 'Member_5db03adcd30f6.png', '2019-10-23 18:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `sp_orderdetail_dt`
--

CREATE TABLE `sp_orderdetail_dt` (
  `detail_id` int(10) NOT NULL,
  `order_id` int(2) UNSIGNED ZEROFILL NOT NULL,
  `product_id` int(7) UNSIGNED ZEROFILL NOT NULL,
  `product_qty` int(11) NOT NULL,
  `total` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sp_order_dt`
--

CREATE TABLE `sp_order_dt` (
  `order_id` int(2) NOT NULL,
  `order_status` enum('0','1') NOT NULL DEFAULT '0',
  `member_id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `order_slip` varchar(150) NOT NULL,
  `order_datesave` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sp_producttype_dt`
--

CREATE TABLE `sp_producttype_dt` (
  `producttype_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `producttype_detail` varchar(100) NOT NULL,
  `producttype_datesave` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_producttype_dt`
--

INSERT INTO `sp_producttype_dt` (`producttype_id`, `producttype_detail`, `producttype_datesave`) VALUES
(0001, 'หมวดหมู่ที่ 1', '2018-10-13 21:40:00'),
(0002, 'หมวดหมู่ที่ 2', '2018-10-13 21:40:00'),
(0003, 'หมวดหมู่ที่ 3', '2018-10-13 21:40:00'),
(0004, 'หมวดหมู่ที่ 4', '2018-10-13 21:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `sp_product_dt`
--

CREATE TABLE `sp_product_dt` (
  `product_id` int(7) UNSIGNED ZEROFILL NOT NULL,
  `product_topic` varchar(100) NOT NULL,
  `product_detail` text NOT NULL,
  `product_price` decimal(30,2) NOT NULL,
  `product_quantity` int(20) NOT NULL DEFAULT '0',
  `product_filename` varchar(150) NOT NULL,
  `product_status` enum('0','1') NOT NULL DEFAULT '0',
  `producttype_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_datesave` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_product_dt`
--

INSERT INTO `sp_product_dt` (`product_id`, `product_topic`, `product_detail`, `product_price`, `product_quantity`, `product_filename`, `product_status`, `producttype_id`, `product_qty`, `product_datesave`) VALUES
(0000013, 'Topic 1', '<p>Detail Lorem 1</p>\r\n', '500.00', 3, 'Product_5db051022c579.jpg', '0', 0001, 20, '2019-10-23 20:10:35'),
(0000014, 'Topic 2', '<p>Detail Lorem 2</p>\r\n', '2530.00', 2, 'Product_5db0511c9cc3b.jpg', '0', 0001, 20, '2019-10-23 20:10:29'),
(0000015, 'Topic 3', '<p>Detail Lorem 3</p>\r\n', '220.00', 1, 'Product_5db051324c1d4.jpg', '0', 0002, 20, '2019-10-23 20:10:10'),
(0000016, 'Topic 4', '<p>Detail Lorem 4</p>\r\n', '1520.00', 0, 'Product_5db051614e16b.jpg', '0', 0002, 0, '2019-10-23 20:17:40'),
(0000017, 'Topic 5', '<p>Detail Lorem 5</p>\r\n', '250.00', 0, 'Product_5db05177d8bd4.jpg', '0', 0003, 20, '2019-10-23 20:11:19'),
(0000018, 'Topic 6', '<p>Detail Lorem 6</p>\r\n', '350.00', 0, 'Product_5db05189c04ba.jpg', '0', 0003, 20, '2019-10-23 20:11:37'),
(0000019, 'Topic 7', '<p>Detail Lorem 7</p>\r\n', '850.00', 0, 'Product_5db051b1ab0ae.jpg', '0', 0004, 0, '2019-10-23 20:17:31'),
(0000020, 'Topic 8', '<p>Detail Lorem 8</p>\r\n', '750.00', 7, 'Product_5db051c3cc266.jpg', '0', 0004, 0, '2019-10-23 20:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `sp_titlename_dt`
--

CREATE TABLE `sp_titlename_dt` (
  `titlename_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `titlename_detail` varchar(250) NOT NULL,
  `titlename_datesave` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_titlename_dt`
--

INSERT INTO `sp_titlename_dt` (`titlename_id`, `titlename_detail`, `titlename_datesave`) VALUES
(001, 'นาย', '2018-10-13 03:56:00'),
(002, 'นางสาว', '2018-10-13 03:56:00'),
(003, 'นาง', '2018-10-13 03:56:00'),
(004, 'อื่นๆ', '2018-10-13 03:56:00'),
(005, 'Mrs.', '2018-10-15 19:52:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sp_member_dt`
--
ALTER TABLE `sp_member_dt`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_username` (`member_username`),
  ADD UNIQUE KEY `member_fullname` (`member_fullname`),
  ADD UNIQUE KEY `member_email` (`member_email`),
  ADD UNIQUE KEY `member_tel` (`member_tel`);

--
-- Indexes for table `sp_orderdetail_dt`
--
ALTER TABLE `sp_orderdetail_dt`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `sp_order_dt`
--
ALTER TABLE `sp_order_dt`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sp_producttype_dt`
--
ALTER TABLE `sp_producttype_dt`
  ADD PRIMARY KEY (`producttype_id`),
  ADD UNIQUE KEY `producttype_detail` (`producttype_detail`);

--
-- Indexes for table `sp_product_dt`
--
ALTER TABLE `sp_product_dt`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_topic` (`product_topic`);

--
-- Indexes for table `sp_titlename_dt`
--
ALTER TABLE `sp_titlename_dt`
  ADD PRIMARY KEY (`titlename_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sp_member_dt`
--
ALTER TABLE `sp_member_dt`
  MODIFY `member_id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sp_orderdetail_dt`
--
ALTER TABLE `sp_orderdetail_dt`
  MODIFY `detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sp_order_dt`
--
ALTER TABLE `sp_order_dt`
  MODIFY `order_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sp_producttype_dt`
--
ALTER TABLE `sp_producttype_dt`
  MODIFY `producttype_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sp_product_dt`
--
ALTER TABLE `sp_product_dt`
  MODIFY `product_id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sp_titlename_dt`
--
ALTER TABLE `sp_titlename_dt`
  MODIFY `titlename_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
