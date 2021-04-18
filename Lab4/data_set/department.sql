drop table department;

CREATE TABLE department (dname text not null, PRIMARY KEY (dname), numphds int not null);

set client_encoding = LATIN1;

COPY department(dname,numphds) from '<PATH_TO_DAT_FILE>/department.dat' DELIMITERS ';';
