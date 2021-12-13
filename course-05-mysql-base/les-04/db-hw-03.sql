-- Создать триггер, который 
-- при добавлении нового сотрудника
-- будет выплачивать ему вступительный бонус, 
-- занося запись в таблицу salary.

DROP TRIGGER IF EXISTS `employees`.`pay_bunus`;

DELIMITER $$

USE `employees`$$
 
CREATE DEFINER = CURRENT_USER     
  TRIGGER `employees`.`pay_bunus` 

  AFTER INSERT ON `employees`.`employees`
    FOR EACH ROW                  

    BEGIN

      DECLARE d_infinity_date DATE DEFAULT '9999-01-01';
      DECLARE bonus INT DEFAULT 1000;

      INSERT INTO employees.salaries
        VALUE(NEW.emp_no, bonus, current_date, d_infinity_date);
    
    END$$ 

DELIMITER ;

INSERT INTO employees.employees
  VALUES(1, '1980-01-01', 'John', 'Do', 'M', '2022-11-20');

SELECT * FROM employees
LIMIT 10;