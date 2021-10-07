## Data defenition statements:

- CREATE
- ALTER
- DROP

## Data manipulation statements:

- SELECT
- UPDATE
- DELETE

# Задание

1. заполнить поля alias_name для всех категорий

```sql
UPDATE `category` 
  SET alias_name = 'dress';
```

2. добавить новый бренд

```sql
INSERt INTO brand(id, type)
  VALUES(4, 'new brand');
```

3. удалить бренд

```sql
DELETE FROM brand WHERE id=4;
```