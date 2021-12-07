-- 1. ​Найдите общее количество учеников для каждого курса. 
--    В отчёт выведите название курса и количество учеников по всем потокам курса. 
--    Решите задание с применением оконных функций.

SELECT DISTINCT
  courses.name,
  SUM(tg.students_amount) OVER(PARTITION BY courses.name) AS students_amount
  FROM courses
    LEFT JOIN training_groups tg 
      ON tg.course_id = courses.id;

-- 2. ​Найдите среднюю оценку по всем потокам для всех учителей. 
--    В отчёт выведите идентификатор, фамилию и имя учителя, среднюю оценку по всем проведённым потокам. 
--    Учителя, у которых не было потоков, также должны попасть в выборку. 
--    Решите задание с применением оконных функций.

SELECT DISTINCT
  t.id,
  t.name || ' ' || t.surname AS teacher,
  AVG(ach.performance) OVER(PARTITION BY t.id) AS avg_performance
    FROM teachers t
      LEFT JOIN achievements ach
        ON ach.teacher_id = t.id; 

-- 3. ​Какие индексы надо создать для максимально быстрого выполнения представленного запроса?

SELECT
  t.surname,
  t.name,
  tg.number,
  ach.performance
    FROM achievements ach
      JOIN teachers t
        ON ach.teacher_id = t.id
      JOIN training_groups tg
        ON ach.stream_id = tg.id
    WHERE tg.number >= 200;    

CREATE INDEX training_groups_idx 
  ON training_groups(number);

