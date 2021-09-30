SELECT SUM(res.cnt), res.userid
FROM 
	(SELECT COUNT(*) AS cnt,
         user_id  AS userid
	FROM posts
	GROUP BY user_id
	UNION ALL
	SELECT COUNT(*) AS cnt,
         from_user_id AS userid
	FROM likes_media
	GROUP BY from_user_id
	UNION ALL
	SELECT COUNT(*) AS cnt,
         from_user_id AS userid
	FROM messages
	GROUP BY from_user_id) AS res
GROUP BY res.userid
ORDER BY SUM(res.cnt)
LIMIT 10;