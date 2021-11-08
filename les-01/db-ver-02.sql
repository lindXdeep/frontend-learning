CREATE DATABASE countries_and_cities_of_the_world;

USE countries_and_cities_of_the_world;

-- countries, areas, districts, cities

CREATE TABLE cities (
  id   BIGINT       NOT NULL PRIMARY KEY,
  name VARCHAR(128) NOT NULL
  
) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE districts (
  id        BIGINT       NOT NULL PRIMARY KEY,
  name      VARCHAR(128) NOT NULL,
  cities_id BIGINT       NOT NULL,

  CONSTRAINT fk_cities_id FOREIGN KEY(cities_id)
      REFERENCES cities(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
  
) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE areas (
  id           BIGINT NOT NULL PRIMARY KEY,
  name         VARCHAR(128),
  districts_id BIGINT,

  CONSTRAINT fk_districts_id FOREIGN KEY(districts_id)
    REFERENCES districts(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE

) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE countries (
  id           BIGINT       NOT NULL PRIMARY KEY,
  name         VARCHAR(128) NOT NULL,
  areas_id     BIGINT       NOT NULL,
 
  CONSTRAINT fk_areas_id FOREIGN KEY(areas_id)
    REFERENCES areas(id)
      ON UPDATE CASCADE
      ON DELETE CASCADE
  
) ENGINE=InnoDB CHARACTER SET=UTF8;

SHOW TABLES;

DROP TABLES areas, cities, districts, countries;



