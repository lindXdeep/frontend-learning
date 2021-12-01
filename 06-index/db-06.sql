show databases;
use geodata;
show tables;

desc geodata._cities;

SELECT * FROM _cities
  ORDER by id DESC
  LIMIT 10;

EXPLAIN 
SELECT * FROM geodata._cities
  WHERE id = 5468846; 

CREATE INDEX idx_cities ON _cities(id);

EXPLAIN ANALYZE
SELECT * FROM geodata._cities
  WHERE id = 5468846;

-- index по двум колонкам

CREATE INDEX idx_cities_country 
  ON geodata._cities(id, country_id);

-- index по выражениям

SELECT * FROM geodata._cities
  WHERE LOWER(title) LIKE 'Uusimaa';

-- возможноне работает в mysql, но пработает в postgresql
CREATE INDEX idx_cities_country_like_2
  ON geodata._cities(LOWER(title));

