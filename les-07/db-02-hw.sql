-- ВОПРОСЫ НА ЗНАНИЕ SQL

create database dbinterview
use dbinterview


-- 1. Найдите компании, кол-во продаж которых превышают 3000.

CREATE TABLE sales(
  companyName VARCHAR(64), 
  sales INT
);

INSERT INTO sales
  VALUES ('Компания1', 1000),
         ('Компания2', 5000),
         ('Компания3', 2500),
         ('Компания4', 9000),
         ('Компания5', 4000),
         ('Компания6', 3000);

SELECT * FROM sales 
  WHERE sales > 3000;

-- 2. Исключите повторы из следующей таблицы (T1).

CREATE TABLE countries(
  country VARCHAR(64)
);

INSERT INTO countries
  VALUES ('Россия'),
         ('Украина'),
         ('Россия'),
         ('Украина'),
         ('США'),
         ('Россия');

SELECT DISTINCT(country) 
  FROM countries;

-- 3.  Укажите детали, в названии которых присутствуют символы «ABC».

CREATE TABLE parts(
  PartNbr VARCHAR(32)
)

INSERT INTO parts
  VALUES ('ABC-123 '),
         ('T1J'),
         ('G10'),
         ('999ABC'),
         ('FD-7'),
         ('QX');

SELECT * FROM parts
  WHERE PartNbr LIKE '%ABC%';

-- 4 Определите 3-х спортсменов с наилучшими результатами.

CREATE TABLE sportmens(
  firstName VARCHAR(64),
  finishTime REAL
);

INSERT INTO sportmens
  VALUES ('Олег', 9.5),
         ('Сергей', 12.2),
         ('Евгений', 15.0),
         ('Николай', 10.1),
         ('Павел', 9.9),
         ('Денис', 11.6);

SELECT * FROM sportmens
  ORDER BY finishTime DESC
    LIMIT 3;

-- 5. Найдите компанию, с наибольшим количеством продаж.
-- таблица из задания 1.

SELECT * FROM sales
  ORDER BY sales DESC
    LIMIT 1;

--  вторйо способ

SELECT max(sales) 
  FROM sales;

-- 6. Посчитайте среднее количество продаж по всем компаниям.
-- таблица из задания 1.

SELECT avg(sales) AS 'average salses'
  FROM sales;

-- 7. Найдите клиентов, у которых количество заказов больше 1.

CREATE TABLE clients(
  clientName VARCHAR(64),
  orderID INT
);

INSERT INTO clients
  VALUES('Олег', 101),
        ('Олег', 102),
        ('Евгений', 150),
        ('Николай', 205),
        ('Николай', 206),
        ('Денис', 310);

SELECT count(orderID) AS sum_orders 
  FROM clients
    GROUP BY clientName
      HAVING sum_orders > 1;

-- 8.  Найдите сотрудников, чья заработная плата превышает
--     среднее значение заработной платы среди всех сотрудников.

CREATE TABLE employees(
  firstName VARCHAR(64),
  salary INT
);

INSERT INTO employees
  VALUES('Олег', 20000),
        ('Сергей', 25000),
        ('Евгений', 15000),
        ('Николай', 30000),
        ('Павел', 40000),
        ('Денис', 50000);

SELECT 
  firstName,
  salary
  FROM employees
    WHERE salary > (SELECT avg(salary) average FROM employees);


-- 9. Выведите один общий список производителей (без повторений)
--    из двух таблиц.

CREATE TABLE vendors1(
  vendorId INT,
  vendorName VARCHAR(64)
);

CREATE TABLE vendors2(
  vendorId INT,
  vendorName VARCHAR(64)
);

INSERT INTO vendors1
  VALUES(1, 'Asus'),
        (2, 'Sony'),
        (3, 'Samsung'),
        (4, 'Acer'),
        (5, 'LG'),
        (6, 'HP');

INSERT INTO vendors2
  VALUES(1, 'Epson'),
        (2, 'HP'),
        (3, 'Canon'),
        (4, 'Xerox');


SELECT 
   DISTINCT(vendorName)
  FROM (
    SELECT * FROM vendors1
    UNION
    SELECT * FROM vendors2
  ) AS other_vendors;
    
-- 10 Выведите до 3-х человек с максимальными зарплатами в разрезе
--    каждого департамента. Вывести поля Department, Ename, Salary.

CREATE TABLE departments(
  department VARCHAR(64),
  ename VARCHAR(64),
  salary INT
)

INSERT INTO departments
  VALUES('A', 'Adams', 1000),
        ('A', 'Smith', 3000),
        ('A', 'Mayers', 900),
        ('A', 'Thomason', 1500),
        ('B', 'Robinson', 2000),
        ('B', 'Jason', 2100),
        ('B', 'Clark', 1400),
        ('B', 'Gibbson', 1100),
        ('B', 'Stark', 900);


SELECT 
  * 
  FROM (
    SELECT 
      department,
      ename,
      salary,
      row_number() OVER(PARTITION BY department ORDER BY salary DESC) AS row_n
      FROM departments
  ) AS dep
  WHERE dep.row_n <= 3;

-- 11. Есть список пользователей

CREATE TABLE users(
  firstName VARCHAR(64)
);

INSERT INTO users
  VALUES('Олег'),
        ('Сергей'),
        ('Евгений'),
        ('Николай'),
        ('Павел'),
        ('Денис');

-- Напишите запрос, добавляющий нумерацию 
-- по возрастанию имени пользователя, т.е:

SELECT 
  row_number() OVER(),
  firstName
  FROM users
    ORDER BY firstName;