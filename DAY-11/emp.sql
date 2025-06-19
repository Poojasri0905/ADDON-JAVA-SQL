mysql> CREATE TABLE dept (
    ->   deptno decimal(2,0) default NULL,
    ->   dname varchar(14) default NULL,
    ->   loc varchar(13) default NULL
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('30','SALES','CHICAGO');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
Query OK, 1 row affected (0.01 sec)

mysql> select* from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select ename from emp where deptno=(select deptno from emp where ename='king');
+--------+
| ename  |
+--------+
| CLARK  |
| KING   |
| MILLER |
+--------+
3 rows in set (0.00 sec)

mysql> select* from emp where deptno=10;
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> select ename from emp where deptno in(select deptno from emp where ename='king');
+--------+
| ename  |
+--------+
| CLARK  |
| KING   |
| MILLER |
+--------+
3 rows in set (0.00 sec)

 select ename from emp where deptno=(select deptno from emp where ename='scott');
+-------+
| ename |
+-------+
| SMITH |
| JONES |
| SCOTT |
| ADAMS |
| FORD  |
+-------+
5 rows in set (0.00 sec)

mysql> select* from emp where sal=(select max(sal) from emp);
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
+-------+-------+-----------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select ename from emp where sal >(select sal from emp where ename = 'smith');
+--------+
| ename  |
+--------+
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
13 rows in set (0.00 sec)

mysql> select*from emp where sal=(select min(sal)from emp where job='manager');
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
+-------+-------+---------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select*from emp where sal>(select avg(sal) from emp);
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select* from emp where sal=(select min(sal)
    -> from emp where sal>(select min(sal) from emp));
+-------+-------+-------+------+------------+--------+------+--------+
| empno | ename | job   | mgr  | hiredate   | sal    | comm | deptno |
+-------+-------+-------+------+------------+--------+------+--------+
|  7900 | JAMES | CLERK | 7698 | 1981-12-03 | 950.00 | NULL |     30 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.00 sec)

 select* from emp where sal=(select min(sal)
    -> from emp where sal>(select min(sal)
    -> from emp where sal>(select min(sal) from emp)));
+-------+-------+-------+------+------------+---------+------+--------+
| empno | ename | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-------+------+------------+---------+------+--------+
|  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
+-------+-------+-------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select ename from emp where sal>=All(select sal from emp where deptno=10);
+-------+
| ename |
+-------+
| KING  |
+-------+
1 row in set (0.00 sec)


mysql> select ename from emp where empno=(select mgr from emp where ename='Allen');
+-------+
| ename |
+-------+
| BLAKE |
+-------+
1 row in set (0.00 sec)

mysql> select ename from emp where empno=(select mgr from emp where empno=(select mgr from emp where ename=('smith')));
+-------+
| ename |
+-------+
| JONES |
+-------+
1 row in set (0.00 sec)
mysql> select ename from emp where mgr=(select empno from emp where ename='king');
+-------+
| ename |
+-------+
| JONES |
| BLAKE |
| CLARK |
+-------+
3 rows in set (0.00 sec)

mysql> select* from emp cross join dept;
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno | deptno | dname      | loc      |
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |     30 | SALES      | CHICAGO  |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |     30 | SALES      | CHICAGO  |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |     30 | SALES      | CHICAGO  |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |     40 | OPERATIONS | BOSTON   |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |     20 | RESEARCH   | DALLAS   |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |     10 | ACCOUNTING | NEW YORK |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |     40 | OPERATIONS | BOSTON   |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |     30 | SALES      | CHICAGO  |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |     20 | RESEARCH   | DALLAS   |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |     40 | OPERATIONS | BOSTON   |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |     30 | SALES      | CHICAGO  |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |     20 | RESEARCH   | DALLAS   |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |     40 | OPERATIONS | BOSTON   |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |     30 | SALES      | CHICAGO  |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |     20 | RESEARCH   | DALLAS   |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |     10 | ACCOUNTING | NEW YORK |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |     40 | OPERATIONS | BOSTON   |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |     10 | ACCOUNTING | NEW YORK |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |     40 | OPERATIONS | BOSTON   |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |     30 | SALES      | CHICAGO  |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |     10 | ACCOUNTING | NEW YORK |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |     40 | OPERATIONS | BOSTON   |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |     30 | SALES      | CHICAGO  |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |     20 | RESEARCH   | DALLAS   |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
56 rows in set (0.00 sec)
mysql> select ename,loc from emp,dept where emp.deptno=dept.deptno;
+--------+----------+
| ename  | loc      |
+--------+----------+
| SMITH  | DALLAS   |
| ALLEN  | CHICAGO  |
| WARD   | CHICAGO  |
| JONES  | DALLAS   |
| MARTIN | CHICAGO  |
| BLAKE  | CHICAGO  |
| CLARK  | NEW YORK |
| SCOTT  | DALLAS   |
| KING   | NEW YORK |
| TURNER | CHICAGO  |
| ADAMS  | DALLAS   |
| JAMES  | CHICAGO  |
| FORD   | DALLAS   |
| MILLER | NEW YORK |
+--------+----------+
14 rows in set (0.00 sec)

mysql> select dname,sal from emp,dept where emp.deptno=dept.deptno;
+------------+---------+
| dname      | sal     |
+------------+---------+
| RESEARCH   |  800.00 |
| SALES      | 1600.00 |
| SALES      | 1250.00 |
| RESEARCH   | 2975.00 |
| SALES      | 1250.00 |
| SALES      | 2850.00 |
| ACCOUNTING | 2450.00 |
| RESEARCH   | 3000.00 |
| ACCOUNTING | 5000.00 |
| SALES      | 1500.00 |
| RESEARCH   | 1100.00 |
| SALES      |  950.00 |
| RESEARCH   | 3000.00 |
| ACCOUNTING | 1300.00 |
+------------+---------+
14 rows in set (0.00 sec)
mysql> select dname,sal from emp,dept where emp.deptno=dept.deptno and dname='accounting';
+------------+---------+
| dname      | sal     |
+------------+---------+
| ACCOUNTING | 2450.00 |
| ACCOUNTING | 5000.00 |
| ACCOUNTING | 1300.00 |
+------------+---------+
3 rows in set (0.00 sec)

mysql> select* from emp left outer join dept on emp.deptno=dept.deptno;
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno | deptno | dname      | loc      |
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |     30 | SALES      | CHICAGO  |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |     30 | SALES      | CHICAGO  |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |     30 | SALES      | CHICAGO  |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |     30 | SALES      | CHICAGO  |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |     30 | SALES      | CHICAGO  |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |     20 | RESEARCH   | DALLAS   |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |     10 | ACCOUNTING | NEW YORK |
+-------+--------+-----------+------+------------+---------+---------+--------+--------+------------+----------+
14 rows in set (0.00 sec)

mysql> select  e1.ename emp_name,e2.sal mgr_sal from emp e1,emp e2 where e1.mgr=e2.empno and e2. sal>2300 and e1.sal>2300;
+----------+---------+
| emp_name | mgr_sal |
+----------+---------+
| FORD     | 2975.00 |
| SCOTT    | 2975.00 |
| CLARK    | 5000.00 |
| BLAKE    | 5000.00 |
| JONES    | 5000.00 |
+----------+---------+
5 rows in set (0.00 sec)