mysql> create table books(
    -> sno int,
    -> Booksname varchar(20)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into books values(1,'Python');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(2,'Java');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(3,'Accountancy');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(4,'C');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(5,'C++');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(6,'Economic');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(7,'JavaScript');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values(8,'Maths');
Query OK, 1 row affected (0.00 sec)

mysql> select* from books;
+------+-------------+
| sno  | Booksname   |
+------+-------------+
|    1 | Python      |
|    2 | Java        |
|    3 | Accountancy |
|    4 | C           |
|    5 | C++         |
|    6 | Economic    |
|    7 | JavaScript  |
|    8 | Maths       |
+------+-------------+
8 rows in set (0.00 sec)

mysql> select Booksname
    -> from books
    -> where Booksname like 'c%';
+--------------+
| Booksname    |
+--------------+
| C            |
| C++          |
+--------------+
2 rows in set (0.03 sec)
mysql> select Booksname
    -> from books
    -> where Booksname like '%y';
+-----------------------+
| Booksname             |
+-----------------------+
| Acountancy            |
+-----------------------+
1 row in set (0.00 sec)