SHOW DATABASES;
USE employees;
SHOW TABLES;

-- Триггер 1. Запрещает добавлять в отдел менеджера, если на текущий момент времени в отделе уже есть менеджер

-- Смотрим, есть ли сейчас проверка
SELECT * FROM dept_manager
  WHERE to_date > current_date
    ORDER BY dept_no
      LIMIT 3;

INSERT INTO dept_manager
  VALUES ('d001', 110000, current_date, '9999-01-01');

DELETE FROM dept_manager
  WHERE dept_no  = 'd001' AND emp_no = 110000;

-- Создаем триггер
DROP TRIGGER IF EXISTS employees.dept_manager_BEFORE_EXISTS;

-- триггер
DELIMITER $$

USE `employees`$$

CREATE DEFINER = CURRENT_USER
  TRIGGER `employees`.`employees.dept_manager_BEFORE_EXISTS`

  BEFORE INSERT ON `dept_manager`
    FOR EACH ROW

    BEGIN

      DECLARE d_actual_managers_count INT;

      SELECT count(*) 
        INTO d_actual_managers_count
        FROM dept_manager
          WHERE dept_no = NEW.dept_no 
            AND to_date > current_date;
      
      IF 
        d_actual_managers_count > 0
      THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'This department has a manager already';
      END IF;

    END$$

DELIMITER ;

-- Проверяем, как он сработает на некорректных данных
INSERT INTO dept_manager
  VALUES ('d001', 110000, current_date, '9999-01-01');

-- Проверяем, как он сработает на корректных данных
UPDATE dept_manager
   SET to_date = current_date-1
 WHERE dept_no = 'd001'
   AND emp_no = 110039;

INSERT INTO dept_manager
  VALUES ('d001', 110000, current_date, '9999-01-01');

-- Триггер 2 - увольнение сотрудника

DROP TRIGGER IF EXISTS `dept_emp_AFTER_UPDATE`;

DELIMITER $$

USE `employees`$$

CREATE DEFINER = CURRENT_USER
  TRIGGER `employees`.`dept_emp_AFTER_UPDATE`

  AFTER UPDATE ON `dept_emp`
    FOR EACH ROW
  
  BEGIN

    DECLARE d_infinity_date DATE DEFAULT '9999-01-01';

    IF  
      OLD.to_date = d_infinity_date
        AND
      NEW.to_date < d_infinity_date
    THEN
      
      UPDATE titles
         SET to_date = NEW.to_date
       WHERE emp_no = NEW.emp_no
         AND to_date = d_infinity_date;
      
      UPDATE salaries
         SET to_date = NEW.to_date
       WHERE emp_no = NEW.emp_no
         AND to_date = d_infinity_date;

      UPDATE dept_manager
         SET to_date = NEW.to_date
       WHERE emp_no = NEW.emp_no
         AND to_date = d_infinity_date;

    END IF;

  END$$

DELIMITER ;

-- Проверяем, как он сработает

UPDATE dept_emp 
  SET to_date = current_date 
    WHERE emp_no = 110022 AND to_date = '9999-01-01';

SELECT * FROM dept_emp 
  WHERE emp_no = 110022 
    ORDER BY from_date;
SELECT * FROM salaries 
  WHERE emp_no = 110022 
    ORDER BY from_date;
SELECT * FROM dept_manager 
  WHERE emp_no = 110022 
    ORDER BY from_date;