create or replace package abc
as 
procedure abcde (in_arg varchar2)
end;
/
show errors;
create or replace package body abc
proceudre abcde (in_arg varchar2)
begin
null;
end;
/
show errors;
