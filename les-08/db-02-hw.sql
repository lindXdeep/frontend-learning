
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

-- количество отданных лайков

CREATE VIEW u1 AS 
SELECT
  distinct(id_user_from),
  count(id_user_from) OVER(PARTITION BY id_user_from) AS gave_likes
FROM likes;

-- количество полученых лайков

CREATE VIEW u2 AS 
SELECT
  distinct(id_user_to),
  count(id_user_to) OVER(PARTITION BY id_user_to) AS taked_likes
FROM likes;

-- количество взфимных лайков

CREATE VIEW u3 AS 
SELECT 
    distinct(l.id_user_from),
    count(*) OVER (PARTITION BY l.id_user_from) AS mutal
  FROM (
    SELECT 
        id_user_from,
        id_user_to
      FROM likes
        ORDER BY id_user_from) l
  LEFT JOIN (
    SELECT 
        id_user_to,
        id_user_from
      FROM likes
        ORDER BY id_user_to) r ON l.id_user_from = r.id_user_to
  WHERE l.id_user_from = r.id_user_to 
    AND l.id_user_to = r.id_user_from
  ORDER BY l.id_user_from;
       
-- итоговая таблица  отданых, полученых, взаимных лайков

SELECT * FROM users;

SELECT 
    u1.id_user_from AS 'id user',
    CONCAT (u.firstname, ' ',  u.lastname) AS 'name',
    u1.gave_likes   AS 'sum of gave likes',
    u2.taked_likes  AS 'sum of taked likes',
    u3.mutal        AS 'sum of mutal likes'
       FROM users u
  LEFT JOIN u1 ON u.id = u1.id_user_from
  LEFT JOIN u2 ON u1.id_user_from = u2.id_user_to
  LEFT JOIN u3 ON u1.id_user_from = u3.id_user_from;
