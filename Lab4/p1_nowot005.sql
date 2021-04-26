\timing

-- QUESTION 1 --

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age = 20;

/*
Query 1 Time: 74.055 ms
Query 2 Time: 25.518 ms
*/

/*
Query 1 is executed by searching the heap for all pages with student records that have an age>25.
This range search would often cost BD.

Query 2 is executed by searching the heap for all pages with student records that have an age of 20.
This is an equality search that would cost 0.5BD.
*/


-- QUESTION 2 --

CREATE INDEX index1 ON Student USING hash (age);

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age = 20;

/*
Query 1 Time: 72.505 ms
Query 2 Time: 5.562 ms
*/

/*
Query 1 is relatively the same to Q(1) since both would cost around BD for range searches. Since hash indexes perform well for equality searches, Query 2 has a much lower execution time than Q(1).

Query 1 is executed by using age>25 as a hash key to search for the pages with student records that have age>25. 
This range search on a hash costs BD

Query 2 is executed by using the age 20 as a hash key to search for the pages with student records that have an age of 20.
This equality search using a hash costs 2D.
*/

-- QUESTION 3 --

CREATE INDEX index2 ON Student(age);

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age = 20;

/*
Query 1 Time: 79.186 ms
Query 2 Time: 5.856 ms
*/

/*
Query 1 compared to Q(1) and Q(2) runs slightly slower when using range search.
Similar to Q(2), query 2 has a fast runtime for b+ trees and performs just as well as hash indexes. Like Q(2), this query is much faster than Q(1).

Query 1 is executed by traversing a balanced b+ tree for the leaf nodes with keys that satisfy the condition age>25 and then using the rowid provided to find the records stored.
Ranges searches on b+ trees cost DlogF(1.5B+# matching pages).

Query 2 is executed by traversing a balanced b+ tree for the leaf node that has a key with 25 and using the rowid to find where the record is stored.
An equality search on a b+ tree would cost DlogF(1.5B).
*/

-- QUESTION 4 --

CREATE INDEX index3 ON Student(age,sname);

SELECT S.sname
FROM Student S
WHERE S.age > 25;

SELECT S.sname
FROM Student S
WHERE S.age = 20;

/*
Query 1 Time: 73.800 ms
Query 2 Time: 5.805 ms
*/

/*
Query 1 takes time equal to both Q(1) and Q(2) with Q(3) being very slighly slower.
Query 2 runs in a similar time to both Q(2) and Q(3). Its similarities with Q(3) come from the secondary index on the complex key not being used so we are searching using only age just like Q(3).

Query 1 is executed by traversing a balanced b+ tree for the leaf nodes with keys that satisfy the condition age>25 and then using the rowid provided to find the records stored. The second part of the complex key is not important to the where clause so it has no affect on the runtime. Just like Q(3), range searches on b+ trees cost DlogF(1.5B+# matching pages). 

Query 2 is executed by traversing a balanced b+ tree for the leaf node that has a key with 25 and using the rowid to find where the record is stored.
Since we search for all students age 20, the secondary ordering of pages by sname has no impact. An equality search on a b+ tree would cost DlogF(1.5B).
*/ 
-- QUESTION 5 --

SELECT S.sname
FROM Student S 
WHERE S.age = 0;

/*
Time: 0.451 ms
*/

/*
This query would not use any of the indexes because there are no records with age 0 in the database.
*/

\timing
-- Does not use the index since the age of 0 is not present anywhere in the student data file.
