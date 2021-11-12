USE northwind;

-- CREATE VIEW

CREATE VIEW products_suppliers_categories AS

SELECT 
  product_name, quantity_per_unit, unit_price, units_in_stock,
  company_name, contact_name, phone
  category_name, description
    FROM products
    JOIN suppliers USING (supplier_id)
    JOIN categories USING (category_id);

SELECT *
  FROM products_suppliers_categories
    WHERE unit_price > 20;

-- REPLACE VIEW

CREATE VIEW heavy_orders AS
SELECT * 
  FROM orders
    WHERE freight > 50;

SELECT * 
  FROM heavy_orders
    ORDER By freight;

CREATE OR REPLACE VIEW heavy_orders AS
SELECT * 
  FROM orders
    WHERE freight > 100;

-- ALTER VIEW

ALTER VIEW heavy_orders 
  RENAME TO heavy_orders; 

-- INSERT INTO
-- DELETE FROM












