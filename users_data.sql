insert into `vk`.`users` (nickname, name, gender, birthdate)
values ('durov', 'Pavel Durov', 'M', date '1976-01-01');

insert into `vk`.`users` (nickname, name, gender, birthdate)
values ('brutaltag', 'Тагир Билалов', 'M', date '1978-01-16');

insert into `vk`.`users` (nickname, name, gender, birthdate)
values (null, 'Арина Чеснокова', 'F', date '2008-05-25');

update vk.users set birthdate = date "2013-05-25" where id = 4;