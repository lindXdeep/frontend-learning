
SHOW TABLES;

SELECT * FROM `product`;
SELECT * FROM `brand`;
SELECT * FROM `category`;
SELECT * FROM `type_of_product`;

DESCRIBE `product`;
DESCRIBE `type_of_product`;

INSERT INTO `type_of_product`(id, type)
  VALUES(1, 'shoes');


ALTER TABLE `product`
  ADD CONSTRAINT `fk_type_product`
    FOREIGN KEY (`product_type_id`) REFERENCES `type_of_product`(`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION;

ALTER TABLE `product`
  ADD CONSTRAINT `fk_category_product`
    FOREIGN KEY (`category_id`) REFERENCES `category`(`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION;

INSERT INTO `product` (id, brand_id, product_type_id, category_id, price)
  VALUES(2,3,1,3,3999);

INSERT INTO `product` (brand_id, product_type_id, category_id, price)
  VALUES(1,2,1,7999);

INSERT INTO `product` (brand_id, product_type_id, category_id, price)
  VALUES(2,1,3,6999)