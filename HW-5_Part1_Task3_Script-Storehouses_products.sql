DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
	storehouse_id INT UNSIGNED,
	product_id INT UNSIGNED,
	value INT UNSIGNED
 );

INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES
  (1, 1, 0),
  (1, 2, 2500),
  (1, 3, 0),
  (1, 4, 30),
  (1, 5, 500),
  (1, 6, 1);
  
SELECT value, IF(value > 0, 0, 1) AS `order` FROM storehouses_products ORDER BY value;
SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;
