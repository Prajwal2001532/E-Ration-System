-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 09:35 AM
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
-- Table structure for table `dailyinv`
--

CREATE TABLE `dailyinv` (
  `ProdId` int NOT NULL,
  `Location` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Totalquantity` int NOT NULL DEFAULT '1',
  `Price` int NOT NULL,
  `Mid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dailyinv`
--

INSERT INTO `dailyinv` (`ProdId`, `Location`, `quantity`, `Date`, `Totalquantity`, `Price`, `Mid`) VALUES
(2, 'Trichy', 1, '2023-04-07 14:31:12', 1, 13, 15),
(2, 'Trichy', 1, '2023-04-07 14:41:27', 1, 13, 15);

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
(10, 'Wheat', 2, 23);

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
(16, 'Parth', 'Parth@gmail.com', 'cb53d67a5193ab2510bcff5da8cf0b2a', 'Chennai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` text NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Sno` bigint NOT NULL,
  `Phone Number` bigint NOT NULL,
  `Card type` text NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Password`, `Email`, `Sno`, `Phone Number`, `Card type`, `Location`) VALUES
('Lalitha', 'e1533cbe0815cd2c6172dd59b7ed42ab', 'Lalitha@gmail.com', 1122334455667788, 9113377455, 'NPHH', 'Salem'),
('Vibishna', 'd0475d842b319446e8d061f5e27f1f70', 'test@gmail.com', 1122334455667789, 9113377455, 'NPHHNC', 'Madhurai');

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
  MODIFY `Productno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `Shop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
