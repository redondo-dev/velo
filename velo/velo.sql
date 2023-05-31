-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 31 mai 2023 à 15:19
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `velo`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse1` varchar(255) NOT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `adresse1`, `adresse2`, `code_postal`, `ville`, `email`, `telephone`) VALUES
(1, 'beloula', 'dahdough', 'sdqdqdqdq', 'qsdqd', 0, '', 'reda@gmail.com', NULL),
(2, 'reda', 'dvid', '', NULL, 0, '', 'reda@gmail.com', '61616115'),
(3, 'redondo', 'dodo', 'cite cia', 'cité dqsdds', 0, '', 'raidouuuu@gmail.com', '43645464'),
(4, 'redondo', 'dodo', 'cite cia', 'cité dqsdds', 0, '', 'raidouuuu@gmail.com', '43645464'),
(5, 'reda', 'abubaker', 'cite cia', 'cité dqsdds', 0, '', 'riad@gmail.com', '61616115'),
(6, 'beloumi', 'toto', 'ecece', 'ecdece', 0, '', 'beloumi@gmail.com', '1212121'),
(7, 'reda', 'abubaker', 'cite cia', 'cité dqsdds', 4, '', 'riad@gmail.com', '61616115'),
(8, '', '', '', '', 0, '', '', ''),
(9, 'fuentes', 'gerard', 'cité 5 juillet 1962', 'zdzdz', 1, '', 'gerard@gmail.com', '0630303030'),
(10, 'OSCAR ', 'DELA HOYA', 'TATA OUIN LES BAINS', 'TUNISIE', 2, '', 'DELAHOYA@GMAIL.COM', '0606060606');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `prix_ht` decimal(10,2) DEFAULT NULL,
  `prix_ttc` decimal(10,2) NOT NULL,
  `id_clients` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `date`, `prix_ht`, `prix_ttc`, `id_clients`, `id_personnel`) VALUES
(1, '0000-00-00 00:00:00', '5.94', '7.13', 1, 1),
(2, '2023-05-26 11:13:15', '5.94', '7.13', 1, 1),
(3, '2023-05-26 11:32:16', '5.94', '7.13', 1, 1),
(4, '2023-05-26 11:35:48', '6.93', '8.32', 1, 1),
(5, '2023-05-26 11:37:57', '6.93', '8.32', 1, 1),
(6, '2023-05-26 11:38:07', '8.91', '10.69', 1, 1),
(7, '2023-05-26 11:38:49', '8.91', '10.69', 1, 1),
(8, '2023-05-26 11:39:18', '3.96', '4.75', 1, 1),
(9, '2023-05-26 11:41:21', '3.96', '4.75', 1, 1),
(12, '2023-05-26 11:46:15', '7.92', '9.50', 1, 1),
(14, '2023-05-26 11:48:56', '4.95', '5.94', 1, 1),
(16, '2023-05-26 11:53:48', '3.96', '4.75', 1, 1),
(17, '2023-05-26 11:55:01', '3.96', '4.75', 1, 1),
(18, '2023-05-26 11:55:59', '10.89', '13.07', 2, 1),
(19, '2023-05-26 11:57:02', '10.89', '13.07', 3, 1),
(33, '2023-05-31 09:01:09', '3.96', '4.75', 1, 1),
(36, '2023-05-31 09:32:01', '11.88', '14.26', 1, 1),
(37, '2023-05-31 09:33:48', '16.83', '20.20', 1, 1),
(38, '2023-05-31 09:36:16', '16.83', '20.20', 1, 1),
(39, '2023-05-31 09:38:57', '22.77', '27.32', 1, 1),
(40, '2023-05-31 09:42:46', '25.74', '30.89', 1, 1),
(41, '2023-05-31 09:46:52', '25.74', '30.89', 1, 1),
(42, '2023-05-31 09:47:34', '5.94', '7.13', 1, 1),
(43, '2023-05-31 09:52:01', '5.94', '7.13', 1, 1),
(44, '2023-05-31 09:52:24', '5.94', '7.13', 1, 1),
(45, '2023-05-31 09:54:08', '8.91', '10.69', 1, 1),
(46, '2023-05-31 09:54:31', '8.91', '10.69', 2, 1),
(47, '2023-05-31 09:55:43', '8.91', '10.69', 2, 1),
(48, '2023-05-31 09:55:55', '8.91', '10.69', 2, 1),
(49, '2023-05-31 09:56:30', '8.91', '10.69', 2, 1),
(50, '2023-05-31 09:57:19', '8.91', '10.69', 2, 1),
(51, '2023-05-31 09:57:47', '8.91', '10.69', 3, 1),
(52, '2023-05-31 10:01:18', '4.95', '5.94', 3, 1),
(53, '2023-05-31 11:48:53', '7.92', '9.50', 2, 1),
(56, '2023-05-31 13:23:33', '7.92', '9.50', 1, 1),
(58, '2023-05-31 13:50:37', '8.91', '10.69', 7, 1),
(59, '2023-05-31 13:51:13', '8.91', '10.69', 7, 1),
(60, '2023-05-31 13:55:34', '11.88', '14.26', 9, 1),
(61, '2023-05-31 13:59:41', '23.76', '28.51', 9, 1),
(62, '2023-05-31 14:02:58', '23.76', '28.51', 9, 1),
(63, '2023-05-31 14:03:58', '23.76', '28.51', 9, 1),
(64, '2023-05-31 14:05:35', '23.76', '28.51', 9, 1),
(65, '2023-05-31 14:05:38', '23.76', '28.51', 9, 1),
(66, '2023-05-31 14:06:47', '23.76', '28.51', 9, 1),
(67, '2023-05-31 14:07:10', '31.68', '38.02', 9, 1),
(68, '2023-05-31 14:07:20', '31.68', '38.02', 9, 1),
(69, '2023-05-31 14:08:24', '31.68', '38.02', 9, 1),
(70, '2023-05-31 14:09:42', '10.89', '13.07', 9, 1),
(71, '2023-05-31 14:10:45', '10.89', '13.07', 9, 1),
(72, '2023-05-31 14:11:00', '10.89', '13.07', 9, 1),
(73, '2023-05-31 14:11:11', '20.79', '24.95', 9, 1),
(74, '2023-05-31 14:14:18', '20.79', '24.95', 9, 1),
(75, '2023-05-31 14:15:14', '20.79', '24.95', 9, 1),
(76, '2023-05-31 14:15:32', '20.79', '24.95', 9, 1),
(77, '2023-05-31 14:16:18', '20.79', '24.95', 9, 1),
(78, '2023-05-31 14:16:38', '20.79', '24.95', 9, 1),
(79, '2023-05-31 14:16:53', '20.79', '24.95', 9, 1),
(80, '2023-05-31 14:20:08', '22.77', '27.32', 9, 1),
(81, '2023-05-31 14:24:58', '22.77', '27.32', 9, 1),
(82, '2023-05-31 14:25:25', '22.77', '27.32', 9, 1),
(87, '2023-05-31 14:27:43', '7.92', '9.50', 9, 1),
(88, '2023-05-31 14:30:21', '4.95', '5.94', 10, 1),
(89, '2023-05-31 14:31:53', '4.95', '5.94', 10, 1),
(90, '2023-05-31 14:52:11', '11.88', '14.26', 10, 1),
(92, '2023-05-31 14:53:46', '8.91', '10.69', 9, 1),
(93, '2023-05-31 15:15:11', '340.00', '408.00', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_facture`
--

