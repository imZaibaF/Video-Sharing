-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 08:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `code` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail_path` text NOT NULL,
  `video_path` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `total_views` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `code`, `title`, `description`, `thumbnail_path`, `video_path`, `user_id`, `total_views`, `date_created`) VALUES
(8, 'LUwzRtMgZDEG0YcN', 'Sample', 'Sample', '', 'LUwzRtMgZDEG0YcN.mp4', 1, 1, '2020-11-07 17:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `avatar`, `date_created`) VALUES
(6, 'user', 'user', '', '678965', 'address', 'user@sample.com', 'user', '', '2024-02-16 13:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(30) NOT NULL,
  `upload_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `upload_id`, `user_id`, `ip_address`, `date_created`) VALUES
(1, 2, 0, '::1', '2020-11-07 14:44:37'),
(2, 2, 2, '', '2020-11-07 14:48:16'),
(3, 1, 2, '', '2020-11-07 14:59:06'),
(4, 1, 0, '::1', '2020-11-07 15:48:14'),
(5, 4, 0, '::1', '2020-11-07 15:49:45'),
(6, 3, 0, '::1', '2020-11-07 17:08:36'),
(7, 5, 0, '::1', '2020-11-07 17:08:55'),
(8, 8, 0, '::1', '2024-02-16 13:00:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
