-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 mars 2023 à 19:49
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : ``
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createur` int(11) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `description`, `createur`, `date_creation`, `date_modification`) VALUES
(1, 'categories 1', 'description categories 1', NULL, NULL, NULL),
(2, 'categories 2', 'description categories 2', NULL, NULL, NULL),
(3, 'categories 3', 'description categories 3', NULL, NULL, NULL),
(4, 'categories 4', 'description categories 4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categories` int(11) DEFAULT NULL,
  `createur` int(11) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `image`, `categories`, `createur`, `date_creation`, `date_modification`) VALUES
(1, 'produit 1', 'description', 50, 'p3.webp', NULL, NULL, NULL, NULL),
(2, 'produit 2', 'hello', 40, 'p2.webp', NULL, NULL, NULL, NULL),
(3, 'produit 3', 'heyy', 44, 'p1.webp', NULL, NULL, NULL, NULL),
(4, 'produit 4', 'aaa', 20, 'p4.webp', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visiteurs`
--

CREATE TABLE `visiteurs` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `mp` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `etat` int(11) DEFAULT 0,
  `telephone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `visiteurs`
--

INSERT INTO `visiteurs` (`id`, `email`, `date_creation`, `date_modification`, `mp`, `nom`, `prenom`, `etat`, `telephone`) VALUES
(1, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(2, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(3, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(4, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(5, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(6, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(7, 'Yamenlhkm@gmail.com', NULL, NULL, '', 'bizid', 'yamen', 0, '26426766'),
(8, 'Yamenpro09@gmail.com', NULL, NULL, '54446876578678', 'bizid', 'yamen', 0, '26426766'),
(9, 'kadijak624@gmail.com', NULL, NULL, '', 'kadija', '', 0, ''),
(10, 'kadijak624@gmail.com', NULL, NULL, 'kadijak624@', 'kadijak624', 'kadijak624', 0, '000000000'),
(11, 'bizidyamen@gmail.com', NULL, NULL, 'Yamen123', 'bizid', 'yamen', 0, '26426766'),
(12, 'freefiree861@gmail.com', NULL, NULL, 'Sami123@', 'sami', 'sami', 0, '00000000'),
(13, 'bizidyamen@gmail.com', NULL, NULL, '00000', 'bizid', 'yamen', 0, '26426766'),
(14, 'kadijak624@gmail.com', NULL, NULL, 'ghjhgjghjghj', 'kadija', 'kadijak624', 0, '000000000'),
(15, 'kilouxekilouxe@gmail.com', NULL, NULL, 'kilouxe1235424', 'kilouxe', 'kilouxe', 0, '197'),
(16, 'fortenitefifa@gmail.com', NULL, NULL, 'fortenitefifa@', 'fortenitefifa', 'fortenitefifa', 0, '000000000'),
(17, 'kanask573@gmail.com', NULL, NULL, 'kanask573@', 'kanask573', 'kanask573', 0, '00000000'),
(18, 'patistaslayder@gmail.com', NULL, NULL, 'patistaslayder@', 'patista', 'slayder', 0, '20009917'),
(19, 'azizosextra7@gmail.com', NULL, NULL, 'azizosextra7@', 'azizos', 'extra', 0, '20009917');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
