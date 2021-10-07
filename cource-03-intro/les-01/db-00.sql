-- Создаем базу данных
CREATE SCHEMA `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
CREATE DATABASE `shop`;

-- посмореть созданые базы данных
SHOW DATABASES;

-- выбираем ту БД которую будет юзать
USE shop;

-- создаем таблицу `category`
CREATE TABLE `shop`.`category` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  `discount` TINYINT NOT NULL,
  PRIMARY KEY(`id`)
);

--изменение таблицы
ALTER TABLE `shop`.`category`
  ADD COLUMN `alias_name` VARCHAR(128) NULL AFTER `discount`;

ALTER TABLE `shop`.`category`
  CHANGE COLUMN `id`
    `id` INT(11) NOT NULL AUTO_INCREMENT;

-- показать таблицы
SHOW TABLES;

--показать колонки
SHOW COLUMNS FROM `category`;
DESCRIBE `category`;
DESC `category`;

--удалить табилицу
DROP TABLE `category`;

--удалить базу данных
DROP DATABASE `shop`;

