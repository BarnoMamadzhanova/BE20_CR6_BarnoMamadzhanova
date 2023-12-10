-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 02:52 PM
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
-- Database: `be20_cr6_bigeventsbarnomamadzhanova`
--
CREATE DATABASE IF NOT EXISTS `be20_cr6_bigeventsbarnomamadzhanova` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be20_cr6_bigeventsbarnomamadzhanova`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231208122108', '2023-12-08 13:21:33', 57);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone_number`, `address`, `website`, `type`) VALUES
(1, 'Music Festival', '2023-12-15 18:00:00', 'A three-day music festival featuring various artists and bands from around the world.', 'painted-guitar-1087209-1280-6575938f4e7e0.jpg', 20000, 'info@musicfest.com', '+1234567890', '123 Main St, ZIP123, Rennes', 'https://www.musicfest.com', 'music'),
(2, 'Sports Championship', '2023-11-10 15:30:00', 'A championship featuring various sports competitions including football, basketball, and tennis.', 'crowd-1283691-1280-657593d1b3bb2.jpg', 10000, 'contact@sportschamp.com', '+441234567890', '456 Elm St, ZIP456, Melbourne', 'https://www.sportschamp.com', 'sport'),
(3, 'Blockbuster Movie Premiere', '2023-09-20 20:00:00', 'Exclusive premiere of a highly anticipated movie with red carpet events and screenings.', 'cinema-4213751-1280-657593f6a4979.jpg', 1100, 'premiere@blockbuster.com', '+611234567890', '789 Oak St, ZIP789, London', 'https://www.blockbustermovie.com', 'movie'),
(4, 'Shakespearean Play: Hamlet', '2023-08-05 19:00:00', 'A classic Shakespearean tragedy performed by renowned actors.', 'auditorium-86197-1280-6575940acc5d4.jpg', 800, 'tickets@theaterplay.com', '+271234567890', '101 Pine St, ZIP101, Vienna', 'https://www.theaterplay.com', 'theater'),
(5, 'Fashion Week Showcase', '2023-07-18 17:00:00', 'Glamorous fashion week showcasing the latest trends from top designers.', 'catwalk-1840941-1280-65759427b4cb4.jpg', 600, 'info@fashionweek.com', '+551234567890', '202 Maple St, ZIP202, Milano', 'https://www.fashionweek.com', 'fashion'),
(6, 'Tech Conference 2023', '2023-06-10 09:00:00', 'A tech conference featuring talks and workshops on emerging technologies.', 'chairs-2181919-1280-6575944da7f04.jpg', 1200, 'info@techconf.com', '+341234567890', '303 Cedar St, ZIP303, Geneva', 'https://www.techconf.com', 'science'),
(7, 'International Food Fest', '2023-05-25 11:00:00', 'An international food festival showcasing diverse cuisines from around the globe.', 'food-3052040-1280-6575946285584.jpg', 2000, 'contact@foodfest.com', '+771234567890', '404 Walnut St, ZIP404, Madrid', 'https://www.foodfest.com', 'food'),
(8, 'Modern Art Showcase', '2023-04-15 12:00:00', 'Exhibition featuring contemporary art pieces by renowned artists.', 'museum-398761-1280-65759485ec92c.jpg', 700, 'gallery@artexpo.com', '+881234567890', '505 Birch St, ZIP505, San Francisco', 'https://www.artexpo.com', 'art'),
(9, 'Stand-up Comedy Night', '2023-03-08 20:30:00', 'An evening filled with laughter featuring stand-up comedians.', 'comedian-2125295-1280-657594a5b28f0.jpg', 500, 'tickets@comedynight.com', '+991234567890', '606 Chopokov St, ZIP606, Astana', 'https://www.comedynight.com', 'art'),
(10, 'Game Expo 2023', '2023-02-20 10:00:00', 'A gaming convention showcasing the latest video games and technology.', 'child-3264751-1280-657594c0d5522.jpg', 1500, 'info@gameexpo.com', '+11234567890', '707 Oakwood St, ZIP707, Beijing', 'https://www.gameexpo.com', 'gaming'),
(11, 'International Dance Off', '2023-01-12 14:00:00', 'A dance competition featuring various dance styles and talented performers.', 'sports-5316825-1280-657594dc2cbe6.jpg', 800, 'competition@danceoff.com', '+441234567891', '808 Pinehurst St, ZIP808, Braga', 'https://www.danceoff.com', 'dance'),
(12, 'Annual Science Fair', '2022-12-05 09:00:00', 'A science fair showcasing innovative projects by young scientists.', 'fantasy-5025750-1280-657594f7caa88.jpg', 300, 'sciencefair@stemexpo.com', '+771234567892', '909 Myuondong St, ZIP909, Seoul', 'https://www.stemexpo.com', 'science'),
(13, 'Summer Music Fest', '2023-12-15 20:00:00', 'A one-night music extravaganza featuring top artists and bands.', 'crowd-1531431-1280-657595164a0dd.jpg', 30000, 'info@summermusicfest.com', '+112345678900', '101 Market St, ZIP101, Rome', 'https://www.summermusicfest.com', 'music'),
(14, 'City Marathon 2023', '2023-12-15 07:00:00', 'Annual city marathon open to all runners with various distance categories.', 'race-932254-1280-65759535ba7df.jpg', 5000, 'run@citymarathon.com', '+223456789012', '202 Park Ave, ZIP202, Lissabon', 'https://www.citymarathon.com', 'sport'),
(15, 'Outdoor Movie Night', '2023-12-15 19:30:00', 'A cinematic experience showing classic movies under the open sky.', 'movie-theatre-698683-1280-6575955318b55.jpg', 800, 'tickets@movienight.com', '+334567890123', '303 Stephansplatz 1, ZIP303, Vienna', 'https://www.movienight.com', 'movie'),
(16, 'Songwriting Masterclass', '2023-11-10 10:00:00', 'An intensive workshop teaching the art of songwriting by industry experts.', 'music-2617224-1280-6575956f9526a.jpg', 300, 'workshop@songwriting.com', '+445678901234', '404 Willow St, ZIP404, Dusseldorf', 'https://www.songwriting.com', 'music'),
(17, 'Summer Sports Camp', '2023-11-10 09:00:00', 'A week-long sports camp offering training in various sports for kids.', 'llanada-142416-1280-6575958ba60df.jpg', 2000, 'camp@sportscamp.com', '+556789012345', '505 Elm St, ZIP505, Tokyo', 'https://www.sportscamp.com', 'sport'),
(18, 'Wonka', '2023-11-10 18:30:00', 'Exclusive premiere of a blockbuster movie with a red carpet event.', 'wonka-chalamet-657595c1e83b3.jpg', 1300, 'premiere@moviepremiere.com', '+667890123456', '606 Oak St, ZIP606, Cannes', 'https://www.moviepremiere.com', 'movie'),
(19, 'Community Open Mic', '2023-10-05 19:00:00', 'An open mic night welcoming local musicians to showcase their talent.', 'musician-349790-1280-657595ddb47cc.jpg', 150, 'openmic@musicnight.com', '+778901234567', '707 Pine St, ZIP707, New York City', 'https://www.musicnight.com', 'music'),
(20, 'Citywide Tennis Tournament', '2023-10-05 08:00:00', 'Annual tennis tournament attracting players from all over the city.', 'athletes-1866487-1280-657595f9d3b09.jpg', 10000, 'tennis@citytournament.com', '+889012345678', '808 Cedar St, ZIP808, Acapulco', 'https://www.citytournament.com', 'sport');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
