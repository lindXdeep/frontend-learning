---
date updated: '2021-10-07T15:46:09+03:00'

---

## 1. Создание базы данных

> В случаях когда название сущности в базе (например таблицы) состоит из не цифро-буквенных символов или совпадает с ключевыми словами самого sql, то имена заключают в двойные кавычки.

[Что такое SQL / Википедия](https://ru.wikipedia.org/wiki/SQL)

[Что такое локаль / Википедия](https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D0%B3%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5_%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B8_(%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5))

[CREATE DATABASE / PostgreSQL Manual](https://www.postgresql.org/docs/current/sql-createdatabase.html)

## 2. Создание таблицы

- `\l` - show databases

- `\c <database>` - connect to database

- `\dt` - show tables

- `\d <table>` - descrybe table

- Загрузить скрипт из файла:

```bash
psql -U postgres testdb < ddl.sql
```

[Создание таблицы](https://www.postgresql.org/docs/current/sql-createtable.html)

[Урок о перенаправлениях и потоках в Linux/Bash](https://ru.hexlet.io/courses/bash/lessons/pipe/theory_unit)

## 3. Ограничения

### `UNIQUE` - уникальыне значения в колонке

Ограничение `UNIQUE` можно ставитьн а несколько полей, это означает что кобинация этих полей должна быть униклаьной

```sql
CREATE TABLE products (
  products_no INTEGER UNIQUE,
  product BOOLEAN,

...

  UNIQUE(products_no,product)
);
```

```sql
CREATE TABLE products (
  products_no INTEGER NOT NULL,
  product BOOLEAN,
  name CHARACTER VARYING,
  description TEXT,
  count INTEGER,
  price NUMERIC,
  create_at TIMESTAMP,

  UNIQUE(products_no,product)
);
```

```bash
\d products
                          Table "public.products"
   Column    |            Type             | Collation | Nullable | Default 
-------------+-----------------------------+-----------+----------+---------
 products_no | integer                     |           | not null | 
 product     | boolean                     |           |          | 
 name        | character varying           |           |          | 
 description | text                        |           |          | 
 count       | integer                     |           |          | 
 price       | numeric                     |           |          | 
 create_at   | timestamp without time zone |           |          | 
Indexes:
    "products_products_no_product_key" UNIQUE CONSTRAINT, btree (products_no, product)
```

### `PRIMARY KEY` - идентификатор

`PRIMARY KEY` -  техничеки это комбинация `UNIQUE NOT NULL`

```sql
CREATE TABLE products (
  products_no INTEGER PRIMARY KEY,
  product BOOLEAN,
  ...
  create_at TIMESTAMP,
);
```

[Ограничения целостности](https://postgresql.men/manual/ddl-constraints.html)

[Constraints](https://www.postgresql.org/docs/current/ddl-constraints.html)

[граничения и первичные ключи](https://postgresql.men/node/4)