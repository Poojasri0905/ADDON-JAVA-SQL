show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.02 sec)

mysql> create database Student;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| student            |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use student;
Database changed
mysql> create table Student (
    -> sname varchar(50),
    -> sroll int,
    -> sgmail varchar(50),
    -> phnum int
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> insert into Student values('pooja',232633,'pooja@gmail.com',);
Query OK, 1 row affected (0.03 sec)

mysql> select*
    -> from Student;
+-----------+--------+---------------------+----------+
| sname     | sroll  | sgmail              | phnum    |
+-----------+--------+---------------------+----------+
| pooja     | 232633 | pooja@gmail.com     |929472567 |
+-----------+--------+---------------------+----------+
1 row in set (0.00 sec)

mysql> insert into student values('lithu',232606,'lithu@gmail.com',807535771);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('abi',232601,'abi@gmail.com',952789382);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('yarsh',232656,'yarsh@gmail.com',804672444);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('asha',232642,'asha@gmail.com',689045243);
Query OK, 1 row affected (0.01 sec)

mysql> select*
    -> from Student;
+-----------+--------+---------------------+-----------+
| sname     | sroll  | sgmail              | phnum     |
+-----------+--------+---------------------+-----------+
| pooja     | 232633 | pooja@gmail.com     | 929472567 |
| lithu     | 232606 | lithu@gmail.com     | 807535771 |
| abi       | 232601 | abi@gmail.com       | 952789382 |
| yarsh     | 232656 | yarsh@gmail.com     | 804672444 |
| asha      | 232622 | asha@gmail.com      | 689045243 |
+-----------+--------+---------------------+-----------+
5 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)

mysql> update course
    -> set coursefee=60000
    -> where coursefee=50000;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> select*from course;
+-----------+
| Coursefee |
+-----------+
|     10000 |
|     20000 |
|     30000 |
|     40000 |
|     60000 |
+-----------+
5 rows in set (0.00 sec)

mysql> select*from student;
+-----------+--------+---------------------+-----------+
| sname     | sroll  | sgmail              | phnum     |
+-----------+--------+---------------------+-----------+
| pooja     | 232633 | pooja@gmail.com     | 929472567 |
| lithu     | 232606 | lithu@gmail.com     | 807535771 |
| abi       | 232601 | abi@gmail.com       | 952789382 |
| yarsh     | 232656 | yarsh@gmail.com     | 804672444 |
| asha      | 232622 | asha@gmail.com      | 689045243 |
+-----------+--------+---------------------+-----------+
5 rows in set (0.00 sec)