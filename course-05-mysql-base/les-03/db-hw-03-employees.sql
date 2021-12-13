-- 3. База данных employees: (во всех заданиях, кроме 5, ищем данные на текущий момент)

USE employees;

-- 4. Выбрать среднюю зарплату по каждому отделу.

SELECT 
  departments.dept_name AS department,
  AVG(salaries.salary) AS salary

  FROM dept_emp
    LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
    LEFT JOIN salaries ON dept_emp.emp_no = salaries.emp_no
  WHERE salaries.to_date > sysdate()
  GROUP BY department

  LIMIT 1000;

-- 5. Выбрать максимальную зарплату у каждого сотрудника (за всё время).

SELECT
  CONCAT(employees.first_name, " ", employees.last_name) AS employee,
  MAX(salaries.salary) AS max_salary
    FROM employees
      JOIN salaries USING(emp_no)
    GROUP BY employee

  LIMIT 1000;

-- 6. Вывести номер, фамилию и имя сотрудника с максимальной зарплатой.

SELECT 
  employees.emp_no AS number,
  CONCAT(employees.first_name, " ", employees.last_name) AS employee,
  MAX(salaries.salary) AS max_salary
    FROM employees
      JOIN salaries USING(emp_no)
    WHERE salaries.to_date > sysdate()
    GROUP BY employees.emp_no

  LIMIT 1000;

-- 7. Посчитать количество сотрудников в каждом отделе.

SELECT 
  departments.dept_name AS department,
  COUNT (emp_no) AS number_of_employees
    FROM dept_emp
      JOIN departments USING (dept_no)
    WHERE dept_emp.to_date > sysdate()
    GROUP BY dept_no;

-- 8. Найти количество сотрудников в отделах и посмотреть, сколько всего денег получает отдел.

SELECT 
  departments.dept_name AS department,
  COUNT (emp_no) AS number_of_employees,
  SUM(salaries.salary) AS sum_salary
    FROM dept_emp
      JOIN departments USING (dept_no)
      JOIN salaries USING (emp_no)
    WHERE salaries.to_date > sysdate()
    GROUP BY dept_no;
