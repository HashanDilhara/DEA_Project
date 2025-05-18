-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 07:36 AM
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
-- Database: `moviesitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `booking_date` varchar(50) NOT NULL,
  `booking_time` varchar(20) NOT NULL,
  `screen` varchar(20) NOT NULL,
  `seats` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `booking_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_date`, `booking_time`, `screen`, `seats`, `total_price`, `payment_id`, `booking_timestamp`) VALUES
(1, 'Monday', '10:00 PM', 'Screen 3', 'R-1 S-5', 110.00, '5WC48788A2254934E', '2024-12-14 09:27:11'),
(2, 'Tomorrow', '11:00 AM', 'Screen 4', 'R-1 S-4,R-1 S-7', 220.00, '8S610411AX213680Y', '2024-12-14 10:06:16'),
(3, 'Monday', '1:00 PM', 'Screen 5', 'R-1 S-9,R-1 S-10', 8.00, '03479911054725239', '2024-12-14 10:27:58'),
(4, 'Wednesday', '10:00 PM', 'Screen 3', 'R-1 S-6,R-1 S-9', 8.00, '8D392720565632404', '2024-12-14 10:41:42'),
(5, 'Tuesday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '3SL26691XW9400252', '2024-12-14 10:43:23'),
(6, 'Wednesday', '10:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '9EV85100266298517', '2024-12-14 10:45:18'),
(7, 'Monday', '9:00 PM', 'Screen 1', 'R-1 S-4,R-1 S-9', 8.00, '8M024818EY494463N', '2024-12-14 10:51:52'),
(8, 'Tuesday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '80368853DX935813S', '2024-12-14 10:54:06'),
(9, 'Tuesday', '3:00 PM', 'Screen 4', 'R-1 S-4,R-1 S-8', 8.00, '3XB244769U2886009', '2024-12-14 10:59:20'),
(10, 'Monday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '9XS179679A401711K', '2024-12-14 11:01:17'),
(11, 'Tuesday', '3:00 PM', 'Screen 4', 'R-1 S-5', 4.00, '76108950UM424481S', '2024-12-14 11:29:49'),
(12, 'Tuesday', '10:00 PM', 'Screen 3', 'R-1 S-5,R-1 S-7', 8.00, '78E7219571448011W', '2024-12-14 11:33:44'),
(13, 'Tomorrow', '12:00 PM', 'Screen 5', 'R-1 S-4', 4.00, '5KL343972V580743D', '2024-12-14 11:42:56'),
(14, 'Monday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-9', 8.00, '4UF66611XL818952S', '2024-12-14 11:56:24'),
(15, 'Tuesday', '3:00 PM', 'Screen 4', 'R-1 S-5', 4.00, '51F534369J1815847', '2024-12-14 11:59:13'),
(16, 'Monday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-9', 8.00, '836195238X693235F', '2024-12-14 12:15:08'),
(17, 'Wednesday', '1:00 PM', 'Screen 5', 'R-1 S-4,R-1 S-9', 8.00, '03N37584JM232611R', '2024-12-14 12:18:02'),
(18, 'Tuesday', '3:00 PM', 'Screen 4', 'R-1 S-4,R-1 S-9', 8.00, '3CA33347PG699315D', '2024-12-14 12:42:06'),
(19, 'Thursday', '12:00 PM', 'Screen 5', 'R-2 S-7,R-1 S-10,R-2 S-10', 12.00, '9PJ96643UR9958619', '2024-12-14 12:44:15'),
(20, 'Monday', '7:00 PM', 'Screen 4', 'R-1 S-6,R-1 S-9', 8.00, '7959933908736335Y', '2024-12-14 12:47:36'),
(21, 'Tuesday', '12:00 PM', 'Screen 5', 'R-1 S-5,R-1 S-9', 8.00, '6SG91685T8595760J', '2024-12-14 13:44:15'),
(22, 'Monday', '11:00 AM', 'Screen 4', 'R-1 S-7,R-1 S-10', 8.00, '68C314330A680784P', '2024-12-14 13:54:08'),
(23, 'Monday', '7:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-9', 8.00, '2H557622BM826770U', '2024-12-14 14:17:02'),
(24, 'Monday', '3:00 PM', 'Screen 4', 'R-1 S-6,R-1 S-10', 8.00, '7BA7953945948381H', '2024-12-14 14:37:08'),
(25, 'Tuesday', '10:00 PM', 'Screen 3', 'R-1 S-5,R-1 S-9', 8.00, '66G99214NG072801W', '2024-12-14 14:51:23'),
(26, 'Tuesday', '12:00 PM', 'Screen 5', 'R-1 S-7', 4.00, '56K785864X9276813', '2024-12-14 16:55:04'),
(27, 'Friday', '12:00 PM', 'Screen 5', 'R-1 S-4,R-1 S-9', 8.00, '13N870414A5067408', '2024-12-14 16:58:47'),
(28, 'Monday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '3CN77567KW756913B', '2024-12-14 17:07:55'),
(29, 'Thursday', '9:05 AM', 'Screen 5', 'R-1 S-3,R-1 S-7', 8.00, '50W83409SB1716120', '2024-12-14 17:18:19'),
(30, 'Thursday', '11:00 AM', 'Screen 4', 'R-1 S-5,R-1 S-9', 8.00, '65W64966K1430570B', '2024-12-14 17:24:24'),
(31, 'Tuesday', '7:00 PM', 'Screen 4', 'R-1 S-4,R-1 S-7,R-1 S-9,R-2 S-4,R-2 S-5,R-2 S-6,R-5 S-7,R-6 S-3,R-5 S-9,R-6 S-2', 40.00, '8B9818557F693634M', '2024-12-14 17:43:28'),
(32, 'Wednesday', '7:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '3NG00044JU0836706', '2024-12-14 18:17:15'),
(33, 'Tomorrow', '12:00 PM', 'Screen 5', 'R-1 S-5', 4.00, '5GX98346SE175723T', '2024-12-14 18:21:06'),
(34, '', '11:00 AM', 'Screen 4', 'R-1 S-4,R-1 S-8,R-2 S-10', 12.00, '01900909MK913152D', '2024-12-14 18:43:55'),
(35, 'Wednesday', '11:00 AM', 'Screen 4', 'R-1 S-4,R-2 S-10,R-5 S-6', 12.00, '54H13686EN329704X', '2024-12-14 18:50:37'),
(36, 'Wednesday', '3:00 PM', 'Screen 4', 'R-1 S-5,R-1 S-8', 8.00, '91K80140GS673762K', '2024-12-14 18:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `message`, `submission_date`) VALUES
(1, 'Hashan', 'Dilhara', 'hashandilhara@icloud.com', '12345', 'Hashan', '2025-06-12 05:14:42'),
(2, 'Test', 'DEA', 'test@dea.com', '12345', 'Hello TEST', '2025-06-13 05:17:22'),
(3, 'User1', 'DEA', 'test@dea.com', '0000', 'hello User1', '2025-06-15 05:18:34'),
(4, 'User2', 'DEA', 'test2@dea.com', '123456', 'Hello User2', '2025-06-12 05:38:39'),
(5, 'aaa', 'bbb', 'a@gmail.com', '123445', 'abc', '2024-12-14 09:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345'),
(2, 'll', 'l@gmail.com', '123'),
(3, 'thevi', 'thevi@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_booking_date` (`booking_date`),
  ADD KEY `idx_payment_id` (`payment_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
