DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday DATE,
	created_at DATETIME,
	updated_at DATETIME
);

UPDATE users SET created_at = NOW(), updated_at = NOW();
