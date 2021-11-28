SHOW DATABASES;
USE northwind;
SHOW TABLES;

SELECT *
  FROM customers;

CREATE TABLE tmp_customers AS
  SELECT * 
    FROM customers;

SELECT * FROM tmp_customers;

-- function 01

DROP PROCEDURE IF EXISTS fix_customers_region;

DELIMITER $$

CREATE PROCEDURE fix_customers_region() 
  
  BEGIN

    UPDATE tmp_customers
      SET region = 'unknown'
        WHERE region IS NULL;

  END$$
 
DELIMITER ;

CALL fix_customers_region();

SELECT *
  FROM tmp_customers
  LIMIT 3;


-- function 02 - скалярные функции

DROP FUNCTION IF EXISTS get_total_number;

DELIMITER $$

CREATE FUNCTION get_total_number()
  RETURNS BIGINT

READS SQL DATA

  BEGIN

    RETURN (
        SELECT sum(units_in_stock)
          FROM products
      );

  END$$

DELIMITER ;

-- function 03 - функции с аргументами

DROP FUNCTION IF EXISTS get_product_price;

DELIMITER $$

CREATE FUNCTION get_product_price(prod_name VARCHAR(64))
  RETURNS REAL

READS SQL DATA

  BEGIN

    RETURN (
      SELECT unit_price 
        FROM products
          WHERE product_name = prod_name
    );

  END$$

DELIMITER ;

SELECT get_product_price('Chocolade') AS price;

-- function 04 - процедуры с двумя OUT аргументами

DROP PROCEDURE IF EXISTS get_price_boundaries;

DELIMITER $$

CREATE PROCEDURE get_price_boundaries(
                        OUT max_price REAL, 
                        OUT min_price REAL
                    )
BEGIN

  SELECT 
    max(unit_price) INTO max_price
      FROM products;

  SELECT
    min(unit_price) INTO min_price
      FROM products;

END$$

DELIMITER ; 

CALL get_price_boundaries(@max, @min);

SELECT @max, @min;

-- function 05 - процедуры с аргументами IN OUT OUT

DROP PROCEDURE IF EXISTS get_price_boundaries_by_discontinued;

DELIMITER $$

CREATE PROCEDURE get_price_boundaries_by_discontinued(
                        IN is_discountinued INT,
                        OUT max_price REAL, 
                        OUT min_price REAL
                    )
BEGIN

  SELECT 
    max(unit_price) INTO max_price
      FROM products
        WHERE discontinued = is_discountinued;

  SELECT
    min(unit_price) INTO min_price
      FROM products
        WHERE discontinued = is_discountinued;

END$$

DELIMITER ; 

CALL get_price_boundaries_by_discontinued(1, @max, @min);


-- function 06 - DECLARE - декларация переменных

DROP FUNCTION IF EXISTS get_square;

DELIMITER $$

CREATE FUNCTION get_square(
                  ab REAL,
                  bc REAL,
                  ac REAL
                )
RETURNS REAL DETERMINISTIC

  BEGIN

    DECLARE 
      perimeter REAL;

    SELECT (ab + bc + ac) / 2 
      INTO perimeter;

    RETURN sqrt(perimeter * (perimeter - ab) * (perimeter - bc) * (perimeter -ac));

  END$$

DELIMITER ;

SELECT get_square(6,6,6);


-- function 07 - calc middle price

DROP PROCEDURE IF EXISTS calc_middle_price;

DELIMITER $$

CREATE PROCEDURE calc_middle_price()

  BEGIN

    DECLARE
      avg_price,
      low_price,
      max_price 
        REAL;

    SELECT avg(unit_price)
      INTO avg_price
        FROM products;

    SELECT avg_price * 0.75
      INTO low_price;

    SELECT avg_price * 1.25
      INTO max_price;

      SELECT * 
        FROM products
        WHERE unit_price 
          BETWEEN low_price AND max_price
          LIMIT 5;

  END$$

DELIMITER ;


-- function 08 - IF ELSE

DROP FUNCTION IF EXISTS convert_temp_to;

DELIMITER $$

CREATE FUNCTION convert_temp_to(
                    temperature REAL,
                    to_celsius BOOL)
RETURNS REAL DETERMINISTIC

BEGIN

  DECLARE
    result_temp REAL;

  IF 
    to_celsius 
  THEN
    SET result_temp =  (5.0/9.0) * (temperature - 32);
  ELSE
    SET result_temp = (9 * temperature + (32*5)) / 5.0;
  END IF;

  RETURN result_temp;

END$$

DELIMITER ;

-- function 09 - WHILE LOOP

DROP FUNCTION IF EXISTS fib;

DELIMITER $$

CREATE FUNCTION fib(n INT)
  RETURNS INT DETERMINISTIC

BEGIN

  DECLARE c INT DEFAULT 0;
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;

  DECLARE tmp INT;

  IF
    n < 1 
  THEN
    RETURN 0;
  END IF;

  WHILE 
      j <= n
    DO
      SET tmp = c + i;
      SET c = i;
      SET i = tmp;
      SET j = j + 1;
  END WHILE;

  RETURN c;

END$$

DELIMITER ;

-- function 10 - REPEAT


DROP FUNCTION IF EXISTS fib;

DELIMITER $$

CREATE FUNCTION fib(n INT)
  RETURNS INT DETERMINISTIC

BEGIN

  DECLARE c INT DEFAULT 0;
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;

  DECLARE tmp INT;

  IF
    n < 1 
  THEN
    RETURN 0;
  END IF;

  REPEAT

    SET tmp = c + i;
    SET c = i;
    SET i = tmp;
    SET j = j + 1;

    UNTIL j = n - 1
  END REPEAT;

  RETURN c;

END$$

DELIMITER ;


-- function 11 - LOOP

DROP FUNCTION IF EXISTS fib;

DELIMITER $$

CREATE FUNCTION fib(n INT)
  RETURNS INT DETERMINISTIC

BEGIN

  DECLARE c INT DEFAULT 0;
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;

  DECLARE tmp INT;

  IF
    n < 1 
  THEN
    RETURN 0;
  END IF;

  label1: LOOP

    IF 
      j = n - 1
    THEN
      LEAVE label1;
    END IF;

    SET tmp = c + i;
    SET c = i;
    SET i = tmp;
    SET j = j + 1;
  END LOOP;

  RETURN c;

END$$

DELIMITER ;