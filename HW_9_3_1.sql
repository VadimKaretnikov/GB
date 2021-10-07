DELIMITER $$
CREATE FUNCTION shop.hello()
RETURNS VARCHAR(50)
NO SQL
BEGIN
  DECLARE v_time TIME;
  DECLARE v_hello VARCHAR(50);
  SET v_time = CURRENT_TIME();
  SET v_hello = CASE
                   WHEN v_time BETWEEN TIME '06:00:00' AND TIME '11:59:59'
                   THEN "Доброе утро!"
			       WHEN v_time BETWEEN TIME '12:00:00' AND TIME '17:59:59'
                   THEN "Добрый день!"
                   WHEN v_time BETWEEN TIME '18:00:00' AND TIME '23:59:59'
                   THEN "Добрый вечер!"
                   WHEN v_time BETWEEN TIME '00:00:00' AND TIME '05:59:59'
                   THEN "Доброй ночи!"
                   ELSE NULL
			    END;
  RETURN v_hello;
END$$
DELIMITER ;

select shop.hello();