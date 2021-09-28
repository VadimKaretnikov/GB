select u.name from users as u
inner join orders as o on (o.user_id = u.id)
group by u.name
having count(o.id) > 0