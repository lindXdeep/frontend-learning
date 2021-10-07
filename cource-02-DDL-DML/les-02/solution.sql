
-- Добавьте в таблицу cars две записи: (1, nissan, 1.12) и (10, kia, null).

CREATE TABLE cars (
    id integer PRIMARY KEY,
    name character varying UNIQUE NOT NULL,
    price numeric
);

INSERT INTO cars (id, name, price)
  VALUES (1, 'nissan', 1.12), 
         (10, 'kia', null);
  
-- Увеличьте прайс в два раза для записи с именем nissan.
-- Установите имя в bmw для записи с id равным 10.

DROP TABLE IF EXISTS "cars";

CREATE TABLE cars (
    id integer PRIMARY KEY,
    name character varying UNIQUE NOT NULL,
    price numeric
);

INSERT INTO cars VALUES (1, 'nissan', 1.12);
INSERT INTO cars (id, name) VALUES (10, 'kia');

UPDATE cars
  SET price = price * 2
    WHERE name = 'nissan';

UPDATE cars
  SET name = 'bmw'
    WHERE id = 10;