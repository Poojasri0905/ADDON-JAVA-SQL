mysql> create database studmark;
Query OK, 1 row affected (0.04 sec)

mysql> use studmark;
Database changed
mysql> create table studmark(
    -> rollno int,
    -> studname varchar(20),
    -> dept varchar(20),
    -> sub varchar(20),
    -> mark int);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into studmark values(1,'poojasri','ct','science',95);
Query OK, 1 row affected (0.05 sec)

mysql> insert into studmark values(2,'abinaya','it','maths',85);
Query OK, 1 row affected (0.05 sec)

mysql> insert into studmark values(3,'asha','cs','english',70);
Query OK, 1 row affected (0.05 sec)

mysql> insert into studmark values(4,'yarshu','bca','tamil',65);
Query OK, 1 row affected (0.04 sec)

mysql> insert into studmark values(5,'koushi','bba','computer',75);
Query OK, 1 row affected (0.01 sec)

mysql> select*from studmark;
+--------+----------+------+----------+------+
| rollno | studname | dept | sub      | mark |
+--------+----------+------+----------+------+
|      1 | poojasri | ct   | science  |   95 |
|      2 | abinaya  | it   | maths    |   85 |
|      3 | asha     | cs   | english  |   70 |
|      4 | yarshu   | bca  | tamil    |   65 |
|      5 | koushi   | bba  | computer |   75 |
+--------+----------+------+----------+------+
5 rows in set (0.00 sec)

mysql> select*
    -> from studmark
    -> where mark>80;
+--------+----------+------+---------+------+
| rollno | studname | dept | sub     | mark |
+--------+----------+------+---------+------+
|      1 | poojasri | ct   | science |   95 |
|      2 | abinaya  | it   | maths   |   85 |
+--------+----------+------+---------+------+