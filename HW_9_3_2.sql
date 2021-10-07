DELIMITER $$
CREATE TRIGGER shop.PRODUCT_B_I_U_TRG
BEFORE INSERT
ON shop.products
FOR EACH ROW
BEGIN
   IF NEW.name IS NULL AND NEW.description IS NULL THEN
	  SIGNAL SQLSTATE '10000'
      SET MESSAGE_TEXT = 'Name or Description required!';
   END IF;
END$$
DELIMITER ;

insert into shop.products (name, description) values (null, null);