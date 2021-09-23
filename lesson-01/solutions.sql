USE billing_simple;
SHOW TABLES;

-- Solution 01

SELECT * FROM billing WHERE payer_email = 'vasya@mail.com';

--Sollution 02

DESCRIBE billing;

INSERT INTO `billing`(payer_email, recipient_email, sum, currency, billing_date, comment)
VALUES('pasha@mail.com', 'katya@mail.com', 300.00, 'EUR', '2016-02-14', 'Valentines day present)');

SELECT * FROM `billing_simple`.`billing` WHERE payer_email = 'pasha@mail.com';


