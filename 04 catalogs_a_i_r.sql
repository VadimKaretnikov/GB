DELIMITER $$
create trigger shop.catalogs_a_i_r AFTER INSERT ON shop.catalogs FOR EACH ROW
begin
   call log_p(substr(CONCAT('Добавлена запись в таблицу catalogs name = ', NEW.name), 1, 2000));
end$$
DELIMITER ;