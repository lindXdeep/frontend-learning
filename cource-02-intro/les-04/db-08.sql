
--Обновление cтрок
-- Самое главное не забыть установить ограничичвающие условия,  иначе значения установятся дял всех строк

SELECT * FROM `category`;

UPDATE `category` 
  SET name = 'woman hat' WHERE id = 1;
 
-- массовое измение значений
UPDATE `category`
  SET discount = 3 WHERE discount = 0;

-- обновить значения в определенном диапозоне
UPDATE `category`
  SET discount = 2 WHERE id IN(3, 5);

DELETE FROM category WHERE id = 5;