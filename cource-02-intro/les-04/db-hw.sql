SELECT * FROM `category`;
SELECT * FROM `brand`;
SHOW TABLES;

-- заполнить поля alias_name для всех категорий
UPDATE `category` 
  SET alias_name = 'dress';

-- добавить новый бренд
INSERt INTO brand(id, type)
  VALUES(4, 'new brand');

-- удалить бренд
DELETE FROM brand WHERE id=4;