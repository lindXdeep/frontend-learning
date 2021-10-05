# Практическое задание

## 1. Создайте в SQLite базу данных преподавателей и назовите её teachers.db. 

В этой базе данных сформируйте таблицы преподавателей (teachers), курсов (courses), потоков (streams) и успеваемости (achievements) на основе структур, которые представлены ниже. Обратите внимание, что данные вводить пока не надо. Сдайте отчет в виде файла базы данных teachers.db.

| **Ключ преподавателя** | **Имя** | **Фамилия** | **Электронная почта**    |
| ---------------------- | ------- | ----------- | ------------------------ |
| 1                      | Николай | Савельев    | <saveliev.n@mai.ru>      |
| 2                      | Наталья | Петрова     | <petrova.n@yandex.ru>    |
| 3                      | Елена   | Малышева    | <malisheva.e@google.com> |

_Таблица 1. Преподаватели_

| **Ключ курса** | **Название**           |
| -------------- | ---------------------- |
| 1              | Базы данных            |
| 2              | Основы Python          |
| 3              | Linux. Рабочая станция |

_Таблица 2. Курсы_

| **Ключ потока** | **Ключ курса** | **Номер потока** | **Дата начала обучения** | **Количество учеников** |
| --------------- | -------------- | ---------------- | ------------------------ | ----------------------- |
| 1               | 3              | 165              | 18.08.2020               | 34                      |
| 2               | 2              | 178              | 02.10.2020               | 37                      |
| 3               | 1              | 203              | 12.11.2020               | 35                      |
| 4               | 1              | 210              | 03.12.2020               | 41                      |

_Таблица 3. Потоки_

| **Ключ преподавателя** | **Ключ потока** | **Успеваемость** |
| ---------------------- | --------------- | ---------------- |
| 3                      | 1               | 4.7              |
| 2                      | 2               | 4.9              |
| 1                      | 3               | 4.8              |
| 1                      | 4               | 4.9              |

_Таблица 4. Успеваемость_

## 2. Дополнительное задание (выполняется по желанию):

Определите все связи между таблицами, созданными по результатам первого задания. Укажите, какой тип связи используется в каждом случае.
