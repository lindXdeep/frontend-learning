USE billing_simple;

SHOW TABLES;

-- Solution 01

SELECT * FROM billing 
  WHERE payer_email = 'vasya@mail.com';

-- Solution 02

INSERT INTO `billing`(payer_email, recipient_email, sum, currency, billing_date, comment)
  VALUES('pasha@mail.com', 'katya@mail.com', 300.00, 'EUR', '2016-02-14', 'Valentines day present)');

SELECT * FROM `billing_simple`.`billing` 
  WHERE payer_email = 'pasha@mail.com';

-- Solution 03

UPDATE billing 
 SET payer_email='igor@mail.com' WHERE payer_email='alex@mail.com';

-- Solution 04

DELETE FROM billing
  WHERE payer_email='' OR recipient_email='' OR payer_email IS NULL OR recipient_email IS NULL;

-- Solution 05

SELECT COUNT(*) FROM project;

-- Solution 06

SELECT category, COUNT(*) AS sum_goods
  FROM `store_simple`.`store`
  GROUP BY category;

-- solution 07 

SELECT `category`, SUM(price * sold_num) AS sums 
    FROM `store_simple`.`store`
    GROUP BY `category`
    ORDER BY sums DESC
    LIMIT 5;

-- solution 08

SHOW DATABASES;
USE `project_simple`;
SHOW TABLES;
DESCRIBE `project_simple`.`project`;

SELECT * FROM `project_simple`.`project`;

SELECT
  COUNT(project_name) AS projects,
  SUM(budget) AS budgets,
  AVG(DATEDIFF (project_finish,project_start)) AS days
  FROM `project_simple`.`project` ;