-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3308
-- Время создания: Окт 12 2020 г., 14:40
-- Версия сервера: 8.0.18
-- Версия PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gallery_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_id` (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(3, 4, 'Merlin', 'Uitstekend!'),
(4, 3, 'Demi', '4X4'),
(5, 15, 'Miquel', 'Mijn afbeelding van 2019'),
(6, 10, 'Aad Metz', 'Het gallery is een actuele aanvulling op onze server.'),
(7, 13, 'Charlie', 'ik heb deze foto nodig.');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `alternate_text`, `filename`, `type`, `size`) VALUES
(10, 'Kanarische eilanden', '#10.03', 'GPS, parkeert zich automatisch', 'identiek', 'IMG_4122.JPG', 'image/jpeg', 1955535),
(13, 'Greeks', '', '', '', 'A7URCFVBN8w.jpg', 'image/jpeg', 128854),
(15, 'Lille', '', '', '', 'image1 (3).jpeg', 'image/jpeg', 214554),
(16, 'Duitsland', '', '', '', 'IMG_5371~photo.JPG', 'image/jpeg', 1414787),
(17, 'London', '', '', '', 'IMG_5152~photo.jpg', 'image/jpeg', 305712),
(18, 'Diksmuide', '', '', '', 'IMG_4989~photo.JPG', 'image/jpeg', 1811341),
(19, 'Stanhuis Frankrijk', '', '', '', 'IMG_4754~photo.JPG', 'image/jpeg', 1350778),
(20, 'Brugge', '', '', '', 'IMG_5071~photo.JPG', 'image/jpeg', 2093448),
(21, 'in Frankrijk', '', '', '', 'IMG_4787~photo.JPG', 'image/jpeg', 1961297);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(4, 'Boris1000', '123', 'Boris', 'Mertens', 'bird.jpg'),
(7, 'CharlieX', '123', 'Charlie', 'Briggs', 'briggs.jpg'),
(6, 'Romeo', '1323', 'Max', 'Wouters', 'wolf.jpg'),
(8, 'Nadja4', '123', 'Nadja', 'Kasperov', 'briggs2.png'),
(9, 'HHNV', '1223', 'Henry', 'Caldwel', 'large_landscape (2).jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
