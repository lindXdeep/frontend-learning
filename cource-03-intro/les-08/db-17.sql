use shop;

SELECT * 
  FROM product;

SELECT count(*) 
  FROM product 
    WHERE product.price < 10000;

SELECT 
  sum(price) AS total_price, 
  min(price) AS min_price, 
  max(price) AS max_price 
    FROM product;

-- GROUP BY

SELECT `order`.user_name, sum(price * `count`) AS total_price  FROM `order` 
	INNER JOIN order_products ON order_products.order_id = `order`.id
    INNER JOIN product ON product.id = order_products.product_id
    GROUP BY `order`.user_name;
    
SELECT `order`.user_name, max(price), sum(`count`)  FROM `order` 
	INNER JOIN order_products ON order_products.order_id = `order`.id
    INNER JOIN product ON product.id = order_products.product_id
    GROUP BY `order`.user_name;
    
   