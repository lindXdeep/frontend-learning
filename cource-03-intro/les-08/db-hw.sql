USE shop;

INSERT INTO order_products (order_id, product_id, `count`) 
  VALUES (2, 3, 2);

INSERT INTO order_products (order_id, product_id, `count`) 
  VALUES (2, 4, 3);

SELECT * FROM shop.`order`;

SELECT sum(price * `count`) AS total_price FROM `order` 
	INNER JOIN order_products ON order_products.order_id = `order`.id
    INNER JOIN product ON product.id = order_products.product_id
    WHERE `order`.id = 2;