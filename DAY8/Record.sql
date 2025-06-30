
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
