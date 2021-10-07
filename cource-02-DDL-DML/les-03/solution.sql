
-- `SEQUENCE`

DROP TABLE IF EXISTS products;

CREATE SEQUENCE serial;
\d serial

SELECT nextval('serial');

CREATE TABLE products (
  products_no INTEGER DEFAULT nextval('serial'),
  name CHARACTER VARYING,
  price NUMERIC DEFAULT 3.6
);

INSERT INTO products (name)
  VALUES('book');

SELECT * FROM products;

-- `SERIAL`

CREATE TABLE products (
  products_no SERIAL PRIMARY KEY,
  name CHARACTER VARYING,
  price NUMERIC DEFAULT 3.6
);

-- Создайте таблицу cars. Сделайте поле 
--  id типа SERIAL, 
--  текстовое поле name и 
--  поле price типа numeric. У поля price установите значение по умолчанию, равное 1.22.

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
  id SERIAL PRIMARY KEY,
  name CHARACTER VARYING,
  price NUMERIC DEFAULT 1.22
);
