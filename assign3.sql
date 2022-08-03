 sudo mysql
[sudo] password for ubuntu: 
Sorry, try again.
[sudo] password for ubuntu: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database employee;
Query OK, 1 row affected (0.00 sec)

mysql> use employee;
Database changed
mysql> create table emp_info(emp_id int primary key auto_increment
    -> ,emp_name varchar(15),city varchar(10) DEFAULT"pune
    "> ,emp_salary int unique check(emp_salary>0));
    "> 
    "> 
    "> 
[1]+  Stopped                 sudo mysql
ubuntu@ubuntu-OptiPlex-5000:~$ sudo mysql;
[sudo] password for ubuntu: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| Employee           |
| NICKS              |
| Purnandu           |
| STUDENT            |
| TEB                |
| books              |
| comp_dyp           |
| company            |
| crypto             |
| divya              |
| employee           |
| employee1          |
| information_schema |
| mysql              |
| performance_schema |
| sample             |
| student            |
| student1           |
| studentinfo        |
| students           |
| sys                |
| tcs                |
+--------------------+
22 rows in set (0.00 sec)

mysql> select * from employee;
ERROR 1046 (3D000): No database selected
mysql> select * from emp_info;
ERROR 1046 (3D000): No database selected
mysql> use employee
Database changed
mysql> select * from emp_info;
ERROR 1146 (42S02): Table 'employee.emp_info' doesn't exist
mysql> create table emp_info(emp_id int primary key auto_increment, emp_name varchar(15),city varchar(10) default "pune",emp_salary int unique check(emp_salary>0));
Query OK, 0 rows affected (0.05 sec)

mysql> alter table emp_info add column skills varchar(15);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into emp_info value("pj", "pune", 50000,"manager");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into emp_info value(1,"pj", "pune",50000,"manager");
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp_info value1,tdj", "pune",50000,"manager");
[2]+  Stopped                 sudo mysql
ubuntu@ubuntu-OptiPlex-5000:~$ use employee
Command 'use' not found, did you mean:
  command 'muse' from deb muse (4.0.0-1build1)
  command 'nse' from deb ns2 (2.35+dfsg-3.1)
  command 'fuse' from deb fuse-emulator-gtk (1.6.0+dfsg1-2)
  command 'fuse' from deb fuse-emulator-sdl (1.6.0+dfsg1-2)
  command 'ase' from deb ase (3.22.1-1ubuntu1)
Try: sudo apt install <deb name>
ubuntu@ubuntu-OptiPlex-5000:~$ sudo mysql;
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use employee
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> use employee;
Database changed
mysql> select * from emp_info;
+--------+----------+------+------------+---------+
| emp_id | emp_name | city | emp_salary | skills  |
+--------+----------+------+------------+---------+
|      1 | pj       | pune |      50000 | manager |
+--------+----------+------+------------+---------+
1 row in set (0.00 sec)

mysql> insert into emp_info value(2,"td","nagar",40000,"assistant");
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp_info value(3,"sb","mumbai",60000,"developer");
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp_info value(4,"asr","pune",70000,"developer");
Query OK, 1 row affected (0.03 sec)

mysql> insert into emp_info value(5,"ar","pune",30000,"assistant");
Query OK, 1 row affected (0.03 sec)

mysql> select * from emp_info;
+--------+----------+--------+------------+-----------+
| emp_id | emp_name | city   | emp_salary | skills    |
+--------+----------+--------+------------+-----------+
|      1 | pj       | pune   |      50000 | manager   |
|      2 | td       | nagar  |      40000 | assistant |
|      3 | sb       | mumbai |      60000 | developer |
|      4 | asr      | pune   |      70000 | developer |
|      5 | ar       | pune   |      30000 | assistant |
+--------+----------+--------+------------+-----------+
5 rows in set (0.00 sec)

mysql> select distinct(city) from emp_info;
+--------+
| city   |
+--------+
| pune   |
| nagar  |
| mumbai |
+--------+
3 rows in set (0.03 sec)

mysql> select count(distinct(skills)) from emp_info;
+-------------------------+
| count(distinct(skills)) |
+-------------------------+
|                       3 |
+-------------------------+
1 row in set (0.00 sec)

mysql> select max(emp_salary) from emp_info;
+-----------------+
| max(emp_salary) |
+-----------------+
|           70000 |
+-----------------+
1 row in set (0.02 sec)

mysql> select min(emp_salary) from emp_info;
+-----------------+
| min(emp_salary) |
+-----------------+
|           30000 |
+-----------------+
1 row in set (0.00 sec)

mysql> select emp_id,emp_name from emp_info where salary between 50000 and 70000 
    -> ;
ERROR 1054 (42S22): Unknown column 'salary' in 'where clause'
mysql> select emp_id,emp_name from emp_info where emp_salary between 50000 and 70000;
+--------+----------+
| emp_id | emp_name |
+--------+----------+
|      1 | pj       |
|      3 | sb       |
|      4 | asr      |
+--------+----------+
3 rows in set (0.00 sec)

mysql> select * from emp_info where city like "p%";
+--------+----------+------+------------+-----------+
| emp_id | emp_name | city | emp_salary | skills    |
+--------+----------+------+------------+-----------+
|      1 | pj       | pune |      50000 | manager   |
|      4 | asr      | pune |      70000 | developer |
|      5 | ar       | pune |      30000 | assistant |
+--------+----------+------+------------+-----------+
3 rows in set (0.00 sec)

mysql> select emp_name from emp_info where emp_salary in(60000,80000);
+----------+
| emp_name |
+----------+
| sb       |
+----------+
1 row in set (0.00 sec)

