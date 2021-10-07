USE `shop`;

SELECT * FROM `category`;

SELECT * FROM `category` WHERE id = 3;

SELECT * FROM `category` WHERE discount <> 0;
SELECT * FROM `category` WHERE discount > 5;

SELECT * FROM `category` WHERE (discount > 5) AND (discount < 15);
SELECT * FROM `category` WHERE (discount < 5) OR (discount >= 10);
SELECT * FROM `category` WHERE NOT (discount < 5);

SELECT * FROM `category` WHERE alias_name IS NOT NULL;
SELECT * FROM `category` WHERE alias_name IS NULL;

--уникальные значения по определенному значению колонки
SELECT DISTINCT discount FROM `category`;

--сортировка по возрастанию
SELECT * FROM `category` ORDER BY discount;

--сортировка по убыванию
SELECT * FROM `category` ORDER BY discount DESC;

--группировка значений
SELECT * FROM `category` WHERE discount <> 0 ORDER BY discount DESC;

--ограмничение вывода данных
SELECT * FROM `category` LIMIT 2;
SELECT * FROM `category` WHERE discount <> 0 LIMIT 2;
