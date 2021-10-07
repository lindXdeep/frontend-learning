-- Создание схемы custom.
CREATE SCHEMA custom;

-- Создание последовательности serial в новой схеме.
CREATE SEQUENCE custom.serial;

-- Представления
-- Создайте новую view с названием cars_without_price. 
-- Вью должна быть основана на выборке из таблицы cars 
-- и должна содержать все поля этой таблицы за исключением price;
CREATE TABLE cars (
    id bigint PRIMARY KEY,
    name character varying UNIQUE NOT NULL,
    price numeric
);
INSERT INTO cars VALUES (1, 'nissan', 1.12);

CREATE VIEW cars_without_price 
  AS SELECt id, name FROM cars;