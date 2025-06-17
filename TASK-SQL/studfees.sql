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
mysql> alter table studmark add column fees int;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update studmark set fees=50000 where mark=70;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update studmark set fees=60000 where mark=65;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update studmark set fees=45000 where mark=75;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update studmark set fees=40000 where mark=85;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update studmark set fees=30000 where mark=95;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from studmark;l
+--------+----------+------+----------+------+-------+
| rollno | studname | dept | sub      | mark | fees  |
+--------+----------+------+----------+------+-------+
|      1 | poojasri | ct   | science  |   95 | 30000 |
|      2 | abinaya  | it   | maths    |   85 | 40000 |
|      3 | asha     | cs   | english  |   70 | 50000 |
|      4 | yarshu   | bca  | tamil    |   65 | 60000 |
|      5 | koushi   | bba  | computer |   75 | 45000 |
+--------+----------+------+----------+------+-------+
mysql> select*from studmark order by fees asc;
+--------+----------+------+----------+------+-------+
| rollno | studname | dept | sub      | mark | fees  |
+--------+----------+------+----------+------+-------+
|      1 | poojasri | ct   | science  |   95 | 30000 |
|      2 | abinaya  | it   | maths    |   85 | 40000 |
|      5 | koushi   | bba  | computer |   75 | 45000 |
|      3 | asha     | cs   | english  |   70 | 50000 |
|      4 | yarshu   | bca  | tamil    |   65 | 60000 |
+--------+----------+------+----------+------+-------+