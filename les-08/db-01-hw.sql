
-- Задача 1.

-- У вас есть социальная сеть, где пользователи (id, имя) могут ставить друг другу лайки. 
-- Создайте необходимые таблицы для хранения данной информации.


-- Таблица пользователей и обьектов для лайков;

CREATE DATABASE social_network
SHOW DATABASES;
USE social_network;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS objects;

CREATE TABLE users(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  firstname VARCHAR(256),
  lastname VARCHAR(256)
);

CREATE TABLE objects(
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE
);

INSERT INTO users(firstname, lastname)
  VALUES('Lue', 'Smith'),
        ('John', 'Doe'),
        ('Mark', 'Johnson'),
        ('Bob', 'Wilson');

INSERT INTO objects(id, name)
  VALUES(1, 'Post'),
        (2, 'Title'),
        (3, 'Photo');


-- Таблица лайков;

DROP TABLE IF EXISTS likes;

CREATE TABLE likes(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  id_user_from BIGINT NOT NULL,
  id_user_to BIGINT NOT NULL,
  id_object INT NOT NULL,
  seted BOOLEAN DEFAULT TRUE,

  CONSTRAINT id_user_from_fk
    FOREIGN KEY (id_user_from) REFERENCES users (id),

  CONSTRAINT id_user_to_fk
    FOREIGN KEY (id_user_to) REFERENCES users (id),

  CONSTRAINT id_object_fk
    FOREIGN KEY (id_object) REFERENCES objects (id)
);

INSERT INTO likes(id_user_from, id_user_to, id_object)
  VALUES (1, 4, 3),
         (4, 1, 3),
         (2, 1, 3),
         (3, 1, 1),
         (4, 2, 1),
         (3, 2, 1),
         (1, 3, 2),
         (4, 1, 2);

SELECT * FROM users;
SELECT * FROM objects;
SELECT * FROM likes;


-- Создайте необходимые таблицы для хранения данной информации. Создайте запрос, который выведет информацию:
-- - id пользователя;
-- - имя;
-- - лайков получено;
-- - лайков поставлено;
-- - взаимные лайки.

SELECT * FROM likes;

SELECT
  distinct(id_user_from),
  count(id_user_from) OVER(PARTITION BY id_user_from) AS gave_likes
FROM likes;

SELECT
  distinct(id_user_to),
  count(id_user_to) OVER(PARTITION BY id_user_to) AS taked_likes
FROM likes;

SELECT
  DISTINCT(u1.id_user_from),
  count(*) OVER (PARTITION BY u1.id_user_from)
  FROM likes u1
    JOIN likes u2 ON u1.id_user_from = u2.id_user_to
      AND u2.id_user_from = u1.id_user_to;



LEFT JOIN (SELECT
            distinct(id_user_to),
            count(id_user_to) OVER(PARTITION BY id_user_to)
          FROM likes) AS taked_likes,
LEFT JOIN (SELECT
            distinct(id_user_from),
            count(id_user_from) OVER(PARTITION BY id_user_from)
          FROM likes) AS gave_likes
LEFT JOIN (SELECT
            DISTINCT(u1.id_user_from),
            count(*) OVER (PARTITION BY u1.id_user_from)
            FROM likes u1
              JOIN likes u2 ON u1.id_user_from = u2.id_user_to
                AND u2.id_user_from = u1.id_user_to)





SELECT 
  u.id,
  u.firstname
  FROM users u
  LEFT JOIN likes;