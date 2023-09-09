-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2023 at 07:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(10) UNSIGNED NOT NULL,
  `a_username` varchar(255) NOT NULL,
  `a_email` varchar(255) NOT NULL,
  `a_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_username`, `a_email`, `a_pass`) VALUES
(2, 'admin', 'zak.hamza@est.ma', 'c289ffe12a30c94530b7fc4e532e2f42');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `article_prix` float NOT NULL,
  `article_qte` int(255) NOT NULL,
  `cmd_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_prix`, `article_qte`, `cmd_id`, `p_id`) VALUES
(8, 80, 1, 4, 1),
(9, 167.62, 7, 4, 7),
(10, 188.37, 9, 5, 9),
(11, 1605.27, 10, 6, 10),
(12, 80, 1, 7, 1),
(13, 80, 1, 8, 1),
(14, 80, 1, 9, 1),
(15, 188.37, 9, 10, 9),
(16, 188.37, 3, 11, 9),
(17, 188.37, 3, 12, 9),
(18, 1605.27, 2, 13, 10),
(19, 188.37, 1, 14, 9),
(20, 80, 2, 15, 1),
(21, 1605.27, 1, 16, 10),
(22, 1605.27, 1, 17, 10),
(23, 188.37, 1, 17, 9),
(24, 167.62, 1, 17, 7),
(25, 80, 1, 17, 1),
(26, 188.37, 1, 18, 9),
(27, 1605.27, 1, 18, 10),
(28, 167.62, 1, 18, 7),
(29, 19700.9, 1, 18, 14),
(30, 188.37, 1, 19, 9);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(10) UNSIGNED NOT NULL,
  `title_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `title_cat`) VALUES
(1, 'Vetement'),
(2, 'Technologies'),
(4, 'Cuisine &amp; Electrom&eacute;nager'),
(5, 'Sport'),
(6, 'Mode Homme'),
(7, 'Mode Femmes');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `c_nom` varchar(30) NOT NULL,
  `c_prenom` varchar(30) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_pass` varchar(255) NOT NULL,
  `c_sex` varchar(30) NOT NULL,
  `c_avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `c_contry` varchar(30) NOT NULL,
  `c_ville` varchar(30) NOT NULL,
  `c_tele` varchar(30) NOT NULL,
  `c_fax` varchar(30) NOT NULL,
  `c_adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`c_id`, `c_nom`, `c_prenom`, `c_email`, `c_pass`, `c_sex`, `c_avatar`, `c_contry`, `c_ville`, `c_tele`, `c_fax`, `c_adresse`) VALUES
(3, 'MADIOUF', 'HAMZA', 'hamza.madiouf@gmail.com', 'a5780c0693c1fe790c92cf6530584a98', 'homme', 'avatar.png', 'MOROCCO', 'Casa', '0273548590', '092374859', 'sbata rue34 , 345'),
(10, 'Sadiki', 'Zakria', 'zak@gmail.com', 'df91999bb02e63c1b76a67f7749870b2', 'homme', 'avatar.png', 'Morocco', 'Casa', '', '', ''),
(11, 'Kadouri', 'Ali', 'kd.ali@gmail.com', '363ba7dc88295f737a54aedc0ece6c99', 'homme', 'avatar.png', '', '', '', '', ''),
(12, 'test', 'test', 'test@test.com', '098f6bcd4621d373cade4e832627b4f6', 'homme', 'avatar.png', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `cmd_id` int(10) UNSIGNED NOT NULL,
  `cmd_date` datetime NOT NULL,
  `cmd_stat` int(30) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`cmd_id`, `cmd_date`, `cmd_stat`, `c_id`) VALUES
