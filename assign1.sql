ubuntu@ubuntu-OptiPlex-5000:~$ sudo mysql
[sudo] password for ubuntu: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.29-0ubuntu0.22.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| NICKS              |
| STUDENT            |
| TEB                |
| company            |
| crypto             |
| divya              |
| information_schema |
| mysql              |
| performance_schema |
| student            |
| student1           |
| sys                |
+--------------------+
12 rows in set (0.01 sec)

mysql> use student
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from student
    -> \c
mysql> select * from student;
ERROR 1146 (42S02): Table 'student.student' doesn't exist
mysql> use student;
Database changed
mysql> select * from student_details;
+---------+------+--------+------------+
| roll_no | age  | city   | mobile_no  |
+---------+------+--------+------------+
|      11 |   19 | pune   | 1234567890 |
|      14 |   19 | pune   | 1234567890 |
|      12 |   19 | delhi  | NULL       |
|       3 | NULL | nashik | NULL       |
+---------+------+--------+------------+
4 rows in set (0.00 sec)

mysql> \c
mysql> create database pjop;
Query OK, 1 row affected (0.02 sec)

mysql> use pjop
Database changed
mysql> use pjop;
Database changed
mysql> create table pjop_table(name varchar(20), salary);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> drop table pjop_table;
ERROR 1051 (42S02): Unknown table 'pjop.pjop_table'
mysql> alter table pjop_table drop pjop_table;
ERROR 1146 (42S02): Table 'pjop.pjop_table' doesn't exist
mysql> drop table pjop_table;
ERROR 1051 (42S02): Unknown table 'pjop.pjop_table'
mysql> select * from pjop_table;
ERROR 1146 (42S02): Table 'pjop.pjop_table' doesn't exist
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| NICKS              |
| STUDENT            |
| TEB                |
| company            |
| crypto             |
| divya              |
| information_schema |
| mysql              |
| performance_schema |
| pjop               |
| student            |
| student1           |
| sys                |
+--------------------+
13 rows in set (0.00 sec)

mysql> drop database pjop;
Query OK, 0 rows affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| NICKS              |
| STUDENT            |
| TEB                |
| company            |
| crypto             |
| divya              |
| information_schema |
| mysql              |
| performance_schema |
| student            |
| student1           |
| sys                |
+--------------------+
12 rows in set (0.00 sec)

mysql> create database tcs;
Query OK, 1 row affected (0.01 sec)

mysql> use tcs;
Database changed
mysql> create table emp_details;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table emp_details(emp_id int(3),emp_name varchar(20),department varchar(10),salary int(6));
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> select * from emp_details;
Empty set (0.00 sec)

mysql> \c
mysql> select * from student_details;
ERROR 1146 (42S02): Table 'tcs.student_details' doesn't exist
mysql> select * from emp_details;
Empty set (0.00 sec)
