-- Создать функцию, которая найдет менеджера по имени и фамилии.

DROP FUNCTION IF EXISTS get_manager_by_name;

USE employees;

DELIMITER $$

CREATE FUNCTION get_manager_by_name (mngr_name VARCHAR(64))
  RETURNS INT
READS SQL DATA

BEGIN

  DECLARE mgr_no INT;
  DECLARE f_name VARCHAR(32);
  DECLARE l_name VARCHAR(32);

  SELECT SUBSTRING_INDEX(mngr_name,' ',1) INTO f_name;
  SELECT SUBSTRING_INDEX(mngr_name,' ',-1) INTO l_name;
       
     SELECT m.emp_no
       INTO mgr_no
       FROM employees e
       JOIN dept_manager m
         ON m.emp_no = e.emp_no
      WHERE e.first_name = f_name
        AND e.last_name = l_name;

  RETURN mgr_no;

END$$

DELIMITER ;

SELECT get_manager_by_name ('Georgi Facello');


