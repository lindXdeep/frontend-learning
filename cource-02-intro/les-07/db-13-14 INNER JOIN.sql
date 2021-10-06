USE shop;

SELECT * FROM product;

-- не эффективные способы получения информации
SELECT * FROM category WHERE id=1 or id=2 or id=3;
SELECT * FROM category WHERE id >= 1 and id <=3;
SELECT * FROM category WHERE id IN (1,2,3);


--inner join
SELECT * FROM `product`
  INNER JOIN `category` ON product.category_id = category.id;

-- +----+----------+-----------------+-------------+---------+----+-----------+----------+------------+
-- | id | brand_id | product_type_id | category_id | price   | id | name      | discount | alias_name |
-- +----+----------+-----------------+-------------+---------+----+-----------+----------+------------+
-- |  1 |        1 |               1 |           1 | 8999.00 |  1 | woman hat |       10 | dress      |
-- |  2 |        3 |               1 |           3 | 3999.00 |  3 | hat       |        2 | dress      |
-- |  8 |        1 |               2 |           1 | 7999.00 |  1 | woman hat |       10 | dress      |
-- |  9 |        2 |               1 |           3 | 6999.00 |  3 | hat       |        2 | dress      |
-- +----+----------+-----------------+-------------+---------+----+-----------+----------+------------+


-- для удобвтва мы можем выбрать нужные поля
SELECT product.id, price, name FROM `product`
  INNER JOIN `category` ON product.category_id = category.id;

-- +----+---------+-----------+
-- | id | price   | name      |
-- +----+---------+-----------+
-- |  1 | 8999.00 | woman hat |
-- |  2 | 3999.00 | hat       |
-- |  8 | 7999.00 | woman hat |
-- |  9 | 6999.00 | hat       |
-- +----+---------+-----------+


-- теперь можно применить фильрацию к обьедененым таблицам.
SELECT product.id, price, name FROM `product`
  INNER JOIN `category` ON product.category_id = category.id
    WHERE discount < 10;

-- +----+---------+------+
-- | id | price   | name |
-- +----+---------+------+
-- |  2 | 3999.00 | hat  |
-- |  9 | 6999.00 | hat  |
-- +----+---------+------+

--так же можно обьеденять любое количество таблиц
SELECT * FROM `product`
  INNER JOIN `category` ON product.category_id = category.id
  INNER JOIN brand ON brand.id = product.brand_id
  INNER JOIN type_of_product ON type_of_product.id = product.product_type_id; 

-- +----+----------+-----------------+-------------+---------+----+-----------+----------+------------+----+-------------+----+---------+
-- | id | brand_id | product_type_id | category_id | price   | id | name      | discount | alias_name | id | type        | id | type    |
-- +----+----------+-----------------+-------------+---------+----+-----------+----------+------------+----+-------------+----+---------+
-- |  1 |        1 |               1 |           1 | 8999.00 |  1 | woman hat |       10 | dress      |  1 | Mark O'Polo |  1 | shoes   |
-- |  2 |        3 |               1 |           3 | 3999.00 |  3 | hat       |        2 | dress      |  3 | GUESS       |  1 | shoes   |
-- |  9 |        2 |               1 |           3 | 6999.00 |  3 | hat       |        2 | dress      |  2 | ALCOTT      |  1 | shoes   |
-- |  8 |        1 |               2 |           1 | 7999.00 |  1 | woman hat |       10 | dress      |  1 | Mark O'Polo |  2 | T-shirt |
-- +----+----------+-----------------+-------------+---------+----+-----------+----------+------------+----+-------------+----+---------+

-- выкинем лишние столюцы
SELECT product.id, brand.type, type_of_product.type, category.name, product.price FROM `product`
  INNER JOIN `category` ON product.category_id = category.id
  INNER JOIN brand ON brand.id = product.brand_id
  INNER JOIN type_of_product ON type_of_product.id = product.product_type_id; я

-- +----+-------------+---------+-----------+---------+
-- | id | type        | type    | name      | price   |
-- +----+-------------+---------+-----------+---------+
-- |  1 | Mark O'Polo | shoes   | woman hat | 8999.00 |
-- |  2 | GUESS       | shoes   | hat       | 3999.00 |
-- |  9 | ALCOTT      | shoes   | hat       | 6999.00 |
-- |  8 | Mark O'Polo | T-shirt | woman hat | 7999.00 |
-- +----+-------------+---------+-----------+---------+
