
-- 1. Покажите информацию по потокам. В отчет выведите номер потока, название курса и дату начала занятий.
SELECT
  training_groups.number,
  courses.name,
  training_groups.started_at
    FROM training_groups
      INNER JOIN courses
        ON training_groups.course_id = courses.id;


  
