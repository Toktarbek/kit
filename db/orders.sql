-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 27 2019 г., 05:22
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `messages` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `files` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `ischeck` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `tema`, `messages`, `name`, `email`, `files`, `created_at`, `ischeck`) VALUES
(1, 'tema1', 'teafbfbfb', 'Erbol', 'erbol@mail.ru', 'documents/1561551180.jpg', '2019-06-26', 0),
(4, 'tema2', 'djhfjdgfdhf', 'Ulzhan', 'ulia@mail.ru', 'documents/1561553039.png', '2019-06-26', 0),
(5, 'salem', 'salem kalaisin', 'Aidana', 'aidana@mail.ru', 'documents/1561553082.docx', '2019-06-26', 0),
(7, 'Мұнда тақырып жазу керек', 'мында текст жазамыз', 'Ardak', 'ardak@mail.ru', 'documents/1561570040.pdf', '2019-06-26', 0),
(14, 'How are you', '0123456789876543210\r\n0123456789876543210\r\n0123456789876543210\r\n0123456789876543210\r\n0123456789876543210', 'Bekzat', 'beka@mail.ru', 'documents/1561575903.html', '2019-06-26', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
