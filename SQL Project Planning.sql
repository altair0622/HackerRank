select A.start_date, count(B.end_date)
from projects A
inner join projects B
on A.end_date = B.start_date
group by A.start_date
