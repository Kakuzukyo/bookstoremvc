-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 10:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstoremvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `CustomerID`, `Name`, `Password`) VALUES
(1, 1, 'admin', 'admin'),
(2, 2, 'ha', 'ha');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Commune` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `District` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `CustomerID`, `Commune`, `City`, `District`) VALUES
(1, 2, 'Thanh Xuan', 'Ha Noi', 'Ha Dong');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Biography` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `Name`, `Biography`) VALUES
(1, 'Nguyễn Nhật Ánh', 'none'),
(2, 'Tố Khanh', 'none'),
(3, 'Tiến Dũng', 'none'),
(4, 'Tánh Tuệ', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Price` float NOT NULL,
  `Summary` varchar(255) NOT NULL,
  `Language` varchar(45) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `PublisherID` int(11) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Inventory` int(11) NOT NULL,
  `Discount` float NOT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `Name`, `Image`, `Price`, `Summary`, `Language`, `AuthorID`, `PublisherID`, `Category`, `Inventory`, `Discount`, `Description`) VALUES
(1, 'Con chim xanh biếc bay về', 'images/book.jpg', 50000, 'Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành ph', 'vie', 1, 1, 'Sách trong nước', 10, 0, NULL),
(2, 'Tiền trong túi tình trong tim', 'images/book6.jpg', 45000, 'Sử dụng các câu chuyện của khách hàng và câu chuyện từ món nợ 20 ngàn đô đến tự do tài chính ở tuổi 28 của chính mình, Northrup đóng vai trò là người hướng dẫn trong hành trình tìm kiếm tự do tài chính của riêng bạn.Cô ấy sẽ chỉ cho bạn cách thay đổi niềm', 'vie', 2, 2, 'Sách trong nước', 15, 0, NULL),
(3, 'Hạnh phúc đích thực', 'images/book2.jpg', 60000, 'Con người tìm đến thiền định vì họ muốn bản thân có thể đưa ra những quyết định đúng đắn, xóa bỏ những thói quen không tốt và hồi phục tốt hơn sau những thất vọng. Họ muốn cảm thấy gần gũi hơn với gia đình, bạn bè; muốn thoải mái dễ chịu hơn với chính cơ ', 'vie', 2, 2, 'Sách trong nước', 15, 0, NULL),
(4, 'Hạnh phúc không nằm trong ví', 'images/book3.jpg', 50000, 'Trong cuộc sống hằng ngày, người ta thường hay đùa với nhau: “Tiền là tiên, là Phật.” Có lẽ không ngoa khi nói rằng cuộc sống hiện nay là cuộc sống của tiền bạc. Đa số mọi người đều coi tiền bạc là trọng tâm của đời mình, sống để kiếm tiền. Vui ở tiền bạc', 'vie', 3, 3, 'Sách trong nước', 20, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `TotalPrice` float NOT NULL,
  `ItemType` varchar(45) NOT NULL,
  `bought` int(11) NOT NULL DEFAULT 0,
  `ProductName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `ItemId`, `CustomerId`, `Amount`, `TotalPrice`, `ItemType`, `bought`, `ProductName`) VALUES
(1, 1, 1, 2, 100000, 'Books', 1, 'Con chim xanh biếc bay về'),
(2, 1, 1, 1, 50000, 'Books', 1, 'Con chim xanh biếc bay về'),
(3, 1, 1, 1, 50000, 'Books', 1, 'Con chim xanh biếc bay về'),
(10, 2, 1, 3, 135000, 'Books', 0, 'Tiền trong túi tình trong tim'),
(11, 1, 1, 1, 50000, 'Books', 0, 'Con chim xanh biếc bay về'),
(19, 2, 2, 1, 45000, 'Books', 1, 'Tiền trong túi tình trong tim'),
(20, 4, 2, 1, 50000, 'Books', 1, 'Hạnh phúc không nằm trong ví'),
(21, 3, 2, 1, 60000, 'Books', 1, 'Hạnh phúc đích thực'),
(22, 2, 2, 1, 45000, 'Books', 1, 'Tiền trong túi tình trong tim');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Email`) VALUES
(1, 'long123@gmail.com'),
(2, 'ha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fullname`
--

CREATE TABLE `fullname` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Middlename` varchar(45) NOT NULL,
  `Lastname` varchar(45) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fullname`
--

INSERT INTO `fullname` (`id`, `Firstname`, `Middlename`, `Lastname`, `CustomerID`) VALUES
(1, 'Lai', 'Duc', 'Long', 1),
(2, 'Ha', 'Hoang', 'Bach', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `PaymentId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `ShipmentId` int(11) NOT NULL,
  `CartId` varchar(45) NOT NULL,
  `TotalPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `PaymentId`, `CustomerId`, `ShipmentId`, `CartId`, `TotalPrice`) VALUES
(1, 1, 1, 1, '(1)', 110000),
(2, 1, 1, 1, '(2)', 60000),
(3, 1, 1, 2, '(3)', 60000),
(4, 1, 1, 2, '(3)', 60000),
(5, 1, 2, 1, '(19)', 55000),
(6, 1, 2, 1, '(20, 21)', 120000),
(7, 1, 2, 1, '(20, 21)', 120000),
(8, 1, 2, 1, '(22)', 55000),
(9, 1, 2, 1, '(22)', 55000),
(10, 1, 2, 1, '(22)', 55000),
(11, 1, 2, 1, '(22)', 55000),
(12, 1, 2, 1, '(22)', 55000),
(13, 1, 2, 1, '(22)', 55000),
(14, 1, 2, 1, '(22)', 55000),
(15, 1, 2, 1, '(22)', 55000),
(16, 1, 2, 1, '(22)', 55000),
(17, 1, 2, 1, '(22)', 55000),
(18, 1, 2, 1, '(22)', 55000),
(19, 1, 2, 1, '(22)', 55000),
(20, 1, 2, 1, '(22)', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Id` int(11) NOT NULL,
  `Method` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Id`, `Method`) VALUES
(1, 'Chuyển khoản'),
(2, 'Trực tiếp');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `Name`, `Address`) VALUES
(1, 'NXB Kim Đồng', 'Ha Noi'),
(2, 'NXB Phụ Nữ', 'Ho Chi Minh'),
(3, 'NXB Thanh Niên', 'Ha Noi');

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `id` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`id`, `Type`, `Price`) VALUES
(1, 'Ship COD', 15000),
(2, 'Bưu điện', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `dob`, `gender`, `des`, `address`) VALUES
(1, 'admin', 'admin', 'zxc', 'zxc', 'zxc', 'zxc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_ibfk_1` (`CustomerID`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_ibfk_1` (`CustomerID`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fullname`
--
ALTER TABLE `fullname`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CustomerID_idx` (`CustomerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fullname`
--
ALTER TABLE `fullname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`id`);

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`id`);

--
-- Constraints for table `fullname`
--
ALTER TABLE `fullname`
  ADD CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
