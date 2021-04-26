\timing

-- QUESTION 1 --

SELECT S.sname
FROM Student S
WHERE S.age < 30;

SELECT DISTINCT S.sname
FROM Student S
WHERE S.age < 30;


/*
Query 1 Time: 55.755 ms
Query 2 Time: 113.744 ms
*/

/*
Query 1 is executed around half the time of query 2.
Query 2 is slower than query 1 because of the key word DISTINCT which causes 
the database to sort the queries again to determine if there are dublicates within the query.
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
Query 1 Time: 68.940 ms
Query 2 Time: 70.870 ms
*/


-- QUESTION 3 --

--Nested Query
SELECT dname
FROM major
WHERE sid IN (SELECT sid FROM Student WHERE age < 30)
GROUP BY dname;

--Simple Join
SELECT dname
FROM major
JOIN Student
    ON major.sid = student.sid 
WHERE student.age < 30
GROUP BY dname;

/*
Query 1 Time: 402.982 ms
Query 2 Time: 428.397 ms
*/

/*
They have relatively similar execution times.
The slight difference in query 1 vs query 2 may be because query 2 will sequentially scan every record sid from major and then scan student for matching sid before the selection age<30 rather than selecting the students with age<30 from student and then scanning it and major for matching sid. 
*/

\timing
