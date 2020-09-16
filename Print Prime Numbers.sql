select group_concat(num_a separator '&')

from (
select @num:=@num+1 as num_a from
information_schema.tables t1,
information_schema.tables t2,
(select @num:=1) t3
) t4
where num_a<=1000 and not exists(
select * from (
select @nu:=@nu+1 as num_b from
information_schema.tables t5,
information_schema.tables t6,
(select @nu:=1) t7
limit 1000) t8 -- where num_b<=1000
where floor(num_a/num_b)=(num_a/num_b) and num_b<num_a and num_b>1)
