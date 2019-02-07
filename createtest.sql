/* 
module_name, your_name, date

good practice is important.  
Script filess should structured, tidy and professional to aim usability
 
*/
 
 -- RunCommand EG @f:\databases\createtest.txt
 
 -- NOTE ORDER THE INSERT COMMANDS ARE IN

-- INSERTS

INSERT INTO students 
(student_id,national_ins,student_fname,student_lname,street,tel_no,gender,date_of_birth)
VALUES (2000, 'JA123645B','TOM','THOMAS','NEW WAY','01601 735500','F','01-JAN-03');

INSERT INTO books 
VALUES(12,'TWO TOWERS','SECOND IN TRILOGY','TOLKIEN','PENGIUN','01-JAN-78',1);

INSERT INTO loans (student_id,isbn,loan_date)
VALUES(2000,12,'20-JAN-78');
