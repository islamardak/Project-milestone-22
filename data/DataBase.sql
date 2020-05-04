-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Май 03 2020 г., 15:56
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `.NET_PROJECTDUB2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `CartProducts`
--

CREATE TABLE `CartProducts` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `cartid` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `productid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Carts`
--

CREATE TABLE `Carts` (
  `id` bigint(20) NOT NULL,
  `customerid` bigint(20) DEFAULT NULL,
  `grandTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Categories`
--

CREATE TABLE `Categories` (
  `id` bigint(20) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Categories`
--

INSERT INTO `Categories` (`id`, `name`) VALUES
(5, 'Lap top'),
(6, 'Watch'),
(7, 'Phone'),
(8, 'PhonePhonePhonePhonePhonePhone');

-- --------------------------------------------------------

--
-- Структура таблицы `Customers`
--

CREATE TABLE `Customers` (
  `id` bigint(20) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Products`
--

CREATE TABLE `Products` (
  `id` bigint(20) NOT NULL,
  `name` longtext,
  `content` longtext,
  `price` double NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `categoryid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Products`
--

INSERT INTO `Products` (`id`, `name`, `content`, `price`, `category_id`, `categoryid`) VALUES
(4, 'Notebook', 'Notebook kushti', 199990, 5, 5),
(5, 'Apple Watch', 'Apple Watch tema', 70000, 6, 6),
(6, 'Watch 2', 'Watch 2 birdene', 80000, 6, 6),
(7, 'Notebook 2', 'Notebook 2 Notebook 2 Notebook 2', 289000, 5, 5),
(8, 'ProductsController', 'ProductsController', 12, 5, 5),
(9, 'Notebook', 'Notebook', 12, 5, 5),
(10, 'Notebook', 'Notebook', 12, 5, 5),
(11, 'Notebook3', 'Notebook3 Notebook3 Notebook3', 10000000, 5, 5),
(12, 'Notebook4', ' Notebook4 Notebook4', 10000000, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20200429190220_First', '2.1.14-servicing-32113'),
('20200429190913_Second', '2.1.14-servicing-32113');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `CartProducts`
--
ALTER TABLE `CartProducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_CartProducts_cartid` (`cartid`),
  ADD KEY `IX_CartProducts_productid` (`productid`);

--
-- Индексы таблицы `Carts`
--
ALTER TABLE `Carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Carts_customerid` (`customerid`);

--
-- Индексы таблицы `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Products_categoryid` (`categoryid`);

--
-- Индексы таблицы `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `CartProducts`
--
ALTER TABLE `CartProducts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Carts`
--
ALTER TABLE `Carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Products`
--
ALTER TABLE `Products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `CartProducts`
--
ALTER TABLE `CartProducts`
  ADD CONSTRAINT `FK_CartProducts_Carts_cartid` FOREIGN KEY (`cartid`) REFERENCES `Carts` (`id`),
  ADD CONSTRAINT `FK_CartProducts_Products_productid` FOREIGN KEY (`productid`) REFERENCES `Products` (`id`);

--
-- Ограничения внешнего ключа таблицы `Carts`
--
ALTER TABLE `Carts`
  ADD CONSTRAINT `FK_Carts_Customers_customerid` FOREIGN KEY (`customerid`) REFERENCES `Customers` (`id`);

--
-- Ограничения внешнего ключа таблицы `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `FK_Products_Categories_categoryid` FOREIGN KEY (`categoryid`) REFERENCES `Categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
