-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2025 at 06:56 AM
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
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$bzyJFVm0xW5b9mtTqUOpDuMOLC9XIDp8olQ7Pl2B4BCsMJyeah4Gy');

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(150) DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') NOT NULL,
  `units_needed` int(11) DEFAULT 1,
  `city` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(30) DEFAULT NULL,
  `contact_email` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_requests`
--

INSERT INTO `blood_requests` (`id`, `patient_name`, `blood_group`, `units_needed`, `city`, `contact_phone`, `contact_email`, `created_at`) VALUES
(1, 'khushi', 'A+', 2, 'bnglr', '555', 'khushi34@gmail.com', '2025-11-20 16:59:24'),
(2, 'navya', 'A-', 2, 'mysuru', '4545', 'navya45@gmail.com', '2025-11-20 17:00:40'),
(3, 'ramesh', 'O+', 2, '', '90900', 'ramesh78@gmail.com', '2025-11-20 17:01:23'),
(4, 'kavya', 'O+', 4, 'ckmglr', '456789', 'kavya345@gmail.com', '2025-11-20 17:09:57'),
(5, 'kavya', 'A+', 3, '', '456789', 'kavya345@gmail.com', '2025-11-20 17:10:25'),
(6, 'kavya', 'A+', 1, '', '456789', 'kavya345@gmail.com', '2025-11-21 07:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `last_donation` date DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `email`, `phone`, `blood_group`, `city`, `last_donation`, `is_available`, `created_at`) VALUES
(1, 'sneha', 'sneha31@gmail.com', '999', 'A+', 'ckmnglr', '2025-08-13', 1, '2025-11-20 16:57:20'),
(2, 'vidya', 'vidya127@gmail.com', '343456', 'O+', 'mysuru', NULL, 1, '2025-11-20 16:57:40'),
(3, 'mahesh', 'mayu2004@gmail.com', '9098', 'A+', 'sagar', '2025-05-12', 1, '2025-11-20 16:58:50'),
(4, 'ananya', 'ananya21@gmail.com', '00896756', 'B-', 'belagavi', '2025-03-10', 1, '2025-11-20 17:09:13'),
(5, 'bindu', 'bindu34@gmail.com', '45567', 'A+', 'mysr', '2025-05-12', 1, '2025-11-21 06:50:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
