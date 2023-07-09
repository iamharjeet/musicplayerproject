-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2023 at 11:57 AM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "-02:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicplayerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Breakout', 1, 1, 'assets/images/artwork/breakout.jpg'),
(2, 'Enrique', 2, 2, 'assets/images/artwork/enrique.jpg'),
(3, 'Hannah Montana Forever', 1, 2, 'assets/images/artwork/forever.jpg'),
(4, 'Insomniac', 2, 2, 'assets/images/artwork/insomniac.jpg'),
(5, 'The Marshall Mathers LP', 3, 3, 'assets/images/artwork/marshallmathers.jpg'),
(6, 'Meet Miley Cyrus', 1, 2, 'assets/images/artwork/meetmileycyrus.jpg'),
(7, 'My World 2.0', 4, 5, 'assets/images/artwork/myworld.jpg'),
(8, 'Recovery', 3, 3, 'assets/images/artwork/recovery.jpg'),
(9, 'Hannah Montana The Movie', 1, 2, 'assets/images/artwork/themovie.jpg'),
(10, 'Miscellaneous English', 5, 2, 'assets/images/artwork/miscellaneous.jpg'),
(11, 'Guru Randhawa', 6, 11, 'assets/images/artwork/guru.jpg'),
(12, 'Karan Aujla', 7, 11, 'assets/images/artwork/karan.jpg'),
(13, 'Parmish Verma', 8, 11, 'assets/images/artwork/parmish.jpg'),
(14, 'Sanam', 9, 12, 'assets/images/artwork/sanam.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Miley Cyrus'),
(2, 'Enrique Iglesias'),
(3, 'Eminem'),
(4, 'Justin Bieber'),
(5, 'Miscellaneous'),
(6, 'Guru Randhawa'),
(7, 'Karan Aujla'),
(8, 'Parmish Verma'),
(9, 'Sanam');

-- --------------------------------------------------------
--

-- --------------------------------------------------------

--
-- Table structure for table `flix_entities`
-- --------------------------------------------------------

