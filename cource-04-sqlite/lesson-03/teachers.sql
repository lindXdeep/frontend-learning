-- 1. В таблице streams переименуйте столбец даты начала обучения в started_at.
ALTER TABLE streams
  RENAME COLUMN data TO started_at;

-- 2. В таблице streams добавьте столбец даты завершения обучения finished_at.
ALTER TABLE streams 
  ADD COLUMN finished_at NUMERIC NOT NULL;

-- 3. Приведите базу данных в полное соответствие с данными в таблицах ниже:
INSERT INTO teachers(`name`, `surname`, `email`)
  VALUES ('Николай', 'Савельев'. 'saveliev.n@mai.ru'),
         ('Наталья', 'Петрова', 'petrova.n@yandex.ru'),
         ('Елена', 'Малышева', 'malisheva.e@google.com');

INSERT INTO courses('name')
  VALUES('Базы данных'),
        ('Основы Python'),
        ('Linux. Рабочая станция'); 

INSERT INTO streams ('course_id','number','started_at', 'students_amount')
  VALUES(3, 165, '18.08.2020', 34 ),
        (2, 178, '02.10.2020', 37 ),
        (1, 203, '12.11.2020', 35 ),
        (1, 210, '03.12.2020', 41 );

INSERT INTO achievements('teacher_id', 'stream_id', 'performance')
  VALUES (3, 1, 4.7),
         (2, 2, 4.9),
         (1, 3, 4.8),
         (1, 4, 4.9);

-- *в таблице успеваемости измените тип столбца «Ключ потока» на REAL. Выполните задание на таблице с данными.
ALTER TABLE achievements
  RENAME TO achievements_old;

CREATE TABLE achievements (
  teacher_id INTEGER NOT NULL,
  stream_id REAL NOT NULL,
  performance REAL,

  PRIMARY KEY(teacher_id, stream_id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(id),
  FOREIGN KEY (stream_id) REFERENCES streams(id)
);

INSERT INTO achievements('teacher_id', 'stream_id', 'performance')
  SELECT teacher_id, stream_id, performance
    FROM achievements_old;

DROP TABLE achievements_old;

ALTER TABLE streams 
  RENAME TO training_groups;