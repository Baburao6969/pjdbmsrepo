mysql> create database employeepj
    -> ;
Query OK, 1 row affected (0.00 sec)

mysql> use employeepj
Database changed
mysql> create table customer1(order_no int,customer_id int,quantity int,city varchar(10));
Query OK, 0 rows affected (0.04 sec)

mysql> create table customer2(customer_id int,customer_name varchar(20),mobile_no int,city varchar(10),aadhar_no int);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into customer1 values (1,101,10,pune);
ERROR 1054 (42S22): Unknown column 'pune' in 'field list'
mysql> insert into customer1 values (1,101,10,"pune");
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer1 values (2,102,11,"pune");
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer1 values (3,103,15,"mumbai");
Query OK, 1 row affected (0.03 sec)

mysql> insert into customer1 values (4,104,14,"delhi");
Query OK, 1 row affected (0.03 sec)

mysql> insert into customer2 values (101,"pj",12345,54321);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into customer2 values (101,"pj",12345,"pune",54321);
Query OK, 1 row affected (0.03 sec)

mysql> insert into customer2 values (102,"tushar",23456,"pune",65432);
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer2 values (103,"aman",34567,"mumbai",76543);
Query OK, 1 row affected (0.02 sec)

mysql> insert into customer2 values (104,"swapnil",45678,"delhi",87654);
Query OK, 1 row affected (0.02 sec)

mysql> select * from customer1;
+----------+-------------+----------+--------+
| order_no | customer_id | quantity | city   |
+----------+-------------+----------+--------+
|        1 |         101 |       10 | pune   |
|        2 |         102 |       11 | pune   |
|        3 |         103 |       15 | mumbai |
|        4 |         104 |       14 | delhi  |
+----------+-------------+----------+--------+
4 rows in set (0.00 sec)

mysql> select * from customer2
    -> ;
+-------------+---------------+-----------+--------+-----------+
| customer_id | customer_name | mobile_no | city   | aadhar_no |
+-------------+---------------+-----------+--------+-----------+
|         101 | pj            |     12345 | pune   |     54321 |
|         102 | tushar        |     23456 | pune   |     65432 |
|         103 | aman          |     34567 | mumbai |     76543 |
|         104 | swapnil       |     45678 | delhi  |     87654 |
+-------------+---------------+-----------+--------+-----------+
4 rows in set (0.00 sec)

mysql> select customer1.order_no,customer1.customer_id,customer2.customer_name,customer2.mobile_no,customer2.aadhar_no 
    -> from customer1 inner join customer2 
    -> where customer1.customer_id=customer2.customer_id;
+----------+-------------+---------------+-----------+-----------+
| order_no | customer_id | customer_name | mobile_no | aadhar_no |
+----------+-------------+---------------+-----------+-----------+
|        1 |         101 | pj            |     12345 |     54321 |
|        2 |         102 | tushar        |     23456 |     65432 |
|        3 |         103 | aman          |     34567 |     76543 |
|        4 |         104 | swapnil       |     45678 |     87654 |
+----------+-------------+---------------+-----------+-----------+
4 rows in set (0.00 sec)

mysql> select * from customer2 where city=(select city from customer2 where customer_name="tushar");
+-------------+---------------+-----------+------+-----------+
| customer_id | customer_name | mobile_no | city | aadhar_no |
+-------------+---------------+-----------+------+-----------+
|         101 | pj            |     12345 | pune |     54321 |
|         102 | tushar        |     23456 | pune |     65432 |
+-------------+---------------+-----------+------+-----------+
2 rows in set (0.00 sec)
