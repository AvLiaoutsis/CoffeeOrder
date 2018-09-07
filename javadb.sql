-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 18 Μάη 2018 στις 18:19:48
-- Έκδοση διακομιστή: 10.1.28-MariaDB
-- Έκδοση PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `javadb`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `coffee`
--

CREATE TABLE `coffee` (
  `ESP` double DEFAULT NULL,
  `CAP` double DEFAULT NULL,
  `FRE` double DEFAULT NULL,
  `FRC` double DEFAULT NULL,
  `FRECCINO` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `coffee`
--

INSERT INTO `coffee` (`ESP`, `CAP`, `FRE`, `FRC`, `FRECCINO`) VALUES
(1.2, 1.8, 1.7, 1.8, 2.7);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `coffeeorigin`
--

CREATE TABLE `coffeeorigin` (
  `origin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `coffeeorigin`
--

INSERT INTO `coffeeorigin` (`origin`) VALUES
('panepistimio peiraia');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `customers_hash`
--

CREATE TABLE `customers_hash` (
  `username` varchar(30) NOT NULL,
  `pass` longtext NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `telnumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='customers_hash';

--
-- Άδειασμα δεδομένων του πίνακα `customers_hash`
--

INSERT INTO `customers_hash` (`username`, `pass`, `first_name`, `last_name`, `email`, `address`, `telnumber`) VALUES
('avraam', '*7D56FBB23229525931B70244AEE3B18F823996A0', 'Avraam', 'Liaoutsis', 'crusaderboom@gmail.com', 'anavritis 16', '6979039512'),
('giogke', '*00E7753AE9AA7216B7B9311B563303D046A09A0B', 'Giwrgos', 'Gkekas', 'giogke96@gmail.com', 'monastiraki', '2102020200'),
('alex', '*8258F2618980E77E5220ECD738182656223809C1', 'alex', 'liaoutsis', 'slashdalex@gmail.com', 'anavritis 16', '6979039512'),
('test', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', 'test', 'test', 'slashdalex@gmail.com', 'anavritis 16', '6980000000'),
('test1', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', 'test', 'test', 'test@test.gr', 'monastiraki', '6980000000'),
('a1b1', '*7FB7A1DB43FC1B28749746EB58C75A7EB29244E4', 'a1', 'b1', 'c3@gmail.com', 'anavritis 16', '6979039512'),
('alex2', '*E2950BBF2B8CA38B506B690767D3C22A68FCA651', 'alex', 'Liaoutsis', 'alex@gmail.com', 'anavritis 14', '6980612016'),
('omg', '*0EE73F78E5B5E5C0F569C2F0925839AC4D2F54A7', 'omg', '3lol', 'omg@gmail.com', 'anavritis 14', '6970000000'),
('abc', '*0D3CED9BEC10A777AEC23CCC353A8C08A633045E', 'abc', 'abc', 'abc@abc.gr', 'anavritis 14', '6970000000');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `products`
--

CREATE TABLE `products` (
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `products`
--

INSERT INTO `products` (`name`, `price`) VALUES
('Espresso', '1'),
('Cappucino', '2'),
('Freddo Espresso', '2'),
('Freddo Cappucin', '2'),
('Freddocino', '2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
