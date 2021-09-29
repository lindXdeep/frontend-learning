CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name character varying UNIQUE NOT NULL
);

CREATE TABLE goods (
    id SERIAL PRIMARY KEY,
    category_id integer,
    name character varying UNIQUE NOT NULL,
    price numeric
);


INSERT INTO goods (category_id, name, price) 
  VALUES
    (1, 'bmw', 2.10), 
    (null, 'kia', 700.02), 
    (1, 'nissan', 0.9),
    (2, 'eggs', 2.13), 
    (2, 'milk', 1.02), 
    (null, 'butter', 2.2),
    (1, 'fiat', 500.3);

INSERT INTO categories (id, name) 
  VALUES (1, 'cars'), 
         (2, 'products'), 
         (3, 'computers');