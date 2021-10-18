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

-- Вариант 1
--  SELECT t.name,
--         t.surname,
--         a.MIN_grade,
--         cMIN.name as MIN_name,
--         a.MAX_grade,
--         cMAX.name as MAX_name,
--         a.next_start_date


--    from (SELECT ac.teacher_id,
--                 MIN(ac.grade) as MIN_grade,
--                 MAX(ac.grade) as MAX_grade,
--                 MIN(CASE 
--                       when tg.started_at > current_timestamp then tg.started_at
--                       else null
--                     end) next_start_date
--          from achievements ac
--          JOIN training_groups tg
--            ON tg.id = ac.stream_id
--          group by ac.teacher_id) a
   
--    JOIN teachers t
--      ON t.id = a.teacher_id
--    JOIN achievements aMIN
--      ON aMIN.teacher_id = a.teacher_id
--    and aMIN.grade = a.MIN_grade
--    JOIN training_groups tgMIN
--      ON tgMIN.id = aMIN.stream_id
--    JOIN courses cMIN
--      ON cMIN.id = tgMIN.course_id
--    JOIN achievements aMAX
--      ON aMAX.teacher_id = a.teacher_id
--    and aMAX.grade = a.MAX_grade
--    JOIN training_groups tgMAX
--      ON tgMAX.id = aMAX.stream_id
--    JOIN courses cMAX
--      ON cMAX.id = tgMAX.course_id;



-- Вариант 2
-- SELECT  teachers.id,
--         teachers.name,
--         teachers.surname,
--         MIN(aa.performance) AS MIN_pefomance,
--         MIN1.name,
--         MIN1.start_date,
--         MAX(aa.performance) AS MAX_pefomance
--         MAX1.name,
--         MAX1.start_date
--   FROM teachers
--   LEFT JOIN academic_performance as aa
--       ON teachers.id = aa.teacher_id
--   LEFT JOIN (SELECT MIN(a1.perfomance) as MIN_per,b1.id,
--                     m_cs.name,
--                     m_gr.start_date
--                from academic_perfomance as a1
--               inner JOIN teachers as b1   ON b1.id=a1.teacher_id
--               inner JOIN training_groups m_gr   ON a1.stream_id = m_gr.id
--               inner JOIN courses m_cs   ON m_gr.course_id = m_cs.id
--               group by b1.id) as MIN1
--            ON MIN1.id=teachers.id
--   LEFT JOIN (SELECT MAX(a1.perfomance) as MAX_per,b1.id,
--                   m_cs.name,
--                   m_gr.start_date
--              from academic_perfomance as a1
--             inner JOIN teachers as b1   ON b1.id=a1.teacher_id
--             inner JOIN training_groups m_gr   ON a1.stream_id = m_gr.id
--             inner JOIN courses m_cs   ON m_gr.course_id = m_cs.id
--             group by b1.id) as MAX1
--            ON MAX1.id=teachers.id
-- where MIN1.start_date>date('now') and MAX.start_date>date('now')
-- GROUP BY aa.teacher_id;
