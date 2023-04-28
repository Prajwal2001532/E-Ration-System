-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 03:39 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Login_ID` int NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Login_ID`, `password`) VALUES
(1209843, '5722db8ceaba3852e3027b8812e5c224'),
(1398682, '9a553ef2aeaa5b171605b151b4ad7211'),
(983865618, 'cfdffe46b270379dfba30a58d1d17038'),
(2247266, '5722db8ceaba3852e3027b8812e5c224');

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `Cardno` bigint DEFAULT NULL,
  `Pname` varchar(32) NOT NULL,
  `Pquantity` int NOT NULL,
  `Pprice` mediumint NOT NULL,
  `Location` varchar(10) NOT NULL,
  `Orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Checkout` int NOT NULL DEFAULT '0',
  `Confirm` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`Cardno`, `Pname`, `Pquantity`, `Pprice`, `Location`, `Orderdate`, `Checkout`, `Confirm`) VALUES
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-16 00:08:41', 0, 0),
(1122334455667787, 'Sugar', 1, 13, 'Trichy', '2023-04-16 00:10:03', 0, 0),
(1122334455667787, 'Sugar', 1, 13, 'Trichy', '2023-04-16 00:11:00', 0, 0),
(1122334455667787, 'Wheat', 1, 0, 'Trichy', '2023-04-16 00:11:08', 0, 0),
(1122334455667787, 'Rice', 4, 120, 'Trichy', '2023-04-17 17:57:33', 1, 0),
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-17 18:10:37', 1, 0),
(1122334455667787, 'Toordal', 2, 48, 'Trichy', '2023-04-17 18:15:13', 1, 0),
(1122334455667787, 'Toordal', 2, 48, 'Trichy', '2023-04-17 18:17:12', 1, 0),
(1122334455667787, 'Wheat', 1, 0, 'Trichy', '2023-04-17 18:18:11', 1, 0),
(1122334455667787, 'Sugar', 1, 13, 'Trichy', '2023-04-17 18:19:17', 1, 0),
(1122334455667787, 'Wheat', 1, 0, 'Trichy', '2023-04-17 18:19:23', 1, 0),
(1122334455667787, 'Wheat', 1, 0, 'Trichy', '2023-04-17 18:20:26', 1, 0),
(1122334455667787, 'Wheat', 1, 0, 'Trichy', '2023-04-17 18:20:37', 1, 0),
(1122334455667787, 'Ragi', 1, 34, 'Trichy', '2023-04-17 18:23:11', 1, 0),
(1122334455667787, 'Ragi', 1, 34, 'Trichy', '2023-04-17 18:23:22', 1, 0),
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-17 19:12:06', 1, 0),
(1122334455667787, 'Wheat', 2, 0, 'Trichy', '2023-04-17 19:12:19', 1, 0),
(1122334455667787, 'Ragi', 2, 68, 'Trichy', '2023-04-17 19:12:35', 1, 0),
(1122334455667787, 'Kerosene', 2, 40, 'Trichy', '2023-04-17 19:13:14', 1, 0),
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-18 08:35:05', 1, 1),
(1122334455667787, 'Wheat', 2, 0, 'Trichy', '2023-04-18 08:35:13', 1, 1),
(1122334455667787, 'Ragi', 2, 68, 'Trichy', '2023-04-18 08:35:31', 1, 1),
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-18 10:57:08', 1, 1),
(1122334455667787, 'Wheat', 2, 0, 'Trichy', '2023-04-18 10:57:30', 1, 1),
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-18 11:00:44', 1, 1),
(1122334455667787, 'Wheat', 2, 0, 'Trichy', '2023-04-18 11:01:18', 1, 1),
(1122334455667787, 'Sugar', 2, 26, 'Trichy', '2023-04-18 12:23:47', 1, 1),
(1122334455667787, 'Wheat', 2, 0, 'Trichy', '2023-04-18 12:24:56', 1, 1),
(1122334455667781, 'Rice', 2, 60, 'Salem', '2023-04-19 19:47:27', 1, 1),
(1122334455667781, 'Sugar', 2, 26, 'Salem', '2023-04-19 19:48:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dailyinv`
--

CREATE TABLE `dailyinv` (
  `ProdId` int NOT NULL,
  `Location` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `Productdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Totalquantity` int NOT NULL DEFAULT '1',
  `Price` int NOT NULL,
  `Mid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dailyinv`
--

INSERT INTO `dailyinv` (`ProdId`, `Location`, `quantity`, `Productdate`, `Totalquantity`, `Price`, `Mid`) VALUES
(2, 'Trichy', 10, '2023-04-17 18:09:35', 1, 130, 4),
(8, 'Trichy', 7, '2023-04-17 18:22:49', 1, 306, 18),
(2, 'Trichy', 6, '2023-04-18 08:34:02', 1, 78, 4),
(8, 'Trichy', 5, '2023-04-18 08:34:26', 1, 238, 18),
(1, 'Trichy', 12, '2023-04-18 12:23:20', 1, 360, 4),
(1, 'Salem', 8, '2023-04-19 19:35:55', 1, 300, 4),
(2, 'Salem', 2, '2023-04-19 19:36:01', 1, 52, 4);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Productno` int NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Productno`, `ProductName`, `Quantity`, `Price`) VALUES
(1, 'Rice', 2, 30),
(2, 'Sugar', 1, 13),
(3, 'Wheat', 1, 0),
(4, 'Kerosene', 1, 20),
(8, 'Ragi', 1, 34),
(11, 'Toordal', 1, 24),
(12, 'Millet', 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Shop_id` int NOT NULL,
  `Name` text NOT NULL,
  `Email` longtext,
  `Password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` text NOT NULL,
  `Approval` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Shop_id`, `Name`, `Email`, `Password`, `Location`, `Approval`) VALUES
(1, 'Prajwal', 'luciferbk007@gmail.com', '5722db8ceaba3852e3027b8812e5c224', 'chennai', 1),
(4, 'Prajwal', 'prajwal.bk@mca.christuniversity.in', '9a553ef2aeaa5b171605b151b4ad7211', 'Salem', 1),
(12, 'Prajwal', 'basu_srfs@yahoo.com', '9e4164fefa86fd83858cc06c935c0d95', 'Chennai', 1),
(13, 'Prajwal', 'Prajwal@gmail.com', 'e9ed329acc4ab708b819059ef288259b', 'Salem', 1),
(14, 'Sachin', 'Sachin@gmail.com', '1455494c9f58563769b601366047c030', 'Coimbatore', 1),
(15, 'Vibishna', 'Vibishna@gmail.com', '6235e6b7bfbab4d94e458ae9e8cb784b', 'Trichy', 1),
(16, 'Parth', 'Parth@gmail.com', 'cb53d67a5193ab2510bcff5da8cf0b2a', 'Chennai', 1),
(17, 'Lokanayaki', 'Lokanayaki@gmail.com', 'd64b320f9195b222d023b786248beac4', 'Salem', 1),
(18, 'Sachin', 'Sachin@gmail.com', '1455494c9f58563769b601366047c030', 'Trichy', 1),
(19, 'Thiru', 'Thiru@gmail.com', '1b916f5a6fdc7ab0e1a6b010bfc39da5', 'Coimbatore', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rationupdate`
--

CREATE TABLE `rationupdate` (
  `id` int NOT NULL,
  `Location` varchar(32) DEFAULT NULL,
  `visibile` int DEFAULT '0',
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rationupdate`
--

INSERT INTO `rationupdate` (`id`, `Location`, `visibile`, `Date`) VALUES
(18, 'Trichy', 1, '2023-04-13 16:34:29'),
(18, 'Trichy', 1, '2023-04-13 21:33:30'),
(18, 'Trichy', 1, '2023-04-14 12:26:55'),
(18, 'Trichy', 1, '2023-04-15 22:17:49'),
(18, 'Trichy', 1, '2023-04-16 00:02:02'),
(18, 'Trichy', 1, '2023-04-17 17:47:00'),
(18, 'Trichy', 1, '2023-04-18 08:34:46'),
(4, 'Salem', 1, '2023-04-19 19:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` text NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Sno` bigint NOT NULL,
  `PhoneNumber` bigint NOT NULL,
  `Card type` text NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Password`, `Email`, `Sno`, `PhoneNumber`, `Card type`, `Location`) VALUES
('Ranjana', 'ef9b2a1f88afeb3e860b7a0027df46bb', 'Ranjana@gmail.com', 1122334455667781, 9112765432, 'PHHA', 'Salem'),
('Advaith', 'c25cfd36c3a46168868ef3b251706226', 'Advaith@gmail.com', 1122334455667787, 9113377455, 'PHHA', 'Trichy'),
('Lalitha', 'e1533cbe0815cd2c6172dd59b7ed42ab', 'Lalitha@gmail.com', 1122334455667788, 9113377455, 'NPHH', 'Chennai'),
('Vibishna', 'd0475d842b319446e8d061f5e27f1f70', 'test@gmail.com', 1122334455667789, 9127362245, 'NPHHNC', 'Chennai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Productno`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Shop_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `Productno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `Shop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
