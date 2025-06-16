Create table Student(
    -> rollno int,
    -> name varchar(20),
    -> dep varchar(20),
    -> course varchar(20)
    -> );
insert into student
    -> values(76543,'abinaya','bsc ct','mysql');
 insert into student
    -> values(76544,'vinisha','bsc ct','mysql'); insert into student
 insert into student
    -> values(76545,'sujitha','bsc ct','mysql');
insert into student
    -> values(76546,'sahana','bsc ct','mysql');

 insert into student
    -> values(76547,'pooja','bsc ct','mysql');

mysql> select*
    -> from Student;
+--------+--------+--------+--------+
| rollno | name   | dep    | course |
+--------+--------+--------+--------+
|  76543 | abinaya| bsc ct | mysql  |
|  76544 | vinisha| bsc ct | mysql  |
|  76545 | sujitha| bsc ct | mysql  |
|  76546 | sahana | bsc ct | mysql  |
|  76547 | pooja  | bsc ct | mysql  |
+--------+--------+--------+--------+
 select name
    -> from student;
+--------+
| name   |
+--------+
| abinaya|
| vinisha|
| sujitha|
| sahana |
| pooja  |
+--------+
 alter table student
    -> add column percentange int;
mysql> select * from student;
+--------+--------+--------+--------+-------------+
| rollno | name   | dep    | course | percentange |
+--------+--------+--------+--------+-------------+
|  76543 | abinaya| bsc ct | mysql  |        NULL |
|  76544 | vinisha| bsc ct | mysql  |        NULL |
|  76545 | sujitha| bsc ct | mysql  |        NULL |
|  76546 | sahana | bsc ct | mysql  |        NULL |
|  76547 | pooja  | bsc ct | mysql  |        NULL |
+--------+--------+--------+--------+-------------+
 update student set percentange="80" where name ="sakthi";
mysql> select * from student;
+--------+--------+--------+--------+-------------+
| rollno | name   | dep    | course | percentange |
+--------+--------+--------+--------+-------------+
|  76543 | abinaya| bsc ct | mysql  |          80 |
|  76544 | vinisha| bsc ct | mysql  |        NULL |
|  76545 | sujitha| bsc ct | mysql  |        NULL |
|  76546 | sahana | bsc ct | mysql  |        NULL |
|  76547 | pooja  | bsc ct | mysql  |        NULL |
+--------+--------+--------+--------+-------------+