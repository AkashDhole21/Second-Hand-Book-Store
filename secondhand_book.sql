-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 06:22 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secondhand_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `srno` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`srno`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `bankaccounts`
--

CREATE TABLE `bankaccounts` (
  `srno` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `account_no` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bank_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ifce_code` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `branch` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bankaccounts`
--

INSERT INTO `bankaccounts` (`srno`, `name`, `email`, `account_no`, `bank_name`, `ifce_code`, `branch`) VALUES
(8, 'Shubham Lagad ', 'shubhamlagad2000@gmail.com', '3256245896', 'Central Bank of India', 'CBIN259345', 'Kolgaon'),
(9, 'nitin sudrik', 'nitin@gmail.com', '3654552145', 'State Bank of india', 'SBOI258965', 'Baradgaon'),
(10, 'onkar kulkarni', 'onkar@gmail.com', '41257896523', 'Maharashtra bank', 'maha485621', 'baramati');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bno` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `book_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `auther_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `book_language` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `book_condition` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `original_price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selling_price` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selling_date` text COLLATE utf8_bin DEFAULT NULL,
  `upload_date` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bno`, `user`, `book_name`, `auther_name`, `category`, `book_language`, `purchase_date`, `book_condition`, `original_price`, `selling_price`, `description`, `image`, `status`, `selling_date`, `upload_date`) VALUES
(18, 'shubhamlagad2000@gmail.com', 'bible to basic mathematics ', 'pragati agrawal', 'Mathematics', 'English', '2022-03-08', 'Good', '440', '190', 'It is nice.\r\n\r\n\r\n\r\n', 'bible of basic math.jpg', 'Pending', '00-00-0000', '09-03-2022'),
(19, 'shubhamlagad2000@gmail.com', 'kat', 'narayan dharap', 'History', 'Marathi', '2018-06-09', 'Poor', '850', '340', 'It is a Marathi kadambari book.', 'kat.jpg', 'Not Available', '24-03-2022', '09-03-2022'),
(20, 'shubhamlagad2000@gmail.com', 'journey of the life time', 'smith', 'Mystery', 'English', '2021-07-02', 'Good', '455', '250', 'Best book for life goal achiever\'s ', 'journy of a lifetime.jpg', 'Pending', '24-03-2022', '09-03-2022'),
(21, 'shubhamlagad2000@gmail.com', 'yogasane', 'Dr. P D Sharma', 'Health', 'Marathi', '2021-10-21', 'Good', '320', '220', 'Good book for health tips.', 'yogasane.jpg', 'Not Available', '24-03-2022', '09-03-2022'),
(22, 'nitin@gmail.com', 'madhuras receipe ', 'madhura', 'Cookbooks', 'Marathi', '2021-10-05', 'Good', '400', '150', 'Best for Cooking.', 'madhuraj recepie.jpg', 'Pending', '23-03-2022', '09-03-2022'),
(23, 'nitin@gmail.com', 'harry potter', 'j k rowling', 'Childrens', 'English', '2022-01-04', 'New', '960', '450', 'Best story book.', 'harry potter.jpg', 'Not Available', '09-03-2022', '09-03-2022'),
(24, 'nitin@gmail.com', 'one health', 'prof m aniket', 'Health', 'English', '2022-03-01', 'Good', '540', '320', 'health book\r\n', 'one health.jpg', 'Sold', '09-03-2022', '09-03-2022'),
(26, 'onkar@gmail.com', 'kadambari jivlaga', 'arun v deshpande', 'Kadambari', 'Marathi', '2021-05-19', 'Good', '1240', '740', 'good for readers', 'jivlaga.jpg', 'Pending', '24-03-2022', '10-03-2022'),
(27, 'shubhamlagad2000@gmail.com', 'bible to basic mathematics ', 'pragati agrawal', 'Mathematics', 'English', '2022-03-09', 'Good', '390', '190', 'It is good for math lovers.\r\n', 'bible of basic math.jpg', 'Not Available', '00-00-0000', '19-03-2022');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cno` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `book_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cno`, `user`, `book_no`) VALUES
(51, 'onkar@gmail.com', 20),
(52, 'shubhamlagad2000@gmail.com', 22),
(55, NULL, 18),
(56, NULL, 19),
(57, NULL, 19),
(59, 'nitin@gmail.com', 21),
(61, 'nitin@gmail.com', 19);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `srno` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`srno`, `email`, `name`, `comment`) VALUES
(1, 'shubhamlagad2000@gmail.com', 'Shubham Lagad', 'Best website for secondhand books selling.'),
(2, 'shubhamlagad2000@gmail.com', 'Onkar Kulkarni', 'very good website'),
(3, 'shubhamlagad2000@gmail.com', 'Nitin Sudrik', 'Excellent work'),
(4, 'shubhamlagad2000@gmail.com', 'Shripad Kulkarni', 'Very attractive website'),
(9, 'shubhamlagad2000@gmail.com', 'Shubham Lagad', 'nice experience to use this web'),
(10, 'nitin@gmail.com', 'Nitin Sudrik', 'Very atractive wesite'),
(11, 'nitin@gmail.com', 'Nitin Sudrik', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(11) NOT NULL,
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `buyer_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `buyer_email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mobile_no` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address` text COLLATE utf8_bin DEFAULT NULL,
  `book_no` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `payment_mode` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selling_date` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `order_id`, `buyer_name`, `buyer_email`, `mobile_no`, `address`, `book_no`, `price`, `payment_mode`, `selling_date`, `status`) VALUES
(142, '59859412563', 'Onkar kulkarni', 'onkar@gmail.com', '859412563', 'at post bmt,bhigwan,Pune413133', 24, 360, 'Credit_Card', '09-03-2022', 'Cancelled'),
(143, '59859412563', 'Onkar kulkarni', 'onkar@gmail.com', '859412563', 'at post bmt,bhigwan,Pune413133', 23, 490, 'Credit_Card', '09-03-2022', 'Cancelled'),
(151, '882486461231', 'nitin', 'nitin@gmail.com', '2486461231', 'At post wadgaon,Pune543245', 20, 290, 'Cash_On_Delivery', '24-03-2022', 'Cancelled'),
(152, '755354345345', 'nitin', 'nitin@gmail.com', '5354345345', 'gfngfngn,gngngn543656', 26, 780, 'Credit_Card', '24-03-2022', 'Success'),
(153, '648635435435', 'dfvfbfdb', 'nitin@gmail.com', '8635435435', 'At post kolgaon,fbfb413728', 21, 260, 'Cash_On_Delivery', '24-03-2022', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `gender` varchar(50) COLLATE utf8_bin NOT NULL,
  `contactno` varchar(50) COLLATE utf8_bin NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `answer` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `gender`, `contactno`, `city`, `password`, `answer`) VALUES
('Nitin Sudrik', 'nitin@gmail.com', 'Male', '8653459650', 'Pune', 'user2345', 'pune'),
('onkar kulkarni', 'onkar@gmail.com', 'Male', '8596485962', 'baramati', 'user3456', 'onkar'),
('Rahul Dhas', 'rahul@gmail.com', 'Male', '9958465213', 'Pune', 'rahul@2000', 'rahul'),
('Shubham Lagad', 'shubhamlagad2000@gmail.com', 'Male', '8007878524', 'Ahmednagar', 'user12345', 'ans1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bno`),
  ADD KEY `FK_userNo` (`user`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cno`),
  ADD KEY `FK_userEmail` (`user`),
  ADD KEY `FK_bookNo` (`book_no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `buyer_email` (`buyer_email`),
  ADD KEY `book_no` (`book_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bankaccounts`
--
ALTER TABLE `bankaccounts`
  ADD CONSTRAINT `bankaccounts_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK_userNo` FOREIGN KEY (`user`) REFERENCES `users` (`email`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_bookNo` FOREIGN KEY (`book_no`) REFERENCES `books` (`bno`),
  ADD CONSTRAINT `FK_userEmail` FOREIGN KEY (`user`) REFERENCES `users` (`email`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`book_no`) REFERENCES `books` (`bno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
