-- получить название бренда с идентификатором 3
SELECT * FROM `category` WHERE id=3;

-- Получить первые 2 товара
SELECT * FROM `category` LIMIT 2;

-- Получитьв се категори и товаров со скидккой <10% и отсортировать их  по названию
SELECT * FROM `category` WHERE (discount < 10) ORDER BY name;