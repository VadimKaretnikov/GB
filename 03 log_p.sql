DELIMITER $$
create procedure shop.log_p(in_txt VARCHAR(2000))
begin
   insert into shop.logs (msg) values (in_txt);
END $$
DELIMITER ;

