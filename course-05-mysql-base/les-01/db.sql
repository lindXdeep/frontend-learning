CREATE DATABASE countries_and_cities_of_the_world;

USE countries_and_cities_of_the_world;
-- страна,  область, район,     город
-- countries, areas, districts, cities

DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS areas;
DROP TABLE IF EXISTS districts;
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS city_types;

SHOW TABLES;

CREATE TABLE countries(
  id   INT       NOT NULL PRIMARY KEY,
  name VARCHAR(128) NOT NULL

) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE areas (
  id         INT NOT NULL PRIMARY KEY,
  name       VARCHAR(128),
  country_id INT NOT NULL,

  CONSTRAINT fk_country_id
    FOREIGN KEY(country_id)
      REFERENCES countries(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE

) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE districts (
  id      INT       NOT NULL PRIMARY KEY,
  name    VARCHAR(128) NOT NULL,
  area_id INT       NOT NULL,

  CONSTRAINT fk_area_id
    FOREIGN KEY(area_id)
      REFERENCES areas(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE

) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE city_types(
  id   INT         NOT NULL PRIMARY KEY,
  type VARCHAR(64) NOT NULL

) ENGINE=InnoDB CHARACTER SET=UTF8;

CREATE TABLE cities (
  id           INT NOT NULL PRIMARY KEY,
  city_type_id INT NOT NULL,
  district_id  INT,
  area_id      INT,

  CONSTRAINT fk_district_id
    FOREIGN KEY(district_id)
      REFERENCES districts(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

  CONSTRAINT fk_region_id
    FOREIGN KEY(area_id)
      REFERENCES areas(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
  
   CONSTRAINT fk_city_type_id
    FOREIGN KEY(city_type_id)
      REFERENCES city_types(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE

) ENGINE=InnoDB CHARACTER SET=UTF8;

