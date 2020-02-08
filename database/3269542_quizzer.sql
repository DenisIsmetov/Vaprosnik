-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb24.awardspace.net
-- Generation Time:  6 фев 2020 в 21:52
-- Версия на сървъра: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3269542_quizzer`
--

-- --------------------------------------------------------

--
-- Структура на таблица `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'denis', 'denis');

-- --------------------------------------------------------

--
-- Структура на таблица `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(84, '5e0fcb2a080ee', '5e0fcb2a08bbb'),
(85, '5e0fcb5c46735', '5e0fcb5c47006'),
(98, '5e16272d1d673', '5e16272d1d8e5'),
(99, '5e16272d1e59c', '5e16272d1e713'),
(100, '5e16272d1f318', '5e16272d1f553'),
(101, '5e16272d1ff1c', '5e16272d202c6'),
(102, '5e16272d20ead', '5e16272d2113b'),
(108, '5e1735449b1b6', '5e1735449b501'),
(109, '5e1735449bfce', '5e1735449c1d1'),
(110, '5e1735449c8d2', '5e1735449c9e3'),
(111, '5e1735449d097', '5e1735449d2aa'),
(112, '5e1735449d868', '5e1735449d992'),
(113, '5e1735449de8c', '5e1735449dfc4'),
(115, '5e1a6e77cabb9', '5e1a6e77cae6a'),
(116, '5e1a6e77cf429', '5e1a6e77cf5a4');

-- --------------------------------------------------------

--
-- Структура на таблица `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `class`
--

INSERT INTO `class` (`id`, `class`, `teacher`) VALUES
(29, '9Ð‘', 'Ð. Ð™Ð¾Ñ€Ð´Ð°Ð½Ð¾Ð²'),
(31, '8Ð', 'Ð”. Ð˜ÑÐ¼ÐµÑ‚Ð¾Ð²');

-- --------------------------------------------------------

--
-- Структура на таблица `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5e1b9be575c52', 'Ð”ÐµÐ½Ð¸Ñ Ð˜ÑÐ¼ÐµÑ‚Ð¾Ð² ÐœÑƒÑÑ‚Ð°Ñ„Ð¾Ð²', 'denis798@abv.bg', 'Ð”Ð¾Ð¼Ð°ÑˆÐ½Ð¾ Ð¿Ð¾ Ð˜Ð¢ Ð·Ð° 9 ÐºÐ»Ð°Ñ', 'ÐœÐ¾Ð¶Ðµ Ð»Ð¸ Ð´Ð° Ð¼Ð¸ Ð¸Ð·Ð¿Ñ€Ð°Ñ‚Ð¸Ñ‚Ðµ Ð¿Ñ€ÐµÐ·ÐµÐ½Ñ‚Ð°Ñ†Ð¸ÑÑ‚Ð° Ð¾Ñ‚ Ð´Ð½ÐµÑˆÐ½Ð¸Ñ ÑƒÑ€Ð¾Ðº Ð¿Ð¾ Ð˜Ð¢ Ð·Ð° 9 ÐºÐ»Ð°Ñ. Ð‘Ð»Ð°Ð³Ð¾Ð´Ð°Ñ€Ñ Ð¼Ð½Ð¾Ð³Ð¾!', '2020-01-12', '10:21:25pm');

-- --------------------------------------------------------

--
-- Структура на таблица `graph`
--

CREATE TABLE `graph` (
  `id` int(20) NOT NULL,
  `nametest` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `clase` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `data` date NOT NULL,
  `namechas` varchar(150) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `graph`
--

INSERT INTO `graph` (`id`, `nametest`, `clase`, `data`, `namechas`) VALUES
(20, 'Ð˜Ð²Ð°Ð½ Ð’Ð°Ð·Ð¾Ð²', '9Ð‘', '2020-02-01', 'Ð‘ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸ ÐµÐ·Ð¸Ðº Ð¸ Ð»Ð¸Ñ‚ÐµÑ€Ð°Ñ‚ÑƒÑ€Ð°');

-- --------------------------------------------------------

--
-- Структура на таблица `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(58, 'Samuil7', '5e172f8f7aa7e', 0, 0, 0, 0, '2020-01-10 11:37:57', 1578656176, 'finished', 'true'),
(59, 'miro', '5e172f8f7aa7e', 12, 5, 4, 2, '2020-01-10 11:40:03', 1578656183, 'finished', 'true'),
(60, 'barsh', '5e172f8f7aa7e', 12, 4, 4, 2, '2020-01-10 11:40:46', 1578656186, 'finished', 'true'),
(61, 'Hristomir', '5e172f8f7aa7e', 12, 6, 4, 2, '2020-01-10 11:40:35', 1578656189, 'finished', 'true'),
(62, 'Gosho', '5e172f8f7aa7e', 18, 6, 6, 0, '2020-01-10 11:39:06', 1578656199, 'finished', 'true'),
(63, 'hristiqn', '5e172f8f7aa7e', 18, 6, 6, 0, '2020-01-10 11:40:07', 1578656277, 'finished', 'true');

-- --------------------------------------------------------

