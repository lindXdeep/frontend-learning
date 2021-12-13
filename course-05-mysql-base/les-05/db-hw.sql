SHOW DATABASES;
USE geodata;
SHOW TABLES;

-- сложно было придумать реальный пример на этой БД, но напрмиер удаление сущности

-- сначала дропаем ограничения,  так как в такой конфигурации как тут они не дадут удалить зависимые элементы
ALTER TABLE _cities 
  DROP CONSTRAINT fk_cities_country_id, 
  DROP CONSTRAINT fk_cities_region_id;

-- для удобства можно создать несколько переменных
SET @city = 1;
SET @country = (SELECT country_id FROM _cities WHERE id = @city);
SET @region = (SELECT region_id FROM _cities WHERE id = @city);

-- отключаем автокоммит так как по умолчанию 
-- DML команлы `INSERT`, `UPDATE`, `DELETE` - выполняются в транзакциях
-- в дефолтном уровне изоляции
SET autocommit=0;

-- начало транзакции (будм ее завершать только после выполнения всех операций)
START TRANSACTION

DELETE FROM _cities WHERE id = @city;
DELETE FROM _countries WHERE id = @country;
DELETE FROM _regions WHERE id = @region;

-- если все прошло удачно тогда комитим изменения
COMMIT;

-- включаем автотранзакции
SET autocommit=1;

-- возвращаем обратно исходные ограничения
ALTER TABLE _cities
  ADD CONSTRAINT fk_cities_country_id 
    FOREIGN KEY (country_id) REFERENCES _countries(id),
  ADD CONSTRAINT fk_cities_region_id 
    FOREIGN KEY (region_id) REFERENCES _countries(id);

-- это кстати занимает кучу времени, я бы изменил ограничение на каскадное удаление,
-- но тогда не было бы нобходимости в этой транзакции.




