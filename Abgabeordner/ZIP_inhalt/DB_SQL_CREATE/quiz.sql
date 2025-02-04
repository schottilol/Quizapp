-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Jul 2018 um 20:44
-- Server-Version: 10.1.31-MariaDB
-- PHP-Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `quiz`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `answer`
--

CREATE TABLE `answer` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` tinyint(1) UNSIGNED DEFAULT NULL,
  `question_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `answer`
--

INSERT INTO `answer` (`id`, `text`, `correct`, `question_id`) VALUES
(1, '7 rote und 6 weiße', 1, 1),
(2, '5 rote und 6 weiße', 0, 1),
(3, '7 rote und 7 weiße', 0, 1),
(4, '7 rote und 8 weiße', 0, 1),
(5, 'Florida', 0, 2),
(6, 'Kalifornien', 1, 2),
(7, 'Texas', 0, 2),
(8, 'New York', 0, 2),
(9, '40.', 0, 3),
(10, '42.', 0, 3),
(11, '43.', 0, 3),
(12, '44.', 1, 3),
(13, 'Key West', 1, 4),
(14, 'Palm Bay', 0, 4),
(15, 'South Bend', 0, 4),
(16, 'My City', 0, 4),
(17, 'am 3. Montag im Januar', 1, 5),
(18, 'an seinem Geburtstag, dem 15. Januar', 0, 5),
(19, 'am 4. April (Tag des Attentats)', 0, 5),
(20, 'am 9. April ', 0, 5),
(21, 'Cincinnati Reds', 1, 6),
(22, 'Philadelphia Phillies', 0, 6),
(23, 'Pittsburgh Pirates', 0, 6),
(24, 'Some other.', 0, 6),
(25, '1,5', 0, 7),
(26, '3,8', 1, 7),
(27, '7,1', 0, 7),
(28, '9,4', 0, 7),
(29, '43 Meter', 0, 8),
(30, '86 Meter', 1, 8),
(31, '129 Meter', 0, 8),
(32, '33 Meter', 0, 8),
(33, '2', 0, 9),
(34, '4', 1, 9),
(35, '6', 0, 9),
(36, '1', 0, 9),
(37, 'Boston und Sacramento', 0, 10),
(38, 'Columbia und San Francisco', 0, 10),
(39, 'Chicago und Los Angeles', 1, 10),
(40, 'New York und Los Angeles', 0, 10),
(41, 'Zu den Metallen', 0, 11),
(42, 'Zu den Halbmetallen', 0, 11),
(43, 'Zu den Nichtmetallen', 1, 11),
(44, 'Zu nichts.', 0, 11),
(45, '... Streusalz.', 0, 12),
(46, '... Gips.', 1, 12),
(47, '... Papier.', 0, 12),
(48, '..Wasser.', 0, 12),
(49, 'Violett', 1, 13),
(50, 'Braun', 0, 13),
(51, 'Weiß', 0, 13),
(52, 'Schwarz', 0, 13),
(53, 'KH4O', 0, 14),
(54, 'CH4O', 1, 14),
(55, 'CH4O', 0, 14),
(56, 'CH7A', 0, 14),
(57, 'Kupfer und Zink', 1, 15),
(58, 'Zinn und Silber', 0, 15),
(59, 'Silber und Gold', 0, 15),
(60, 'Platin und Diamant', 0, 15),
(61, 'Er führte die Symbolschreibweise für die Summenformeln ein (z. Bsp.: O steht für Sauerstoff ).', 1, 16),
(62, 'Dank ihm wissen wir mehr über die Chemie der Kohlenwasserstoffe.', 0, 16),
(63, 'Er ist der Hauptbegründer der organischen Chemie.', 0, 16),
(64, 'Er war schwul.', 0, 16),
(65, 'Desoxyribonukleinsäure', 0, 17),
(66, 'Ethansäure', 0, 17),
(67, 'Propanthial-S-Oxid', 1, 17),
(68, 'Djdialsaäurse', 0, 17),
(69, 'Hinzufügen', 1, 18),
(70, 'Abziehen', 0, 18),
(71, 'Teilen', 0, 18),
(72, 'Schlagen', 0, 18),
(73, 'Allee in Sim City', 0, 19),
(74, 'Kurzform von Ally McBeal', 0, 19),
(75, 'Allianz', 1, 19),
(76, 'Freund', 0, 19),
(77, 'Einen Busch um sich zu verstecken', 0, 20),
(78, 'Jemanden vernichtend schlagen', 1, 20),
(79, 'Eine große Karte in einem Strategiespiel', 0, 20),
(80, 'Nichts.', 0, 20),
(81, 'Jemand der Camps in Spielen errichtet', 0, 21),
(82, 'Spieler die gerne zelten', 0, 21),
(83, 'Jemand der bewegungslos auf Gegner lauert', 1, 21),
(84, 'Gibt es nicht.', 0, 21),
(85, 'Er wird gesperrt', 1, 22),
(86, 'Er erhält ein Banner für seine Truppen', 0, 22),
(87, 'Er erhält eine Banane als Proviant', 0, 22),
(88, 'Er ist der beste.', 0, 22),
(89, 'Einen Bottich zum Sammeln von Gegenständen', 0, 23),
(90, 'Eine computergesteuerte Spielfigur', 1, 23),
(91, 'Eine nervige Fliege', 0, 23),
(92, 'Einen Fisch.', 0, 23),
(93, 'Windjacke', 0, 24),
(94, 'Betrüger', 1, 24),
(95, 'Berater', 0, 24),
(96, 'Trainer', 0, 24),
(97, 'Den Gegner aus dem Feld schlagen', 0, 25),
(98, 'der Kontroll-Turm fällt', 0, 25),
(99, 'Die Flagge zur Basis bringen', 1, 25),
(100, 'Come to fool.', 0, 25),
(101, 'Roter Weg', 0, 26),
(102, 'Roter Weg', 0, 26),
(103, 'Blaue Bewegung', 0, 26),
(104, 'Grüner Marsch', 1, 26),
(105, 'mittelhochdeutsch', 0, 27),
(106, 'schwäbisch', 0, 27),
(107, 'sächsisch', 0, 27),
(108, 'ostfriesisch', 1, 27),
(109, 'Donnerstag', 1, 28),
(110, 'Freitag', 0, 28),
(111, 'Dienstag', 0, 28),
(112, 'Montag', 0, 28),
(113, 'Hobbit', 1, 29),
(114, 'Zwerg', 0, 29),
(115, 'Wichtel', 0, 29),
(116, 'Kobold', 0, 29),
(117, 'Dreifelderwirtschaft', 1, 30),
(118, 'Soziale Marktwirtschaft', 0, 30),
(119, 'Vetternwirtschaft', 0, 30),
(120, 'Nachhaltige Wirtschaft', 0, 30),
(121, 'Philosophen', 0, 31),
(122, 'Vielfraß', 0, 31),
(123, 'Freischwimmer', 0, 31),
(124, 'Freibeuter', 1, 31),
(125, 'Kreiszüge', 0, 32),
(126, 'Viereckzüge', 0, 32),
(127, 'Dreieckzüge', 0, 32),
(128, 'Kreuzzüge', 1, 32),
(129, 'der Moderne', 0, 33),
(130, 'der Antike', 0, 33),
(131, 'dem Mittelalter', 1, 33),
(132, 'der Steinzeit', 0, 33),
(133, 'Michael Phelps', 1, 34),
(134, 'Mark Spitz', 0, 34),
(135, 'Usain Bolt', 0, 34),
(136, 'Ray Ewry', 0, 34),
(137, 'Rolf Beilschmidt', 0, 35),
(138, 'Gerd Wessig', 0, 35),
(139, 'Jacek Wszola', 1, 35),
(140, 'Dwight Stones', 0, 35),
(141, 'Netz', 0, 36),
(142, 'Pfeife', 1, 36),
(143, 'Pfosten', 0, 36),
(144, 'Latte', 0, 36),
(145, 'Großbritannien', 0, 37),
(146, 'China', 0, 37),
(147, 'Deutschland', 0, 37),
(148, 'USA', 1, 37),
(149, 'Seilklettern', 0, 38),
(150, 'Motorbootrennen', 0, 38),
(151, 'Croquet', 0, 38),
(152, 'Fallschirmspringen', 1, 38),
(153, 'Hans-Dieter Flick', 1, 39),
(154, 'Hans-Peter Blick', 0, 39),
(155, 'Hans-Dieter Wussow', 0, 39),
(156, 'Hans-Jürgen Schick', 0, 39),
(157, 'Diego', 0, 40),
(158, 'Dede', 1, 40),
(159, 'Amoroso', 0, 40),
(160, 'Cafu', 0, 40),
(161, 'Dustin Johnson, USA', 0, 41),
(162, 'Luke Donald, England', 0, 41),
(163, 'Bubba Watson, USA', 1, 41),
(164, 'Ian Poulter, England', 0, 41),
(165, 'Fette und Vitamine', 0, 42),
(166, 'Fette und Proteine', 0, 42),
(167, 'Kohlenhydrate und Fette', 1, 42),
(168, 'Kohlenhydrate und Proteine', 0, 42),
(169, 'Proteine und Kohlenhydrate', 0, 43),
(170, 'Kohlenhydrate und Fette', 0, 43),
(171, 'Proteine und Vitamine', 0, 43),
(172, 'Proteine und Fette', 1, 43),
(173, 'Sachamine', 0, 44),
(174, 'Saccharide', 1, 44),
(175, 'Sachen', 0, 44),
(176, 'Sachte', 0, 44),
(177, 'In Mono-, Di- und Tetrasaccharide', 0, 45),
(178, 'In Mono-, Di- und Polysaccharide', 1, 45),
(179, 'Gar nicht, wozu auch? Gibt ja nicht viele.', 0, 45),
(180, 'In Mono-, Di- und Trisaccharide', 0, 45),
(181, 'Glucose ', 1, 46),
(182, 'Coladose', 0, 46),
(183, 'Saccharose', 0, 46),
(184, 'Maltose', 0, 46),
(185, 'Aus der Photosynthese: Es ist die Reaktionsenergie im Molekül, die genutzt wird.', 0, 47),
(186, 'Aus der Zellatmung: Es ist die Bindungsenergie im Molekül, die genutzt wird.', 0, 47),
(187, 'Aus der Zellatmung: Es ist die Reaktionsenergie im Molekül, die genutzt wird.', 0, 47),
(188, 'Aus der Photosynthese: Es ist die Bindungsenergie im Molekül, die genutzt wird.', 1, 47),
(189, 'Aldehyde', 0, 48),
(190, 'Aminosäuren', 1, 48),
(191, 'Atomkraftwerke', 0, 48),
(192, 'Alkansäuren', 0, 48),
(193, 'Antikörper', 0, 49),
(194, 'Hormone', 0, 49),
(195, 'Zellmembran ', 1, 49),
(196, 'Rezeptoren', 0, 49),
(197, 'Mineralstoffe', 0, 50),
(198, 'Fette', 0, 50),
(199, 'Zucker', 0, 50),
(200, 'Eiweiße', 1, 50),
(201, '2001', 0, 51),
(202, '1998', 1, 51),
(203, '1993', 0, 51),
(204, '1999', 0, 51),
(205, 'Gordon Hiresword', 0, 52),
(206, 'Gustav Gans', 0, 52),
(207, 'Gerred Freyer', 0, 52),
(208, ' Gordon Freeman', 1, 52),
(209, 'Dr. Kleiner', 0, 53),
(210, 'Eli Vance', 1, 53),
(211, 'G-Man', 0, 53),
(212, 'Wer ist Alyx?!', 0, 53),
(213, 'Seven Hour War', 1, 54),
(214, 'Seven Minute War', 0, 54),
(215, 'Seven Day War', 0, 54),
(216, 'World War III', 0, 54),
(217, 'Die Katze Mr. Buttons', 0, 55),
(218, 'Der Hund Milky', 0, 55),
(219, 'Der Antlion Srappy', 0, 55),
(220, ' Die Headcrab Lamarr', 1, 55),
(221, 'Nihilanth', 1, 56),
(222, 'Lilith', 0, 56),
(223, 'Gargantua', 0, 56),
(224, 'Behemoth', 0, 56),
(225, 'Origin', 0, 57),
(226, 'Valve', 0, 57),
(227, 'Steam', 1, 57),
(228, 'Uplay', 0, 57),
(229, 'Father Lucas', 0, 58),
(230, 'Saint Michael', 0, 58),
(231, 'Father Grigori', 1, 58),
(232, 'Father Sebastian', 0, 58),
(233, 'Shit.', 0, 59),
(234, 'I like trains.', 0, 59),
(235, 'We need to find your father!', 0, 59),
(236, '...', 1, 59),
(237, 'Quake-Engine', 1, 60),
(238, 'Doom-Engine', 0, 60),
(239, 'Unreal-Engine', 0, 60),
(240, 'Es ist eine Eigenentwicklung.', 0, 60),
(241, 'Brechstange', 1, 61),
(242, 'Hammer', 0, 61),
(243, 'Bohrer', 0, 61),
(244, 'Säge', 0, 61),
(245, 'Rom', 0, 62),
(246, 'Madrid', 0, 62),
(247, 'Paris', 1, 62),
(248, 'Berlin', 0, 62),
(249, 'Jason Bourne', 0, 63),
(250, 'Ethan Hunt', 0, 63),
(251, 'Kingsmen', 0, 63),
(252, 'James Bond', 1, 63),
(253, 'BAT', 0, 64),
(254, 'PDF', 1, 64),
(255, 'EXE', 0, 64),
(256, 'ARF', 0, 64),
(257, 'Windows', 0, 65),
(258, 'iOS', 1, 65),
(259, 'Zuse', 0, 65),
(260, 'Linux', 0, 65),
(261, '1', 0, 66),
(262, '4', 0, 66),
(263, '3', 0, 66),
(264, '2', 1, 66),
(265, '40km', 0, 67),
(266, '43,21km', 0, 67),
(267, '42,195km', 1, 67),
(268, '42km', 0, 67),
(269, '2003', 0, 68),
(270, '2002', 1, 68),
(271, '2000', 0, 68),
(272, '2001', 0, 68),
(273, '1950', 0, 69),
(274, '1945', 1, 69),
(275, '1949', 0, 69),
(276, '1939', 0, 69),
(277, '22', 0, 70),
(278, '18', 0, 70),
(279, '15', 0, 70),
(280, '16', 1, 70),
(281, 'London', 1, 71),
(282, 'Paris', 0, 71),
(283, 'New York', 0, 71),
(284, 'Berlin', 0, 71),
(285, 'Mars', 0, 72),
(286, 'Jupiter', 0, 72),
(287, 'Erde', 0, 72),
(288, 'Venus', 1, 72),
(289, 'Samba', 0, 73),
(290, 'Zumba', 1, 73),
(291, 'Sumba', 0, 73),
(292, 'Zamba', 0, 73),
(293, 'dem Bundeskanzler', 0, 74),
(294, 'dem Bundestagspräsidenten', 0, 74),
(295, 'dem Präsidenten des Bundesverfassungsgerichts', 0, 74),
(296, 'dem Bundespräsidenten', 1, 74),
(297, '0 g', 0, 75),
(298, '28 g', 1, 75),
(299, '38 g', 0, 75),
(300, '48 g', 0, 75),
(301, 'eine Technik beim Steakschneiden', 0, 76),
(302, 'eine Methode des Buchsbaumtrimmens', 0, 76),
(303, 'ein Haarschnitt', 1, 76),
(304, 'eine Operationsmethode', 0, 76),
(305, 'Meran', 0, 77),
(306, 'Rom', 0, 77),
(307, 'Cremona', 1, 77),
(308, 'Pisa', 0, 77),
(309, 'Inversion', 0, 78),
(310, 'Inklusion', 1, 78),
(311, 'Exklusion', 0, 78),
(312, 'Investition', 0, 78),
(313, 'den Wert von Zuchtperlen', 0, 79),
(314, 'die Sicherheit von Empfängnisverhütungsmethoden', 1, 79),
(315, 'die Anzahl von Glitzerpartikeln in Nagellack', 0, 79),
(316, 'die Lautstärke eines Schlagzeugs', 0, 79),
(317, 'die Frau', 0, 80),
(318, 'das Kind', 0, 80),
(319, 'der Mann', 1, 80),
(320, 'der Sklave', 0, 80),
(321, 'Zypern', 1, 81),
(322, 'Vatikanstadt', 0, 81),
(323, 'Andorra', 0, 81),
(324, 'Liechtenstein', 0, 81),
(325, 'Silly', 1, 82),
(326, 'Hilly', 0, 82),
(327, 'Zilly', 0, 82),
(328, 'Billy', 0, 82),
(329, 'Gnom', 1, 83),
(330, 'Untote', 0, 83),
(331, 'Tauren', 0, 83),
(332, 'Trolle', 0, 83),
(333, 'Teldrassil', 1, 84),
(334, 'Tanaris', 0, 84),
(335, 'Desolace', 0, 84),
(336, 'Tirisfal', 0, 84),
(337, 'Schneider', 0, 85),
(338, 'Ingenieur', 0, 85),
(339, 'Kürschner', 0, 85),
(340, 'Zahnarzt', 1, 85),
(341, 'Oger', 0, 86),
(342, 'Menschen', 0, 86),
(343, 'Trolle', 1, 86),
(344, 'Orks', 0, 86),
(345, '3', 1, 87),
(346, '4', 0, 87),
(347, '1', 0, 87),
(348, '2', 0, 87),
(349, 'Gadgetzan', 0, 88),
(350, 'Menethil', 1, 88),
(351, 'Ironforge', 0, 88),
(352, 'Booty Bay', 0, 88),
(353, 'grün', 0, 89),
(354, 'violett', 0, 89),
(355, 'blau', 0, 89),
(356, 'schwarz', 1, 89),
(357, 'Wucherwurzeln', 1, 90),
(358, 'Erlösung', 0, 90),
(359, 'Untote aufspüren', 0, 90),
(360, 'Hingabe-Aura', 0, 90),
(361, '02.04.2009', 0, 91),
(362, '08.11.2008', 0, 91),
(363, '13.11.2008', 1, 91),
(364, '18.04.2009', 0, 91),
(365, 'Jeff Kaplan', 1, 92),
(366, 'Tom Chillton', 0, 92),
(367, 'Michael Morhaime', 0, 92),
(368, 'Ion Hazzikostas', 0, 92);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'USA'),
(2, 'Chemie'),
(3, 'Computerspiele'),
(4, 'Geschichte'),
(5, 'Physik'),
(6, 'Politik'),
(7, 'Software'),
(8, 'Sport'),
(9, 'Tiere'),
(10, 'Welt'),
(11, 'Weltraum'),
(12, 'Wirtschaft'),
(13, 'Weihnachten'),
(14, 'Nahrung'),
(15, 'Natur'),
(16, 'Computer'),
(17, 'Fußball'),
(18, 'Haushalt'),
(19, 'Insekten'),
(20, 'Afrika'),
(21, 'Allgemeinwissen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `difficulty`
--

CREATE TABLE `difficulty` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `difficulty`
--

INSERT INTO `difficulty` (`id`, `name`) VALUES
(1, 'Easy'),
(2, 'Medium'),
(3, 'Hard');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `quiz_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `question`
--

INSERT INTO `question` (`id`, `text`, `quiz_id`) VALUES
(1, 'Wie viele Streifen hat die amerikanische Flagge?', 1),
(2, 'Welcher US-Bundesstaat hat die meisten Einwohner?', 1),
(3, 'Der wievielte Präsident Amerikas ist Barack Obama?', 1),
(4, 'Kennen Sie die südlichste Stadt der USA?', 1),
(5, 'Wann feiern die Amerikaner ihren Bürgerrechtler Martin Luther King?', 1),
(6, 'Welches Team ist die älteste Profi-Baseballmanschaft der USA? ', 1),
(7, 'Wie viele Liter sind eine US-Gallone Benzin?', 1),
(8, 'Der tiefste Punkt der Vereinigten Staaten ist bekanntermaßen Death Valley. Wie tief unter dem Meeresspiegel liegt das Tal des Todes? ', 1),
(9, 'Wie viele Präsidenten kamen durch ein Attentat ums Leben? ', 1),
(10, 'Welche beiden Städte verband die legendäre Route 66? ', 1),
(11, 'Die Gruppe Extrabreit sang in ihrem Hit \"Hurra, hurra, die Schule brennt\" von den \"kleinen Mädchen aus der Vorstadt\" und ihren \"Nasenringen aus Phosphor\". Ob die kleinen Mädchen auch gewusst hätten, zu welcher Serie von chemischen Elementen Phosphor zählt?', 2),
(12, 'Calciumsulfat ist besser bekannt unter dem Namen ...\n', 2),
(13, 'Welche Farbe hat Jod, wenn es verdampft?', 2),
(14, 'Es gibt zwei Sorten von Alkohol. Der eine, Ethanol, kommt in Cocktails, der andere, Methanol, ist lebensgefährlich - und die einfachste Form von Alkohol. Er besteht aus einem Kohlenstoff-, einem Sauerstoff- und vier Wasserstoffatomen. Wie lautet also die chemische Formel?', 2),
(15, 'Welche beiden Metalle stecken in Messing?', 2),
(16, 'Jöns Jakob Berzelius, der Name sagt ihnen nichts? Eine seiner Errungenschaften kennen Sie aber bestimmt aus dem Schulunterricht. Welche könnte das sein?', 2),
(17, 'Das Zwiebelschneiden läuft selten ohne Tränen ab - eine unangenehme Begleiterscheinung. Welcher Stoff bringt uns zum Weinen?', 2),
(18, 'Wofür steht der Begriff „adden“?', 3),
(19, 'Was meint der Computerspiel-Begriff „ally“?', 3),
(20, 'Was bezeichnen Computerspieler mit dem Ausdruck „bashen“?', 3),
(21, 'Was bezeichnet der Begriff „camper“?', 3),
(22, 'Was bedeuetet der Begriff „ban“ für einen Spieler?', 3),
(23, 'Was bezeichnet ein „bot“?', 3),
(24, 'Was sind sogenannte „Cheater“?', 3),
(25, 'Was besagt die Abkürzung „CTF“?', 3),
(26, 'Womit versuchte Marokko 1975, Spanien zur Übergabe der Kolonie Spanisch-Sahara zu bewegen?', 4),
(27, 'In welcher Sprache ist der historische Brokmerbrief verfasst?', 4),
(28, 'An welchem Wochentag durften in Deutschland versuchsweise ab 1989 die Geschäfte länger als bis 18.30 Uhr öffnen?', 4),
(29, 'Unter welchem Namen ist der Urmensch \"Homo floresiensis\" bekannt?', 4),
(30, 'Was wurde im Europa des Hochmittelalters flächendeckend eingeführt?', 4),
(31, 'Wie nannte man Piraten, welche im Auftrag des Königs Schiffe plünderten?', 4),
(32, 'Wie nennt man die Glaubenskriege, die die Ritter im Mittelalter gegen die Mohammedaner führten?', 4),
(33, 'Welcher Zeit ist die Figur Robin Hood zuzuordnen?', 4),
(34, 'Wer wurde durch seine Leistungen in Peking zum bislang erfolgreichsten Olympioniken?', 5),
(35, 'Wer wurde Hochsprung-Olympiasieger in Montreal 1976?', 5),
(36, 'Welcher Begriff passt nicht?', 5),
(37, 'Welches Land führt die \"ewige\" Tabelle der Olympischen Sommerspiele an?', 5),
(38, 'Welche Sportart war nie olympisch?', 5),
(39, 'Wer wurde im August 2006 Assistent des Fußballbundestrainers Joachim Löw?', 5),
(40, 'Welche brasilianische Verteidiger spielte 1998 bis 2011 bei Borussia Dortmund?', 5),
(41, 'Wen besiegte Martin Kaymer im Halbfinale der Match Play Championship 2011, wodurch er die Spitze der Weltrangliste übernahm?', 5),
(42, 'Welche Nährstoffe benötigt der Mensch, um Energie zu gewinnen?', 6),
(43, 'Welche Nährstoffe benötigt der Mensch als Baustoffe?', 6),
(44, 'Wie ist das Fachwort für alle Kohlenhydrate?', 6),
(45, 'Wie werden die Kohlenhydrate eingeteilt?', 6),
(46, 'Was ist das wichtigste und dem Menschen einzig energieliefernde Kohlenhydrat?', 6),
(47, 'Woher hat die Glucose diese Energie?', 6),
(48, 'Wie heißen die Grundbausteine der Proteine?', 6),
(49, 'Welcher der folgenden wichtigen Gruppen gehört nicht zu den Proteinen?', 6),
(50, 'Wie heißen Proteine auf Deutsch?', 6),
(51, 'Wann erschien der erste Teil der Half Life-Serie für den PC?', 7),
(52, 'Wie heißt der Hauptcharakter der Half Life-Serie?', 7),
(53, 'Wer ist der Vater von Alyx?', 7),
(54, 'Wie wird der Angriff der Combine auf die Erde genannt?', 7),
(55, 'Was ist Dr. Kleiners Haustier?', 7),
(56, 'Wie heißt der Endgegner in Half Life 1?', 7),
(57, 'Wie heißt die revolutionäre neue Vertriebsplattform mit der Half-Life 2 über das Internet gekauft und heruntergeladen werden konnte?', 7),
(58, 'Wie heißt der Geistliche in Ravenholm?', 7),
(59, 'Wag sagt Gordon Freeman am Ende von Half Life: Episode 2, als er mit Alyx aus City 17 flieht?', 7),
(60, 'Auf welcher Engine basiert die Spiele-Engine, die in Half Life 1 zum Einsatz kommt?', 7),
(61, 'Welches Werkzeug wurde durch die Verwendung in Half-Life berühmt?', 7),
(62, 'Wie lautet die Hauptstadt von Frankreich?', 8),
(63, 'Welcher Agent steht im Zusammenhang mit der \"Lizenz zum Töten\"?', 8),
(64, 'Welches Dateiformat öffnet man typischerweise mit dem Acrobat Reader?', 8),
(65, 'Welches Betriebssystem stammt von Apple?', 8),
(66, 'Wie viele Nieren hat ein Mensch im Normalfall?', 8),
(67, 'Wie lange geht ein Marathon?', 8),
(68, 'In welchem Jahr wurde der Euro als Bargeld eingeführt?', 8),
(69, 'Wann endete der 2. Weltkrieg?', 8),
(70, 'Wie viele Bundesländer hat Deutschland?', 8),
(71, 'In welcher Stadt lebte der Detektiv Sherlock Holmes?', 8),
(72, 'Wie lautet der zweite Planet in unserem Sonnensystem?', 8),
(73, 'Welches Fitnessangebot findet sich heute in vielen Studios?', 9),
(74, 'Wem wird das Bundesverdienstkreuz bei Amtsantritt verliehen?', 9),
(75, 'Wie viel Kakaobutter ist in etwa 100 g weißer Schokolade enthalten?', 9),
(76, 'Was ist ein \"Undercut\"?', 9),
(77, 'In welchem Ort schuf der Geigenbauer Antonio Stradivari seine wertvollen Instrumente?', 9),
(78, 'Wie nennt man die Beschulung geistig oder körperlich benachteiligter Kinder in der Regelschule?', 9),
(79, 'Was berechnet der Pearl-Index?', 9),
(80, 'Wer war im Lateinischen ursprünglich mit dem Wort \"Genie\" gemeint?', 9),
(81, 'In Europa existieren sechs Zwergstaaten. Welcher ist offiziell keiner?', 9),
(82, 'Wie heißt die Band der Schauspielerin Anna Loos?', 9),
(83, 'Welche dieser Rassen gehört nicht zu der Horde?', 10),
(84, 'In welchem Gebiet liegt die Nachtelfen-Hauptstadt Darnassus?', 10),
(85, 'Welchen Beruf kann man nicht erlernen?', 10),
(86, 'Welches sind die Hauptgegner in Zul\'Farrak?', 10),
(87, 'Wieviele Instanzen gibt es im Scharlachroten Kloster?', 10),
(88, 'Wo gibt es kein Auktionshaus?', 10),
(89, 'Welche Farbstufe von Gegenständen gibt es nicht?', 10),
(90, 'Welche Fähigkeit hat der Paladin nicht?', 10),
(91, 'Wann erschien die Erweiterung Wrath of the Lich King?', 10),
(92, 'Welcher Entwickler war maßgeblich für den Erfolg von WoW verantwortlich?', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `difficulty_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `description`, `category_id`, `difficulty_id`, `user_id`) VALUES
(1, 'Wissenstest: USA', 'Welche beiden Städte verband die legendäre Route 66? Wie viele Streifen hat die amerikanische Flagge? In welcher Stadt steht das höchste Gebäude der USA? Testen Sie Ihr Wissen!', 1, 1, 1),
(2, 'Chemie Quiz', 'Chemie ist ein wissenschaftlicher Fachbereich, der sich in zahlreiche Unterbereiche gliedert und bei vielen Menschen eher Unwillen und Unbehagen auslöst als Wohlgefallen. Trotzdem kommt man an der Chemie heute leider nicht mehr vorbei. Was allerdings harmlos anmutet kann durchaus auch zur Gefahr werden, so das einige grundlegende Kenntnisse durchaus angebracht sind, um Meldungen einzuschätzen oder den eigenen Umgang mit der Chemie zu relativieren. Dabei kann das vorhandene Quiz gute Dienste leisten. Doch auch in jeder anderen Hinsicht sind chemische Kenntnisse durchaus angebracht. Diese können beispielsweise maßgeblich zum eigenen Wohlbefinden beitragen, wenn man an einer Allergie leidet, und nun versuchen muss, die betreffenden Allergene herauszufinden bzw. sein Essen nach einem speziellen Ernährungsplan zusammenzustellen. Dabei bieten die Kenntnisse der wichtigsten Begriffe mitunter gute Anhaltspunkte, um Abkürzungen und Bezeichnungen auf Verpackungen ordentlich zu interpretieren bzw. die Inhaltsstoffe zu identifizieren. Mit einem geeigneten Ratespiel nimmt man der Aneignung entsprechender Grundkenntnisse aber schnell den Schrecken.', 2, 3, 1),
(3, 'Computerspiel-Jargon?', 'Verstehen Sie Computerspieler, wenn sie von Bashen, Lucken oder Farmen reden? Vielleicht sind Sie auch ein alter Hase, wenn es um Abkürzungen und Spezialjargon im Spielebereich geht? Testen Sie hier Ihr Wissen!', 3, 1, 1),
(4, 'Das große Geschichts-Quiz', 'Sind Sie sattelfest in Sachen Geschichte? Machen Sie den Test und beantworten Sie Fragen aus allen historischen Epochen, vom alten Rom über das Mittelalter bis hin zur Moderne. Staatsmänner, wichtige Verträge, Kriege und Revolutionen gehören zu unserer aller Geschichte. Kennen Sie sich aus?', 4, 1, 1),
(5, 'Das große Sport-Quiz', 'Sind Sie ein Sport-Experte? Klar, Franz Beckenbauer und seine Erfolge kennt jeder - aber was ist mit anderen Sportarten? Machen Sie unser Quiz und testen Sie Ihr Wissen in Sachen Handball, Olympia, Wintersport, Formel 1 und Co.! ', 8, 1, 1),
(6, 'Biologiefragen Ernährung', 'Diese Fragen dienen der Vorbereitung zur mündlichen Prüfung Biologie für die externe Nichtschülerprüfung MSA in Berlin im Bereich \"Ernährung und Verdauung - Teilbereich Ernährung\"', 14, 2, 1),
(7, 'Half-Life - Wie gut kennst du dich aus?', 'Ein Quiz zum Half-Life Universum. Zeige dein Wissen zu einem Spiel, welches das Egoshooter-Singleplayer Genre verändert hat.', 3, 3, 6),
(8, 'Allgemeinwissen 1', 'Teste dein Allgemeinwissen!', 21, 1, 6),
(9, 'Allgemeinwissen 2', 'Teste dein Allgemeinwissen!', 21, 2, 6),
(10, 'WoW', 'World of Warcraft zählt zu den bedeutendsten Computerspielen, hält seit 2009 den Guinness-Weltrekord für das beliebteste Multiplayer-Online-Rollenspiel und erhielt mehrere Auszeichnungen. Wie gut kennst du dich in World of Warcraft aus?', 3, 2, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) UNSIGNED DEFAULT NULL,
  `games_played` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `score`, `games_played`) VALUES
(1, 'scott', '$2y$10$Nc.j9ONR1YffbfEP8Aa1DuioswTIy93hRUQoaOBDaWtpQ.TkHDTfe', 'test@test.de', 0, 0),
(3, 'perschke', '$2y$10$2gwKf3K4FP3Ceyj1hLKiieXY978P.c906k0HKnWFH5QQyRnvPuKAG', '2904cthn928c4rt@gmx.de', 0, 0),
(6, 'trion', '$2y$10$71Hr8v4kmPW178JclOpciOrk0v3Ni4sxqjzatgYM3xvhtgp4o4PZe', 'test647nh84@gmx.de', 0, 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_answer_question` (`question_id`);

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `difficulty`
--
ALTER TABLE `difficulty`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_question_quiz` (`quiz_id`);

--
-- Indizes für die Tabelle `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_quiz_category` (`category_id`),
  ADD KEY `index_foreignkey_quiz_difficulty` (`difficulty_id`),
  ADD KEY `index_foreignkey_quiz_user` (`user_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT für Tabelle `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `c_fk_answer_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `c_fk_question_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `c_fk_quiz_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_quiz_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`difficulty_id`) REFERENCES `difficulty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
