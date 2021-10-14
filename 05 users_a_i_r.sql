DELIMITER $$
create trigger shop.users_a_i_r AFTER INSERT ON shop.users FOR EACH ROW
begin
   call log_p(substr(CONCAT('Добавлена запись в таблицу users name = ', NEW.name), 1, 2000));
end$$
DELIMITER ;