(4, '2023-06-02 20:39:43', 1, 3),
(5, '2023-06-28 19:47:46', 0, 10),
(6, '2023-06-27 19:49:16', 1, 10),
(7, '2023-06-27 19:53:52', 1, 10),
(8, '2023-06-21 19:53:56', 1, 10),
(9, '2023-06-20 19:53:57', 1, 10),
(10, '2023-06-20 19:55:22', 0, 10),
(11, '2023-07-04 19:59:50', 0, 3),
(12, '2023-07-05 20:00:12', 1, 3),
(13, '2023-07-08 20:02:39', 1, 3),
(14, '2023-07-14 09:37:09', 1, 10),
(15, '2023-07-14 23:19:45', 1, 3),
(16, '2023-07-15 14:08:07', 1, 10),
(17, '2023-07-15 17:59:13', 1, 10),
(18, '2023-07-15 17:59:34', 0, 10),
(19, '2023-07-20 10:11:54', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `content_comment` text NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `c_id`, `content_comment`, `p_id`) VALUES
(1, 3, 'bon produit', 1),
(2, 3, 'i like it', 7),
(3, 3, 'j\'aime pas', 7),
(4, 10, 'tres bon qualite', 9),
(5, 10, 'cool', 14),
(6, 10, 'it\'s so good', 9),
(7, 10, 'hala madrid', 9);

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL,
  `nom_detail` varchar(33) NOT NULL,
  `content_detail` varchar(333) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id_detail`, `nom_detail`, `content_detail`, `p_id`) VALUES
(1, 'width', '163px', 12),
(2, 'heigth', '123px', 12),
(3, 'design', 'flat', 12),
(4, 'site', 'forum', 12),
(5, 'RAM', '16GB', 13),
(6, 'CPU', '1.40GHz', 13),
(7, 'DESC DUR', '500GB', 13),
(8, 'RAM', '8gb', 14),
(9, 'ecran', '12puce', 14),
(10, 'CPU', 'i5', 14),
(11, '', '', 15),
(12, '', '', 16),
(13, '', '', 17),
(14, '', '', 18),
(15, '', '', 19),
(16, '', '', 20),
(17, '', '', 21),
(18, '', '', 22),
(19, '', '', 23),
(20, '', '', 24),
(21, '', '', 25),
(22, '', '', 26),
(23, '', '', 27),
(24, '', '', 28),
(25, '', '', 29),
(26, '', '', 30),
(27, '', '', 31),
(28, '', '', 32),
(29, '', '', 33);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_image` int(10) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL,
  `nom_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_image`, `p_id`, `nom_image`) VALUES
