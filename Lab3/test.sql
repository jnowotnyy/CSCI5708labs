drop table test;

CREATE TABLE test(
	num int,
	letter varchar(1),
	PRIMARY KEY (num)
);

Insert into test
(num,letter)
Values
 (1,'a'), (2,'b'), (3,'c'), (4,'d'), (5,'e'), (6,'f'), (7,'g'), (8,'h'), (9,'i'),(10,'j'),
(11,'a'),(12,'b'),(13,'c'),(14,'d'),(15,'e'),(16,'f'),(17,'g'),(18,'h'),(19,'i'),(20,'j'),
(21,'a'),(22,'b'),(23,'c'),(24,'d'),(25,'e'),(26,'f'),(27,'g'),(28,'h'),(29,'i'),(30,'j'),
(31,'a'),(32,'b'),(33,'c'),(34,'d'),(35,'e'),(36,'f'),(37,'g'),(38,'h'),(39,'i'),(40,'j'),
(41,'a'),(42,'b'),(43,'c'),(44,'d'),(45,'e'),(46,'f'),(47,'g'),(48,'h'),(49,'i'),(50,'j');


SELECT count(*)
FROM test;


SELECT *
FROM test limit 10;


SELECT *
FROM test offset 35;


SELECT *
FROM test offset 10 limit 10;


SELECT *
FROM test order by "letter" offset 15 limit 25;


SELECT *
FROM test limit 0;


SELECT *
FROM test limit All;


SELECT *
FROM test offset 0;




