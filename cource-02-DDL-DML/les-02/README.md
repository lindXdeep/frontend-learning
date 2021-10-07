---
date updated: '2021-10-07T15:46:09+03:00'

---

## 4. Добавление/удаление записи

```sql
CREATE TABLE products (
  products_no INTEGER NOT NULL,
  name CHARACTER VARYING,
  price NUMERIC
);
```

    \d products 
                         Table "public.products"
       Column    |       Type        | Collation | Nullable | Default 
    -------------+-------------------+-----------+----------+---------
     products_no | integer           |           | not null | 
     name        | character varying |           |          | 
     price       | numeric           |           |          | 

```sql
INSERT INTO products
  VALUES(1, 'car', 3.35);

INSERT INTO products
  VALUES(2, 'car', 3.35);

INSERT INTO products
  VALUES(3, 'car', 3.35);

SELECT * FROM products;

 products_no | name | price 
-------------+------+-------
           1 | car  |  3.35
           2 | car  |  3.35
           3 | car  |  3.35

SELECT name, price FROM products;
```

```sql
DELETE FROM `products';
```

```sql
DELETE FROM products
 WHERE price = 10;
```

[Insert](https://www.postgresql.org/docs/current/sql-insert.html)

[Вставка данных](https://postgresql.men/manual/dml-insert.html)

## 5. Обновление данных

```sql
UPDATE products
  SET price = 4;

UPDATE products
  SET price = 4
    WHERE products_no = 2;
```

```sql
SELECT * FROM products;

 products_no | name | price 
-------------+------+-------
           1 | car  |     4
           3 | car  |     4
           2 | car  |     4
```

```sql
UPDATE products
  SET price = 2, name = 'books'
    WHERE products_no > 1;
```

```sql
SELECT * FROM products;

 products_no | name  | price 
-------------+-------+-------
           1 | car   |     4
           3 | books |     2
           2 | books |     2
```

```sql
UPDATE products
  SET price = price + 3, name = 'books'
    WHERE products_no > 1;
```

```sql
SELECT * FROM products;
 products_no | name  | price 
-------------+-------+-------
           1 | car   |     4
           3 | books |     5
           2 | books |     5
```

[UPDATE](https://www.postgresql.org/docs/current/sql-update.html)

[Обновление данных](https://postgresql.men/manual/dml-update.html)
