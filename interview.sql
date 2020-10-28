-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2020 at 06:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_product`
--

CREATE TABLE `history_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `price` float NOT NULL,
  `uom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_product`
--

INSERT INTO `history_product` (`id`, `product_name`, `date_created`, `created_by`, `product_id`, `qty`, `price`, `uom`) VALUES
(26, 'Product1', '2020-10-28 12:09:37', 1, 0, 2, 100, 'kg'),
(27, 'Product1', '2020-10-28 12:09:37', 1, 0, 2, 100, 'kg'),
(28, 'Product1', '2020-10-28 12:10:59', 1, 0, 1, 100, 'kg'),
(29, 'Product1', '2020-10-28 12:10:59', 1, 0, 1, 100, 'kg'),
(30, 'Product1', '2020-10-28 12:20:34', 1, 0, 1, 100, 'kg'),
(31, 'Product1', '2020-10-28 12:21:19', 1, 0, 10, 100, 'kg'),
(32, 'Product2', '2020-10-28 12:21:19', 1, 0, 10, 500, 'pcs'),
(33, 'Product1', '2020-10-28 12:21:24', 1, 0, 10, 100, 'kg'),
(34, 'Product2', '2020-10-28 12:21:35', 1, 0, 20, 500, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uom` varchar(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `uom`, `qty`, `price`, `date_created`, `date_updated`, `created_by`, `updated_by`) VALUES
(1, 'Product1', 'kg', 10, 100, '2020-10-28 00:01:12', '2020-10-28 00:01:12', 1, 1),
(2, 'Product2', 'pcs', 20, 500, '2020-10-27 05:10:03', '2020-10-27 05:10:03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `pin` bigint(20) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `pin`, `date_created`, `date_updated`) VALUES
(1, 'henro', 1234, '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_product`
--
ALTER TABLE `history_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_product`
--
ALTER TABLE `history_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
