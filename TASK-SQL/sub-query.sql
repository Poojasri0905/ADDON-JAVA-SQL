create table mark(
    -> stdmark int
    -> );
 insert into mark values (95);
 insert into mark values (78);
 insert into mark values (72);
 insert into mark values (80);
 insert into mark values (86);
 select*from mark;
+----------+
| stdmark  |
+----------+
|       95 |
|       78 |
|       72 |
|       80 |
|       86 |
+----------+

 select*
    -> from mark
    -> where stdmark=(select max(stdmark)
    -> from mark);

 select*from mark where stdmark=(select max(stdmark) from mark);
+----------+
| stdmark  |
+----------+
|       95 |
+----------+
