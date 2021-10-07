SHOW TABLES;
DROP TABLE product;
SELECT *
FROM product;

-- создадим таблицу 
CREATE TABLE `shop`.`product` (
  `id` INT NOT NULL,
  `brand_id` INT NOT NULL,
  `product_type_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `price` DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY(`id`)

) 

-- сделам id автоикрементируемым
ALTER TABLE `product` 
  CHANGE COLUMN `id` `id` INT(11) AUTO_INCREMENT NOT NULL;

ALTER TABLE `brand` 
  CHANGE COLUMN `id` `id` INT (11) AUTO_INCREMENT NOT NULL;

INSERT INTO product(
    `brand_id`,
    `product_type_id`,
    `category_id`,
    `price`
  )
  VALUES(1, 1, 1, 8999);

-- на данный момент у нас существует проблема: у колонок нет ограничений:
--мы  можем добавить картеж с не сущетвующим brand_id в brand.id
INSERT INTO product(
    `brand_id`,
    `product_type_id`,
    `category_id`,
    `price`
  )
  VALUES(10, 1, 1, 8999);

-- `brand_id` должно по нашей логике ссылаться на поле id в таблице brand
-- и не должно быть возмодности добавить не сущетвующий идентивикатор в таблице brand. 
-- Для консистентности данных нужно добавить ограничение спомощью внешнего ключа
-- ограничение для brend с помощьювнешнего ключа (FOREIGN KEY)
ALTER TABLE `shop`.`product`
  ADD CONSTRAINT `fk_brand_product` 
  FOREIGN KEY(`brand_id`) 
  REFERENCES `shop`.`brand`(`id`) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;

-- ON DELETE CASCADE
-- изменить балицу
--  добавить ограничение `fk_brand_product`
--    внешний ключ поле `brand_id` ссылкается на поле brand.id
--      ON DELETE NO ACTION при удалении ниего не делать в сязынной таблице (по умолчанию)
--      при обновлении данных тоже ничего неделать в связанной таблице.
-- Тепрь мы сможем добавить brand_id только в том случае если сущевтует такой id в brand
INSERT INTO `brand`(id, type)
  VALUES(11, 'DC Shoes');

INSERT INTO product(brand_id, product_type_id, category_id, price)
  VALUES(11, 1, 1, 1000);

-- соответсвенно удалить мы можем из brand только после удаления из product
DELETE FROM `product`
  WHERE brand_id = 11;

DELETE FROM `brand`
  WHERE id = 11;

-- второй вариант добавить правило CASCADE в ограничения product
ALTER TABLE `product` 
  DROP FOREIGN KEY `fk_brand_product`;

ALTER TABLE `product`
  ADD CONSTRAINT `fk_brand_product` FOREIGN KEY (`brand_id`) 
  REFERENCES `brand` (`id`) 
    ON DELETE CASCADE 
    ON UPDATE NO ACTION;

-- теперь при удалении из brand удалится привязанный ключ из product 
-- +----+----------+-----------------+-------------+---------+
-- | id | brand_id | product_type_id | category_id | price   |
-- +----+----------+-----------------+-------------+---------+
-- |  1 |        1 |               1 |           1 | 8999.00 |
-- |  2 |       10 |               1 |           1 | 8999.00 |
-- |  5 |       11 |               1 |           1 | 1000.00 |
-- +----+----------+-----------------+-------------+---------+
-- +----+-------------+
-- | id | type        |
-- +----+-------------+
-- |  1 | Mark O'Polo |
-- |  2 | ALCOTT      |
-- |  3 | GUESS       |
-- | 10 | DC Shoes    |
-- | 11 | DC Shoes    |
-- +----+-------------+

DELETE FROM brand
  WHERE id = 11;

-- +----+----------+-----------------+-------------+---------+
-- | id | brand_id | product_type_id | category_id | price   |
-- +----+----------+-----------------+-------------+---------+
-- |  1 |        1 |               1 |           1 | 8999.00 |
-- |  2 |       10 |               1 |           1 | 8999.00 |
-- +----+----------+-----------------+-------------+---------+
-- из product тоже удалился brand_id=11 
SELECT *
  FROM product;

SELECT *
  FROM brand;
    DESC product;
    DESC brand;