-- 2. База данных geodata:

USE geodata;

-- 1. Выбрать данные о городе: id, название, название региона, название страны.

SELECT 
  _cities.id,
  _cities.title, 
  _regions.title, 
  _countries.title

    FROM _cities
      LEFT JOIN _regions ON _cities.region_id = _regions.id
      LEFT JOIN _countries ON _cities.country_id = _countries.id

  LIMIT 1000;
    
-- 2. Выбрать id и название всех городов из региона «Московская область».

SELECT 
  _cities.id AS id, 
  _cities.title AS city,
  _regions.title AS region, 
  _countries.title AS country

    FROM _cities
      LEFT JOIN _regions ON _cities.region_id = _regions.id
      LEFT JOIN _countries ON _cities.country_id = _countries.id
        WHERE _regions.title = 'Московская область'

  LIMIT 1000;
