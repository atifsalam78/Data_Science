USE campusx;
CREATE TABLE IF NOT EXISTS users (
	user_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    password VARCHAR(255)
)