CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name CHARACTER VARYING UNIQUE NOT NULL,
  price NUMERIC
);

INSERT INTO products (name, price)
VALUES ('eggs', 3.13),
  ('milk', 4.02),
  ('butter', 2.2);

