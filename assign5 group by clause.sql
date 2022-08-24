mysql> create database pjop;
Query OK, 1 row affected (0.00 sec)

mysql> use pjop;
Database changed
mysql> create table employee(emp_id int, emp_name varchar(20), working_hrs int, city varchar(10) default"pune");
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee value(101,"ram",30,"pimpri");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee value();
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee value(102,"shyam",15);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into employee value(102,"shyam",15,);

mysql> insert into employee value(101,"ram",20,"pimpri");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee value(101,"shyam",20,"pune");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee value(101,"shyam",10,"pune");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee value(101,"shyam",30,"pune");
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee value(101,"ram",50,"pimpri");
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
+--------+----------+-------------+--------+
| emp_id | emp_name | working_hrs | city   |
+--------+----------+-------------+--------+
|    101 | ram      |          30 | pimpri |
|   NULL | NULL     |        NULL | pune   |
|    101 | ram      |          20 | pimpri |
|    101 | shyam    |          20 | pune   |
|    101 | shyam    |          10 | pune   |
|    101 | shyam    |          30 | pune   |
|    101 | ram      |          50 | pimpri |
+--------+----------+-------------+--------+
7 rows in set (0.00 sec)

mysql> select emp_name,sum(working_hrs) from employee group by emp_name;
+----------+------------------+
| emp_name | sum(working_hrs) |
+----------+------------------+
| ram      |              100 |
| NULL     |             NULL |
| shyam    |               60 |
+----------+------------------+
3 rows in set (0.02 sec)

mysql> delete from employee where emp_name = NULL;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
+--------+----------+-------------+--------+
| emp_id | emp_name | working_hrs | city   |
+--------+----------+-------------+--------+
|    101 | ram      |          30 | pimpri |
|   NULL | NULL     |        NULL | pune   |
|    101 | ram      |          20 | pimpri |
|    101 | shyam    |          20 | pune   |
|    101 | shyam    |          10 | pune   |
|    101 | shyam    |          30 | pune   |
|    101 | ram      |          50 | pimpri |
+--------+----------+-------------+--------+
7 rows in set (0.00 sec)

mysql> delete from employee where emp_name = NULL;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
+--------+----------+-------------+--------+
| emp_id | emp_name | working_hrs | city   |
+--------+----------+-------------+--------+
|    101 | ram      |          30 | pimpri |
|   NULL | NULL     |        NULL | pune   |
|    101 | ram      |          20 | pimpri |
|    101 | shyam    |          20 | pune   |
|    101 | shyam    |          10 | pune   |
|    101 | shyam    |          30 | pune   |
|    101 | ram      |          50 | pimpri |
+--------+----------+-------------+--------+
7 rows in set (0.00 sec)

mysql> update employee set emp_id=102 where emp_name="shyam";
Query OK, 3 rows affected (0.00 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select* from employee;
+--------+----------+-------------+--------+
| emp_id | emp_name | working_hrs | city   |
+--------+----------+-------------+--------+
|    101 | ram      |          30 | pimpri |
|   NULL | NULL     |        NULL | pune   |
|    101 | ram      |          20 | pimpri |
|    102 | shyam    |          20 | pune   |
|    102 | shyam    |          10 | pune   |
|    102 | shyam    |          30 | pune   |
|    101 | ram      |          50 | pimpri |
+--------+----------+-------------+--------+
7 rows in set (0.00 sec)

mysql> update employee set emp_id=103 where emp_id=NULL;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select* from employee;
+--------+----------+-------------+--------+
| emp_id | emp_name | working_hrs | city   |
+--------+----------+-------------+--------+
|    101 | ram      |          30 | pimpri |
|   NULL | NULL     |        NULL | pune   |
|    101 | ram      |          20 | pimpri |
|    102 | shyam    |          20 | pune   |
|    102 | shyam    |          10 | pune   |
|    102 | shyam    |          30 | pune   |
|    101 | ram      |          50 | pimpri |
+--------+----------+-------------+--------+
7 rows in set (0.00 sec)

mysql> select emp_name, sum(working_hrs) from employee group by emp_name;
+----------+------------------+
| emp_name | sum(working_hrs) |
+----------+------------------+
| ram      |              100 |
| NULL     |             NULL |
| shyam    |               60 |
+----------+------------------+
3 rows in set (0.00 sec)
