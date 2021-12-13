# Урок 2. SQL — команды DDL

### 1. Загрузить базу данных geodata из [прикрепленного архива](zip/geodata.tar.xz)

[db-01.sql](db-01.sql)

### 2. Привести таблицы базы данных geodata в надлежащий вид

> Процесс загрузки базы данных описан в прикрепленном файле "Примечания к практическому заданию".

**Таблица _countries**

| **FIELD** | **TYPE**     | **NULL** | **KEY**     | **EXTRA**      |
| --------- | ------------ | -------- | ----------- | -------------- |
| id        | INT          | NOT      | Primary Key | auto_increment |
| title     | VARCHAR(150) | NOT      | INDEX       |                |

**Таблица _regions**

| **FIELD**  | **TYPE**     | **NULL** | **KEY**                     | **EXTRA**      |
| ---------- | ------------ | -------- | --------------------------- | -------------- |
| id         | INT          | NO       | Primary Key                 | auto_increment |
| country_id | INT          | NO       | Foreign Key _countries (id) |                |
| title      | VARCHAR(150) | NO       | INDEX                       |                |

**Таблица _cities**

| **FIELD**  | **TYPE**     | **NULL** | **KEY**                     | **EXTRA**      |
| ---------- | ------------ | -------- | --------------------------- | -------------- |
| id         | INT          | NO       | Primary Key                 | auto_increment |
| country_id | INT          | NO       | Foreign Key _countries (id) |                |
| important  | TINYINT(1)   | NO       |                             |                |
| region_id  | INT          | NO       | Foreign Key _regions (id)   |                |
| title      | VARCHAR(150) | NO       | INDEX                       |                |

> Обратите внимание на два момента.
> 1. В схемах есть неточность. В таблице cities поле regionid НЕ должно  быть not null, т.к. у нас есть записи с пустыми значениями, и система  просто-напросто не даст нам создать такое ограничение. Оставляйте это  поле без ограничения.
> 2. В методичке рекомендуют все команды alter table написать в файл и  импортировать его. Я не советую так делать, лучше запускать команды по  одной. Это дает больше контроля.
> Сдать задание нужно в виде файла .sql с командами DDL (alter table …),  которыми вы преобразуете базу данных. 
> 
> Если вы выполняете задание в  графическом редакторе, сохраняйте сгенерированные команды. Или  попробуйте написать их самостоятельно.
> 
> На изменение схемы может уйти очень много времени (до 1 часа), так что не пугайтесь, если команда заставит вас подождать.

Для проверки результатов работы могут быть полезны следующие команды:

```sql
SHOW CREATE TABLE`<yourtable>`;
SHOW COLUMNS FROM`<yourtable>`;
```

## [_countries.sql](db-02_countries.sql)

```sql
CREATE TABLE `_countries` (
  `id`    int          NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,

  PRIMARY KEY (`id`),
  KEY `idx_countries_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb3
```

## [_regions.sql](db-03_regions.sql)

```sql
CREATE TABLE `_regions` (
  `id`         int          NOT NULL AUTO_INCREMENT,
  `country_id` int          NOT NULL,
  `title`      varchar(150) NOT NULL,

  PRIMARY KEY (`id`),
  KEY `fk_region_counry_id` (`country_id`),
  KEY `idx_region_title` (`title`),
  CONSTRAINT `fk_region_counry_id` FOREIGN KEY (`country_id`) REFERENCES `_countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5468685 DEFAULT CHARSET=utf8mb3
```
## [_cities.sql](db-04_cities.sql)

```sql
CREATE TABLE `_cities` (
  `id`         int          NOT NULL,
  `country_id` int          NOT NULL,
  `important`  tinyint(1)   NOT NULL,
  `region_id`  int          DEFAULT NULL,
  `title`      varchar(150) NOT NULL,

  PRIMARY KEY (`id`),
  KEY `fk_cities_country_id` (`country_id`),
  KEY `fk_cities_region_id` (`region_id`),
  KEY `idx_cities_title` (`title`),
  CONSTRAINT `fk_cities_country_id` FOREIGN KEY (`country_id`) REFERENCES `_countries` (`id`),
  CONSTRAINT `fk_cities_region_id` FOREIGN KEY (`region_id`) REFERENCES `_regions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 
```

- [Lesson_002.zip](zip/db-hw.zip)