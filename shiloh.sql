-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2024 at 08:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shiloh`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_users`
--

CREATE TABLE `ps_users` (
 `id` int(11) NOT NULL,
 `username` varchar(20) NOT NULL,
 `nickname` varchar(20) NOT NULL,
 `email` varchar(999) NOT NULL,
 `password` varchar(999) NOT NULL,
 `active` int(1) NOT NULL DEFAULT 0,
 `ubdate` varchar(255) DEFAULT NULL,
 `items` text DEFAULT '',
 `head` int(11) NOT NULL DEFAULT 0,
 `face` int(11) NOT NULL DEFAULT 0,
 `neck` int(11) NOT NULL DEFAULT 0,
 `body` int(11) NOT NULL DEFAULT 0,
 `hands` int(11) NOT NULL DEFAULT 0,
 `feet` int(11) NOT NULL DEFAULT 0,
 `photo` int(11) NOT NULL DEFAULT 0,
 `pin` int(11) NOT NULL DEFAULT 0,
 `colour` int(11) NOT NULL DEFAULT 1,
 `buddies` longtext NOT NULL DEFAULT '',
 `ignore` longtext NOT NULL DEFAULT '',
 `joindate` timestamp NOT NULL DEFAULT current_timestamp(),
 `lkey` varchar(50) NOT NULL DEFAULT '',
 `coins` int(11) NOT NULL DEFAULT 0,
 `rank` int(11) NOT NULL DEFAULT 1,
 `ips` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `igloos`
--

CREATE TABLE `igloos` (
 `ID` int(10) UNSIGNED NOT NULL,
 `Owner` int(10) UNSIGNED NOT NULL,
 `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
 `Floor` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
 `Music` smallint(6) NOT NULL DEFAULT '0',
 `Furniture` text NOT NULL,
 `Location` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
 `Likes` text NOT NULL,
 `Locked` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Dumping data for table `ps_users`
--

INSERT INTO `ps_users` (`id`, `username`, `nickname`, `email`, `password`, `active`, `ubdate`, `items`, `head`, `face`, `neck`, `body`, `hands`, `feet`, `photo`, `pin`, `colour`, `buddies`, `ignore`, `joindate`, `lkey`, `coins`, `rank`, `ips`) VALUES
(0, 'Rockhopper', 'Rockhopper', 'mascot@clubpenguin.com', MD5('rockhopper123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(1, 'Aunt Arctic', 'Aunt Arctic', 'mascot@clubpenguin.com', MD5('auntarctic123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(2, 'Cadence', 'Cadence', 'mascot@clubpenguin.com', MD5('cadence123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(3, 'Gary', 'Gary', 'mascot@clubpenguin.com', MD5('gary123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(4, 'Franky', 'Franky', 'mascot@clubpenguin.com', MD5('franky123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(5, 'Petey K', 'Petey K', 'mascot@clubpenguin.com', MD5('peteyk123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(6, 'G Billy', 'G Billy', 'mascot@clubpenguin.com', MD5('gbilly123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(7, 'Sensei', 'Sensei', 'mascot@clubpenguin.com', MD5('sensei123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(8, 'Stompin Bob', 'Stompin Bob', 'mascot@clubpenguin.com', MD5('stompinbob123'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 5, NULL),
(9, 'professor', 'professor', 'professor@clubpenguin.com', MD5('password'), 1, NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '2024-11-12 00:00:00', '', 1000000, 1, NULL);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `ps_users`
--
ALTER TABLE `ps_users`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `igloos`
 ADD PRIMARY KEY (`ID`);

ALTER TABLE `igloos`
MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ps_users`
--
ALTER TABLE `ps_users`
 MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

 COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;