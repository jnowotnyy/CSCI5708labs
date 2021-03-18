drop table test;

CREATE TABLE test(
	num int,
	let varchar(1);
	PRIMARY KEY (num)
);

Insert into test
(num)
Values
(1,'a'),(2,'b'),(3,'c'),(4,'d'),(5),(6),(7),(8),(9),(10),
(11,'a'),(12),'b',(13,'c'),(14,'d'),(15),(16),(17),(18),(19),(20),
(21,'a'),(22,'b'),(23,'c'),(24,'d'),(25),(26),(27),(28),(29),(30),
(31,'a'),(32,'b'),(33,'c'),(34,'d'),(35),(36),(37),(38),(39),(40),
(41,'a'),(42,'b'),(43,'c'),(44,'d'),(45),(46),(47),(48),(49),(50);


SELECT count(*)
FROM test;


SELECT *
FROM test limit 10;


SELECT *
FROM test offset 10;


SELECT *
FROM test offset 10 limit 10;




