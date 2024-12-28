-- CREATE DATABASE IF NOT EXISTS users

-- USE users;
-- CREATE TABLE IF NOT EXISTS student (
-- student_id INTEGER,
-- student_name VARCHAR(256),
-- email VARCHAR(256),
-- password VARCHAR(256)

-- )

-- DROP DATABASE IF EXISTS users

-- CREATE DATABASE IF NOT EXISTS students
-- USE students;
-- CREATE TABLE IF NOT EXISTS info (
-- student_id INTEGER,
-- student_name VARCHAR(256),
-- student_email VARCHAR(256),
-- student_password VARCHAR(256),

-- CONSTRAINT cons_st_id_email UNIQUE (student_id, student_email)

-- )
-- ALTER TABLE info
-- DROP CONSTRAINT cons_st_id_email

-- DROP TABLE IF EXISTS info
-- USE students;
-- CREATE TABLE student_info (
-- student_id INTEGER AUTO_INCREMENT PRIMARY KEY,
-- student_name VARCHAR(256),
-- student_age INTEGER,
-- student_email VARCHAR(256) UNIQUE,
-- student_password VARCHAR(256),
-- admission_date DATETIME DEFAULT CURRENT_TIMESTAMP, 

-- CONSTRAINT check_age CHECK (student_age > 15 AND student_age < 80 )
-- )

-- DROP TABLE IF EXISTS student_info
-- USE students;
-- CREATE TABLE IF NOT EXISTS info (
-- 	student_id INTEGER AUTO_INCREMENT PRIMARY KEY,
--     student_name VARCHAR(256),
--     student_age INTEGER,
--     student_email VARCHAR(256),
--     student_password VARCHAR(256),
--     admission_date DATETIME DEFAULT CURRENT_TIMESTAMP,
--     
--     CONSTRAINT cons_email UNIQUE (student_email),
--     CONSTRAINT cons_age CHECK (student_age > 10 AND student_age < 25)
-- )

-- ALTER TABLE info
-- ADD CONSTRAINT info_name_email_combo_unique UNIQUE (student_name, student_email)

-- USE students;
-- DROP TABLE IF EXISTS info

-- USE students;

-- CREATE TABLE IF NOT EXISTS student_info (
-- 	student_id INTEGER,
--     student_name VARCHAR(256),
--     student_email VARCHAR(256),
--     student_password VARCHAR(256),
--     student_age INTEGER,
--     admission_date DATETIME DEFAULT CURRENT_TIMESTAMP,
--     student_gender VARCHAR(256) DEFAULT ('Others'),
--     
--     CONSTRAINT student_info_pk PRIMARY KEY AUTO_INCREMENT (student_id, student_name),
--     CONSTRAINT student_info_email_unique UNIQUE (student_email),
--     CONSTRAINT student_info_age_chek CHECK (student_age > 6 AND student_age < 30)
--     
--     )

USE students;

-- CREATE TABLE IF NOT EXISTS courses (
-- student_id INTEGER,
-- course_id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- course_name VARCHAR(256),

-- CONSTRAINT courses_fk FOREIGN KEY (student_id) REFERENCES student_info(student_id)

-- )

-- DROP TABLE student_info