
SELECT * FROM category;
SELECT * FROM product;


SELECT category.* FROM category
  LEFT JOIN product ON product.category_id = category.id
  WHERE product.id IS NULL;

SELECT category.* FROM category
  RIGHT JOIN product ON product.category_id = category.id
  WHERE product.id IS NULL;