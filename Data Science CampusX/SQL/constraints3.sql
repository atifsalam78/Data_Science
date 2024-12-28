USE campusx;
CREATE TABLE users (
    user_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL,
    CONSTRAINT user_email UNIQUE (email),
    CONSTRAINT user_pk PRIMARY KEY (user_id)
)