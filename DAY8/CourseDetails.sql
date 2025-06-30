STUDENT AND COURSE DETAILS:-
_____________________________
MariaDB [(none)]> use task
Database changed
MariaDB [task]> create table studentdetails(
    -> rollno int,
    -> name varchar(10),
    -> mark1 int,
    -> mark2 int,
    -> mark3 int);
Query OK, 0 rows affected (0.008 sec)

MariaDB [task]> insert into studentdetails values
    -> (1,'reena',100,99,90),(2,'veena',67,89,90),(3,'athirai',90,89,87),(4,'radha',100,99,99),(5,'uma',90,90,90);
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from studentdetails;
+--------+---------+-------+-------+-------+
| rollno | name    | mark1 | mark2 | mark3 |
+--------+---------+-------+-------+-------+
|      1 | reena   |   100 |    99 |    90 |
|      2 | veena   |    67 |    89 |    90 |
|      3 | athirai |    90 |    89 |    87 |
|      4 | radha   |   100 |    99 |    99 |
|      5 | uma     |    90 |    90 |    90 |
+--------+---------+-------+-------+-------+
5 rows in set (0.000 sec)

MariaDB [task]> create table course(
    -> courseid int,
    -> coursename varchar(10),
    -> instructorname varchar(10));
Query OK, 0 rows affected (0.011 sec)

MariaDB [task]> insert into course values(111,'java','neil'),(222,'python','ayush'),(333,'linux','ved'),(444,'cpp','soha'),(555,'dsa','saha');
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [task]> tee d:\2326jb28_day1.txt
Logging to file 'd:\2326jb28_day1.txt'
MariaDB [task]> select * from course;
+----------+------------+----------------+
| courseid | coursename | instructorname |
+----------+------------+----------------+
|      111 | java       | neil           |
|      222 | python     | ayush          |
|      333 | linux      | ved            |
|      444 | cpp        | soha           |
|      555 | dsa        | saha           |
+----------+------------+----------------+
5 rows in set (0.000 sec)

ADDING COURSE FEE COLUMN:-

MariaDB [task]> alter table course add column coursefee int;
Query OK, 0 rows affected (0.007 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [task]> update course  set coursefee=10000 ;
Query OK, 5 rows affected (0.002 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [task]> select * from course;
+----------+------------+----------------+-----------+
| courseid | coursename | instructorname | coursefee |
+----------+------------+----------------+-----------+
|      111 | java       | neil           |     10000 |
|      222 | python     | ayush          |     10000 |
|      333 | linux      | ved            |     10000 |
|      444 | cpp        | soha           |     10000 |
|      555 | dsa        | saha           |     10000 |
+----------+------------+----------------+-----------+
5 rows in set (0.000 sec)
