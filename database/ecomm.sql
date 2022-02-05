-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 10:37 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(7, 'เสื้อ', 'เสื้อ'),
(8, 'กางเกง', 'กางเกง'),
(9, 'เดรส', 'เดรส'),
(10, 'กระโปรง', 'กระโปรง'),
(12, 'ถุงเท้า', 'ถุงเท้า');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(70, 33, 38, 7),
(71, 33, 37, 1),
(72, 33, 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(37, 7, 'เสื้อ1', '<p>รายละเอียดเสื้อ1</p>\r\n', 'เสื้อ1', 111, 'เสื้อ1.jpg', '2022-01-27', 4),
(38, 7, 'เสื้อ2', '<p>รายละเอียดเสื้อ2</p>\r\n', 'เสื้อ2', 129, 'เสื้อ2.jpg', '2022-01-27', 2),
(39, 7, 'เสื้อ3', '<p>รายละเอียดเสื้อ3</p>\r\n', 'เสื้อ3', 59, 'เสื้อ3.jpg', '0000-00-00', 0),
(40, 7, 'เสื้อ4', '<p>รายละเอียดเสื้อ4</p>\r\n', 'เสื้อ4', 99, 'เสื้อ4.jpg', '0000-00-00', 0),
(41, 7, 'เสื้อ5', '<p>รายละเอียดเสื้อ5</p>\r\n', 'เสื้อ5', 79, 'เสื้อ5.jpg', '0000-00-00', 0),
(42, 7, 'เสื้อ6', '<p>รายละเอียดเสื้อ6</p>\r\n', 'เสื้อ6', 299, 'เสื้อ6.jpg', '0000-00-00', 0),
(43, 8, 'กางเกง1', '<p>รายละเอียดกางเกง1</p>\r\n', 'กางเกง1', 49, 'กางเกง1.jpg', '0000-00-00', 0),
(44, 8, 'กางเกง2', '<p>รายละเอียดกางเกง2</p>\r\n', 'กางเกง2', 29, 'กางเกง2.jpg', '0000-00-00', 0),
(45, 8, 'กางเกง3', '<p>รายละเอียดกางเกง3</p>\r\n', 'กางเกง3', 123, 'กางเกง3.jpg', '0000-00-00', 0),
(46, 8, 'กางเกง4', '<p>รายละเอียดกางเกง1</p>\r\n', 'กางเกง4', 555, 'กางเกง4.jpg', '0000-00-00', 0),
(47, 8, 'กางเกง5', '<p>รายละเอียดกางเกง5</p>\r\n', 'กางเกง5', 567, 'กางเกง5.jpg', '0000-00-00', 0),
(48, 8, 'กางเกง6', '<p>รายละเอียดกางเกง6</p>\r\n', 'กางเกง6', 324, 'กางเกง6.jpg', '0000-00-00', 0),
(49, 8, 'กางเกง7', '<p>รายละเอียดกางเกง7</p>\r\n', 'กางเกง7', 563, 'กางเกง7.jpg', '0000-00-00', 0),
(50, 8, 'กางเกง8', '<p>รายละเอียดกางเกง8</p>\r\n', 'กางเกง8', 129, 'กางเกง8.jpg', '0000-00-00', 0),
(51, 9, 'เดรส1', '<p>รายละเอียดเดรส1</p>\r\n', 'เดรส1', 99, 'เดรส1.jpg', '0000-00-00', 0),
(52, 9, 'เดรส2', '<p>รายละเอียดเดรส2</p>\r\n', 'เดรส2', 119, 'เดรส2.jpg', '0000-00-00', 0),
(53, 9, 'เดรส3', '<p>รายละเอียดเดรส3</p>\r\n', 'เดรส3', 499, 'เดรส3_1643274426.jpg', '0000-00-00', 0),
(54, 9, 'เดรส4', '<p>รายละเอียดเดรส4</p>\r\n', 'เดรส4', 229, 'เดรส4.jpg', '0000-00-00', 0),
(55, 9, 'เดรส5', '<p>รายละเอียดเดรส5</p>\r\n', 'เดรส5', 599, 'เดรส5.jpg', '0000-00-00', 0),
(56, 10, 'กระโปรง1', '<p>รายละเอียดกระโปรง1</p>\r\n', 'กระโปรง1', 0, 'กระโปรง1.jpg', '0000-00-00', 0),
(57, 10, 'กระโปรง2', '<p>รายละเอียดกระโปรง2</p>\r\n', 'กระโปรง2', 231, 'กระโปรง2.jpg', '0000-00-00', 0),
(58, 10, 'กระโปรง3', '<p>รายละเอียดกระโปรง3</p>\r\n', 'กระโปรง3', 332, 'กระโปรง3.jpg', '0000-00-00', 0),
(59, 10, 'กระโปรง4', '<p>รายละเอียดกระโปรง4</p>\r\n', 'กระโปรง4', 569, 'กระโปรง4.jpg', '0000-00-00', 0),
(60, 10, 'กระโปรง5', '<p>รายละเอียดกระโปรง5</p>\r\n', 'กระโปรง5', 119, 'กระโปรง5.jpg', '0000-00-00', 0),
(61, 10, 'กระโปรง6', '<p>รายละเอียดกระโปรง6</p>\r\n', 'กระโปรง6', 399, 'กระโปรง6.jpg', '0000-00-00', 0),
(62, 12, 'ถุงเท้า1', '<p>รายละเอียดถุงเท้า1</p>\r\n', 'ถุงเท้า1', 129, 'ถุงเท้า1.jpg', '0000-00-00', 0),
(63, 12, 'ถุงเท้า2', '<p>รายละเอียดถุงเท้า2</p>\r\n', 'ถุงเท้า2', 222, 'ถุงเท้า2.jpg', '0000-00-00', 0),
(64, 12, 'ถุงเท้า3', '<p>รายละเอียดถุงเท้า3</p>\r\n', 'ถุงเท้า3', 10, 'ถุงเท้า3.jpg', '0000-00-00', 0),
(65, 12, 'ถุงเท้า4', '<p>รายละเอียดถุงเท้า4</p>\r\n', 'ถุงเท้า4', 20, 'ถุงเท้า4.jpg', '0000-00-00', 0),
(66, 12, 'ถุงเท้า5', '<p>รายละเอียดถุงเท้า5</p>\r\n', 'ถุงเท้า5', 19, 'ถุงเท้า5.jpg', '0000-00-00', 0),
(67, 12, 'ถุงเท้า6', '<p>รายละเอียดถุงเท้า6</p>\r\n', 'ถุงเท้า6', 9, 'ถุงเท้า6.jpg', '0000-00-00', 0),
(68, 12, 'ถุงเท้า7', '<p>รายละเอียดถุงเท้า7</p>\r\n', 'ถุงเท้า7', 19, 'ถุงเท้า7.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sales_date` date NOT NULL,
  `sales_state` int(11) NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`, `sales_state`, `photo`) VALUES
(33, 27, 'ggg111', '2022-01-27', 1, '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reset_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$M2Fcncyf/K1ABrXWEpTK..XT1vMbSIRUIcovcN5JEfJe.wDzXsVI2', 1, 'ONLINE', 'BY ME', '', '', '4k-image-tiger-jumping.jpg', 1, '', '', '2020-12-30'),
(13, 'em@em.com', '$2y$10$3HQYgA2aw/xQgi9jbRqd0.X.Q/IwfN3GdMZiLLx/SIxFNO4tqmsBi', 2, 'test2', 'test2', 'eee', 'eeee', 'rice.png', 1, '', '', '2020-12-30'),
(27, 'test@test.com', '$2y$10$TKB3kb3YmV8rLuGdMd2tBuc5ex/yehqlpMMMcj60M.JqTFWbdoBRS', 0, 'test', 'test', 'dddd', 'dddddddddddd', 'table-g30a2d02f8_1920.jpg', 1, 'pji95KR6agHd', '', '2022-01-26'),
(29, 'test2@test.com', '$2y$10$ksgt4KLyCruEnABmvfeNzebxuUoOhnPcmZQsQZzNk2ew5j5nWTMci', 0, 'test2', '123', '', '', '?Pngtree?vegetables and spices_1279938.png', 0, '9L2d5P3jMUsa', '', '2022-01-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
