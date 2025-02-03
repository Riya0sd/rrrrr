-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 07:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `user_role` varchar(100) NOT NULL,
  `adderass` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `brand_logo` text NOT NULL,
  `reg_time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL,
  `rendom_tocan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `user_name`, `email`, `mobile_number`, `user_role`, `adderass`, `password`, `user_photo`, `brand_logo`, `reg_time`, `status`, `rendom_tocan`) VALUES
(1, 'Ashraful Khan siyam', 'codersiyam', 'codersiyam@gmail.com', '01783867763', 'Admin', 'Madaripur', 'coder2y6u', '', '', '2025-02-02 12:00:58', 'Active', ''),
(2, 'Siyam', 'codersiyam350', 'codersiyan@gmail.com', '+8800178386763', 'Admin', 'Madaripur', 'codersiyam', '', '', '2025-02-02 12:18:25', 'Active', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
