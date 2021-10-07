create or replace view vk.users_v 
(id,
 nickname,
 name,
 gender,
 birthdate,
 age)
as
select id, coalesce(nickname, concat('id', id)), name, gender, birthdate, 
	   TIMESTAMPDIFF(YEAR,birthdate,CURDATE()) as age
  from vk.users;