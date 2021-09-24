# Введение в базы данных
## Исходные данные

База данных платежной системы `billing_simple` состоит из одной таблицы `billing` следующей структуры:

```sql
CREATE TABLE IF NOT EXISTS `billing_simple`.`billing` (
  `payer_email` VARCHAR(255) NULL,
  `recipient_email` VARCHAR(255) NULL,
  `sum` DECIMAL(18,2) NULL,
  `currency` VARCHAR(3) NULL,
  `billing_date` DATE NULL,
  `comment` TEXT NULL)
ENGINE = InnoDB;
```

### Problem 01

Выведите поступления денег от пользователя с email 'vasya@mail.com'.

В результат включите все столбцы таблицы и не меняйте порядка их вывода.

### Problem 02

Добавьте в таблицу одну запись о платеже со следующими значениями:
- email плательщика: 'pasha@mail.com'
- email получателя: 'katya@mail.com'
- сумма: 300.00
- валюта: 'EUR'
- дата операции: 14.02.2016
- комментарий: 'Valentines day present)'

### Problem 03

Измените адрес плательщика на 'igor@mail.com' для всех записей таблицы, где адрес плательщика 'alex@mail.com'.

### Problem 04 

Удалите из таблицы записи, где адрес плательщика или адрес получателя установлен в неопределенное значение или пустую строку.

***
## Исходные данные


База данных учета проектов `project_simple` состоит из одной таблицы `project` следующей структуры:

```sql
CREATE TABLE IF NOT EXISTS `project_simple`.`project` (
  `project_name` VARCHAR(255) NULL,
  `client_name` VARCHAR(255) NULL,
  `project_start` DATE NULL,
  `project_finish` DATE NULL,
  `budget` DECIMAL(18,2) NULL)
ENGINE = InnoDB;
```

### Problem 05

Выведите общее количество заказов компании.

### Problem 08

Выведите в качестве результата одного запроса 
- общее количество заказов, 
- сумму стоимостей (бюджетов) всех проектов, 
- средний срок исполнения заказа в днях.

NB! Для вычисления длительности проекта удобно использовать встроенную функцию datediff().


***
## Исходные данные

```sql
CREATE TABLE IF NOT EXISTS `store` (
  `product_name` VARCHAR(255) NULL,
  `category` VARCHAR(255) NULL,
  `price` DECIMAL(18,2) NULL,
  `sold_num` INT NULL)
ENGINE = InnoDB;
```
### Problem 06

Выведите количество товаров в каждой категории. Результат должен содержать два столбца: 
- название категории, 
- количество товаров в данной категории.
### Problem 07

Выведите 5 категорий товаров, продажи которых принесли наибольшую выручку. 
Под выручкой понимается сумма произведений стоимости товара на количество проданных единиц. 

Результат должен содержать два столбца: 
- название категории,
- выручка от продажи товаров в данной категории.

