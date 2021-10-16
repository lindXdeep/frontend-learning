-- 1. Создайте представление, которое для каждого курса выводит 
--    название, номер последнего потока, дату начала обучения последнего потока 
--    и среднюю успеваемость курса по всем потокам.

CREATE VIEW courses_performance AS

SELECT 
  courses.name,
  training_groups.number,
  training_groups.started_at,
  AVG(achievements.performance) AS average_performance

FROM training_groups
  JOIN courses
    ON courses.id  = training_groups.course_id
  JOIN achievements
    ON achievements.stream_id = training_groups.id
  GROUP BY courses.name;

SELECT
  name, number, started_at, average_performance
    FROM courses_performance;

-- 2. Удалите из базы данных всю информацию, 
--    которая относится к преподавателю с идентификатором, равным 3. Используйте транзакцию.



-- 3. Создайте триггер для таблицы успеваемости, 
--    который проверяет значение успеваемости на соответствие диапазону чисел от 0 до 5 включительно.



-- 4. Дополнительное задание. 
--    Создайте триггер для таблицы потоков, который проверяет, что дата начала потока больше текущей даты, 
--    а номер потока имеет наибольшее значение среди существующих номеров. 
--    При невыполнении условий необходимо вызвать ошибку с информативным сообщением.