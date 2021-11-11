
-- 1. Создать таблицу exam

DROP TABLE IF EXISTS exam;

CREATE TABLE IF NOT EXISTS exam( 
  id INT UNIQUE AUTO_INCREMENT NOT NULL,
  name VARCHAR(128),
  date DATE
);

-- 2. Удалить ограничение уникальности с поля идентификатора

ALTER TABLE exam
  MODIFY id INT NOT NULL;

ALTER TABLE exam
  DROP INDEX id;

DESC exam;
SHOW CREATE TABLE exam;

-- 3. Добавить ограничение первичного ключа на поле идентификатора

ALTER TABLE exam
  ADD CONSTRAINT PRIMARY KEY(id);

-- 4. Создать таблицу person с полями

CREATE TABLE IF NOT EXISTS person (
  id      INT PRIMARY KEY,
  name    VARCHAR(64),
  surname VARCHAR(64)
);

-- 5. Создать таблицу паспорта с полями

CREATE TABLE IF NOT EXISTS pasport(
  id           INT PRIMARY KEY,
  serial       INT NOT NULL,
  registration VARCHAR(256),
  person_id    INT NOT NULL,

  CONSTRAINT fk_pasport_person_id 
    FOREIGN KEY(person_id) 
      REFERENCES person(id)
)

-- 6. Добавить колонку веса в таблицу book (создавали ранее) с ограничением, проверяющим вес (больше 0 но меньше 100)

ALTER TABLE book
  ADD COLUMN weight INT
    CONSTRAINT CHK_weigth CHECK (weight BETWEEN 0 AND 100);

-- 7. Убедиться в том, что ограничение на вес работает (попробуйте вставить невалидное значение)

INSERT INTO book(title, isbn, weight)
  VALUES ('title', 'isbn', 101);

-- 8. Создать таблицу student с полями

CREATE TABLE student(
  id SERIAL,
  full_name VARCHAR(64),
  course INT DEFAULT 1
);

-- 9. Вставить запись в таблицу студентов 
INSERT INTO student(full_name)
  VALUE('name');

-- и убедиться, что ограничение на вставку значения по умолчанию работает
SELECT * FROM student;

-- 10. Удалить ограничение "по умолчанию" из таблицы студентов

ALTER TABLE student
  ALTER COLUMN course
    DROP DEFAULT;