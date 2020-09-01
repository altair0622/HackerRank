set @temp:=0;
select repeat('* ', @temp:= @temp +1)
from information_schema.tables
where @temp < 20
