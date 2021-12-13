USE geodata;
SHOW TABLES;

ALTER TABLE _regions
  RENAME TO _regions_old;

CREATE TABLE _regions AS
  SELECT region_id, country_id, title_ru
    FROM _regions_old;

TRUNCATE TABLE _regions;


ALTER TABLE _regions
  RENAME COLUMN region_id TO id;

ALTER TABLE _regions
  RENAME COLUMN title_ru TO title;

ALTER TABLE _regions
  MODIFY COLUMN id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE _regions
  MODIFY COLUMN country_id INT NOT NULL;

ALTER TABLE _regions
  ADD CONSTRAINT fk_region_counry_id 
    FOREIGN KEY (country_id) REFERENCES _countries(id);

ALTER TABLE _regions
  MODIFY title VARCHAR(150) NOT NULL;

CREATE INDEX idx_region_title
  ON _regions(title);

INSERT _regions (id, country_id, title)
  SELECT region_id, country_id, title_ru
    FROM _regions_old;

DROP TABLE _regions_old;

DESC _regions_old;