--
-- Table structure for table `flix_videoprogress`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Punjabi'),
(12, 'Hindi');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'My Playlist', 'harjeet', '2019-08-30 00:00:00'),
(9, 'MP1', 'test1', '2019-09-07 00:00:00'),
(10, 'Punjabi', 'guest', '2019-11-15 00:00:00'),
(11, 'Calm', 'guest', '2019-11-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 33, 1, 0),
(2, 35, 1, 1),
(3, 19, 2, 0),
(4, 29, 4, 0),
(5, 35, 4, 1),
(6, 34, 5, 0),
(7, 51, 10, 0),
(8, 52, 10, 1),
(9, 54, 10, 2),
(10, 55, 10, 3),
(11, 58, 10, 4),
(12, 60, 10, 5),
(13, 61, 10, 6),
(14, 62, 10, 7),
(15, 47, 10, 8),
(16, 48, 10, 9),
(17, 73, 11, 0),
(18, 74, 11, 1),
(19, 31, 11, 2),
(20, 2, 11, 3),
(21, 23, 11, 4),
(22, 37, 11, 5),
(23, 38, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '7 Things', 1, 1, 1, '3:24', 'assets/music/7-things.mp3', 1, 1),
(2, 'Bottom of The Ocean', 1, 1, 1, '3:14', 'assets/music/bottom-of-the-ocean.mp3', 2, 3),
(3, 'Breakout', 1, 1, 1, '3:26', 'assets/music/breakout.mp3', 3, 0),
(4, 'Goodbye', 1, 1, 1, '3:52', 'assets/music/goodbye.mp3', 4, 0),
(5, 'See You Again', 1, 1, 1, '3:06', 'assets/music/see-you-again.mp3', 5, 1),
(6, 'Simple Song', 1, 1, 1, '3:31', 'assets/music/simple-song.mp3', 6, 2),
(7, 'The Driveway', 1, 1, 1, '3:43', 'assets/music/the-driveway.mp3', 7, 4),
(8, 'Bailamos', 2, 2, 2, '3:33', 'assets/music/bailamos.mp3', 1, 1),
(9, 'Be With You', 2, 2, 2, '3:45', 'assets/music/be-with-you.mp3', 2, 1),
(10, 'I Miss You (Spanish)', 2, 2, 5, '3:55', 'assets/music/i-miss-you-spanish.mp3', 3, 3),
(11, 'Been Here All Along', 1, 3, 2, '4:02', 'assets/music/been-here-all-along.mp3', 1, 2),
(12, 'Need A Little Love', 1, 3, 2, '3:55', 'assets/music/need-a-little-love.mp3', 2, 3),
(13, 'Ordinary Girl', 1, 3, 2, '2:56', 'assets/music/ordinary_girl.mp3', 3, 1),
(14, 'Dream', 1, 9, 2, '3:21', 'assets/music/dream.mp3', 1, 3),
(15, 'Lets Get Crazy', 1, 9, 2, '2:36', 'assets/music/lets_get_crazy.mp3', 2, 0),
(16, 'The Climb', 1, 9, 2, '3:57', 'assets/music/the_climb.mp3', 3, 0),
(17, 'Miss You', 2, 4, 2, '3:33', 'assets/music/miss-you.mp3', 1, 3),
(18, 'Somebodys Me', 2, 4, 2, '4:00', 'assets/music/somebodys-me.mp3', 2, 1),
(19, 'Rap God', 3, 5, 3, '6:03', 'assets/music/rap-god.mp3', 1, 4),
(20, 'Stan', 3, 5, 3, '6:43', 'assets/music/stan.mp3', 2, 1),
(21, 'The Monster', 3, 5, 3, '4:10', 'assets/music/the-monster.mp3', 3, 0),
(22, 'Bigger Than Us', 1, 6, 2, '2:57', 'assets/music/bigger-than-us.mp3', 1, 0),
(23, 'Every Part Of Me', 1, 6, 2, '3:29', 'assets/music/every-part-of-me.mp3', 2, 2),
(24, 'Life Is What You Make It', 1, 6, 2, '3:11', 'assets/music/life-is-what-you-make-it.mp3', 3, 0),
(25, 'Nobody Is Prefect', 1, 6, 2, '3:20', 'assets/music/nobody-is-perfect.mp3', 4, 0),
(26, 'One In A Million', 1, 6, 2, '3:55', 'assets/music/one-in-a-million.mp3', 5, 0),
(27, 'Right Here', 1, 6, 2, '2:41', 'assets/music/right_here.mp3', 6, 0),
(28, 'Rockstar', 1, 6, 2, '2:56', 'assets/music/rockstar.mp3', 7, 0),
(29, 'Baby', 4, 7, 5, '3:36', 'assets/music/baby.mp3', 1, 2),
(30, 'Eenie Meenie', 4, 7, 5, '3:21', 'assets/music/eenie-meenie.mp3', 2, 1),
(31, 'Mistletoe', 4, 7, 5, '3:03', 'assets/music/mistletoe.mp3', 3, 1),
(32, 'One Time', 4, 7, 5, '3:36', 'assets/music/one-time.mp3', 4, 1),
(33, 'Love The Way You Lie', 3, 8, 3, '4:23', 'assets/music/love-the-way-you-lie.mp3', 1, 3),
(34, 'Not Afraid', 3, 8, 3, '4:08', 'assets/music/not-afraid.mp3', 2, 0),
(35, 'Space Bound', 3, 8, 3, '4:24', 'assets/music/space-bound.mp3', 3, 5),
(36, 'Cry Me A River', 5, 10, 2, '4:50', 'assets/music/cry-me-a-river.mp3', 1, 1),
(37, 'Little Things', 5, 10, 2, '3:36', 'assets/music/little-things.mp3', 2, 3),
(38, 'Marguerita', 5, 10, 2, '2:36', 'assets/music/marguerita.mp3', 3, 2),
(39, 'One More Night', 5, 10, 2, '3:39', 'assets/music/one-more-night.mp3', 4, 0),
(40, 'She Will Be Loved', 5, 10, 2, '4:17', 'assets/music/she-will-be-loved.mp3', 5, 1),
(41, 'Somewhere Only We Know', 5, 10, 2, '3:57', 'assets/music/somewhere-only-we-know.mp3', 6, 2),
(42, 'What Goes Around Comes Around', 5, 10, 2, '5:09', 'assets/music/what-goes-around-comes-around.mp3', 7, 4),
(43, 'Ban Ja Tu Meri Rani', 6, 11, 11, '3:44', 'assets/music/ban-ja-rani.mp3', 1, 1),
(44, 'Downtown', 6, 11, 11, '3:36', 'assets/music/downtown.mp3', 2, 0),
(45, 'High Rated', 6, 11, 11, '3:32', 'assets/music/high-rated.mp3', 3, 0),
(46, 'Ishare Tere', 6, 11, 11, '3:09', 'assets/music/ishare-tere.mp3', 4, 0),
(47, 'Ishq Tera', 6, 11, 11, '3:28', 'assets/music/ishq-tera.mp3', 5, 0),
(48, 'Lahore', 6, 11, 11, '3:15', 'assets/music/lahore.mp3', 6, 0),
(49, 'Patola', 6, 11, 11, '3:30', 'assets/music/patola.mp3', 7, 0),
(50, 'Slowly Slowly', 6, 11, 11, '3:21', 'assets/music/slowly.mp3', 8, 0),
(51, '2 Am', 7, 12, 11, '4:17', 'assets/music/2-am.mp3', 1, 1),
(52, 'Dont Look', 7, 12, 11, '3:10', 'assets/music/dont-look.mp3', 2, 0),
(53, 'Facts', 7, 12, 11, '3:05', 'assets/music/facts.mp3', 3, 0),
(54, 'Hair', 7, 12, 11, '4:10', 'assets/music/hair.mp3', 4, 1),
(55, 'Hint', 7, 12, 11, '3:47', 'assets/music/hint.mp3', 5, 0),
(56, 'Hisaab', 7, 12, 11, '2:55', 'assets/music/hisaab.mp3', 6, 0),
(57, 'Na Na Na', 7, 12, 11, '3:24', 'assets/music/nanana.mp3', 7, 0),
(58, '4 Yaar', 8, 13, 11, '3:01', 'assets/music/4-yaar.mp3', 1, 1),
(59, 'Chal Oye', 8, 13, 11, '3:17', 'assets/music/chal-oye.mp3', 2, 0),
(60, 'Gaal Ni Kadni', 8, 13, 11, '4:08', 'assets/music/gaal-ni-kadni.mp3', 3, 0),
(61, 'Kache Pakke Yaar', 8, 13, 11, '3:09', 'assets/music/kache-pakke-yaar.mp3', 4, 0),
(62, 'Le Chakk Main Aa Gya', 8, 13, 11, '4:08', 'assets/music/le-chakk.mp3', 5, 0),
(63, 'Tere Ton Begair', 8, 13, 11, '4:55', 'assets/music/tere-ton-begair.mp3', 6, 0),
(64, 'Aap Ki Nazron', 9, 14, 12, '3:06', 'assets/music/aap-ki-nazron.mp3', 1, 1),
(65, 'Dilbar Mere', 9, 14, 12, '3:47', 'assets/music/dilbar-mere.mp3', 2, 0),
(66, 'Gulabi Aankhen', 9, 14, 12, '3:48', 'assets/music/gulabi-aankhen.mp3', 3, 0),
(67, 'Mere Mehboob', 9, 14, 12, '4:01', 'assets/music/mere-mehboob.mp3', 4, 1),
(68, 'O Mere Dil Ke Chain', 9, 14, 12, '3:23', 'assets/music/o-mere.mp3', 5, 1),
(69, 'Pehla Nasha', 9, 14, 12, '4:01', 'assets/music/pehla-nasha.mp3', 6, 0),
(70, 'Tum Hi Ho', 9, 14, 12, '4:18', 'assets/music/tum-hi-ho.mp3', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  `logins` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`, `logins`) VALUES
(1, 'guest', 'Guest', 'Account', 'Guest@gmail.com', '084e0343a0486ff05530df6c705c8bb4', '2020-12-27 00:00:00', 'assets/images/profile-pics/head_emerald.png', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
