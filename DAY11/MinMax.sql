
MariaDB [task]> create table product(
    -> productid int,
    -> productname varchar(10),
    -> productprice int);
Query OK, 0 rows affected (0.010 sec)

MariaDB [task]> insert into product values(1,'pen',50),(2,'Sketch',200),(3,'bag',700),(4,'books',800);
Query OK, 4 rows affected (0.003 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from product;
+-----------+-------------+--------------+
| productid | productname | productprice |
+-----------+-------------+--------------+
|         1 | pen         |           50 |
|         2 | Sketch      |          200 |
|         3 | bag         |          700 |
|         4 | books       |          800 |
+-----------+-------------+--------------+
4 rows in set (0.000 sec)S