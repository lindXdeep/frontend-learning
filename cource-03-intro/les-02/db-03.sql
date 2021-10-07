DESC `category`;

INSERT INTO category (id, name,  discount, alias_name)
  VALUES(1, 'woman shoes', 10, NULL);

INSERT INTO category (id, name,  discount, alias_name)
  VALUES(2, 'man shoes', 15, 'man''s shoes');

SELECT * FROM `shop`.`category`;

--авто инкеремент
ALTER TABLE `shop`.`category`
  CHANGE COLUMN `id`
    `id` INT(11) NOT NULL AUTO_INCREMENT;

--теперь можно не указывать id 
INSERT INTO `category`(name, discount, alias_name)
  VALUES('hat', 0, NULL);