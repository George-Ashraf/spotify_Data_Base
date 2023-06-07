-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 02:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `timee` varchar(100) NOT NULL,
  `premium_package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `type`, `timee`, `premium_package_id`) VALUES
(1, 'food', '5:00', 2),
(2, 'games', '1:00', 3),
(3, 'cars', '2:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `apple_id`
--

CREATE TABLE `apple_id` (
  `id` int(11) NOT NULL,
  `apple_account` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apple_id`
--

INSERT INTO `apple_id` (`id`, `apple_account`) VALUES
(4, 'mina.ashraf.com'),
(8, 'sara.ashraf.com');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `artist_rank` float NOT NULL,
  `number_of_listeners` int(11) NOT NULL,
  `promo_cards` varchar(100) NOT NULL,
  `donations` varchar(100) NOT NULL,
  `listener_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `artist_rank`, `number_of_listeners`, `promo_cards`, `donations`, `listener_id`) VALUES
(1, 'faia younan', 5, 100000, 'faia-f1', '5000', 1),
(2, 'kadim alsaher', 4, 500000, 'kadim-k1', '10000', 2),
(3, 'amr diab', 4.5, 900000, 'omar-om1', '100', 3),
(4, 'hamaky', 4.9, 500000, 'hamaky-h1', '9000', 4),
(5, 'faiuros', 5, 1000000, 'faiuors-fai1', '90', 5),
(6, 'faried alatrash', 5.4, 100000, 'faried-far1', '1000', 6),
(7, 'adbdl-halem hafas', 3.9, 50000, 'abdo-h1', '10', 7),
(8, 'asala', 3.9, 100000, 'asal-a1', '200', 8),
(9, 'angham', 3.5, 650000, 'angham-an1', '1000', 9),
(10, 'am kalsom', 5.9, 10000000, 'amkalsom-ham1', '1', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `artist_with_proadcast_with_listener`
-- (See below for the actual view)
--
CREATE TABLE `artist_with_proadcast_with_listener` (
`id` int(11)
,`artist_name` varchar(100)
,`artist_rank` float
,`number_of_listeners` int(11)
,`promo_cards` varchar(100)
,`donations` varchar(100)
,`proadcast_name` varchar(100)
,`number_of_flowers` int(11)
,`proadcast_type` varchar(100)
,`listener` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `artist_with_songs_with_listener`
-- (See below for the actual view)
--
CREATE TABLE `artist_with_songs_with_listener` (
`id` int(11)
,`name` varchar(100)
,`artist_rank` float
,`number_of_listeners` int(11)
,`promo_cards` varchar(100)
,`donations` varchar(100)
,`song_name` varchar(100)
,`date_of_release` date
,`song_album` varchar(100)
,`song_time` time
,`listener` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `blend`
--

CREATE TABLE `blend` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `invited_friends` varchar(50) NOT NULL,
  `listener_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blend`
--

INSERT INTO `blend` (`id`, `name`, `invited_friends`, `listener_id`) VALUES
(1, 'lovely friends', '60', 4),
(2, 'calm friends', '10', 6),
(3, 'speed friends', '30', 8),
(4, 'lonely friends', '5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE `facebook` (
  `id` int(11) NOT NULL,
  `facebook_account` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`id`, `facebook_account`, `email`) VALUES
(3, 'kerollos.ashraf@gmail.com', 'kerollos.ashraf@gmail.com'),
(6, 'merna.ashraf@gmail.com', 'merna.ashraf@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `valid_date` date NOT NULL,
  `signing_in_without_password_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `valid_date`, `signing_in_without_password_id`) VALUES
(1, '2023-05-24', 1),
(2, '2023-05-25', 2),
(3, '2023-05-26', 3),
(4, '2023-05-27', 4),
(5, '2023-05-28', 5);

-- --------------------------------------------------------

--
-- Table structure for table `listener`
--

CREATE TABLE `listener` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listener`
--

INSERT INTO `listener` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `online_payment`
--

CREATE TABLE `online_payment` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `premium_package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_payment`
--

INSERT INTO `online_payment` (`id`, `payment_type`, `premium_package_id`) VALUES
(1, 'orange pay', 2),
(2, 'fawry', 3),
(3, 'vodafone', 4),
(4, 'free', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_number`
--

