USE campusx;
-- CREATE TABLE users (
-- user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- name VARCHAR(255) NOT NULL,
-- email VARCHAR(255) NOT NULL UNIQUE,
-- password VARCHAR(255) NOT NULL
-- )
-- First way to insert into tables
-- INSERT INTO campusx.users (user_id, email, name, password)
-- VALUES(NULL, "atif.salam@gmail.com", "Atif Salam", "1234")

-- Second way to insert into tables (but orders matter)
-- INSERT INTO campusx.users
-- VALUES(NULL, "faisal_shah@gmail.com", "Faisal Shah", "12345")

-- Third way to insert into tables
-- INSERT INTO campusx.users(name, email) VALUES ("Arshad Shah", "arshad@gmail.com")

-- Fourth way to insert into tables (but orders doesn't matter)
-- INSERT INTO campusx.users(password, name, email) VALUES("123456", "Navaid","navaid@gmail.com")

-- Insert multiple entries
INSERT INTO campusx.users VALUES
(NULL, "Faiza Shah", "faiza@gmail.com", "123"),
(NULL, "Manahil Atif", "manahil@gmail.com", "12345"),
(NULL, "Ayesha Atif", "ayesha@gmail.com", "123456")


