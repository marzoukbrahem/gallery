-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 mars 2024 à 13:34
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
-- Base de données : `ordogest`
--

-- --------------------------------------------------------

--
-- Structure de la table `file`
--

CREATE TABLE `file` (
  `id` varchar(7) NOT NULL,
  `type` varchar(20) NOT NULL,
  `DateEmm` date NOT NULL,
  `DateArr` date NOT NULL,
  `DateRec` date NOT NULL,
  `Origine` varchar(150) NOT NULL,
  `Observation` varchar(40) NOT NULL,
  `Objet` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `responsable` varchar(40) NOT NULL,
  `State` tinyint(1) NOT NULL,
  `Note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



--
-- Structure de la table `request`
--

CREATE TABLE `request` (
  `id` varchar(40) NOT NULL,
  `objet` varchar(200) NOT NULL,
  `destination` varchar(40) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `Date_Send` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `request`
--

INSERT INTO `request` (`id`, `objet`, `destination`, `sender`, `state`, `Date_Send`) VALUES
('RQ1212', 'KQDQJMDLQKSMDLQKSDMQSKQMLD', 'DEPARTEMENT CHEMIE', 'sami saleh', 'EN COURS', '2024-03-12'),
('RQ1213', 'QSLSQDKFQSLKFMSLFKqsfqsfqsdf', 'DEPARTEMENT CHEMIE', 'ali aaa', 'ACCEPTER', '2024-03-13'),
('RQ1234', 'LKQSJDQLSKDJQLDJQSDKSQDFQSDFQSD', 'DEPARTEMENT CHEMIE', 'ali aaa', 'EN COURS', '2024-03-13'),
('RQ1235', 'azdqsdqsdqsdqdqsdqsd', 'DEPARTEMENT CHEMIE', 'ali aaa', 'REFUSER', '2024-03-13');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `FristName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `CIN` varchar(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(8) NOT NULL,
  `UserName` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Department` varchar(40) NOT NULL,
  `onLine` tinyint(1) NOT NULL,
  `Admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`FristName`, `LastName`, `CIN`, `Email`, `Phone`, `UserName`, `Password`, `Department`, `onLine`, `Admin`) VALUES
('ali', 'aaa', '12121212', 'alimohamed@gmail.com', '98765432', 'ali', 'ali', 'Green', 1, 0),
('sami', 'saleh', '13131313', 'samisaleh@gmail.com', '87976854', 'sami', 'sami', 'Green', 0, 0),
('mouhamed', 'Benromdhan', '14013054', 'benromdhan@gmail.com', '12345678', 'med', 'med', 'Green', 1, 1),
('Braham', 'Marzouk', '14013055', 'brahemmarzouk27@gmail.com', '50568629', 'marzouk', 'marzouk', 'informatique', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `image` (`id`) USING BTREE,
  ADD UNIQUE KEY `image_2` (`image`) USING HASH;

--
-- Index pour la table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`CIN`),
  ADD UNIQUE KEY `UserName` (`UserName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
