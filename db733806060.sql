-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Host: db733806060.db.1and1.com
-- Generation Time: Apr 12, 2018 at 04:41 PM
-- Server version: 5.5.59-0+deb7u1-log
-- PHP Version: 5.4.45-0+deb7u13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db733806060`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `gameid` int(3) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameid`, `location`, `created_at`, `updated_at`) VALUES
(1, 'London', '2018-04-06 23:17:31', '2018-04-06 23:17:31'),
(2, 'Sydney', '2018-04-06 23:17:31', '2018-04-06 23:17:31'),
(3, 'Manchester', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(4, 'Liverpool', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(5, 'Huddersfield', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(6, 'Bradford', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(7, 'Huddersfield', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(8, 'Halifax', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(9, 'Manchester', '2018-04-10 22:00:00', '2018-04-10 22:00:00'),
(10, 'Dewsbury', '2018-04-10 22:00:00', '2018-04-10 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2018_04_04_003641_create_players_table', 2),
(4, '2018_04_04_004431_create_game_table', 3),
(5, '2018_04_04_010553_create_scorepl1_table', 3),
(6, '2018_04_04_010612_create_scorepl2_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gameswon` int(3) NOT NULL DEFAULT '0',
  `gameslost` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `players_nickname_unique` (`nickname`),
  UNIQUE KEY `players_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `title`, `nickname`, `firstname`, `surname`, `email`, `phone`, `password`, `created_at`, `updated_at`, `gameswon`, `gameslost`) VALUES
(2, 'Mr', 'WSaleem', 'Wasil', 'Saleem', 'WSaleem@yahoo.com', '01258448525', 'Password', '2018-04-05 20:05:03', '2018-04-12 11:44:55', 1, 1),
(4, 'Mr', 'Asad11', 'Asad', 'Aslam', 'asadaslam@gmail.com', '07445898485', 'Password', '2018-04-12 13:50:45', NULL, 1, 1),
(5, 'Mr', 'Gurps11', 'Gurpreet', 'Aluja', 'Gurps@yahoo.com', '07558525585', 'Password', '2018-04-12 13:52:06', NULL, 0, 1),
(6, 'Mr', 'stella22', 'Stella', 'Smith', 'stella22@yahoo.com', '01484300785', 'Password', '2018-04-12 13:54:53', '2018-04-12 12:03:22', 1, 1),
(7, 'Dr', 'Ahmedkhan', 'Ahmed', 'Khan', 'Akhan@yahoo.com', '01274500528', 'Password', '2018-04-12 13:56:49', NULL, 1, 1),
(8, 'Ms', 'ClaudiaS', 'Claudia', 'Smith', 'ClaudiaS@gmail.com', '07285545583', 'Password', '2018-04-12 13:58:36', NULL, 0, 2),
(9, 'Dr', 'trevornoah', 'Trevor', 'Noah', 'trevornoah@gmail.com', '01484522582', 'Password', '2018-04-12 14:01:16', NULL, 1, 1),
(10, 'Mr', 'AkeelLatif', 'Akeel', 'Latif', 'akeellatif@yahoo.com', '01274200456', 'Password', '2018-04-12 14:02:48', NULL, 2, 0),
(11, 'Mr', 'SethMeyer', 'Seth', 'Meyer', 'SethMeyer@yahoo.com', '07558585578', 'Password', '2018-04-12 14:04:35', NULL, 1, 1),
(12, 'Mr', 'AlanTuring', 'Alan', 'Turing', 'AlanTuring@yahoo.co.uk', '01484522744', 'Password', '2018-04-12 14:05:41', NULL, 1, 1),
(13, 'Mr', 'BernersLee', 'Tim', 'BernersLee', 'Berners-Lee@gmail.com', '07225841152', 'Password', '2018-04-12 14:07:44', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scorepl1s`
--

CREATE TABLE IF NOT EXISTS `scorepl1s` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `gameid` int(3) NOT NULL,
  `playerid` int(3) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`),
  KEY `playerid` (`playerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `scorepl1s`
--

INSERT INTO `scorepl1s` (`id`, `gameid`, `playerid`, `score`, `created_at`) VALUES
(1, 1, 4, 20, '2018-04-12 14:20:07'),
(2, 2, 2, 52, '2018-04-05 22:42:46'),
(3, 3, 5, 36, '2018-04-12 14:20:07'),
(4, 4, 6, 52, '2018-04-12 14:20:07'),
(5, 5, 7, 51, '2018-04-12 14:20:07'),
(6, 6, 8, 70, '2018-04-12 14:20:07'),
(7, 7, 9, 89, '2018-04-12 14:20:07'),
(8, 8, 10, 82, '2018-04-12 14:20:07'),
(9, 9, 11, 69, '2018-04-12 14:20:07'),
(10, 10, 12, 92, '2018-04-12 14:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `scorepl2s`
--

CREATE TABLE IF NOT EXISTS `scorepl2s` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `gameid` int(3) NOT NULL,
  `playerid` int(3) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`),
  KEY `playerid` (`playerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `scorepl2s`
--

INSERT INTO `scorepl2s` (`id`, `gameid`, `playerid`, `score`, `created_at`) VALUES
(1, 1, 2, 58, '2018-04-06 00:08:26'),
(2, 2, 4, 101, '2018-04-12 14:29:50'),
(3, 3, 13, 63, '2018-04-12 14:29:50'),
(4, 4, 12, 67, '2018-04-12 14:29:50'),
(5, 5, 11, 67, '2018-04-12 14:29:50'),
(6, 6, 10, 79, '2018-04-12 14:29:50'),
(7, 7, 8, 25, '2018-04-12 14:29:50'),
(8, 8, 9, 50, '2018-04-12 14:29:50'),
(9, 9, 7, 76, '2018-04-12 14:29:50'),
(10, 10, 6, 110, '2018-04-12 14:29:50');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scorepl1s`
--
ALTER TABLE `scorepl1s`
  ADD CONSTRAINT `player` FOREIGN KEY (`playerid`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game` FOREIGN KEY (`gameid`) REFERENCES `games` (`gameid`) ON UPDATE CASCADE;

--
-- Constraints for table `scorepl2s`
--
ALTER TABLE `scorepl2s`
  ADD CONSTRAINT `player1` FOREIGN KEY (`playerid`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game1` FOREIGN KEY (`gameid`) REFERENCES `games` (`gameid`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
