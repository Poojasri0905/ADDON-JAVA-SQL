CREATE TABLE Student (
  Sid int,
  Sname varchar(15),
  Scourse varchar(10),
  Sdept varchar(10)
);


INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (1, 'Abi','computer' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (2, 'Thara','science' ,'manager');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (3, 'Akash','maths' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (4, 'Shivani','english' ,'clerk');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (5, 'Aishu','cs' ,'clerk');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (6, 'Ravi','maths' ,'manager');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (7, 'Pavi','english' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (8, 'Amala','science' ,'President');

select Scourse, count(*) as total_students
from Student
group by Scourse;

+----------+----------------+
| Scourse  | total_students |
+----------+----------------+
| computer |              1 |
| science  |              2 |
| maths    |              2 |
| english  |              2 |
| cs       |              1 |
+----------+----------------+