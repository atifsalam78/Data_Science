USE campusx;
CREATE TABLE IF NOT EXISTS students(
	student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INTEGER,
    
    CONSTRAINT student_age_check CHECK (age > 6 and age < 25)
    
)