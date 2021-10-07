## Схема

```sql
CREATE SCHEMA myschema;
```

```sql
\dn
   List of schemas
   Name   |  Owner   
----------+----------
 myschema | lindx
 public   | postgres
(2 rows)
```

```sql
\dn *.*
        List of schemas
        Name        |  Owner   
--------------------+----------
 information_schema | postgres
 myschema           | lindx
 pg_catalog         | postgres
 pg_toast           | postgres
 public             | postgres
(5 rows)
```

```sql
 SHOW search_path;
   search_path   
-----------------
 "$user", public
(1 row)
```

```sql
DROP SCHEMA myschema CASCADE;
```

```sql
DROP SCHEMA myschema CASCADE;
```

[Создание схемы](https://postgrespro.ru/docs/postgrespro/12/sql-createschema)

[Схемы](https://postgresql.men/manual/ddl-schemas.html)

## Представления

> Нужен для агрегации сложных запросов

```sql
CREATE VIEW products2 AS SELECT * FROM products;
```

```sql
SELECT * FROM products2;

 products_no | name | price | amount 
-------------+------+-------+--------
(0 rows)
```

```sql
DROP VIEW products2;
```

VIEW - редактировать нельзя, редактирование возможно приопределенных условиях. н невсегда


[CREATE VIEW in PostgreSQL](https://www.postgresql.org/docs/current/sql-createview.html)
   
[Представления в PostgreSQL](https://postgresql.men/manual/tutorial-views.html)

[Представления в БД / Википедия](https://ru.wikipedia.org/wiki/Представление_(базы_данных))

[Представления в MySQL](https://habr.com/ru/post/47031/)

