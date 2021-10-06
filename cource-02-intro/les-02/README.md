```sql
show tables;
+----------------+
| Tables_in_shop |
+----------------+
| brand          |
| category       |
| product        |
+----------------+
```

```sql
select * from category;
+----+-------------+----------+-------------+
| id | name        | discount | alias_name  |
+----+-------------+----------+-------------+
|  1 | woman shoes |       10 | NULL        |
|  2 | man shoes   |       15 | man's shoes |
|  3 | hat         |        0 | NULL        |
+----+-------------+----------+-------------+
3 rows in set (0.00 sec)
```

```sql
select * from product;
+----+---------+
| id | type    |
+----+---------+
|  1 | dress   |
|  2 | T-shirt |
+----+---------+
2 rows in set (0.00 sec)
```