DELIMITER $$
create trigger shop.products_a_i_r AFTER INSERT ON shop.products FOR EACH ROW
begin
   call log_p(substr(CONCAT('Добавлена запись в таблицу products name = ', NEW.name), 1, 2000));
end$$
DELIMITER ;