--
-- Структура на таблица `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(353, '5e0fcb2a080ee', 'Иван Вазов', '5e0fcb2a08bb6'),
(354, '5e0fcb2a080ee', 'Христо Ботев', '5e0fcb2a08bba'),
(355, '5e0fcb2a080ee', 'порции, гении, кайсии', '5e0fcb2a08bbb'),
(356, '5e0fcb2a080ee', 'Паисий Хилендарски', '5e0fcb2a08bbc'),
(357, '5e0fcb5c46735', '1111111111111111111', '5e0fcb5c47006'),
(358, '5e0fcb5c46735', '111111111111111111111', '5e0fcb5c4700a'),
(359, '5e0fcb5c46735', 'асфасфасф', '5e0fcb5c4700b'),
(360, '5e0fcb5c46735', '54', '5e0fcb5c4700c'),
(409, '5e16272d1d673', 'Ñ‡Ñ€ÐµÐ· Ð¿Ð¾ÑÑ‚Ð°Ð²ÑÐ½Ðµ Ð½Ð° Ð¾Ñ‚Ð¼ÐµÑ‚ÐºÐ° Ð² Ð¿Ð¾Ð»ÐµÑ‚Ð¾ My data has', '5e16272d1d8df'),
(410, '5e16272d1d673', 'Ð¾Ñ‚ Ñ‚ÐµÐºÑÑ‚Ð¾Ð²Ð°Ñ‚Ð° ÐºÑƒÑ‚Ð¸Ñ Sort by', '5e16272d1d8e5'),
(411, '5e16272d1d673', 'Ð¾Ñ‚ Ñ‚ÐµÐºÑÑ‚Ð¾Ð²Ð°Ñ‚Ð° ÐºÑƒÑ‚Ð¸Ñ Sort on', '5e16272d1d8e9'),
(412, '5e16272d1d673', 'Ð¾Ñ‚ Ñ‚ÐµÐºÑÑ‚Ð¾Ð²Ð°Ñ‚Ð° ÐºÑƒÑ‚Ð¸Ñ Order', '5e16272d1d8ee'),
(413, '5e16272d1e59c', 'Ð¾Ñ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°Ñ‚Ð° Layout', '5e16272d1e713'),
(414, '5e16272d1e59c', 'Ð¾Ñ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°Ñ‚Ð° Insert', '5e16272d1e719'),
(415, '5e16272d1e59c', 'Ð¾Ñ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°Ñ‚Ð° Format', '5e16272d1e71d'),
(416, '5e16272d1e59c', 'Ð¾Ñ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°Ñ‚Ð° Design', '5e16272d1e721'),
(417, '5e16272d1f318', '=B1+ B1 Sheet2!', '5e16272d1f549'),
(418, '5e16272d1f318', '=B1+Sheet2B1', '5e16272d1f54e'),
(419, '5e16272d1f318', '=B1+Sheet2!B1', '5e16272d1f553'),
(420, '5e16272d1f318', '= B1 Sheet2! + B1', '5e16272d1f557'),
(421, '5e16272d1ff1c', 'Find&Select', '5e16272d202bc'),
(422, '5e16272d1ff1c', 'Sort', '5e16272d202c2'),
(423, '5e16272d1ff1c', 'Hide&Unhide', '5e16272d202c6'),
(424, '5e16272d1ff1c', 'Merge&Center', '5e16272d202cb'),
(425, '5e16272d20ead', 'Currency', '5e16272d2112c'),
(426, '5e16272d20ead', 'Text', '5e16272d21133'),
(427, '5e16272d20ead', 'General', '5e16272d21137'),
(428, '5e16272d20ead', 'Number', '5e16272d2113b'),
(449, '5e1735449b1b6', ' Ñ ÑƒÐ²Ð°Ð¶ÐµÐ½Ð¸Ðµ', '5e1735449b501'),
(450, '5e1735449b1b6', ' Ñ Ð°Ð³Ñ€ÐµÑÐ¸Ð²Ð½Ð¾ Ð¿Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ', '5e1735449b505'),
(451, '5e1735449b1b6', ' Ñ Ñ€Ð°Ð·Ð±Ð¸Ñ€Ð°Ð½Ðµ', '5e1735449b507'),
(452, '5e1735449b1b6', ' Ñ Ð´Ð¾Ð±Ñ€Ð¸Ð½Ð°', '5e1735449b508'),
(453, '5e1735449bfce', '1', '5e1735449c1d1'),
(454, '5e1735449bfce', '2', '5e1735449c1d4'),
(455, '5e1735449bfce', '3', '5e1735449c1d6'),
(456, '5e1735449bfce', 'Ð½ÐµÐ¾Ð³Ñ€Ð°Ð½Ð¸Ñ‡ÐµÐ½ Ð±Ñ€Ð¾Ð¹', '5e1735449c1d7'),
(457, '5e1735449c8d2', '5 Ð¼Ð¸Ð½ÑƒÑ‚Ð¸', '5e1735449c9e0'),
(458, '5e1735449c8d2', '2 Ð¼Ð¸Ð½ÑƒÑ‚Ð¸', '5e1735449c9e3'),
(459, '5e1735449c8d2', '4 Ð¼Ð¸Ð½ÑƒÑ‚Ð¸', '5e1735449c9e5'),
(460, '5e1735449c8d2', '3 Ð¼Ð¸Ð½ÑƒÑ‚Ð¸', '5e1735449c9e7'),
(461, '5e1735449d097', 'ÑÐ°Ð¼Ð¾ Bluetooth', '5e1735449d2a5'),
(462, '5e1735449d097', 'ÑÐ°Ð¼Ð¾ Wireless', '5e1735449d2a8'),
(463, '5e1735449d097', 'Ð¸ Ð´Ð²ÐµÑ‚Ðµ Ñ‚Ñ€ÑÐ±Ð²Ð° Ð´Ð° ÑÐ° Ð¸Ð·ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸', '5e1735449d2aa'),
(464, '5e1735449d097', 'Ð½Ð¸Ñ‚Ð¾ ÐµÐ´Ð½Ð¾Ñ‚Ð¾ Ð½Ðµ Ñ‚Ñ€ÑÐ±Ð²Ð° Ð´Ð° Ðµ Ð¸Ð·ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¾', '5e1735449d2ab'),
(465, '5e1735449d868', ' Ð² ÐºÑ€Ð°Ñ Ð½Ð° Ð¼Ð°Ñ‡Ð°', '5e1735449d992'),
(466, '5e1735449d868', 'Ð°ÐºÐ¾ Ð´Ð°Ð´ÐµÐ½Ð° Ð¼Ð¸ÑÐ¸Ñ Ðµ Ð±Ð¸Ð»Ð° Ð¸Ð·Ð¿ÑŠÐ»Ð½ÐµÐ½Ð° Ð¿Ð¾ Ð²Ñ€ÐµÐ¼Ðµ Ð½Ð° Ð¼Ð°Ñ‡Ð°, Ð½Ð¾ Ð½Ð°ÐºÑ€Ð°Ñ Ð½Ðµ Ðµ', '5e1735449d995'),
(467, '5e1735449d868', 'Ð²Ð¸Ð½Ð°Ð³Ð¸ ÑÐµ Ð´Ð°Ð²Ð°Ñ‚ Ñ‚Ð¾Ñ‡ÐºÐ¸', '5e1735449d996'),
(468, '5e1735449d868', 'Ð½Ðµ ÑÐµ Ð´Ð°Ð²Ð°Ñ‚', '5e1735449d998'),
(469, '5e1735449de8c', 'Ð² Ð±Ð°Ð·Ð°Ñ‚Ð°', '5e1735449dfbe'),
(470, '5e1735449de8c', 'Ð¸Ð·Ð²ÑŠÐ½ Ð±Ð°Ð·Ð°Ñ‚Ð°', '5e1735449dfc1'),
(471, '5e1735449de8c', 'Ð½ÑÐ¼Ð° Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', '5e1735449dfc3'),
(472, '5e1735449de8c', 'Ñ‚Ð°Ð¼, ÐºÑŠÐ´ÐµÑ‚Ð¾ Ðµ ÑƒÐºÐ°Ð·Ð°Ð½Ð¾ Ð² Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸ÐµÑ‚Ð¾ Ð½Ð° Ð¼Ð¸ÑÐ¸Ð¸Ñ‚Ðµ', '5e1735449dfc4'),
(477, '5e1a6e77cabb9', 'Console.WriteLine();', '5e1a6e77cae66'),
(478, '5e1a6e77cabb9', 'Console.Write();', '5e1a6e77cae69'),
(479, '5e1a6e77cabb9', 'Console.ReadLine();', '5e1a6e77cae6a'),
(480, '5e1a6e77cabb9', 'Console.Read();', '5e1a6e77cae6b'),
(481, '5e1a6e77cf429', 'Ð¦ÑÐ»Ð¾ Ñ‡Ð¸ÑÐ»Ð¾', '5e1a6e77cf5a4'),
(482, '5e1a6e77cf429', 'Ð¢ÐµÐºÑÑ‚', '5e1a6e77cf5a6'),
(483, '5e1a6e77cf429', 'Ð”Ñ€Ð¾Ð±Ð½Ð¾ Ñ‡Ð¸ÑÐ»Ð¾', '5e1a6e77cf5a8'),
(484, '5e1a6e77cf429', 'Ð¡Ð¸Ð¼Ð²Ð¾Ð»', '5e1a6e77cf5a9');

-- --------------------------------------------------------

--
-- Структура на таблица `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(89, '5e0fcb1159392', '5e0fcb2a080ee', 'хпо\'яхо', 4, 1),
(90, '5e0fcb50b0c9b', '5e0fcb5c46735', 'йгфхй', 4, 1),
(103, '5e1626526ee48', '5e16272d1d673', 'ÐšÑ€Ð¸Ñ‚ÐµÑ€Ð¸Ð¹, Ð¿Ð¾ ÐºÐ¾Ð¹Ñ‚Ð¾ Ð´Ð° ÑÐµ Ð¸Ð·Ð²ÑŠÑ€ÑˆÐ¸ ÑÐ¾Ñ€Ñ‚Ð¸Ñ€Ð°Ð½Ðµ, ÑÐµ Ð·Ð°Ð´Ð°Ð²Ð°:', 4, 1),
(104, '5e1626526ee48', '5e16272d1e59c', 'ÐžÑ‚ ÐºÐ¾Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð½Ð° Ð³Ð»Ð°Ð²Ð½Ð¾Ñ‚Ð¾ Ð¼ÐµÐ½ÑŽ ÑÐµ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð°Ñ‚ Ð¾Ñ‚Ð´ÐµÐ»Ð½Ð¸Ñ‚Ðµ ÐµÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸ Ð½Ð° Ð´Ð¸Ð°Ð³Ñ€Ð°Ð¼Ð°:', 4, 2),
(105, '5e1626526ee48', '5e16272d1f318', ' ÐšÐ¾Ñ Ñ„Ð¾Ñ€Ð¼ÑƒÐ»Ð° Ðµ Ð¸Ð·Ð¿Ð¸ÑÐ°Ð½Ð° Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð½Ð¾ Ð¿Ñ€Ð¸ Ð¾Ð±Ð¼ÐµÐ½ Ð½Ð° Ð´Ð°Ð½Ð½Ð¸ Ð¼ÐµÐ¶Ð´Ñƒ Ð´Ð²Ð° Ñ€Ð°Ð±Ð¾Ñ‚Ð½Ð¸ Ð»Ð¸ÑÑ‚Ð°:', 4, 3),
(106, '5e1626526ee48', '5e16272d1ff1c', 'Ð¡ÐºÑ€Ð¸Ð²Ð°Ð½Ðµ Ð½Ð° ÐµÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð¸ Ð¾Ñ‚ Ñ‚Ð°Ð±Ð»Ð¸Ñ†Ð° ÑÐµ Ð¸Ð·Ð²ÑŠÑ€ÑˆÐ²Ð° Ñ ÐºÐ¾Ð¼Ð°Ð½Ð´Ð¸Ñ‚Ðµ:', 4, 4),
(107, '5e1626526ee48', '5e16272d20ead', 'Ð¢Ð¸Ð¿ÑŠÑ‚ Ð·Ð° Ñ‡Ð¸ÑÐ»Ð° Ð² Excel Ðµ:', 4, 5),
(113, '5e172f8f7aa7e', '5e1735449b1b6', 'ÐšÐ°Ðº Ñ‚Ñ€ÑÐ±Ð²Ð° Ð´Ð° ÑÐµ Ð¾Ñ‚Ð½Ð°ÑÑÑ‚ Ð¾Ñ‚Ð±Ð¾Ñ€Ð¸Ñ‚Ðµ ÐµÐ´Ð¸Ð½ ÐºÑŠÐ¼ Ð´Ñ€ÑƒÐ³?', 4, 1),
(114, '5e172f8f7aa7e', '5e1735449bfce', 'ÐšÐ¾Ð»ÐºÐ¾ Ð±Ñ€Ð¸ÐºÐ° Ð¸Ð¼Ð° Ð½Ð°Ð¹-Ð¼Ð½Ð¾Ð³Ð¾ Ñ€Ð¾Ð±Ð¾Ñ‚ÑŠÑ‚?', 4, 2),
(115, '5e172f8f7aa7e', '5e1735449c8d2', 'ÐšÐ¾Ð»ÐºÐ¾ Ðµ Ð²Ñ€ÐµÐ¼ÐµÑ‚Ð¾ Ð·Ð° ÐµÐ´Ð¸Ð½ Ð¼Ð°Ñ‡?', 4, 3),
(116, '5e172f8f7aa7e', '5e1735449d097', 'ÐŸÐ¾ Ð²Ñ€ÐµÐ¼Ðµ Ð½Ð° Ð¼Ð°Ñ‡Ð° Ñ€Ð¾Ð±Ð¾Ñ‚ÑŠÑ‚ Ñ‚Ñ€ÑÐ±Ð²Ð° Ð´Ð° Ðµ Ñ Ð¸Ð·ÐºÐ»ÑŽÑ‡ÐµÐ½:', 4, 4),
(117, '5e172f8f7aa7e', '5e1735449d868', 'ÐšÐ¾Ð³Ð° ÑÐµ Ð¿Ñ€Ð¸ÑÑŠÐ¶Ð´Ð°Ñ‚ Ñ‚Ð¾Ñ‡ÐºÐ¸?', 4, 5),
(118, '5e172f8f7aa7e', '5e1735449de8c', 'ÐšÑŠÐ´Ðµ Ñ‚Ñ€ÑÐ±Ð²Ð° Ð´Ð° Ðµ Ð² ÐºÑ€Ð°Ñ Ð½Ð° Ð¼Ð°Ñ‡Ð°, Ð²ÑÐ¸Ñ‡ÐºÐ¾, ÐºÐ¾ÐµÑ‚Ð¾ Ð´Ð°Ð²Ð° Ñ‚Ð¾Ñ‡ÐºÐ¸?', 4, 6),
(120, '5e1a6d5d67c5f', '5e1a6e77cabb9', 'ÐšÐ¾Ñ Ðµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ð°Ñ‚Ð° Ð·Ð° Ð²ÑŠÐ²ÐµÐ¶Ð´Ð°Ð½Ðµ Ð¾Ñ‚ ÐºÐ¾Ð½Ð·Ð¾Ð»Ð½Ð¸Ñ Ð¿Ñ€Ð¾Ð·Ð¾Ñ€ÐµÑ† Ð² C#', 4, 1),
(121, '5e1a6d5d67c5f', '5e1a6e77cf429', 'ÐžÑ‚ ÐºÐ°ÐºÑŠÐ² Ñ‚Ð¸Ð¿ Ðµ Ð¿Ñ€Ð¾Ð¼ÐµÐ½Ð»Ð¸Ð²Ð°Ñ‚Ð° // int a;', 4, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `6ot` int(20) NOT NULL,
  `6do` int(20) NOT NULL,
  `5ot` int(20) NOT NULL,
  `5do` int(20) NOT NULL,
  `4ot` int(20) NOT NULL,
  `4do` int(20) NOT NULL,
  `3ot` int(20) NOT NULL,
  `3do` int(20) NOT NULL,
  `2ot` int(20) NOT NULL,
  `2do` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`, `class`, `6ot`, `6do`, `5ot`, `5do`, `4ot`, `4do`, `3ot`, `3do`, `2ot`, `2do`) VALUES
(67, '5e1626526ee48', '  Ð¢ÐµÑÑ‚ Ð¿Ð¾ Ð˜Ð¢ - Ð•Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¸ Ñ‚Ð°Ð±Ð»Ð¸Ñ†Ð¸', 2, 0, 5, 35, '2020-02-06 00:32:25', 'disabled', '', 18, 16, 15, 13, 12, 10, 9, 7, 6, 0),
(69, '5e172f8f7aa7e', 'Ð Ð¾Ð±Ð¾Ñ‚Ð¸ÐºÐ° Ð·Ð° Ð‘ÑŠÐ»Ð³Ð°Ñ€Ð¸Ñ', 3, 0, 6, 30, '2020-02-06 00:42:29', 'disabled', '', 18, 16, 15, 13, 12, 10, 9, 7, 6, 0),
(73, '5e1a6d5d67c5f', 'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð¸Ñ€Ð°Ð½Ðµ Ð½Ð° C#', 5, 0, 2, 25, '2020-02-05 22:21:55', 'disabled', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(13, 'Samuil7', 0, '2020-01-10 11:37:57'),
(14, 'Gosho', 18, '2020-01-10 11:39:06'),
(15, 'miro', 27, '2020-01-30 17:52:44'),
(16, 'hristiqn', 18, '2020-01-10 11:40:07'),
(17, 'Hristomir', 12, '2020-01-10 11:40:35'),
(18, 'barsh', 12, '2020-01-10 11:40:46'),
(19, 'stu1234', 9, '2020-02-06 00:51:58');

-- --------------------------------------------------------

--
-- Структура на таблица `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(60) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(49, 'Ð‘Ð°Ñ€ÑŠÑˆ', 'barsh@abv.bg', '8Ð', 'M', 'Barsh', 896325412, 'be2345594939d3be01662efae6d346e6'),
(44, 'Ð“ÐµÐ¾Ñ€Ð³Ð¸', 'gogish20@gmail.com', '8Ð', 'M', 'Gosho', 896325416, 'ce0b1e385c86cff60fb2e68861fb5f5f'),
(50, 'Ð¥Ñ€Ð¸ÑÑ‚Ð¸ÑÐ½', 'hrito45@abv.bg', '8Ð', 'M', 'Hristiqn', 875412356, 'edf70dce92da0c4d370208842deffe18'),
(46, 'Ð¥Ñ€Ð¸ÑÑ‚Ð¾Ð¼Ð¸Ñ€', 'hristo@gmail.com', '8Ð', 'M', 'Hristomir', 885623596, 'de7a1eb7daf2ef8d7a0e4dfcb5b1b7fc'),
(45, 'ÐœÐ¸Ñ€Ð¾ÑÐ»Ð°Ð²', 'miroslav65@abv.bg', '8Ð', 'M', 'Miro', 886526521, '3f60af792528cbe6de7b1c9693739fa5'),
(47, 'Ð¡Ð°Ð¼ÑƒÐ¸Ð»', 'sami798@abv.bg', '8Ð', 'M', 'Samuil7', 899635265, '4315b354ef7e2bc7a816869d4be655ca'),
(53, 'ÐÐ»Ð¸ ÐœÐµÑ…Ð¼ÐµÐ´', 'denis.ismetov@crudl.com', '9Ð‘', 'M', 'stu1234', 883256985, 'c06db68e819be6ec3d26c6038d8e8d1f'),
(54, 'Ð”ÐµÐ½Ð¸Ñ Ð˜ÑÐ¼ÐµÑ‚Ð¾Ð² ÐœÑƒÑÑ‚Ð°Ñ„Ð¾Ð²', 'denis798@abv.bg', '9Ð‘', 'M', 'student', 893732352, 'cd73502828457d15655bbd7a63fb0bc8');

-- --------------------------------------------------------

--
-- Структура на таблица `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `ans` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `correctans` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `eid` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5df813b6ca5f3', '5df813b6cafc2', '5df813b6cafc2', '5df813ab90baf', 'sonudoo'),
(5, '5df819a26bf8f', '5df819a26c6bf', '5df819a26c6bd', '5df818365a46b', 'Sasho23'),
(6, '5df93994aaaf4', '5df93994abbb0', '5df93994abbb8', '5df938f6661c8', 'sonudoo'),
(7, '5df93994ae994', '5df93994af3fb', '5df93994af3fb', '5df938f6661c8', 'sonudoo'),
(8, '5df93994b16b9', '5df93994b2218', '5df93994b2218', '5df938f6661c8', 'sonudoo'),
(9, '5df93c8c35d17', '5df93c8c3767f', '5df93c8c37680', '5df93c81ed8a2', 'sonudoo'),
(10, '5dfba71b55656', '5dfba71b55f01', '5dfba71b55efc', '5dfba714e19ce', 'sonudoo'),
(11, '5dfd556713c79', '5dfd556714ca1', '5dfd556714c9b', '5dfd5302cdd25', 'stu1234'),
(14, '5dfe6c506cdf4', '5dfe6c506d880', '5dfe6c506d877', '5dfe6c248bf20', 'stu1234'),
(15, '5dfe6c5067aee', '5dfe6c506888b', '5dfe6c5068881', '5dfe6c248bf20', 'stu1234'),
(16, '5dfe7400a94e8', '5dfe7400a9cd7', '5dfe7400a9cd4', '5dfe73cd4a666', 'stu1234'),
(17, '5dfe79cf97163', '5dfe79cf979e8', '5dfe79cf979e9', '5dfe799d83ee1', 'stu1234'),
(18, '5dfe79cf9ac4e', '5dfe79cf9b2c8', '5dfe79cf9b2c8', '5dfe799d83ee1', 'stu1234'),
(19, '5dfe7be788d1d', '5dfe7be789b7e', '5dfe7be789b80', '5dfe7ba055041', 'stu1234'),
(20, '5dfe7ca4890c2', '5dfe7ca489966', '5dfe7ca489966', '5dfe7c9404414', 'stu1234'),
(21, '5dfe7dc22e372', '5dfe7dc22ea2e', '5dfe7dc22ea2f', '5dfe7d9e06e66', 'stu1234'),
(22, '5dfe7dc2318b0', '5dfe7dc2322a8', '5dfe7dc2322a8', '5dfe7d9e06e66', 'stu1234'),
(23, '5dfe7fb5e9f22', '5dfe7fb5eac62', '5dfe7fb5eac62', '5dfe7f9b55226', 'stu1234'),
(24, '5dfe7fb5e9f22', '5dfe7fb5eac61', '5dfe7fb5eac62', '5dfe7f9b55226', 'Sasho23'),
(25, '5dfe7fb5eda98', '5dfe7fb5ee720', '5dfe7fb5ee720', '5dfe7f9b55226', 'Sasho23'),
(26, '5dfe81b21bf9d', '5dfe81b21c78c', '', '5dfe8188ef3ab', 'stu1234'),
(27, '5dfe81b21f429', '5dfe81b21fb84', '', '5dfe8188ef3ab', 'stu1234'),
(28, '5dfe8329cfd94', '5dfe8329d047d', '5dfe8329d0480', '5dfe831a9a71e', 'stu1234'),
(29, '5dfea67867685', '5dfea67867f89', '5dfea67867f8a', '5dfea651ca1f6', 'stu1234'),
(30, '5dfea6786b5ea', '5dfea6786bdca', '5dfea6786bdcf', '5dfea651ca1f6', 'stu1234'),
(31, '5dfea7d6560a8', '5dfea7d656ab6', '5dfea7d656ab6', '5dfea7c201f7f', 'stu1234'),
(32, '5dfea7d659bdb', '5dfea7d65a634', '5dfea7d65a630', '5dfea7c201f7f', 'stu1234'),
(33, '5dfea86d8f733', '5dfea86d902cd', '5dfea86d902c8', '5dfea849db8ba', 'stu1234'),
(34, '5dfea86d93185', '5dfea86d9399a', '5dfea86d93996', '5dfea849db8ba', 'stu1234'),
(35, '5dfea931a9404', '5dfea931a9c26', '', '5dfea917b6f4e', 'stu1234'),
(36, '5dfea931ad0aa', '5dfea931ad89b', '', '5dfea917b6f4e', 'stu1234'),
(37, '5dfea9a3dd112', '5dfea9a3dd9d8', '', '5dfea98ed0ee3', 'stu1234'),
(38, '5dfea9a3e0aa3', '5dfea9a3e11ea', '', '5dfea98ed0ee3', 'stu1234'),
(39, '5dfeaa96ba15e', '5dfeaa96ba8ce', '5dfeaa96ba8ce', '5dfeaa80e8fdc', 'stu1234'),
(40, '5e00eb85bbbf7', '5e00eb85bd471', '0', '5e00eb5a98bf0', 'Ali77'),
(41, '5e00eb85c2dcb', '5e00eb85c35d1', '0', '5e00eb5a98bf0', 'Ali77'),
(42, '5e010988eaf38', '5e010988ebe42', '5e010988ebe40', '5e01096c136d0', 'Ali77'),
(43, '5e022fac34914', '5e022fac36637', '5e022fac36637', '5e022fa382443', 'stu1234'),
(44, '5e010988eaf38', '5e010988ebe40', '5e010988ebe40', '5e01096c136d0', 'stu1234'),
(45, '5e024c49d7836', '5e024c49d7f1b', '5e024c49d7f1b', '5e024c4189d82', 'stu1234'),
(50, '5e0259bfe8904', '5e0259bfe8fe4', '5e0259bfe8fe4', '5e0259a94e6da', 'stu1234'),
(51, '5e0259bfe4685', '5e0259bfe5528', '5e0259bfe5528', '5e0259a94e6da', 'stu1234'),
(52, '5e025d37f27f5', '5e025d37f313a', '5e025d37f3138', '5e025d3210341', 'stu1234'),
(53, '5e0344ec2622d', '5e0344ec281e0', '5e0344ec281e5', '5e0344d4e453c', 'stu1234'),
(55, '5e0344ec2e7fe', '5e0344ec2f1bc', '5e0344ec2f1bb', '5e0344d4e453c', 'stu1234'),
(56, '5e04ee0274117', '5e04ee0274b47', '', '5e04edf48d057', 'stu1234'),
(57, '5e04ef36b512f', '5e04ef36b5821', '', '5e04ef260a088', 'stu1234'),
(58, '5e04f6aa62560', '5e04f6aa62dc6', '5e04f6aa62dc6', '5e04f694de030', 'stu1234'),
(59, '5e04f75170f44', '5e04f751719a9', '5e04f751719a9', '5e04f7096701e', 'stu1234'),
(60, '5e04f75175b89', '5e04f75176680', '5e04f75176680', '5e04f7096701e', 'stu1234'),
(61, '5e04f75179091', '5e04f75179786', '5e04f75179786', '5e04f7096701e', 'stu1234'),
(62, '5e04f97176912', '5e04f971772b5', '5e04f971772b5', '5e04f7e932f75', 'stu1234'),
(63, '5e04f9717a31d', '5e04f9717ab29', '5e04f9717ab29', '5e04f7e932f75', 'stu1234'),
(64, '5e04f9717dadb', '5e04f9717e762', '5e04f9717e762', '5e04f7e932f75', 'stu1234'),
(65, '5e04f97176912', '5e04f971772b5', '5e04f971772b5', '5e04f7e932f75', '1234'),
(66, '5e04f9717a31d', '5e04f9717ab24', '5e04f9717ab29', '5e04f7e932f75', '1234'),
(67, '5e0d34188996c', '5e0d34188abe8', '5e0d34188abe8', '5e0d340466cae', 'stu1234'),
(68, '5e0f9c440378a', '5e0f9c4404088', '5e0f9c4404082', '5e0f9c3b9ffbc', 'stu1234'),
(69, '5e0fccffe6c09', '5e0fccffe74ec', '5e0fccffe74ec', '5e0fcce29cf6e', 'stu1234'),
(70, '5e0fcf2ef047f', '5e0fcf2ef10ae', '5e0fcf2ef10ae', '5e0fcf1212cd7', '1234'),
(71, '5e1125251c868', '5e1125251dc00', '5e1125251dc2a', '5e1124bae3332', 'Aleks'),
(72, '5e1125252105c', '5e11252522261', '5e11252522261', '5e1124bae3332', 'Aleks'),
(73, '5e1125251c868', '5e1125251dc00', '5e1125251dc2a', '5e1124bae3332', 'martin'),
(74, '5e1125252105c', '5e11252522265', '5e11252522261', '5e1124bae3332', 'martin'),
(75, '5e11dac130bc4', '5e11dac1315ea', '5e11dac1315ea', '5e11dab6cd57c', 'Aleks'),
(76, '5e11dac130bc4', '5e11dac1315fc', '5e11dac1315ea', '5e11dab6cd57c', 'martin'),
(77, '5e11dac130bc4', '5e11dac1315fc', '5e11dac1315ea', '5e11dab6cd57c', 'kaloqn'),
(78, '5e124f925715a', '5e124f92575b5', '5e124f92575b5', '5e124f753cd01', 'Aleks'),
(79, '5e124f925715a', '5e124f92575b2', '5e124f92575b5', '5e124f753cd01', 'stu1234'),
(80, '5e124f925832e', '5e124f92584e7', '5e124f92584e7', '5e124f753cd01', 'stu1234'),
(82, '5e1259d353216', '5e1259d353635', '5e1259d35362f', '5e1259a0a5bd6', 'Aleks'),
(83, '5e1259d3543dc', '5e1259d354615', '5e1259d354615', '5e1259a0a5bd6', 'Aleks'),
(84, '5e16254e58af0', '5e16254e58ee3', '5e16254e58ecd', '5e16253dba626', 'student'),
(85, '5e16254e5984b', '5e16254e59a05', '5e16254e59a05', '5e16253dba626', 'student'),
(86, '5e1735449b1b6', '5e1735449b507', '5e1735449b501', '5e172f8f7aa7e', 'barsh'),
(87, '5e1735449b1b6', '5e1735449b501', '5e1735449b501', '5e172f8f7aa7e', 'Hristomir'),
(88, '5e1735449b1b6', '5e1735449b508', '5e1735449b501', '5e172f8f7aa7e', 'miro'),
(89, '5e1735449b1b6', '5e1735449b501', '5e1735449b501', '5e172f8f7aa7e', 'Gosho'),
(92, '5e1735449bfce', '5e1735449c1d1', '5e1735449c1d1', '5e172f8f7aa7e', 'barsh'),
(93, '5e1735449c8d2', '5e1735449c9e3', '5e1735449c9e3', '5e172f8f7aa7e', 'barsh'),
(94, '5e1735449bfce', '5e1735449c1d1', '5e1735449c1d1', '5e172f8f7aa7e', 'Hristomir'),
(95, '5e1735449bfce', '5e1735449c1d1', '5e1735449c1d1', '5e172f8f7aa7e', 'Gosho'),
(96, '5e1735449c8d2', '5e1735449c9e3', '5e1735449c9e3', '5e172f8f7aa7e', 'Hristomir'),
(97, '5e1735449c8d2', '5e1735449c9e3', '5e1735449c9e3', '5e172f8f7aa7e', 'Gosho'),
(98, '5e1735449d097', '5e1735449d2aa', '5e1735449d2aa', '5e172f8f7aa7e', 'Hristomir'),
(99, '5e1735449d097', '5e1735449d2aa', '5e1735449d2aa', '5e172f8f7aa7e', 'Gosho'),
(100, '5e1735449d868', '5e1735449d992', '5e1735449d992', '5e172f8f7aa7e', 'Gosho'),
(101, '5e1735449d868', '5e1735449d995', '5e1735449d992', '5e172f8f7aa7e', 'Hristomir'),
(102, '5e1735449de8c', '5e1735449dfc4', '5e1735449dfc4', '5e172f8f7aa7e', 'Gosho'),
(103, '5e1735449de8c', '5e1735449dfbe', '5e1735449dfc4', '5e172f8f7aa7e', 'Hristomir'),
(104, '5e1735449de8c', '5e1735449dfbe', '5e1735449dfc4', '5e172f8f7aa7e', 'miro'),
(105, '5e1735449de8c', '5e1735449dfc4', '5e1735449dfc4', '5e172f8f7aa7e', 'hristiqn'),
(106, '5e1735449d868', '5e1735449d992', '5e1735449d992', '5e172f8f7aa7e', 'barsh'),
(107, '5e1735449d868', '5e1735449d992', '5e1735449d992', '5e172f8f7aa7e', 'hristiqn'),
(108, '5e1735449bfce', '5e1735449c1d1', '5e1735449c1d1', '5e172f8f7aa7e', 'miro'),
(109, '5e1735449d097', '5e1735449d2aa', '5e1735449d2aa', '5e172f8f7aa7e', 'hristiqn'),
(110, '5e1735449c8d2', '5e1735449c9e3', '5e1735449c9e3', '5e172f8f7aa7e', 'miro'),
(111, '5e1735449c8d2', '5e1735449c9e3', '5e1735449c9e3', '5e172f8f7aa7e', 'hristiqn'),
(112, '5e1735449de8c', '5e1735449dfc4', '5e1735449dfc4', '5e172f8f7aa7e', 'barsh'),
(113, '5e1735449d097', '5e1735449d2aa', '5e1735449d2aa', '5e172f8f7aa7e', 'miro'),
(114, '5e1735449bfce', '5e1735449c1d1', '5e1735449c1d1', '5e172f8f7aa7e', 'hristiqn'),
(115, '5e1735449b1b6', '5e1735449b501', '5e1735449b501', '5e172f8f7aa7e', 'hristiqn'),
(116, '5e1735449d868', '5e1735449d992', '5e1735449d992', '5e172f8f7aa7e', 'miro'),
(117, '5e1735449d097', '5e1735449d2a5', '5e1735449d2aa', '5e172f8f7aa7e', 'barsh'),
(118, '5e18ee7de4e13', '5e18ee7de870f', '5e18ee7de8709', '5e18ee6cd16d1', 'student'),
(119, '5e16272d20ead', '5e16272d21137', '5e16272d2113b', '5e1626526ee48', 'Miro'),
(120, '5e1a6e77cabb9', '5e1a6e77cae6a', '5e1a6e77cae6a', '5e1a6d5d67c5f', 'Miro'),
(121, '5e1a6e77cf429', '5e1a6e77cf5a6', '5e1a6e77cf5a4', '5e1a6d5d67c5f', 'Miro'),
(122, '5e2e1b63db6da', '5e2e1b63db9a3', '5e2e1b63db9ac', '5e2e1b49304a4', 'Miro'),
(123, '5e2f52239a974', '5e2f52239acdc', '5e2f52239acd3', '5e2f51fe8ab08', 'Miro'),
(124, '5e2f52239b7fd', '5e2f52239ba42', '5e2f52239ba4b', '5e2f51fe8ab08', 'Miro'),
(125, '5e33158b7def7', '5e33158b7e274', '5e33158b7e274', '5e33138c8a379', 'Miro'),
(126, '5e33158b8911b', '5e33158b89377', '5e33158b89377', '5e33138c8a379', 'Miro'),
(127, '5e3b62e6f02e7', '5e3b62e6f0773', '5e3b62e6f0773', '5e3b62c322a3e', 'stu1234'),
(128, '5e3b62e701f08', '5e3b62e7021c7', '5e3b62e7021be', '5e3b62c322a3e', 'stu1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
