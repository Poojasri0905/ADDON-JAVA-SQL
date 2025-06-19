CREATE TABLE Employee (
  EmpId int,
  Ename varchar(15),
  Edept varchar(10),
  Esalary int
);

INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (1, 'Pavi', 'Accounting', 550000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (2, 'Aishu', 'Salesman', 20000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (3, 'Kavya', 'Clerk', 40000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (4, 'Asha', 'Manager', 45000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (5, 'Dharshu', 'Clerk', 40000);

SELECT Edept, avg(Esalary) as average_salary
FROM Employee
group by Edept;

+------------+----------------+
| Edept      | average_salary |
+------------+----------------+
| Accounting |     55000.0000 |
| Salesman   |     20000.0000 |
| Clerk      |     40000.0000 |
| Manager    |     45000.0000 |
+------------+----------------+