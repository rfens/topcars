-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 30 nov 2020 om 23:36
-- Serverversie: 10.4.16-MariaDB
-- PHP-versie: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topcars`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `transmission` varchar(255) NOT NULL,
  `numberplate` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `buildyear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_type`, `transmission`, `numberplate`, `color`, `fuel`, `buildyear`) VALUES
(1, 'Chevrolet', 'Camaro', 'automatic', 'aa-11-bb', 'yellow', 'diesel', 1969),
(2, 'Datsun', '240Z', 'manual', 'ab-12-ab', 'blue', 'diesel', 1970),
(3, 'Ferrari', '250 GTE', 'manual', 'ff-22-ff', 'red', 'petrol', 1970),
(4, 'Toyota', '2000GT', 'automatic', 'as-33-rb', 'grey', 'diesel', 1962),
(5, 'Lamborghini', 'Miura', 'automatic', 'ui-81-en', 'green', 'petrol', 1966),
(6, 'Dodge', 'Charger', 'manual', 'xf-56-gh', 'black', 'petrol', 1969),
(7, 'Alfa Romeo', 'Spider Duetto', 'manual', 'jk-69-ql', 'blue', 'diesel', 1966),
(8, 'Ferrari', 'Dino', 'automatic', 'er-07-wo', 'red', 'diesel', 1969),
(9, 'Corvette', 'Stingray', 'manual', 'tu-41-zf', 'green', 'diesel', 1963),
(10, 'Mustang', 'Boss 429', 'manual', 'ib-76-sd', 'yellow', 'diesel', 1969);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `driver1`
--

CREATE TABLE `driver1` (
  `driver1_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver1_name` varchar(255) NOT NULL,
  `driver1_adres` varchar(255) NOT NULL,
  `driver1_city` varchar(255) NOT NULL,
  `driver1_land` varchar(255) NOT NULL,
  `driver1_number` int(11) NOT NULL,
  `driver1_birthdate` date NOT NULL,
  `driver1_birthplace` varchar(255) NOT NULL,
  `driver1_licensenumber` varchar(255) NOT NULL,
  `driver1_cat` varchar(255) NOT NULL,
  `driver1_placeofrelease` varchar(255) NOT NULL,
  `driver1_enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `driver2`
--

CREATE TABLE `driver2` (
  `driver2_id` int(11) NOT NULL,
  `driver2_name` varchar(255) NOT NULL,
  `driver2_adres` varchar(255) NOT NULL,
  `driver2_city` varchar(255) NOT NULL,
  `driver2_land` varchar(255) NOT NULL,
  `driver2_number` int(11) NOT NULL,
  `driver2_birthdate` date NOT NULL,
  `driver2_birthplace` varchar(255) NOT NULL,
  `driver2_licensenumber` varchar(255) NOT NULL,
  `driver2_cat` varchar(255) NOT NULL,
  `driver2_placeofrelease` varchar(255) NOT NULL,
  `driver2_enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rentalperiod`
--

CREATE TABLE `rentalperiod` (
  `rental_id` int(11) NOT NULL,
  `rental_car_id` int(11) NOT NULL,
  `rental_start` date NOT NULL,
  `rental_end` date NOT NULL,
  `rental_streched` date NOT NULL,
  `rental_price` decimal(10,0) NOT NULL,
  `rental_payment` tinyint(1) NOT NULL,
  `rental_namebank` varchar(255) NOT NULL,
  `rental_banknumber` varchar(255) NOT NULL,
  `rental_extrainfo` text NOT NULL,
  `rental_douments` tinyint(1) NOT NULL,
  `rental_instructions` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `Admin` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pasword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_id`, `Admin`, `username`, `email`, `pasword`) VALUES
(1, 1, 'Admin', 'admin@admin.ad', '1'),
(2, 0, 'user1', 'user1@user.us', 'fuesuifbhiefus'),
(3, 0, 'user2', 'user2@user.us', 'blabla'),
(4, 0, 'user3', 'user3@user.us', 'blabla3'),
(5, 0, 'user4', 'user4@user.us', 'blabla4'),
(6, 0, 'user5', 'user5@user.us', 'blabla5'),
(7, 0, 'user6', 'user6@user.us', 'blabla6'),
(8, 0, 'user7', 'user7@user.us', 'blabla7'),
(9, 0, 'user8', 'user8@user.us', 'blabla8'),
(10, 0, 'user9', 'user9@user.us', 'blabla9'),
(11, 0, 'user10', 'user10@user.us', 'blabla10'),
(12, 0, 'user11', 'user11@user.us', 'blabla11'),
(13, 0, 'user12', 'user12@user.us', 'blabla12'),
(14, 0, 'user13', 'user13@user.us', 'blabla13'),
(15, 0, 'user14', 'user14@user.us', 'blabla14');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexen voor tabel `driver1`
--
ALTER TABLE `driver1`
  ADD PRIMARY KEY (`driver1_id`);

--
-- Indexen voor tabel `driver2`
--
ALTER TABLE `driver2`
  ADD PRIMARY KEY (`driver2_id`);

--
-- Indexen voor tabel `rentalperiod`
--
ALTER TABLE `rentalperiod`
  ADD PRIMARY KEY (`rental_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `driver1`
--
ALTER TABLE `driver1`
  MODIFY `driver1_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `driver2`
--
ALTER TABLE `driver2`
  MODIFY `driver2_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rentalperiod`
--
ALTER TABLE `rentalperiod`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