CREATE TABLE `phone_number` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `sms_message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone_number`
--

INSERT INTO `phone_number` (`id`, `email`, `number`, `sms_message_id`) VALUES
(2, 'mona@gmail.com', 1223226011, 1),
(5, 'abanoub@gmail.com', 1223226055, 2),
(9, 'beshoy@gmail.com', 1223226077, 3);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `listener_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `listener_id`) VALUES
(1, 'favourite song', 1),
(2, 'lovely song', 10),
(3, 'calm', 9),
(4, 'songs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `premium_package`
--

CREATE TABLE `premium_package` (
  `id` int(11) NOT NULL,
  `period` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premium_package`
--

INSERT INTO `premium_package` (`id`, `period`, `price`) VALUES
(1, 'none', 0),
(2, '3 months', 300),
(3, '1 year', 500),
(4, '1 month', 100);

-- --------------------------------------------------------

--
-- Table structure for table `proadcast`
--

CREATE TABLE `proadcast` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number_of_flowers` int(11) NOT NULL,
  `proadcast_type` varchar(100) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proadcast`
--

INSERT INTO `proadcast` (`id`, `name`, `number_of_flowers`, `proadcast_type`, `artist_id`) VALUES
(1, 'yala nagani', 500000, 'funny', 1),
(2, 'agnia', 90000, 'comedy', 2),
(3, 'alhoub', 1000000, 'romantic', 5),
(4, 'the past', 60000, 'calm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `signing_in`
--

CREATE TABLE `signing_in` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwordd` varchar(100) NOT NULL,
  `listener_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signing_in`
--

INSERT INTO `signing_in` (`id`, `email`, `passwordd`, `listener_id`) VALUES
(1, 'george.ashraf@gmail.com', '123', 1),
(2, 'mona.ashraf@gmail.com', '456', 2),
(3, 'kerollos.ashraf@gmail.com', '3699', 3),
(4, 'mina.ashraf@gmail.com', '595894', 4),
(5, 'abanoub.ashraf@gmail.com', '3156', 5);

-- --------------------------------------------------------

--
-- Table structure for table `signing_in_without_password`
--

CREATE TABLE `signing_in_without_password` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `listener_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signing_in_without_password`
--

INSERT INTO `signing_in_without_password` (`id`, `email`, `listener_id`) VALUES
(1, 'merna.ashraf@gmail.com', 6),
(2, 'mariem.ashraf@gmail.com', 7),
(3, 'sara.ashraf@gmail.com', 8),
(4, 'beshoy.ashraf@gmail.com', 9),
(5, 'ahmed.ashraf@gmail.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `signing_up`
--

CREATE TABLE `signing_up` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `type_of_signing_up` varchar(100) NOT NULL,
  `listener_id` int(11) NOT NULL,
  `premium_package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signing_up`
--

INSERT INTO `signing_up` (`id`, `name`, `gender`, `date_of_birth`, `type_of_signing_up`, `listener_id`, `premium_package_id`) VALUES
(1, 'george', 'male', '2001-10-18', 'google', 1, 1),
(2, 'mona', 'female', '2004-08-02', 'phone number', 2, 4),
(3, 'kerollos', 'male', '2001-06-01', 'facebook', 3, 4),
(4, 'mina', 'male', '2001-11-30', 'apple id', 4, 1),
(5, 'abanoub', 'male', '2002-04-04', 'phone number', 5, 3),
(6, 'merna', 'female', '2005-01-09', 'facebook', 6, 2),
(7, 'mariem', 'female', '2001-08-08', 'google', 7, 3),
(8, 'sara', 'female', '2005-05-08', 'apple id', 8, 1),
(9, 'beshoy', 'male', '2001-10-10', 'phone number', 9, 1),
(10, 'ahmed', 'male', '2001-01-01', 'google', 10, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `signing_up_info_with_artist_name_subscription_type_payment_type`
-- (See below for the actual view)
--
CREATE TABLE `signing_up_info_with_artist_name_subscription_type_payment_type` (
`id` int(11)
,`listener_name` varchar(100)
,`gender` varchar(100)
,`date_of_birth` date
,`type_of_signing_up` varchar(100)
,`artist_name` varchar(100)
,`subscription_type` varchar(100)
,`payment_type` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `sms_message`
--

CREATE TABLE `sms_message` (
  `id` int(11) NOT NULL,
  `codee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_message`
--

INSERT INTO `sms_message` (`id`, `codee`) VALUES
(1, 1596),
(2, 3657),
(3, 6654);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_of_release` date NOT NULL,
  `song_album` varchar(100) NOT NULL,
  `song_time` time NOT NULL,
  `premium_package_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `blend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `date_of_release`, `song_album`, `song_time`, `premium_package_id`, `artist_id`, `playlist_id`, `blend_id`) VALUES
