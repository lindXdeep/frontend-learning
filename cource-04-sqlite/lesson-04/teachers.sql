--1. Преобразовать дату начала потока к виду год-месяц-день.
SELECT SUBSTR(started_at, 7, 4) || '-' || SUBSTR(started_at, 4, 2) || '-' || SUBSTR(started_at, 1, 2)
  FROM training_groups;

UPDATE training_groups 
  SET started_at = SUBSTR(started_at, 7, 4) || '-' || SUBSTR(started_at, 4, 2) || '-' || SUBSTR(started_at, 1, 2);

-- 2. Получить идентификатор и номер потока, который запланирован на самую позднюю дату.
SELECT id, number 
  FROM training_groups ORDER BY started_at DESC LIMIT 1;

-- 3. Показать уникальные значения года дат начала потоков обучения
SELECT DISTINCT SUBSTR(started_at, 7, 4) AS started_at 
  FROM training_groups;

-- 4. Найти количество преподавателей в базе данных. Вывести искомое значение в столбец с именем `total_teachers`.
SELECT COUNT(*) AS total_teachers 
  FROM teachers;

-- 5. Показать даты начала двух последних по времени потоков.
SELECT started_at 
  FROM training_groups ORDER BY started_at DESC LIMIT 2;

-- 6. Найти среднюю успеваемости учеников по потоку преподавателя с идентификатором равным `1`.
SELECT AVG(performance) AS average_performance 
  FROM achievements
  WHERE teacher_id = 1;