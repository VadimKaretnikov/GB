DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birthday DATE,
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
);

UPDATE users
SET
created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE users
CHANGE created_at created_at DATETIME DEFAULT NOW();

ALTER TABLE users
CHANGE updated_at updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP;