-- 1. Создать на основе запросов, которые вы сделали в ДЗ к уроку 3, VIEW.

USE employees;

CREATE VIEW average_salary AS
SELECT 
  departments.dept_name AS department,
  AVG(salaries.salary) AS salary

  FROM dept_emp
    LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
    LEFT JOIN salaries ON dept_emp.emp_no = salaries.emp_no
  WHERE salaries.to_date > sysdate()
  GROUP BY department

  LIMIT 1000;

CREATE VIEW max_salary AS
SELECT
  CONCAT(employees.first_name, " ", employees.last_name) AS employee,
  MAX(salaries.salary) AS max_salary
    FROM employees
      JOIN salaries USING(emp_no)
    GROUP BY employee

  LIMIT 1000;

CREATE VIEW max_salary_name AS
SELECT 
  employees.emp_no AS number,
  CONCAT(employees.first_name, " ", employees.last_name) AS employee,
  MAX(salaries.salary) AS max_salary
    FROM employees
      JOIN salaries USING(emp_no)
    WHERE salaries.to_date > sysdate()
    GROUP BY employees.emp_no

  LIMIT 1000;

CREATE VIEW count_employees AS
SELECT 
  departments.dept_name AS department,
  COUNT (emp_no) AS number_of_employees
    FROM dept_emp
      JOIN departments USING (dept_no)
    WHERE dept_emp.to_date > sysdate()
    GROUP BY dept_no;

CREATE VIEW count_employees_in_dep AS
SELECT 
  departments.dept_name AS department,
  COUNT (emp_no) AS number_of_employees,
  SUM(salaries.salary) AS sum_salary
    FROM dept_emp
      JOIN departments USING (dept_no)
      JOIN salaries USING (emp_no)
    WHERE salaries.to_date > sysdate()
    GROUP BY dept_no;
