SHOW DATABASES;
USE universities;

-- PRIMARY KEY

DROP TABLE IF EXISTS chair;

CREATE TABLE `chair`(
  chair_id SERIAL PRIMARY KEY,
  `chair_name` VARCHAR(32),
  dean VARCHAR(32)
);

INSERT INTO chair
  VALUES (1, 'name', 'dean');

INSERT INTO chair
  VALUES (NULL, 'name', 'dean'); 

SELECT * FROM chair;


DROP TABLE IF EXISTS chair;

CREATE TABLE `chair`(
  chair_id SERIAL UNIQUE NOT NULL,
  `chair_name` VARCHAR(32),
  dean VARCHAR(32)
);

-- UNIQUE          - не накладывает ограничение NOT NULL 
-- UNIQUE NOT NULL - почти как PRIMARY KEY
--
-- разница в том что PRIMARY KEY на всю таблицу может быть только на 1 колонке а, UNIQUE на более чем одной
-- PRIMARY KEY нужен только для того что бы эксплицитно пометить колонку.

-- Именование по умолчанию ограниений

DROP TABLE IF EXISTS `chair`;

CREATE TABLE `chair`(
  chair_id SERIAL PRIMARY KEY,
  `chair_name` VARCHAR(32),
  dean VARCHAR(32)
);

CREATE TABLE IF NOT EXISTS `chair`(
  chair_id   SERIAL,
  chair_name VARCHAR(32),
  dean       VARCHAR(32),

  CONSTRAINT PK_chair_chair_id PRIMARY KEY(chair_id)
);

ALTER TABLE chair
  MODIFY chair_id INT NOT NULL;

ALTER TABLE chair
  DROP PRIMARY KEY;

DESC chair

SHOW CREATE TABLE chair;

-- FOREIGN KEY

CREATE TABLE publisher (
  publisher_id INT,
  publisher_name VARCHAR(128) nOT NULL,
  address text,

  CONSTRAINT PK_publisher_publisher_id PRIMARY KEY(publisher_id)
);

CREATE TABLE book (
  book_id INT,
  title TEXT NOT NULL,
  isbn VARCHAR(32) NOT NULL,

  publisher_id INT,

  CONSTRAINT PK_book_book_id PRIMARY KEY(book_id)
);

ALTER TABLE book
  ADD CONSTRAINT FK_book_publicher_id 
    FOREIGN KEY(publisher_id) 
      REFERENCES publisher(publisher_id);

-- или задать сразу
DROP TABLE book;

CREATE TABLE book (
  book_id INT,
  title TEXT NOT NULL,
  isbn VARCHAR(32) NOT NULL,

  publisher_id INT,

  CONSTRAINT PK_book_book_id 
    PRIMARY KEY(book_id),

  CONSTRAINT FK_book_publicher_id 
    FOREIGN KEY(publisher_id) 
      REFERENCES publisher(publisher_id)
);

ALTER TABLE book
  DROP FOREIGN KEY FK_book_publicher_id;

ALTER TABLE book
  DROP PRIMARY KEY;


-- CHECK

ALTER TABLE book
  ADD COLUMN price DECIMAL
  CONSTRAINT CHK_book_price CHECk (price >= 0);

INSERT INTO book
  VALUES (1, 'title', 'isbn', 1, 1.5);

INSERT INTO book
  VALUES (1, 'title', 'isbn', 1, -1.5); -- теперь отрицательно не добавится

-- DEFAULT

CREATE TABLE customer ( 
  customer_id SERIAL,
  full_name TEXT,
  status CHAR DEFAULT 'r',

  CONSTRAINT PK_customer_id 
    PRIMARY KEY(customer_id),

  CONSTRAINT CHK_customer_status 
    CHECK (status = 'r' or status = 'p')
);

INSERT INTO customer (full_name)
  VALUE('name', 'd'); -- что то отличное от `r` или `p` мы вставитьне сможем


ALTER TABLE customer
  ALTER COLUMN status 
    DROP DEFAULT;