CREATE TABLE `ligne_facture` (
  `quantite` int(11) NOT NULL,
  `id_produits` int(11) NOT NULL,
  `id_facture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ligne_facture`
--

INSERT INTO `ligne_facture` (`quantite`, `id_produits`, `id_facture`) VALUES
(10, 7, 3),
(10, 1, 3),
(10, 1, 3),
(10, 1, 3),
(10, 1, 3),
(10, 1, 3),
(10, 1, 3),
(2, 1, 3),
(2, 1, 3),
(3, 1, 3),
(4, 1, 3),
(4, 1, 3),
(4, 1, 3),
(3, 1, 3),
(3, 1, 3),
(0, 1, 3),
(2, 1, 3),
(3, 1, 3),
(3, 1, 3),
(3, 1, 12),
(3, 1, 12),
(3, 1, 12),
(0, 1, 12),
(3, 1, 51),
(3, 1, 51),
(3, 1, 51),
(0, 1, 51),
(2, 1, 52),
(3, 1, 52),
(3, 1, 52),
(2, 1, 53),
(3, 1, 53),
(3, 1, 53),
(3, 1, 53),
(0, 1, 53),
(4, 1, 56),
(4, 1, 56),
(4, 1, 58),
(5, 1, 58),
(4, 1, 59),
(5, 1, 59),
(4, 1, 60),
(5, 1, 60),
(3, 1, 60),
(4, 1, 61),
(5, 1, 61),
(3, 1, 61),
(4, 1, 61),
(4, 1, 61),
(4, 1, 61),
(4, 1, 62),
(5, 1, 62),
(3, 1, 62),
(4, 1, 62),
(4, 1, 62),
(4, 1, 62),
(4, 1, 63),
(5, 1, 63),
(3, 1, 63),
(4, 1, 63),
(4, 1, 63),
(4, 1, 63),
(4, 1, 64),
(5, 1, 64),
(3, 1, 64),
(4, 1, 64),
(4, 1, 64),
(4, 1, 64),
(4, 1, 65),
(5, 1, 65),
(3, 1, 65),
(4, 1, 65),
(4, 1, 65),
(4, 1, 65),
(4, 1, 66),
(5, 1, 66),
(3, 1, 66),
(4, 1, 66),
(4, 1, 66),
(4, 1, 66),
(4, 1, 67),
(5, 1, 67),
(3, 1, 67),
(4, 1, 67),
(4, 1, 67),
(4, 1, 67),
(3, 1, 67),
(5, 1, 67),
(4, 1, 68),
(5, 1, 68),
(3, 1, 68),
(4, 1, 68),
(4, 1, 68),
(4, 1, 68),
(3, 1, 68),
(5, 1, 68),
(4, 1, 69),
(5, 1, 69),
(3, 1, 69),
(4, 1, 69),
(4, 1, 69),
(4, 1, 69),
(3, 1, 69),
(5, 1, 69),
(11, 1, 70),
(11, 1, 71),
(11, 1, 72),
(11, 1, 73),
(10, 1, 73),
(11, 1, 74),
(10, 1, 74),
(11, 1, 75),
(10, 1, 75),
(11, 1, 76),
(10, 1, 76),
(11, 1, 77),
(10, 1, 77),
(11, 1, 78),
(10, 1, 78),
(11, 1, 79),
(10, 1, 79),
(11, 1, 80),
(10, 1, 80),
(2, 1, 80),
(11, 1, 81),
(10, 1, 81),
(2, 1, 81),
(11, 1, 82),
(10, 1, 82),
(2, 1, 82),
(4, 1, 87),
(4, 1, 87),
(3, 1, 88),
(2, 1, 88),
(3, 1, 89),
(2, 1, 89),
(3, 1, 90),
(2, 1, 90),
(1, 1, 90),
(1, 1, 90),
(1, 1, 90),
(4, 1, 90),
(4, 1, 92),
(5, 1, 92),
(4, 1, 93),
(3, 1, 93);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `pseudo`, `password`, `admin`) VALUES
(1, 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(5) NOT NULL,
  `price_ht` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `alerte` int(11) NOT NULL,
  `id_tva` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `name`, `reference`, `price_ht`, `stock`, `alerte`, `id_tva`) VALUES
(23, ' Doussofess', ' SD', '55.00', 10, 5, 1),
(24, 'Duracuir', 'SC', '40.00', 10, 10, 1),
(25, 'Voiclair', 'VC', '65.00', 15, 12, 1),
(26, 'Korn2vach', 'GT', '35.00', 12, 12, 1),
(27, 'MacGyver', 'MG', '28.00', 10, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

CREATE TABLE `tva` (
  `id` int(11) NOT NULL,
  `taux` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id`, `taux`) VALUES
(1, 20),
(2, 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_clients_id_clients_facture` (`id_clients`),
  ADD KEY `FK_personnel_id_personnel_facture` (`id_personnel`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tva_id_tva_produits` (`id_tva`);

--
-- Index pour la table `tva`
--
ALTER TABLE `tva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `tva`
--
ALTER TABLE `tva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK_clients_id_clients_facture` FOREIGN KEY (`id_clients`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `FK_personnel_id_personnel_facture` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_tva_id_tva_produits` FOREIGN KEY (`id_tva`) REFERENCES `tva` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
