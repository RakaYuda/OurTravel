-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 20. April 2018 jam 06:28
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ourtravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `gender` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_code` varchar(50) DEFAULT NULL,
  `reservation_at` varchar(50) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `customerid` int(10) DEFAULT NULL,
  `seat_code` int(10) DEFAULT NULL,
  `ruteid` int(10) DEFAULT NULL,
  `depart_at` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `customerid` (`customerid`),
  UNIQUE KEY `ruteid` (`ruteid`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE IF NOT EXISTS `rute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depart_at` varchar(50) DEFAULT NULL,
  `rute_from` varchar(50) DEFAULT NULL,
  `rute_to` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `transportationid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transportationid` (`transportationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation`
--

CREATE TABLE IF NOT EXISTS `transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `seat_qty` int(10) DEFAULT NULL,
  `transportationtype_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transportationtype_id` (`transportationtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation_type`
--

CREATE TABLE IF NOT EXISTS `transportation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservation` (`customerid`);

--
-- Ketidakleluasaan untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `rute_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservation` (`ruteid`);

--
-- Ketidakleluasaan untuk tabel `transportation`
--
ALTER TABLE `transportation`
  ADD CONSTRAINT `transportation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `rute` (`transportationid`);

--
-- Ketidakleluasaan untuk tabel `transportation_type`
--
ALTER TABLE `transportation_type`
  ADD CONSTRAINT `transportation_type_ibfk_1` FOREIGN KEY (`id`) REFERENCES `transportation` (`transportationtype_id`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservation` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
