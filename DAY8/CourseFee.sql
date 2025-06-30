
LIBRARY DB:-

MariaDB [task]> create table bookcount(
    -> bookno int,
    -> bookname varchar(90),
    -> countno int(90));
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into course values(01,'the jungle book',800),(02,'harrypotter',1000),(03,'thenaliraman',800),(04,'fairytales',900);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [task]> insert into bookcount values(01,'the jungle book',800),(02,'harrypotter',1000),(03,'thenaliraman',800),(04,'fairytales',900);
Query OK, 4 rows affected (0.003 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from bookcount;
+--------+-----------------+---------+
| bookno | bookname        | countno |
+--------+-----------------+---------+
|      1 | the jungle book |     800 |
|      2 | harrypotter     |    1000 |
|      3 | thenaliraman    |     800 |
|      4 | fairytales      |     900 |
+--------+-----------------+---------+
4 rows in set (0.000 sec)

MariaDB [task]> create table members(
    -> personid int,
    -> membername varchar(90),
    -> dop date);
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into  members values (100,'alice','2025-05-24'),(101,'smrithi','2025-04-19'),(102,'sneha','2025-05-03'),(103,'aakash','2025-06-05');
Query OK, 4 rows affected (0.003 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from members;
+----------+------------+------------+
| personid | membername | dop        |
+----------+------------+------------+
|  100 | alice   | 2025-05-24 |      |
|  101 | smrithi | 2025-04-19 |	     | 	
|  102 | sneha   | 2025-05-03 |	     |	
|  103 | aakash  | 2025-06-05 |	     |
+----------+------------+------------+
4 rows in set (0.000 sec)

MariaDB [task]> create table staff(
    -> empno id,
    -> empname varchar(10),
    -> salary int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
empname varchar(10),
salary int)' at line 2
MariaDB [task]> create table staff(
    -> empno int,
    -> name varchar(12),
    -> salary int);
Query OK, 0 rows affected (0.011 sec)

MariaDB [task]> insert into staff values(11,'saanvi',8000),(12,'gloria',9000),(13,'luna',10000),(14,'charle',10000);
Query OK, 4 rows affected (0.003 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from staff;
+-------+--------+--------+
| empno | name   | salary |
+-------+--------+--------+
|    11 | saanvi |   8000 |
|    12 | gloria |   9000 |
|    13 | luna   |  10000 |
|    14 | charle |  10000 |
+-------+--------+--------+
4 rows in set (0.000 sec)

MariaDB [task]> select * from studentdetails;
+--------+---------+-------+-------+-------+
| rollno | name    | mark1 | mark2 | mark3 |  
+--------+---------+-------+-------+-------+-
|      1 | reena   |   100  |    99 |    90 |             
|      2 | veena   |    67  |    89 |    90 |		
|      3 | athirai |    90  |    89 |    87 |		
|      4 | radha   |   100  |    99 |    99 |		
|      5 | uma     |    90  |    90 |    90 |		
+--------+---------+-------+-------+-------+-
5 rows in set (0.000 sec)

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

MariaDB [task]> select * from bookcount;
+--------+-----------------+---------+
| bookno | bookname        | countno |
+--------+-----------------+---------+
|      1 | the jungle book |     800 |
|      2 | harrypotter     |    1000 |
|      3 | thenaliraman    |     800 |
|      4 | fairytales      |     900 |
+--------+-----------------+---------+
4 rows in set (0.000 sec)

MariaDB [task]> select * from members;
+----------+------------+------------+
| personid | membername | dop        |
+----------+------------+------------+
|      100 | alice    | 2025-05-24 |
|      101 | smrithi  | 2025-04-19 |
|      102 | sneha    | 2025-05-03 |
|      103 | aakash   | 2025-06-05 | 
+----------+------------+------------+
4 rows in set (0.000 sec)


MariaDB [task]> select * from staff;
+-------+--------+--------+
| empno | name   | salary |
+-------+--------+--------+
|    11 | saanvi |   8000 |
|    12 | gloria |   9000 |
|    13 | luna   |  10000 |
|    14 | charle |  10000 |
+-------+--------+--------+
4 rows in set (0.000 sec)
