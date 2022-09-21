create procedure PROC_GRADE 
 is 
  sum number(20); 
  i number(10); 
  n number(10); 
  rollnol number(10); 
  namel varchar2(30); 
  totall number(10); 
  classl varchar2(30); 
  s1 number; 
  s2 number; 
  s3 number; 
  s4 number; 
  s5 number; 
begin 
  select count(*) into n from marks; 
  i := 0; 
  loop 
    i:=i+1; 
    select rollno into rollnol from marks where rollno=i; 
    select name into namel from marks where rollno=i; 
    select sub1 into s1 from marks where rollno=i; 
    select sub2 into s2 from marks where rollno=i; 
    select sub3 into s3 from marks where rollno=i; 
    select sub4 into s4 from marks where rollno=i; 
    select sub5 into s5 from marks where rollno=i; 
totall:=a1+s2+s3+s4+s5; 
     
    if totall<=1500 AND totall>=990 then 
      classl:='DISTINCTION'; 
    else 
      if totall<=989 AND totall>=900 then 
        classl:='FIRST CLASS'; 
else 
        if totall<899 AND totall>=825 then 
          classl:='HIGER SECOND CLASS'; 
        else 
          classl:='PASS CLASS'; 
        end if; 
      end if; 
    end if; 
    insert into stud_marks values(rollnol,namel,totall); 
    insert into result values(rollnol,namel,classl); 
    if i=n then 
      exit; 
    end if; 
  end loop; 
end; 
/ 
