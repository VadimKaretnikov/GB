with usr_cnt as
  (select m1.sender_id, count(m1.id) cnt
     from vk.messages m1 
	where m1.receiver_id = 4
    group by m1.sender_id)
select usr_cnt.sender_id, u1.nickname, u1.name, usr_cnt.cnt
  from usr_cnt
  join vk.users_v u1 on usr_cnt.sender_id = u1.id
 order by cnt desc
 limit 1;
 