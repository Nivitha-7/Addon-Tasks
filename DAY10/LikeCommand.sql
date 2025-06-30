KEYWORDS LIKE:

MariaDB [task]> create table books(
    -> BookId int,
    -> BookName varchar(90),
    -> BookCount int);
Query OK, 0 rows affected (0.009 sec)


MariaDB [task]> insert into books values(111,'ThenaliRaman Stories',500),(222,'Fairy Tales',700),(333,'TheJungleBook',600),(444,'BhagavadGita',900),(555,'Bible',800);
Query OK, 5 rows affected (0.002 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from books;
+--------+----------------------+-----------+
| BookId | BookName             | BookCount |
+--------+----------------------+-----------+
|    111 | ThenaliRaman Stories |       500 |
|    222 | Fairy Tales          |       700 |
|    333 | TheJungleBook        |       600 |
|    444 | BhagavadGita         |       900 |
|    555 | Bible                |       800 |
+--------+----------------------+-----------+
5 rows in set (0.000 sec)

MariaDB [task]> select * from books where BookName like '%b';
Empty set (0.000 sec)

MariaDB [task]> select * from books where BookName like 'b%';
+--------+--------------+-----------+
| BookId | BookName     | BookCount |
+--------+--------------+-----------+
|    444 | BhagavadGita |       900 |
|    555 | Bible        |       800 |
+--------+--------------+-----------+
2 rows in set (0.000 sec)

MariaDB [task]> select * from books where BookName like '%a%';
+--------+----------------------+-----------+
| BookId | BookName             | BookCount |
+--------+----------------------+-----------+
|    111 | ThenaliRaman Stories |       500 |
|    222 | Fairy Tales          |       700 |
|    444 | BhagavadGita         |       900 |
+--------+----------------------+-----------+
3 rows in set (0.001 sec)

MariaDB [task]> select * from books where BookName like '%s';
+--------+----------------------+-----------+
| BookId | BookName             | BookCount |
+--------+----------------------+-----------+
|    111 | ThenaliRaman Stories |       500 |
|    222 | Fairy Tales          |       700 |
+--------+----------------------+-----------+
2 rows in set (0.000 sec)