(17, 7, 'RFUGMiuOfl.jpg'),
(18, 7, 'hAuCfActTT.jpg'),
(20, 8, 'UwIGJSp5WB.jpg'),
(21, 8, 'VPf1I1T0Lg.jpg'),
(22, 8, 'zTwCwvYIsd.jpg'),
(23, 9, 'GTfoN12iIW.jpg'),
(24, 9, 'sEuSnsKx7a.jpg'),
(26, 10, 'KrMXwF3Wwn.jpg'),
(28, 10, 'h6Wz7WzvDl.jpg'),
(29, 11, 'q2C9xWGLuA.jpg'),
(30, 11, '8JgBHqi2BE.jpg'),
(31, 11, 'AwxMB8JEit.jpg'),
(32, 11, 'UB9Diu7cBE.jpg'),
(33, 12, 'LUNflubWCD.png'),
(34, 13, 'R7lSY4Vjba.jpg'),
(35, 14, 'IDcQzbYyMG.jpg'),
(36, 15, 'T23OnIKNXV.png'),
(37, 16, 'uN6LN6oiet.png'),
(38, 17, 'Y05CA9dB7g.png'),
(39, 18, 'jAeI0a4Ogl.png'),
(40, 19, 'bZucUEJhO0.png'),
(41, 20, 'O7Ac4vGEsH.png'),
(42, 21, 'ftfWJSPsFr.png'),
(43, 22, 'umD8tEPiyw.png'),
(44, 23, 'TglJ24iphX.png'),
(45, 24, 'O8KffIvC8r.png'),
(46, 25, 'n6jdHxuOD2.png'),
(47, 26, '77vIdtOIhc.png'),
(48, 27, 'x9de6UI5XN.png'),
(49, 28, 'K7LhNP8NQt.png'),
(50, 29, 'je4sefjERW.png'),
(51, 30, 'cLGmRbrwbd.png'),
(52, 31, 'VuAdUEQ8rk.png'),
(53, 32, 'AUYwvqQa5j.png'),
(54, 33, 'OAmIa1Orr6.png');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `tele` varchar(30) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`tele`, `fax`, `adresse`, `email`, `lang`) VALUES
('0612345678', '+212512345678', 'EST Casablanca', 'pfe@est.ma', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `p_id` int(10) UNSIGNED NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_desc` text NOT NULL,
  `p_prix` float NOT NULL,
  `p_stock` int(11) NOT NULL,
  `p_promo` int(11) NOT NULL DEFAULT 0,
  `p_video` varchar(40) NOT NULL,
  `p_thumb` varchar(40) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`p_id`, `p_title`, `p_desc`, `p_prix`, `p_stock`, `p_promo`, `p_video`, `p_thumb`, `id_cat`) VALUES
(1, 'Montre d\'aventure', 'Ajoutez une touche unique d\'individualité à votre style en associant la montre à n\'importe quelle tenue de votre choix.', 250, 5, 10, '', 'produit.jpg', 6),
(7, 'Esther Veste - Noir', 'Conveniently seize leveraged niches via quality data. Phosfluorescently restore end-to-end relationships via compelling quality vectors. Interactively productize.', 289, 23, 42, '', 'iBhH2pL454.jpg', 1),
(8, 'HP Transformer Pavilion', 'Conveniently seize leveraged niches via quality data. Phosfluorescently restore end-to-end relationships via compelling quality vectors. Interactively productize.', 3456, 1, 0, '', 'g831m2gGQ1.jpg', 2),
(9, 'Maillot Real Madrid 23', 'La tradition prend une touche dorée avec le maillot authentique domicile du Real Madrid 23/24. Gardant une base entièrement blanche, ce kit saisissant poursuit le fil d\'un design puissant, offrant un maillot élégant et léger imprégné de l\'histoire légendaire du football.', 699, 144, 27, '', 'QiWEKBLQLu.jpg', 1),
(10, 'Xiaomi Redmi Note 12', 'Mobile Xiaomi Redmi Note 12 – a mid-cost phone that comes with a 6.71-inch AMOLED screen with a resolution of 1080 x 2400 pixels, a refresh rate of 120 Hz and works by the Android 12 system.', 2199, 23, 20, '', 'ZRCZxs8JmX.jpg', 2),
(11, 'TAKKAD Pantalon de jogging', 'Conveniently seize leveraged niches via quality data. Phosfluorescently restore end-to-end relationships via compelling quality vectors. Interactively productize.', 169, 34, 12, '', '3AlEgaGOI4.jpg', 1),
(12, 'logo forum', 'Conveniently seize leveraged niches via quality data. Phosfluorescently restore end-to-end relationships via compelling quality vectors. Interactively productize.', 4, 1, 0, '', 'wZO6y0NGn5.png', 3),
(13, 'PC i7 16GB RAM', 'Conveniently seize leveraged niches via quality data. Phosfluorescently restore end-to-end relationships via compelling quality vectors. Interactively productize.', 24060, 2, 17, '', '35ZjKetRtq.jpg', 2),
(14, 'Trampoline HEXAGONAL', 'Notre trampoline hexagonal 240 avec filet de protection a été conçu pour le développement psychomoteur des jeunes enfants à partir de 3 ans.', 34563, 2, 43, '', 'QrIxQDvHtJ.jpg', 5),
(15, 'Lunette Soleil', 'lunettes de soleil de grandes marques pas cher : Le plus grand Choix de lunettes solaires de marque &agrave; petit prix est sur Optical-Center. livraison rapide.', 190, 24, 15, '', 'yMYhaHw0cf.png', 6),
(16, 'Mi Band 6', 'Xiaomi Mi Smart Band 6-1.56\'\' (3.96 cm) Large AMOLED Color Display, 2 Week Battery Life, 30 Fitness Mode, 5 ATM, SpO2, HR, Sleep Monitoring, Women\'s Health Tracking, Alarm, Music Control (Black)', 350, 136, 12, '', 'bz94wMyOBe.png', 2),
(17, 'Casque sans fil', 'Audio haute fid&eacute;lit&eacute; au format Lossless par USB-C10\r\nAudio spatial personnalis&eacute; avec suivi dynamique de la t&ecirc;te11\r\nModes R&eacute;duction active du bruit et Transparence\r\nJusqu\'&agrave; 40 heures d\'&eacute;coute (R&eacute;duction active du bruit d&eacute;sactiv&eacute;e)12', 450, 25, 25, '', '0ZHJmg6ONT.png', 2),
(18, 'PlayStation 4', 'La console dispose d\'un module de d&eacute;compression zlib mat&eacute;riel &agrave; la vol&eacute;e. Le mod&egrave;le PS4 d\'origine prend en charge les normes vid&eacute;o jusqu\'&agrave; 1080p et 1080i, tandis que le mod&egrave;le Pro prend en charge la r&eacute;solution 4K.', 2000, 25, 60, '', 'tcSlW6KwZA.png', 2),
(19, 'Ballon', 'Ballon de football', 100, 400, 30, '', 'xozarp5cDi.png', 5),
(20, 'Apple Watch', 'L\'Apple Watch Ultra int&egrave;gre des fonctionnalit&eacute;s pour la plong&eacute;e loisir et la plong&eacute;e en apn&eacute;e, une boussole repens&eacute;e, un bo&icirc;tier en titane &agrave; la fois l&eacute;ger et ultra-r&eacute;sistant, un GPS double fr&eacute;quence haute pr&eacute;cision et jusqu\'&agrave; 36 heures d\'autonomie3.', 3000, 14, 5, '', 'wONDsDUV1O.png', 2),
(21, 'Chaussures Sport', 'Chaussures de Sport homme', 300, 26, 0, '', '6BKGugBrQv.png', 5),
(22, 'Machine &agrave; laver', 'Une machine &agrave; laver est une machine con&ccedil;ue pour nettoyer les v&ecirc;tements, serviettes, draps et autres tissus m&eacute;nagers. En g&eacute;n&eacute;ral, ce terme d&eacute;signe seulement les machines dans lesquelles l\'eau constitue la solution principale de lavage.', 4500, 9, 10, '', 'bCDUwh3Kr8.png', 4),
(23, 'Gants gardien', 'La paume de ces gants fabriqu&eacute;e en latex soft exclusif est sp&eacute;cialement con&ccedil;ue pour r&eacute;sister &agrave; l\'abrasion afin de vous assurer une pratique du football optimale.', 200, 80, 0, '', 'tsIbKb8NqV.png', 5),
(24, 'Samsung A13', 'Samsung Galaxy A13 &middot; Released 2022, March 23 &middot; 195g, 8.8mm thickness &middot; Android 12, up to Android 13, One UI 5.1 &middot; 32GB/64GB/128GB storage, microSDXC.', 2100, 40, 25, '', 'oDMAs1QfJ6.png', 2),
(25, 'Chaussures Nike', 'D&eacute;couvrez des chaussures classiques et de nouveaux mod&egrave;les Nike sur route pour homme. Derni&egrave;res sorties.', 800, 35, 15, '', 'iJfmARG10f.png', 6),
(26, 'iPhone X', 'Apple iPhone X specifications - Display: 5.8 inches OLED; Camera: 12 MP (Sapphire crystal lens cover, OIS, PDAF, CMOS image sensor, BSI sensor); ...', 4000, 10, 5, '', 'Fivnqn6YKv.png', 2),
(27, 'iphone 6', 'Apple iPhone 6 ; CPU, Dual-core 1.4 GHz Typhoon (ARM v8-based) ; GPU, PowerVR GX6450 (quad-core graphics) ; Internal, 16GB 1GB RAM, 32GB 1GB RAM, 64GB 1GB RAM', 1800, 14, 50, '', 'Eoh2L0kqLd.png', 2),
(28, 'Airpods', 'Ecouteur bluetooth sans fil associent la technologie &agrave; r&eacute;duction de bruit avanc&eacute;e &agrave; une excellente qualit&eacute; sonore, des fonctions d\'&eacute;coute intelligentes', 400, 200, 10, '', 'tiTO5lcjpp.png', 2),
(29, 'Sac', 'sac de femmes', 150, 50, 0, '', 'wxxgurAAUG.png', 7),
(30, 'Veste Vert', 'Veste Vert pour homme', 280, 64, 0, '', 'ceTaw5BODm.png', 6),
(31, 'Television SMART', 'Avec une LG Smart TV, rarement connectivit&eacute; et esth&eacute;tisme se sont aussi bien mari&eacute;s en un seul et unique objet ! Avec webOS, le syst&egrave;me d\'exploitation des ...', 8500, 12, 5, '', 'EdOOfFGheQ.png', 2),
(32, 'Veste Maron', 'Veste maron pour homme', 450, 3, 10, '', 'TTvtA1EYAy.png', 6),
(33, 'Casquette', 'La casquette est une sorte de chapeau qui &agrave; l\'origine sert &agrave; prot&eacute;ger la t&ecirc;te du soleil. De nos jours, il est devenu un accessoire de mode.', 75, 210, 0, '', 'AGPjQeGo8s.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`cmd_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `cmd_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
