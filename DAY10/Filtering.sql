FILTERING
MariaDB [task]> create table employee(
    -> Customerid int,
    -> Firstname varchar(10),
    -> city varchar(10),
    -> age int);
Query OK, 0 rows affected (0.012 sec)

MariaDB [task]> insert into employee values(1,'john','newyork',23),(2,'charle','newyork',23),(3,'wales','denmark',25);
Query OK, 3 rows affected (0.003 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from employee;
+------------+-----------+---------+------+
| Customerid | Firstname | city    | age  |
+------------+-----------+---------+------+
|          1 | john      | newyork |   23 |
|          2 | charle    | newyork |   23 |
|          3 | wales     | denmark |   25 |
+------------+-----------+---------+------+
3 rows in set (0.000 sec)

MariaDB [task]> select * from employee where city='denmark';
+------------+-----------+---------+------+
| Customerid | Firstname | city    | age  |
+------------+-----------+---------+------+
|          3 | wales     | denmark |   25 |
+------------+-----------+---------+------+
1 row in set (0.000 sec)