SELECT
	DATE_FORMAT(
	DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W')
	AS day_of_week,
	COUNT(*) AS `count`
	FROM users
	GROUP BY day_of_week;