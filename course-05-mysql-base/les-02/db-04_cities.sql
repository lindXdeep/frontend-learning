USE geodata;
SHOW TABLES;

DESC _cities;

ALTER TABLE _cities
  RENAME To _cities_old;

CREATE TABLE _cities AS
  SELECT city_id, country_id, important, region_id, title_ru
    FROM _cities_old;

DROP TABLE _cities_old;


ALTER TABLE _cities
  RENAME TO _cities_bak;

CREATE TABLE _cities AS
  SELECT *
    FROM _cities_bak
      WHERE 1=2;

ALTER TABLE _cities
  RENAME COLUMN city_id TO id,
  RENAME COLUMN country_id TO country,
  RENAME COLUMN region_id TO region,
  RENAME COLUMN title_ru TO title;

ALTER TABLE _cities
  MODIFY COLUMN id         INT          NOT NULL PRIMARY KEY,
  MODIFY COLUMN country_id INT          NOT NULL,
  MODIFY COLUMN important  TINYINT(1)   NOT NULL,
  MODIFY COLUMN region_id  INT,
  MODIFY COLUMN title      VARCHAR(150) NOT NULL;

ALTER TABLE _cities
  ADD CONSTRAINT fk_cities_country_id
    FOREIGN KEY (country_id) REFERENCES _countries(id),
  ADD CONSTRAINT fk_cities_region_id
    FOREIGN KEY (region_id) REFERENCES _regions(id);

CREATE INDEX idx_cities_title
  ON _cities(title);

INSERT INTO _cities
  SELECT *
    FROM _cities_bak;

DROP TABLE _cities_bak;

SHOW TABLES;
