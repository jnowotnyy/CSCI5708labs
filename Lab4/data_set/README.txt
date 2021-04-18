README

All three .dat files contain the data to be inserted into the PostgreSQL.
The .sql files contain the script to do the insertion into PostgreSQL.

Three files contents are:
1. Student:
	- contains the sid, sname, sex, age, year and gpa of the students.
2. Department:
	- contains the dname and numphds
3. Major:
	- contains the dname and sid. This table will show the department of each student.
	- Note that this table should contain 2 Foreign Keys to the other two tables but I do not include them so that the order of the insertion will not matter.

To insert all data to the Database:
1. Start the server and the psql (instructions in previous labs)
2. Update the "<PATH_TO_DAT_FILE>" in all three ".sql" files to the path of the dat file.
3. In psql, the command to do the insertion is: "\i <PATH_TO_SQL_FILE>"
