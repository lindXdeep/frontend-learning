USE shop;
SHOW TABLES;
SELECT * FROM `order`;


CREATE TABLE `order`(
  `id` INT AUTO_INCREMENT NOT NULL,
  `user_name` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(32) NOT NULL,
  `datetime` DATETIME NOT NUll,
  PRIMARY KEY (`id`)
)

INSERT INTO `order` (user_name, phone, datetime)
  VALUES('Tom', '555-444-33', '2016-05-09 18:45');

-- нам нужно создать 3-ю таблицу которая будет овечать за взаимосвязь заказов и товаров
-- что бы связь Many To Many  работала нужно сделать так что бы в 3-ей таблице
-- пары внешних ключей не могливстретиться дважды в одной таблице.ACCESSIBLE

-- для этого нужно указатаь в качетве PRIMARI KEy сразу два идентификатора

CREATE TABLE `shop`.`order_products`(
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `count` INT NULL,
  PRIMARY KEY (`order_id`, `product_id`)
);

-- теперь мы можем добавить заказ,  товары в заказ,  и количество тоываров
INSERT INTO `order_products` (order_id, product_id, count)
  VALUES
    (1,1,1),
    (1,2,3);

-- теперь нужно добавить ограничесния с помощью внешних ключей
-- иначе мы можнм создать соотношени с не сущетвующие взаимосвязями.
ALTER TABLE `order_products`
  ADD INDEX `fk_order_products_product_idx` (`product_id` ASC);

ALTER TABLE `order_products`
  ADD CONSTRAINT `fk_order_products_order`
    FOREIGN KEY (`order_id`) REFERENCES `order`(`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_products_product`
    FOREIGN KEY (`product_id`) REFERENCES `product`(`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION;



-- теперь мы не сможем добавить дулирующиеся ключи CREATE
-- ER_NO_REFERENCED_ROW_2: Cannot add or update a child row: a foreign key constraint
INSERT INTO `order_products` (order_id, product_id, count)
  VALUES(1,10,1);

-- и не сможем добавить не сущетвующие ключи
-- ER_DUP_ENTRY: Duplicate entry '1-1' for key 'order_products.PRIMARY'
INSERT INTO `order_products` (order_id, product_id, count)
  VALUES(1,1,1);