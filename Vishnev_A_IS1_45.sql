-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 18 2024 г., 12:02
-- Версия сервера: 5.6.51
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Vishnev_A_IS1_45`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Office equipment`
--

CREATE TABLE `Office equipment` (
  `id_oe` int(255) NOT NULL,
  `oe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_oe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_oe` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Office equipment`
--

INSERT INTO `Office equipment` (`id_oe`, `oe`, `desc_oe`, `status_oe`) VALUES
(1, 'Компьютер', 'Core 2 Duo, gt 710, 8gb, win 10', 2),
(2, 'Телефон проводной', 'Кабельный телефон красного цвета', 1),
(3, 'Принтер цветной', 'Цветной принтер HP', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Roles`
--

CREATE TABLE `Roles` (
  `id_role` int(255) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Roles`
--

INSERT INTO `Roles` (`id_role`, `role`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `Status`
--

CREATE TABLE `Status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Status`
--

INSERT INTO `Status` (`id_status`, `status`) VALUES
(1, 'Используется'),
(2, 'На складе'),
(3, 'В ремонте');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id_user` int(255) NOT NULL,
  `user_name_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id_user`, `user_name_1`, `user_name_2`, `user_name_3`, `user_email`, `user_password`, `user_role`) VALUES
(1, '1', '1', '1', '1', '1', 1),
(4, 'Уйманов', 'Глеб', 'Петрович', '1234@mail.ru', '1234', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Office equipment`
--
ALTER TABLE `Office equipment`
  ADD PRIMARY KEY (`id_oe`);

--
-- Индексы таблицы `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Индексы таблицы `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`id_status`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Office equipment`
--
ALTER TABLE `Office equipment`
  MODIFY `id_oe` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id_role` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Status`
--
ALTER TABLE `Status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
