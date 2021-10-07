SHOW DATABASES;
USE `shop`;
SHOW TABLES;
DESC `category`;

CREATE TABLE `brand` (
  `id` INT NOT NULL,
  `type` VARCHAR(128) NOT NULL,
  PRIMARY KEY(`id`)
);

CREATE TABLE `product` (
  `id` INT NOT NULL,
  `type` VARCHAR(255) NOT NULL,
  PRIMARY KEY(`id`)
);

CREATE TABLE `type_of_product`(
  `id` INT AUTO_INCREMENT NOT NULL,
  `type` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);