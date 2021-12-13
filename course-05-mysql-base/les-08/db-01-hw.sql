
-- 1. Создайте в PostgreSQL собственный тип данных 
--    и таблицу продажи автомобилей.

CREATE TYPE owners AS(
  firstName VARCHAR(255),
  lastName  VARCHAR(255),
  patroName VARCHAR(255)
);

CREATE TYPE car AS(
  brand VARCHAR(255),
  model VARCHAR(255),
  issue DATE,
  owners owners[]
);

CREATE TABLE sales(
  cars car NOT NULL,
  cost NUMERIC 
);

-- 2. Нужно сдать скрипты создания 
--    типа и таблицы и заполнения таблицы данными

INSERT INTO sales
  VALUES 
    (
      ROW('BMV', 
          'A5', 
          '2001-01-06', 
          ARRAY[ 
                ROW('Bob', 'Johson','sadf')::owners
              ]
          ),
      432.123
    );

SELECT * FROM sales;