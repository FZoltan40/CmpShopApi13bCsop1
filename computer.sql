-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2026. Okt 14. 05:34
-- Kiszolgáló verziója: 8.4.7
-- PHP verzió: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `computer`
--
CREATE DATABASE IF NOT EXISTS `computer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `computer`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osystems`
--

DROP TABLE IF EXISTS `osystems`;
CREATE TABLE IF NOT EXISTS `osystems` (
  `Id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Version` int NOT NULL,
  `RegisterTime` datetime(6) NOT NULL,
  `UpdateTime` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `osystems`
--

INSERT INTO `osystems` (`Id`, `Name`, `Version`, `RegisterTime`, `UpdateTime`) VALUES
('a40d9ff7-20b3-4311-8d90-2083ca618b6f', 'Windows 7', 3, '2026-10-07 11:06:01.977217', '2026-10-07 11:06:01.977363');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
CREATE TABLE IF NOT EXISTS `__efmigrationshistory` (
  `MigrationId` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductVersion` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20261007072018_InitialDb', '10.0.12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
