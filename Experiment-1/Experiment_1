CREATE DATABASE ADBMS
USE ADBMS



CREATE TABLE TBL_AUTHOR
(
	AUTHOR_ID INT PRIMARY KEY,
	AUTHOR_NAME VARCHAR(MAX),
	COUNTRY VARCHAR(MAX)
)

CREATE TABLE TBL_BOOKS
(	
	BOOK_ID INT PRIMARY KEY,
	BOOK_TITLE VARCHAR(MAX),
	AUTHORID INT
	FOREIGN KEY (AUTHORID) REFERENCES TBL_AUTHOR(AUTHOR_ID)
)

INSERT INTO TBL_AUTHOR (AUTHOR_ID, AUTHOR_NAME, COUNTRY) VALUES
(1, 'George Orwell', 'United Kingdom'),
(2, 'Haruki Murakami', 'Japan'),
(3, 'Chinua Achebe', 'Nigeria'),
(4, 'J.K. Rowling', 'United Kingdom'),
(5, 'Gabriel García Márquez', 'Colombia'),
(6, 'Mark Twain', 'United States');

INSERT INTO TBL_BOOKS (BOOK_ID, BOOK_TITLE, AUTHORID) VALUES
(101, '1984', 1),
(102, 'Kafka on the Shore', 2),
(103, 'Things Fall Apart', 3),
(104, 'Harry Potter and the Sorcerer Stone', 4),
(105, 'One Hundred Years of Solitude', 5),
(106, 'Adventures of Huckleberry Finn', 6);



SELECT B.BOOK_TITLE AS [BOOK NAME], A.AUTHOR_NAME, A.COUNTRY
FROM TBL_BOOKS AS B
INNER JOIN
TBL_AUTHOR AS A
ON
B.AUTHORID = A.AUTHOR_ID



CREATE TABLE Department (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(100)
);


CREATE TABLE Course (
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(100),
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES Department(DEPT_ID)
);

INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Physics'),
(3, 'Mathematics'),
(4, 'Chemistry'),
(5, 'Biology');


INSERT INTO Course VALUES
(101, 'Data Structures', 1),
(102, 'Operating Systems', 1),
(103, 'Quantum Mechanics', 2),
(104, 'Electromagnetism', 2),
(105, 'Linear Algebra', 3),
(106, 'Calculus', 3),
(107, 'Organic Chemistry', 4),
(108, 'Physical Chemistry', 4),
(109, 'Genetics', 5),
(110, 'Computer Networks', 1),
(111, 'Linux/Unix systems', 1),
(112, 'Matrix', 3),
(113, 'Space Physics', 2);

SELECT 
D.DEPT_NAME,
(SELECT COUNT(*) 
 FROM Course AS C 
 WHERE C.DEPT_ID = D.DEPT_ID) AS CourseCount
FROM Department AS D;


SELECT 
DEPT_ID,
DEPT_NAME,
(SELECT COUNT(*) 
 FROM Course 
WHERE Course.DEPT_ID = Department.DEPT_ID) AS CourseCount
FROM Department 
where (SELECT COUNT(*) 
FROM Course 
WHERE Course.DEPT_ID = Department.DEPT_ID) > 2;


CREATE LOGIN TEST_LOGIN
WITH PASSWORD = 'TESTLOGIN@123';

CREATE USER TEST_USER
FOR LOGIN TEST_LOGIN

EXECUTE AS USER = 'TEST_USER'
GRANT SELECT, UPDATE ON COURSE TO TEST_USER

