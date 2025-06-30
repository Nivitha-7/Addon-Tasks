MARK BELOW 80:

MariaDB [task]> create table  mark(
    -> regno int,
    -> name varchar(90),
    -> marks int);
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into  mark values(1,'Ayesha',90),(2,'Ayushi',99),(3,'janaki',81),(4,'mythili',76),(5,'zara',80);
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

 
MariaDB [task]> select * from mark;
+-------+---------+-------+
| regno | name    | marks |
+-------+---------+-------+
|     1 | Ayesha  |    90 |
|     2 | Ayushi  |    99 |
|     3 | janaki  |    81 |
|     4 | mythili |    76 |
|     5 | zara    |    80 |
+-------+---------+-------+
5 rows in set (0.000 sec)

MariaDB [task]> select marks from mark where marks<80;
+-------+
| marks |
+-------+
|    76 |
+-------+