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
