SELECT COUNT(*)
FROM likes_media, 
	(SELECT user_id 
	FROM profiles 
	ORDER BY birthday DESC
	LIMIT 10) AS bd
WHERE likes_media.from_user_id = bd.user_id;



SELECT gender, COUNT(*)
FROM 
	(SELECT profiles.gender, 
			likes_media.*
		FROM likes_media,
			profiles
		WHERE likes_media.from_user_id =profiles.User_id
		AND profiles.gender IN ('m','f')) AS gender
GROUP BY gender
ORDER BY COUNT(*) DESC
LIMIT 1;