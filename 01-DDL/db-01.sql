SHOW DATABASES;
CREATE DATABASE universities;
USE universities;
SHOW TABLES;

CREATE TABLE students (
  student_id SERIAL,
  first_name VARCHAR(32),
  last_name  VARCHAR(32),
  birthday   DATETIME,
  phone      VARCHAR(32)
);

CREATE TABLE cathedra(
  cathedra      SERIAL,
  cathedra_name VARCHAR(32),
  dekan         VARCHAR(32)
);  

ALTER TABLE students
  ADD COLUMN middle_name VARCHAR(32);

ALTER TABLE students
  ADD COLUMN rating FLOAT;

ALTER TABLE students
  ADD COLUMN enrolled DATE;

ALTER TABLE students
  DROP COLUMN middle_name;

ALTER TABLE `cathedra`
  RENAME TO chair;

ALTER TABLE chair
  RENAME COLUMN `cathedra` TO chair_id;

ALTER TABLE chair
  RENAME COLUMN cathedra_name TO chair_name;

ALTER TABLE students
  MODIFY first_name VARCHAR(64);

ALTER TABLE students
  CHANGE last_name 
    last_name VARCHAR(64);

ALTER TABLE students
  CHANGE phone
    phone VARCHAR(30);

DESCRIBE `students`;

CREATE TABLE faculty(
  faculty_id SERIAL,
  faculty_name VARCHAR(32)
);

INSERT INTO faculty (faculty_name)
  VALUES ('faculty 1'),
         ('faculty 2'),
         ('faculty 3');

TRUNCATE faculty;
TRUNCATE TABLE faculty;

-- это работает в postgres:
-- для обнудения счетчика автоинкремента в таблице
TRUNCATE TABLE faculty RESTART IDENTITY;
TRUNCATE TABLE faculty CONTINUE IDENTITY;

DROP TABLE faculty;

SELECT * FROM faculty;

