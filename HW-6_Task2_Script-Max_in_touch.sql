SELECT from_user_id,
	CONCAT(users.firstname, ' ', users.lastname) AS name, 
	COUNT(*) AS total
FROM messages, users
WHERE to_user_id=888
AND messages.from_user_id =users.id
GROUP BY from_user_id
ORDER BY COUNT(*) DESC
LIMIT 1;