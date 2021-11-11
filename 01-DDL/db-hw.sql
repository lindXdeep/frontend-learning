USE universities;

-- 1. Создать таблицу teacher с полями 
-- teacher_id serial, first_name varchar, last_name varchar, birthday date, phone varchar, title varchar

CREATE TABLE teacher(
  teacher_id SERIAL,
  first_name VARCHAR(32),
  birthday DATE,
  phone VARCHAR(32),
  title VARCHAR(32)
);

-- 2. Добавить в таблицу после создания колонку middle_name varchar

ALTER TABLE teacher
  ADD COLUMN middle_name VARCHAR(32);

-- 3. Удалить колонку middle_name

ALTER TABLE teacher
  DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date

ALTER TABLE teacher
  RENAME COLUMN birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)

ALTER TABLE `teacher`
  MODIFY phone VARCHAR(32);

-- 6. Создать таблицу exam с полями exam_id serial, exam_name varchar(256), exam_date date

CREATE TABLE exam(
  exam_id SERIAL,
  exam_name VARCHAR(32),
  exam_date DATE
);

-- 7. Вставить три любых записи с автогенерацией идентификатора

INSERT INTO exam(exam_name, exam_date)
  VALUES('first',  '2021-01-11'),
        ('second', '2021-02-11'),
        ('three', '2021-03-11');

-- 8. Посредством полной выборки убедиться, 
-- что данные были вставлены нормально и идентификаторы были сгенерированы с инкрементом

DESCRIBE exam;
SELECT * FROM exam;

-- 9. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние

TRUNCATE exam;
-- TRUNCATE exam RESTART IDENTITY;