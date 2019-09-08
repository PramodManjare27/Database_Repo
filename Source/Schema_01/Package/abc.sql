create or replace package abc
as 
procedure abcde (in_arg varchar2);
end;
/
show errors;

create or replace package body abc
proceudre abcde (in_arg varchar2) as
v_int number;
begin
null;
loop
select 1 into v_int from dual;
end loop;	


loop
select 1 into v_int from dual;
end loop;

end;
end;
/
show errors;
