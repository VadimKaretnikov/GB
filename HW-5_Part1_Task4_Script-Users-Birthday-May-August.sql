SELECT name, birthday FROM users WHERE DATE_FORMAT(birthday, '%M') IN ('may', 'august');