(1, 'flaytka thlo', '2013-05-05', 'tales of the heart', '04:33:00', 1, 1, 1, 1),
(2, 'ya qatily', '2013-01-01', 'tales oh the heart', '04:32:00', 1, 1, 1, 1),
(3, 'kifna tnaynatna', '2013-09-09', 'tales of the heart', '03:45:00', 1, 1, 2, 2),
(4, 'ghanni', '2013-07-07', 'tales of the heart', '03:47:00', 1, 1, 4, 4),
(5, 'yemken nesi', '2013-03-03', 'tales of the heart', '04:08:00', 2, 1, 3, 4),
(6, 'sallimleh alayh', '2011-05-05', 'none', '05:45:00', 1, 5, 1, 1),
(7, 'rajeen ya hawa', '2010-09-09', 'none', '04:45:00', 1, 5, 1, 3),
(8, 'kifak inta', '2009-05-06', 'none', '03:00:00', 1, 5, 3, 1),
(9, 'tamally maak', '2011-05-05', 'none', '03:50:00', 3, 3, 2, 4),
(10, 'alby we moftaho', '2002-09-09', 'none', '05:44:00', 3, 6, 3, 2),
(11, 'mahkamah', '2010-05-05', 'none', '07:20:00', 1, 2, 4, 2),
(12, 'ma balash', '2013-01-15', 'none', '03:20:00', 3, 4, 1, 1),
(13, 'ahwak', '2001-05-05', 'none', '04:40:00', 1, 7, 2, 2),
(14, 'bent akaber', '2020-05-05', 'none', '04:40:00', 3, 8, 2, 2),
(15, 'asameek elketeera', '2019-06-06', 'none', '03:00:00', 1, 9, 1, 1),
(16, 'alf leila we leial', '2015-05-05', 'none', '41:00:00', 1, 10, 3, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `songs_blend_creater`
-- (See below for the actual view)
--
CREATE TABLE `songs_blend_creater` (
`id` int(11)
,`song_name` varchar(100)
,`song_time` time
,`blend_name` varchar(50)
,`invited_friends` varchar(50)
,`blend_creater` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `songs_playlist_creater`
-- (See below for the actual view)
--
CREATE TABLE `songs_playlist_creater` (
`id` int(11)
,`song_name` varchar(100)
,`song_time` time
,`playlist_name` varchar(100)
,`playlist_creater` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `artist_with_proadcast_with_listener`
--
DROP TABLE IF EXISTS `artist_with_proadcast_with_listener`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artist_with_proadcast_with_listener`  AS SELECT `artist`.`id` AS `id`, `artist`.`name` AS `artist_name`, `artist`.`artist_rank` AS `artist_rank`, `artist`.`number_of_listeners` AS `number_of_listeners`, `artist`.`promo_cards` AS `promo_cards`, `artist`.`donations` AS `donations`, `proadcast`.`name` AS `proadcast_name`, `proadcast`.`number_of_flowers` AS `number_of_flowers`, `proadcast`.`proadcast_type` AS `proadcast_type`, `signing_up`.`name` AS `listener` FROM (((`artist` join `proadcast` on(`artist`.`id` = `proadcast`.`artist_id`)) join `listener` on(`listener`.`id` = `artist`.`listener_id`)) join `signing_up` on(`signing_up`.`listener_id` = `listener`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `artist_with_songs_with_listener`
--
DROP TABLE IF EXISTS `artist_with_songs_with_listener`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artist_with_songs_with_listener`  AS SELECT `artist`.`id` AS `id`, `artist`.`name` AS `name`, `artist`.`artist_rank` AS `artist_rank`, `artist`.`number_of_listeners` AS `number_of_listeners`, `artist`.`promo_cards` AS `promo_cards`, `artist`.`donations` AS `donations`, `songs`.`name` AS `song_name`, `songs`.`date_of_release` AS `date_of_release`, `songs`.`song_album` AS `song_album`, `songs`.`song_time` AS `song_time`, `signing_up`.`name` AS `listener` FROM (((`artist` join `songs` on(`artist`.`id` = `songs`.`artist_id`)) join `listener` on(`listener`.`id` = `artist`.`listener_id`)) join `signing_up` on(`signing_up`.`listener_id` = `listener`.`id`)) ORDER BY `artist`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `signing_up_info_with_artist_name_subscription_type_payment_type`
--
DROP TABLE IF EXISTS `signing_up_info_with_artist_name_subscription_type_payment_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `signing_up_info_with_artist_name_subscription_type_payment_type`  AS SELECT `listener`.`id` AS `id`, `signing_up`.`name` AS `listener_name`, `signing_up`.`gender` AS `gender`, `signing_up`.`date_of_birth` AS `date_of_birth`, `signing_up`.`type_of_signing_up` AS `type_of_signing_up`, `artist`.`name` AS `artist_name`, `premium_package`.`period` AS `subscription_type`, `online_payment`.`payment_type` AS `payment_type` FROM ((((`signing_up` join `listener` on(`signing_up`.`listener_id` = `listener`.`id`)) join `artist` on(`artist`.`listener_id` = `listener`.`id`)) join `premium_package` on(`premium_package`.`id` = `signing_up`.`premium_package_id`)) join `online_payment` on(`online_payment`.`premium_package_id` = `premium_package`.`id`)) ORDER BY `signing_up`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `songs_blend_creater`
--
DROP TABLE IF EXISTS `songs_blend_creater`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `songs_blend_creater`  AS SELECT `songs`.`id` AS `id`, `songs`.`name` AS `song_name`, `songs`.`song_time` AS `song_time`, `blend`.`name` AS `blend_name`, `blend`.`invited_friends` AS `invited_friends`, `signing_up`.`name` AS `blend_creater` FROM (((`songs` join `blend` on(`songs`.`blend_id` = `blend`.`id`)) join `listener` on(`listener`.`id` = `blend`.`listener_id`)) join `signing_up` on(`signing_up`.`listener_id` = `listener`.`id`)) ORDER BY `songs`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `songs_playlist_creater`
--
DROP TABLE IF EXISTS `songs_playlist_creater`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `songs_playlist_creater`  AS SELECT `songs`.`id` AS `id`, `songs`.`name` AS `song_name`, `songs`.`song_time` AS `song_time`, `playlist`.`name` AS `playlist_name`, `signing_up`.`name` AS `playlist_creater` FROM (((`songs` join `playlist` on(`songs`.`playlist_id` = `playlist`.`id`)) join `listener` on(`listener`.`id` = `playlist`.`listener_id`)) join `signing_up` on(`signing_up`.`listener_id` = `listener`.`id`)) ORDER BY `songs`.`id` ASC  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ohkgjkjkoo` (`premium_package_id`);

--
-- Indexes for table `apple_id`
--
ALTER TABLE `apple_id`
  ADD KEY `qqqqqqqooo` (`id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `oocccccccco` (`listener_id`);

--
-- Indexes for table `blend`
--
ALTER TABLE `blend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oovbnmo` (`listener_id`);

--
-- Indexes for table `facebook`
--
ALTER TABLE `facebook`
  ADD KEY `oyyyyyyyyyoo` (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `okjhggfoo` (`signing_in_without_password_id`);

--
-- Indexes for table `listener`
--
ALTER TABLE `listener`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payment`
--
ALTER TABLE `online_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ofddfssssssoo` (`premium_package_id`);

--
-- Indexes for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD KEY `odfdfddfsoo` (`sms_message_id`),
  ADD KEY `orrrrrroo` (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oosdsssfdo` (`listener_id`);

--
-- Indexes for table `premium_package`
--
ALTER TABLE `premium_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proadcast`
--
ALTER TABLE `proadcast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oocvfvcco` (`artist_id`);

--
-- Indexes for table `signing_in`
--
ALTER TABLE `signing_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oodddddddo` (`listener_id`);

--
-- Indexes for table `signing_in_without_password`
--
ALTER TABLE `signing_in_without_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ottoo` (`listener_id`);

--
-- Indexes for table `signing_up`
--
ALTER TABLE `signing_up`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ooo` (`listener_id`),
  ADD KEY `oodo` (`premium_package_id`);

--
-- Indexes for table `sms_message`
--
ALTER TABLE `sms_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aaa` (`premium_package_id`),
  ADD KEY `fff` (`artist_id`),
  ADD KEY `nnn` (`playlist_id`),
  ADD KEY `uuu` (`blend_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blend`
--
ALTER TABLE `blend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listener`
--
ALTER TABLE `listener`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `online_payment`
--
ALTER TABLE `online_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `premium_package`
--
ALTER TABLE `premium_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proadcast`
--
ALTER TABLE `proadcast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signing_in`
--
ALTER TABLE `signing_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signing_in_without_password`
--
ALTER TABLE `signing_in_without_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signing_up`
--
ALTER TABLE `signing_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sms_message`
--
ALTER TABLE `sms_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `ohkgjkjkoo` FOREIGN KEY (`premium_package_id`) REFERENCES `premium_package` (`id`);

--
-- Constraints for table `apple_id`
--
ALTER TABLE `apple_id`
  ADD CONSTRAINT `qqqqqqqooo` FOREIGN KEY (`id`) REFERENCES `signing_up` (`id`);

--
-- Constraints for table `artist`
--
ALTER TABLE `artist`
  ADD CONSTRAINT `oocccccccco` FOREIGN KEY (`listener_id`) REFERENCES `listener` (`id`);

--
-- Constraints for table `blend`
--
ALTER TABLE `blend`
  ADD CONSTRAINT `oovbnmo` FOREIGN KEY (`listener_id`) REFERENCES `listener` (`id`);

--
-- Constraints for table `facebook`
--
ALTER TABLE `facebook`
  ADD CONSTRAINT `oyyyyyyyyyoo` FOREIGN KEY (`id`) REFERENCES `signing_up` (`id`);

--
-- Constraints for table `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `okjhggfoo` FOREIGN KEY (`signing_in_without_password_id`) REFERENCES `signing_in_without_password` (`id`);

--
-- Constraints for table `online_payment`
--
ALTER TABLE `online_payment`
  ADD CONSTRAINT `ofddfssssssoo` FOREIGN KEY (`premium_package_id`) REFERENCES `premium_package` (`id`);

--
-- Constraints for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD CONSTRAINT `odfdfddfsoo` FOREIGN KEY (`sms_message_id`) REFERENCES `sms_message` (`id`),
  ADD CONSTRAINT `orrrrrroo` FOREIGN KEY (`id`) REFERENCES `signing_up` (`id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `oosdsssfdo` FOREIGN KEY (`listener_id`) REFERENCES `listener` (`id`);

--
-- Constraints for table `proadcast`
--
ALTER TABLE `proadcast`
  ADD CONSTRAINT `oocvfvcco` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`);

--
-- Constraints for table `signing_in`
--
ALTER TABLE `signing_in`
  ADD CONSTRAINT `oodddddddo` FOREIGN KEY (`listener_id`) REFERENCES `listener` (`id`);

--
-- Constraints for table `signing_in_without_password`
--
ALTER TABLE `signing_in_without_password`
  ADD CONSTRAINT `ottoo` FOREIGN KEY (`listener_id`) REFERENCES `listener` (`id`);

--
-- Constraints for table `signing_up`
--
ALTER TABLE `signing_up`
  ADD CONSTRAINT `oodo` FOREIGN KEY (`premium_package_id`) REFERENCES `premium_package` (`id`),
  ADD CONSTRAINT `ooo` FOREIGN KEY (`listener_id`) REFERENCES `listener` (`id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `aaa` FOREIGN KEY (`premium_package_id`) REFERENCES `premium_package` (`id`),
  ADD CONSTRAINT `fff` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`),
  ADD CONSTRAINT `nnn` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `uuu` FOREIGN KEY (`blend_id`) REFERENCES `blend` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
