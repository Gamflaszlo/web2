-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 23. 11:57
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `pizza`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoria`
--

CREATE TABLE `kategoria` (
  `nev` text NOT NULL,
  `ar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoria`
--

INSERT INTO `kategoria` (`nev`, `ar`) VALUES
('apród	', 850),
('főnemes	', 950),
('király	', 1250),
('lovag	', 1150);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza`
--

CREATE TABLE `pizza` (
  `nev` text NOT NULL,
  `kategorianev` text NOT NULL,
  `vegetarianus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `pizza`
--

INSERT INTO `pizza` (`nev`, `kategorianev`, `vegetarianus`) VALUES
('Áfonyás	', 'király	', 0),
('Babos	', 'lovag', 0),
('Barbecue chicken	', 'lovag', 0),
('Betyáros	', 'király', 0),
('Caribi	', 'apród', 0),
('Country	', 'király	', 0),
('Csabesz	', 'király', 0),
('Csupa sajt', 'lovag', 1),
('Erdő kapitánya', 'apród	', 0),
('Erős János', 'lovag', 0),
('Excellent', 'király', 0),
('Főnök kedvence', 'lovag', 0),
('Gombás', 'apród', 1),
('Góré', 'lovag', 0),
('Görög', 'király', 0),
('Gyros pizza', 'király', 0),
('HamAndEggs', 'lovag', 0),
('Hamm', 'lovag', 0),
('Hawaii', 'főnemes', 0),
('Hellas', 'király', 0),
('Hercegnő', 'király', 0),
('Ilike', 'lovag', 0),
('Ínyenc', 'lovag', 0),
('Jázmin álma', 'lovag', 0),
('Jobbágy', 'király', 0),
('Juhtúrós', 'lovag', 0),
('Kagylós', 'király', 0),
('Kétszínű', 'lovag', 0),
('Kiadós', 'király', 0),
('Király pizza', 'király', 0),
('Kívánság', 'lovag', 1),
('Kolbászos', 'apród', 0),
('Lagúna	', 'király', 1),
('Lecsó', 'király', 0),
('Maffiózó', 'lovag', 0),
('Magvas', 'király', 1),
('Magyaros', 'lovag', 0),
('Máj Fair Lady', 'király', 0),
('Mamma fia', 'király', 0),
('Mexikói', 'főnemes', 0),
('Mixi', 'főnemes', 1),
('Nikó', 'király', 0),
('Nordic	', 'király', 0),
('Nyuszó-Muszó', 'király', 0),
('Pacalos', 'lovag', 0),
('Pástétomos', 'király', 0),
('Pásztor', 'lovag', 0),
('Pipis', 'lovag', 0),
('Popey', 'király', 0),
('Quattro', 'király', 0),
('Ráki', 'király', 0),
('Rettenetes magyar', 'király', 0),
('Röfi', 'király', 0),
('Sajtos', 'apród', 1),
('So-ku', 'apród', 0),
('Son-go-ku', 'főnemes', 1),
('Sonkás', 'apród', 0),
('Spanyol', 'király', 0),
('Spencer', 'főnemes', 0),
('Szalámis', 'apród', 0),
('Szardíniás	', 'lovag', 0),
('Szerzetes', 'király', 0),
('Szőke kapitány	', 'király', 0),
('Tenger gyümölcsei', 'király', 0),
('Tonhalas', 'lovag', 0),
('Törperős', 'lovag', 0),
('Tündi kedvence', 'király', 0),
('Tüzes halál', 'király', 0),
('Vega', 'lovag', 1),
('Zöldike', 'főnemes', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `az` int(11) NOT NULL,
  `pizzanev` text NOT NULL,
  `darab` int(11) NOT NULL,
  `felvetel` datetime NOT NULL,
  `kiszallitas` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`az`, `pizzanev`, `darab`, `felvetel`, `kiszallitas`) VALUES
(0, 'Popey	', 2, '2005-11-12 11:21:00', '2005-11-12 12:11:00'),
(1, 'Kagylós', 1, '2005-11-12 11:41:00', '2005-11-12 12:26:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`nev`(50)) USING BTREE;

--
-- A tábla indexei `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`nev`(50)) USING BTREE,
  ADD KEY `kategorianev` (`kategorianev`(768));

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`az`),
  ADD KEY `az` (`az`),
  ADD KEY `pizzanev` (`pizzanev`(50)) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
