create table student(
    -> srollno int,
    -> sname varchar(20),
    -> course varchar(30)
    -> );

insert into student values(232601,'Rubi','java');
insert into student values(232602,'Abi','c');
insert into student values(232603,'pooja','c++');
insert into student values(232604,'punitha','sql');
insert into student values(232605,'pavi','java');
insert into student values(232606,'Thara','sql');
insert into student values(232607,'Sharu','java');
insert into student values(232607,'Kiki','c');
insert into student values(232609,'Vaish','sql');
insert into student values(232610,'Nandhu','java');

select*from student;
+---------+---------+--------+
| srollno | sname   | course |
+---------+---------+--------+
|  232601 | Rubi    | java   |
|  232602 | Abi     | c      |
|  232603 | pooja   | c++    |
|  232604 | punitha | sql    |
|  232605 | pavi    | java   |
|  232606 | Thara   | sql    |
|  232607 | Sharu   | java   |
|  232607 | Kiki    | c      |
|  232609 | Vaish   | sql    |
|  232610 | Nandhu  | java   |
+---------+---------+--------+

mysql> select count(*);
+----------+
| count(*) |
+----------+
|        1 |
+----------+


mysql> select course,count(*) as studcount from student group by course;
+--------+-----------+
| course | studcount |
+--------+-----------+
| java   |         4 |
| c      |         2 |
| c++    |         1 |
| sql    |         3 |
+--------+-----------+
