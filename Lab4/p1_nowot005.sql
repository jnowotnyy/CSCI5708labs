\i /home/nowot005/CSCI5708labs/Lab4/data_set/department.sql
\i /home/nowot005/CSCI5708labs/Lab4/data_set/major.sql
\i /home/nowot005/CSCI5708labs/Lab4/data_set/student.sql
\timing

-- QUESTION 1 --

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age > 20;


/*
Query 1 Time: 105.935 ms
Query 2 Time: 129.885 ms
*/

-- QUESTION 2 --

CREATE INDEX index1 ON Student USING hash (age);

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age >20;


/*
Query 1 Time: 94.639 ms
Query 2 Time: 108.645 ms
*/

-- QUESTION 3 --

CREATE INDEX index2 ON Student(age);

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age >20;
/*
Query 1 Time: 94.639 ms
Query 2 Time: 108.645 ms
*/

-- QUESTION 4 --

CREATE INDEX index3 ON Student(age,sname);

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age >20;
/*
Query 1 Time: 94.639 ms
Query 2 Time: 108.645 ms
*/
\timing
-- QUESTION 5 --
SELECT S.sname
FROM Student S 
WHERE S.age = 0;

-- Does not use the index since the age of 0 is not present anywhere in the student data file.
