drop table student;

CREATE TABLE student (sid serial, PRIMARY KEY (sid), sname text not null, sex text not null, age int not null, year int not null, gpa real not null);

set client_encoding = LATIN1;

COPY student(sname,sex,age,year,gpa) from '/home/nowot005/CSCI5708labs/Lab4/data_set/student.dat' DELIMITERS ';';
