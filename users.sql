-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(70) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`) VALUES
(2, 'chard', 'Cj', 'cj@gmail.com', '$2y$10$95gkIaCbp4RS72zbtfMGteYTxezFPRzKrgoSW9uoq2GED6YCSCAaW'),
(3, 'chard', 'Cj', 'cj@gmail.com', '$2y$10$u7THfId6cnf9gxJRoiHpGueRkrApPS3O7NmmLOm2DBeTbK3gTgv22'),
(4, 'chard', 'Cj', 'cj@gmail.com', '$2y$10$XDJlzX6F9XLlHm.NMfpJfuTCn1NBA/5n6H02cb.YMhO0NwTy1Ks2W'),
(5, 'harold vicquerra', 'rold', 'harold@gmail.com', '$2y$10$2lenG41MMGfjNN6PFLWEF.UG5j64OSAYWomoiY5YFGWs1TMkSAoF.'),
(6, 'harold vicquerra', 'rold', 'harold@gmail.com', '$2y$10$IbQZrcHnH2iE/6WJ9SO4b.rX6CU6rXtod0x5vf8ywLEPYkOglNdVy'),
(7, 'cjjjjj', 'cj23', 'cj23@gmail.com', '$2y$10$N5SdSCWYnQlqAIw.5zUlru0c9MYVz2k8R1xFjuXMcnEh1dTqpnXyy'),
(8, 'chard', 'ccc', 'cjj@gmail.com', '$2y$10$elWyhBaRRqSkDt3gmYg.xuLpHFlfCKTgQibnw09qRtzcy1Jq5mOmy'),
(9, 'zxc', 'zxc', 'a@gmail.com', '$2y$10$h9Jiz78OfBEWQLE.oHQhUOv4e7R0olaWPU2nK0ozJCFlp14QZ.dMG'),
(10, 'haroldd', 'herold', 'harolder@gmail.com', '$2y$10$PPrSyrfvdN7SJeJn0WysaO3STGuTT5RRY2cgSeLGqa5dciveDXAfu'),
(11, 'cal iboso', 'boyjohn', 'roy@gmail.com', '$2y$10$467HMnJ25JdvpN4Rdwhy.O12Y1aQWn4EZ6E6No3x3DRH7NSaEq3ua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
