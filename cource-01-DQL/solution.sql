-- Выберите из таблицы products поля name и new_price. Поле new_price вычисляется по формуле price + 1

SELECT name, (price + 1) AS new_price FROM products;

-- Выберите из таблицы goods все названия товаров, у которых категория products и цена от 3 до 5 включительно;

SELECT name FROM goods 
  WHERE category='products' 
  AND price BETWEEN 3 and 5;

-- Выберите из таблицы products все имена, которые начинаются с but;

SELECT name FROM products 
  WHERE name LIKE 'but%';

-- Выберите из таблицы goods все названия товаров из категории cars, отсортированных по уменьшению цены.

SELECT name FROM goods
  WHERE category='cars'
  ORDER BY price DESC;

-- Выберите из таблицы goods название самого дешевого товара;

SELECT name FROM goods 
  ORDER BY price LIMIT 1;

-- Выберите из таблицы goods все уникальные названия товаров, у которых категория cars;

SELECT DISTINCT name 
  FROM goods WHERE category='cars'

-- Выберите из таблицы goods названия категорий и количество товаров в этой категории. 
-- Выбираться должны только те группы у которых больше одного товара.

SELECT category, count(id)
  FROM goods 
  GROUP BY category HAVING count(id) > 1;

-- Выберите из таблиц goods и categories две записи состоящие из названия товаров (name) и имени категории (as category_name),
-- у которых price больше 2 и товары отсортированы по имени в обратном порядке. 
-- Выберите не более двух записей;

SELECT goods.name AS name, categories.name AS category_name 
  FROM goods JOIN categories
  ON goods.category_id = categories.id
  WHERE price > 2
  ORDER BY price DESC 
  LIMIT 2;

-- Выберите из таблицы goods все названия товаров, для которых не существует категории в таблице categories.

SELECT goods.name 
  FROM goods
  LEFT JOIN categories 
  ON goods.category_id = categories.id
  WHERE categories.id IS NULL;

-- Выберите из таблицы goods все названия товаров, которые находятся в опубликованных категориях (state = published);
SELECT name 
  FROM goods
  WHERE category_id IN (SELECT id FROM categories WHERE state='published');


