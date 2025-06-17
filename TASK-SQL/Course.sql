mysql> create table Course(
    -> Coursefee int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into course values(10000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(20000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(30000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(40000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(50000);
Query OK, 1 row affected (0.01 sec)

mysql> select*
    -> from course;
+-----------+
| Coursefee |
+-----------+
|     10000 |
|     20000 |
|     30000 |
|     40000 |
|     50000 |
+-----------+

mysql> update course
    -> set coursefee=60000
    -> where coursefee=50000;
mysql> select*from course
    -> ;
+-----------+
| Coursefee |
+-----------+
|     10000 |
|     20000 |
|     30000 |
|     40000 |
|     60000 |
+-----------+