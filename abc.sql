create package abc as
procedure abcd (in_var varchar2);
end;
/

create or replace package abc as
procedure abcd ( in_var varchar2)
as
begin
null;
end;
end;
/
