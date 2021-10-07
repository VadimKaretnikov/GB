select u1.gender, count(distinct l1.id) cnt
  from vk.users u1
  join vk.likes l1
       on l1.user_id = u1.id
 group by u1.gender
 order by 2 desc;