create table borrow(roll_no integer, name varchar(20), date_of_issue date, book_name varchar(20), status varchar(20));
create table fine(roll_no integer, sys_date date,fine integer);
insert into borrow values(1,'aditya','1-1-2022','dbms','issued');
insert into borrow values(11,'prajwal','2-1-2022','cns','issued');
insert into borrow values(14,'tushar','3-1-2022,'spos','issued');
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
dbms_output.put_line(no_of_days);
if no_of_days>15 and no_of_days<30 then
amt:=no_of_days*5;
dbms_output.put_line('amount'||amt);

elsif no_of_days>30 then
amt:=no_of_days*50;
dbms_output.put_line('amount'||amt);
else
dbms_output.put_line('no fine');
end if;
if no_of_days>15 then
insert into fine values(rollno,sysdate,amt);
update borrow set status='returned' where roll_no=rollno;
end if;
exception
when no_data_found then
dbms_output.put_line(rollno||'not found');
end;
/
