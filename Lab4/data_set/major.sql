drop table major;

CREATE TABLE major (dname text not null, sid int not null, PRIMARY KEY (dname, sid));

set client_encoding = LATIN1;

COPY major(dname,sid) from '/home/nowot005/CSCI5708labs/Lab4/data_set/major.dat' DELIMITERS ';';
