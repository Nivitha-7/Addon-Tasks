ASCENDING ORDER:

MariaDB [task]> select * from courses;
ERROR 1146 (42S02): Table 'task.courses' doesn't exist
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

MariaDB [task]> update course set coursefee=30000 where courseid=222;
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update course set coursefee=30000 where courseid=333;
Query OK, 1 row affected (0.001 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update course set coursefee=70000 where courseid=555,
    -> select * from course;

MariaDB [task]> select * from course order by coursefee;
+----------+------------+----------------+-----------+
| courseid | coursename | instructorname | coursefee |
+----------+------------+----------------+-----------+
|      111 | java       | neil           |     10000 |
|      444 | cpp        | soha           |     10000 |
|      222 | python     | ayush          |     30000 |
|      333 | linux      | ved            |     30000 |
|      555 | dsa        | saha           |     70000 |
+----------+------------+----------------+-----------+
5 rows in set (0.001 sec)

MariaDB [task]> select coursefee from course order by coursefee;
+-----------+
| coursefee |
+-----------+
|     10000 |
|     10000 |
|     30000 |
|     30000 |
|     70000 |
+-----------+
5 rows in set (0.000 sec)