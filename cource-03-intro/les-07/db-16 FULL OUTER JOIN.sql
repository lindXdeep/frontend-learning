--  FULL OUTER JOIN нет в MySql
SELECT product.* FROM `order`
  FULL OUTER JOIN order_products ON order_products.order_id = `order`.id
  FULL OUTER JOIN product ON order_products.product_id = product.id;

-- в место FULL OUTER JOIN можно использовать UNION

SELECT * FROM type_of_product 
  WHERE id = 1
  
UNION

SELECT * FROM type_of_product 
  WHERE id = 2;


SELECT * FROM `order`
  LEFT JOIN order_products ON order_products.order_id = `order`.id
  LEFT JOIN product ON order_products.product_id = product.id

UNION

SELECT * FROM `order`
  INNER JOIN order_products ON order_products.order_id = `order`.id
  RIGHT JOIN product ON order_products.product_id = product.id
    WHERE `order`.id IS NULL;