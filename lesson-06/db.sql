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

-- 3. Для всех учителей найдите среднюю оценку по всем проведённым потокам. 
-- В отчёт выведите идентификатор, фамилию и имя учителя, среднюю оценку по всем проведенным потокам. 
-- Важно чтобы учителя, у которых не было потоков, также попали в выборку.

SELECT 
  teachers.id,
  teachers.name || ' ' || teachers.surname AS teacher,
  AVG(achievements.performance) AS amount
    FROM teachers
      LEFT JOIN achievements
        ON teachers.id = achievements.teacher_id
          GROUP BY teacher;

-- 4. Дополнительное задание. 
-- Для каждого преподавателя выведите: 
--    имя, фамилию, 
--    минимальное значение успеваемости по всем потокам преподавателя, 
--    название курса, который соответствует потоку с минимальным значением успеваемости, 
--    максимальное значение успеваемости по всем потокам преподавателя, 
--    название курса, соответствующий потоку с максимальным значением успеваемости, 
--    дату начала следующего потока.


SELECT
  teachers.name || ' ' || teachers.surname AS teacher,
  MIN(achievements.performance) AS min_course,
  courses.name,
  MAX(achievements.performance) AS max,
  
  -- тут я не совсем понял как добавить названия курсов соответствующий потоку с максимальным значением успеваемости, 
  -- видимо тут должно быть что то типа вложенного запроса ?

  -- (SELECT courses.name FROM courses WHERE courses.id = training_groups.course_id) AS max_course,

  training_groups.started_at
    FROM achievements
      LEFT JOIN teachers
        ON teachers.id = achievements.teacher_id
      JOIN training_groups
        ON training_groups.id = achievements.stream_id
      JOIN courses
        ON courses.id = training_groups.course_id
GROUP BY teacher;


