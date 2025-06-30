COUNT STUDENTS PER COURSE:

MariaDB [task]> create table Enrollment(
    -> StudentID int,
    -> StudentName varchar(10),
    -> Coursename varchar(10));
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into Enrollment values(1,'grija','BSc.IT'),(2,'rehman','BCA'),(3,'tom','CS'),(4,'Jerry','BCA'),(5,'radhika','BSc.IT');
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0
MariaDB [task]> select * from Enrollment;
+-----------+-------------+------------+
| StudentID | StudentName | Coursename |
+-----------+-------------+------------+
|         1 | grija       | BSc.IT     |
|         2 | rehman      | BCA        |
|         3 | tom         | CS         |
|         4 | Jerry       | BCA        |
|         5 | radhika     | BSc.IT     |
+-----------+-------------+------------+
5 rows in set (0.001 sec)

MariaDB [task]> select Coursename ,count(*) as StudentCount from Enrollment group by Coursename;

+------------+----------+
| Coursename | StuCount |
+------------+----------+
| BCA        |        2 |
| BSc.IT     |        2 |
| CS         |        1 |
+------------+----------+
3 rows in set (0.001 sec)
