SHOW DATABASES;
USE employees;

-- Объявим процедуру с выходным параметром.
DELIMITER //

  CREATE PROCEDURE simpleproc (OUT param1 INT)
  BEGIN
    SELECT count(*)
      INTO param1
      FROM t;
  END//

DELIMITER ;


-- Пример вызова процедуры
CALL simpleproc(@a);

SELECT @a;

DROP FUNCTION employees.hello;

CREATE FUNCTION employees.hello ( s CHAR(20))
  RETURNS CHAR(50) DETERMINISTIC
  RETURN concat('Hello', s , '!');

SELECT hello('world');

-- Создаем процедуру
USE employees;
DROP PROCEDURE IF EXISTS p_add_new_employee;

DELIMITER $$

USE employees$$

CREATE PROCEDURE p_add_new_employee (
                    IN p_first_name VARCHAR(14),
                    IN p_last_name VARCHAR(16),
                    IN p_gender ENUM('M','F'),
                    IN p_birth_date DATE,
                    IN p_dept_no CHAR(4),
                    IN p_title VARCHAR(50),
                    OUT po_emp_no INT
                  )
  BEGIN

    DECLARE d_from_date DATE DEFAULT CURRENT_DATE;
    DECLARE d_to_date   DATE DEFAULT date('9999-01-01');

    SELECT max(emp_no)+1 INTO po_emp_no 
      FROM employees;
    
    INSERT INTO employees (emp_no, hire_date, first_name, last_name, gender, birth_date) 
      VALUES (po_emp_no, d_from_date, p_first_name, p_last_name, p_gender, p_birth_date);

    INSERT INTO dept_emp 
      VALUES (po_emp_no, p_dept_no, d_from_date, d_to_date);

    INSERT INTO titles 
      VALUES (po_emp_no, p_title, d_from_date, d_to_date);

  END$$

DELIMITER ;

-- Вызываем процедуру
CALL employees.p_add_new_employee('Анна', 'Павлова', 'F', '1990-01-01', 'd003', 'Engineer', @po_emp_no);

SELECT @po_emp_no;

-- Функция поиска менеджера отдела
USE `employees`;

DROP function IF EXISTS `f_get_dept_manager`;

DELIMITER $$

USE `employees`$$

CREATE FUNCTION `f_get_dept_manager` (p_dept_no CHAR(4))
  RETURNS varchar(31)

  BEGIN
    DECLARE d_full_name VARCHAR (31);

    SELECT concat(last_name,' ',first_name) 
      INTO d_full_name
	      FROM dept_manager d
	  JOIN employees e ON e.emp_no = d.emp_no
	    WHERE d.to_date > current_timestamp AND d.dept_no = p_dept_no;

  	RETURN d_full_name;
  END$$

DELIMITER ;

-- Вызываем функцию

SELECT f_get_dept_manager('d004');

SELECT dept_no, f_get_dept_manager(dept_no) FROM departments;

