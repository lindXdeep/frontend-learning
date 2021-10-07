
## Модификация таблиц 

```sql
-- Adding Column
ALTER TABLE products
  ADD COLUMN description TEXT;

ALTER TABLE products
  DROP COLUMN description;
```

```sql
-- Adding a constraint
ALTER TABLE products
  ADD CONSTRAINT same_name UNIQUE (product_no);

ALTER TABLE products
  DROP CONSTRAINT same_name;
```

```sql
-- Changing a Column's defaul value
ALTER TABLE products
  ALTER COLUMN product_no SET NOT NULL;

ALTER TABLE products
  ALTER COLUMN product_no DROP NOT NULL;
```

```sql
-- Changing a Column's data TYPE
ALTER TABLE products
  ALTER COLUMN price SET DEFAULT 7.77;

ALTER TABLE products
  ALTER COLUMN price DROP DEFAULT;
```

```sql
-- Renaming a column
ALTER TABLE products
  RENAME COLUMN product_no TO product_nomber;
```

```sql
-- Renaming a table
ALTER TABLE products
  RENAME TO items;
```


[Alter table](https://www.postgresql.org/docs/current/sql-altertable.html)

[Изменение таблиц](https://postgresql.men/manual/ddl-alter.html)
