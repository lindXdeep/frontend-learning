-- 1. Покажите информацию по потокам. 
-- В отчет выведите номер потока, название курса и дату начала занятий.

SELECT 
  training_groups.number,
  courses.name,
  training_groups.started_at
    FROM training_groups
      INNER JOIN courses ON training_groups.course_id = courses.id;

-- 2. Найдите общее количество учеников для каждого курса. 
-- В отчёт выведите название курса и количество учеников по всем потокам курса.

SELECT 
  courses.name,
  SUM(training_groups.students_amount) AS students_amount
    FROM courses
      JOIN training_groups
        ON courses.id = training_groups.course_id
          GROUP BY courses.name;
       
       