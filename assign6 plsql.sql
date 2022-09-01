C:\Users\DELL>sqlplus

SQL*Plus: Release 11.2.0.2.0 Production on Thu Sep 1 05:22:14 2022

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Enter user-name: system
Enter password:

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> set serveroutput on
SQL> edit pjop1

DECLARE 
   message  varchar2(20):= 'Hello, World!'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/ 

SQL> set serveroutput on
SQL> @pjop1


SQL> set serveroutput on
SQL> edit pjop1

DECLARE 
   i number(1); 
   j number(1); 
BEGIN 
   << outer_loop >> 
   FOR i IN 1..3 LOOP 
      << inner_loop >> 
      FOR j IN 1..3 LOOP 
         dbms_output.put_line('i is: '|| i || ' and j is: ' || j); 
      END loop inner_loop; 
   END loop outer_loop; 
END; 
/

SQL> set serveroutput on
SQL> @pjop1
i is: 1 and j is: 1
i is: 1 and j is: 2
i is: 1 and j is: 3
i is: 2 and j is: 1
i is: 2 and j is: 2
i is: 2 and j is: 3
i is: 3 and j is: 1
i is: 3 and j is: 2
i is: 3 and j is: 3

PL/SQL procedure successfully completed.
