\i /home/nowot005/CSCI5708labs/Lab4/data_set/department.sql
\i /home/nowot005/CSCI5708labs/Lab4/data_set/major.sql
\i /home/nowot005/CSCI5708labs/Lab4/data_set/student.sql
\timing

-- QUESTION 1 --

SELECT S.sname
FROM Student S
WHERE S.age < 30;

SELECT DISTINCT S.sname
FROM Student S
WHERE S.age < 30;


/*
Query 1 Time: 48.787 ms
Query 2 Time: 128.46 ms
*/

-- QUESTION 2 --

SELECT sid
FROM Student
WHERE year = 4
GROUP BY sid;

SELECT sid
FROM Student
GROUP BY sid
HAVING year = 4;

/*
Query 1 Time: 65.558 ms
Query 2 Time: 63.611 ms
*/

-- QUESTION 3 --

--Nested Query
SELECT dname
FROM major
WHERE sid IN (SELECT sid FROM Student WHERE age < 30)
GROUP BY dname;

--Simple Join
SELECT dname
FROM major, student
WHERE major.sid = student.sid AND student.age < 30
GROUP BY dname;

/*
Query 1 Time: 627.327 ms
Query 2 Time: 401.739 ms
*/

\timing