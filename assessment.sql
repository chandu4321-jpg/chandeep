 CREATE TABLE table_21_students (
    studentid    NUMBER(28),
    student_name VARCHAR2(100),
    gender       CHAR(1),
    dom          DATE
);

INSERT INTO table_21_students(studentid,student_name,gender,dom) 
VALUES (1, 'Aarav Kumar', 'M', TO_DATE('2002-05-10', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (2, 'Sneha Reddy', 'F', TO_DATE('2001-12-15', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (3, 'Rohan Mehta', 'M', TO_DATE('2003-02-20', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (4, 'Priya Shah', 'F', TO_DATE('2000-09-25', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (5, 'Vikram Singh', 'M', TO_DATE('2002-07-14', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (6, 'Kavya Nair', 'F', TO_DATE('2001-11-01', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (7, 'Manoj Yadav', 'M', TO_DATE('2003-04-10', 'YYYY-MM-DD'));
commit;

INSERT INTO table_21_students(studentid, student_name, gender, dom) 
VALUES (8, 'Divya Patel', 'F', TO_DATE('2002-06-18', 'YYYY-MM-DD'));
commit;




-----Display all student records------

SELECT * FROM table_21_students;

-------Show only student names and genders.
SELECT 'manoj yadav', 'm' FROM table_21_students;

-------List students born after Jan 1, 2002.
SELECT
    *
FROM
    table_21_students
WHERE
    dom > '2002-01-01';

------Find the total number of male and female students.

SELECT
    gender,
    COUNT(*)
FROM
    table_21_students
GROUP BY
    gender;

-------Display students sorted by DOB (oldest to youngest).

SELECT
    *
FROM
    table_21_students
ORDER BY
    dom ASC;
------Show students whose name starts with 'S'.
SELECT
    *
FROM
    table_21_students
WHERE
    student_name LIKE 'S%';
    
    
 -------Format DOB as 'DD-MON-YYYY'.
SELECT
    student_name,
    to_char(dom, 'DD-MON-YYYY')
FROM
    table_21_students;
    
    
----------Display age of each student using SYSDATE - DOB.

SELECT
    student_name,
    to_char(dom, 'DD-MON-YYYY')
FROM
    table_21_students;
    

-------Count how many students are born in each year.

SELECT dom , COUNT(*) 
FROM table_21_students
GROUP BY dom
ORDER BY dom;