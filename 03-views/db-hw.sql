-- 1. Создать представление, которое выводит следующие колонки:
-- order_date, required_date, shipped_date, ship_postal_code, 
-- company_name, contact_name, phone, 
-- last_name, first_name, title 
-- из таблиц orders, customers и employees.

CREATE VIEW order_customers AS

SELECT
  order_date, required_date, shipped_date, ship_postal_code, 
  company_name, contact_name, phone, 
  last_name, first_name, title 
    FROM orders
    JOIN customers USING(customer_id)
    JOIN employees USING(employee_id);

-- Сделать select к созданному представлению, 
-- выведя все записи, где order_date больше 1го января 1997 года.

SELECT * 
  FROM order_customers
    WHERE order_date > '1997-01-01'
      ORDER BY order_date ASC;

-- 2. Создать представление, которое выводит следующие колонки:
-- order_date, required_date, shipped_date, ship_postal_code, ship_country, 
-- company_name, contact_name, phone, last_name, first_name, title 
-- из таблиц orders, customers, employees.

CREATE VIEW order_customers_2 AS

SELECT
  order_date, required_date, shipped_date, ship_postal_code, ship_country, 
  company_name, contact_name, phone, 
  last_name, first_name, title 
    FROM orders
    JOIN customers USING(customer_id)
    JOIN employees USING(employee_id);

-- Попробовать добавить к представлению (после его создания) 
-- колонки ship_country, postal_code и reports_to. 
-- Убедиться, что проихсодит ошибка. 
-- Переименовать представление и создать новое уже с дополнительными колонками.

ALTER VIEW order_customers_2
  RENAME TO order_customers_date;


-- Сделать к нему запрос, выбрав все записи, отсортировав их по ship_county.

-- Удалить переименованное представление.

-- 3.  Создать представление "активных" (discontinued = 0) продуктов, содержащее все колонки. Представление должно быть защищено от вставки записей, в которых discontinued = 1.

-- Попробовать сделать вставку записи с полем discontinued = 1 - убедиться, что не проходит.