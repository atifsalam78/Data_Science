USE campusx;
-- ALTER TABLE customers 
-- ADD COLUMN surname VARCHAR(255) NOT NULL AFTER name

-- ALTER TABLE customers
-- ADD COLUMN pan_number VARCHAR(255) AFTER surname,
-- ADD COLUMN joining_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

-- ALTER TABLE customers DROP COLUMN pan_number

-- ALTER TABLE customers 
-- DROP COLUMN surname,
-- DROP COLUMN joining_date

-- ALTER TABLE customers MODIFY COLUMN surname INTEGER

-- ALTER TABLE customers ADD COLUMN age INTEGER NOT NULL

-- ALTER TABLE customers ADD CONSTRAINT customer_age_check CHECK (age > 6 AND age < 25)

-- ALTER TABLE customers MODIFY CONSTRAINT customer_age_check CHECK (age > 6 AND age < 30) 
-- This is not possible in MYSQL we can not modify constraint, instead of this you drop constratin and add new one
-- ALTER TABLE customers DROP CONSTRAINT customer_age_check
ALTER TABLE customers ADD CONSTRAINT customer_age_chek CHECK (age > 6 AND age < 30 )