AVERAGE SALARY CALCULATION:

MariaDB [task]> --average salary calculation--
MariaDB [task]>  create table AverageSalary(
    -> EmpId int,
    -> EmpName varchar(90),
    -> DeptName varchar(90),
    -> Salary int);
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into  AverageSalary values (1,'Niksha','Informationtechnology',90000),(2,'shakshi','Informationtechnology',100000),(3,'nitara','Computerscience',70000),(4,'nethara','Bca',900000);
Query OK, 4 rows affected (0.003 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from AverageSalary;
+-------+---------+-----------------------+--------+
| EmpId | EmpName | DeptName              | Salary |
+-------+---------+-----------------------+--------+
|     1 | Niksha  | Informationtechnology |  90000 |
|     2 | shakshi | Informationtechnology | 100000 |
|     3 | nitara  | Computerscience       |  70000 |
|     4 | nethara | Bca                   | 900000 |
+-------+---------+-----------------------+--------+
4 rows in set (0.000 sec)

MariaDB [task]> select DeptName,avg(Salary) as Salary from AverageSalary group by DeptName;
+-----------------------+-------------+
| DeptName              | Salary      |
+-----------------------+-------------+
| Bca                   | 900000.0000 |
| Computerscience       |  70000.0000 |
| Informationtechnology |  95000.0000 |
+-----------------------+-------------+
3 rows in set (0.001 sec)