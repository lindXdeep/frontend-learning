CREATE TABLE goods (
    id SERIAL PRIMARY KEY,
    category character varying NOT NULL,
    name character varying UNIQUE NOT NULL,
    price numeric
);

INSERT INTO goods (category, name, price)
  VALUES
    ('cars', 'bmw', 3.10), 
    ('cars', 'kia', 10.02), 
    ('cars', 'nissan', 0.9),
    ('products', 'eggs', 3.13), 
    ('products', 'milk', 4.02), 
    ('products', 'butter', 2.2);

