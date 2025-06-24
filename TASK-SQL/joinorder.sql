 create table orders(
    -> orderid int,
    -> customername varchar(50),
    -> amount int
    -> );

insert into orders values(101,'Rubi',550);
insert into orders values(102,'Abi',600);
insert into orders values(103,'Puni',650);
create table customers(
    -> sno int,
    -> customerplace varchar(40)
    -> );
 
insert into customers values(1,'India');
insert into customers values(2,'America');
insert into customers values(3,'Canada');

select*from orders,customers;
+---------+--------------+--------+------+---------------+
| orderid | customername | amount | sno  | customerplace |
+---------+--------------+--------+------+---------------+
|     103 | Puni         |    650 |    1 | India         |
|     102 | Abi          |    600 |    1 | India         |
|     101 | Rubi         |    550 |    1 | India         |
|     103 | Puni         |    650 |    2 | America       |
|     102 | Abi          |    600 |    2 | America       |
|     101 | Rubi         |    550 |    2 | America       |
|     103 | Puni         |    650 |    3 | Canada        |
|     102 | Abi          |    600 |    3 | Canada        |
|     101 | Rubi         |    550 |    3 | Canada        |
+---------+--------------+--------+------+---------------+

select*from orders cross join customers;
+---------+--------------+--------+------+---------------+
| orderid | customername | amount | sno  | customerplace |
+---------+--------------+--------+------+---------------+
|     103 | Puni         |    650 |    1 | India         |
|     102 | Abi          |    600 |    1 | India         |
|     101 | Rubi         |    550 |    1 | India         |
|     103 | Puni         |    650 |    2 | America       |
|     102 | Abi          |    600 |    2 | America       |
|     101 | Rubi         |    550 |    2 | America       |
|     103 | Puni         |    650 |    3 | Canada        |
|     102 | Abi          |    600 |    3 | Canada        |
|     101 | Rubi         |    550 |    3 | Canada        |
+---------+--------------+--------+------+---------------+
