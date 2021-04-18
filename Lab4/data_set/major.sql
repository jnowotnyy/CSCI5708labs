drop table major;

CREATE TABLE major (dname text not null, sid int not null, PRIMARY KEY (dname, sid));

set client_encoding = LATIN1;

COPY major(dname,sid) from '<PATH_TO_DAT_FILE>/major.dat' DELIMITERS ';';
