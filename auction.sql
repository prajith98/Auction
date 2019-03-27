-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 06:06 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `ID` int(2) NOT NULL,
  `AMT` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`ID`, `AMT`) VALUES
(1, 2000),
(2, 1880),
(3, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `C` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`C`, `id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(999, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(999, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(999, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100),
(101, 101),
(102, 102),
(103, 103),
(104, 104),
(105, 105),
(106, 106),
(107, 107),
(108, 108),
(109, 109),
(110, 110),
(111, 111),
(112, 112),
(113, 113),
(114, 114),
(115, 115),
(116, 116),
(117, 117),
(118, 118),
(119, 119),
(120, 120),
(121, 121),
(122, 122),
(123, 123),
(124, 124),
(125, 125),
(126, 126),
(127, 127),
(128, 128),
(129, 129),
(999, 130),
(131, 131),
(132, 132),
(133, 133),
(134, 134),
(135, 135),
(136, 136),
(137, 137),
(138, 138),
(139, 139),
(140, 140),
(141, 141),
(142, 142),
(143, 143),
(144, 144),
(145, 145),
(146, 146),
(147, 147),
(148, 148),
(149, 149),
(150, 150),
(151, 151),
(152, 152),
(153, 153),
(154, 154),
(155, 155),
(156, 156),
(157, 157),
(999, 158),
(159, 159),
(160, 160),
(161, 161),
(162, 162),
(163, 163),
(164, 164),
(165, 165),
(166, 166),
(167, 167),
(168, 168),
(169, 169),
(170, 170),
(171, 171),
(172, 172),
(173, 173),
(174, 174),
(175, 175),
(176, 176),
(177, 177);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `ID` int(5) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(2) NOT NULL,
  `PHOTO` varchar(50) NOT NULL,
  `NATIONALITY` varchar(20) NOT NULL,
  `FLAG` varchar(50) NOT NULL,
  `OVERALL` int(2) NOT NULL,
  `CLUB` varchar(20) NOT NULL,
  `CLUB LOGO` varchar(50) NOT NULL,
  `VALUE` varchar(10) NOT NULL,
  `PREFERED POSITION` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`ID`, `NAME`, `AGE`, `PHOTO`, `NATIONALITY`, `FLAG`, `OVERALL`, `CLUB`, `CLUB LOGO`, `VALUE`, `PREFERED POSITION`) VALUES
(0, 'Cristiano Ronaldo', 32, 'https://cdn.sofifa.org/players/10/19/20801.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 94, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '95.5', 'ST LW'),
(1, 'L. Messi', 30, 'https://cdn.sofifa.org/players/10/19/158023.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 93, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '105', 'RW'),
(2, 'M. Neuer', 31, 'https://cdn.sofifa.org/players/10/19/167495.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 92, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '61', 'GK'),
(3, 'Neymar', 25, 'https://cdn.sofifa.org/players/10/19/190871.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 92, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '123', 'LW'),
(4, 'De Gea', 26, 'https://cdn.sofifa.org/players/10/19/193080.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 90, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '64.5', 'GK'),
(5, 'E. Hazard', 26, 'https://cdn.sofifa.org/players/10/19/183277.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 90, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '90.5', 'LW'),
(6, 'L Suarez', 30, 'https://cdn.sofifa.org/players/10/19/176580.png', 'Uruguay', 'https://cdn.sofifa.org/flags/60.png', 92, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '97', 'ST'),
(7, 'J. Oblak', 24, 'https://cdn.sofifa.org/players/10/19/200389.png', 'Slovenia', 'https://cdn.sofifa.org/flags/44.png', 88, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '57', 'GK'),
(8, 'G. Buffon', 39, 'https://cdn.sofifa.org/players/10/19/1179.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 89, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '4.5', 'GK'),
(9, 'T. Courtois', 25, 'https://cdn.sofifa.org/players/10/19/192119.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 89, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '59', 'GK'),
(10, 'Sergio Ramos', 31, 'https://cdn.sofifa.org/players/10/19/155862.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 90, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '52', 'CB'),
(11, 'M. Hummels', 28, 'https://cdn.sofifa.org/players/10/19/178603.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 88, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '48', 'CB'),
(12, 'G. Bale', 27, 'https://cdn.sofifa.org/players/10/19/173731.png', 'Wales', 'https://cdn.sofifa.org/flags/50.png', 89, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '69.5', 'RW'),
(13, 'K. De Bruyne', 26, 'https://cdn.sofifa.org/players/10/19/192985.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 89, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '83', 'RM CM CAM'),
(14, 'R. Lewandowski', 28, 'https://cdn.sofifa.org/players/10/19/188545.png', 'Poland', 'https://cdn.sofifa.org/flags/37.png', 91, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '92', 'ST'),
(15, 'S. Handanovic', 32, 'https://cdn.sofifa.org/players/10/19/162835.png', 'Slovenia', 'https://cdn.sofifa.org/flags/44.png', 87, 'Inter', 'https://cdn.sofifa.org/teams/2/light/44.png', '29', 'GK'),
(16, 'H. Lloris', 30, 'https://cdn.sofifa.org/players/10/19/167948.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 88, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '38', 'GK'),
(17, 'G. Chiellini', 32, 'https://cdn.sofifa.org/players/10/19/138956.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 89, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '38', 'CB'),
(18, 'D. Godin', 31, 'https://cdn.sofifa.org/players/10/19/182493.png', 'Uruguay', 'https://cdn.sofifa.org/flags/60.png', 88, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '40', 'CB'),
(19, 'N. Kante', 26, 'https://cdn.sofifa.org/players/10/19/215914.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 87, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '52.5', 'CM CDM'),
(20, 'T. Kroos', 27, 'https://cdn.sofifa.org/players/10/19/182521.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 90, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '79', 'CDM CM'),
(21, 'A. Robben', 33, 'https://cdn.sofifa.org/players/10/19/9014.png', 'Netherlands', 'https://cdn.sofifa.org/flags/34.png', 88, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '36', 'RW RM'),
(22, 'M. Salah', 25, 'https://cdn.sofifa.org/players/10/19/209331.png', 'Egypt', 'https://cdn.sofifa.org/flags/111.png', 83, 'Liverpool', 'https://cdn.sofifa.org/teams/2/light/9.png', '32.5', 'RW'),
(23, 'P. Dybala', 23, 'https://cdn.sofifa.org/players/10/19/211110.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 88, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '79', 'ST CAM'),
(24, 'David Silva', 31, 'https://cdn.sofifa.org/players/10/19/168542.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 87, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '44', 'LM CM CAM'),
(25, 'G. Higuain', 29, 'https://cdn.sofifa.org/players/10/19/167664.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 90, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '77', 'ST'),
(26, 'A. Griezmann', 26, 'https://cdn.sofifa.org/players/10/19/194765.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 88, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '75', 'LW RW ST'),
(27, 'E. Cavani', 30, 'https://cdn.sofifa.org/players/10/19/179813.png', 'Uruguay', 'https://cdn.sofifa.org/flags/60.png', 87, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '48.5', 'ST'),
(28, 'H. Kane', 23, 'https://cdn.sofifa.org/players/10/19/202126.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 86, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '59', 'ST'),
(29, 'M. Icardi', 24, 'https://cdn.sofifa.org/players/10/19/201399.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 84, 'Inter', 'https://cdn.sofifa.org/teams/2/light/44.png', '42', 'ST'),
(30, 'R. Lukaku', 24, 'https://cdn.sofifa.org/players/10/19/192505.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 86, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '59', 'ST'),
(31, 'Z. Ibrahimovic', 35, 'https://cdn.sofifa.org/players/10/19/41236.png', 'Sweden', 'https://cdn.sofifa.org/flags/46.png', 88, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '27', 'ST'),
(32, 'P. Aubameyang', 28, 'https://cdn.sofifa.org/players/10/19/188567.png', 'Gabon', 'https://cdn.sofifa.org/flags/115.png', 88, 'Borussia Dortmund', 'https://cdn.sofifa.org/teams/2/light/22.png', '61', 'ST'),
(33, 'M. ter Stegen', 25, 'https://cdn.sofifa.org/players/10/19/192448.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 85, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '35.5', 'GK'),
(34, 'Pique', 30, 'https://cdn.sofifa.org/players/10/19/152729.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 87, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '37.5', 'CB'),
(35, 'J. Boateng', 28, 'https://cdn.sofifa.org/players/10/19/183907.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 88, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '48', 'CB'),
(36, 'Thiago Silva', 32, 'https://cdn.sofifa.org/players/10/19/164240.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 88, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '34', 'CB'),
(37, 'Marcelo', 29, 'https://cdn.sofifa.org/players/10/19/176676.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 87, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '38', 'LB'),
(38, 'Jordi Alba', 28, 'https://cdn.sofifa.org/players/10/19/189332.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 85, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '30.5', 'LB'),
(39, 'Y. Carrasco', 23, 'https://cdn.sofifa.org/players/10/19/208418.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 85, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '51.5', 'RM LM'),
(40, 'M. Reus', 28, 'https://cdn.sofifa.org/players/10/19/188350.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 86, 'Borussia Dortmund', 'https://cdn.sofifa.org/teams/2/light/22.png', '45', 'LW ST LM'),
(41, 'Coutinho', 25, 'https://cdn.sofifa.org/players/10/19/189242.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 86, 'Liverpool', 'https://cdn.sofifa.org/teams/2/light/9.png', '56', 'CAM LW'),
(42, 'L. Insigne', 26, 'https://cdn.sofifa.org/players/10/19/198219.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 85, 'Napoli', 'https://cdn.sofifa.org/teams/2/light/48.png', '45', 'LW'),
(43, 'P. Pogba', 24, 'https://cdn.sofifa.org/players/10/19/195864.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 87, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '66.5', 'CDM CM'),
(44, 'Thiago', 26, 'https://cdn.sofifa.org/players/10/19/189509.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 88, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '70.5', 'CDM CAM CM'),
(45, 'L. Modric', 31, 'https://cdn.sofifa.org/players/10/19/177003.png', 'Croatia', 'https://cdn.sofifa.org/flags/10.png', 89, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '57', 'CDM CM'),
(46, 'R. Sterling', 22, 'https://cdn.sofifa.org/players/10/19/202652.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 82, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '29.5', 'LM RM RW'),
(47, 'C. Eriksen', 25, 'https://cdn.sofifa.org/players/10/19/190460.png', 'Denmark', 'https://cdn.sofifa.org/flags/13.png', 87, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '65', 'LM RM CAM'),
(48, 'J. Rodr?guez', 25, 'https://cdn.sofifa.org/players/10/19/198710.png', 'Colombia', 'https://cdn.sofifa.org/flags/56.png', 87, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '63', 'CAM CM RM'),
(49, 'D. Mertens', 30, 'https://cdn.sofifa.org/players/10/19/175943.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 86, 'Napoli', 'https://cdn.sofifa.org/teams/2/light/48.png', '43', 'ST LW CF'),
(50, 'C. Immobile', 27, 'https://cdn.sofifa.org/players/10/19/192387.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 82, 'Lazio', 'https://cdn.sofifa.org/teams/2/light/46.png', '26', 'ST'),
(51, 'J. Vertonghen', 30, 'https://cdn.sofifa.org/players/10/19/172871.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 85, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '28.5', 'CB'),
(52, 'C .Azpilicueta', 27, 'https://cdn.sofifa.org/players/10/19/184432.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 85, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '37.5', 'LB RB CB'),
(54, 'Alex Sandro', 26, 'https://cdn.sofifa.org/players/10/19/191043.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 86, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '44', 'LM LB'),
(55, 'D. Carvajal', 25, 'https://cdn.sofifa.org/players/10/19/204963.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 84, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '32', 'RB'),
(56, 'J. Kimmich', 22, 'https://cdn.sofifa.org/players/10/19/212622.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 81, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '20.5', 'CDM CB CM '),
(57, 'K.Walker', 27, 'https://cdn.sofifa.org/players/10/19/188377.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 84, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '29', 'RB RWB'),
(58, 'Casemiro', 25, 'https://cdn.sofifa.org/players/10/19/200145.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 85, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '42', 'CDM'),
(59, 'A. Vidal', 30, 'https://cdn.sofifa.org/players/10/19/181872.png', 'Chile', 'https://cdn.sofifa.org/flags/55.png', 87, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '37.5', 'CM CDM'),
(60, 'Iniesta', 33, 'https://cdn.sofifa.org/players/10/19/41.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 87, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '29.5', 'LM CM'),
(61, 'M. Verratti', 24, 'https://cdn.sofifa.org/players/10/19/199556.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 87, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '64.5', 'CDM CM'),
(62, 'Quaresma', 33, 'https://cdn.sofifa.org/players/10/19/20775.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 83, 'Be?ikta? JK', 'https://cdn.sofifa.org/teams/2/light/327.png', '15.5', 'LM RM'),
(63, 'Q. Promes', 25, 'https://cdn.sofifa.org/players/10/19/208808.png', 'Netherlands', 'https://cdn.sofifa.org/flags/34.png', 82, 'Spartak Moscow', 'https://cdn.sofifa.org/teams/2/light/100767.png', '28', 'LM ST RM'),
(64, 'J. Cuadrado', 29, 'https://cdn.sofifa.org/players/10/19/193082.png', 'Colombia', 'https://cdn.sofifa.org/flags/56.png', 82, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '21.5', 'RM'),
(65, 'R. Mahrez', 26, 'https://cdn.sofifa.org/players/10/19/204485.png', 'Algeria', 'https://cdn.sofifa.org/flags/97.png', 83, 'Leicester City', 'https://cdn.sofifa.org/teams/2/light/95.png', '30.5', 'RM'),
(66, 'K. Benzema', 29, 'https://cdn.sofifa.org/players/10/19/165153.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 86, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '44.5', 'ST'),
(67, 'Falcao', 31, 'https://cdn.sofifa.org/players/10/19/167397.png', 'Colombia', 'https://cdn.sofifa.org/flags/56.png', 84, 'AS Monaco', 'https://cdn.sofifa.org/teams/2/light/69.png', '28', 'ST'),
(68, 'Roberto Firmino', 25, 'https://cdn.sofifa.org/players/10/19/201942.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 83, 'Liverpool', 'https://cdn.sofifa.org/teams/2/light/9.png', '34', 'CAM CF ST'),
(69, 'K. Navas', 30, 'https://cdn.sofifa.org/players/10/19/193041.png', 'Costa Rica', 'https://cdn.sofifa.org/flags/72.png', 85, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '24.5', 'GK'),
(70, 'B. Leno', 25, 'https://cdn.sofifa.org/players/10/19/192563.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 85, 'Bayer 04 Leverkusen', 'https://cdn.sofifa.org/teams/2/light/32.png', '34', 'GK'),
(71, 'Ederson', 23, 'https://cdn.sofifa.org/players/10/19/210257.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 83, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '26', 'GK'),
(72, 'Pepe', 34, 'https://cdn.sofifa.org/players/10/19/120533.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 86, 'Be?ikta? JK', 'https://cdn.sofifa.org/teams/2/light/327.png', '13.5', 'CB'),
(73, 'R. Varane', 24, 'https://cdn.sofifa.org/players/10/19/201535.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 85, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '46.5', 'CB'),
(74, 'M. Benatia', 30, 'https://cdn.sofifa.org/players/10/19/177509.png', 'Morocco', 'https://cdn.sofifa.org/flags/129.png', 84, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '23', 'CB'),
(75, 'Miranda', 32, 'https://cdn.sofifa.org/players/10/19/168609.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 86, 'Inter', 'https://cdn.sofifa.org/teams/2/light/44.png', '25.5', 'CB'),
(76, 'Sokratis', 29, 'https://cdn.sofifa.org/players/10/19/172879.png', 'Greece', 'https://cdn.sofifa.org/flags/22.png', 86, 'Borussia Dortmund', 'https://cdn.sofifa.org/teams/2/light/22.png', '34.5', 'CB'),
(77, 'T. Alderweireld', 28, 'https://cdn.sofifa.org/players/10/19/184087.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 86, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '40.5', 'CB'),
(78, 'N. Otamendi', 29, 'https://cdn.sofifa.org/players/10/19/192366.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 83, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '20', 'CB'),
(79, 'D. Alaba', 25, 'https://cdn.sofifa.org/players/10/19/197445.png', 'Austria', 'https://cdn.sofifa.org/flags/4.png', 86, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '44.5', 'CM CB LB'),
(80, 'Marcos Alonso', 26, 'https://cdn.sofifa.org/players/10/19/192638.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 81, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '17.5', 'LB LM LWB'),
(81, 'Sergi Roberto', 25, 'https://cdn.sofifa.org/players/10/19/199564.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 81, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '19.5', 'CM CDM RB'),
(82, 'Juanfran', 32, 'https://cdn.sofifa.org/players/10/19/146760.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 83, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '14.5', 'RB'),
(83, 'A. Florenzi', 26, 'https://cdn.sofifa.org/players/10/19/203551.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 82, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '22', 'CM RW RB'),
(84, 'L. Piszczek', 32, 'https://cdn.sofifa.org/players/10/19/173771.png', 'Poland', 'https://cdn.sofifa.org/flags/37.png', 83, 'Borussia Dortmund', 'https://cdn.sofifa.org/teams/2/light/22.png', '14.5', 'CB RB'),
(85, 'Dani Alves', 34, 'https://cdn.sofifa.org/players/10/19/146530.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 84, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '9', 'RB'),
(86, 'A. Valencia', 31, 'https://cdn.sofifa.org/players/10/19/167905.png', 'Ecuador', 'https://cdn.sofifa.org/flags/57.png', 83, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '17', 'RB'),
(87, 'B. Matuidi', 30, 'https://cdn.sofifa.org/players/10/19/170890.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 85, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '28.5', 'CM CDM'),
(88, 'Y. Brahimi', 27, 'https://cdn.sofifa.org/players/10/19/184267.png', 'Algeria', 'https://cdn.sofifa.org/flags/97.png', 82, 'FC Porto', 'https://cdn.sofifa.org/teams/2/light/236.png', '23', 'LM'),
(89, 'H. Son', 24, 'https://cdn.sofifa.org/players/10/19/200104.png', 'Korea Republic', 'https://cdn.sofifa.org/flags/167.png', 82, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '28', 'ST RM LM'),
(90, 'Marco Asensio', 21, 'https://cdn.sofifa.org/players/10/19/220834.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 84, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '46', 'LW LM RM C'),
(91, 'J. Draxler', 23, 'https://cdn.sofifa.org/players/10/19/202166.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 84, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '39.5', 'LM CAM LW'),
(92, 'Isco', 25, 'https://cdn.sofifa.org/players/10/19/197781.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 86, 'Real Madrid CF', 'https://cdn.sofifa.org/teams/2/light/243.png', '56.5', 'LM RM CAM '),
(93, 'I. Rakitic', 29, 'https://cdn.sofifa.org/players/10/19/168651.png', 'Croatia', 'https://cdn.sofifa.org/flags/10.png', 87, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '48.5', 'CM'),
(94, 'R. Nainggolan', 29, 'https://cdn.sofifa.org/players/10/19/178518.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 86, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '42.5', 'CAM CM'),
(95, 'M. Pjanic', 27, 'https://cdn.sofifa.org/players/10/19/180206.png', 'Bosnia Herzegovina', 'https://cdn.sofifa.org/flags/8.png', 85, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '43.5', 'CDM CM'),
(96, 'Iago Aspas', 29, 'https://cdn.sofifa.org/players/10/19/192629.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 83, 'RC Celta de Vigo', 'https://cdn.sofifa.org/teams/2/light/450.png', '26', 'RW ST'),
(97, 'Willian', 28, 'https://cdn.sofifa.org/players/10/19/180403.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 84, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '31.5', 'CAM RM RW'),
(98, 'D. Alli', 21, 'https://cdn.sofifa.org/players/10/19/211117.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 84, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '43', 'LM CF CAM'),
(99, 'H. Mkhitaryan', 28, 'https://cdn.sofifa.org/players/10/19/192883.png', 'Armenia', 'https://cdn.sofifa.org/flags/3.png', 85, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '39', 'LM RW RM'),
(100, 'N. Fekir', 23, 'https://cdn.sofifa.org/players/10/19/216594.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 82, 'Olympique Lyonnais', 'https://cdn.sofifa.org/teams/2/light/66.png', '28', 'ST CAM'),
(101, 'K. Mbappe', 18, 'https://cdn.sofifa.org/players/10/19/231747.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 83, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '41.5', 'ST'),
(102, 'Morata', 24, 'https://cdn.sofifa.org/players/10/19/201153.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 84, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '41', 'ST'),
(103, 'A. Lacazette', 26, 'https://cdn.sofifa.org/players/10/19/193301.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 85, 'Arsenal', 'https://cdn.sofifa.org/teams/2/light/1.png', '48.5', 'ST'),
(104, 'K. Manolas', 26, 'https://cdn.sofifa.org/players/10/19/192774.png', 'Greece', 'https://cdn.sofifa.org/flags/22.png', 84, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '31.5', 'CB'),
(105, 'K. Koulibaly', 26, 'https://cdn.sofifa.org/players/10/19/201024.png', 'Senegal', 'https://cdn.sofifa.org/flags/136.png', 84, 'Napoli', 'https://cdn.sofifa.org/teams/2/light/48.png', '32.5', 'CB'),
(106, 'S. de Vrij', 25, 'https://cdn.sofifa.org/players/10/19/198176.png', 'Netherlands', 'https://cdn.sofifa.org/flags/34.png', 83, 'Lazio', 'https://cdn.sofifa.org/teams/2/light/46.png', '29', 'CB'),
(107, 'A. Barzagli', 36, 'https://cdn.sofifa.org/players/10/19/137186.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 85, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '5', 'CB'),
(108, 'Marquinhos', 23, 'https://cdn.sofifa.org/players/10/19/207865.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 83, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '30.5', 'CB'),
(109, 'K. Glik', 29, 'https://cdn.sofifa.org/players/10/19/190547.png', 'Poland', 'https://cdn.sofifa.org/flags/37.png', 85, 'AS Monaco', 'https://cdn.sofifa.org/teams/2/light/69.png', '30', 'CB'),
(110, 'E. Bailly', 23, 'https://cdn.sofifa.org/players/10/19/225508.png', 'Ivory Coast', 'https://cdn.sofifa.org/flags/108.png', 84, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '35.5', 'CB'),
(111, 'V. van Dijk', 25, 'https://cdn.sofifa.org/players/10/19/203376.png', 'Netherlands', 'https://cdn.sofifa.org/flags/34.png', 83, 'Southampton', 'https://cdn.sofifa.org/teams/2/light/17.png', '27.5', 'CB'),
(112, 'David Luiz', 30, 'https://cdn.sofifa.org/players/10/19/179944.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 86, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '33', 'CB'),
(113, 'Alex Telles', 24, 'https://cdn.sofifa.org/players/10/19/212462.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 80, 'FC Porto', 'https://cdn.sofifa.org/teams/2/light/236.png', '16', 'LB'),
(114, 'N Semedo', 23, 'https://cdn.sofifa.org/players/10/19/227928.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 81, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '20.5', 'RB'),
(115, 'S. Lichtsteiner', 33, 'https://cdn.sofifa.org/players/10/19/108080.png', 'Switzerland', 'https://cdn.sofifa.org/flags/47.png', 82, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '8.5', 'RM RB'),
(116, 'T. Meunier', 25, 'https://cdn.sofifa.org/players/10/19/202371.png', 'Belgium', 'https://cdn.sofifa.org/flags/7.png', 81, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '18.5', 'RM RB'),
(117, 'N. Clyne', 26, 'https://cdn.sofifa.org/players/10/19/190456.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 82, 'Liverpool', 'https://cdn.sofifa.org/teams/2/light/9.png', '22', 'RB'),
(118, 'S. Coleman', 28, 'https://cdn.sofifa.org/players/10/19/180216.png', 'Republic of Ireland', 'https://cdn.sofifa.org/flags/25.png', 81, 'Everton', 'https://cdn.sofifa.org/teams/2/light/7.png', '14', 'RB'),
(119, 'M Fernandes', 26, 'https://cdn.sofifa.org/players/10/19/193525.png', 'Russia', 'https://cdn.sofifa.org/flags/40.png', 81, 'CSKA Moscow', 'https://cdn.sofifa.org/teams/2/light/315.png', '17', 'RM RWB'),
(120, 'Fabinho', 23, 'https://cdn.sofifa.org/players/10/19/209499.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 83, 'AS Monaco', 'https://cdn.sofifa.org/teams/2/light/69.png', '29.5', 'CDM'),
(121, 'Vitolo', 27, 'https://cdn.sofifa.org/players/10/19/199715.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 83, 'UD Las Palmas', 'https://cdn.sofifa.org/teams/2/light/472.png', '27', 'RM LM'),
(122, 'T. Lemar', 21, 'https://cdn.sofifa.org/players/10/19/213565.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 83, 'AS Monaco', 'https://cdn.sofifa.org/teams/2/light/69.png', '38.5', 'LM'),
(123, 'A. Martial', 21, 'https://cdn.sofifa.org/players/10/19/211300.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 82, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '33', 'ST LM'),
(124, 'Koke', 25, 'https://cdn.sofifa.org/players/10/19/193747.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 84, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '39.5', 'LM RM CM'),
(125, 'Gelson Martins', 22, 'https://cdn.sofifa.org/players/10/19/227055.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 81, 'Sporting CP', 'https://cdn.sofifa.org/teams/2/light/237.png', '25', 'LM RM'),
(126, 'Marlos', 29, 'https://cdn.sofifa.org/players/10/19/187754.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 82, 'Shakhtar Donetsk', 'https://cdn.sofifa.org/teams/2/light/101059.png', '21.5', 'RM'),
(127, 'F. Bernardeschi', 23, 'https://cdn.sofifa.org/players/10/19/212404.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 82, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '30.5', 'LM CF RM'),
(128, 'S. Aurier', 24, 'https://cdn.sofifa.org/players/10/19/197853.png', 'Ivory Coast', 'https://cdn.sofifa.org/flags/108.png', 81, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '19', 'RB'),
(129, 'K. Coman', 21, 'https://cdn.sofifa.org/players/10/19/213345.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 82, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '18', 'LM RM'),
(130, 'O.Dembele', 20, 'https://cdn.sofifa.org/players/10/19/231443.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 83, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '40', 'RW LW'),
(131, 'Pedro', 29, 'https://cdn.sofifa.org/players/10/19/189505.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 84, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '30.5', 'LW RW'),
(132, 'S. Kagawa', 28, 'https://cdn.sofifa.org/players/10/19/189358.png', 'Japan', 'https://cdn.sofifa.org/flags/163.png', 83, 'Borussia Dortmund', 'https://cdn.sofifa.org/teams/2/light/22.png', '26', 'CF CAM'),
(133, 'Andr? Gomes', 23, 'https://cdn.sofifa.org/players/10/19/211575.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 82, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '30', 'CM LM RM'),
(134, 'A. Belotti', 23, 'https://cdn.sofifa.org/players/10/19/208596.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 83, 'Torino', 'https://cdn.sofifa.org/teams/2/light/54.png', '37', 'ST'),
(135, 'M. Mandzukic', 31, 'https://cdn.sofifa.org/players/10/19/181783.png', 'Croatia', 'https://cdn.sofifa.org/flags/10.png', 83, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '23.5', 'LM ST'),
(136, 'T. Werner', 21, 'https://cdn.sofifa.org/players/10/19/212188.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 82, 'RB Leipzig', 'https://cdn.sofifa.org/teams/2/light/112172.png', '30.5', 'ST'),
(137, 'Gabriel Jesus', 20, 'https://cdn.sofifa.org/players/10/19/230666.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 81, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '31', 'ST'),
(138, 'Aduriz', 36, 'https://cdn.sofifa.org/players/10/19/106231.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 84, 'Athletic Club de Bil', 'https://cdn.sofifa.org/teams/2/light/448.png', '11', 'ST'),
(139, 'J. Mascherano', 33, 'https://cdn.sofifa.org/players/10/19/142754.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 83, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '10.5', 'CDM CB'),
(140, 'E. Garay', 30, 'https://cdn.sofifa.org/players/10/19/170481.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 83, 'Valencia CF', 'https://cdn.sofifa.org/teams/2/light/461.png', '19', 'CB'),
(141, 'S. Umtiti', 23, 'https://cdn.sofifa.org/players/10/19/205600.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 83, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '29.5', 'CB'),
(142, 'J. Gimenez', 22, 'https://cdn.sofifa.org/players/10/19/216460.png', 'Uruguay', 'https://cdn.sofifa.org/flags/60.png', 83, 'Atl?tico Madrid', 'https://cdn.sofifa.org/teams/2/light/240.png', '28.5', 'CB'),
(143, 'F. Fazio', 30, 'https://cdn.sofifa.org/players/10/19/179847.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 82, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '16.5', 'CB'),
(144, 'A. Laporte', 23, 'https://cdn.sofifa.org/players/10/19/212218.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 84, 'Athletic Club de Bil', 'https://cdn.sofifa.org/teams/2/light/448.png', '35.5', 'CB'),
(145, 'L. Koscielny', 31, 'https://cdn.sofifa.org/players/10/19/165229.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 84, 'Arsenal', 'https://cdn.sofifa.org/teams/2/light/1.png', '21', 'CB'),
(146, 'S. Mustafi', 25, 'https://cdn.sofifa.org/players/10/19/192227.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 84, 'Arsenal', 'https://cdn.sofifa.org/teams/2/light/1.png', '31.5', 'CB'),
(147, 'A. Kolarov', 31, 'https://cdn.sofifa.org/players/10/19/185103.png', 'Serbia', 'https://cdn.sofifa.org/flags/51.png', 81, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '8', 'CB LB'),
(148, 'D. Rose', 26, 'https://cdn.sofifa.org/players/10/19/169595.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 82, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '21', 'LWB LB'),
(149, 'B. Davies', 24, 'https://cdn.sofifa.org/players/10/19/205923.png', 'Wales', 'https://cdn.sofifa.org/flags/50.png', 81, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '11', 'LWB CB LB'),
(150, 'V. Moses', 26, 'https://cdn.sofifa.org/players/10/19/172962.png', 'Nigeria', 'https://cdn.sofifa.org/flags/133.png', 80, 'Chelsea', 'https://cdn.sofifa.org/teams/2/light/5.png', '12.5', 'LM RM RWB'),
(151, 'H Bellerin', 22, 'https://cdn.sofifa.org/players/10/19/203747.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 81, 'Arsenal', 'https://cdn.sofifa.org/teams/2/light/1.png', '21', 'RB'),
(152, 'Danilo Pereira', 25, 'https://cdn.sofifa.org/players/10/19/200888.png', 'Portugal', 'https://cdn.sofifa.org/flags/38.png', 83, 'FC Porto', 'https://cdn.sofifa.org/teams/2/light/236.png', '27.5', 'CM CB CDM'),
(153, 'S. N\'Zonzi', 28, 'https://cdn.sofifa.org/players/10/19/187936.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 83, 'Sevilla FC', 'https://cdn.sofifa.org/teams/2/light/481.png', '21', 'CM CDM'),
(154, 'D. De Rossi', 33, 'https://cdn.sofifa.org/players/10/19/53302.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 83, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '10.5', 'CDM'),
(155, 'L. Bailey', 19, 'https://cdn.sofifa.org/players/10/19/229906.png', 'Jamaica', 'https://cdn.sofifa.org/flags/82.png', 82, 'Bayer 04 Leverkusen', 'https://cdn.sofifa.org/teams/2/light/32.png', '12', 'RM LM'),
(156, 'C. Marchisio', 31, 'https://cdn.sofifa.org/players/10/19/173210.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 85, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '33', 'CDM CM'),
(157, 'S. Khedira', 30, 'https://cdn.sofifa.org/players/10/19/179846.png', 'Germany', 'https://cdn.sofifa.org/flags/21.png', 84, 'Juventus', 'https://cdn.sofifa.org/teams/2/light/45.png', '29', 'CDM CM'),
(158, 'Suso', 23, 'https://cdn.sofifa.org/players/10/19/202651.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 82, 'Milan', 'https://cdn.sofifa.org/teams/2/light/47.png', '29.5', 'RW'),
(159, 'Malcom', 20, 'https://cdn.sofifa.org/players/10/19/222737.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 81, 'Girondins de Bordeau', 'https://cdn.sofifa.org/teams/2/light/59.png', '24.5', 'RM RW'),
(160, 'X. Shaqiri', 25, 'https://cdn.sofifa.org/players/10/19/193348.png', 'Switzerland', 'https://cdn.sofifa.org/flags/47.png', 82, 'Stoke City', 'https://cdn.sofifa.org/teams/2/light/1806.png', '28', 'RW RM'),
(161, 'Lucas', 24, 'https://cdn.sofifa.org/players/10/19/200949.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 82, 'Paris Saint-Germain', 'https://cdn.sofifa.org/teams/2/light/73.png', '28', 'LW RW'),
(162, 'L. Biglia', 31, 'https://cdn.sofifa.org/players/10/19/158963.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 83, 'Milan', 'https://cdn.sofifa.org/teams/2/light/47.png', '17.5', 'CM CDM'),
(163, 'Lucas Leiva', 30, 'https://cdn.sofifa.org/players/10/19/176266.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 82, 'Lazio', 'https://cdn.sofifa.org/teams/2/light/46.png', '9.5', 'CB CDM'),
(164, 'Luiz Gustavo', 29, 'https://cdn.sofifa.org/players/10/19/185221.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 80, 'Olympique de Marseil', 'https://cdn.sofifa.org/teams/2/light/219.png', '11.5', 'CB CM CDM'),
(165, 'Iborra', 29, 'https://cdn.sofifa.org/players/10/19/189560.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 82, 'Leicester City', 'https://cdn.sofifa.org/teams/2/light/95.png', '17', 'CAM CM CDM'),
(166, 'I. Gueye', 27, 'https://cdn.sofifa.org/players/10/19/193474.png', 'Senegal', 'https://cdn.sofifa.org/flags/136.png', 83, 'Everton', 'https://cdn.sofifa.org/teams/2/light/7.png', '24.5', 'CM CDM'),
(167, 'M. Rashford', 19, 'https://cdn.sofifa.org/players/10/19/231677.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 80, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '22', 'RM ST LM'),
(168, 'E. Banega', 29, 'https://cdn.sofifa.org/players/10/19/178562.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 83, 'Sevilla FC', 'https://cdn.sofifa.org/teams/2/light/481.png', '25.5', 'CM CAM'),
(169, 'Paulinho', 28, 'https://cdn.sofifa.org/players/10/19/187961.png', 'Brazil', 'https://cdn.sofifa.org/flags/54.png', 81, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '17.5', 'CDM CM'),
(170, 'K. Strootman', 27, 'https://cdn.sofifa.org/players/10/19/189712.png', 'Netherlands', 'https://cdn.sofifa.org/flags/34.png', 84, 'Roma', 'https://cdn.sofifa.org/teams/2/light/52.png', '35', 'CDM CM'),
(171, 'E. Dier', 23, 'https://cdn.sofifa.org/players/10/19/202335.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 82, 'Tottenham Hotspur', 'https://cdn.sofifa.org/teams/2/light/18.png', '25', 'CM CDM CB'),
(172, 'J. Henderson', 27, 'https://cdn.sofifa.org/players/10/19/183711.png', 'England', 'https://cdn.sofifa.org/flags/14.png', 82, 'Liverpool', 'https://cdn.sofifa.org/teams/2/light/9.png', '21.5', 'CM CDM'),
(173, 'A. S?nchez', 28, 'https://cdn.sofifa.org/players/10/19/184941.png', 'Chile', 'https://cdn.sofifa.org/flags/55.png', 88, 'Manchester United', 'https://cdn.sofifa.org/teams/2/light/11.png', '60', 'LW ST LM'),
(174, 'S. Ag?ero', 29, 'https://cdn.sofifa.org/players/10/19/153079.png', 'Argentina', 'https://cdn.sofifa.org/flags/52.png', 89, 'Manchester City', 'https://cdn.sofifa.org/teams/2/light/10.png', '66.5', 'ST'),
(175, 'Sergio Busquets', 28, 'https://cdn.sofifa.org/players/10/19/189511.png', 'Spain', 'https://cdn.sofifa.org/flags/45.png', 87, 'FC Barcelona', 'https://cdn.sofifa.org/teams/2/light/241.png', '41', 'CDM CM'),
(176, 'F. Rib?ry', 34, 'https://cdn.sofifa.org/players/10/19/156616.png', 'France', 'https://cdn.sofifa.org/flags/18.png', 85, 'FC Bayern Munich', 'https://cdn.sofifa.org/teams/2/light/21.png', '19.5', 'LM LW'),
(177, 'L. Bonucci', 30, 'https://cdn.sofifa.org/players/10/19/184344.png', 'Italy', 'https://cdn.sofifa.org/flags/27.png', 86, 'Milan', 'https://cdn.sofifa.org/teams/2/light/47.png', '33', 'CB');

-- --------------------------------------------------------

--
-- Table structure for table `prajith`
--

CREATE TABLE `prajith` (
  `Player` varchar(15) NOT NULL,
  `Bought for` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prajith`
--

INSERT INTO `prajith` (`Player`, `Bought for`) VALUES
('O.Dembele', 70),
('I. Rakitic', 50);

-- --------------------------------------------------------

--
-- Table structure for table `sourav`
--

CREATE TABLE `sourav` (
  `Player` varchar(30) NOT NULL,
  `Bought for` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sreekanth`
--

CREATE TABLE `sreekanth` (
  `Player` varchar(20) NOT NULL,
  `Bought for` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sreekanth`
--

INSERT INTO `sreekanth` (`Player`, `Bought for`) VALUES
('S. Ag?ero', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Name`) VALUES
('prajith'),
('sourav'),
('sreekanth');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
