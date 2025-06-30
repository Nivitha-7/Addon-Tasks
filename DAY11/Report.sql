REPORT:

MariaDB [task]> create table report(
    -> deptno int,
    -> deptname varchar(10),
    -> name varchar(10),
    -> salary int);
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into  report values(1,'HR','Rani',50000),(2,'HR','ramu',30000),(3,'Testing','geetham',80000),(4,'development','manasa',75000);
Query OK, 4 rows affected, 1 warning (0.003 sec)
Records: 4  Duplicates: 0  Warnings: 1

MariaDB [task]> select * from report;
+--------+------------+---------+--------+
| deptno | deptname   | name    | salary |
+--------+------------+---------+--------+
|      1 | HR         | Rani    |  50000 |
|      2 | HR         | ramu    |  30000 |
|      3 | Testing    | geetham |  80000 |
|      4 | developmen | manasa  |  75000 |
+--------+------------+---------+--------+
4 rows in set (0.000 sec)

MariaDB [task]> select deptname,count(*)as totalemployees,sum(salary) as totalsalary,avg(salary) as averagesalary,min(salary)as minimumsalary,max(salary)as maximumsalary from report group by deptname;
+------------+----------------+-------------+---------------+---------------+---------------+
| deptname   | totalemployees | totalsalary | averagesalary | minimumsalary | maximumsalary |
+------------+----------------+-------------+---------------+---------------+---------------+
| developmen |              1 |       75000 |    75000.0000 |         75000 |         75000 |
| HR         |              2 |       80000 |    40000.0000 |         30000 |         50000 |
| Testing    |              1 |       80000 |    80000.0000 |         80000 |         80000 |
+------------+----------------+-------------+---------------+---------------+---------------+
3 rows in set (0.001 sec)

