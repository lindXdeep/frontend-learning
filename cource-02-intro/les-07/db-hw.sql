
SHOW TABLES;
SELECT * FROM type_of_product;
SELECT * FROM product;
SELECT * FROM order_products;
SELECT * FROM `order`;

INSERT INTO type_of_product (type)
  VALUE ('coat');

-- Вывести все типы товаров, для которых нет ни одного товара.
SELECT type_of_product.* FROM type_of_product
  LEFT JOIN product
    ON product.product_type_id = type_of_product.id
      WHERE product.id IS NULL;

-- Вывести информацию обо всех товарах, кторые не попали ни в один из заказов.
SELECT product.* FROM `order`
  INNER JOIN order_products ON order_products.order_id = `order`.id
  RIGHT JOIN product ON order_products.product_id = product.id
    WHERE `order`.id IS NULL;


