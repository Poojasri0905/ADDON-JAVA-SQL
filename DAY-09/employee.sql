
mysql> create database employee;
Query OK, 1 row affected (0.04 sec)

mysql> use employee;
Database changed
mysql> create table employee(
    -> empid int primary key,
    -> name varchar(25),
    -> dept varchar(25),
    -> salary int,
    -> joindate date
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empid    | int         | NO   | PRI | NULL    |       |
| name     | varchar(25) | YES  |     | NULL    |       |
| dept     | varchar(25) | YES  |     | NULL    |       |
| salary   | int         | YES  |     | NULL    |       |
| joindate | date        | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
mysql> insert into employee(empid,name,dept,salary,joindate) values
    -> (1, 'pooja', 'finance', 50000, '2006-05-09'),
    -> (2, 'abinaya','marketing', 45000, '2006-02-11'),
    -> (3, 'sahana', 'finance', 50000, '2004-09,05'),
    -> (4, 'koushi', 'hr', 45000, '2004-10-08'),
    -> (5, 'meena', 'wd', 40000, '2000-03-24'),
    -> (6, 'asha', 'hr', 50000, '2006-05-22');
Query OK, 6 rows affected, 1 warning (0.06 sec)
Records: 6  Duplicates: 0  Warnings: 1

mysql> select*from employee;
+-------+---------+-----------+--------+------------+
| empid | name    | dept      | salary | joindate   |
+-------+---------+-----------+--------+------------+
|     1 | pooja   | finance   |  50000 | 2006-05-09 |
|     2 | abinaya | marketing |  45000 | 2006-02-11 |
|     3 | sahana  | finance   |  50000 | 2004-09-05 |
|     4 | koushi  | hr        |  45000 | 2004-10-08 |
|     5 | meena   | wd        |  40000 | 2000-03-24 |
|     6 | asha    | hr        |  50000 | 2006-05-22 |
+-------+---------+-----------+--------+------------+
6 rows in set (0.00 sec)
mysql> insert into employee(empid,name,dept,salary,joindate) values
    -> (1, 'pooja', 'finance', 50000, '2006-05-09'),
    -> (2, 'abinaya','marketing', 45000, '2006-02-11'),
    -> (3, 'sahana', 'finance', 50000, '2004-09,05'),
    -> (4, 'koushi', 'hr', 45000, '2004-10-08'),
    -> (5, 'meena', 'wd', 40000, '2000-03-24'),
    -> (6, 'asha', 'hr', 50000, '2006-05-22');
Query OK, 6 rows affected, 1 warning (0.06 sec)
Records: 6  Duplicates: 0  Warnings: 1

mysql> select*from employee where dept='finance';
+-------+--------+---------+--------+------------+
| empid | name   | dept    | salary | joindate   |
+-------+--------+---------+--------+------------+
|     1 | pooja  | finance |  50000 | 2006-05-09 |
|     3 | sahana | finance |  50000 | 2004-09-05 |

mysql> update employee set name='poojasri' where name='pooja';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from employee;
+-------+----------+-----------+--------+------------+
| empid | name     | dept      | salary | joindate   |
+-------+----------+-----------+--------+------------+
|     1 | poojasri | finance   |  50000 | 2006-05-09 |
|     2 | abinaya  | marketing |  45000 | 2006-02-11 |
|     3 | sahana   | finance   |  50000 | 2004-09-05 |
|     4 | koushi   | hr        |  45000 | 2004-10-08 |
|     5 | meena    | wd        |  40000 | 2000-03-24 |
|     6 | asha     | hr        |  50000 | 2006-05-22 |
+-------+----------+-----------+--------+------------+
6 rows in set (0.00 sec)

mysql> update employee set salary=salary + 5000 where dept = 'hr';
Query OK, 2 rows affected (0.03 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select*from employee;
+-------+----------+-----------+--------+------------+
| empid | name     | dept      | salary | joindate   |
+-------+----------+-----------+--------+------------+
|     1 | poojasri | finance   |  50000 | 2006-05-09 |
|     2 | abinaya  | marketing |  45000 | 2006-02-11 |
|     3 | sahana   | finance   |  50000 | 2004-09-05 |
|     4 | koushi   | hr        |  50000 | 2004-10-08 |
|     5 | meena    | wd        |  40000 | 2000-03-24 |
|     6 | asha     | hr        |  55000 | 2006-05-22 |
+-------+----------+-----------+--------+------------+
mysql> rename table employee to employees;
Query OK, 0 rows affected (0.07 sec)

mysql> select*from employees;
+-------+----------+-----------+--------+------------+
| empid | name     | dept      | salary | joindate   |
+-------+----------+-----------+--------+------------+
|     1 | poojasri | finance   |  50000 | 2006-05-09 |
|     2 | abinaya  | marketing |  45000 | 2006-02-11 |
|     3 | sahana   | finance   |  50000 | 2004-09-05 |
|     4 | koushi   | hr        |  50000 | 2004-10-08 |
|     5 | meena    | wd        |  40000 | 2000-03-24 |
|     6 | asha     | hr        |  55000 | 2006-05-22 |
+-------+----------+-----------+--------+------------+
mysql> alter table employees
    -> rename column dept to department;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from employees;
+-------+----------+------------+--------+------------+
| empid | name     | department | salary | joindate   |
+-------+----------+------------+--------+------------+
|     1 | poojasri | finance    |  50000 | 2006-05-09 |
|     2 | abinaya  | marketing  |  45000 | 2006-02-11 |
|     3 | sahana   | finance    |  50000 | 2004-09-05 |
|     4 | koushi   | hr         |  50000 | 2004-10-08 |
|     5 | meena    | wd         |  40000 | 2000-03-24 |
|     6 | asha     | hr         |  55000 | 2006-05-22 |
+-------+----------+------------+--------+------------+
mysql> delete from employees
    -> where empid = 6;
Query OK, 1 row affected (0.04 sec)

mysql> select*from employees;
+-------+----------+------------+--------+------------+
| empid | name     | department | salary | joindate   |
+-------+----------+------------+--------+------------+
|     1 | poojasri | finance    |  50000 | 2006-05-09 |
|     2 | abinaya  | marketing  |  45000 | 2006-02-11 |
|     3 | sahana   | finance    |  50000 | 2004-09-05 |
|     4 | koushi   | hr         |  50000 | 2004-10-08 |
|     5 | meena    | wd         |  40000 | 2000-03-24 |
+-------+----------+------------+--------+------------+
mysql> select*from employees order by salary desc;
+-------+----------+------------+--------+------------+
| empid | name     | department | salary | joindate   |
+-------+----------+------------+--------+------------+
|     1 | poojasri | finance    |  50000 | 2006-05-09 |
|     3 | sahana   | finance    |  50000 | 2004-09-05 |
|     4 | koushi   | hr         |  50000 | 2004-10-08 |
|     2 | abinaya  | marketing  |  45000 | 2006-02-11 |
|     5 | meena    | wd         |  40000 | 2000-03-24 |
+-------+----------+------------+--------+------------+