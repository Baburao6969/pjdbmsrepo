create table o_roll(roll int, name varchar(20),status varchar(30));
create table n_roll(roll int,name varchar(20),status varchar(30));

insert into n_roll values(1,'a','present');
insert into n_roll values(2,'b','present');
insert into n_roll values(3,'c','present');
insert into o_roll values(4,'d','present');
insert into o_roll values(3,'c','present');
insert into o_roll values(5,'e','absent');
insert into o_roll values(5,'e','absent');

/*implicit cursor*/
begin
update o_roll set status='absent' where roll=1;
if
sql%found then
dbms_output.put_line('updated');
end if;

if sql%notfound then
dbms_output.put_line('not updated');
end if;

if sql%rowcount>0 then
dbms_output.put_line(sql%rowcount||'rows updated');
else
dbms_output.put_line('no rows updated');
end if;
end;
/


/*explicit cursor*/

declare
cursor explicit_cur is 
select roll,name,status from o_roll where status='present';
tmp explicit_cur%rowtype;
begin
dbms_output.put_line('this is explicit cursor');
open explicit_cur;
loop exit when explicit_cur%notfound;
fetch explicit_cur into tmp;
dbms_output.put_line(' ROLLNO: '|| tmp.roll||' NAME: '||tmp.name||'STATUS; '||tmp.status);
end loop;
if explicit_cur%rowcount>0 then
