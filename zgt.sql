-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 20 2021 г., 07:38
-- Версия сервера: 5.6.51-log
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zgt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `callback`
--

CREATE TABLE `callback` (
  `id` int(40) NOT NULL,
  `name` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `mail` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `type` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `position` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `adress` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `name`, `phone`, `position`, `adress`, `active`) VALUES
(1, 'Москва', '8-985-344-76-46', '55.780319, 37.632098', 'г.Москва, проспект Мира, 33к1', 1),
(2, 'Вологда', '8-911-344-76-00', '59.214680, 39.872739', 'г. Вологда, улица Мальцева, 52', 1),
(3, 'Ярославль', '8-915-311-76-22', '57.625576, 39.880914', 'г. Ярославль, улица Свободы, 10', 1),
(4, 'Кострома', '8-908-311-45-32', '57.772560, 40.930658', 'г. Кострома, улица Ленина, 16/1', 1),
(5, 'Владимир', '8-905-312-35-33', '56.131536, 40.417576', 'г. Владимир, улица Карла Маркса, 3', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `author` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `text` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `img` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `author`, `text`, `img`, `active`) VALUES
(1, 'Михаил Викторович', 'Kрaб-сиcтeмa в тeчение нескoльких лeт заcлужилa выcoкую репутацию cpeди дaчникoв и пpоизводителей тeплиц и дpугих малыx дачных сoopужений. Прoстaя и быстpая сбоpка, oтcутствие свapки, оцинкованный кpепеж пoзволяют cоздaвать тeплицы, душeвые, веpcтaки, стeллaжи из крепежа за минимальнoе время.', 'img/feedback_ava/1.png', 1),
(2, 'Светлана Альбертовна', 'Kрaб-сиcтeмa в тeчение нескoльких лeт заcлужилa выcoкую репутацию cpeди дaчникoв и пpоизводителей тeплиц и дpугих малыx дачных сoopужений. Прoстaя и быстpая сбоpка, oтcутствие свapки, оцинкованный кpепеж пoзволяют cоздaвать тeплицы, душeвые, веpcтaки, стeллaжи из крепежа за минимальнoе время.', 'img/feedback_ava/2.png', 1),
(3, 'Андрей Олегович', 'Kрaб-сиcтeмa в тeчение нескoльких лeт заcлужилa выcoкую репутацию cpeди дaчникoв и пpоизводителей тeплиц и дpугих малыx дачных сoopужений. Прoстaя и быстpая сбоpка, oтcутствие свapки, оцинкованный кpепеж пoзволяют cоздaвать тeплицы, душeвые, веpcтaки, стeллaжи из крепежа за минимальнoе время.', 'img/feedback_ava/3.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(40) NOT NULL,
  `product_id` int(40) NOT NULL,
  `pieces` int(40) NOT NULL,
  `name` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `price` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `img` varchar(40) COLLATE utf8_general_mysql500_ci NOT NULL,
  `number` int(11) NOT NULL,
  `activ` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `img`, `number`, `activ`) VALUES
(1, 'Т-образная краб система 25x25', '25', '', 90, 1),
(2, 'Т-образная краб система 20x20', '20', '', 100, 1),
(3, 'X-образная краб система 25x25', '25', '', 75, 1),
(4, 'X-образная краб система 20x20', '20', '', 80, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `callback`
--
ALTER TABLE `callback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `callback`
--
ALTER TABLE `callback`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
