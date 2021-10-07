
-- Сформируйте запрос, который создает базу данных с именем test.

CREATE DATABASE test;

-- Создать таблицу cars с полями 
  -- id (integer), 
  -- name (character varying), 
  -- price (numeric) и 
  -- created_at (timestamp).

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
  id INTEGER,
  name CHARACTER VARYING,
  price NUMERIC,
  created_at TIMESTAMP
);

-- Выполните запрос, который создает таблицу cars с полями 
  -- id (primary key), 
  -- name (unique, not null), 
  -- price (без ограничений) и 
  -- created_at (not null). 
-- Типы столбцов нужно выбрать самостоятельно.

CREATE TABLE cars (
  id INTEGER PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  price NUMERIC,
  created_at TIMESTAMP NOT NULL
);