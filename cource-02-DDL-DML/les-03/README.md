## 6. Значения по умолчанию

### `DEFAULT`

```sql
DROP TABLE IF EXISTS products;

CREATE TABLE products (
  products_no INTEGER PRIMARY KEY,
  name CHARACTER VARYING,
  price NUMERIC DEFAULT 3.6
);
```

```sql
INSERT INTO products (products_no)
  VALUES (4);
```

```sql
SELECT * FROM products;
 products_no | name | price 
-------------+------+-------
           4 |      |   3.6
```

### AUTOINCREMENT

AUTOINCREMENT - не является станартом SQL

#### `SEQUENCE` - стандарт SQL

```sql
CREATE SEQUENCE serial;
```

```sql
\d serial
                           Sequence "public.serial"
  Type  | Start | Minimum |       Maximum       | Increment | Cycles? | Cache 
--------+-------+---------+---------------------+-----------+---------+-------
 bigint |     1 |       1 | 9223372036854775807 |         1 | no      |     1
```

```sql
SELECT nextval('serial');
 nextval 
---------
       4
(1 row)
```

```sql
CREATE TABLE products (
  products_no INTEGER DEFAULT nextval('serial'),
  name CHARACTER VARYING,
  price NUMERIC DEFAULT 3.6
);
```

#### `SERIAL` 

Можно испоьзовать шорткат `SERIAL`:

```sql
CREATE TABLE products (
  products_no SERIAL PRIMARY KEY,
  name CHARACTER VARYING,
  price NUMERIC DEFAULT 3.6
);
```

[Defaults](https://www.postgresql.org/docs/current/ddl-default.html)

[Значения по умолчанию](https://postgresql.men/manual/ddl-default.html)