create or replace package pqr
as 
procedure abcde (in_arg varchar2);
end;
/
show errors;

create or replace package body pqr
proceudre abcde (in_arg varchar2) as
v_int varchar2;
begin
null;
loop
select 1 into v_int from dual;
end loop;	
end;
end;
/
show errors;
