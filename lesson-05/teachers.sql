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



SELECT (name || ' ' || surname) AS teacher FROM teachers;

SELECT 
  stream_id,
  (SELECT (name || ' ' || surname) FROM teachers WHERE teachers.id = achievements.teacher_id) AS teacher,
  achievements.performance
    FROM achievements

--

SELECT 
  training_groups.number,

  (SELECT name FROM courses WHERE courses.id = training_groups.course_id) AS course_name
    FROM training_groups;

--

SELECT 
teacher,
performance

 FROM 

(
  SELECT 
    stream_id,
    (SELECT (name || ' ' || surname) FROM teachers WHERE teachers.id = achievements.teacher_id) AS teacher,
    achievements.performance
      FROM achievements
)



-- 3. Найти среднюю успеваемость всех потоков преподавателя Николая Савельева. 
-- В отчёт вывести идентификатор преподавателя и среднюю оценку по потокам.

(
  SELECT 
    (SELECT (name || ' ' || surname) FROM teachers WHERE teachers.id = achievements.teacher_id) AS teacher,
    AVG(performance) 
      FROM achievements 
        GROUP BY teacher_id;
)

-- 4. Найти потоки преподавателя Натальи Петровой а также потоки, по которым успеваемость ниже 4.8. 
-- В отчёт вывести идентификатор потока, фамилию и имя преподавателя.







