SELECT u1.id, u1.nickname, u1.name, u1.age, count(distinct l1.id) cnt
  FROM vk.users_v u1
  JOIN vk.posts p1
       ON p1.author_id = u1.id
  JOIN vk.likes l1
       ON l1.post_id = p1.id
 WHERE u1.age < 10
 GROUP BY u1.id, u1.nickname, u1.name, u1.age;