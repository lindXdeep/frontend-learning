-- 1. Найти потоки, количество учеников в которых больше или равно 40. 
-- В отчёт вывести номер потока, название курса и количество учеников.

SELECT 
  training_groups.number,
  (SELECT name FROM courses WHERE courses.id = training_groups.course_id) AS name_course,
  training_groups.students_amount
  FROM training_groups 
    WHERE students_amount >= 40;
  
-- 2. Найти два потока с самыми низкими оценками за успеваемость. 
-- В отчёт вывести номер потока, название курса, фамилию и имя преподавателя (одним столбцом), оценку успеваемости.

SELECT
  number,
  (SELECT name FROM courses WHERE courses.id = course_id) AS course_name,
  teachers,
  performance
    FROM (
      SELECT 
        (SELECT number FROM training_groups WHERE training_groups.id = stream_id) AS number,
        (SELECT course_id FROM training_groups WHERE training_groups.id = stream_id) AS course_id,
        (SELECT (name || ' ' || surname) FROM teachers WHERE teachers.id = teacher_id) AS teachers,
        performance 
          FROM achievements
      )
        ORDER BY performance ASC
        LIMIT 2;

-- 3. Найти среднюю успеваемость всех потоков преподавателя Николая Савельева. 
-- В отчёт вывести идентификатор преподавателя и среднюю оценку по потокам.

SELECT 
  teacher_id,
  AVG(performance) 
    FROM achievements
      WHERE 
        teacher_id = (SELECT id FROM teachers WHERE name = 'Николай' AND surname = 'Савельев');
    
-- 4. Найти потоки преподавателя Натальи Петровой а также потоки, по которым успеваемость ниже 4.8 
-- В отчёт вывести идентификатор потока, фамилию и имя преподавателя.

SELECT 
  stream_id,
  teacher 
    FROM(
      SELECT 
        (SELECT name || ' ' || surname FROM teachers WHERE teachers.id = achievements.teacher_id) AS teacher, 
        stream_id 
          FROM achievements
            WHERE performance < 4.8)
            ;


