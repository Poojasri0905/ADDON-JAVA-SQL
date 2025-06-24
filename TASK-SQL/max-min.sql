  CREATE TABLE Product (
  PrId int,
  Prname varchar(15),
  Prprice int
);


INSERT INTO Product(PrId,Prname,Prprice) VALUES (1, 'clothes', 5000);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (2, 'earphones', 2500);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (3, 'vegetables', 350);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (4, 'fruits', 400);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (5, 'phone', 70000);

SELECT Prname, Prprice
FROM Product
WHERE Prprice = (SELECT MAX(Prprice) FROM Product);

+--------+---------+
| Prname | Prprice |
+--------+---------+
| phone  |   70000 |
+--------+---------+

SELECT Prname, Prprice
FROM Product
WHERE Prprice = (SELECT Min(Prprice) FROM Product);

Output:

+------------+---------+
| Prname     | Prprice |
+------------+---------+
| vegetables |     350 |
+------------+---------+
