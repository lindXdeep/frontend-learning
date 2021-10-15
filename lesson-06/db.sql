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