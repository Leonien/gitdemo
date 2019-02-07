/* 
module_name, your_name, date

good practice is important.  
Script filess should structured, tidy and professional to aim usability
 
*/
 
 -- RunCommand EG @f:\databases\constrainstest.txt
 
 -- NOTE THE ORDER THE COMMANDS ARE IN T

--PRIMARY KEYS
ALTER TABLE students
ADD CONSTRAINT pk_student_id
PRIMARY KEY (student_id);

ALTER TABLE books
ADD CONSTRAINT pk_isbn
PRIMARY KEY (isbn);

ALTER TABLE loans
ADD CONSTRAINT pk_loan
PRIMARY KEY (student_id,isbn,loan_date);

--FOREIGN KEYS
ALTER TABLE loans
ADD CONSTRAINT fk_loan_student
FOREIGN KEY (student_id)
REFERENCES students (student_id);

ALTER TABLE loans
ADD CONSTRAINT fk_loan_book
FOREIGN KEY (isbn)
REFERENCES books (isbn);

--UNIQUE KEYS
ALTER TABLE students
ADD CONSTRAINT uk_NI
UNIQUE (national_ins);

--CHECK CONSTRAINTS
ALTER TABLE students
ADD CONSTRAINT ck_student_fname
CHECK (student_fname = UPPER(student_fname));

ALTER TABLE students
ADD CONSTRAINT ck_student_lname
CHECK (student_lname = UPPER(student_lname));

ALTER TABLE students
ADD CONSTRAINT ck_gender
CHECK (GENDER IN ('F','M'));

ALTER TABLE students
ADD CONSTRAINT ck_gender_nn
CHECK (GENDER IS NOT NULL);

--DEFAULTS
ALTER TABLE students
MODIFY  (city
DEFAULT 'NORTHAMPTON');