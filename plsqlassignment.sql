create table borrow(roll_no integer, name varchar(20),date_of_issue date,book name varchar(20), status varchar(20));
create table fine(roll_no integer, sys_date date,fine integer);
insert into borrow values(1,'aditya','1-1-2002','dbms','i');
insert into borrow values(11,'prajwal','2-1-2002','cns','i');
insert into borrow values(14,'tushar','3-1-2002,'spos','i');

declare
rollno number;
name1 varchar(20);
amt int;
doi date;
system_date date;
no_of_days number(20);

begin
rollno:=:roll_no;
name1:=:name1;
select sysdate into system_date from dual;
select date_of_issue into doi from borrow where roll_no=rollno and book_name=name1;
name1 varchar(20);
amt int;
doi date;
system_date date;
no_of_days number(20);
begin
rollno:=:roll_no;
name1:=:name1;
select sysdate into system_date from dual;
select date_of_issue into doi from borrow where roll_no=rollno and book_name=name1;
