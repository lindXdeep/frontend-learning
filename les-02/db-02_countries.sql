USE geodata;
SHOW TABLES;
DESC _countries;

ALTER TABLE _countries
  RENAME To _countries_old;

CREATE TABLE _countries AS
  SELECT country_id, title_ru
    FROM _countries_old;

DROP TABLE _countries_old;

ALTER TABLE _countries
  RENAME COLUMN country_id TO id

ALTER TABLE _countries
  RENAME COLUMN title_ru TO title;


ALTER TABLE _countries
  RENAME TO _countries_bak;

CREATE TABLE _countries 
  LIKE _countries_bak;

INSERT _countries
  SELECT * FROM _countries_bak;

TRUNCATE TABLE _countries;

ALTER TABLE _countries
  MODIFY id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE _countries
  MODIFY title VARCHAR(150) NOT NULL;

CREATE INDEX idx_countries_title
  ON _countries(title);

INSERT _countries
  SELECT * FROM _countries_bak;

DROP TABLE _countries_bak;

DESC _countries; 
