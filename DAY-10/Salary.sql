mysql> use emp;
Database changed
mysql> select*from emp;
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


mysql> select sal
    -> from emp
    -> where sal >= 2000;
+---------+
| sal     |
+---------+
| 2975.00 |
| 2850.00 |
| 2450.00 |
| 3000.00 |
| 5000.00 |
| 3000.00 |
+---------+

mysql> select ename, sal, sal*12
    -> from emp
    -> where sal*12;
+--------+---------+----------+
| ename  | sal     | sal*12   |
+--------+---------+----------+
| SMITH  |  800.00 |  9600.00 |
| ALLEN  | 1600.00 | 19200.00 |
| WARD   | 1250.00 | 15000.00 |
| JONES  | 2975.00 | 35700.00 |
| MARTIN | 1250.00 | 15000.00 |
| BLAKE  | 2850.00 | 34200.00 |
| CLARK  | 2450.00 | 29400.00 |
| SCOTT  | 3000.00 | 36000.00 |
| KING   | 5000.00 | 60000.00 |
| TURNER | 1500.00 | 18000.00 |
| ADAMS  | 1100.00 | 13200.00 |
| JAMES  |  950.00 | 11400.00 |
| FORD   | 3000.00 | 36000.00 |
| MILLER | 1300.00 | 15600.00 |
+--------+---------+----------+

mysql> select ename, sal, sal*12 as Annual_salary
    -> from emp
    -> where sal*12 >= 12000;
+--------+---------+---------------+
| ename  | sal     | Annual_salary |
+--------+---------+---------------+
| ALLEN  | 1600.00 |      19200.00 |
| WARD   | 1250.00 |      15000.00 |
| JONES  | 2975.00 |      35700.00 |
| MARTIN | 1250.00 |      15000.00 |
| BLAKE  | 2850.00 |      34200.00 |
| CLARK  | 2450.00 |      29400.00 |
| SCOTT  | 3000.00 |      36000.00 |
| KING   | 5000.00 |      60000.00 |
| TURNER | 1500.00 |      18000.00 |
| ADAMS  | 1100.00 |      13200.00 |
| FORD   | 3000.00 |      36000.00 |
| MILLER | 1300.00 |      15600.00 |
+--------+---------+---------------+

mysql> select*
    -> from emp
    -> where deptno = 30 or job = 'analyst';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+

mysql> select*
    -> from emp
    -> where job = 'clerk' and sal <= 1500;
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like 'a%';
+-------+
| ename |
+-------+
| ALLEN |
| ADAMS |
+-------+

mysql>  select ename
    ->     -> from emp
    ->     -> where ename like 'a%';^C
mysql> select ename
    -> from emp
    -> where ename like 'a%n';
+-------+
| ename |
+-------+
| ALLEN |
+-------+
1 row in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like '%h';
+-------+
| ename |
+-------+
| SMITH |
+-------+

mysql> select ename
    -> from emp
    -> where ename like 'a___n';
+-------+
| ename |
+-------+
| ALLEN |
+-------+

mysql> select ename
    -> from emp
    -> where deptno in (20,30);
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| SCOTT  |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
+--------+
11 rows in set (0.03 sec)

mysql> select*
    -> from emp
    -> where deptno not in (10,30);
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+

mysql> select ename, hiredate
    -> from emp
    -> where hiredate > '1981-12-31';
+--------+------------+
| ename  | hiredate   |
+--------+------------+
| SCOTT  | 1982-12-09 |
| ADAMS  | 1983-01-12 |
| MILLER | 1982-01-23 |
+--------+------------+
3 rows in set (0.04 sec)

mysql> select ename, hiredate
    -> from emp
    -> where hiredate between '1981-12-31' and '1982-01-12';
Empty set (0.00 sec)

mysql> select ename, hiredate
    -> from emp
    -> where hiredate between  '1980-12-17' and '1983-01-12';
+--------+------------+
| ename  | hiredate   |
+--------+------------+
| SMITH  | 1980-12-17 |
| ALLEN  | 1981-02-20 |
| WARD   | 1981-02-22 |
| JONES  | 1981-04-02 |
| MARTIN | 1981-09-28 |
| BLAKE  | 1981-05-01 |
| CLARK  | 1981-06-09 |
| SCOTT  | 1982-12-09 |
| KING   | 1981-11-17 |
| TURNER | 1981-09-08 |
| ADAMS  | 1983-01-12 |
| JAMES  | 1981-12-03 |
| FORD   | 1981-12-03 |
| MILLER | 1982-01-23 |
+--------+------------+
14 rows in set (0.00 sec)

mysql> select count(*)
    -> from emp
    -> where sal < 2000 and deptno = 10;
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.03 sec)

mysql> select deptno,sal
    -> frpm emp
    -> where deptno=10;^C
mysql> select count(ename)
    -> from emp
    -> where sal<2000 and deptno=10;
+--------------+
| count(ename) |
+--------------+
|            1 |
+--------------+

mysql> select sum(sal)
    -> from emp
    -> where job = 'clerk';
+----------+
| sum(sal) |
+----------+
|  4150.00 |
+----------+

mysql> select sum(sal)
    -> from emp
    -> where job = 'clerk';
+----------+
| sum(sal) |
+----------+
|  4150.00 |
+----------+
1 row in set (0.00 sec)

mysql> select sum(ename)
    -> from emp
    -> where job='clerk' group by ename;
+------------+
| sum(ename) |
+------------+
|          0 |
|          0 |
|          0 |
|          0 |
+------------+
4 rows in set, 4 warnings (0.00 sec)

mysql> select sum(sal)
    -> from emp
    -> where job='clerk' group by ename;
+----------+
| sum(sal) |
+----------+
|   800.00 |
|  1100.00 |
|   950.00 |
|  1300.00 |
+----------+
4 rows in set (0.00 sec)

mysql> select avg(sal),sum(sal),max(sal)
    -> from emp where job='clerk';
+-------------+----------+----------+
| avg(sal)    | sum(sal) | max(sal) |
+-------------+----------+----------+
| 1037.500000 |  4150.00 |  1300.00 |
+-------------+----------+----------+
mysql> select sum(sal)
    -> from emp
    -> group by job;
+----------+
| sum(sal) |
+----------+
|  4150.00 |
|  5600.00 |
|  8275.00 |
|  6000.00 |
|  5000.00 |
+----------+

mysql> select sum(sal),job
    -> from emp
    -> group by job;
+----------+-----------+
| sum(sal) | job       |
+----------+-----------+
|  4150.00 | CLERK     |
|  5600.00 | SALESMAN  |
|  8275.00 | MANAGER   |
|  6000.00 | ANALYST   |
|  5000.00 | PRESIDENT |
+----------+-----------+

mysql> select sum(sal)
    -> from emp
    -> group by job
    -> having sum(sal) > 5000;
+----------+
| sum(sal) |
+----------+
|  5600.00 |
|  8275.00 |
|  6000.00 |
+----------+
mysql> select count(*),deptno from emp where job='clerk' group by deptno having count(*)>=2;
+----------+--------+
| count(*) | deptno |
+----------+--------+
|        2 |     20 |
+----------+--------+