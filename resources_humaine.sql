-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 29 mars 2023 à 13:22
-- Version du serveur : 5.7.40
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `resources_humaine`
--

-- --------------------------------------------------------

--
-- Structure de la table `annoncement`
--

DROP TABLE IF EXISTS `annoncement`;
CREATE TABLE IF NOT EXISTS `annoncement` (
  `idannonce` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`idannonce`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annoncement`
--

INSERT INTO `annoncement` (`idannonce`, `titre`, `description`) VALUES
(8, 'Présentation de projet IOT', '<p>une r&eacute;union a &eacute;t&eacute; programmer pour discuter sur le prochaine projet de l\'entreprise</p>');

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

DROP TABLE IF EXISTS `candidats`;
CREATE TABLE IF NOT EXISTS `candidats` (
  `idcand` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(39) NOT NULL,
  `nom` varchar(39) NOT NULL,
  `dateNaissance` date NOT NULL,
  `genre` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telephone` int(40) NOT NULL,
  `poste` varchar(70) NOT NULL,
  `niveau` varchar(40) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `lettre` varchar(255) NOT NULL,
  PRIMARY KEY (`idcand`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`idcand`, `prenom`, `nom`, `dateNaissance`, `genre`, `email`, `telephone`, `poste`, `niveau`, `cv`, `lettre`) VALUES
(21, 'hamza', 'dbani', '2000-03-13', 'Homme', 'hamzadbani3@gmail.com', 667268568, 'mobile developer', 'bac+5', 'lab2(DT).pdf', 'projet DNS (3).pdf'),
(22, 'hamza', 'dbani', '1999-03-13', 'Homme', 'hamzadbani1@gmail.com', 67865467, 'DEVELOPPEUR', 'bac+5', 'cvhamza.pdf', 'lettrehamza.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `conges`
--

DROP TABLE IF EXISTS `conges`;
CREATE TABLE IF NOT EXISTS `conges` (
  `idconge` int(11) NOT NULL AUTO_INCREMENT,
  `datecreation` date NOT NULL,
  `periode` int(11) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `typeconge` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `idemp` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idconge`),
  KEY `conges_ibfk_1` (`idemp`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `congesdemandes`
--

DROP TABLE IF EXISTS `congesdemandes`;
CREATE TABLE IF NOT EXISTS `congesdemandes` (
  `idconge` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `datecreation` date NOT NULL,
  `periode` int(50) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `typeconge` varchar(100) NOT NULL,
  `nom` varchar(39) NOT NULL,
  `idemp` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`idconge`),
  KEY `idemp` (`idemp`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `congesdemandes`
--

INSERT INTO `congesdemandes` (`idconge`, `datecreation`, `periode`, `datedebut`, `datefin`, `typeconge`, `nom`, `idemp`) VALUES
(39, '2023-03-29', 19, '2023-03-31', '2023-04-19', 'congÃ© de maladie', 'User', 70);

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

DROP TABLE IF EXISTS `employes`;
CREATE TABLE IF NOT EXISTS `employes` (
  `idemp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(39) NOT NULL,
  `dateNaissance` date NOT NULL,
  `nom` varchar(39) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `telephone` int(39) NOT NULL,
  `motdepasse` varchar(39) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '0',
  `photo` text NOT NULL,
  PRIMARY KEY (`idemp`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`idemp`, `email`, `dateNaissance`, `nom`, `departement`, `poste`, `telephone`, `motdepasse`, `etat`, `photo`) VALUES
(70, 'user1@gmail.com', '2023-03-24', 'User', 'Administration', 'Chef projet', 989797978, '12345', 1, '298971694_3931140393778286_6559344065847788361_n.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `employesarchiver`
--

DROP TABLE IF EXISTS `employesarchiver`;
CREATE TABLE IF NOT EXISTS `employesarchiver` (
  `idemp` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `dateNaissance` date NOT NULL,
  `nom` varchar(40) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `telephone` int(40) NOT NULL,
  `motdepasse` varchar(40) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '0',
  `photo` text NOT NULL,
  PRIMARY KEY (`idemp`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reunion`
--

DROP TABLE IF EXISTS `reunion`;
CREATE TABLE IF NOT EXISTS `reunion` (
  `idreunion` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `datereunion` date NOT NULL,
  `heurereunion` time(6) NOT NULL,
  PRIMARY KEY (`idreunion`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reunion`
--

INSERT INTO `reunion` (`idreunion`, `titre`, `type`, `datereunion`, `heurereunion`) VALUES
(82, 'présentation de projet IOT', 'réunion interne', '2021-07-30', '16:30:00.000000'),
(83, 'reunionRH', 'réunion interne', '2022-04-13', '14:50:00.000000');

-- --------------------------------------------------------

--
-- Structure de la table `rh`
--

DROP TABLE IF EXISTS `rh`;
CREATE TABLE IF NOT EXISTS `rh` (
  `idrh` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(40) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `motdepasse` varchar(40) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `poste` varchar(70) NOT NULL,
  `departement` varchar(30) NOT NULL,
  PRIMARY KEY (`idrh`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rh`
--

INSERT INTO `rh` (`idrh`, `prenom`, `nom`, `email`, `motdepasse`, `photo`, `poste`, `departement`) VALUES
(2, 'Bernardino', 'Bah', 'admin@gmail.com', '1234', 'hamza.jpg', 'RH', 'resources humaines');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `conges`
--
ALTER TABLE `conges`
  ADD CONSTRAINT `conges_ibfk_1` FOREIGN KEY (`idemp`) REFERENCES `employes` (`idemp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `congesdemandes`
--
ALTER TABLE `congesdemandes`
  ADD CONSTRAINT `congesdemandes_ibfk_1` FOREIGN KEY (`idemp`) REFERENCES `employes` (`idemp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
