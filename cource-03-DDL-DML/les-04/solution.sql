
-- Напишите запрос который изменит таблицу products так как описано ниже:

  -- Поле name должно стать not null, unique и иметь тип character varying;
ALTER TABLE products
  ALTER COLUMN name
    TYPE CHARACTER VARYING;

ALTER TABLE products
  ALTER COLUMN name
    SET NOT NULL;

ALTER TABLE products
  ADD CONSTRAINT same_name UNIQUE(name);

-- Добавьте поле amount типа integer;
ALTER TABLE products
  ADD COLUMN amount INTEGER;

-- Удалите default у поля price;
ALTER TABLE products
  ALTER COLUMN price
    DROP DEFAULT;

