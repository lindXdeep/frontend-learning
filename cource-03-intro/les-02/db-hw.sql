USE `shop`;
SHOW TABLES;
DESC brand;

INSERT INTO brand(id, type)
  VALUES
    (1, 'Mark O''Polo'),
    (2, 'ALCOTT'),
    (3, 'GUESS');

INSERT INTO `product`
  VALUES
    (1, 'dress'),
    (2, 'T-shirt');
